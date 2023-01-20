--название и год выхода альбомов, вышедших в 2018 году;
SELECT name, year_of_release FROM album
WHERE year_of_release = 2018
	
--название и продолжительность самого длительного трека
SELECT name,duration FROM track
WHERE duration in (select max(duration) from track)
	
--название треков, продолжительность которых не менее 3,5 минуты;
SELECT name, duration FROM track
WHERE duration <= 210
	
--названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT name, year_of_release FROM collection
WHERE year_of_release >= 2018  and  year_of_release <= 2020
	
--исполнители, чье имя состоит из 1 слова;
SELECT name FROM Performers
WHERE name not like '% %'
	
--название треков, которые содержат слово "мой"/"my"
SELECT name FROM track
WHERE name like '%my%' or name like '%My%' or name like '%Мой%' or name like '%мой%';

SELECT g.name, genres_id FROM genres g
LEFT JOIN genres_performers gp ON g.id = performers_id

SELECT title, rental_rate FROM film
WHERE rental_rate < (SELECT MAX(rental_rate) FROM film)
ORDER BY rental_rate DESC;

-- 1) Количество исполнителей в каждом жанре;
SELECT g.name, COUNT(genres_id) FROM genres_performers gs
JOIN genres g ON g.id = gs.genres_id
GROUP BY g.name

-- 2) Количество треков, вошедших в альбомы 2019-2020 годов;

SELECT COUNT(t.id) AS Number_of_tracks, a.year_of_release FROM track t
LEFT JOIN album a  ON a.id = t.album_id
WHERE a.year_of_release >= 2019 and  a.year_of_release <= 2020
GROUP BY a.year_of_release

-- 3) Cредняя продолжительность треков по каждому альбому

SELECT a.name, AVG(t.duration) FROM track t
JOIN album a  ON a.id = t.album_id
GROUP BY a.name


-- 4) все исполнители, которые не выпустили альбомы в 2020 году;

SELECT t.name, a.year_of_release FROM track t
JOIN album a  ON a.id = t.album_id
WHERE a.year_of_release != (SELECT year_of_release FROM album
							WHERE  year_of_release = 2020
                        	);
GROUP BY t.name, a.year_of_release;

-- 5) сборников, в которых присутствует конкретный исполнитель (выберите сами)

SELECT c.name, p.name FROM collection c
JOIN collection_track ct ON ct.collection_id = c.id
JOIN track t ON t.id = ct.track_id
JOIN album a ON a.id = t.album_id 
JOIN performers_album pa ON pa.album_id = a.id
JOIN performers p ON p.id = pa.performers_id
WHERE p.name = 'Юность'
GROUP BY c.name, p.name;


-- 6) название альбомов, в которых присутствуют исполнители более 1 жанра;

SELECT a.name, p.name, COUNT(gp.performers_id) AS number_of_genres FROM album a
JOIN performers_album pa ON pa.album_id = a.id
JOIN performers p ON p.id = pa.performers_id
JOIN genres_performers gp ON gp.performers_id = p.id
GROUP BY a.name, p.name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;

--7) наименование треков, которые не входят в сборники;

SELECT t.name  FROM track t
LEFT JOIN collection_track ct ON ct.collection_id =t.id
WHERE ct.collection_id IS NULL;

-- 8) исполнителя(-ей), написавшего самый короткий по продолжительности трек 
--(теоретически таких треков может быть несколько);

SELECT p.name, t.duration FROM performers p
JOIN performers_album pa ON pa.performers_id = p.id
JOIN album a ON a.id = pa.album_id
JOIN track t ON t.album_id = a.id
WHERE duration = (SELECT MIN(duration) FROM track);


--9) название альбомов, содержащих наименьшее количество треков.

SELECT a.name, COUNT(t.name) FROM album a
INNER JOIN track t on t.album_id = a.id 
GROUP BY a.name
HAVING COUNT(t.name) = (SELECT COUNT(t.name) AS c FROM album a
                        INNER JOIN track t on t.album_id = a.id 
                        GROUP BY a.name ORDER BY c LIMIT 1);

