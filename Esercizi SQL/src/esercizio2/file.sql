 -- Write insert statements to insert the following 5 ingredients:
 -- Eggs
 -- Bread
 -- Beef Patty
 -- Lettuce
 -- Yoghurt
 --L'HO FATTO INSIEME AL PUNTO DUE.

  -- Write a SELECT statement to select the NAME of all the ingredients.

 SELECT NAME FROM INGREDIENT;

  -- Write a SELECT statement to select the NAME and the PRICE of the ingredients

  CREATE TABLE INGREDIENT_WITH_PRICE(NAME VARCHAR(255), PRICE DOUBLE);

  INSERT INTO INGREDIENT_WITH_PRICE(NAME, PRICE) VALUE (Eggs, 1.10),(Eggs, 1.10),(Bread, 1.50),(Beef Patty, 3.20),(Lettuce, 0.99),(Yoghurt, 1.40);

 SELECT NAME AND PRICE FROM INGREDIENT;

  -- Write a SELECT statement to select all columns of ingredients, ordered by NAME

 SELECT * FROM INGREDIENT
 ORDER BY NAME

  -- Write a SELECT statement to select all columns of ingredients,
  -- ordered by "GLUTEN_FREE" with the "true" items on top

 SELECT * FROM INGREDIENT
 ORDER BY GLUTEN FREE = TRUE DESC;