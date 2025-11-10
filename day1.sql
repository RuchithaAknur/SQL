mysql> create table products(
    -> product_id int,
    -> product_name varchar(50),
    -> price int,
    -> quantity int);
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO products (product_id, product_name, category, price, stock_quantity)
    -> VALUES
    -> (1, 'Laptop', 'Electronics', 65000.00, 10),
    -> (2, 'Mobile Phone', 'Electronics', 25000.00, 25),
    -> (3, 'Desk Chair', 'Furniture', 4500.00, 15),
    -> (4, 'Wrist Watch', 'Accessories', 3500.00, 20);
ERROR 1054 (42S22): Unknown column 'category' in 'field list'
mysql>
mysql> select * from products;
Empty set (0.00 sec)

mysql> INSERT INTO products (product_id, product_name,price,quantity) values (1, 'Laptop', 65000, 10), (2, 'Mobile Phone', 25000, 25), (3, 'Desk Chair', 4500, 15),(4, 'Wrist Watch', 3500, 20);
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from products;
+------------+--------------+-------+----------+
| product_id | product_name | price | quantity |
+------------+--------------+-------+----------+
|          1 | Laptop       | 65000 |       10 |
|          2 | Mobile Phone | 25000 |       25 |
|          3 | Desk Chair   |  4500 |       15 |
|          4 | Wrist Watch  |  3500 |       20 |
+------------+--------------+-------+----------+
4 rows in set (0.00 sec)

mysql> drop table customers;
Query OK, 0 rows affected (0.05 sec)

mysql> create table customers(
    -> customer_id int,
    -> first_name varchar(50),
    -> last_name varchar(50),
    -> email varchar(50),
    -> phone_no varchar(15),
    -> city varchar(50));
Query OK, 0 rows affected (0.07 sec)

mysql> insert into customers values(1,"sneha","reddy","sneha@email.com",93889273,"hyderabad"),(2,"thanuja","reddy","thanuja@gmail.com",89478364,"delhi"),(3,"rahul","kumar","rahul@gmail.com",8787647364,"chennai"),(4,"shruthi","sharma","shruthi@gmail.com","pune");
ERROR 1136 (21S01): Column count doesn't match value count at row 4
mysql> insert into customers values(1,"sneha","reddy","sneha@email.com",93889273,"hyderabad"),(2,"thanuja","reddy","thanuja@gmail.com",89478364,"delhi"),(3,"rahul","kumar","rahul@gmail.com",8787647364,"chennai"),(4,"shruthi","sharma","shruthi@gmail.com",986247864,"pune");
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from customers;
+-------------+------------+-----------+-------------------+------------+-----------+
| customer_id | first_name | last_name | email             | phone_no   | city      |
+-------------+------------+-----------+-------------------+------------+-----------+
|           1 | sneha      | reddy     | sneha@email.com   | 93889273   | hyderabad |
|           2 | thanuja    | reddy     | thanuja@gmail.com | 89478364   | delhi     |
|           3 | rahul      | kumar     | rahul@gmail.com   | 8787647364 | chennai   |
|           4 | shruthi    | sharma    | shruthi@gmail.com | 986247864  | pune      |
+-------------+------------+-----------+-------------------+------------+-----------+
4 rows in set (0.00 sec)

mysql> select  * from products;
+------------+--------------+-------+----------+
| product_id | product_name | price | quantity |
+------------+--------------+-------+----------+
|          1 | Laptop       | 65000 |       10 |
|          2 | Mobile Phone | 25000 |       25 |
|          3 | Desk Chair   |  4500 |       15 |
|          4 | Wrist Watch  |  3500 |       20 |
+------------+--------------+-------+----------+
4 rows in set (0.00 sec)

mysql>
