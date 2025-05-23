
# ADF Pipeline: CsvToSqlPipeline

This Azure Data Factory (ADF) pipeline ingests healthcare data from Azure Blob Storage and loads it into an Azure SQL Database.

## Components

### 1. **Copy Data Activity**
- **Name**: CopyCsvToSql
- **Type**: Data Movement
- **Description**: Transfers data from a CSV file in Blob Storage to a relational table in Azure SQL.

## Source Configuration

- **Dataset**: `PatientCsv`
- **Linked Service**: Azure Blob Storage (`BlobStorageLinked`)
- **File**: `synthetic_health_data.csv`
- **Format**: Delimited Text (CSV)
- **First row as header**: Yes

## Sink Configuration

- **Dataset**: `PatientTable`
- **Linked Service**: Azure SQL Database (`SqlDbLinked`)
- **Table**: `dbo.PatientVitals`
- **Write batch size**: Default
- **Table schema**: Auto-mapped from CSV columns

## Execution

- Validated with Debug run
- Successful records load: 100 (from synthetic CSV)
- Tested on: Canada Central Region

## Notes

- ADF Integration Runtime IP must be allowed in SQL Server Firewall.
- No transformations were applied in this pipeline.
- Future steps can include schema mapping, derived columns, or risk-score calculations.
