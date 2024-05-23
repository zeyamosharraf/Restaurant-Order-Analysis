# OBJECTIVE 3
# Analyze customer behavior
# Your final objective is to combine the items and orders tables, find the least and most ordered categories, and dive into the details of the highest spend orders.

# Q_1 Combine the menu_items and order_details tables into a single table

select * from restaurant_db.menu_items m
Left JOIN restaurant_db.order_details o ON m.menu_item_id = o.item_id;

# Q_2 What were the least and most ordered items? What categories were they in?

select m.category,  m.item_name, count(o.order_id) as total_orders from restaurant_db.menu_items m
Left JOIN restaurant_db.order_details o ON m.menu_item_id = o.item_id
group by m.category, m.item_name
order by m.category, total_orders desc;


# Q_3 What were the top 5 orders that spent the most money?

select o.order_id, sum(m.price) as total_price from restaurant_db.menu_items m
Left JOIN restaurant_db.order_details o ON m.menu_item_id = o.item_id
group by o.order_id 
order by total_price desc
limit 5;

# Q_4 View the details of the highest spend order. Which specific items were purchased?

select m.category, count(o.order_id) as total_order from restaurant_db.menu_items m
Left JOIN restaurant_db.order_details o ON m.menu_item_id = o.item_id
where o.order_id = 440
group by m.category
order by total_order desc;

# Q_5 View the details of the top 5 highest spend orders

select m.category, count(o.order_id) as total_order from restaurant_db.menu_items m
Left JOIN restaurant_db.order_details o ON m.menu_item_id = o.item_id
where o.order_id in (440, 2075, 1957, 330, 2675)
group by m.category
order by total_order desc;

