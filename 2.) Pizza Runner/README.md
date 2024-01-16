
# CASE STUDY #2 - Pizza Runner


### SOLVED BY: [GINO FREUD D. HOBAYAN](https://gino-freud-hobayan.github.io/) 

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

-- 


```

<br><br>





### TABLE: runner_orders

```sql

-- 


```

<br><br>





<br><br><br>




# DATA QUERY LANGUAGE:



## A.) Pizza Metrics

```sql

-- 1. How many pizzas were ordered?


```

<br><br>






```sql

-- 2. How many unique customer orders were made?



```

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
