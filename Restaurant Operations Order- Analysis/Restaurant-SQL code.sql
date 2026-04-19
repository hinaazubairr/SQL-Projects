<p> <b>👩‍💻 Author </b>

Hina Zubair
<p> Aspiring Data Analyst
	- SQL | Data Analysis | Visualization | Business Intelligence | PowerBI | Tableau | Python | R
	- Passionate about turning data into insights

📌 Links:
<p>LinkedIn: https://www.linkedin.com/in/hinaazubairrms/</p>
<p>GitHub: https://github.com/hinaazubairr</p>

	
--1st objective--Explore menu_items table
--View the menu_items table 
SELECT * FROM menu_items;


--write a query to find the number of items on the menu
SELECT COUNT(*)
FROM menu_items;

--What are the least and most expensive items on the menu?
SELECT *
FROM menu_items
ORDER BY price;

SELECT *
FROM menu_items
ORDER BY price DESC;

--How many Italian dishes are on the menu? 
SELECT COUNT(*)
FROM menu_items
WHERE category = 'Italian';


--What are the least and most expensive Italian dishes on the menu?
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price; --least


SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC; --most expensive



--How many dishes are in each category? 
SELECT COUNT(*), category
FROM menu_items
GROUP BY category;
--OR
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;


--What is the average dish price within each category?
SELECT category, AVG(price) AS AVG_PRICE
FROM menu_items
GROUP BY category;





--2nd objective--Explore Order_details table
-- ○ View the order_details table. 
SELECT *
FROM Order_details;
-- COLUMNS in Order_details table are: 
		-- order_details_id
		-- order_id
		-- order_date
		-- order_time
		-- item_id
		
-- What is the date range of the table?
SELECT MIN(order_date), MAX(order_date)
FROM Order_details;

-- ○ How many orders were made within this date range? 
SELECT MIN(order_date), MAX(order_date), COUNT( DISTINCT order_id) AS num_of_orders
FROM Order_details;

-- How many items were ordered within this date range?
SELECT MIN(order_date), MAX(order_date), COUNT( *)
FROM Order_details;

-- ○ Which orders had the most number of items?
SELECT order_id, count(item_id) as num_items
FROM Order_details
GROUP BY (order_id) 
order by num_items desc;


-- How many orders had more than 12 items?
SELECT COUNT(*) FROM

(SELECT order_id, COUNT(item_id) AS num_items 
FROM order_details
GROUP BY order_id 
HAVING num_items > 12) AS num_orders;





--3rd Objective: 	Order & Menu Integration:
--Use both tables to check how customers react to new menu. 

--Combine the menu_items and order_details tables into a single table
SELECT * FROM menu_items;
SELECT * FROM order_details;
	
--JOIN BOTH TABLES
SELECT * 
FROM order_details AS od LEFT JOIN menu_items as MI
	ON od.item_id = mi.menu_item_id;


-- What were the least and most ordered items? 
SELECT item_name, COUNT(order_details_id) as num_purchases 
FROM order_details AS od LEFT JOIN menu_items as MI
	ON od.item_id = mi.menu_item_id
GROUP BY item_name 
ORDER BY num_purchases; --least

SELECT item_name, COUNT(order_details_id) as num_purchases 
FROM order_details AS od LEFT JOIN menu_items as MI
	ON od.item_id = mi.menu_item_id
GROUP BY item_name 
ORDER BY num_purchases DESC; --most


--What categories were they in?
SELECT item_name, category, COUNT(order_details_id) as num_purchases 
FROM order_details AS od LEFT JOIN menu_items as MI
	ON od.item_id = mi.menu_item_id
GROUP BY item_name, category 
ORDER BY num_purchases DESC; --most


--What were the top 5 orders that spent the most money?
SELECT order_id, sum(price) as total_spend
FROM order_details AS od LEFT JOIN menu_items as MI
	ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;


-- View the details of the highest spend order. 
SELECT *
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id= mi.menu_item_id
WHERE order_id =440;



-- Which specific items were purchased?
SELECT category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id= mi.menu_item_id
WHERE order_id =440
GROUP BY category;


--View the details of the top 5 highest spend orders
SELECT category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id= mi.menu_item_id
WHERE order_id IN (440,2075,1957,330,2675)
GROUP BY category;



SELECT order_id, category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id= mi.menu_item_id
WHERE order_id IN (440,2075,1957,330,2675)
GROUP BY order_id, category;
