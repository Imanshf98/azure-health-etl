# Azure Data Factory Pipeline: CSV to SQL

## Overview

This ADF pipeline copies data from a CSV file in Azure Blob Storage into a SQL table (`PatientVitals`) in Azure SQL Database.

## Configuration

### Source Dataset
- **Type**: DelimitedText
- **Storage**: Azure Blob Storage (linked via `BlobStorageLinked`)
- **File**: `synthetic_health_data.csv`
- **Header row**: Yes

### Sink Dataset
- **Type**: Azure SQL Table
- **Table**: `dbo.PatientVitals`
- **Linked Service**: `SqlDbLinked`
- **Authentication**: SQL Server auth (`CloudSA...` login)

## Copy Data Activity
- **Transformation**: Direct copy, no mapping changes
- **Integration Runtime**: Auto-resolves, region-matched

## Known Issues & Fixes

- **IP Access**: Add ADF runtime IP (e.g., `52.228.80.170`) to SQL server firewall
- **Schema Errors**: Ensure table columns match CSV headers