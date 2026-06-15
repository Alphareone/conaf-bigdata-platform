# Plataforma Integrada de Monitoreo de Incendios Forestales - CONAF & Red de Salud

## 👥 Integrantes
* Alfredo Castro
* Francisco Neira
* Fiorella Osorio
* **Sección:** 003D | **Asignatura:** Big Data (AVY1101) | **Sede:** Viña del Mar

## 📝 Descripción del Proyecto
Este repositorio consolida la solución analítica de extremo a extremo basada en Big Data para optimizar la gestión de emergencias forestales de la Corporación Nacional Forestal (CONAF). El ecosistema integra de forma híbrida (**Arquitectura Lambda**) el catastro histórico nacional de incendios (2002-2020) con variables climáticas dinámicas capturadas en tiempo real e infraestructura crítica hospitalaria (IDE Chile), permitiendo emitir alertas automatizadas y zonificar riesgos de propagación sobre postas y centros de salud rurales.

## 🛠️ Tecnologías Utilizadas (Google Cloud Platform - GCP)
* **Cloud Storage:** Data Lake para el almacenamiento desacoplado de los archivos maestros (`incendios.csv`).
* **Cloud Dataprep:** Pipeline ETL distribuido en memoria para remoción de nulos, formateo de variables mixtas (`NUMFORMAT`) y enriquecimiento temporal.
* **Google BigQuery:** Data Warehouse analítico masivamente paralelo optimizado en columnas.
* **BigQuery ML:** Entrenamiento e inferencia del modelo analítico (Regresión Logística Multiclase) directo en el motor de base de datos.
* **Looker Studio:** Panel de control gerencial interactivo en 4 dimensiones espacio-temporales.
