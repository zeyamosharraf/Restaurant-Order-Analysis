# OBJECTIVE 1
# Explore the items table
# Your first objective is to better understand the items table by finding the number of rows in the table, the least and most expensive items, and the item prices within each category.

# Q_1 View the menu_items table and write a query to find the number of items on the menu
SELECT count(item_name) as total_item FROM restaurant_db.menu_items;

# Q_2 What are the least and most expensive items on the menu?
SELECT item_name, sum(price) as total_price FROM restaurant_db.menu_items
group by item_name
order by total_price desc;

# Q_3 How many Italian dishes are on the menu? 
select count(item_name) as total_item from restaurant_db.menu_items
where category = 'Italian';

# Q_4 What are the least and most expensive Italian dishes on the menu?
select item_name, sum(price) as total_price  from restaurant_db.menu_items
where category = 'Italian'
group by item_name
order by total_price desc;

# Q_5 How many dishes are in each category? 

select category, count(item_name) as total_item  from restaurant_db.menu_items
group by category
order by total_item desc;

# Q_6 What is the average dish price within each category?
select category, count(item_name) as total_item  from restaurant_db.menu_items
group by category
order by total_item desc;