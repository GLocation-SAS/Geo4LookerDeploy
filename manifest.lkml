project_name: "geo4looker"

visualization: {
  id: "MapLibrePuntos"
  label: "Mapa de Puntos"
  file: "viz/geo4LookerPuntos.js"
  dependencies: ["https://unpkg.com/maplibre-gl@5.2.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.1/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyD3pLhroR7E0WtgDmzP_td5d7C01qUTVzw&libraries=places"]
}

visualization: {
  id: "MapLibreClusteres"
  label: "Mapa de Clúster de puntos"
  file: "viz/geo4LookerCluster.js"
  dependencies: ["https://unpkg.com/maplibre-gl@5.2.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.1/dist.min.js",
  "https://unpkg.com/@deck.gl/carto@^9.0.0/dist.min.js",
   "https://unpkg.com/supercluster@8.0.0/dist/supercluster.min.js",
   "https://maps.googleapis.com/maps/api/js?key=AIzaSyD3pLhroR7E0WtgDmzP_td5d7C01qUTVzw&libraries=places"]
}


visualization: {
  id: "MaplibreCoropletaCategorizado"
  label: "Mapa de Coropleta Categorizado"
  file: "viz/geo4LookerCorov1.js"
  dependencies: ["https://unpkg.com/maplibre-gl@5.2.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.1/dist.min.js",
  "https://unpkg.com/@deck.gl/carto@^9.0.0/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyD3pLhroR7E0WtgDmzP_td5d7C01qUTVzw&libraries=places"]
}

visualization: {
  id: "MaplibreLineas"
  label: "Mapa de Lineas"
  file: "viz/geo4LookerLineas.js"
  dependencies: ["https://unpkg.com/maplibre-gl@5.1.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.0/dist.min.js","https://unpkg.com/@deck.gl/carto@^9.0.0/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyD3pLhroR7E0WtgDmzP_td5d7C01qUTVzw&libraries=places",
  "https://unpkg.com/@turf/turf/turf.min.js",
  "https://cdn.jsdelivr.net/npm/@watergis/maplibre-gl-terradraw@0.6.4/dist/maplibre-gl-terradraw.umd.js"]
}


visualization: {
  id: "MaplibreHeat"
  label: "Mapa de Calor"
  file: "viz/geo4LookerHeat.js"
  dependencies: [
  "https://unpkg.com/maplibre-gl@5.1.0/dist/maplibre-gl.js",
  "https://unpkg.com/@deck.gl/carto@^9.0.0/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyD3pLhroR7E0WtgDmzP_td5d7C01qUTVzw&libraries=places",
  "https://unpkg.com/@turf/turf/turf.min.js",
  "https://cdn.jsdelivr.net/npm/@watergis/maplibre-gl-terradraw@0.6.4/dist/maplibre-gl-terradraw.umd.js",
  "https://unpkg.com/deck.gl@9.1.1/dist.min.js"]
}

visualization: {
  id: "MaplibreCoropletaGraduado"
  label: "Mapa de Coropleta Graduado"
  file: "viz/geo4LookerCorov2.js"
  dependencies: ["https://unpkg.com/maplibre-gl@5.2.0/dist/maplibre-gl.js","https://unpkg.com/deck.gl@9.1.1/dist.min.js","https://unpkg.com/@deck.gl/carto@^9.0.0/dist.min.js","https://maps.googleapis.com/maps/api/js?key=AIzaSyD3pLhroR7E0WtgDmzP_td5d7C01qUTVzw&libraries=places"]
}

visualization: {
  id: "MaplibreLineasArcos"
  label: "Mapa de Arcos"
  file: "viz/geo4LookerArcos.js"
  dependencies: [
  "https://unpkg.com/maplibre-gl@5.1.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@^9.0.0/dist.min.js",
  "https://unpkg.com/@deck.gl/carto@^9.0.0/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyD3pLhroR7E0WtgDmzP_td5d7C01qUTVzw&libraries=places",
  "https://unpkg.com/@turf/turf/turf.min.js",
  "https://cdn.jsdelivr.net/npm/@watergis/maplibre-gl-terradraw@0.6.4/dist/maplibre-gl-terradraw.umd.js"]
}

visualization: {
  id: "MapaSliderCalor"
  label: "Mapa de Calor con slider"
  file: "viz/geo4LookerHeatwSlider.js"
  dependencies: ["https://unpkg.com/maplibre-gl@^5.4.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.0/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyC9xCiotqnHkPKQSdCOs4reLJM6OlAy6os&libraries=places"]
}

visualization: {
  id: "mapKML"
  label: "Mapa con KML"
  file: "viz/geo4LookerKML.js"
  dependencies: [
  "https://unpkg.com/maplibre-gl@5.5.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.11/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyC9xCiotqnHkPKQSdCOs4reLJM6OlAy6os&libraries=places",
  "https://unpkg.com/@turf/turf/turf.min.js",
  "https://cdn.jsdelivr.net/npm/@watergis/maplibre-gl-terradraw@0.6.4/dist/maplibre-gl-terradraw.umd.js",
  "https://unpkg.com/@mapbox/togeojson@0.16.2/togeojson.js",
  "https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"]
}

visualization: {
  id: "Mapa_4_ventanas_de_Calor"
  label: "Mapa de Calor con 4 ventanas"
  file: "viz/geo4LookerHeat4w.js"
  dependencies: [
  "https://unpkg.com/maplibre-gl@5.5.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.11/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyC9xCiotqnHkPKQSdCOs4reLJM6OlAy6os&libraries=places",]
}

visualization: {
  id: "Mapa_4_ventanas_de_Lineas"
  label: "Mapa de líneas con 4 ventanas"
  file: "viz/geo4LookerLineas4w.js"
  dependencies: [
  "https://unpkg.com/maplibre-gl@5.5.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.11/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyC9xCiotqnHkPKQSdCOs4reLJM6OlAy6os&libraries=places",
  "https://unpkg.com/@turf/turf/turf.min.js",
  "https://cdn.jsdelivr.net/npm/@watergis/maplibre-gl-terradraw@0.6.4/dist/maplibre-gl-terradraw.umd.js"]
}

visualization: {
  id: "Mapa_4_ventanas_de_puntos"
  label: "Mapa de puntos con 4 ventanas"
  file: "viz/geo4LookerPuntos4w.js"
  dependencies: [
  "https://unpkg.com/maplibre-gl@5.5.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.11/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyC9xCiotqnHkPKQSdCOs4reLJM6OlAy6os&libraries=places",
  "https://unpkg.com/@turf/turf/turf.min.js",
  "https://cdn.jsdelivr.net/npm/@watergis/maplibre-gl-terradraw@0.6.4/dist/maplibre-gl-terradraw.umd.js"]
}

visualization: {
  id: "Mapa_4_ventanas_de_clusteres"
  label: "Mapa de clúster con 4 ventanas"
  file: "viz/geo4LookerCluster4w.js"
  dependencies: [
  "https://unpkg.com/maplibre-gl@5.5.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.11/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyC9xCiotqnHkPKQSdCOs4reLJM6OlAy6os&libraries=places",
  "https://unpkg.com/@turf/turf/turf.min.js",
  "https://cdn.jsdelivr.net/npm/@watergis/maplibre-gl-terradraw@0.6.4/dist/maplibre-gl-terradraw.umd.js",
  "https://unpkg.com/supercluster@8.0.0/dist/supercluster.min.js"
  ]
}

visualization: {
  id: "map4_coro_gra.js"
  label: "Mapa de Coropleta Graduado con 4 ventanas"
  file: "viz/geo4LookerCorov24w.js"
  dependencies: [
  "https://unpkg.com/maplibre-gl@5.5.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.11/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyC9xCiotqnHkPKQSdCOs4reLJM6OlAy6os&libraries=places",
  ]
}

visualization: {
  id: "map4_coro_cat.js"
  label: "Mapa de Coropleta Categorizado con 4 ventanas"
  file: "viz/geo4LookerCorov14w.js"
  dependencies: [
  "https://unpkg.com/maplibre-gl@5.5.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.11/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyC9xCiotqnHkPKQSdCOs4reLJM6OlAy6os&libraries=places",
  ]
}

visualization: {
  id: "mapSliderLineas.js"
  label: "Mapa de Líneas con slider"
  file: "viz/geo4LookerLineaswSlider.js"
  dependencies: [
  "https://unpkg.com/maplibre-gl@5.5.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.11/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyC9xCiotqnHkPKQSdCOs4reLJM6OlAy6os&libraries=places",
  "https://unpkg.com/@turf/turf/turf.min.js",
  "https://cdn.jsdelivr.net/npm/@watergis/maplibre-gl-terradraw@0.6.4/dist/maplibre-gl-terradraw.umd.js"]
}

visualization: {
  id: "mapSliderPuntos.js"
  label: "Mapa de Puntos con slider"
  file: "viz/geo4LookerPuntoswSlider.js"
  dependencies: [
  "https://unpkg.com/maplibre-gl@5.5.0/dist/maplibre-gl.js",
  "https://unpkg.com/deck.gl@9.1.11/dist.min.js",
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyC9xCiotqnHkPKQSdCOs4reLJM6OlAy6os&libraries=places",
  "https://unpkg.com/@turf/turf/turf.min.js",
  "https://cdn.jsdelivr.net/npm/@watergis/maplibre-gl-terradraw@0.6.4/dist/maplibre-gl-terradraw.umd.js"]
}
