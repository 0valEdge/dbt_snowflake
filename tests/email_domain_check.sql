SELECT businessentityid, email
FROM {{ ref('person') }}
WHERE email NOT ILIKE '%@example.com'
   OR email IS NULL
