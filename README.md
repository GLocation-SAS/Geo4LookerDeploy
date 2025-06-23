# Geo4Looker

![Mi genial imagen](https://storage.googleapis.com/geo4looker-resources/Versi%C3%B3n%20Vertical.png)

Repositorio oficial de Geo4Looker

## Despliegue de las visualizaciones en Looker

1. En Looker, ve a la sección de Administración: Necesitarás permisos de administrador para realizar esta configuración. Navega a Admin > Plataforma > Visualizaciones.

2. Agregar una nueva visualización: Haz clic en el botón "Agregar visualización".

3. Configurar el repositorio de Git:

    - ID: Un identificador único para tu visualización (por ejemplo, mi_grafico_circulos).

    - Etiqueta: El nombre que aparecerá en la interfaz de usuario de Looker (por ejemplo, Mi Gráfico de Círculos Personalizado).

    - URL del manifiesto: Aquí es donde apuntas a tu archivo .json de manifiesto en tu repositorio de GitHub. La URL debe ser la URL raw del archivo en GitHub.

      Para obtener la URL raw:

      - Ve a tu repositorio en GitHub.
      - Navega al archivo .json de tu visualización.
      - Haz clic en el botón "Raw".
      - Copia la URL completa de tu navegador.
      Formato de la URL raw:
      `https://raw.githubusercontent.com/GLocation-SAS/Geo4LookerDeploy/refs/heads/main/viz/geo4LookerLineas.js`

    - Comprobación de la URL: Looker intentará verificar la URL. Si hay algún problema, te lo indicará.

4. Guardar la visualización.

## Despliegue del microservicio para obtener los datos - Google Cloud Function

La forma más común y flexible de desplegar una Cloud Function desde un repositorio de GitHub es usando la línea de comandos de Google Cloud.

`gcloud functions deploy [NOMBRE_DE_TU_FUNCION] \
  --runtime go124
  --trigger-http
  --source https://github.com/GLocation-SAS/Geo4LookerDeploy.git \
  --entry-point App \
  --region us-central1 \
  --project [TU_ID_DE_PROYECTO_GCP]`

Es necesario que la cuenta de servicio que despliega la Cloud Function tenga permisos de BigQuery esto para que esta pueda acceder a los recursos de las tablas y dataset.
