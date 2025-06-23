package helloworld

import (
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"

	"cloud.google.com/go/bigquery"
	"github.com/GoogleCloudPlatform/functions-framework-go/functions"
	"google.golang.org/api/iterator"
)

func init() {
	functions.HTTP("App", App)
}

const PROYECTO string = "wazelima"

type Response struct {
	Status  string                      `json:"status"`
	Message string                      `json:"message"`
	Columns []string                    `json:"columns,omitempty"`
	Data    []map[string]bigquery.Value `json:"data,omitempty"`
}

type BodyContenido struct {
	Consulta string `json:"consulta"`
}

func extraData(consulta BodyContenido) ([]map[string]bigquery.Value, []string, error) {
	ctx := context.Background()
	client, err := bigquery.NewClient(ctx, PROYECTO)
	if err != nil {
		return nil, nil, err
	}
	defer client.Close()

	// Creamos la consulta.
	q := client.Query(consulta.Consulta)

	// Ejecuta la consulta como job.
	job, err := q.Run(ctx)
	if err != nil {
		return nil, nil, fmt.Errorf("error iniciando el job de consulta: %v", err)
	}

	// Espera a que el job se complete.
	status, err := job.Wait(ctx)
	if err != nil {
		return nil, nil, fmt.Errorf("error esperando la finalización del job: %v", err)
	}
	if err = status.Err(); err != nil {
		return nil, nil, fmt.Errorf("el job se completó con error: %v", err)
	}

	// Obtenemos el iterador de resultados.
	it, err := job.Read(ctx)
	if err != nil {
		return nil, nil, fmt.Errorf("error leyendo resultados: %v", err)
	}

	// Extraemos el orden de las columnas desde el schema del iterador.
	var columnOrder []string
	for _, field := range it.Schema {
		columnOrder = append(columnOrder, field.Name)
	}
	fmt.Println("Orden de columnas:", columnOrder)

	// Iteramos sobre los resultados.
	var resultados []map[string]bigquery.Value
	for {
		// Preparamos un slice para almacenar los valores en el mismo orden que columnOrder.
		rowValues := make([]bigquery.Value, len(columnOrder))
		err := it.Next(&rowValues)
		if err == iterator.Done {
			break
		}
		if err != nil {
			return nil, nil, fmt.Errorf("error iterando resultados: %v", err)
		}

		// Reconstruimos un mapa usando el orden del schema.
		fila := make(map[string]bigquery.Value, len(columnOrder))
		for i, colName := range columnOrder {
			fila[colName] = rowValues[i]
		}
		resultados = append(resultados, fila)
	}
	return resultados, columnOrder, nil
}

// HelloHTTP is an HTTP Cloud Function with a request parameter.
func App(w http.ResponseWriter, r *http.Request) {
	//ctx := context.Background()
	allowedOrigins := []string{
		"https://servinformacion.cloud.looker.com",
		"null",
	}

	origin := r.Header.Get("Origin")
	fmt.Println("el origen es ", origin)
	allowOrigin := ""
	for _, o := range allowedOrigins {
		if o == origin {
			allowOrigin = o
			break
		}
	}

	if r.Method == http.MethodOptions {
		if allowOrigin != "" {
			w.Header().Set("Access-Control-Allow-Origin", allowOrigin)
		}
		// Limitar los encabezados permitidos
		w.Header().Set("Access-Control-Allow-Headers", "Authorization, Content-Type")
		w.Header().Set("Access-Control-Allow-Methods", "POST, OPTIONS")
		w.Header().Set("Access-Control-Allow-Credentials", "true")
		w.Header().Set("Access-Control-Max-Age", "3600")
		w.WriteHeader(http.StatusNoContent)
		return
	}

	if allowOrigin != "" {
		w.Header().Set("Access-Control-Allow-Origin", allowOrigin)
	}
	w.Header().Set("Access-Control-Allow-Credentials", "true")

	if allowOrigin == "" {
		http.Error(w, "Not allowed", http.StatusForbidden)
		return
	}
	
	body, err := io.ReadAll(r.Body)
	if err != nil {
		response := Response{
			Status:  "error",
			Message: err.Error(),
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusInternalServerError)
		json.NewEncoder(w).Encode(response)
		return
	}
	defer r.Body.Close()

	var req BodyContenido
	err = json.Unmarshal(body, &req)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}

	// Crear la estructura de respuesta
	bodyCuerpo := BodyContenido{
		Consulta: req.Consulta,
	}
	puntos, keyOrder, err := extraData(bodyCuerpo)

	if err != nil {
		response := Response{
			Status:  "error",
			Message: err.Error(),
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusInternalServerError)
		json.NewEncoder(w).Encode(response)
		return
	}

	if len(puntos) == 0 {
		response := Response{
			Status:  "success",
			Message: "No data found",
			Columns: keyOrder,
			Data:    []map[string]bigquery.Value{},
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusOK)
		json.NewEncoder(w).Encode(response)
		return
	}

	response := Response{
		Status:  "success",
		Message: "datos retornados",
		Columns: keyOrder,
		Data:    puntos,
	}
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(response)
}
