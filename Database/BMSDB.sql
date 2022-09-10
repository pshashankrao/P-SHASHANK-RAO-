


mysql> create table club(C_id int auto_increment,C_name varchar(20));

mysql>  create table student(S_id int primary key,S_name varchar(30),Contact long,Address varchar(50),Clubing_id int,Pick_up_location varchar(40),foreign key(Clubing_id) references club(C_id));

mysql> insert into club values(1,'Hadpasar');

mysql> insert into club values(2,'Swargate');


mysql> create table bus(B_no int primary key auto_increment,RTO_no varchar(12) unique);

mysql> create table leaves(S_id int,Leave_date date,foreign key(S_id) references student(S_id));

mysql> create table driver(D_no int primary key auto_increment,D_name varchar(30),Contact long,Address varchar(40),License_No int);

mysql> create table clubing(B_no int,C_id int,S_id int,D_no int,date date,foreign key(C_id) references club(C_id),foreign key(S_id) references student(S_id),foreign key(D_no) references driver(D_no),foreign key(B_no) references bus(B_no));

mysql>create table dleaves(D_no int,Leave_date date,foreign key(D_no) references driver(D_no));