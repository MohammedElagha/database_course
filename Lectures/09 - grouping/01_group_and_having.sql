/* Grouping */

# Get sum of prices according to store_id
SELECT store_id, SUM(price) FROM products
GROUP BY store_id

# Get sum of prices according to store_id, with store name
SELECT stores.name, SUM(price) FROM stores 
JOIN products ON stores.id = store_id 
GROUP BY store_id 

/* Having */
SELECT stores.name, SUM(price) FROM stores 
JOIN products ON stores.id = store_id 
GROUP BY store_id 
HAVING SUM(price) > 200