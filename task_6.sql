#A
mysql> CREATE TABLE Store (
    -> `order_no` INTEGER PRIMARY KEY AUTO_INCREMENT,
    ->     `code` VARCHAR(20) NOT NULL,
    ->     `item` VARCHAR(30) NOT NULL,
    ->     `quantity` INTEGER UNSIGNED DEFAULT 1,
    ->     `price` DECIMAL(10,2) NOT NULL,
    ->     `discount` DECIMAL(2,2) DEFAULT 0,
    ->     `mrp` DECIMAL(10,2) NOT NULL
    -> );
Query OK, 0 rows affected (0.11 sec)


#B
mysql> INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`)
    -> VALUES ("PST", "PASTE", 2, 20, 0, 20),("BOK", "NOTEBOOK", 10, 45, 0.1, 50);
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

#C
mysql> SELECT * FROM Store;
+----------+------+----------+----------+-------+----------+-------+
| order_no | code | item     | quantity | price | discount | mrp   |
+----------+------+----------+----------+-------+----------+-------+
|        1 | PST  | PASTE    |        2 | 20.00 |     0.00 | 20.00 |
|        2 | BOK  | NOTEBOOK |       10 | 45.00 |     0.10 | 50.00 |
+----------+------+----------+----------+-------+----------+-------+
2 rows in set (0.01 sec)

#D
mysql> CREATE VIEW CART AS
    -> SELECT `item`, `quantity` FROM Store;
Query OK, 0 rows affected (0.01 sec)

#E
mysql> INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`)
    -> VALUES ("GLD", "GOLD", 10, 5000, 0, 5000);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM CART;
+----------+----------+
| item     | quantity |
+----------+----------+
| PASTE    |        2 |
| NOTEBOOK |       10 |
| GOLD     |       10 |
+----------+----------+
3 rows in set (0.01 sec)

#F
mysql> DROP VIEW CART;
Query OK, 0 rows affected (0.01 sec)