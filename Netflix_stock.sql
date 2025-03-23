SELECT * FROM netflix_db.netflix_stock;

#Get Date, Open, Close & Volume for all Stock entries.
SELECT Date, Open, Close, Volume 
FROM netflix_db.netflix_stock;

#Retrieve the date with highest Volume.
SELECT Date, Volume
FROM netflix_db.netflix_stock 
ORDER BY Volume 
DESC LIMIT 1;

#Retrieve Stock Data from Januвгу 2017.
SELECT *
FROM netflix_db.netflix_stock 
WHERE Date BETWEEN '2017-01-01' AND '2017-01-31';

#Retrieve the close price for March 1 2017.
SELECT Close 
FROM netflix_db.netflix_stock 
WHERE Date = "2017-03-01";

#Calculate total volume
SELECT SUM(Volume) as Total_Volume 
FROM netflix_db.netflix_stock;

#Average closing price
SELECT AVG(Close) AS Avg_Closing_Price 
FROM netflix_db.netflix_stock;

#Maximum stock price
SELECT MAX(High) AS Max_Stock_price 
FROM netflix_db.netflix_stock;

#Average valume per year
SELECT YEAR(Date) AS Year, AVG(Volume) As Average_Volume 
FROM netflix_db.netflix_stock 
GROUP BY YEAR(Date) 
ORDER BY Year;

#List all records where volume is greater than 10 million.
SELECT * 
FROM netflix_db.netflix_stock 
WHERE Volume > 10000000;

#Retrieve tile top 5 days with the highest close price, in descending order
SELECT Date, Close 
FROM netflix_db.netflix_stock 
ORDER BY Close DESC LIMIT 5;

#Retrieve all stock records from the year 2021
SELECT *
FROM netflix_db.netflix_stock 
WHERE YEAR(Date)="2021";

#Get stock date where the close price is between $50 and $100.
SELECT *
FROM netflix_db.netflix_stock
WHERE Close BETWEEN 50 AND 100;

#Find days share the clase price was lower than the open price. 
SELECT COUNT(Date) 
FROM netflix_db.netflix_stock 
WHERE Close < Open;

#How many trading days were there in 2022.
SELECT COUNT(*) AS Trading_Days 
FROM netflix_db.netflix_stock 
WHERE YEAR(Date)="2022";

#Retrieve the top 10 records with the highest macd values
SELECT *
FROM netflix_db.netflix_stock 
ORDER BY macd DESC LIMIT 10;


