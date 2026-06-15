-- VISTA CAPA SERVING (ARQUITECTURA LAMBDA)
CREATE OR REPLACE VIEW `conaf_bigdata_project.serving_layer.mapa_riesgo_hospitalario_live` AS
SELECT 
  h.nombre_establecimiento,
  c.viento_velocidad,
  c.temperatura_celsius
FROM `conaf_bigdata_project.batch_layer.establecimientos_salud_ide` h
LEFT JOIN `conaf_bigdata_project.speed_layer.clima_streaming` c ON h.comuna = c.comuna_nombre;
