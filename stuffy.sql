-- create and select the database
DROP DATABASE IF EXISTS stuffy;
CREATE DATABASE stuffy;
USE stuffy;

-- create the stuffy table
CREATE TABLE stuffy (
	ID			INT				PRIMARY KEY  AUTO_INCREMENT,
    Type		VARCHAR(50)		NOT NULL,  
    Color		VARCHAR(50)		NOT NULL,
    Size		VARCHAR(50)		NOT NULL,
    Limbs		INT				NOT NULL
    );
    
    
INSERT INTO stuffy VALUES
(1, "Dog", "Blue", "Large", 4),
(2, "Cat", "Green", "Small", 4),
(3, "Dragon", "Purple", "Medium", 6),
(4, "Snail", "Yellow", "X-Large", 1),
(5, "Platypus", "Blue", "Medium", 4),
(6, "Octopus", "Purple", "Large", 8),
(7, "Squirrel", "Brown", "Small", 4),
(8, "Starfish", "Pink", "X-Large", 5),
(9, "Lobster", "Red", "Large", 10),
(10, "Spider", "Clear", "Small", 8);

-- create a user and grant privileges to that user
CREATE USER 'stuffy_user'@'%' IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON stuffy.* TO stuffy_user@localhost;

