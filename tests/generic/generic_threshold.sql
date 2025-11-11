{% test generic_threshold(model, column_name, min_value=None, max_value=None) %}

    SELECT
        *
    FROM {{ model }}
    WHERE
        (
            {% if min_value is not none %}
                {{ column_name }} < {{ min_value }}
            {% endif %}
            {% if min_value is not none and max_value is not none %} OR {% endif %}
            {% if max_value is not none %}
                {{ column_name }} > {{ max_value }}
            {% endif %}
        )

{% endtest %}
