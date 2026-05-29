{% set flag = 3 %}

SELECT * FROM {{ ref('bronze_bookings') }}
{% if flag==1 %}
    WHERE NIGHTS_BOOKED > 10
{% else %}
    WHERE NIGHTS_BOOKED = 10
{% endif %}