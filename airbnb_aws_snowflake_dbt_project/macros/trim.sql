{% macro trim(column_name, node) %}
    {{ column_name | trim | upper }}
{% endmacro %}