select * from meal;

alter table MEAL add CONSTRAINT CHPRICE  check (PRICE >=0);

alter table MEAL add constraint CHCALORIES check (CALORIES >=0);

select * from INGREDIENT;

alter table INGREDIENT add constraint UNIQUE(NAME);

alter table ingredient MODIFY NAME VARCHAR(255) not null;

alter table ingredient MODIFY COINTAINS_LACTOSE BOOLEAN not null;

alter table ingredient modify VEGETARIAN BOOLEAN not null;

alter table ingredient modify VEGAN BOOLEAN not null;

alter table ingredient modify GLUTEN_FREE BOOLEAN not null;

select * from MEAL;

alter table meal modify NAME VARCHAR(255) not null;