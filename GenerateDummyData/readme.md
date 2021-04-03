**with 16vcpu, create dummy data-4000,0000rows, 6.3GB**

```
[ec2-user@ip-172-31-5-23 ~]$ time python3 generate.py 40000000
0 2500000
2500000 5000000
5000000 7500000
7500000 10000000
10000000 12500000
12500000 15000000
15000000 17500000
17500000 20000000
20000000 22500000
22500000 25000000
25000000 27500000
27500000 30000000
30000000 32500000
32500000 35000000
35000000 37500000
37500000 40000000

real    26m9.915s
user    410m10.286s
sys     2m34.991s
```

**dummy data file**

```
[ec2-user@ip-172-31-5-23 dummydata]$ wc -l 0.txt
2500000 0.txt
[ec2-user@ip-172-31-5-23 dummydata]$ wc -l dummy.txt
40000000 dummy.txt

[ec2-user@ip-172-31-5-23 dummydata]$ ls -alrth
total 13G
-rw-rw-r-- 1 ec2-user ec2-user 414M Mar 31 11:37 7.txt
-rw-rw-r-- 1 ec2-user ec2-user 414M Mar 31 11:37 6.txt
-rw-rw-r-- 1 ec2-user ec2-user 414M Mar 31 11:37 15.txt
-rw-rw-r-- 1 ec2-user ec2-user 414M Mar 31 11:37 14.txt
-rw-rw-r-- 1 ec2-user ec2-user 414M Mar 31 11:37 9.txt
-rw-rw-r-- 1 ec2-user ec2-user 414M Mar 31 11:37 11.txt
-rw-rw-r-- 1 ec2-user ec2-user 414M Mar 31 11:37 10.txt
-rw-rw-r-- 1 ec2-user ec2-user 414M Mar 31 11:37 8.txt
-rw-rw-r-- 1 ec2-user ec2-user 414M Mar 31 11:37 13.txt
-rw-rw-r-- 1 ec2-user ec2-user 414M Mar 31 11:37 4.txt
-rw-rw-r-- 1 ec2-user ec2-user 414M Mar 31 11:37 12.txt
-rw-rw-r-- 1 ec2-user ec2-user 414M Mar 31 11:37 5.txt
-rw-rw-r-- 1 ec2-user ec2-user 376M Mar 31 11:38 3.txt
-rw-rw-r-- 1 ec2-user ec2-user 359M Mar 31 11:38 0.txt
-rw-rw-r-- 1 ec2-user ec2-user 376M Mar 31 11:38 2.txt
-rw-rw-r-- 1 ec2-user ec2-user 376M Mar 31 11:38 1.txt
-rw-rw-r-- 1 ec2-user ec2-user 6.3G Mar 31 12:01 dummy.txt
```

**Create Database**

```
MySQL [(none)]> source createDatabase.sql
Query OK, 1 row affected, 1 warning (0.00 sec)

Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

MySQL [test_db]> desc test_load;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(13)     | NO   | PRI | NULL    |       |
| col1  | varchar(45) | NO   |     | NULL    |       |
| col2  | varchar(45) | NO   |     | NULL    |       |
| col3  | varchar(45) | NO   |     | NULL    |       |
| col4  | varchar(45) | NO   |     | NULL    |       |
| col5  | varchar(45) | NO   |     | NULL    |       |
| col6  | varchar(45) | NO   |     | NULL    |       |
| col7  | varchar(45) | NO   |     | NULL    |       |
| col8  | varchar(45) | NO   |     | NULL    |       |
| col9  | varchar(45) | NO   |     | NULL    |       |
| col10 | varchar(45) | NO   |     | NULL    |       |
| col11 | varchar(45) | NO   |     | NULL    |       |
| col12 | varchar(45) | NO   |     | NULL    |       |
| col13 | varchar(45) | NO   |     | NULL    |       |
| col14 | varchar(45) | NO   |     | NULL    |       |
| col15 | varchar(45) | NO   |     | NULL    |       |
| col16 | varchar(45) | NO   |     | NULL    |       |
| col17 | varchar(45) | NO   |     | NULL    |       |
| col18 | varchar(45) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
19 rows in set (0.00 sec)
```

**Count Cpu core**

```
[ec2-user@ip-172-31-5-23 ~]$ cat /proc/cpuinfo |grep 'core id'|wc -l
64
```

**Load data using load.py**

```

python3 mysql_parallel_load.py dummy.csv test_load 64
```
