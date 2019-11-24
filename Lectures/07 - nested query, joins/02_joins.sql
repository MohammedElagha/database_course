/* Joins */

# MAIN join
# Get products of stores which name is 'Metro'
SELECT products.name FROM products
JOIN stores ON products.store_id = stores.id
WHERE stores.name = 'Metro';

# LEFT JOIN
# Get stores which has or hasn't products
SELECT stores.* FROM stores 
LEFT JOIN products ON stores.id = products.store_id;

# right JOIN
# Get products which belongs or not belong to store
SELECT stores.* FROM stores 
RIGHT JOIN products ON stores.id = products.store_id;

# INNER JOIN
# Get stores and products when store has product/s, and product belong to store
SELECT stores.name AS store_name, products.name AS product_name 
FROM stores 
INNER JOIN products ON stores.id = products.store_id;

# LEFT EXECLUSIVE JOIN
# Get stores which only have not products
SELECT stores.* FROM stores 
LEFT JOIN products ON stores.id = products.store_id
WHERE products.store_id IS NULL;
