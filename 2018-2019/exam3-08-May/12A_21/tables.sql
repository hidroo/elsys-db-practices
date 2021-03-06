DROP DATABASE IF EXISTS instagram;
CREATE DATABASE instagram;
USE instagram;

CREATE TABLE users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) UNIQUE,
    number_of_likes_on_own_post INT UNSIGNED NOT NULL
);

CREATE TABLE posts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) UNIQUE,
    user_id INT UNSIGNED NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE likes (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL,
	post_id INT UNSIGNED NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
);
