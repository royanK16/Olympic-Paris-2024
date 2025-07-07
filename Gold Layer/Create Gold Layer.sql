---CREATE VIEW---
CREATE VIEW gold.athletes
AS
SELECT *
FROM
    OPENROWSET 
        (
            BULK 'https://projectdatalake1.dfs.core.windows.net/silver/athletes_silver/',
            FORMAT = 'PARQUET'
        ) as QUER1;

---CREATE VIEW---
CREATE VIEW gold.coaches
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://projectdatalake1.dfs.core.windows.net/silver/coaches_silver/',
        FORMAT = 'PARQUET'
    ) as QUER1;

---CREATE VIEW---
CREATE VIEW gold.events
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://projectdatalake1.dfs.core.windows.net/silver/events_silver/',
        FORMAT = 'PARQUET'
    ) as QUER1;

---CREATE VIEW---
CREATE VIEW gold.medals
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://projectdatalake1.dfs.core.windows.net/silver/medals_silver/',
        FORMAT = 'PARQUET'
    ) as QUER1;

---CREATE VIEW---
CREATE VIEW gold.medals_total
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://projectdatalake1.dfs.core.windows.net/silver/medals_total_silver/',
        FORMAT = 'PARQUET'
    ) as QUER1;

---CREATE VIEW---
CREATE VIEW gold.medalists
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://projectdatalake1.dfs.core.windows.net/silver/medalists_silver/',
        FORMAT = 'PARQUET'
    ) as QUER1;

---CREATE VIEW---
CREATE VIEW gold.nocs
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://projectdatalake1.dfs.core.windows.net/silver/nocs_silver/',
        FORMAT = 'PARQUET'
    ) as QUER1;

---CREATE VIEW---
CREATE VIEW gold.schedules
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://projectdatalake1.dfs.core.windows.net/silver/schedules_silver/',
        FORMAT = 'PARQUET'
    ) as QUER1;

---CREATE VIEW---
CREATE VIEW gold.schedules_preli
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://projectdatalake1.dfs.core.windows.net/silver/schedules_preliminary_silver/',
        FORMAT = 'PARQUET'
    ) as QUER1;

---CREATE VIEW---
CREATE VIEW gold.teams
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://projectdatalake1.dfs.core.windows.net/silver/teams_silver/',
        FORMAT = 'PARQUET'
    ) as QUER1;

---CREATE VIEW---
CREATE VIEW gold.technical_officials
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://projectdatalake1.dfs.core.windows.net/silver/technical_officials_silver/',
        FORMAT = 'PARQUET'
    ) as QUER1;

---CREATE VIEW---
CREATE VIEW gold.torch_route
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://projectdatalake1.dfs.core.windows.net/silver/torch_route_silver/',
        FORMAT = 'PARQUET'
    ) as QUER1;

---CREATE VIEW---
CREATE VIEW gold.venues
AS
SELECT *
FROM
    OPENROWSET(
        BULK 'https://projectdatalake1.dfs.core.windows.net/silver/venues_silver/',
        FORMAT = 'PARQUET'
    ) as QUER1;