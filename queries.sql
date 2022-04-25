 SELECT * FROM "table_karsarka_ecommerce" limit 100;

CREATE TABLE electronics_table AS 
SELECT product_id, event_type, brand, category_code, price
FROM  "table_karsarka_ecommerce"
WHERE category_code LIKE '%electronics%';

CREATE TABLE purchase_table AS
SELECT * FROM "table_karsarka_ecommerce"
WHERE event_type LIKE '%purchase%';

SELECT * FROM "ecommerce3"."purchase" limit 10;

CREATE TABLE purchase_industries AS 
SELECT * FROM "table_karsarka_ecommerce"
WHERE (category_code LIKE '%computers%' OR category_code LIKE '%electronics%')
AND event_type LIKE '%purchase%';

SELECT * FROM "ecommerce3"."purchase_industries" limit 10;