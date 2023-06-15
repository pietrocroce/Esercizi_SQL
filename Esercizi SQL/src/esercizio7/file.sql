-- Write a query to find the maximum price of a meal with more than 500 calories.

SELECT NAME, MAX(PRICE)
FROM MEAL
WHERE CALORIES > 500
GROUP BY NAME;

 -- Write a query to find the average calories of meals that cost more than 15 EUR

SELECT NAME, AVG(CALORIES)
 FROM MEAL
 WHERE PRICE > 15
 GROUP BY NAME;

 -- Write a query to select all meals that have the MAX price, using HAVING and MAX()

SELECT NAME, MAX(PRICE) AS MAX_PRICE
FROM MEAL
GROUP BY NAME
HAVING MAX(PRICE);

 -- Write a query to select all meals that have a price lower than the average price, using HAVING and AVG

SELECT NAME, PRICE AS LOWEST_PRICE
FROM MEAL
GROUP BY NAME
HAVING PRICE < (SELECT AVG(PRICE) FROM MEAL);

 -- Write a query to select all meals that have a price lower than the average price and have more than 600 calories

SELECT NAME, PRICE AS NOT_VERY_HEALTHY
FROM MEAL
GROUP BY NAME
HAVING PRICE < (SELECT AVG(PRICE) FROM MEAL) AND CALORIES > 600;

