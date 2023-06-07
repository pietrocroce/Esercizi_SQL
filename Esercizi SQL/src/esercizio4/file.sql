 -- Using a CREATE TABLE AS statement, create a new table called 'CHEAP_MEALS'
 -- that contains all meals with a price less than €15.
 SELECT PRICE
 FROM CHEAP_MEAL
 -- Using an INSERT statement with a SELECT statement, insert all ingredients that are vegan into
  -- a new table called 'VEGAN_INGREDIENT', you can create an empty clone of a table with the following code:
 -- CREATE TABLE VEGAN_INGREDIENT AS
 -- SELECT * FROM INGREDIENT WHERE FALSE
 SELECT VEGAN
 FROM VEGAN_INGREDIENT;
 -- Using a CREATE VIEW statement, create a view called 'EXPENSIVE_MEAL' that shows
 -- all meals with a price greater than €15.
 SELECT PRICE
 FROM EXPENSIVE_MEAL;
 -- Using a CREATE VIEW statement, create a view called 'LACTOSE_FREE_INGREDIENT'
 -- that shows all any ingredients without lactose.
 SELECT COINTAIN_LACTOSE
 FROM LACTOSE_FREE_INGREDIENT;
 -- Using a CREATE TABLE AS statement, create a new table called 'HIGH_CALORIE_MEAL'
 -- that contains all meals with more than 650 calories.
 SELECT CALORIES
 FROM HIGH_CALORIE_MEAL;
