#1
mysql> CREATE TABLE Employee(
    ->     code CHAR(6) PRIMARY KEY,
    ->     name VARCHAR(80),
    ->     dob date,
    ->     designation VARCHAR(100),
    ->     salary FLOAT
    -> );
Query OK, 0 rows affected (0.05 sec)

#2
mysql> INSERT INTO Employee (code, name, dob, designation, salary)
    -> VALUES
    -> ('gm0121','Arun','2000-10-05','General Manager',50000.25),
    -> ('pm2918','Arjun','1998-11-15','Product Manager',50000.50),
    -> ('cl0123','Kumar','1992-02-06','Clerk',25000),
    -> ('cl1234','Ram','2001-02-05','Clerk',15000.75);
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

#3
mysql> SELECT SUM(salary) FROM Employee WHERE designation='Clerk';
+-------------+
| SUM(salary) |
+-------------+
|    40000.75 |
+-------------+
1 row in set (0.02 sec)

#4
mysql> SELECT MAX(salary) FROM Employee;
+-------------+
| MAX(salary) |
+-------------+
|     50000.5 |
+-------------+
1 row in set (0.01 sec)

#5
mysql> SELECT AVG(salary) FROM Employee;
+-------------+
| AVG(salary) |
+-------------+
|   35000.375 |
+-------------+
1 row in set (0.00 sec)

#6
mysql> SELECT MIN(salary) FROM Employee;
+-------------+
| MIN(salary) |
+-------------+
|     15000.8 |
+-------------+
1 row in set (0.00 sec)

#7
mysql> SELECT COUNT(*) FROM Employee;
+----------+
| COUNT(*) |
+----------+
|        4 |
+----------+
1 row in set (0.00 sec)