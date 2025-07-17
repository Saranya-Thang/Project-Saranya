-- 1. Database Creation --

CREATE DATABASE sales_analysis;
USE sales_analysis;

## Create the sales_sample Table

CREATE TABLE sales_sample (
    Product_id INT,
    Region VARCHAR(50),
    Date DATE,
    Sales_Amount INT
);
-- 2. Data Creation - Insert Sample Data --

INSERT INTO sales_sample (Product_id, Region, Date, Sales_Amount) VALUES
(1, 'East', '2025-07-01', 1000),
(2, 'West', '2025-07-02', 1500),
(3, 'North', '2025-07-03', 2000),
(4, 'South', '2025-07-04', 2500),
(1, 'East', '2025-07-05', 1100),
(2, 'West', '2025-07-06', 1600),
(3, 'North', '2025-07-07', 2300),
(4, 'South', '2025-07-08', 2700);

## Retrieve sales_sample data
SELECT * FROM sales_sample;

-- a) Drill Down- Region wise product sales performance --

SELECT 
    Region,
    Product_id,
    SUM(Sales_Amount) AS Total_Sales
FROM 
    sales_sample
GROUP BY 
    Region, Product_id
ORDER BY 
    Region, Total_Sales DESC;
    
-- b) Rollup- View total product sales by region--
SELECT region, SUM(sales_amount) AS total_sales
FROM sales_sample
GROUP BY region
ORDER BY region;

-- c) Cube - Analyze sales data from different perspectives, such as product, region and date --

-- Group by all dimensions --
SELECT 
    Product_id,
    Region,
DATE_FORMAT(`Date`, '%Y-%m-%d') AS Month,   
SUM(Sales_Amount) AS Total_Sales
FROM 
    sales_sample
GROUP BY 
    Product_id, Region, DATE_FORMAT(`Date`, '%Y-%m-%d')
UNION ALL

-- Group by Product_id and Region --
SELECT 
    Product_id,
    Region,
    NULL AS Month,
    SUM(Sales_Amount) AS Total_Sales
FROM 
    sales_sample
GROUP BY 
    Product_id, Region
UNION ALL

-- Group by Product_id and Month --
SELECT 
    Product_id,
    NULL AS Region,
     DATE_FORMAT(`Date`, '%Y-%m-%d') AS Month,
    SUM(Sales_Amount) AS Total_Sales
FROM 
    sales_sample
GROUP BY 
    Product_id, DATE_FORMAT(`Date`, '%Y-%m-%d')
UNION ALL

-- Group by Region and Month --
SELECT 
    NULL AS Product_id,
    Region,
     DATE_FORMAT(`Date`, '%Y-%m-%d') AS Month,
    SUM(Sales_Amount) AS Total_Sales
FROM 
    sales_sample
GROUP BY 
    Region,  DATE_FORMAT(`Date`, '%Y-%m-%d');

-- d) Slice the data to view Sales for a particular region or date range --

SELECT 
    Product_id,
    Region,
    Date,
    Sales_Amount
FROM 
    sales_sample
WHERE 
    Region = 'East'
    OR Date BETWEEN '2025-07-01' AND '2025-07-07'
ORDER BY 
    Date, Product_id;
    
-- e) Dice - View sales for specific combinations of product id, region, and date --

SELECT 
    Product_id,
    Region,
    Date,
    Sales_Amount
FROM 
    sales_sample
WHERE 
    Product_id = 1
    AND Region = 'East'
    AND Date BETWEEN '2025-07-01' AND '2025-07-07'
ORDER BY 
    Date;
