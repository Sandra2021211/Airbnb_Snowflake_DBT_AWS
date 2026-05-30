{{ config(severity='error') }}

SELECT 1 
FROM 
    {{ source('staging', 'bookings') }}
WHERE 
    BOOKING_AMOUNT IS NULL