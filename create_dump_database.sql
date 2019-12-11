drop database if exists sample;
create database sample;
mysqldump example > example.sql;
mysql sample < example.sql;
use sample;
describe users;
