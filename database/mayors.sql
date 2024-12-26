--
-- File generated with SQLiteStudio v3.4.12 on Чт дек 26 19:02:53 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: deals
CREATE TABLE IF NOT EXISTS deals (mayor TEXT REFERENCES mayors (surname) NOT NULL, imagined TEXT NOT NULL, idate INTEGER, personality TEXT REFERENCES historymen (personality), historical TEXT, hdate INTEGER, source TEXT);
INSERT INTO deals (mayor, imagined, idate, personality, historical, hdate, source) VALUES ('Грустилов', 'Отличался нежностью и чувствительностью сердца', NULL, 'Карамзин', NULL, NULL, NULL);

-- Table: historymen
CREATE TABLE IF NOT EXISTS historymen (personality TEXT PRIMARY KEY, surname TEXT, name TEXT, patronymic TEXT, grade TEXT DEFAULT Император, country TEXT DEFAULT Россия, born INTEGER, dead INTEGER);
INSERT INTO historymen (personality, surname, name, patronymic, grade, country, born, dead) VALUES ('Карамзин', 'Карамзин', 'Николай', 'Михайлович', NULL, NULL, 1766, 1826);

-- Table: mayors
CREATE TABLE IF NOT EXISTS mayors ("order" INTEGER NOT NULL UNIQUE, surname TEXT PRIMARY KEY UNIQUE NOT NULL, name TEXT, patronymic TEXT, grade TEXT, pedigree TEXT, friend TEXT, end TEXT, date INTEGER);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (18, 'Дю-Шарио', 'Ангел', 'Дорофеевич', 'виконт', 'французский выходец', NULL, 'Оказался девицею. Выслан за границу', 1821);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (19, 'Грустилов', 'Эраст', 'Андреевич', 'статский советник', '', 'Карамзин', 'Умер от меланхолии', 1825);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (20, 'Угрюм-Бурчеев', NULL, NULL, 'бывший прохвост', NULL, NULL, NULL, NULL);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (21, 'Перехват-Залихватский', 'Архстратиг', 'Стратилатович', 'майор', NULL, NULL, NULL, NULL);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (16, 'Прыщ', 'Иван', 'Пантелеевич', 'майор', NULL, NULL, 'Оказался с фаршированной головой, в чем и уличен местным предводителем дворянства.', 1819);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (17, 'Иванов', 'Никодим', 'Осипович', 'статский советник', NULL, NULL, 'Умер от натуги, усиливаясь постичь некоторый сенатский указ.', 1819);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (15, 'Беневоленский', 'Феофилакт', 'Иринархович', 'статский советник', NULL, 'Сперанский', 'За потворство Бонапарту, был призван к ответу и сослан в заточение.', 1811);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (13, 'Негодяев', 'Онуфрий', 'Иванович', 'бывший гатчинский истопник', NULL, NULL, 'Сменен за несогласие с Новосильцевым, Чарторыйским и Строгоновым (знаменитый в свое время триумвират) насчет конституций, в чем его и оправдали последствия.', 1802);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (14, 'Микаладзе', 'Ксаверий', 'Геогргиевич', 'черкашенин', 'потомок сладострастной княгини Тамары', NULL, 'умер от истощения сил', 1814);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (12, 'Бородавкин', 'Василиск', 'Семенович', NULL, NULL, NULL, 'Умер на экзекуции, напутствуемый капитан-исправником.', 1798);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (11, 'Фердыщенко', 'Петр', 'Петрович', 'бригадир', 'бывший денщик князя Потёмкина', NULL, 'Умер от объедения.', 1779);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (10, 'Маркиз де Санглот', 'Антон', 'Протасьевич', NULL, 'французский выходец', 'Дидерот', 'За эту затею [летая по саду, зацепившись за здание] уволен, а в следующем же году, не уныв духом, давал представления у Излера на минеральных водах', 1772);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (9, 'Двоекуров', 'Семен', 'Константинович', 'штатский советник и кавалер', NULL, NULL, 'Умер своей смертью.', 1770);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
