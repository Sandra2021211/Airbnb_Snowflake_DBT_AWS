{{ config(materialized='ephemeral') }}

WITH hosts as(
    SELECT DISTINCT
        HOST_ID,
        HOST_NAME,
        HOST_SINCE,
        IS_SUPERHOST,
        RESPONSE_RATE_QUALITY,
        HOST_CREATED_AT
    FROM
        {{ ref('one_big_table') }}
)
SELECT * FROM hosts