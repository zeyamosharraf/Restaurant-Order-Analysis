#OBJECTIVE 2
# Explore the orders table
# Your second objective is to better understand the orders table by finding the date range, the number of items within each order, and the orders with the highest number of items.
# Q_1 View the order_details table. What is the date range of the table?
select * from restaurant_db.order_details ;

select min(order_date), max(order_date) from restaurant_db.order_details ;

# Q_2 How many orders were made within this date range? 
select count( distinct order_id) as total_orders from restaurant_db.order_details;

# Q_3 How many items were ordered within this date range?
select count(*) from restaurant_db.order_details;

# Q_4 Which orders had the most number of items?
select order_id, count(item_id) as total_item from restaurant_db.order_details
group by order_id
order by total_item desc;

# Q_5 How many orders had more than 12 items?
select order_id, count(item_id) as total_item from restaurant_db.order_details
group by order_id
having total_item > 12
order by total_item desc;