 CREATE TABLE characters (
 id INTEGER PRIMARY KEY,
 name TEXT,
 motto TEXT,
 species TEXT,
 author_id INT,
 series_id INT
 );

 CREATE TABLE books (
 id INTEGER PRIMARY KEY,
 title TEXT,
 year INT,
 series_id INT
 );

 CREATE TABLE series (
 id INTEGER PRIMARY KEY,
 title TEXT,
 author_id INT,
 subgenre_id INT
 );

 CREATE TABLE authors (
 id INTEGER PRIMARY KEY,
 name TEXT
 );

CREATE TABLE subgenres (
id INTEGER PRIMARY KEY,
name TEXT
);

 CREATE TABLE character_books (
 id INTEGER PRIMARY KEY,
 character_id INT,
 book_id INT
 );