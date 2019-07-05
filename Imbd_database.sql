-- creates database imbd_data
DROP DATABASE IF EXISTS imbd_data;
CREATE DATABASE imbd_data;
USE imbd_data;

-- creates table Movie
CREATE TABLE Movie	( 
		ID			int			primary key not null auto_increment,
        Title		varchar(50)	not null,
        Rating		varchar(6) 	not null,
        Year		int			not null,
        Director	varchar(50)	not null
        );

-- creates table Actor
CREATE TABLE Actor	(
		ID			int			primary key not null auto_increment,
        FirstName	varchar(25)	not null,
		LastName	varchar(25) not null,
        Gender		varchar(6)	not null
        );
        
-- creates table Genre 
CREATE TABLE Genre	(
		ID			int			primary key not null auto_increment,
        Name		varchar(25)	not null
        );
        
-- creates table Credit
CREATE TABLE Credit	(
		ID			int			primary key not null auto_increment,
        MovieID		int			not null,
        ActorID		int			not null,
        Role		varchar(25)	not null,

        Foreign key (MovieID) REFERENCES Movie(ID),
        FOREIGN KEY (ActorID) REFERENCES Actor(ID),
        CONSTRAINT act_mov unique (ActorID, MovieID)
        );

-- creates table MovieGenre
CREATE TABLE MOVIEGENRE(
		ID			int			primary key not null auto_increment,
        MovieID		int			not null,
        GenreID		int			not null,
        
        foreign key (MovieID) references Movie(ID),
        foreign key (GenreID) references Genre(ID)
        );
        
-- insert Actor data
INSERT INTO Actor (FirstName, LastName, Gender)
VALUES	('Angella', 'Bassett', 'Female'),
		('Morris', 'Chestnut', 'Male'),
        ('Lawrence', 'Fishburne', 'Male'),
        ('Cuba', 'Gooding', 'Male'),
        ('Regina', 'King', 'Female'),
        ('Nia', 'Long', 'Female'),
        ('Eddie', 'Murphy', 'Male'),
        ('James', 'Jones', 'Male'),
        ('Arsenio', 'Hall', 'Male'),
        ('Samuel', 'Jackson', 'Male'),
        ('Ice', 'Cube', 'Male'),
        ('Chris', 'Tucker', 'Male'),
        ('Tommie', 'Lister', 'Male'),
        ('John', 'Witherspoon', 'Male');
        
	INSERT INTO Movie (Title, Rating, Year, Director)
    VALUES	('Boyz N The Hood', 'R', 1991, 'John Singleton'),
			('Coming to America', 'R', 1998, 'John Landis'),
            ('Friday', 'R', 1995, 'Gary Gray');
            
	INSERT INTO Genre (Name)
    VALUES	('Adventure'),
			('Comedy'),
            ('Crime'),
            ('Drama'),
            ('Fantasy'),
            ('Historical'),
            ('Historical fiction'),
            ('Horror'),
            ('Magical realism'),
            ('Mystery'),
            ('Paranoid Fiction'),
            ('Philosophical'),
            ('Political'),
            ('Romance'),
            ('Saga'),
            ('Satire'),
            ('Science fiction'),
            ('Social'),
            ('Speculative'),
            ('Thriller'),
            ('Urban'),
            ('Western');
		
        
	INSERT INTO Credit (MovieID, ActorID, Role)
	VALUES		(1, 1, 'Reeva Styles'),
				(1, 2, 'Ricky Baker'),
                (1, 12, 'Doughboy'),
                (1, 3, 'Furious Styles'),
                (1, 4, 'Tre Styles'),
                (1, 5, 'Shalika'),
                (1, 6, 'Brandi'),
                (2, 7, 'Prince Akeem'),
                (2, 8, 'King Joffee'),
                (2, 9, 'Semmi'),
                (2, 11, 'Hold up man'),
                (2, 4, 'Boy getting haircut'),
                (3, 11, 'Craig Jones'),
                (3, 12, 'Smokey'),
                (3, 6, 'Debbie'),
                (3, 13, 'Deebo'),
                (3, 14, 'Mr.Jones'),
                (3, 5, 'Dana Jones');
                
	INSERT INTO MOVIEGENRE (MovieID, GenreID)
    VALUES		(1,3),
				(1,4),
                (2,2),
                (2,14),
                (3,2),
                (3,4);
                
	
				
        
        


