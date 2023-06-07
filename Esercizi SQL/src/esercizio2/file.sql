 -- Write insert statements to insert the following 5 ingredients:
 -- Eggs
 -- Bread
 -- Beef Patty
 -- Lettuce
 -- Yoghurt

  -- Write a SELECT statement to select the NAME of all the ingredients.
 SELECT NAME FROM INGREDIENT
  -- Write a SELECT statement to select the NAME and the PRICE of the ingredients
 SELECT NAME AND PRICE FROM INGREDIENT
  -- Write a SELECT statement to select all columns of ingredients, ordered by NAME
 SELECT * FROM INGREDIENT
 ORDER BY NAME
  -- Write a SELECT statement to select all columns of ingredients,
  -- ordered by "GLUTEN_FREE" with the "true" items on top
 SELECT * FROM INGREDIENT
 ORDER BY GLUTEN FREE = TRUE ASC