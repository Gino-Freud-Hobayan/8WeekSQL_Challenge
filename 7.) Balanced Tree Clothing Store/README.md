
# CASE STUDY #7 - Balanced Tree Clothing Co.
### SOLVED BY: [GINO FREUD D. HOBAYAN](https://gino-freud-hobayan.github.io/) 

### Solved using DB Fiddle (PostgreSQL) : https://www.db-fiddle.com/f/dkhULDEjGib3K58MvDjYJr/8

<img src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/735f7f93-e44d-4668-9d24-d5cff9279e68" alt="7 pic" width="450" height="450">



<br>

Source: https://8weeksqlchallenge.com/case-study-7/


<br><br>

This is a good way of applying what I've learned from DataCamp's **[Analyzing Business Data in SQL](https://drive.google.com/drive/folders/1bm1W18TAGXojI2IHp__xf7eBKgKlVBRb)** course.


<br><br><br>


## Introduction:

Balanced Tree Clothing Company prides themselves on providing an optimised range of clothing and lifestyle wear for the modern adventurer! <br>

Danny, the CEO of this trendy fashion company has asked you to **assist the team’s merchandising teams analyse their sales performance and generate a basic financial report to share with the wider business.**




<br><br><br>


## (ERD) ENTITY RELATIONSHIP DIAGRAM:

<img width="600" alt="Balanced Tree - EDA" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/037909e3-f5cf-4d78-addd-597e68951c7e">




<br><br><br>



## Product Details TABLE:

balanced_tree.product_details includes all information about the entire range that Balanced Clothing sells in their store.

<details>
  <summary>Click to view</summary>



| product_id | price |         product_name          | category_id | segment_id | style_id | category_name | segment_name |    style_name     |
|------------|-------|------------------------------|-------------|------------|----------|---------------|--------------|-------------------|
|   c4a632   |   13  | Navy Oversized Jeans - Womens |      1      |     3      |    7     |     Womens    |    Jeans     |  Navy Oversized  |
|   e83aa3   |   32  | Black Straight Jeans - Womens |      1      |     3      |    8     |     Womens    |    Jeans     |  Black Straight  |
|   e31d39   |   10  | Cream Relaxed Jeans - Womens  |      1      |     3      |    9     |     Womens    |    Jeans     |   Cream Relaxed   |
|   d5e9a6   |   23  | Khaki Suit Jacket - Womens    |      1      |     4      |    10    |     Womens    |    Jacket    |   Khaki Suit      |
|   72f5d4   |   19  | Indigo Rain Jacket - Womens   |      1      |     4      |    11    |     Womens    |    Jacket    |  Indigo Rain      |
|   9ec847   |   54  | Grey Fashion Jacket - Womens  |      1      |     4      |    12    |     Womens    |    Jacket    |  Grey Fashion     |
|   5d267b   |   40  | White Tee Shirt - Mens        |      2      |     5      |    13    |      Mens     |    Shirt     |  White Tee        |
|   c8d436   |   10  | Teal Button Up Shirt - Mens   |      2      |     5      |    14    |      Mens     |    Shirt     |  Teal Button Up   |
|   2a2353   |   57  | Blue Polo Shirt - Mens        |      2      |     5      |    15    |      Mens     |    Shirt     |  Blue Polo        |
|   f084eb   |   36  | Navy Solid Socks - Mens       |      2      |     6      |    16    |      Mens     |    Socks     |  Navy Solid       |
|   b9a74d   |   17  | White Striped Socks - Mens    |      2      |     6      |    17    |      Mens     |    Socks     |  White Striped    |
|   2feb6b   |   29  | Pink Fluro Polkadot Socks - Mens |    2     |     6      |    18    |      Mens     |    Socks     | Pink Fluro Polkadot |


</details>



<br><br>


## Product Sales TABLE:

balanced_tree.sales contains product level information for all the transactions made for Balanced Tree including quantity, price, percentage discount, member status, a transaction ID and also the transaction timestamp.

<details>
  <summary>Click to view</summary>

| prod_id | qty | price | discount | member | txn_id |      start_txn_time      |
|---------|-----|-------|----------|--------|--------|--------------------------|
| c4a632  |  4  |  13   |    17    |   t    | 54f307 | 2021-02-13 01:59:43.296  |
| 5d267b  |  4  |  40   |    17    |   t    | 54f307 | 2021-02-13 01:59:43.296  |
| b9a74d  |  4  |  17   |    17    |   t    | 54f307 | 2021-02-13 01:59:43.296  |
| 2feb6b  |  2  |  29   |    17    |   t    | 54f307 | 2021-02-13 01:59:43.296  |
| c4a632  |  5  |  13   |    21    |   t    | 26cc98 | 2021-01-19 01:39:00.3456 |
| e31d39  |  2  |  10   |    21    |   t    | 26cc98 | 2021-01-19 01:39:00.3456 |
| 72f5d4  |  3  |  19   |    21    |   t    | 26cc98 | 2021-01-19 01:39:00.3456 |
| 2a2353  |  3  |  57   |    21    |   t    | 26cc98 | 2021-01-19 01:39:00.3456 |
| f084eb  |  3  |  36   |    21    |   t    | 26cc98 | 2021-01-19 01:39:00.3456 |
| c4a632  |  1  |  13   |    21    |   f    | ef648d | 2021-01-27 02:18:17.1648 |

  
</details>

<br><br><br><br><br>

## Case Study Questions
The following questions can be considered key business questions and metrics that the Balanced Tree team requires for their monthly reports.

<img width="600" alt="Case Study 7 - questions" src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/c0d180f0-dbeb-4e98-a9c0-2c27617035a2">


<br><br><br><br><br><br>

## SQL COMMANDS:

### 1. (DDL) DATA DEFINITION LANGUAGE
### 2. (DML) DATA MANIPULATION LANGUAGE
### 3. (DQL) DATA QUERY LANGUAGE

<br>

### We're going to skip DDL and DML since I solved this using DB Fiddle and the data is already clean.


<br><br><br><br><br>



# DATA QUERY LANGUAGE (DQL):

<br><br>


## High Level Sales Analysis:

```sql
------------------------------------------
-- High Level Sales Analysis
------------------------------------------

-- 1. What was the total quantity sold for all products?

SELECT
	prod.product_id,
	prod.product_name,
	SUM(sales.qty) AS total_qty_sold

FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales
ON prod.product_id = sales.prod_id

GROUP BY 
	prod.product_id, 
	prod.product_name
    
 ORDER BY total_qty_sold DESC



RESULT:

| product_id | product_name                     | total_qty_sold |
| ---------- | -------------------------------- | -------------- |
| 9ec847     | Grey Fashion Jacket - Womens     | 3876           |
| c4a632     | Navy Oversized Jeans - Womens    | 3856           |
| 2a2353     | Blue Polo Shirt - Mens           | 3819           |
| 5d267b     | White Tee Shirt - Mens           | 3800           |
| f084eb     | Navy Solid Socks - Mens          | 3792           |
| e83aa3     | Black Straight Jeans - Womens    | 3786           |
| 2feb6b     | Pink Fluro Polkadot Socks - Mens | 3770           |
| 72f5d4     | Indigo Rain Jacket - Womens      | 3757           |
| d5e9a6     | Khaki Suit Jacket - Womens       | 3752           |
| e31d39     | Cream Relaxed Jeans - Womens     | 3707           |
| b9a74d     | White Striped Socks - Mens       | 3655           |
| c8d436     | Teal Button Up Shirt - Mens      | 3646           |

```


<br><br>



```sql
-- 2. Calculate the total generated revenue for all products before discounts

SELECT
	prod.product_id,
	prod.product_name,
	SUM(sales.qty * sales.price) AS total_revenue_before_discount

FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales
ON prod.product_id = sales.prod_id

GROUP BY 
	prod.product_id, 
	prod.product_name
    
 ORDER BY total_revenue_before_discount DESC
 

-- very similar to the 1st query, we just added a calculation (revenue = qty * price).


RESULT:

-- Total revenue for all products: 1,289,453

| product_id | product_name                     | total_revenue_before_discount |
| ---------- | -------------------------------- | ----------------------------- |
| 2a2353     | Blue Polo Shirt - Mens           | 217683                        |
| 9ec847     | Grey Fashion Jacket - Womens     | 209304                        |
| 5d267b     | White Tee Shirt - Mens           | 152000                        |
| f084eb     | Navy Solid Socks - Mens          | 136512                        |
| e83aa3     | Black Straight Jeans - Womens    | 121152                        |
| 2feb6b     | Pink Fluro Polkadot Socks - Mens | 109330                        |
| d5e9a6     | Khaki Suit Jacket - Womens       | 86296                         |
| 72f5d4     | Indigo Rain Jacket - Womens      | 71383                         |
| b9a74d     | White Striped Socks - Mens       | 62135                         |
| c4a632     | Navy Oversized Jeans - Womens    | 50128                         |
| e31d39     | Cream Relaxed Jeans - Womens     | 37070                         |
| c8d436     | Teal Button Up Shirt - Mens      | 36460                         |

```


<br><br>



```sql
-- 3. Calculate the total discount amount for all products


SELECT
	prod.product_id,
	prod.product_name,
	SUM(sales.qty * sales.price * sales.discount / 100) AS total_discount_amount

FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales
ON prod.product_id = sales.prod_id

GROUP BY 
	prod.product_id, 
	prod.product_name
    
 ORDER BY total_discount_amount DESC
 
 
/*

qty * price * discount / 100       =    total_discount_amount


since the discount column represents the discount as a percentage (ex: 17% discount)
and we want to calculate the total discount amount in monetary values.

The division by 100 is necessary to convert the discount from a percentage (ex: 17% discount)
to a decimal before applying it to the price and quantity. 

*/


RESULT:

| product_id | product_name                     | total_discount_amount |
| ---------- | -------------------------------- | --------------------- |
| 2a2353     | Blue Polo Shirt - Mens           | 26189                 |
| 9ec847     | Grey Fashion Jacket - Womens     | 24781                 |
| 5d267b     | White Tee Shirt - Mens           | 17968                 |
| f084eb     | Navy Solid Socks - Mens          | 16059                 |
| e83aa3     | Black Straight Jeans - Womens    | 14156                 |
| 2feb6b     | Pink Fluro Polkadot Socks - Mens | 12344                 |
| d5e9a6     | Khaki Suit Jacket - Womens       | 9660                  |
| 72f5d4     | Indigo Rain Jacket - Womens      | 8010                  |
| b9a74d     | White Striped Socks - Mens       | 6877                  |
| c4a632     | Navy Oversized Jeans - Womens    | 5538                  |
| e31d39     | Cream Relaxed Jeans - Womens     | 3979                  |
| c8d436     | Teal Button Up Shirt - Mens      | 3925                  |


```




<br><br><br><br>


## Transaction Analysis:

```sql

------------------------------------------
-- Transaction Analysis
------------------------------------------



-- 1. Count the number of unique transactions

SELECT COUNT(DISTINCT txn_id)	AS UNIQUE_COUNT_OF_TRANSACTIONS
    
FROM balanced_tree.sales



RESULT:

| unique_count_of_transactions |
| ---------------------------- |
| 2500                         |

```




<br><br>



```sql
-- 2. Calculate the average unique products purchased in each transaction


WITH CTE_unique_product_count AS 
(
SELECT
	txn_id,
	COUNT(DISTINCT prod.product_name) AS unique_product_count

FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales
ON prod.product_id = sales.prod_id

GROUP BY txn_id
)


SELECT
    ROUND(AVG(unique_product_count),2) AS average_unique_products
FROM
    CTE_unique_product_count



RESULT:

| average_unique_products |
| ----------------------- |
| 6.04                    |

-- 6.04 is the average unique products purchased in each transaction


```




<br><br>



```sql

-- 3. Find the 25th, 50th, and 75th percentile values for the revenue per transaction

-- (Percentiles) Revenue per Transaction


WITH CTE_txnid_revenue AS 
(
SELECT
    txn_id,
    SUM(qty * price) AS revenue
	
FROM balanced_tree.sales

GROUP BY txn_id
)



SELECT
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY revenue) AS "25th Percentile Revenue",
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY revenue) AS "50th Percentile Revenue (Median)",
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY revenue) AS "75th Percentile Revenue"

FROM
    CTE_txnid_revenue;




RESULT:

| 25th Percentile Revenue | 50th Percentile Revenue (Median) | 75th Percentile Revenue |
| ----------------------- | -------------------------------- | ----------------------- |
| 375.75                  | 509.5                            | 647                     |

```



<br><br>



```sql
-- 4. Calculate the average discount value per transaction


WITH CTE_txnid_discount AS 
(
SELECT
	txn_id,
	SUM(qty * price * discount)/100 AS total_discount
FROM balanced_tree.sales
GROUP BY txn_id
)


SELECT
	ROUND(AVG(total_discount), 0) AS "average discount value per transaction"
FROM CTE_txnid_discount;



RESULT:

| average discount value per transaction |
| -------------------------------------- |
| 62                                     |

```



<br><br>



```sql
-- 5. Determine the percentage split of all transactions for members vs. non-members

WITH CTE_percentage_split AS 
(
SELECT
	SUM(CASE WHEN member = 't' THEN 1 ELSE 0 END) * 100.0 / 
	(SELECT COUNT(*) FROM balanced_tree.sales) AS members, 
	
	SUM(CASE WHEN member = 'f' THEN 1 ELSE 0 END) * 100.0 / 
	(SELECT COUNT(*) FROM balanced_tree.sales) AS non_members 
    
FROM balanced_tree.sales
)


SELECT
	ROUND(members,2) AS members_percentage_split,
	ROUND(non_members,2) AS non_members_percentage_split
    
FROM CTE_percentage_split




RESULT:
-- members transactionn count = 1505 (60%)
-- non-members transactionn count = 995 (40%)

| members_percentage_split | non_members_percentage_split |
| ------------------------ | ---------------------------- |
| 60.03                    | 39.97                        |



-- Members have a higher transaction count, they may also contribute a larger portion of the total revenue.
-- Retaining and attracting more members could be beneficial for the business in terms of revenue


```



<br><br>



```sql
-- 6. Calculate the average revenue for member transactions and non-member transactions


WITH CTE_member_txn AS 
(
SELECT
	txn_id,
	SUM(qty * price) AS "member_revenue"
FROM balanced_tree.sales
WHERE member = 't'
GROUP BY txn_id
),

CTE_non_member_txn AS 
(
SELECT
	txn_id,
	SUM(qty * price) AS "non_member_revenue"
FROM balanced_tree.sales
WHERE member = 'f'
GROUP BY txn_id
)


SELECT
	ROUND(AVG(member_revenue), 2) AS "Average revenue for member transactions",
	ROUND(AVG(non_member_revenue), 2) AS "Average revenue for non-member transactions"

FROM CTE_member_txn
FULL OUTER JOIN CTE_non_member_txn
USING (txn_id)




RESULT:

| Average revenue for member transactions | Average revenue for non-member transactions |
| --------------------------------------- | ------------------------------------------- |
| 516.27                                  | 515.04                                      |


-- The Average revenue for members and non-members is almost the same, There's no big gap.

```





<br><br><br><br>


## Product Analysis:

```sql
------------------------------------------
-- Product Analysis
------------------------------------------


-- 1. Find the top 3 products by total revenue before discount

SELECT
	prod.product_id,
	prod.product_name,
	SUM(sales.qty * sales.price) AS total_revenue_before_discount

FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales
ON prod.product_id = sales.prod_id

GROUP BY 
	prod.product_id, 
	prod.product_name
 ORDER BY total_revenue_before_discount DESC
 LIMIT 3


-- Basically the same query earlier. Just used LIMIT to limit the results to the top 3.


RESULT:

| product_id | product_name                 | total_revenue_before_discount |
| ---------- | ---------------------------- | ----------------------------- |
| 2a2353     | Blue Polo Shirt - Mens       | 217683                        |
| 9ec847     | Grey Fashion Jacket - Womens | 209304                        |
| 5d267b     | White Tee Shirt - Mens       | 152000                        |

```





<br><br>



```sql
-- 2. Calculate the total quantity, revenue, and discount for each segment

SELECT
	segment_id,
	segment_name,
	SUM(sales.qty) AS total_qty,
	SUM(sales.qty * sales.price) AS total_revenue,
	SUM(sales.qty * sales.price * sales.discount / 100) AS total_discount

FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales
ON prod.product_id = sales.prod_id

GROUP BY segment_id, segment_name
ORDER BY segment_id


RESULT:

| segment_id | segment_name | total_qty | total_revenue | total_discount |
| ---------- | ------------ | --------- | ------------- | -------------- |
| 3          | Jeans        | 11349     | 208350        | 23673          |
| 4          | Jacket       | 11385     | 366983        | 42451          |
| 5          | Shirt        | 11265     | 406143        | 48082          |
| 6          | Socks        | 11217     | 307977        | 35280          |



```





<br><br>



```sql
-- 3. Identify the top-selling product for each segment

-- top-selling = qty?

WITH CTE_1 AS
(
SELECT
	prod.product_id,
	prod.product_name,
 	prod.segment_id,
	prod.segment_name,
	SUM(sales.qty) AS SUM_of_qty_sold

FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales
ON prod.product_id = sales.prod_id

GROUP BY
	prod.product_id,
	prod.product_name,
 	prod.segment_id,
	prod.segment_name
ORDER BY SUM_of_qty_sold DESC
),


CTE_2 AS
(
SELECT
	*,
    RANK() OVER (PARTITION BY segment_name ORDER BY SUM_of_qty_sold DESC) AS Rank_of_qty_by_segment

FROM CTE_1
)


SELECT *
FROM CTE_2
WHERE Rank_of_qty_by_segment = 1


-- These are the top-selling products per segment (in terms of qty sold).
RESULT:

| product_id | product_name                  | segment_id | segment_name | sum_of_qty_sold | rank_of_qty_by_segment |
| ---------- | ----------------------------- | ---------- | ------------ | --------------- | ---------------------- |
| 9ec847     | Grey Fashion Jacket - Womens  | 4          | Jacket       | 3876            | 1                      |
| c4a632     | Navy Oversized Jeans - Womens | 3          | Jeans        | 3856            | 1                      |
| 2a2353     | Blue Polo Shirt - Mens        | 5          | Shirt        | 3819            | 1                      |
| f084eb     | Navy Solid Socks - Mens       | 6          | Socks        | 3792            | 1                      |


```




<br><br>



```sql
-- 4. Calculate the total quantity, revenue, and discount for each category


-- very similar to the Segment query (Question #2)

SELECT
	category_id,
	category_name,
	SUM(sales.qty) AS total_qty,
	SUM(sales.qty * sales.price) AS total_revenue,
	SUM(sales.qty * sales.price * sales.discount / 100) AS total_discount

FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales
ON prod.product_id = sales.prod_id

GROUP BY category_id, category_name
ORDER BY category_id




RESULT:

| category_id | category_name | total_qty | total_revenue | total_discount |
| ----------- | ------------- | --------- | ------------- | -------------- |
| 1           | Womens        | 22734     | 575333        | 66124          |
| 2           | Mens          | 22482     | 714120        | 83362          |



```




<br><br>



```sql
-- 5. Identify the top-selling product for each category


-- very similar to question # 3, I just replaced segment with category.

WITH CTE_1 AS
(
SELECT
	prod.product_id,
	prod.product_name,
 	prod.category_id,
	prod.category_name,
	SUM(sales.qty) AS SUM_of_qty_sold

FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales
ON prod.product_id = sales.prod_id

GROUP BY
	prod.product_id,
	prod.product_name,
 	prod.category_id,
	prod.category_name
ORDER BY SUM_of_qty_sold DESC
),


CTE_2 AS
(
SELECT
	*,
    RANK() OVER (PARTITION BY category_name ORDER BY SUM_of_qty_sold DESC) AS Rank_of_qty_by_CATEGORY

FROM CTE_1
)


SELECT *
FROM CTE_2
WHERE Rank_of_qty_by_CATEGORY = 1



-- These are the top-selling products per CATEGORY (in terms of qty sold).

RESULT:


| product_id | product_name                 | category_id | category_name | sum_of_qty_sold | rank_of_qty_by_category |
| ---------- | ---------------------------- | ----------- | ------------- | --------------- | ----------------------- |
| 2a2353     | Blue Polo Shirt - Mens       | 2           | Mens          | 3819            | 1                       |
| 9ec847     | Grey Fashion Jacket - Womens | 1           | Womens        | 3876            | 1                       |


```




<br><br>



```sql
-- 6. Determine the percentage split of revenue by product for each segment



WITH CTE_total_revenue AS
(
SELECT
	segment_name,
	product_name,
  
	SUM(sales.qty * sales.price) AS total_revenue_per_product,
	
	SUM( SUM(sales.qty * sales.price) ) OVER (PARTITION BY segment_name) AS total_revenue_per_segment


FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales 
ON prod.product_id = sales.prod_id

GROUP BY 
	segment_name, 
	product_name
)


SELECT
	*,
	ROUND(  (total_revenue_per_product / total_revenue_per_segment)  ,3) * 100 AS "percentage (%)"

FROM CTE_total_revenue

ORDER BY segment_name






RESULT:

| segment_name | product_name                     | total_revenue_per_product | total_revenue_per_segment | percentage (%) |
| ------------ | -------------------------------- | ------------------------- | ------------------------- | -------------- |
| Jacket       | Indigo Rain Jacket - Womens      | 71383                     | 366983                    | 19.500         |
| Jacket       | Khaki Suit Jacket - Womens       | 86296                     | 366983                    | 23.500         |
| Jacket       | Grey Fashion Jacket - Womens     | 209304                    | 366983                    | 57.000         |
| Jeans        | Navy Oversized Jeans - Womens    | 50128                     | 208350                    | 24.100         |
| Jeans        | Black Straight Jeans - Womens    | 121152                    | 208350                    | 58.100         |
| Jeans        | Cream Relaxed Jeans - Womens     | 37070                     | 208350                    | 17.800         |
| Shirt        | White Tee Shirt - Mens           | 152000                    | 406143                    | 37.400         |
| Shirt        | Blue Polo Shirt - Mens           | 217683                    | 406143                    | 53.600         |
| Shirt        | Teal Button Up Shirt - Mens      | 36460                     | 406143                    | 9.000          |
| Socks        | Navy Solid Socks - Mens          | 136512                    | 307977                    | 44.300         |
| Socks        | White Striped Socks - Mens       | 62135                     | 307977                    | 20.200         |
| Socks        | Pink Fluro Polkadot Socks - Mens | 109330                    | 307977                    | 35.500         |




```




<br><br>



```sql
-- 7. Determine the percentage split of revenue by segment for each category



WITH CTE_total_revenue AS
(
SELECT
	category_name,
	segment_name,
  
	
	SUM( SUM(sales.qty * sales.price) ) OVER (PARTITION BY segment_name) AS total_revenue_per_segment,

	SUM( SUM(sales.qty * sales.price) ) OVER (PARTITION BY category_name) AS total_revenue_per_category


FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales 
ON prod.product_id = sales.prod_id

GROUP BY 
	category_name,
	segment_name
)


SELECT
	*,
	ROUND(  (total_revenue_per_segment / total_revenue_per_category)  ,3) * 100 AS "percentage (%)"

FROM CTE_total_revenue

ORDER BY category_name





RESULT:

| category_name | segment_name | total_revenue_per_segment | total_revenue_per_category | percentage (%) |
| ------------- | ------------ | ------------------------- | -------------------------- | -------------- |
| Mens          | Shirt        | 406143                    | 714120                     | 56.900         |
| Mens          | Socks        | 307977                    | 714120                     | 43.100         |
| Womens        | Jacket       | 366983                    | 575333                     | 63.800         |
| Womens        | Jeans        | 208350                    | 575333                     | 36.200         |




```





<br><br>



```sql
-- 8. Determine the percentage split of total revenue by category


WITH CTE_revenue_per_category AS
(
SELECT
	category_name,
	SUM(sales.qty * sales.price) AS total_revenue

FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales
ON prod.product_id = sales.prod_id

GROUP BY
	category_name
)



-- We need to divide the revenue generated by each category by the total revenue and multiply by 100 to get the percentage.

-- SUM(total_revenue) OVER() = The sum of total revenue across all Categories.

SELECT
	category_name,
    total_revenue,
    ROUND(   ( total_revenue / SUM(total_revenue) OVER() )   ,2)* 100 AS "percentage (%)"
     
FROM CTE_revenue_per_category

GROUP BY
	category_name,
    total_revenue




RESULT:

| category_name | total_revenue | percentage (%) |
| ------------- | ------------- | -------------- |
| Mens          | 714120        | 55.00          |
| Womens        | 575333        | 45.00          |




```




<br><br>



```sql

/* 
9. Calculate the total transaction "penetration" for each product 
(penetration = no. of transactions where at least 1 qty of a product was purchased / by total number of transactions)
*/


WITH CTE_penetration AS
(
SELECT
	product_name,

	-- transactions GROUP BY product_name
	COUNT(DISTINCT txn_id) AS transaction_with_at_least_1_qty_purchased,
  
	-- (subquery) total num of transactions
	(SELECT COUNT(DISTINCT txn_id) FROM balanced_tree.sales) AS total_no_of_transactions,


	-- computation
	COUNT(DISTINCT txn_id)*100.0
	/ 
	(SELECT COUNT(DISTINCT txn_id) FROM balanced_tree.sales)
	AS penetration
     
     
FROM balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales 
ON prod.product_id = sales.prod_id

WHERE qty > 0

GROUP BY product_name

ORDER BY penetration DESC
)



SELECT
	product_name,

	transaction_with_at_least_1_qty_purchased,

	total_no_of_transactions,
	
	ROUND(penetration,2) AS "penetration (%)"

FROM CTE_penetration




RESULT:

| product_name                     | transaction_with_at_least_1_qty_purchased | total_no_of_transactions | penetration (%) |
| -------------------------------- | ----------------------------------------- | ------------------------ | --------------- |
| Navy Solid Socks - Mens          | 1281                                      | 2500                     | 51.24           |
| Grey Fashion Jacket - Womens     | 1275                                      | 2500                     | 51.00           |
| Navy Oversized Jeans - Womens    | 1274                                      | 2500                     | 50.96           |
| White Tee Shirt - Mens           | 1268                                      | 2500                     | 50.72           |
| Blue Polo Shirt - Mens           | 1268                                      | 2500                     | 50.72           |
| Pink Fluro Polkadot Socks - Mens | 1258                                      | 2500                     | 50.32           |
| Indigo Rain Jacket - Womens      | 1250                                      | 2500                     | 50.00           |
| Khaki Suit Jacket - Womens       | 1247                                      | 2500                     | 49.88           |
| Black Straight Jeans - Womens    | 1246                                      | 2500                     | 49.84           |
| Cream Relaxed Jeans - Womens     | 1243                                      | 2500                     | 49.72           |
| White Striped Socks - Mens       | 1243                                      | 2500                     | 49.72           |
| Teal Button Up Shirt - Mens      | 1242                                      | 2500                     | 49.68           |




```




<br><br>



```sql
-- 10. Find the most common combination of at least 1 quantity of any 3 products in a single transaction


```







