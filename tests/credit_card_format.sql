SELECT creditcardid, creditcardnumber
FROM {{ ref('salesorderheader') }}
WHERE creditcardnumber IS NULL
   OR NOT REGEXP_LIKE(creditcardnumber, '^[0-9]{13,19}$')  -- numeric length check; Luhn validation should be separate logic
