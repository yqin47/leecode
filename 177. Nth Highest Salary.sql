CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
     # Write your MySQL query statement below.
    select distinct Salary from Employee e 
      where N=(select count(distinct Salary) from Employee where Salary>=e.Salary)
      limit 1
      
  );
END
#LIMIT 18 OFFSET 8  ==== LIMIT 18, 8
#First you offset by 8, which means you skip the first 8 results of the query. 
#Then you limit by 18. Which means you consider records 9, 10, 11, 12, 13, 14, 15, 16....24, 25, 26 which are a total of 18 records.