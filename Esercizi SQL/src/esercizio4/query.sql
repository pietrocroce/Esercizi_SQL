CREATE TABLE MEAL (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT
);

INSERT INTO MEAL(NAME, PRICE, CALORIES)
VALUES ('Spaghetti Bolognese', 12.99, 600),
       ('Grilled Chicken Sandwich', 8.99, 400),
       ('Pesto Pasta', 10.99, 550),
       ('Steak and Mash', 19.99, 800),
       ('Sushi Platter', 15.99, 700);

CREATE TABLE INGREDIENT(
  NAME VARCHAR(255),
  COINTAIN_LACTOSE BOOLEAN,
  VEGETARIAN BOOLEAN,
  VEGAN BOOLEAN,
  GLUTEN_FREE BOOLEAN
  );

  INSERT INTO INGREDIENT(NAME, COINTAIN_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
  VALUES('Eggs',false,true,false,true);
  INSERT INTO INGREDIENT(NAME, COINTAIN_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
  VALUES('Bread',true,true,true,false);
  INSERT INTO INGREDIENT(NAME, COINTAIN_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
  VALUES('Beef Patty',false,false,false,true);
  INSERT INTO INGREDIENT(NAME, COINTAIN_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
  VALUES('Lettuce',false,true,true,true);
  INSERT INTO INGREDIENT(NAME, COINTAIN_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
  VALUES('Yoghurt',true,true,false,true);

 -- Using a CREATE TABLE AS statement, create a new table called 'CHEAP_MEALS'
 -- that contains all meals with a price less than €15.
  CREATE TABLE CHEAP_MEAL AS
  SELECT * FROM MEAL WHERE PRICE < 15;
   -- Using an INSERT statement with a SELECT statement, insert all ingredients that are vegan into
  -- a new table called 'VEGAN_INGREDIENT', you can create an empty clone of a table with the following code:
 -- CREATE TABLE VEGAN_INGREDIENT AS
 -- SELECT * FROM INGREDIENT WHERE FALSE
 CREATE TABLE VEGAN_INGREDIENT AS
 SELECT * FROM INGREDIENT WHERE VEGAN = FALSE;

 INSERT INTO VEGAN_INGREDIENT
 SELECT* FROM INGREDIENT WHERE VEGAN = TRUE;
 -- Using a CREATE VIEW statement, create a view called 'EXPENSIVE_MEAL' that shows
 -- all meals with a price greater than €15.
 CREATE VIEW EXPENSIVE_MEAL AS
 SELECT * FROM MEAL WHERE PRICE > 15;
 -- Using a CREATE VIEW statement, create a view called 'LACTOSE_FREE_INGREDIENT'
 -- that shows all any ingredients without lactose.
 CREATE VIEW LACTOSE_FREE_INGREDIENT AS
 SELECT * FROM INGREDIENT WHERE COINTAIN_LACTOSE = FALSE;
 -- Using a CREATE TABLE AS statement, create a new table called 'HIGH_CALORIE_MEAL'
 -- that contains all meals with more than 650 calories.
 CREATE TABLE HIGH_CALORIE_MEAL AS
 SELECT * FROM MEAL WHERE CALORIES > 650;