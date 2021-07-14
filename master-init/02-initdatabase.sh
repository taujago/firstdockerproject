mysql -uroot -p${MYSQL_ROOT_PASSWORD} <<@@
-- prepare database demo 
create database demo;
use demo; 
create table test (id int auto_increment primary key, nama varchar(200));
insert into test (nama) values('Shaun the sheep');
-- end of prepare databae demo 

-- create user for replication 
CREATE USER 'replicauser'@'%' IDENTIFIED WITH mysql_native_password BY 'rahasia';
grant replication slave on *.* to 'replicauser'@'%';

-- create user for php application 
CREATE USER 'demo'@'%' IDENTIFIED WITH mysql_native_password BY 'rahasia';
grant all privileges on demo.* to 'demo'@'%';
flush privileges; 
@@