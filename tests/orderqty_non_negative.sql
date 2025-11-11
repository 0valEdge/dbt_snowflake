SELECT salesorderdetailid, orderqty
FROM {{ ref('salesorderdetail') }}
WHERE orderqty IS NULL
   OR orderqty < 0
