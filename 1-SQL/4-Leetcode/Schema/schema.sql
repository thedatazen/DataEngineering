--1683
Create table If Not Exists Tweets(tweet_id int, content varchar(50))
Truncate table Tweets
insert into Tweets (tweet_id, content) values ('1', 'Vote for Biden')
insert into Tweets (tweet_id, content) values ('2', 'Let us make America great again!')

--1693
Create table If Not Exists DailySales(date_id date, make_name varchar(20), lead_id int, partner_id int)
Truncate table DailySales
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'toyota', '0', '1')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'toyota', '1', '0')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'toyota', '1', '2')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'toyota', '0', '2')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'toyota', '0', '1')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'honda', '1', '2')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'honda', '2', '1')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'honda', '0', '1')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'honda', '1', '2')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'honda', '2', '1')

--1350
Create table If Not Exists Departments (id int, name varchar(30))
Create table If Not Exists Students (id int, name varchar(30), department_id int)
Truncate table Departments
insert into Departments (id, name) values ('1', 'Electrical Engineering')
insert into Departments (id, name) values ('7', 'Computer Engineering')
insert into Departments (id, name) values ('13', 'Bussiness Administration')
Truncate table Students
insert into Students (id, name, department_id) values ('23', 'Alice', '1')
insert into Students (id, name, department_id) values ('1', 'Bob', '7')
insert into Students (id, name, department_id) values ('5', 'Jennifer', '13')
insert into Students (id, name, department_id) values ('2', 'John', '14')
insert into Students (id, name, department_id) values ('4', 'Jasmine', '77')
insert into Students (id, name, department_id) values ('3', 'Steve', '74')
insert into Students (id, name, department_id) values ('6', 'Luis', '1')
insert into Students (id, name, department_id) values ('8', 'Jonathan', '7')
insert into Students (id, name, department_id) values ('7', 'Daiana', '33')
insert into Students (id, name, department_id) values ('11', 'Madelynn', '1')

--1581
Create table If Not Exists Visits(visit_id int, customer_id int)
Create table If Not Exists Transactions(transaction_id int, visit_id int, amount int)
Truncate table Visits
insert into Visits (visit_id, customer_id) values ('1', '23')
insert into Visits (visit_id, customer_id) values ('2', '9')
insert into Visits (visit_id, customer_id) values ('4', '30')
insert into Visits (visit_id, customer_id) values ('5', '54')
insert into Visits (visit_id, customer_id) values ('6', '96')
insert into Visits (visit_id, customer_id) values ('7', '54')
insert into Visits (visit_id, customer_id) values ('8', '54')
Truncate table Transactions
insert into Transactions (transaction_id, visit_id, amount) values ('2', '5', '310')
insert into Transactions (transaction_id, visit_id, amount) values ('3', '5', '300')
insert into Transactions (transaction_id, visit_id, amount) values ('9', '5', '200')
insert into Transactions (transaction_id, visit_id, amount) values ('12', '1', '910')
insert into Transactions (transaction_id, visit_id, amount) values ('13', '2', '970')

--1587
Create table If Not Exists Users (account int, name varchar(20))
Create table If Not Exists Transactions (trans_id int, account int, amount int, transacted_on date)
Truncate table Users
insert into Users (account, name) values ('900001', 'Alice')
insert into Users (account, name) values ('900002', 'Bob')
insert into Users (account, name) values ('900003', 'Charlie')
Truncate table Transactions
insert into Transactions (trans_id, account, amount, transacted_on) values ('1', '900001', '7000', '2020-08-01')
insert into Transactions (trans_id, account, amount, transacted_on) values ('2', '900001', '7000', '2020-09-01')
insert into Transactions (trans_id, account, amount, transacted_on) values ('3', '900001', '-3000', '2020-09-02')
insert into Transactions (trans_id, account, amount, transacted_on) values ('4', '900002', '1000', '2020-09-12')
insert into Transactions (trans_id, account, amount, transacted_on) values ('5', '900003', '6000', '2020-08-07')
insert into Transactions (trans_id, account, amount, transacted_on) values ('6', '900003', '6000', '2020-09-07')
insert into Transactions (trans_id, account, amount, transacted_on) values ('7', '900003', '-4000', '2020-09-11')

--1571
Create table If Not Exists Warehouse (name varchar(50), product_id int, units int)
Create table If Not Exists Products (product_id int, product_name varchar(50), Width int,Length int,Height int)
Truncate table Warehouse
insert into Warehouse (name, product_id, units) values ('LCHouse1', '1', '1')
insert into Warehouse (name, product_id, units) values ('LCHouse1', '2', '10')
insert into Warehouse (name, product_id, units) values ('LCHouse1', '3', '5')
insert into Warehouse (name, product_id, units) values ('LCHouse2', '1', '2')
insert into Warehouse (name, product_id, units) values ('LCHouse2', '2', '2')
insert into Warehouse (name, product_id, units) values ('LCHouse3', '4', '1')
Truncate table Products
insert into Products (product_id, product_name, Width, Length, Height) values ('1', 'LC-TV', '5', '50', '40')
insert into Products (product_id, product_name, Width, Length, Height) values ('2', 'LC-KeyChain', '5', '5', '5')
insert into Products (product_id, product_name, Width, Length, Height) values ('3', 'LC-Phone', '2', '10', '10')
insert into Products (product_id, product_name, Width, Length, Height) values ('4', 'LC-T-Shirt', '4', '10', '20')

--1378
Create table If Not Exists Employees (id int, name varchar(20))
Create table If Not Exists EmployeeUNI (id int, unique_id int)
Truncate table Employees
insert into Employees (id, name) values ('1', 'Alice')
insert into Employees (id, name) values ('7', 'Bob')
insert into Employees (id, name) values ('11', 'Meir')
insert into Employees (id, name) values ('90', 'Winston')
insert into Employees (id, name) values ('3', 'Jonathan')
Truncate table EmployeeUNI
insert into EmployeeUNI (id, unique_id) values ('3', '1')
insert into EmployeeUNI (id, unique_id) values ('11', '2')
insert into EmployeeUNI (id, unique_id) values ('90', '3')

--1303
Create table If Not Exists Employee (employee_id int, team_id int)
Truncate table Employee
insert into Employee (employee_id, team_id) values ('1', '8')
insert into Employee (employee_id, team_id) values ('2', '8')
insert into Employee (employee_id, team_id) values ('3', '8')
insert into Employee (employee_id, team_id) values ('4', '7')
insert into Employee (employee_id, team_id) values ('5', '9')
insert into Employee (employee_id, team_id) values ('6', '9')

--1623
Create table If Not Exists SchoolA (student_id int, student_name varchar(20))
Create table If Not Exists SchoolB (student_id int, student_name varchar(20))
Create table If Not Exists SchoolC (student_id int, student_name varchar(20))
Truncate table SchoolA
insert into SchoolA (student_id, student_name) values ('1', 'Alice')
insert into SchoolA (student_id, student_name) values ('2', 'Bob')
Truncate table SchoolB
insert into SchoolB (student_id, student_name) values ('3', 'Tom')
Truncate table SchoolC
insert into SchoolC (student_id, student_name) values ('3', 'Tom')
insert into SchoolC (student_id, student_name) values ('2', 'Jerry')
insert into SchoolC (student_id, student_name) values ('10', 'Alice')

--1484
Create table If Not Exists Activities (sell_date date, product varchar(20))
Truncate table Activities
insert into Activities (sell_date, product) values ('2020-05-30', 'Headphone')
insert into Activities (sell_date, product) values ('2020-06-01', 'Pencil')
insert into Activities (sell_date, product) values ('2020-06-02', 'Mask')
insert into Activities (sell_date, product) values ('2020-05-30', 'Basketball')
insert into Activities (sell_date, product) values ('2020-06-01', 'Bible')
insert into Activities (sell_date, product) values ('2020-06-02', 'Mask')
insert into Activities (sell_date, product) values ('2020-05-30', 'T-Shirt')

--1565
Create table If Not Exists Orders (order_id int, order_date date, customer_id int, invoice int)
Truncate table Orders
insert into Orders (order_id, order_date, customer_id, invoice) values ('1', '2020-09-15', '1', '30')
insert into Orders (order_id, order_date, customer_id, invoice) values ('2', '2020-09-17', '2', '90')
insert into Orders (order_id, order_date, customer_id, invoice) values ('3', '2020-10-06', '3', '20')
insert into Orders (order_id, order_date, customer_id, invoice) values ('4', '2020-10-20', '3', '21')
insert into Orders (order_id, order_date, customer_id, invoice) values ('5', '2020-11-10', '1', '10')
insert into Orders (order_id, order_date, customer_id, invoice) values ('6', '2020-11-21', '2', '15')
insert into Orders (order_id, order_date, customer_id, invoice) values ('7', '2020-12-01', '4', '55')
insert into Orders (order_id, order_date, customer_id, invoice) values ('8', '2020-12-03', '4', '77')
insert into Orders (order_id, order_date, customer_id, invoice) values ('9', '2021-01-07', '3', '31')
insert into Orders (order_id, order_date, customer_id, invoice) values ('10', '2021-01-15', '2', '20')

--1407
Create Table If Not Exists Users (id int, name varchar(30))
Create Table If Not Exists Rides (id int, user_id int, distance int)
Truncate table Users
insert into Users (id, name) values ('1', 'Alice')
insert into Users (id, name) values ('2', 'Bob')
insert into Users (id, name) values ('3', 'Alex')
insert into Users (id, name) values ('4', 'Donald')
insert into Users (id, name) values ('7', 'Lee')
insert into Users (id, name) values ('13', 'Jonathan')
insert into Users (id, name) values ('19', 'Elvis')
Truncate table Rides
insert into Rides (id, user_id, distance) values ('1', '1', '120')
insert into Rides (id, user_id, distance) values ('2', '2', '317')
insert into Rides (id, user_id, distance) values ('3', '3', '222')
insert into Rides (id, user_id, distance) values ('4', '7', '100')
insert into Rides (id, user_id, distance) values ('5', '13', '312')
insert into Rides (id, user_id, distance) values ('6', '19', '50')
insert into Rides (id, user_id, distance) values ('7', '7', '120')
insert into Rides (id, user_id, distance) values ('8', '19', '400')
insert into Rides (id, user_id, distance) values ('9', '7', '230')

--1069
--1251
--1068
--1173
--1179
--511
--1661
--613
--595
--1435
--1327
--627
--1148
--1527
--586
--1677
--1280
--584
--1082
--1511
--1633
--1050
--1517
--577
--1211
--620
--610
--1543
--1241
--1294
--1075
--603
--1113
--607
--1667
--182
--175
--181
--1322
--183
--1607
--512
--1084
--1141
--1076
--1495
--1083
--619
--196
--597
--197
--596
--1142
--176
--1445
--1393
--1270
--1308
--1285
--1699
--1596
--1398
--1421
--1709
--1468
--534
--1715
--1364
--1077
--1440
--1355
--1532
--1613
--1112
--1204
--1321
--1264
--1193
--608
--1126
--1045
--1164
--570
--1549
--626
--1459
--1158
--1174
--612
--1501
--1341
--1212
--602
--585
--1555
--574
--580
--1070
--178
--1149
--550
--1205
--1107
--1098
--180
--578
--184
--1454
--1132
--177
--614
--1479
--1369
--1651
--1412
--1384
--1225
--569
--618
--1097
--1635
--1159
--1194
--615
--1127
--1336
--571
--601
--1645
--579
--185
--262
