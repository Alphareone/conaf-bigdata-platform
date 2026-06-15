-- MODELO PREDICTIVO MULTICLASE - BIGQUERY ML
CREATE OR REPLACE MODEL `conaf_bigdata_project.analytics_dataset.modelo_causas_incendios`
OPTIONS(
  model_type='logistic_reg',
  input_label_cols=['Causa_incendio'],
  data_split_method='RANDOM',
  data_split_eval_fraction=0.2
) AS
SELECT 
  Region,
  Comuna,
  Mes,
  CAST(Duracion_min AS INT64) AS Duracion_min,
  CAST(Hectareas_quemadas AS FLOAT64) AS Hectareas_quemadas
FROM 
  `conaf_bigdata_project.analytics_dataset.incendios_forestales_limpio`
WHERE 
  Causa_incendio IS NOT NULL 
  AND Region IS NOT NULL;
