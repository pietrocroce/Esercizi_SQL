#Using the INGREDIENT and MEAL tables, write a query to return the name of all meals that contain garlic.

select Meal.NAME
from MEAL join INGREDIENT
on MEAL.MEAL_ID = INGREDIENT.MEAL_ID
where INGREDIENT.NAME = 'Garlic';

#Using the INGREDIENT and MEAL tables, write a query to return the number of meals with vegetarian ingredients.

select COUNT(*)
from MEAL M join INGREDIENT I
on M.MEAL_ID = I.MEAL_ID
where I.VEGETARIAN= TRUE;

#using the INGREDIENT and MEAL table, write a query to return the names of meals that have
#at least 1 gluten free ingredient and at least 1 vegan ingredient.

select * DISTINCT M.NAME
from MEAL M join INGREDIENT I
on M.MEAL_ID = I.MEAL_ID
where I.GLUTEN_FREE= TRUE and I.VEGAN= TRUE;

#Using the INGREDIENT and MEAL tables, write a query to return
#the average number of ingredients per meal.

select M.NAME,
COUNT(I.NAME)
from MEAL M join INGREDIENT I
on M.MEAL_ID = I.MEAL_ID          #MANCA LA MEDIA
group by M.NAME;

#Using the INGREDIENT and MEAL tables, write a query to return
#the names of meals that have more than 3 ingredients.

select DISTINCT M.NAME
from MEAL M join INGREDIENT I
on M.MEAL_ID = I.MEAL_ID
group by M.NAME
HAVING COUNT(I.NAME)>3;
