USE albums_db;
SHOW CREATE TABLE albums;
SELECT DISTINCT  artist
FROM albums;
SELECT * FROM albums WHERE release_date <1970 ;
SELECT * FROM albums WHERE artist = "Pink Floyd" ;
SELECT release_date FROM albums WHERE name = "Sgt. Pepper's Lonely Hearts Club Band" ;
SELECT genre FROM albums WHERE name = "Nevermind" ;
SELECT * FROM albums WHERE release_date >1990;
SELECT * FROM albums WHERE sales <20;
SELECT * FROM albums WHERE genre = "rock";
-- 3a.) There are 31 rows in this table.
-- 3b.) There are 23 unique artist names in the table.
-- 3c.) The "id" is the primary key for this table.
-- 3d.) The oldest release date in this table is 1967
-- 4a.) "The Dark Side of the Moon" and "The Wall."
-- 4b.) 1967
-- 4c.) "Grunge, Alternative rock"
-- 4d.) id 5, 12, 13, 14, 18, 19, 20, 21, 26, 27, 28, 30
-- 4e.) id 9, 11, 15, 17, 19, 21, 22, 23, 24, 25, 26, 28, 29
-- 4f.) id 15, 20, 23, 24, 30; Because they dont have the same name, slightly different genres.