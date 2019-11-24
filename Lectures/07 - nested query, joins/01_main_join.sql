/* Nested Query */
/* Get products of store, which name is 'Metro' */

/* One to Many */

# By nested Query
SELECT NAME, price FROM products
WHERE store_id IN (SELECT id FROM stores
			WHERE NAME = 'Metro');
			
# By join
SELECT products.name, price FROM products, stores
WHERE products.store_id = stores.id
AND stores.name = 'Metro';
