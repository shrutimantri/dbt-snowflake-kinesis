{{ config(
    database='SMANTRI',
    tags=["stocks_batch"],
    pre_hook="ALTER EXTERNAL TABLE SMANTRI.LANDING_ZONE.BATCH_DATA_STOCKS REFRESH" 
) }}

SELECT
DATE
,TICKER
,ROUND(OPEN) AS OPEN
,ROUND(HIGH) AS HIGH
,ROUND(LOW) AS LOW
,ROUND(CLOSE) AS CLOSE
,VOLUME
FROM
SMANTRI.LANDING_ZONE.BATCH_DATA_STOCKS
