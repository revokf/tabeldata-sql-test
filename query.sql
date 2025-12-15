--  1. Daftar pembelian customer, total harga, dan waktu.
SELECT 
	o.id AS order_id,
	c.name AS customer_name,
	p.name AS product_name,
	oi.quantity,
	oi.price AS unit_price,
	(oi.quantity * oi.price) AS total_price,
	o.order_date
	
FROM orders o
JOIN customer c ON o.customer_id = c.id
JOIN order_items oi ON oi.orders_id = o.id
JOIN product p ON oi.product_id = p.id
ORDER BY o.id, c.name;



-- 2. Total nilai pembelian per customer per bulan
SELECT
DATE_TRUNC('month',o.order_date) as month,
c.name AS customer_name,
SUM(oi.quantity * oi.price) AS total_price

FROM orders o 
JOIN customer c on o.customer_id = c.id
JOIN order_items oi on oi.orders_id = o.id

GROUP BY c.name, DATE_TRUNC('month',o.order_date)
ORDER BY DATE_TRUNC('month',o.order_date);



-- 3. Data produk dengan 3 penjualan terbesar per bulan

-- September
	SELECT
		DATE_TRUNC('month',o.order_date) as month,
		p.name AS product,
	SUM(oi.quantity * oi.price) AS total_price
	
	FROM orders o 
	JOIN order_items oi on oi.orders_id = o.id
	JOIN product p ON oi.product_id = p.id

	WHERE DATE_TRUNC('month', o.order_date) = '2025-9-01'
	
	GROUP BY p.name, DATE_TRUNC('month',o.order_date)
	ORDER BY total_price DESC
	LIMIT 3;

-- October
	SELECT
		DATE_TRUNC('month',o.order_date) as month,
		p.name AS product,
	SUM(oi.quantity * oi.price) AS total_price
	
	FROM orders o 
	JOIN order_items oi on oi.orders_id = o.id
	JOIN product p ON oi.product_id = p.id

	WHERE DATE_TRUNC('month', o.order_date) = '2025-10-01'
	
	GROUP BY p.name, DATE_TRUNC('month',o.order_date)
	ORDER BY total_price DESC
	LIMIT 3;

-- November
	SELECT
		DATE_TRUNC('month',o.order_date) as month,
		p.name AS product,
	SUM(oi.quantity * oi.price) AS total_price
	
	FROM orders o 
	JOIN order_items oi on oi.orders_id = o.id
	JOIN product p ON oi.product_id = p.id

	WHERE DATE_TRUNC('month', o.order_date) = '2025-11-01'
	
	GROUP BY p.name, DATE_TRUNC('month',o.order_date)
	ORDER BY total_price DESC
	LIMIT 3;