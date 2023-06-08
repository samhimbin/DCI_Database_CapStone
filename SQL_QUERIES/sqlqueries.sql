#1. Insert sample data into each table
INSERT INTO `city_code` (`zipcode`,`city`)
VALUES (70278,"pinebrook");
INSERT INTO customer (`customer_id`,`first_name`,`last_name`,`email`,`address`,`state`,`zipcode`)
VALUES (801,"Randy","mat","matrandy@google.com","674 Feuar Rd.","Newjersey",10249);
INSERT INTO order_detail (`order_id`,`cust_id`,`order_date`,`order_cost`,`order_status`) VALUES (10350,904,'2023-01-12',891.19,'confirm');
INSERT INTO order_item (`order_id`,`product_id`,`quantity`,`unitprice`) VALUES (10325,22,4,2.18);
 INSERT INTO product (`product_id`,`product_name`,`prod_description`,`price`,`quantity`)
VALUES (51,"proair","inhaler.","8.60",1);
INSERT INTO shipment (`shipment_id`,`order_id`,`ship_date`,`courier_name`,`ship_address`) 
VALUES ('ATY28RPB3CD',10273,'2023-05-30','blueray','102 REDROAD, CT');

#2. Get all the customers and their Order items for each order. The result must
#contain customer_id, order_id, product_id
select od.cust_id, od.order_id, oi.product_id from order_detail od join order_item oi on od.order_id=oi.order_id;

#3. Get the customers and their order information. The result must include
#customers who haven’t placed any order.
select * from order_detail o right join customer c on o.cust_id=c.customer_id;

#4. Get the customer_id who has placed the most number of orders
select cust_id, count(cust_id) from order_detail group by cust_id order by count(cust_id) desc limit 1;

#5. Get the order information for the orders that have been shipped
 select * from order_detail where order_id in(select order_id from shipment);

#6. Get the order information for the orders that have not been shipped
 select * from order_detail where order_id not in(select order_id from shipment);
 
#7. Retrieve the number of orders placed by each customer, sorted from highest
#to lowest
select cust_id, count(order_id) from order_detail group by cust_id order by count(order_id) desc;

#8. Retrieve all the orders that have not been shipped
select * from order_detail where order_status='cancel';

#9. Get the total number of orders placed by a customer named “Kevin Conlan”
select count(order_id) from order_detail o join customer c on c.customer_id=o.cust_id 
where c.first_name="Kevin" and c.last_name="Conlan";

#10. Retrieve the total amount of each order that exceeds 100$ in total value
select order_cost from order_detail where order_cost>100;

#11. Retrieve all the customers whose name begins with the letter “D”
select first_name from customer where first_name like 'D%';

#12. Get all the orders placed between November 2022 and March 2023
select order_id from order_detail where order_date  between '2022-11-01' and '2023-03-30';

#13. Display the top 10 customers with most number of orders
select cust_id as customer_id, count(order_id) as number_of_orders 
from order_detail group by cust_id order by count(order_id) desc limit 10;

#14. Create a stored procedure named order_payment which displays the
#customer name, payment details, order id for each order
create procedure order_payment()
Begin
select  c.first_name,c.last_name,o.order_id,o.order_cost from customer c 
join order_details o on c.customer_id=o.cust_id
END //

DELIMITER ;

#15. Create a View named products_under_5 which displays all the products < 5$
create view products_under_5 As
 select * from product where price<5;


