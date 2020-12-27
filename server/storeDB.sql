/*
 * @Description: 建库建表语句
 */
create database storeDB;
use storeDB;
create table users(
  user_id int primary key auto_increment,
  userName char (40) not null unique,
  password char (40) not null,
  userPhoneNumber char(11) null
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE users MODIFY COLUMN userName char (40) not null unique;
ALTER TABLE users MODIFY COLUMN password char (40)  not null;
insert into users
values(null, 'admin', '123456', '');
create table carousel(
  carousel_id int primary key auto_increment,
  imgPath char (50) not null,
  describes char (50) not null
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
insert into carousel
values(null, 'public/imgs/cms_1.jpg', '123456');
 insert into carousel
 values(null, 'public/imgs/cms_2.jpg', '123456');
 insert into carousel
values(null, 'public/imgs/cms_3.jpg', '123456');
 insert into carousel
values(null, 'public/imgs/cms_4.jpg', '123456');
create table category(
  category_id int primary key auto_increment,
  category_name char(20) not null
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
create table product(
  product_id int primary key auto_increment,
  product_name char (100) not null,
  category_id int not null,
  product_title char (30) not null,
  product_intro text not null,
  product_picture char (200),
  product_price double not null,
  product_selling_price double not null,
  product_num int not null,
  product_sales int not null
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
create table product_picture(
  id int primary key auto_increment,
  product_id int not null,
  product_picture char (200),
  intro text null
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
create table shoppingCart(
  id int primary key auto_increment,
  user_id int not null,
  product_id int not null,
  num int not null
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
create table orders(
  id int primary key auto_increment,
  order_id bigint not null,
  user_id int not null,
  product_id int not null,
  product_num int not null,
  product_price double not null,
  order_time bigint not null
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
create table collect(
  id int primary key auto_increment,
  user_id int not null,
  product_id int not null,
  collect_time bigint not null
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
