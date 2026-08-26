{% macro format_amount(column_name) %}

    ROUND({{ column_name }}, 2)

{% endmacro %}