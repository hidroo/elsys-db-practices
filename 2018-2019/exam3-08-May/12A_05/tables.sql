DROP DATABASE IF EXISTS Instagram;
CREATE DATABASE Instagram;
USE  Instagram;

CREATE TABLE iUser(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username VARCHAR(20) UNIQUE NOT NULL,
    number_of_likes_on_own_posts INTEGER DEFAULT 0
);

CREATE TABLE iPost(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY(user_id) REFERENCES iUser(id)
);

CREATE TABLE iLikes(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	user_id INTEGER NOT NULL,
    post_id INTEGER NOT NULL,
	FOREIGN KEY(user_id) REFERENCES iUser(id),
    FOREIGN KEY(post_id) REFERENCES iPost(id)
);