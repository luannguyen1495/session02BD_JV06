-- sơn 
CREATE DATABASE session02;
USE session02;
CREATE TABLE category(
	id int,
    name varchar(50),
    status bit(1)
);

INSERT INTO category(id,name,status) VALUES (1,'ÁO',1);
INSERT INTO category(id,status) VALUES (1,1);
DROP TABLE category;
-- rang buoc not null 
CREATE TABLE category(
	id int,
    name varchar(50) NOT NULL,
    status bit(1)
);
-- ràng buôc DEFAULT

CREATE TABLE category(
	id int,
    name varchar(50) NOT NULL,
    status bit(1) DEFAULT(1)
);
INSERT INTO category(id,name,status) VALUES (1,'ÁO',0);

-- ràng buộc UNIQUE 
CREATE TABLE category(
	id int,
    name varchar(50) NOT NULL UNIQUE,
    status bit(1) DEFAULT(1)
);
-- ràng buộc khóa chính 
CREATE TABLE category(
	id int primary key auto_increment,
    name varchar(50) NOT NULL UNIQUE,
    status bit(1) DEFAULT(1)
);
INSERT INTO category(name,status) VALUES ('Quần ok',0);

 DROP TABLE product;
-- tạo bảng product 
CREATE TABLE product(
	id int primary key auto_increment,
    product_name varchar(50) NOT NULL UNIQUE,
    price float NOT NULL,
    image varchar(255),
    category_id int NOT NULL,
    foreign key (category_id) references category(id)
);
INSERT INTO product(product_name,price,image,category_id)
VALUES ('Áo sơ mi',10,'anh.jpg',1);

-- RÀNG BUỘC CHECK 
CREATE TABLE product(
	id int primary key auto_increment,
    product_name varchar(50) NOT NULL UNIQUE,
    price float NOT NULL check(price >0),
    image varchar(255),
    category_id int NOT NULL,
    foreign key (category_id) references category(id)
);
-- CHỈNH SỬA BẢNG 
-- Thêm cột 
ALTER TABLE product ADD column dess_test_2 text first;
-- xóa cột 
ALTER TABLE product DROP column dess_test_2;

-- chỉnh sửa kiểu dữ liệu 
alter table product modify dess_test int;

-- thêm mới ràng buộc 
alter table product add check(dess_test > 100);

-- thu moi biet 

DELETE FROM category WHERE id = 1;
