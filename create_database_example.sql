use example;
drop table if exists users;
create table users (
 id SERIAL primary key,
 name varcharacter(255) unique);
 
describe users;