DROP DATABASE IF EXISTS tumblr_db;
CREATE DATABASE tumblr_db;
USE tumblr_db;

CREATE TABLE Blog (
	id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    number_of_like int
);

CREATE TABLE User (
	id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE BlogPost (
	id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    blog_id int,
    
    PRIMARY KEY(id),
    FOREIGN KEY(blog_id) REFERENCES Blog(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Likes (
	id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    user_id int NOT NULL,
    blog_post_id int NOT NULL,
    
    PRIMARY KEY(id),
    FOREIGN KEY(blog_post_id) REFERENCES BlogPost(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
