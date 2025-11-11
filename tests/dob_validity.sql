SELECT businessentityid, birthdate
FROM {{ ref('employee') }}
WHERE birthdate IS NULL
   OR birthdate > CURRENT_DATE
   OR birthdate < DATE '1900-01-01'
