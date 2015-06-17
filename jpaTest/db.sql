drop table if exists addrs;
drop table if exists users;

drop table if exists hibernate_sequences;
create table hibernate_sequences(id int primary key default 0,sequence_next_hi_value int,sequence_name varchar(20));
create table users(id int primary key auto_increment,uname varchar(10),age int);
create table addrs(id int primary key auto_increment,addrName varchar(10),u_id int);

select * from users;
