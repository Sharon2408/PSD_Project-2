Customers
customer_id (PK)
first_name
last_name
email
password (hashed)
address
city
state
zip_code
phone_number
Products
product_id (PK)
name
description
category
price
stock
Orders
order_id (PK)
customer_id (FK)
order_date
order_status
OrderDetails
order_detail_id (PK)
order_id (FK)
product_id (FK)
quantity
price
Reviews
review_id (PK)
customer_id (FK)
product_id (FK)
rating
comment


