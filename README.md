# Azure Health ETL Pipeline

This project demonstrates a full end-to-end ETL pipeline using Azure services. It ingests synthetic healthcare data stored in Azure Blob Storage and loads it into an Azure SQL Database using Azure Data Factory.

## 🚀 Technologies Used

![Azure](https://img.shields.io/badge/Microsoft%20Azure-0089D6?style=flat&logo=microsoft-azure)
![SQL](https://img.shields.io/badge/SQL-Server-blue)
![Python](https://img.shields.io/badge/Python-Data--Driven-yellow)

- Azure Blob Storage
- Azure Data Factory (ADF)
- Azure SQL Database
- Python (for CSV generation)
- Git & GitHub

## 📁 Project Structure

```
azure-health-etl/
├── data/                     # Synthetic CSV data
├── sql/                      # Table creation SQL
├── adf-pipeline/             # Pipeline documentation
└── README.md                 # This file
```

## 📌 Pipeline Overview

1. Upload CSV (`synthetic_health_data.csv`) to Azure Blob Storage
2. Create SQL table `PatientVitals` using `create_patient_vitals_table.sql`
3. Build ADF pipeline with:
   - **Source**: Azure Blob CSV
   - **Sink**: Azure SQL table
4. Run and publish the pipeline to automate ingestion

## 🔧 Future Enhancements

- Add calculated health `RiskScore` from vitals
- Normalize schema (split vitals/demographics)
- Add validation, anomaly detection, and scheduling

---

Made by Iman