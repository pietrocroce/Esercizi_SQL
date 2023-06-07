 -- Using a SELECT statement with a WHERE clause, retrieve all meals that have a price less than €15
SELECT * FROM INGREDIENT
WHERE price < 15;
 -- Using a SELECT statement with a WHERE clause, retrieve all ingredients that are vegetarian.
SELECT * FROM INGREDIENT
WHERE VEGETARIAN = TRUE;
-- Using a SELECT statement with a WHERE clause, retrieve all meals that have more than 500 calories.
SELECT * FROM INGREDIENT
WHERE CALORIES > 500;
 -- Using a SELECT statement with a WHERE clause, retrieve all meals that have a price between €15 and €16.
SELECT * FROM INGREDIENT
WHERE PRICE >15 AND PRICE < 16;
 -- Using a SELECT statement with a WHERE clause, retrieve all ingredients that are
 -- both lactose-free (note lactose FREE) and gluten-free.
SELECT * FROM INGREDIENT
WHERE COINTAIN_LACTOSE = FALSE AND GLUTEN_FREE = TRUE;
 -- Using a SELECT statement with a WHERE clause and logical operator(s), retrieve all meals
 -- that have a price less than €15 or more than 600 calories.
SELECT * FROM INGREDIENT
WHERE PRICE < 15 OR CALORIES > 600;
-- Using a SELECT statement with a WHERE clause, retrieve all ingredients that are vegan or gluten-free
SELECT * FROM INGREDIENT
WHERE VEGAN = TRUE OR GLUTEN_FREE = TRUE;
 -- Using a SELECT statement with a WHERE clause, retrieve all meals with the name 'Pesto Pasta'
SELECT * FROM INGREDIENT
WHERE NAME = 'Pesto Pasta';
 -- Using a SELECT statement with a WHERE clause, retrieve all ingredients that are not lactose-free
SELECT * FROM INGREDIENT
WHERE COINTAIN_LACTOSE =TRUE;
 -- Using a SELECT statement with a WHERE clause and a logical operator, retrieve all meals that have a price more than €20 and less than 800 calories.
SELECT * FROM INGREDIENT
WHERE PRICE > 20 AND CALORIES < 800;