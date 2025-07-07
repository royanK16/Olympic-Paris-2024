CREATE DATABASE SCOPED CREDENTIAL cred_project
WITH 
    IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE soure_silver 
WITH 
(
    LOCATION = 'https://projectdatalake1.dfs.core.windows.net/silver/',
    CREDENTIAL = cred_project
)

CREATE EXTERNAL DATA SOURCE soure_gold
WITH 
(
    LOCATION = 'https://projectdatalake1.dfs.core.windows.net/gold/',
    CREDENTIAL = cred_project
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

---CREATE EXTERNAL TABLES EXTSA---
CREATE EXTERNAL TABLE gold.extsales
WITH 
(
    LOCATION = 'extsales',
    DATA_SOURCE = soure_gold,
    FILE_FORMAT = format_parquet
) 
AS 
SELECT * FROM gold.athletes

SELECT * FROM gold.extsales
    