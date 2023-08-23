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


<img width="401" alt="Dannys Diner img" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/64af7ab9-d0d9-4607-9e42-1c22184999ff">
<img width="417" alt="ERD - danny's diner" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/e7399105-1556-4306-a992-6534f87c4daf">

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


```

<br>

Click the PDF above or the folder named 1.) Danny's Diner for the rest of the solution.


<br>
<br>




