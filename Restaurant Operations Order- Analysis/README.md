<h1> 🍽️ Restaurant Order Analysis  </h1>

<b> 📌 Project Overview </b>

This project explores and analyzes order data from a fictitious restaurant serving international cuisine. 
As a Data Analyst, the goal is to uncover insights into menu performance, customer preferences, and overall business trends.

Using SQL in PostgreSQL, this analysis focuses on identifying:

    - The most and least popular menu items
    - Top-performing cuisine types
    - Customer ordering behavior
    - Spending patterns and revenue drivers

<p>  

</p>

<b> 🎯 Objectives </b>

    - Analyze menu item performance (best-selling vs least-selling)
    - Identify popular cuisine categories
    - Understand customer preferences and ordering habits
    - Evaluate pricing impact on sales
    - Discover high-value customers and their behavior

<p>

  
</p>

<b>🛠️ Tools & Technologies</b>
    
      - Database: PostgreSQL
      - Language: SQL


<p>

  
</p>
<b>Concepts Used:</b>

<p> The project demonstrates practical SQL skills such as:</p>

      - Joins
      - Aggregations (SUM, COUNT, AVG)
      - Grouping & Filtering
      - Subqueries 
      - analytical reasoning using relational datasets.


<p>
  
</p> 
<b>📂 Dataset Description: </b>

The dataset includes the following key tables:
The dataset consists of two tables:

    	- menu_items
    	- order_details


<p>
  
</p>
<h3>1. menu_items table: </h3>

<table border ="0">
  <tr> 
    <th> Column	</th> 
    <th> Description </th> 
  </tr>
  
  <tr> 
    <td>  item_id	     </td>
    <td>  Unique ID for each menu item </td>
  </tr>

  <tr> 
    <td> item_name </td>
    <td> Name of the dish </td>
  </tr>
  
  
  <tr> 
    <td>category </td>
    <td> Cuisine category (e.g., Italian, Asian) </td>
  </tr>
  
  <tr> 
    <td> price</td>
    <td> Price of the item </td>
  </tr>
  
</table>  


<h3>2. orders table: </h3>

<table border ="0">
  <tr> 
    <th> Column	</th> 
    <th> Description </th> 
  </tr>

   <tr> 
    <td> order_id</td>
    <td> Unique order ID </td>
  </tr>
  
   <tr> 
    <td> order_date</td>
    <td> Date of the order </td>
  </tr>
  
   <tr> 
    <td> customer_id </td>
    <td> Unique customer ID </td>
  </tr>
</table> 

	
<h3>3. order_details table: </h3>

<table border ="0">
  <tr> 
    <th> Column	</th> 
    <th> Description </th> 
  </tr>

   <tr> 
    <td> order_details_id </td>
    <td> Unique ID for each order line </td>
  </tr>
  
   <tr> 
    <td> order_id </td>
    <td> Linked order ID </td>
  </tr>
  
   <tr> 
    <td> item_id </td>
    <td> Ordered menu item </td>
  </tr>
</table> 	
	





    
	
<p>

    
<h3> 🔍 Key Analysis & Queries </h3>
</p>




<b> 📊 1. Menu Exploration </b>

    - Total number of items on the menu
    - Price range (min, max, average)
    - Distribution across cuisines

    
<b> 🍝 2. Item Popularity </b> 

    - Most ordered items
    - Least ordered items
    - Items generating highest revenue

    
<b> 🌍 3. Cuisine Performance </b> 

    - Most popular cuisine types
    - Revenue by cuisine category


<b> 👥 4. Customer Behavior </b>

    - Top customers by total spending
    - Most frequent customers
    - Average order value

<b> 💰 5. Sales Insights </b> 

    - Total revenue generated
    - Daily/Monthly order trends
    - High-performing days

<b> 📈 Example Insights </b> 

    - Certain cuisines (e.g., Italian or Asian) may dominate sales
    - A small number of items often generate a large portion of revenue
    - High-value customers contribute significantly to total sales
    - Some menu items may be underperforming and candidates for removal


<b> 🚀 How to Use</b> 

    - Import the dataset into PostgreSQL
    - Run the SQL queries provided in the /queries folder
    - Explore results and modify queries for deeper insights


<b> 📌 Future Improvements</b>

    - Add data visualization (Tableau / Power BI)
    - Include time-based trend analysis
    - Perform customer segmentation
    - Optimize menu pricing strategies
