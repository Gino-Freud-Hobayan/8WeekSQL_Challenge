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






-- 2. How many days has each customer visited the restaurant?
SELECT
	customer_id,
	COUNT(DISTINCT order_date) AS no_of_days_visited
FROM
	sales
GROUP BY
	customer_id






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





-- 5. Which item was the most popular for each customer?
WITH CTE_most_popular_item AS
(
SELECT
	customer_id,
	product_name,
	COUNT(product_name) AS No_of_times_purchased,
	RANK() OVER (PARTITION BY customer_id ORDER BY COUNT(product_name) DESC) AS WINDOW_Ranking
FROM
	sales
JOIN menu ON sales.product_id = menu.product_id
GROUP BY
	product_name,
	customer_id
)
SELECT
	customer_id,
	product_name,
	No_of_times_purchased
FROM
	CTE_most_popular_item
WHERE
	CTE_most_popular_item.WINDOW_Ranking = 1






--6. Which item was purchased first by the customer after they became a member?
WITH CTE_items_purchased_by_members AS
(
SELECT
	sales.customer_id,
	sales.order_date,
	members.join_date,
	menu.product_name,
	RANK() OVER (PARTITION BY sales.customer_id ORDER BY order_date) AS WINDOW_RANK,
	ROW_NUMBER() OVER (PARTITION BY sales.customer_id ORDER BY order_date) AS WINDOW_rownumber
FROM
	sales
JOIN members ON sales.customer_id = members.customer_id
JOIN menu ON sales.product_id = menu.product_id
WHERE
	order_date >= join_date
)

SELECT
	*
FROM
	CTE_items_purchased_by_members
WHERE
	WINDOW_rownumber = 1






--7. Which item was purchased just before the customer became a member?
WITH CTE_item_purchased_before_membership AS
(
SELECT
	sales.customer_id,
	sales.order_date,
	members.join_date,
	menu.product_name,
	RANK()OVER (PARTITION BY sales.customer_id ORDER BY order_date DESC) AS WINDOW_rank,
	ROW_NUMBER() OVER (PARTITION BY sales.customer_id ORDER BY order_date DESC) AS WINDOW_rownumber
FROM
	sales
JOIN members ON sales.customer_id = members.customer_id
JOIN menu ON sales.product_id = menu.product_id
WHERE
	order_date < join_date
)

SELECT
	customer_id,
	product_name
FROM
	CTE_item_purchased_before_membership
WHERE
	WINDOW_rank = 1






--8. What is the total items and amount spent for each member before they became a member?

SELECT
	sales.customer_id,
	COUNT(menu.product_name) AS total_items_purchased,
	SUM(menu.price) AS total_amount_spent
FROM
	sales
JOIN members ON sales.customer_id = members.customer_id
JOIN menu ON sales.product_id = menu.product_id
WHERE
	order_date < join_date
GROUP BY
	sales.customer_id








-- 9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?

SELECT
	sales.customer_id,
	SUM(CASE WHEN product_name = 'sushi' THEN price * 10 * 2
		 ELSE price * 10
		 END) AS total_points
FROM
	menu
JOIN sales ON menu.product_id = sales.product_id

GROUP BY
	sales.customer_id



-- 9. Solve using CTE (I prefer this method more)
WITH CTE_points_data AS
 (
SELECT 
	*, 
	CASE
	WHEN product_id = 1 THEN price * 20
	ELSE price * 10
	END AS points
FROM 
	menu
 )

SELECT 
	sales.customer_id, 
	SUM(CTE_points_data.points) AS total_points
FROM 
	CTE_points_data
JOIN sales ON CTE_points_data.product_id = sales.product_id
GROUP BY 
	sales.customer_id




-- 10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi 
-- how many points do customer A and B have at the end of January?




-- Solution without CTE

SELECT 
	sales.customer_id,
	SUM(CASE WHEN menu.product_name = 'sushi' THEN 2*10* menu.price
			 WHEN sales.order_date >= members.join_date AND sales.order_date < DATEADD(WEEK , 1 , members.join_date) THEN 2*10* menu.price
			 ELSE 10* menu.price END) 
			 AS January_total_points

FROM 
	sales
JOIN menu ON sales.product_id = menu.product_id
JOIN members ON members.customer_id = sales.customer_id

WHERE 
	sales.order_date BETWEEN '2021-01-01' AND '2021-01-31'
GROUP BY 
	sales.customer_id;





-- SOLUTION BY: Katie Huang Xiemin (medium.com)
-- Find out customer�s validity date (which is 6 days after join_date and inclusive of join_date) and last day of Jan 2021 (�2021�01�21�).

WITH CTE_customer_dates AS 
(
 SELECT 
	*, 
	DATEADD(DAY, 6, join_date) AS valid_date, 
	EOMONTH('2021-01-31') AS last_date
 FROM 
	members 
)

-- Then, use CASE WHEN to allocate points by dates and product_name.

SELECT 
	CTE_customer_dates.customer_id,
	sales.order_date,
	CTE_customer_dates.join_date, 
	CTE_customer_dates.valid_date,
	CTE_customer_dates.last_date,
	menu.product_name, 
	menu.price,
	SUM(CASE
		WHEN menu.product_name = 'sushi' THEN 2 * 10 * menu.price
		WHEN sales.order_date BETWEEN CTE_customer_dates.join_date AND CTE_customer_dates.valid_date THEN 2 * 10 * menu.price
		ELSE 10 * menu.price
		END) AS points

FROM 
	CTE_customer_dates
JOIN sales ON CTE_customer_dates.customer_id = sales.customer_id
JOIN menu ON sales.product_id = menu.product_id

WHERE 
	sales.order_date < CTE_customer_dates.last_date
GROUP BY 
	CTE_customer_dates.customer_id, sales.order_date, 
	CTE_customer_dates.join_date, CTE_customer_dates.valid_date, 
	CTE_customer_dates.last_date, menu.product_name, 
	menu.price



-- 11.) BONUS QUESTION 1: Join All The Things
SELECT
	sales.customer_id,
	sales.order_date,
	menu.product_name,
	menu.price,
	CASE WHEN sales.order_date >= members.join_date THEN 'Y'
		 ELSE 'N'
		 END AS member

FROM 
	sales
JOIN menu ON sales.product_id = menu.product_id
LEFT JOIN members ON members.customer_id = sales.customer_id






-- Solution #2 (Alternative solution)
SELECT
	sales.customer_id,
	sales.order_date,
	menu.product_name,
	menu.price,
	CASE WHEN members.join_date IS NULL THEN 'N'
		 WHEN members.join_date IS NOT NULL AND members.join_date > sales.order_date THEN 'N'
		 ELSE 'Y' 
		 END AS member

FROM 
	sales
JOIN menu ON sales.product_id = menu.product_id
LEFT JOIN members ON members.customer_id = sales.customer_id




-- Solution #3 (Alternative solution)
SELECT 
	s.customer_id, 
	s.order_date, 
	m.product_name, 
	m.price,
	CASE
		WHEN mm.join_date > s.order_date THEN 'N'
		WHEN mm.join_date <= s.order_date THEN 'Y'
		ELSE 'N'
		END AS member

FROM 
	sales AS s
LEFT JOIN menu AS m
 ON s.product_id = m.product_id
LEFT JOIN members AS mm
 ON s.customer_id = mm.customer_id;








-- 12.) BONUS QUESTION 2: Rank All The Things
WITH CTE_Rank_All_the_things AS
(
SELECT
	sales.customer_id,
	sales.order_date,
	menu.product_name,
	menu.price,
	CASE WHEN sales.order_date >= members.join_date THEN 'Y'
		 ELSE 'N'
		 END AS member
FROM 
	sales
JOIN menu ON sales.product_id = menu.product_id
LEFT JOIN members ON members.customer_id = sales.customer_id
)

SELECT
	*,
	CASE WHEN member = 'N' THEN null
		 ELSE DENSE_RANK() OVER (PARTITION BY customer_id, member ORDER BY order_date)
		 END AS rankings

FROM
	CTE_Rank_All_the_things