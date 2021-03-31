**with 16vcpu, run command**

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
