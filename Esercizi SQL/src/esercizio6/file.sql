-- Using a SELECT statement with a GROUP BY clause and COUNT function, retrieve the number of orders for each meal.

SELECT MEAL_NAME, COUNT(*) FROM MEAL_ORDER_WITH_DETAILS
GROUP BY MEAL_NAME;

 -- Using a SELECT statement with a WHERE clause and SUM function, retrieve the total revenue for all meals that have a price greater than €15.

SELECT MEAL_NAME,
SUM(PRICE) AS TOTAL_ORDERED
FROM MEAL_ORDER_WITH_DETAILS
WHERE PRICE > 15
GROUP BY MEAL_NAME;

 -- Using a SELECT statement with a GROUP BY clause and COUNT function, retrieve the number of meals that have more than 500 calories.

SELECT MEAL_NAME,
COUNT(CALORIES)
FROM MEAL_ORDER_WITH_DETAILS
WHERE CALORIES > 500
GROUP BY MEAL_NAME;

-- Using a SELECT statement with a WHERE clause and SUM function, retrieve the total price for all meals that have a name containing the letter 'S'.

SELECT MEAL_NAME,
SUM(PRICE) AS TOTAL_PRICE
FROM MEAL_ORDER_WITH_DETAILS
WHERE MEAL_NAME LIKE '%s%'
GROUP BY MEAL_NAME;

 -- You can find items that start with the letter s with the following where clause WHERE LOWER(NAME) LIKE '%s%';

SELECT NAME
FROM MEAL
WHERE LOWER(NAME) LIKE '%s%'

 -- Using a SELECT statement with a WHERE clause, GROUP BY clause, and COUNT function, retrieve the number of orders for each meal that were ordered before '202X-XX-XX 18:00:00' (Replace the Xs with your current date)

 SELECT MEAL_NAME,
 COUNT(*) AS TIMES_MEAL_ORDERED,
 FROM MEAL_ORDER_WITH_DETAILS
 WHERE TIME_MEAL_ORDERED < '2024-06-07 14:54:00'
 GROUP BY MEAL_NAME;