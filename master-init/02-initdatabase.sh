echo "hallo sayang.. sudah malam jam `date`"
mysql -uroot -p${MYSQL_ROOT_PASSWORD} <<@@
-- prepare database demo 
create database demo;
use demo; 
create table test (id int auto_increment primary key, nama varchar(200));
insert into test (nama) values('Madafakaa');
-- end of prepare databae demo 

-- create user 'slaveuser'@'%' identified by 'rahasia'; 
-- grant replication slave on *.* to 'slaveuser'@'%'; 
CREATE USER 'replicauser'@'%' IDENTIFIED WITH mysql_native_password BY 'rahasia';
grant replication slave on *.* to 'replicauser'@'%';
flush privileges; 
@@