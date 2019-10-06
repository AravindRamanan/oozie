use ramanana;
create external table orders (
  order_id int,
  order_date string,
  order_customer_id int,
  order_status string
) row format delimited fields terminated by ','
location '/user/ramanana/daily_revenue/orders';
create external table order_items (
  order_item_id int,
  order_item_order_id int,
  order_item_product_id int,
  order_item_quantity int,
  order_item_subtotal float,
  order_item_price float 
) row format delimited fields terminated by ','
location '/user/ramanana/daily_revenue/order_items';