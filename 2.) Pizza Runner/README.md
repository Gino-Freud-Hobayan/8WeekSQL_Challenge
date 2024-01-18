
# CASE STUDY #2 - Pizza Runner


### SOLVED BY: [GINO FREUD D. HOBAYAN](https://gino-freud-hobayan.github.io/) 
<img src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/6d153ab0-33fc-49be-a668-5017b2b41f53" alt="7 pic" width="450" height="450">

<br>


Source: https://8weeksqlchallenge.com/case-study-2/

<br>






<br><br><br><br>

## INTRODUCTION:

Danny was scrolling through his Instagram feed when something really caught his eye - “80s Retro Styling and Pizza Is The Future!”

Danny was sold on the idea, but he knew that pizza alone was not going to help him get seed funding to expand his new Pizza Empire - so he had one more genius idea to combine with it - he was going to Uberize it - and so Pizza Runner was launched!

Danny started by recruiting “runners” to deliver fresh pizza from Pizza Runner Headquarters (otherwise known as Danny’s house) and also maxed out his credit card to pay freelance developers to build a mobile app to accept orders from customers.

<br><br>

**Because Danny had a few years of experience as a data scientist - he was very aware that data collection was going to be critical for his business’ growth.**

**He has prepared for us an entity relationship diagram of his database design but requires further assistance to clean his data and apply some basic calculations so he can better direct his runners and optimise Pizza Runner’s operations.**



<br><br><br><br><br>


## (ERD) ENTITY RELATIONSHIP DIAGRAM:

<img width="600" alt="ERD - pizza runner" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/8557251a-69b7-4d46-97b3-7dbb6d06c9cc">


<br><br><br><br>


# (DDL) DATA DEFINITION LANGUAGE

<details>
  <summary>Click to view</summary>

```sql

CREATE DATABASE pizza_runner2;





CREATE TABLE runners (
  "runner_id" INTEGER,
  "registration_date" DATE
);
INSERT INTO runners
  ("runner_id", "registration_date")
VALUES
  (1, '2021-01-01'),
  (2, '2021-01-03'),
  (3, '2021-01-08'),
  (4, '2021-01-15');




------------ WE USE DATETIME2 for SQL Server instead of TIMESTAMP.



-- Create the table with DATETIME2 data type for order_time

DROP TABLE IF EXISTS customer_orders;

CREATE TABLE customer_orders (
  order_id INT,
  customer_id INT,
  pizza_id INT,
  exclusions VARCHAR(4),
  extras VARCHAR(4),
  order_time DATETIME2
);

-- Insert data into the table
INSERT INTO customer_orders
  (order_id, customer_id, pizza_id, exclusions, extras, order_time)
VALUES
  (1, 101, 1, '', '', '2020-01-01T18:05:02'),
  (2, 101, 1, '', '', '2020-01-01T19:00:52'),
  (3, 102, 1, '', '', '2020-01-02T23:51:23'),
  (3, 102, 2, '', NULL, '2020-01-02T23:51:23'),
  (4, 103, 1, '4', '', '2020-01-04T13:23:46'),
  (4, 103, 1, '4', '', '2020-01-04T13:23:46'),
  (4, 103, 2, '4', '', '2020-01-04T13:23:46'),
  (5, 104, 1, NULL, '1', '2020-01-08T21:00:29'),
  (6, 101, 2, NULL, NULL, '2020-01-08T21:03:13'),
  (7, 105, 2, NULL, '1', '2020-01-08T21:20:29'),
  (8, 102, 1, NULL, NULL, '2020-01-09T23:54:33'),
  (9, 103, 1, '4', '1, 5', '2020-01-10T11:22:59'),
  (10, 104, 1, NULL, NULL, '2020-01-11T18:34:49'),
  (10, 104, 1, '2, 6', '1, 4', '2020-01-11T18:34:49');







  ----- runner_orders


  CREATE TABLE runner_orders (
  order_id INT,
  runner_id INT,
  pickup_time DATETIME2,
  distance VARCHAR(7),
  duration VARCHAR(10),
  cancellation VARCHAR(23)
);

INSERT INTO runner_orders
  (order_id, runner_id, pickup_time, distance, duration, cancellation)
VALUES
  (1, 1, '2020-01-01T18:15:34', '20km', '32 minutes', ''),
  (2, 1, '2020-01-01T19:10:54', '20km', '27 minutes', ''),
  (3, 1, '2020-01-03T00:12:37', '13.4km', '20 mins', NULL),
  (4, 2, '2020-01-04T13:53:03', '23.4 km', '40', NULL),
  (5, 3, '2020-01-08T21:10:57', '10', '15', NULL),
  (6, 3, NULL, NULL, NULL, 'Restaurant Cancellation'),
  (7, 2, '2020-01-08T21:30:45', '25km', '25mins', NULL),
  (8, 2, '2020-01-10T00:15:02', '23.4 km', '15 minute', NULL),
  (9, 2, NULL, NULL, NULL, 'Customer Cancellation'),
  (10, 1, '2020-01-11T18:50:20', '10km', '10minutes', NULL);








  CREATE TABLE pizza_names (
  "pizza_id" INTEGER,
  "pizza_name" TEXT
);
INSERT INTO pizza_names
  ("pizza_id", "pizza_name")
VALUES
  (1, 'Meatlovers'),
  (2, 'Vegetarian');







CREATE TABLE pizza_recipes (
  "pizza_id" INTEGER,
  "toppings" TEXT
);
INSERT INTO pizza_recipes
  ("pizza_id", "toppings")
VALUES
  (1, '1, 2, 3, 4, 5, 6, 8, 10'),
  (2, '4, 6, 7, 9, 11, 12');








CREATE TABLE pizza_toppings (
  "topping_id" INTEGER,
  "topping_name" TEXT
);
INSERT INTO pizza_toppings
  ("topping_id", "topping_name")
VALUES
  (1, 'Bacon'),
  (2, 'BBQ Sauce'),
  (3, 'Beef'),
  (4, 'Cheese'),
  (5, 'Chicken'),
  (6, 'Mushrooms'),
  (7, 'Onions'),
  (8, 'Pepperoni'),
  (9, 'Peppers'),
  (10, 'Salami'),
  (11, 'Tomatoes'),
  (12, 'Tomato Sauce');

```

</details>





<br><br><br><br>




### customer_orders (DIRTY)

<img width="376" alt="customer_orders - DIRTY" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/b82e9b0b-bace-4ddc-bbde-99e9a6b16097">


<br><br><br>





### runner_orders (DIRTY)


<img width="418" alt="runner_orders - DIRTY" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/3098a10d-b8ac-43ca-82df-cd3fbee15979">



<br>

Since these tables contain NULL values, we'll have to perform DATA CLEANING first, before we can query and analyze the dataset.



<br><br><br><br>


# DATA CLEANING:

### TABLE: customer_orders

```sql

-- CREATED a clean table

CREATE TABLE clean_customer_orders
(
    order_id INT,
    customer_id INT,
    pizza_id INT,
    exclusions VARCHAR(MAX),
    extras VARCHAR(MAX),
    order_time DATETIME2
);

INSERT INTO clean_customer_orders (order_id, customer_id, pizza_id, exclusions, extras, order_time)
SELECT 
    order_id,
    customer_id,
    pizza_id,
    COALESCE(exclusions, ' ') AS exclusions,
    COALESCE(extras, ' ') AS extras,
    order_time
FROM customer_orders;


----------------

SELECT *
FROM clean_customer_orders


```

<img width="500" alt="clean_customer_orders_RESULT" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/332bea0e-5310-478f-93a0-9faa661a022d">




<br><br><br>





### TABLE: runner_orders

```sql


---------------------------------------
-- CLEAN TABLE CREATED
---------------------------------------

SELECT 
    order_id,
    runner_id,

    CASE WHEN pickup_time IS NULL THEN ' ' 
		 ELSE pickup_time END AS pickup_time,

    CASE WHEN distance IS NULL THEN ' '
         WHEN distance LIKE '%km' THEN TRIM('km' FROM distance)
         ELSE distance END AS distance,

    CASE WHEN duration IS NULL THEN ' '
         WHEN duration LIKE '%minutes' THEN TRIM('minutes' FROM duration)
         WHEN duration LIKE '%minute' THEN TRIM('minute' FROM duration)
         WHEN duration LIKE '%mins' THEN TRIM('mins' FROM duration)
         ELSE duration END AS duration,

    CASE WHEN cancellation IS NULL THEN ' ' 
		 ELSE cancellation END AS cancellation

INTO clean_runner_orders

FROM runner_orders;


------------------------------------------

SELECT * 
FROM clean_runner_orders

```

<img width="500" alt="clean_runner_orders_RESULT" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/b370720c-27b2-43dc-b734-005e783da535">




<br><br>



```sql

-- Change the data types of the columns
ALTER TABLE clean_runner_orders
ALTER COLUMN pickup_time DATETIME;

ALTER TABLE clean_runner_orders
ALTER COLUMN distance FLOAT;

ALTER TABLE clean_runner_orders
ALTER COLUMN duration INT;


```



<br><br>






<br><br><br>




# DATA QUERY LANGUAGE:



## A.) Pizza Metrics

```sql

-- 1. How many pizzas were ordered?

SELECT 
	COUNT(*) AS pizzas_ordered
FROM 
	clean_customer_orders

```

<img width="300" alt="image" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/869dd08d-1819-4c29-825a-7fe603332ae1">



<br><br>






```sql

-- 2. How many unique customer orders were made?

SELECT
	COUNT(DISTINCT order_time) AS unique_orders

FROM clean_customer_orders

```

<img width="300" alt="image" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/4605ac78-43be-42b0-ad0f-6558126599fb">




<br><br>







```sql

-- 3.) How many successful orders were delivered by each runner?



```

<br><br>







```sql

-- 4.) How many of each type of pizza was delivered?



```

<br><br>






```sql

-- 5.) How many Vegetarian and Meatlovers were ordered by each customer?



```

<br><br>







```sql

-- 6.) What was the maximum number of pizzas delivered in a single order?



```

<br><br>







```sql

-- 7.) For each customer, how many delivered pizzas had at least 1 change and how many had no changes?



```

<br><br>










```sql

-- 8.) How many pizzas were delivered that had both exclusions and extras?



```

<br><br>











```sql

-- 9.) What was the total volume of pizzas ordered for each hour of the day?



```

<br><br>










```sql

-- 10.) What was the volume of orders for each day of the week?



```

<br><br>









## B.) Runner and Customer Experience


```sql

-- 



```

<br><br>








```sql

-- 



```

<br><br>






```sql

-- 



```

<br><br>







<br><br><br><br>
