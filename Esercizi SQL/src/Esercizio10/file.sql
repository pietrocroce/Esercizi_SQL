CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT,
    NAME VARCHAR(255),
    ADDRESS VARCHAR(255)
);
CREATE TABLE ORDER_OF_CUSTOMER (
    ORDER_ID INT,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    TOTAL_COST DECIMAL(10,2)
);

select C.NAME,
from CUSTOMER C inner join ORDER_OF_CUSTOMER ooc
on C.CUSTOMER_ID = OOC.ORDER_ID
order by ORDER_DATE asc
group by C.NAME;

CREATE TABLE PRODUCT (
    PRODUCT_ID INT,
    NAME VARCHAR(255),
    PRICE DECIMAL(10,2)
);
CREATE TABLE INVENTORY (
    PRODUCT_ID INT,
    STORE_ID INT,
    QUANTITY INT
);

select P.NAME
from PRODUCT P inner join INVENTORY I
on P.PRODUCT_ID = I.PRODUCT_ID
where I.QUANTITY != 0;