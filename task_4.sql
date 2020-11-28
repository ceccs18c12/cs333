#Qa)

mysql> CREATE TABLE Department(
    ->     `code` INT PRIMARY KEY NOT NULL,
    ->     `title` VARCHAR(30),
    ->     `dept_name` VARCHAR(30) UNIQUE NOT NULL,
    ->     `dept_id` INT UNIQUE NOT NULL,
    ->     `salary` INT,
    ->     CHECK (`salary` > 2000 )
    -> );
Query OK, 0 rows affected (0.15 sec)

mysql> INSERT INTO Department(`code`, `title`, `dept_name`, `dept_id`,`salary`)
    -> VALUES (221, "Test Title", "Computer Science", 101, 25000);
Query OK, 1 row affected (0.03 sec)

#Qb)

mysql> CREATE TABLE Instructor(
    ->     `name` VARCHAR(50) NOT NULL,
    ->     `code` INT NOT NULL,
    ->     `id` INT PRIMARY KEY DEFAULT 0
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> INSERT INTO Instructor(`name`, `code`)
    -> VALUES ("JACOB T", 013);
Query OK, 1 row affected (0.02 sec)

