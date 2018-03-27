Create table If Not Exists Logs (Id int, Num int);
Truncate table Logs;
insert into Logs (Id, Num) values ('1', '1');
insert into Logs (Id, Num) values ('2', '1');
insert into Logs (Id, Num) values ('3', '1');
insert into Logs (Id, Num) values ('4', '2');
insert into Logs (Id, Num) values ('5', '1');
insert into Logs (Id, Num) values ('6', '2');
insert into Logs (Id, Num) values ('7', '2');

# Write a SQL query to find all numbers that appear at least three times consecutively.
#
# +----+-----+
# | Id | Num |
# +----+-----+
# | 1  |  1  |
# | 2  |  1  |
# | 3  |  1  |
# | 4  |  2  |
# | 5  |  1  |
# | 6  |  2  |
# | 7  |  2  |
# +----+-----+
# For example, given the above Logs table, 1 is the only number that appears consecutively for at least three times.
#

# Write your MySQL query statement below
SELECT DISTINCT(A.NUM) AS "ConsecutiveNums" FROM Logs A, Logs B, Logs C 
Where (A.Id=B.ID-1 and B.ID = C.Id-1) 
AND (A.NUM=B.NUM AND B.NUM=C.NUM)


#SELECT DISTINCT(Num) AS ConsecutiveNums
#FROM (
 #   SELECT
  #  Num,
   # @counter := IF(@prev = Num, @counter + 1, 1) AS how_many_cnt_in_a_row,
    #@prev := Num
    #FROM Logs y, (SELECT @counter:=1, @prev:=NULL) vars
#) sq
#WHERE how_many_cnt_in_a_row >= 3