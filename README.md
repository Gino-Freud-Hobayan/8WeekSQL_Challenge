# 8WeekSQL_Challenge

## https://8weeksqlchallenge.com/

8 Week SQL Challenge done by Gino Hobayan

Learning SQL, one code at a time.

I used **Microsoft SQL Server** for the 8-Week SQL Challenge, 
It's an excellent way to apply all the theoretical SQL knowledge I learned from the Google Data Analytics Certificate.


<br>
<br>

# **1.) Danny's Diner**

### **PDF: https://drive.google.com/file/d/1jLHWro41mbfpemUymKv97JmIPyvwgbmz/view?usp=sharing**

**This case study really helped me deepen my understanding of Aggregate functions, Window functions, CASE statements, CTEs, and more.**

<br>

# SQL Commands used:
- Data Definition Language (DDL)
- Data Manipulation Language (DML)
- Data Query Language (DQL)

<br>

<img width="320" alt="Dannys Diner img" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/64af7ab9-d0d9-4607-9e42-1c22184999ff">
<img width="350" alt="ERD - danny's diner" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/e7399105-1556-4306-a992-6534f87c4daf">


<br>


Danny wants to use the data to answer a few simple questions about his customers, especially about their visiting patterns, how much money they’ve spent and also which menu items are their favourite. 

Having this deeper connection with his customers will help him deliver a better and more personalised experience for his loyal customers.

He plans on using these insights to help him decide whether he should expand the existing customer loyalty program - additionally he needs help to generate some basic datasets so his team can easily inspect the data without needing to use SQL.


<br>


```sql
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-- CASE STUDY #1 - DANNY'S DINER (8-WEEK SQL CHALLENGE)
-- By: Gino Freud D. Hobayan
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------




-------------------------------------------------------------------------------------
-- DATA DEFINITION LANGUAGE (DDL) and DATA MANIPULATION LANGUAGE (DML)
-------------------------------------------------------------------------------------


CREATE SCHEMA 
	dannys_diner;


----------------------------------------------------------
-- sales TABLE
----------------------------------------------------------
CREATE TABLE 
	sales 
(
  "customer_id" VARCHAR(1),
  "order_date" DATE,
  "product_id" INTEGER
);


INSERT INTO sales
  ("customer_id", "order_date", "product_id")
VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');



----------------------------------------------------------
-- menu TABLE
----------------------------------------------------------
CREATE TABLE 
	menu 
(
  "product_id" INTEGER,
  "product_name" VARCHAR(5),
  "price" INTEGER
);


INSERT INTO 
	menu
  ("product_id", "product_name", "price")
VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');




----------------------------------------------------------
-- members TABLE
----------------------------------------------------------
CREATE TABLE 
	members 
(
  "customer_id" VARCHAR(1),
  "join_date" DATE
);


INSERT INTO 
	members
  ("customer_id", "join_date")
VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09');






-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-- DATA QUERY LANGUAGE (DQL)
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------


-- 1. What is the total amount each customer spent at the restaurant?
SELECT
	sales.customer_id,
	SUM(menu.price) AS total_amount_spent
FROM
	sales
JOIN
	menu
ON
	sales.product_id = menu.product_id
GROUP BY
	customer_id

/* 
ANSWER: 
Total amount spent:
Customer A - 76
Customer B - 74
Customer C - 36
*/







-- 2. How many days has each customer visited the restaurant?
SELECT
	customer_id,
	COUNT(DISTINCT order_date) AS no_of_days_visited
FROM
	sales
GROUP BY
	customer_id

/* 
ANSWER: 
No. of days visited
Customer A - 4
Customer B - 6
Customer C - 2
*/







-- 3. What was the first item from the menu purchased by each customer?
WITH CTE_RANK_OF_ALL_ITEMS AS
(
SELECT	
	customer_id,
	sales.product_id,
	order_date,
	product_name,
	ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS WINDOW_rownumber
FROM
	sales
JOIN
	menu
ON
	sales.product_id = menu.product_id
) 

SELECT
	customer_id,
	order_date,
	product_name AS First_item_purchased
FROM
	CTE_RANK_OF_ALL_ITEMS
WHERE
	WINDOW_rownumber = 1


/* 
ANSWER: 
Customer A - order date (2021-01-01) - first item purchased (sushi)
Customer B - order date (2021-01-01) - first item purchased (curry)
Customer C - order date (2021-01-01) - first item purchased (ramen)
*/









-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
SELECT TOP 1
	menu.product_name,
	COUNT(menu.product_name) AS MOST_PURCHASED_ITEM
FROM
	menu
JOIN
	sales
ON
	menu.product_id = sales.product_id
GROUP BY
	menu.product_name
ORDER BY
	MOST_PURCHASED_ITEM DESC	

/* 
ANSWER:
Ramen - the most purchased item on the menu (it was purchased 8 times.)
*/


```

<br>

Click the PDF above or the folder named 1.) Danny's Diner for the rest of the solution.


<br>
<br>




