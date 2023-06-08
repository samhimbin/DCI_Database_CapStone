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

https://github.com/samhimbin/DCI_Database_CapStone/blob/main/Schema_Relationships.docx

Normalization:
Normalization is a technique by which one can modify the relational schema to reduce the redundancy. Each normalization phase adds more relations (tables) into the database.

 • First Normal Form (1NF): A table is in 1NF if every cell contains a single value, not a list of values.1NF also prohibits repeating group of columns such as item1, item2,.., itemN. Instead, you should create another table using one-to-many relationship .  
 All the entities (CUSTOMER, ORDER, PRODUCT, SHIPMENT) have satisfied 1NF.
 
 • Second Normal Form (2NF): Tables are in 2NF, they confirm to 1NF and every column that is not a primary key of the table is dependent on the whole of the primary key.
 All the entities(CUSTOMER, ORDER, PRODUCT, SHIPMENT) satisfies 2NF.
 
 • Third Normal Form (3NF): Tables are in 3NF, if they confirm to 2NF and the non-primary key columns are fully dependent on primary key and nothing else. That is unrelated data is being removed.
 
 Customer entity with attributes  – customer_id, first_name, last_name, email, address, state, zipcode. In this, zipcode (non-primary key attribute) is transitively dependent on primary key (customer_id). So, for customer table to be in 3NF, we split the customer table and derive a new table by name city_code table having attributes – city, zip.
 
 https://github.com/samhimbin/DCI_Database_CapStone/blob/main/3NF_document.docx
 
 Thus, all entities are in 3NF.

## Usage & Implentation
The usage of our database is shown below by the examples of how our project can be used. Additional screenshots are attached.

For more examples, please refer to the Queries Documentation
https://github.com/samhimbin/DCI_Database_CapStone/tree/main/SQL_QUERIES

Q: Display the top 10 customers with most number of orders

select cust_id as customer_id, count(order_id) as number_of_orders 
from order_detail group by cust_id order by count(order_id) desc limit 10;

https://github.com/samhimbin/DCI_Database_CapStone/blob/main/query_output_screen.png

Q: Get the customers and their order information. The result must include customers who haven’t placed any order.

select * from order_detail o right join customer c on o.cust_id=c.customer_id;
https://github.com/samhimbin/DCI_Database_CapStone/blob/main/query_output_screen2.png

## Team Members

Himabindu Samayam

Naga Sharada Chamarty
