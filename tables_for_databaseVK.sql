-- Домашняя работа 3
-- Выполнил Лаптев Сергей Федорович

DROP TABLE IF EXISTS games;
CREATE TABLE games(
	id SERIAL PRIMARY KEY,
    game_name VARCHAR(255),
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);

DROP TABLE IF EXISTS user_games;
CREATE TABLE user_games(
	user_id BIGINT UNSIGNED NOT NULL,
	game_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (user_id, game_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (game_id) REFERENCES games(id)
);

DROP TABLE IF EXISTS goods;
CREATE TABLE goods(
	article SERIAL primary key,
	item_name varchar(50),
	buyer_id BIGINT UNSIGNED NOT NULL,
	item_count BIGINT UNSIGNED NOT NULL,
	buy_date DATETIME DEFAULT NOW(),
  
    FOREIGN KEY (buyer_id) REFERENCES users(id)
);