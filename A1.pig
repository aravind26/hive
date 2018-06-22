retail = load '/home/hduser/Retail_Data' using PigStorage(';') as (trn_dt:chararray, custid:chararray, age, zip, category, product, qty, cost, sales:long);

retail = foreach retail generate trn_dt,custid,sales;

--retail = limit retail 10;

--dump retail;


groupall = group retail all;

maxSales = foreach groupall generate MAX(retail.sales) as maxamt;

--dump maxSales;

--444000

highvalcust = filter retail by sales == maxSales.maxamt;

dump highvalcust;

--- output for 4 months 

---(2001-02-17 00:00:00,01622362  ,444000)

