 -- Using a CREATE TABLE AS statement, create a new table called 'CHEAP_MEALS'
 -- that contains all meals with a price less than €15.

 CREATE TABLE CHEAP_MEAL
  AS SELECT * FROM MEAL
   WHERE PRICE < 15;

 -- Using an INSERT statement with a SELECT statement, insert all ingredients that are vegan into
  -- a new table called 'VEGAN_INGREDIENT', you can create an empty clone of a table with the following code:
 -- CREATE TABLE VEGAN_INGREDIENT AS
 -- SELECT * FROM INGREDIENT WHERE FALSE

  CREATE TABLE VEGAN_INGREDIENT AS
  SELECT * FROM INGREDIENT WHERE FALSE;

  INSERT INTO VEGAN_INGREDIENT
  SELECT * FROM INGREDIENT WHERE VEGAN;

 -- Using a CREATE VIEW statement, create a view called 'EXPENSIVE_MEAL' that shows
 -- all meals with a price greater than €15.

CREATE VIEW EXPENSIVE_MEAL
 AS SELECT * FROM MEAL
  WHERE PRICE>15;

 -- Using a CREATE VIEW statement, create a view called 'LACTOSE_FREE_INGREDIENT'
 -- that shows all any ingredients without lactose.

 CREATE VIEW LACTOSE_FREE_INGREDIENT
 AS SELECT * FROM INGREDIENT
 WHERE !CONTAIN_LACTOSE;

 -- Using a CREATE TABLE AS statement, create a new table called 'HIGH_CALORIE_MEAL'
 -- that contains all meals with more than 650 calories.

 CREATE TABLE HIGH_CALORIE_MEAL AS
 SELECT * FROM MEAL
 WHERE CALORIES > 650;

