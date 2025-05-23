
# Azure-Based Health ETL Pipeline

This project demonstrates a full ETL workflow using Azure Data Factory to ingest synthetic health data from Blob Storage and load it into an Azure SQL Database.

## Contents

- **data/**: Contains the CSV input data.
- **sql/**: SQL script to create the `PatientVitals` table.
- **adf-pipeline/**: Documentation of the pipeline configuration.
- **README.md**: This project description.

## Technologies Used

- Azure Blob Storage
- Azure SQL Database
- Azure Data Factory (ADF)
- Python (for data generation)

## Pipeline Steps

1. Upload CSV (`synthetic_health_data.csv`) to Azure Blob.
2. Create SQL table `PatientVitals` using `create_patient_vitals_table.sql`.
3. Build a pipeline in ADF:
   - Source: Blob CSV
   - Sink: Azure SQL Table
4. Validate, debug, and publish the pipeline.

## Future Enhancements

- Add calculated `RiskScore` from vitals
- Normalize schema (split demographic & vitals)
- Schedule runs or monitor ingestion
