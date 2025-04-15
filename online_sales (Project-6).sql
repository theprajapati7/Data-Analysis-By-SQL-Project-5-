 -- Count of unit sold by product category
SELECT 
    `Product Category`, COUNT(`Units Sold`)
FROM
    `online sales data`
GROUP BY `Product Category`;

-- Total revenue

SELECT 
    SUM(`Total Revenue`)
FROM
    `online sales data`;
    
-- total orders

SELECT 
    COUNT(DISTINCT `Transaction ID`) as total_order 
FROM
    `online sales data`;

-- Top 5 most expensive product  
SELECT 
    `Product Name`, `Unit Price`
FROM
    `online sales data`
ORDER BY `Unit Price` DESC
LIMIT 5;   

-- Top 5 High revenue product 
SELECT 
    `Product Name`, `Total Revenue`
FROM
    `online sales data`
ORDER BY `Total Revenue` DESC
LIMIT 5;

--  Most demand product 
SELECT 
    `Product Name`, `Units Sold`
FROM
    `online sales data`
ORDER BY `Units Sold` DESC
LIMIT 1;

-- Extract month from date

SELECT 
    EXTRACT(MONTH FROM Date)as month
FROM
    `online sales data` group by month;

-- Most demanding product according to Region

SELECT 
    `Product Name`, `Units Sold`, `Region`
FROM
    `online sales data`
ORDER BY `Units Sold` DESC;    