# 1. Add a new supplier.
INSERT INTO suppliers
VALUES (30,
        "Utsav's Stickers",
        "Utsav Thapa",
        "NYC",
        "New York",
        "NYC",
        "NY",
        11373,
        "USA",
        12345678,
        12345678,
        NULL);

# 2. Add a new product provided by that supplier
INSERT INTO products
VALUES (78,
        "Coconut Man",
        30,
        2,10,550,50,5,10,false);

# 3. List all products and their suppliers.
SELECT *
FROM products
         JOIN suppliers
              ON suppliers.SupplierID = products.SupplierID;


# 4. Raise the price of your new product by 15%.
UPDATE products
SET UnitPrice = UnitPrice + 0.15 * UnitPrice
WHERE SupplierID = 30;
# 5. List the products and prices of all products from that supplier.
SELECT *
FROM products
         JOIN suppliers
              ON suppliers.SupplierID = products.SupplierID
WHERE products.SupplierID = 30;
# 6. Delete the new product.
DELETE FROM products
WHERE SupplierID = 30;


# 7. Delete the new supplier.
DELETE FROM suppliers
WHERE SupplierID = 30;

# 8. List all products.
SELECT *
FROM products;
# 9. List all suppliers.
SELECT *
FROM suppliers;