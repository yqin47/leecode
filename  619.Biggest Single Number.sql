#Table number contains many numbers in column num including duplicated ones. Can you write a SQL query to find the biggest number, which only appears once.If there is no such number, just output null.



SELECT 
IFNULL((SELECT MAX(t.num) from (select num from number GROUP BY num having COUNT(*)=1) 
     AS t), NULL) AS num
