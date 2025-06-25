---1. DATA INSERTION
INSERT INTO public.categories (category_name) VALUES
('Electronics Accessories');


INSERT INTO public.customers (first_name, last_name, email, phone, address, city, state) VALUES
('Sanaya', 'Mehta', 'sanaya.mehta@example.com', NULL, '456, Gole Market', 'Lucknow', 'Uttar Pradesh');
INSERT INTO public.products (product_name, description, price, stock_quantity, category_id) VALUES
('Wireless Headphones', 'Premium noise-cancelling headphones', 5999.00, 200, (SELECT category_id FROM public.categories WHERE category_name = 'Electronics Accessories')),
('USB-C Hub', 'Multi-port adapter for modern laptops', 1499.00, 300, (SELECT category_id FROM public.categories WHERE category_name = 'Electronics Accessories'));

INSERT INTO public.orders (customer_id, order_date, total_amount, status) VALUES
((SELECT customer_id FROM public.customers WHERE email = 'sanaya.mehta@example.com'), '2024-06-25 10:00:00', 7498.00, 'Processing');



INSERT INTO public.order_items (order_id, product_id, quantity, unit_price) VALUES
((SELECT order_id FROM public.orders WHERE customer_id = (SELECT customer_id FROM public.customers WHERE email = 'sanaya.mehta@example.com') ORDER BY order_date DESC LIMIT 1),
 (SELECT product_id FROM public.products WHERE product_name = 'Wireless Headphones'), 1, 5999.00),
((SELECT order_id FROM public.orders WHERE customer_id = (SELECT customer_id FROM public.customers WHERE email = 'sanaya.mehta@example.com') ORDER BY order_date DESC LIMIT 1),
 (SELECT product_id FROM public.products WHERE product_name = 'USB-C Hub'), 1, 1499.00);




----DATA UPDATION
UPDATE public.customers
SET
    phone = '9876543210',
    address = '123, New Link Road, Andheri'
WHERE
    email = 'aditi.singh@example.com';


UPDATE public.products
SET
    price = 42000.00,
    stock_quantity = 120
WHERE
    product_name = 'Smartphone X';


UPDATE public.orders
SET
    status = 'Shipped',
    total_amount = 85500.00 -- Minor adjustment for demo
WHERE
    order_id = (SELECT order_id FROM public.orders WHERE customer_id = (SELECT customer_id FROM public.customers WHERE email = 'aditi.singh@example.com') ORDER BY order_date LIMIT 1);





---DATA DELETION (DELETE with WHERE)

DELETE FROM public.products
WHERE product_name = 'Yoga Mat';



DELETE FROM public.order_items
WHERE
    order_id = (SELECT order_id FROM public.orders WHERE customer_id = (SELECT customer_id FROM public.customers WHERE email = 'sanaya.mehta@example.com') ORDER BY order_date DESC LIMIT 1)
AND
    product_id = (SELECT product_id FROM public.products WHERE product_name = 'USB-C Hub');



DELETE FROM public.orders
WHERE customer_id = (SELECT customer_id FROM public.customers WHERE email = 'rohan.patel@example.com');


DELETE FROM public.customers
WHERE email = 'aditi.singh@example.com';

DELETE FROM public.customers
WHERE email = 'meera.das@example.com';

