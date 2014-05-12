<!-- ## Show the terminal output here.  -->
Paired on this with Hunter Chapman



Last login: Sat May 10 14:23:43 on ttys000 
christophersmbp:~ aubuchcl$ cd code 
christophersmbp:code aubuchcl$ ls 
aubuchcl.github.io my-first-repo phase_0_unit_1 phase_0_unit_3 ssh 
gps1.html p0_unit1_submission phase_0_unit_2 railsbridge 
christophersmbp:code aubuchcl$ cd phase_0_unit_3 
christophersmbp:phase_0_unit_3 aubuchcl$ cd phase 
.DS_Store .git/ README.md references/ resources.md week_7/ week_8_and_9/ 
christophersmbp:phase_0_unit_3 aubuchcl$ cd phase week_8_and_9/ 
-bash: cd: phase: No such file or directory 
christophersmbp:phase_0_unit_3 aubuchcl$ cd week_8_and_9 
christophersmbp:week_8_and_9 aubuchcl$ ls 
1_git_started 3_JavaScript 5_SQL 7_cultural_blogs readme.md 
2_HTML_CSS 4_Ruby 6_technical_blog.md 8_cohort_bonding.md 
christophersmbp:week_8_and_9 aubuchcl$ cd 5_SQL 
christophersmbp:5_SQL aubuchcl$ ls 
SQLite_gem your_own_db 
christophersmbp:5_SQL aubuchcl$ cd your_own_db 
christophersmbp:your_own_db aubuchcl$ ls 
my_database.db my_reflection.md my_schema.md my_solution.md readme.md 
christophersmbp:your_own_db aubuchcl$ subl . 
christophersmbp:your_own_db aubuchcl$ sqlite3 my_database.db 
-- Loading resources from /Users/aubuchcl/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21 
Enter ".help" for instructions 
Enter SQL statements terminated with a ";" 
sqlite> CREATE TABLE customers { 
...> } 
...> ; 
Error: unrecognized token: "{" 
sqlite> CREATE TABLE users ( 
...> id INTEGER PRIMARY KEY AUTOINCREMENT, 
...> first_name VARCHAR(64) NOT NULL, 
...> last_name VARCHAR(64) NOT NULL, 
...> email VARCHAR(128) UNIQUE NOT NULL, 
...> created_at DATETIME NOT NULL, 
...> updated_at DATETIME NOT NULL 
...> ); 
sqlite> CREATE TABLE orders ( 
...> id INTEGER PRIMARY KEY AUTOINCREMENT, 
...> customer_id VARCHAR(64) NOT NULL, 
...> order_number INTEGER NOT NULL, 
...> total INTEGER NOT NULL, 
...> shipping_address VARCHAR(64) NOT NULL, 
...> created_at DATETIME NOT NULL, 
...> updated_at DATETIME NOT NULL 
...> ); 
sqlite> .schema 
CREATE TABLE orders ( 
id INTEGER PRIMARY KEY AUTOINCREMENT, 
customer_id VARCHAR(64) NOT NULL, 
order_number INTEGER NOT NULL, 
total INTEGER NOT NULL, 
shipping_address VARCHAR(64) NOT NULL, 
created_at DATETIME NOT NULL, 
updated_at DATETIME NOT NULL 
); 
CREATE TABLE users ( 
id INTEGER PRIMARY KEY AUTOINCREMENT, 
first_name VARCHAR(64) NOT NULL, 
last_name VARCHAR(64) NOT NULL, 
email VARCHAR(128) UNIQUE NOT NULL, 
created_at DATETIME NOT NULL, 
updated_at DATETIME NOT NULL 
); 
sqlite> INSERT INTO users 
...> (first_name, last_name, email, created_at, updated_at) 
...> VALUES 
...> ('Chris', 'Aubuchon', 'aubuchcl@gmail.com', DATETIME('now'), DATETIME('now')), 
...> ('Hunter', 'Chapman', 'bootcoder@gmail.com', DATETIME('now'), DATETIME('now')), 
...> ('Bob', 'Dole', 'bobdole@gmail.com', DATETIME('now'), DATETIME('now')), 
...> ('Bill', 'Clinton', 'itwasntme@gmail.com', DATETIME('now'), DATETIME('now')), 
...> ('George', 'Bush', 'bushism@gmail.com', DATETIME('now'), DATETIME('now')); 
sqlite> SELECT * FROM users; 
id first_name last_name email created_at updated_at 
---------- ---------- ---------- ------------------ ------------------- ------------------- 
1 Chris Aubuchon aubuchcl@gmail.com 2014-05-10 21:42:53 2014-05-10 21:42:53 
2 Hunter Chapman bootcoder@gmail.co 2014-05-10 21:42:53 2014-05-10 21:42:53 
3 Bob Dole bobdole@gmail.com 2014-05-10 21:42:53 2014-05-10 21:42:53 
4 Bill Clinton itwasntme@gmail.co 2014-05-10 21:42:53 2014-05-10 21:42:53 
5 George Bush bushism@gmail.com 2014-05-10 21:42:53 2014-05-10 21:42:53 
sqlite> INSERT INTO users 
...> (first_name, last_name, email, created_at, updated_at) 
...> VALUES 
...> ('Al', 'Gore', 'manbearpig@gmail.com', DATETIME('now'), DATETIME('now')), 
...> ('Ronald', 'Regan', 'bestprezever@gmail.com', DATETIME('now'), DATETIME('now')), 
...> ('Woodrow', 'Wilson', 'nointernet@gmail.com', DATETIME('now'), DATETIME('now')), 
...> ('Dwight', 'Eisenhower', 'whatsmicrosoft@gmail.com', DATETIME('now'), DATETIME('now')), 
...> ('Abe', 'Lincoln', 'honestabe@gmail.com', DATETIME('now'), DATETIME('now')); 
sqlite> SELECT * FROM users; 
id first_name last_name email created_at updated_at 
---------- ---------- ---------- ------------------ ------------------- ------------------- 
1 Chris Aubuchon aubuchcl@gmail.com 2014-05-10 21:42:53 2014-05-10 21:42:53 
2 Hunter Chapman bootcoder@gmail.co 2014-05-10 21:42:53 2014-05-10 21:42:53 
3 Bob Dole bobdole@gmail.com 2014-05-10 21:42:53 2014-05-10 21:42:53 
4 Bill Clinton itwasntme@gmail.co 2014-05-10 21:42:53 2014-05-10 21:42:53 
5 George Bush bushism@gmail.com 2014-05-10 21:42:53 2014-05-10 21:42:53 
6 Al Gore manbearpig@gmail.c 2014-05-10 21:49:22 2014-05-10 21:49:22 
7 Ronald Regan bestprezever@gmail 2014-05-10 21:49:22 2014-05-10 21:49:22 
8 Woodrow Wilson nointernet@gmail.c 2014-05-10 21:49:22 2014-05-10 21:49:22 
9 Dwight Eisenhower whatsmicrosoft@gma 2014-05-10 21:49:22 2014-05-10 21:49:22 
10 Abe Lincoln honestabe@gmail.co 2014-05-10 21:49:22 2014-05-10 21:49:22 
sqlite> .schema 
CREATE TABLE orders ( 
id INTEGER PRIMARY KEY AUTOINCREMENT, 
customer_id VARCHAR(64) NOT NULL, 
order_number INTEGER NOT NULL, 
total INTEGER NOT NULL, 
shipping_address VARCHAR(64) NOT NULL, 
created_at DATETIME NOT NULL, 
updated_at DATETIME NOT NULL 
); 
CREATE TABLE users ( 
id INTEGER PRIMARY KEY AUTOINCREMENT, 
first_name VARCHAR(64) NOT NULL, 
last_name VARCHAR(64) NOT NULL, 
email VARCHAR(128) UNIQUE NOT NULL, 
created_at DATETIME NOT NULL, 
updated_at DATETIME NOT NULL 
); 
sqlite> INSERT INTO orders 
...> (customer_id, order_number, total, shipping_address, created_at, updated_at) 
...> VALUES 
...> (1, 101, 105, '1600 West Penn AVE', DATETIME('now'), DATETIME('now')), 
...> (5, 203, 150, '1600 West Penn AVE', DATETIME('now'), DATETIME('now')), 
...> (3, 400, 125, '1600 West Penn AVE', DATETIME('now'), DATETIME('now')), 
...> (7, 600, 233, '1600 West Penn AVE', DATETIME('now'), DATETIME('now')), 
...> (8, 99, 215, '1600 West Penn AVE', DATETIME('now'), DATETIME('now')); 
sqlite> SELECT * FROM orders 
...> ; 
id customer_id order_number total shipping_address created_at updated_at 
---------- ----------- ------------ ---------- ------------------ ------------------- ------------------- 
1 1 101 105 1600 West Penn AVE 2014-05-10 21:58:51 2014-05-10 21:58:51 
2 5 203 150 1600 West Penn AVE 2014-05-10 21:58:51 2014-05-10 21:58:51 
3 3 400 125 1600 West Penn AVE 2014-05-10 21:58:51 2014-05-10 21:58:51 
4 7 600 233 1600 West Penn AVE 2014-05-10 21:58:51 2014-05-10 21:58:51 
5 8 99 215 1600 West Penn AVE 2014-05-10 21:58:51 2014-05-10 21:58:51 
sqlite> SELECT users.first_name, orders.order_number FROM users JOIN orders ON (orders.customer_id = users.id) 
...> ; 
first_name order_number 
---------- ------------ 
Chris 101 
George 203 
Bob 400 
Ronald 600 
Woodrow 99 
sqlite>