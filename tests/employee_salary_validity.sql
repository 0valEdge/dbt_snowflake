SELECT businessentityid, salary
FROM {{ ref('employee') }}
WHERE salary IS NULL
   OR salary < 0
