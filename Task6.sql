SELECT * FROM sales;


----- USE EXTRACT(MONTH FROM order_date) FOR MONTH ------


SELECT 
  EXTRACT(YEAR FROM Date) AS order_year,
  EXTRACT(MONTH FROM Date) AS order_month
FROM sales;


--- GROUP BY YEAR/MONTH ---

SELECT 
  EXTRACT(YEAR FROM Date) AS year,
  EXTRACT(MONTH FROM Date) AS month
FROM sales
GROUP BY 
  EXTRACT(YEAR FROM Date),
  EXTRACT(MONTH FROM Date);
  
  
  ------ USE SUM FUNCTION FOR revenue -----
  
SELECT 
  SUM(revenue) AS total_revenue 
FROM sales;

----- COUNT(DISTINCT order_id) for volume -----

SELECT 
  COUNT(DISTINCT Order_Quantity) AS order_volume 
FROM sales;

----- Use ORDER BY for sorting -----

SELECT 
  EXTRACT(YEAR FROM Date) AS year,
  EXTRACT(MONTH FROM Date) AS month
FROM sales
ORDER BY 
  EXTRACT(YEAR FROM Date), 
  EXTRACT(MONTH FROM Date);


------ Limit results for specific time periods ------
SELECT * 
FROM sales
WHERE Date BETWEEN '2015-01-01' AND '2015-12-31';

SELECT Order_Quantity, Date, revenue 
FROM sales
WHERE Date BETWEEN '2015-01-01' AND '2015-12-31';


------ Combined Query (Final Output) -----

SELECT 
  EXTRACT(YEAR FROM Date) AS year,
  EXTRACT(MONTH FROM Date) AS month,
  COUNT(DISTINCT Order_Quantity) AS order_volume,
  SUM(revenue) AS total_revenue
FROM sales
WHERE Date BETWEEN '2015-01-01' AND '2015-12-31'
GROUP BY 
  EXTRACT(YEAR FROM Date),
  EXTRACT(MONTH FROM Date)
ORDER BY 
  year, 
  month;



