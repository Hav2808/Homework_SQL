--Данные в таблицу Performers

INSERT INTO performers(ID,name)
VALUES (1,'Dean Martin');
	
INSERT INTO performers(ID,name)
VALUES (2,'Би-2');
	
INSERT INTO performers(ID,name)
VALUES (3,'Excuse Me');
	
INSERT INTO performers(ID,name)
VALUES (4,'Sandra Amina');
	
INSERT INTO performers(ID,name)
VALUES (5,'Фактор-2');
	
INSERT INTO performers(ID,name)
VALUES (6,'Бутырка');
	
INSERT INTO performers(ID,name)
VALUES (7,'Группа DADO');
	
INSERT INTO performers(ID,name)
VALUES (8,'Banchi');
	
INSERT INTO performers(ID,name)
VALUES (9,'Khalifa');

INSERT INTO performers(ID,name)
VALUES (10,'Григорий Лепс');

INSERT INTO performers(ID,name)
VALUES (11,'Duce Gutta');

--Данные в таблицу Genres

INSERT INTO genres(ID,name)
VALUES (1,'Шансон');
	
INSERT INTO genres(ID,name)
VALUES (2,'Кантри');
	
INSERT INTO genres(ID,name)
VALUES (3,'Поп');
	
INSERT INTO genres(ID,name)
VALUES (4,'Classic');
	
INSERT INTO genres(ID,name)
VALUES (5,'Джаз');
	
INSERT INTO genres(ID,name)
VALUES (6,'Рок');

INSERT INTO genres(ID,name)
VALUES (7,'Рэп');

--Данные в таблицу Album

INSERT INTO album(ID, name, year_of_release)
VALUES (1, 'Би-2 live', 2000);
	
INSERT INTO album(ID, name, year_of_release)
VALUES (2, 'Питер, оркестр, Би-2…', 2015);
	
INSERT INTO album(ID, name, year_of_release)
VALUES (3, 'Уходило лето',2022);
	
INSERT INTO album(ID, name, year_of_release)
VALUES (4, 'Пацаны',2021);
	
INSERT INTO album(ID, name, year_of_release)
VALUES (5, 'Вернусь домой', 2014);

INSERT INTO album(ID, name, year_of_release)
VALUES (6, 'Икона',2005 );

INSERT INTO album(ID, name, year_of_release)
VALUES (7, 'Azeri Rap', 2015);

INSERT INTO album(ID, name, year_of_release)
VALUES (8, 'Hard Times for Dreamers', 2018);

INSERT INTO album(ID, name, year_of_release)
VALUES (9, 'Раритет', 2008);

INSERT INTO album(ID, name, year_of_release)
VALUES (10, 'The Homecoming', 2018);

INSERT INTO album(ID, name, year_of_release)
VALUES (11,  'The Homecoming', 2018);

	
INSERT INTO album(ID, name, year_of_release)
VALUES (12, 'Питер, оркестр, Би-2…', 2015);

INSERT INTO album(ID, name, year_of_release)
VALUES (13, 'Подмена понятий', 2021);

INSERT INTO album(ID, name, year_of_release)
VALUES (14, 'Unexpected', 2021);


UPDATE album 
SET year_of_release = 2020
WHERE ID = 3

ALTER TABLE album
ALTER COLUMN year_of_release TYPE INTEGER USING year_of_release::INTEGER; 


-- --Данные в таблицу Track

INSERT INTO track(ID,name, duration)
VALUES (1,'Полковнику Никто Не Пишет', '00:04:54');

UPDATE Track 
SET duration = 294
WHERE ID = 1
	
INSERT INTO track (ID,name, duration)
VALUES (2,'Варвара', '00:05:00');

UPDATE Track 
SET duration = 300
WHERE ID = 2

INSERT INTO track (ID,name, duration)
VALUES (3,'Деньги На Ветер', '00:06:34');

UPDATE Track 
SET duration = 394
WHERE ID = 3

INSERT INTO track (ID,name, duration)
VALUES (4,'For Stephenт', '00:02:06');

UPDATE Track 
SET duration = 126
WHERE ID = 4
	
INSERT INTO track (ID,name, duration)
VALUES (5,'Lionheart', '00:05:36');

UPDATE Track 
SET duration = 396
WHERE ID = 5

INSERT INTO track (ID,name, duration)
VALUES (6,'Let It Snow', '00:01:57');

UPDATE Track 
SET duration = 117
WHERE ID = 6

INSERT INTO track (ID,name, duration)
VALUES (7,'Mambo Italiano', '00:02:19');

UPDATE Track 
SET duration = 139
WHERE ID = 7

INSERT INTO track (ID,name, duration)
VALUES (8,'Return to Me', '00:02:21');

UPDATE Track 
SET duration = 141
WHERE ID = 8

INSERT INTO track (ID,name, duration)
VALUES (9,'One More Time', '00:05:24');

UPDATE Track 
SET duration = 324
WHERE ID = 9

INSERT INTO track (ID,name, duration)
VALUES (10,', Oran Pointe a Pitre', '00:07:18');

UPDATE Track 
SET duration = 438
WHERE ID = 10

INSERT INTO track (ID,name, duration)
VALUES (11,'One more dub', '00:05:29');

UPDATE Track 
SET duration = 329
WHERE ID = 11

INSERT INTO track (ID,name, duration)
VALUES (12,'Do not Make Me', '00:03:54');

UPDATE Track 
SET duration = 234
WHERE ID = 12

INSERT INTO track (ID,name, duration)
VALUES (13,'Cash Shit Freestyle', '00:01:45');

UPDATE Track 
SET duration = 105
WHERE ID = 13

INSERT INTO track (ID,name, duration)
VALUES (14,'Summer Is Cancelled', '00:02:22');

UPDATE Track 
SET duration = 142
WHERE ID = 14
	
	
INSERT INTO track (ID,name, duration)
VALUES (15,'Trap Back Jumpin', '00:03:20');

UPDATE Track 
SET duration = 200
WHERE ID = 15

INSERT INTO track (ID,name, duration)
VALUES (16,'Все будет хорошо', '00:02:30');

UPDATE Track 
SET duration = 150
WHERE ID = 16

INSERT INTO track (ID,name, duration)
VALUES (17,'Пацаны', '00:02:09');

UPDATE Track 
SET duration = 129
WHERE ID = 17

INSERT INTO track (ID,name, duration)
VALUES (18,'Ветеран', '00:04:38');

UPDATE Track 
SET duration = 278
WHERE ID = 18
	
INSERT INTO track (ID,name, duration)
VALUES (19,'Небеса', '00:05:52');

UPDATE Track 
SET duration = 352
WHERE ID = 19

INSERT INTO track (ID,name, duration)
VALUES (20,'Whispers', '00:03:54');

UPDATE Track 
SET duration = 234
WHERE ID = 20
	
INSERT INTO track (ID,name, duration)
VALUES (21,'Звонок', '00:03:33');

UPDATE Track 
SET duration = 213
WHERE ID = 21

INSERT INTO track (ID,name, duration)
VALUES (22,'Мой брат', '00:03:33');

UPDATE Track 
SET duration = 213
WHERE ID = 22

INSERT INTO track (ID,name, duration)
VALUES (23,'My Heart', '00:04:08');

UPDATE Track 
SET duration = 248
WHERE ID = 23

INSERT INTO track (ID,name, duration)
VALUES (24,'Трибунал', 188);

INSERT INTO track (ID,name, duration)
VALUES (25,'Тарантино', 335);


--Данные в таблицу Track  связь с таблицей Album

UPDATE Track 
SET Album_id = 1
WHERE ID = 1
		
UPDATE Track 
SET Album_id = 2
WHERE ID = 2
	
UPDATE Track 
SET Album_id = 4
WHERE ID = 17
	
UPDATE Track 
SET Album_id = 5
WHERE ID = 18

UPDATE Track 
SET Album_id = 3
WHERE ID = 16
	
UPDATE Track 
SET Album_id = 6
WHERE ID = 19
	
UPDATE Track 
SET Album_id = 7
WHERE ID = 12
	
UPDATE Track 
SET Album_id = 8
WHERE ID = 20
	
UPDATE Track 
SET Album_id = 9
WHERE ID = 21
	
UPDATE Track 
SET Album_id = 10
WHERE ID = 5
	
UPDATE Track 
SET Album_id = 11
WHERE ID = 4
	
UPDATE Track 
SET Album_id = 12
WHERE ID = 3
	
	
UPDATE Track 
SET Album_id = 13
WHERE ID = 24
	
UPDATE Track 
SET Album_id = 13
WHERE ID = 25
	
UPDATE Track 
SET Album_id = 14
WHERE ID = 13

ALTER TABLE track
ALTER COLUMN duration TYPE INTEGER USING duration::INTEGER; 
	
		
--Данные в таблицу Collection
	
INSERT INTO collection(ID,name, year_of_release)
VALUES (1,'Сборник № 1', 2002);
	
INSERT INTO collection(ID,name, year_of_release)
VALUES (2,'Сборник № 2', 2004);

INSERT INTO collection(ID,name, year_of_release)
VALUES (3,'Сборник № 3', 2006);

INSERT INTO collection(ID,name, year_of_release)
VALUES (4,'Сборник № 4', 2008);

INSERT INTO collection(ID,name, year_of_release)
VALUES (5,'Сборник № 5', 2010);

INSERT INTO collection(ID,name, year_of_release)
VALUES (6,'Сборник № 6', 2012);

INSERT INTO collection(ID,name, year_of_release)
VALUES (7,'Сборник № 7', 2014);

INSERT INTO collection(ID,name, year_of_release)
VALUES (8,'Сборник № 8', 2016);

INSERT INTO collection(ID,name, year_of_release)
VALUES (9,'Сборник № 9', 2018);

INSERT INTO collection(ID,name, year_of_release)
VALUES (10,'Сборник № 10', 2020);

INSERT INTO collection(ID,name, year_of_release)
VALUES (11,'Сборник № 11', 2022);

ALTER TABLE collection
ALTER COLUMN year_of_release TYPE INTEGER USING year_of_release::INTEGER; 


--Данные в таблицу Collection_track

INSERT INTO collection_track(track_id, collection_id)
VALUES (1,1);

INSERT INTO collection_track(track_id, collection_id)
VALUES (2,1);

INSERT INTO collection_track(track_id, collection_id)
VALUES (3,1);

INSERT INTO collection_track(track_id, collection_id)
VALUES (4,2);

INSERT INTO collection_track(track_id, collection_id)
VALUES (5,3);

INSERT INTO collection_track(track_id, collection_id)
VALUES (6,7);

INSERT INTO collection_track(track_id, collection_id)
VALUES (7,6);

INSERT INTO collection_track(track_id, collection_id)
VALUES (8,9);

INSERT INTO collection_track(track_id, collection_id)
VALUES (9,10);

INSERT INTO collection_track(track_id, collection_id)
VALUES (10,10);

INSERT INTO collection_track(track_id, collection_id)
VALUES (11,9);

INSERT INTO collection_track(track_id, collection_id)
VALUES (12,10);

INSERT INTO collection_track(track_id, collection_id)
VALUES (13,7);

INSERT INTO collection_track(track_id, collection_id)
VALUES (14,8);

INSERT INTO collection_track(track_id, collection_id)
VALUES (15,10);

INSERT INTO collection_track(track_id, collection_id)
VALUES (15,10);

INSERT INTO collection_track(track_id, collection_id)
VALUES (18,7);

INSERT INTO collection_track(track_id, collection_id)
VALUES (19,7);

INSERT INTO collection_track(track_id, collection_id)
VALUES (20,9);

INSERT INTO collection_track(track_id, collection_id)
VALUES (21,4);

INSERT INTO collection_track(track_id, collection_id)
VALUES (16,4);

INSERT INTO collection_track(track_id, collection_id)
VALUES (17,5);


-- Данные в таблицу Реrformers_album (исполнители - альбом)


INSERT INTO performers_album(album_id, performers_id)
VALUES (1,2);

INSERT INTO performers_album(album_id, performers_id)
VALUES (2,2);

INSERT INTO performers_album(album_id, performers_id)
VALUES (3,1);

INSERT INTO performers_album(album_id, performers_id)
VALUES (4,1);

INSERT INTO performers_album(album_id, performers_id)
VALUES (5,6);

INSERT INTO performers_album(album_id, performers_id)
VALUES (6,6);

INSERT INTO performers_album(album_id, performers_id)
VALUES (7,7);

INSERT INTO performers_album(album_id, performers_id)
VALUES (8,9);

INSERT INTO performers_album(album_id, performers_id)
VALUES (9,5);

INSERT INTO performers_album(album_id, performers_id)
VALUES (10,3);

INSERT INTO performers_album(album_id, performers_id)
VALUES (13,10);


INSERT INTO performers_album(album_id, performers_id)
VALUES (14,11);


-- genres_performers (жанр - исполнитель)

INSERT INTO genres_performers(genres_id, performers_id)
VALUES (1,5);

INSERT INTO genres_performers(genres_id, performers_id)
VALUES (1,6);

INSERT INTO genres_performers(genres_id, performers_id)
VALUES (2,7);

INSERT INTO genres_performers(genres_id, performers_id)
VALUES (3,8);

INSERT INTO genres_performers(genres_id, performers_id)
VALUES (3,9);

INSERT INTO genres_performers(genres_id, performers_id)
VALUES (5,3);

INSERT INTO genres_performers(genres_id, performers_id)
VALUES (5,4);

INSERT INTO genres_performers(genres_id, performers_id)
VALUES (6,1);

INSERT INTO genres_performers(genres_id, performers_id)
VALUES (6,2);

INSERT INTO genres_performers(genres_id, performers_id)
VALUES (1,10);

INSERT INTO genres_performers(genres_id, performers_id)
VALUES (7,10);

INSERT INTO genres_performers(genres_id, performers_id)
VALUES (7,11);
















