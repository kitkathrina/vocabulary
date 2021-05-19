DROP TABLE Learns;
DROP TABLE Contains;
DROP TABLE Reader;
DROP TABLE Word;
DROP TABLE Material;

CREATE TABLE Material (
title VARCHAR2(50),
author VARCHAR2(50),
type VARCHAR2(20),
PRIMARY KEY (title)
);

GRANT ALL PRIVILEGES ON Material TO Public;

CREATE TABLE Word (
word VARCHAR2(20),
definition VARCHAR2(250),
language VARCHAR2(20),
partOfSpeech VARCHAR2(20),
pronunciation VARCHAR2(50),
PRIMARY KEY (word)
);

GRANT ALL PRIVILEGES ON Word TO Public;

CREATE TABLE Reader (
username VARCHAR2(20),
password VARCHAR2(50),
PRIMARY KEY (username)
);

GRANT ALL PRIVILEGES ON Reader TO Public;

CREATE TABLE Contains (
sentence VARCHAR2(250),
title VARCHAR2(50),
word VARCHAR2(20),
PRIMARY KEY (title, word),
FOREIGN KEY (title) REFERENCES Material,
FOREIGN KEY (word) REFERENCES Word
);

GRANT ALL PRIVILEGES ON Contains TO Public;

CREATE TABLE Learns (
learnedDate DATE,
sentence VARCHAR2(20),
username VARCHAR2(20),
word VARCHAR2(20),
PRIMARY KEY (word, username),
FOREIGN KEY (username) REFERENCES Reader,
FOREIGN KEY (word) REFERENCES Word
);

GRANT ALL PRIVILEGES ON Learns TO Public;

NSERT 
INTO   Material (title, author, type)
VALUES ('The Knife of Never Letting Go', 'Patrick Ness', "YA Novel");