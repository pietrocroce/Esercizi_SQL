 -- Using the "Ingredient" table from the What is a Database video, write and
 -- run your own CREATE TABLE SQL statement, ensure all columns are appropriate types
 -- If you create a table incorrectly and want to delete it type DROP TABLE INGREDIENT.
 -- Also make sure there are semi colons after your Create table statements, otherwise there may be errors!

 CREATE TABLE MEAL (
   NAME VARCHAR(255),
   PRICE DOUBLE,
   CALORIES INT
 );

 CREATE TABLE INGREDIENT(
   NAME VARCHAR(255),
   COINTAIN_LACTOSE BOOLEAN,
   VEGETERIAN BOOLEAN,
   VEGAN BOOLEAN,
   GLUTEN_FREE BOOLEAN
   );