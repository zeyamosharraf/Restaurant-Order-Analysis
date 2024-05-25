# Restaurant Order Analysis

# Situation
You've just hired as a Data Analyst for the Taste of the World Cafe, a restaurant that has diverse menu offerings and serves generous portions

# Assignment:- 
The taste of the world cafe debuted a new menu at the start of the year. You've been asked to dig into the customer data to see which menu items are doing well/not well and what the top customer seem to like best.

# Objective:- 
1. explore the menu_items to get an idea of what's on the menu
2. Explore the order_details table to get an idea of the data that's been collected. 
3. Use both tables to understand how customers are reacting to hte new menu


# Project Details:

**1. Understanding Menu Items:**

**Task:** Explore the **'menu_items'** table.
Analysis:
1. Counted total menu items: 32.
2. Identified the least and most expensive items: Edamame ($5.00) and Shrimp Scampi ($19.95).
3. Analyzed the number of items in each category and found:- Mexican: 9 items, Italian: 9 items, Asian: 8 items, American: 6 items
5. Calculated the average price for each category:- Italian: $16.75, Asian: $13.48, Mexican: $11.80, American: $10.07


**2. Understanding Order Details:**

**Task:** Explore the order_details table.
Analysis:
1. Determined date range of data: January 1, 2023, to March 31, 2023.
2. Total orders within this range: 5370.
3. Total items ordered within this range: 12234.
4. Identified orders with the most items and orders with more than 12 items.

**3. Combining Data to Assess Menu Performance:**

**Task:** Merge menu_items and order_details tables.
Analysis:
1. Least and most ordered items:
2. Most ordered: Hamburger (622 orders) from American category.
3. Least ordered: Chicken Tacos (123 orders) from Mexican category.
4. Top 5 highest spend orders and their total prices: Order 440: $192.15, Order 2075: $191.05, Order 1957: $190.10, Order 330: $189.70, Order 2675: $185.10
5. Details of the highest spend order (Order 440): Categories included: Italian (8 items), Mexican (2 items), American (2 items), Asian (2 items).
6. Breakdown of categories in the top 5 highest spend orders:- Italian: 26 items, Asian: 17 items, Mexican: 16 items, American: 10 items

**Key Insights:**
Italian dishes are generally the most expensive.
American dishes like Hamburger and Cheeseburger are the most popular among customers.
High-spend orders tend to include a diverse mix of categories, with a notable preference for Italian cuisine.
