SELECT * FROM supply_chain_data LIMIT 10;
SELECT `Product type`,SKU, SUM(`Revenue generated`) AS Total_Revenue FROM supply_chain_data GROUP BY `Product type`, SKU ORDER BY Total_Revenue DESC LIMIT 5;
SELECT SKU, `Product type`,`Stock levels`,`Number of products sold` FROM supply_chain_data WHERE `Stock levels` < 20 AND `Number of products sold` > 500 ORDER BY `Number of products sold` DESC; 
SELECT `Product type`,SKU,`Lead times` FROM supply_chain_data WHERE `Lead times` > (SELECT AVG(`Lead times`) FROM supply_chain_data) ORDER BY `Lead times` DESC;
SELECT `Product type`,`Customer demographics`,COUNT(SKU) AS Total_Products_Bought, SUM(`Revenue generated`) AS Demographic_Revenue FROM supply_chain_data GROUP BY `Product type`,`Customer demographics` ORDER BY `Product type`, Demographic_Revenue DESC;
SELECT SKU, `Product type`, `Revenue generated`, DENSE_RANK() OVER (PARTITION BY `Product type` ORDER BY `Revenue generated` DESC) AS Revenue_Rank FROM supply_chain_data;

