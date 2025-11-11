SELECT businessentityid, phonenumber
FROM {{ ref('personphone') }}
WHERE phonenumber IS NULL
   OR NOT REGEXP_LIKE(phonenumber, '^\\+?[0-9\\-\\s\\.]{7,15}$')
