# DCI_Database_CapStone

## Introduction
The business here is an ecommerce website where product and customer information is stored and dummy orders are created to understand database concepts.

The database has to store Customer Information, Product details they have in the inventory, Order details & Shipping information.

The goal of this project is to create a simple e-commerce database that will allow customers to browse products, place orders and track shipping.

After the analysis, entities that are identified based on the requirements are 
CUSTOMER, ORDER, PRODUCT, SHIPMENT.
## Tools & Technologies
Mysql -MySQL is an open-source relational database management system

Microsoft Office - a suite of applications designed to help with create and edit documents containing text and images, work with data in spreadsheets and databases, and create presentations and posters.

Smartdraw - web-based diagramming tool used by teams to collaborate on and make flowcharts, organization charts, mind maps, project charts, and other business apllication.

Github -the distributed version control for task management, continuous integration

Github desktop- an application that enables you to interact with GitHub using a GUI instead of the command line or a web browser.

webex - collaborating tool to schedule meetings and discussions.

Google meet - collaborating tool to meetings and discussions.
https://github.com/samhimbin/DCI_Database_CapStone/blob/main/Tools_used_DBproject.png

## Design
Coceptual design: Identifying the objects (or entities) that constitute it and the relationships (operations or associations) between one object and another.It is high level datbase design.

https://github.com/samhimbin/DCI_Database_CapStone/commit/c9f9be383b0f1706ae34fa91c144103b67cc4633

Logical design: The process that helps you to implement a database that satisfies the requirements of your business organization.

https://github.com/samhimbin/DCI_Database_CapStone/blob/main/crow_s%20foot%20noation%20logical.png

The most crucial aspect in designing a relational database is to identify the relationships among tables. The types of relationship include:
	one-to-one
	one-to-many
	many-to-many

## Team Members

Himabindu Samayam

Naga Sharada Chamarty

## Usage & Implentation
The usage of our database is shown below by the examples of how our project can be used. Additional screenshots are attched.

For more examples, please refer to the Documentation

Q: Get the customers and their order information. The result must include customers who haven’t placed any order.

select cust_id as customer_id, count(order_id) as number_of_orders 
from order_detail group by cust_id order by count(order_id) desc limit 10;

Q: Display the top 10 customers with most number of orders

select count(cust_id) from order_detail group by cust_id order by count(cust_id) desc limit 10;
