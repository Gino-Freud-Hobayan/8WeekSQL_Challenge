
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

FROM
	balanced_tree.product_details AS prod
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

FROM
	balanced_tree.product_details AS prod
INNER JOIN balanced_tree.sales AS sales
ON prod.product_id = sales.prod_id

GROUP BY 
	prod.product_id, 
	prod.product_name
    
 ORDER BY total_revenue_before_discount DESC
 

-- very similar to the 1st query, we just added a calculation (revenue = qty * price).


RESULT:

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

FROM
	balanced_tree.product_details AS prod
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

SELECT
	COUNT(DISTINCT txn_id)	AS UNIQUE_COUNT_OF_TRANSACTIONS
    
FROM
	balanced_tree.sales



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

FROM
	balanced_tree.product_details AS prod
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


```



<br><br>



```sql
-- 6. Calculate the average revenue for member transactions and non-member transactions


```





<br><br><br><br>


## Product Analysis:

```sql
------------------------------------------
-- Product Analysis
------------------------------------------


-- 1. Find the top 3 products by total revenue before discount


```





<br><br>



```sql
-- 2. Calculate the total quantity, revenue, and discount for each segment


```





<br><br>



```sql
-- 3. Identify the top-selling product for each segment


```




<br><br>



```sql
-- 4. Calculate the total quantity, revenue, and discount for each category


```




<br><br>



```sql
-- 5. Identify the top-selling product for each category


```




<br><br>



```sql
-- 6. Determine the percentage split of revenue by product for each segment


```




<br><br>



```sql
-- 7. Determine the percentage split of revenue by segment for each category


```





<br><br>



```sql
-- 8. Determine the percentage split of total revenue by category


```




<br><br>



```sql
/* 
9. Calculate the total transaction "penetration" for each product 
(penetration = number of transactions where at least 1 quantity of a product was purchased divided by total number of transactions)
*/


```




<br><br>



```sql
-- 10. Find the most common combination of at least 1 quantity of any 3 products in a single transaction


```







