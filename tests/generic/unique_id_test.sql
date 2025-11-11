    {% test unique_id(model, column_name) %}
        SELECT
            {{ column_name }}
        FROM {{ model }}
        GROUP BY 1
        HAVING COUNT(*) > 1
    {% endtest %}
