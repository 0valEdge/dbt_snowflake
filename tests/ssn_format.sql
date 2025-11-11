SELECT customerid, ssn
FROM {{ ref('customer') }}
WHERE ssn IS NULL
   OR NOT REGEXP_LIKE(ssn, '^[0-9]{3}-[0-9]{2}-[0-9]{4}$')
