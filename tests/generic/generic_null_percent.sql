{% test generic_null_percent(model, column_name, max_null_percent) %}

    WITH stats AS (
        SELECT
            COUNT(*) AS total_rows,
            SUM(CASE WHEN {{ column_name }} IS NULL THEN 1 ELSE 0 END) AS null_rows
        FROM {{ model }}
    )
    SELECT *
    FROM stats
    WHERE (null_rows / total_rows) * 100 > {{ max_null_percent }}

{% endtest %}
