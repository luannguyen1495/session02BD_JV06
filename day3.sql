SELECT * FROM quan_ly_ban_hang.product;
SELECT * FROM product WHERE price >= 10000000 AND price <= 40000000;
SELECT * FROM product WHERE price between 10000000 AND 40000000;

SELECT * FROM product WHERE id NOT IN (1,3,5);

SELECT * FROM product;

SELECT * FROM category;

-- inner join
SELECT p.*,c.name as category_name
FROM product as  p
JOIN category as c
ON p.category_id = c.id;

-- LEFT JOIN 
SELECT p.*,c.name as category_name
FROM product as  p
LEFT JOIN category as c
ON p.category_id = c.id;
-- RIGHT 
SELECT p.*,c.name as category_name
FROM product as  p
RIGHT JOIN category as c
ON p.category_id = c.id;

-- Self Join

CREATE TABLE categories(
	id int primary key auto_increment,
    name varchar(50),
    parent_id int default 0
);


select orders.id , orders.created,orders.status,customer.name
FROM orders
JOIN  customer
ON orders.customer_id = customer.id;

select o.orders_id,p.name,o.quantity,o.price,(o.price*o.quantity)as total_price
from order_detail o
join product p
on o.product_id=p.id WHERE orders_id = 1;

-- lấy tất cả bản ghi product (id,name,price,category_name)
SELECT product.id,product.name,product.price,category.name as category_name
FROM product
JOIN category
ON category.id = product.category_id order by price;

SELECT * FROM product;
-- đếm số sản phẩm 
SELECT COUNT(*) FROM product;

-- đếm tổng tiền của sản phẩm 
SELECT SUM(price) FROM product;

-- lấy ra danh sách danh mục gồm, id,name,total_product

SELECT c.id,c.name,c.status,COUNT(*) as total_product
FROM category as c
JOIN product  as p
ON c.id = p.category_id
GROUP BY c.id,c.name,c.status;



