Тема “Сложные запросы”
1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в
интернет магазине.
*/
select name, user_id
from users, orders 
where users.id = orders.user_id 
group by name;

/*
2. Выведите список товаров products из разделов catalogs, который соответствует товару.
*/
select catalogs.name, products.name 
from catalogs, products 
where catalogs.id = products.catalog_id;