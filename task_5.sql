*(A) Create a table class.Fields are name and id *

mysql> CREATE TABLE Class (
    -> `id` INT PRIMARY KEY AUTO_INCREMENT,
    ->     `name` VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.14 sec)

*(B) Insert values into the table *

mysql> INSERT INTO Class (`name`) VALUES ("HARI"), ("SUSAN"), ("REJI");
Query OK, 3 rows affected (0.04 sec)
Records: 3  Duplicates: 0  Warnings: 0

*(C) Display the table *

mysql> SELECT * FROM Class;
+----+-------+
| id | name  |
+----+-------+
|  1 | HARI  |
|  2 | SUSAN |
|  3 | REJI  |
+----+-------+
3 rows in set (0.01 sec)

*(D) Apply commit, save point and rollback commands *

mysql> START TRANSACTION;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO Class (`name`) VALUES ("NEWMAN");
Query OK, 1 row affected (0.01 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO Class (`name`) VALUES ("NEWMAN");
Query OK, 1 row affected (0.01 sec)

mysql> COMMIT;
Query OK, 0 rows affected (0.00 sec)

mysql> START TRANSACTION;
Query OK, 0 rows affected (0.00 sec)

mysql> SAVEPOINT BeforeEvilEra;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO Class (`name`) VALUES ("EVILERA");
Query OK, 1 row affected (0.00 sec)

mysql> ROLLBACK TO BeforeEvilEra;
Query OK, 0 rows affected (0.00 sec)

mysql> COMMIT;
Query OK, 0 rows affected (0.00 sec)



