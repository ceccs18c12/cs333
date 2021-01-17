#1
mysql> CREATE TABLE Employee(
    ->     code CHAR(4) PRIMARY KEY,
    ->     name VARCHAR(60),
    ->     dob DATE,
    ->     designation VARCHAR(80),
    ->     salary FLOAT
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO Employee(code, name, dob, designation, salary)
    -> VALUES
    -> ('ar69','Aravind','2000-02-02','CTO',190000.78),
    -> ('ku12','Kira','2000-01-12','CEO',185000.78),
    -> ('sv13','Sam','1998-08-02','Clerk',59000.78),
    -> ('aj7','Aju','1969-04-20','Auditor',59000.18);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

#2
mysql> SELECT * FROM Employee ORDER BY name DESC;
+------+---------+------------+-------------+---------+
| code | name    | dob        | designation | salary  |
+------+---------+------------+-------------+---------+
| sv13 | Sam     | 1998-08-02 | Clerk       | 59000.8 |
| ku12 | Kira    | 2000-01-12 | CEO         |  185001 |
| ar69 | Aravind | 2000-02-02 | CTO         |  190001 |
| aj7  | Aju     | 1969-04-20 | Auditor     | 59000.2 |
+------+---------+------------+-------------+---------+
4 rows in set (0.01 sec)

#3
mysql> CREATE TABLE Deposit(
    ->     baccno BIGINT,
    ->     branch_name VARCHAR(60),
    ->     amount FLOAT
    -> );
Query OK, 0 rows affected (0.07 sec)

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(1990001,'palakkad',290000.25),
(1990002,'palakkad',291233.22),
(1990003,'karunagapally',123570.1),
(1990004,'palakkad',2239083.78),
(1990005,'alapuzha',100090.90);


#4
mysql> SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;
+---------------+---------------+----------------+
| branch_name   | COUNT(baccno) | SUM(amount)    |
+---------------+---------------+----------------+
| palakkad      |             3 |  2820317.21875 |
| karunagapally |             1 | 123570.1015625 |
| alapuzha      |             1 | 100090.8984375 |
+---------------+---------------+----------------+
3 rows in set (0.01 sec)

