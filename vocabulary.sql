----------------------- DROP TABLE STATEMENTS ----------------------- 

DROP TABLE Learns;
DROP TABLE Contains;
DROP TABLE Reader;
DROP TABLE Word;
DROP TABLE Material;

----------------------- CREATE TABLE STATEMENTS ----------------------- 

CREATE TABLE Material (
title VARCHAR2(50),
author VARCHAR2(50),
type VARCHAR2(20),
PRIMARY KEY (title)
);

CREATE TABLE Word (
word VARCHAR2(20),
definition VARCHAR2(250),
language VARCHAR2(20),
partOfSpeech VARCHAR2(20),
pronunciation VARCHAR2(50),
PRIMARY KEY (word)
);

CREATE TABLE Reader (
username VARCHAR2(20),
password VARCHAR2(50),
PRIMARY KEY (username)
);

CREATE TABLE Contains (
sentence VARCHAR2(250),
title VARCHAR2(50),
word VARCHAR2(20),
PRIMARY KEY (title, word),
FOREIGN KEY (title) REFERENCES Material,
FOREIGN KEY (word) REFERENCES Word
);

CREATE TABLE Learns (
learnedDate DATE,
sentence VARCHAR2(20),
username VARCHAR2(20),
word VARCHAR2(20),
PRIMARY KEY (word, username),
FOREIGN KEY (username) REFERENCES Reader,
FOREIGN KEY (word) REFERENCES Word
);

----------------------- GRANT STATEMENTS ----------------------- 

GRANT ALL PRIVILEGES ON Material TO Public;
GRANT ALL PRIVILEGES ON Word TO Public;
GRANT ALL PRIVILEGES ON Reader TO Public;
GRANT ALL PRIVILEGES ON Contains TO Public;
GRANT ALL PRIVILEGES ON Learns TO Public;


----------------------- INSERT STATEMENTS ----------------------- 

NSERT 
INTO   Material (title, author, type)
VALUES ('The Knife of Never Letting Go', 'Patrick Ness', "YA Novel");

