mysql -uroot -p${MYSQL_ROOT_PASSWORD} <<@@
-- prepare database demo 
create database demo;
use demo; 
create table test (id int auto_increment primary key, nama varchar(200));
insert into test (nama) values('Madafakaa');
-- end of prepare databae demo 

-- CHANGE MASTER TO MASTER_HOST='mysqlmaster',master_user='replicauser',master_password='rahasia',master_log_file='mysql-bin.000003',master_log_pos=156;
-- flush privileges;
-- START REPLICA; 
@@