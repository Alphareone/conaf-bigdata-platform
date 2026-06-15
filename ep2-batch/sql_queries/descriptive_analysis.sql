-- Query: KPIs de Regiones más afectadas y Causas
SELECT 
  Causa_incendio,
  COUNT(*) as Total_Siniestros,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) as Porcentaje
FROM `conaf_bigdata_project.analytics_dataset.incendios_forestales_limpio`
GROUP BY Causa_incendio
ORDER BY Total_Siniestros DESC;
