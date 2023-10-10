
# CASE STUDY #7 - Balanced Tree Clothing Co.
### BY: GINO FREUD D. HOBAYAN


<img src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/735f7f93-e44d-4668-9d24-d5cff9279e68" alt="7 pic" width="450" height="450">

https://8weeksqlchallenge.com/case-study-7/

<br>

Solved using DB Fiddle: https://www.db-fiddle.com/f/dkhULDEjGib3K58MvDjYJr/8


<br><br><br>

## (ERD) ENTITY RELATIONSHIP DIAGRAM:



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


























