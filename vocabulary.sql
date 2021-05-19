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
PRIMARY KEY (word)
);

CREATE TABLE Reader (
username VARCHAR2(20),
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

INSERT 
INTO   Material (title, author, type)
VALUES ('The Knife of Never Letting Go', 'Patrick Ness', 'YA Novel');

INSERT 
INTO   Word (word, definition, language, partOfSpeech)
VALUES ('weir', 'a small dam in a river or stream', 'English', 'noun');

INSERT
INTO Reader (username)
VALUES ('kitkathrina');

INSERT
INTO Contains (sentence, title, word)
VALUES ('Viola says as we stop for a quick lunch, leaning on some rocks overlooking a natural weir', 'The Knife of Never Letting Go', 'weir');

INSERT
INTO Learns (userame, word, learnedDate)
VALUES ('kitkathrina', 'weir', )