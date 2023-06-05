# Schema creation 

create database ecommerce_project;
use ecommerce_project;

create table city_code(zipcode int primary key,city varchar(50));
alter table customer add constraint fk_zip foreign key (zipcode) references city_code (zipcode);

create table customer (customer_id int primary key,
first_name varchar(50) default null,last_name varchar(50) default null,
email varchar(255),address varchar(100),state varchar(50),zipcode varchar(10),
foreign key (zipcode) references city_code (zipcodecode));

create table order_detail(order_id int primary key,cust_id int,
order_date date,order_cost decimal(6,2),order_status enum('confirm','cancel'), foreign key (cust_id) references customer(customer_id));

create table product 
(product_id int primary key,product_name varchar(80),prod_description varchar(200),price decimal(4,2),quantity int);

CREATE TABLE order_item(
     order_id int NOT NULL,
     product_id int NOT NULL,
     quantity int,
     unitprice decimal(4,2),
     PRIMARY KEY (order_id,product_id),

     CONSTRAINT FK_orderentity
        FOREIGN KEY (order_id) REFERENCES order_detail (order_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
     CONSTRAINT FK_productentity 
        FOREIGN KEY (product_id) REFERENCES product (product_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
) ;

create table shipment(
shipment_id varchar(50) primary key,order_id int,
ship_date date,courier_name varchar(100),ship_address varchar(200)
, foreign key (order_id) references order_detail (order_id));




