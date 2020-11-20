mysql> use lab;
Database changed

#1
mysql> create table employee(
    -> empid CHAR(4) ,
    -> name CHAR(10) not null,
    -> designation CHAR(30) not null,
    -> dob date not null,
    -> salary numeric
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> create table employdetails(
    -> sex char(1),
    -> nationality char(10),
    -> gno int,
    -> primary key (gno),
    -> empid char(4) references employee(empid)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql>  insert into employee values
    -> ("e1","Steve","CO","1922-3-11","45250"),
    -> ("e2","Bert","XO","1980-5-4","22380");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0


mysql> insert into employdetails values
    -> ("M","Serbian","27","e2"),
    -> ("M","Spaniard","56","e5");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

#2
mysql> select * from employee where empid in (select empid from employdetails);
+-------+------+-------------+------------+--------+
| empid | name | designation | dob        | salary |
+-------+------+-------------+------------+--------+
| e2    | Bert | XO          | 1980-05-04 |  22380 |
+-------+------+-------------+------------+--------+
1 row in set (0.01 sec)

#3
mysql> select * from employee where empid not in(select empid from employdetails);
+-------+-------+-------------+------------+--------+
| empid | name  | designation | dob        | salary |
+-------+-------+-------------+------------+--------+
| e1    | Steve | CO          | 1922-03-11 |  45250 |
+-------+-------+-------------+------------+--------+
1 row in set (0.01 sec)