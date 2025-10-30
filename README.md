# sales
#  Write Complex SQL Queries for Reporting
Objective

To generate sales reports using complex SQL queries such as daily totals, average transaction value, top-selling products, and city-wise sales summaries.
The goal is to simulate a real-world data reporting scenario where SQL is used to extract meaningful business insights from raw sales data.

 # What I Built

I created a complete Sales Reporting System using MySQL Workbench that includes:


A relational database schema for customers, products, orders, and order details.


SQL queries to calculate:


Daily Sales Totals


Average Transaction Value


Top 3 Products by Revenue


City-wise Total Sales




 screenshots of all outputs.
  <img width="1363" height="721" alt="sales_screenshot" src="https://github.com/user-attachments/assets/2d1da21b-2dd2-459e-92e8-1fb417baff76" />

  <img width="1364" height="728" alt="sales2" src="https://github.com/user-attachments/assets/c56ff24b-1333-43f4-972c-35821039c446" />

  <img width="1366" height="770" alt="total_revenue" src="https://github.com/user-attachments/assets/f136eadd-fdad-4e4f-bc6b-e83f5476ac3c" />

  <img width="1366" height="720" alt="city" src="https://github.com/user-attachments/assets/68790c99-0830-4682-ae58-907c71402e30" />



 # Why I Built It
This task demonstrates my ability to:


Design a normalized relational database structure.


Write and execute complex SQL queries using JOIN, GROUP BY, ORDER BY, and aggregate functions.


Perform business-level reporting using real-world data concepts.


Gain hands-on experience with data analytics using SQL.



# How I Built It
 - Step 1: Tools Used


MySQL Workbench → for database design and query execution.


SQL language → for data manipulation and report generation.


- Step 2: Database Design
Created a schema named SalesReportDB with the following tables:


customers — stores customer details


products — stores product catalog


orders — stores order headers


order_details — stores order line items


Each table is linked using foreign keys, ensuring referential integrity.

- Step 3: Data Insertion
Inserted sample data for:


4 customers (from different cities)


5 products (across categories)


5 orders and related order details


This simulated real-world sales transactions.

- Step 4: Query Development
Wrote SQL queries using:


JOIN → to combine multiple tables


GROUP BY → to aggregate results by date, city, or product


ORDER BY → to rank data (e.g., top-selling products)


Aggregate functions → SUM(), AVG() for totals and averages


LIMIT → to restrict results for top products


- Step 5: Reporting
Generated and verified the following reports:


Daily Sales Totals


Average Transaction Value


Top 3 Products by Revenue


City-wise Total Sales


