
# CASE STUDY #7 - Balanced Tree Clothing Co.
### BY: GINO FREUD D. HOBAYAN


<img src="https://github.com/Gino-Freud-Hobayan/8WeekSQL_Challenge/assets/117270964/735f7f93-e44d-4668-9d24-d5cff9279e68" alt="7 pic" width="450" height="450">

https://8weeksqlchallenge.com/case-study-7/



<br><br><br>

## (ERD) ENTITY RELATIONSHIP DIAGRAM)


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

```


<br><br>



```sql
-- 2. Calculate the total generated revenue for all products before discounts



```


<br><br>



```sql
-- 3. Calculate the total discount amount for all products


```




<br><br>



```sql
-- comment


```
