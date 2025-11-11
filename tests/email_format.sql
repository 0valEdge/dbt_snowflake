SELECT businessentityid, email
FROM {{ ref('person') }}
WHERE email IS NULL
   OR NOT REGEXP_LIKE(email, '^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$')
