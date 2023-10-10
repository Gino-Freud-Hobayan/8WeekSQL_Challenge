
# CASE STUDY #7 - Balanced Tree Clothing Co.
### BY: [GINO FREUD D. HOBAYAN](https://gino-freud-hobayan.github.io/)


<img src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/735f7f93-e44d-4668-9d24-d5cff9279e68" alt="7 pic" width="450" height="450">

https://8weeksqlchallenge.com/case-study-7/

<br>

Solved using DB Fiddle: https://www.db-fiddle.com/f/dkhULDEjGib3K58MvDjYJr/8



<br><br>


## Introduction:

Balanced Tree Clothing Company prides themselves on providing an optimised range of clothing and lifestyle wear for the modern adventurer! <br>

Danny, the CEO of this trendy fashion company has asked you to **assist the team’s merchandising teams analyse their sales performance and generate a basic financial report to share with the wider business.**




<br><br><br>


## (ERD) ENTITY RELATIONSHIP DIAGRAM:




<br><br><br>



## Product Details TABLE:

balanced_tree.product_details includes all information about the entire range that Balanced Clothing sells in their store.


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


<br><br>


## Product Sales TABLE:

balanced_tree.sales contains product level information for all the transactions made for Balanced Tree including quantity, price, percentage discount, member status, a transaction ID and also the transaction timestamp.

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



<br><br><br>


## DATA QUERY LANGUAGE (DQL):

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



```


<br><br>



```sql
-- 3. Calculate the total discount amount for all products


```




<br><br><br><br>



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
-- comment


```




<br><br>



```sql
-- comment


```


























