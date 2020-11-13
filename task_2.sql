mysql> use lab;
Database changed

#1
mysql> CREATE TABLE Employee (
    -> `code` CHAR(4) NOT NULL,
    ->     `name` CHAR(10) NOT NULL,
    ->     `designation` CHAR(30) NOT NULL,
    ->     `dob` DATE NOT NULL,
    ->     `salary` NUMERIC
    -> );
Query OK, 0 rows affected (0.06 sec)

#2
mysql> INSERT INTO Employee (`code`, `name`, `designation`, `dob`, `salary`)
    -> VALUES
    -> ("e1", "Samir", "Manager", "1990-4-12", 41250),
    -> ("e2","John", "Ass.Manager", "1994-3-22", 15500);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

#3
mysql> SELECT * FROM Employee;
+------+-------+-------------+------------+--------+
| code | name  | designation | dob        | salary |
+------+-------+-------------+------------+--------+
| e1   | Samir | Manager     | 1990-04-12 |  41250 |
| e2   | John  | Ass.Manager | 1994-03-22 |  15500 |
+------+-------+-------------+------------+--------+
2 rows in set (0.01 sec)

#4
mysql> UPDATE Employee
    -> SET `salary` = 20000 WHERE `code` = "e1";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

#5
mysql> DELETE FROM Employee WHERE `code` = "e2";
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM Employee;
+------+-------+-------------+------------+--------+
| code | name  | designation | dob        | salary |
+------+-------+-------------+------------+--------+
| e1   | Samir | Manager     | 1990-04-12 |  20000 |
+------+-------+-------------+------------+--------+
1 row in set (0.00 sec)