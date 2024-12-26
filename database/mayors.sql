--
-- File generated with SQLiteStudio v3.4.12 on �� ��� 26 19:02:53 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: deals
CREATE TABLE IF NOT EXISTS deals (mayor TEXT REFERENCES mayors (surname) NOT NULL, imagined TEXT NOT NULL, idate INTEGER, personality TEXT REFERENCES historymen (personality), historical TEXT, hdate INTEGER, source TEXT);
INSERT INTO deals (mayor, imagined, idate, personality, historical, hdate, source) VALUES ('���������', '��������� ��������� � ����������������� ������', NULL, '��������', NULL, NULL, NULL);

-- Table: historymen
CREATE TABLE IF NOT EXISTS historymen (personality TEXT PRIMARY KEY, surname TEXT, name TEXT, patronymic TEXT, grade TEXT DEFAULT ���������, country TEXT DEFAULT ������, born INTEGER, dead INTEGER);
INSERT INTO historymen (personality, surname, name, patronymic, grade, country, born, dead) VALUES ('��������', '��������', '�������', '����������', NULL, NULL, 1766, 1826);

-- Table: mayors
CREATE TABLE IF NOT EXISTS mayors ("order" INTEGER NOT NULL UNIQUE, surname TEXT PRIMARY KEY UNIQUE NOT NULL, name TEXT, patronymic TEXT, grade TEXT, pedigree TEXT, friend TEXT, end TEXT, date INTEGER);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (18, '��-�����', '�����', '����������', '������', '����������� �������', NULL, '�������� �������. ������ �� �������', 1821);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (19, '���������', '�����', '���������', '�������� ��������', '', '��������', '���� �� ����������', 1825);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (20, '�����-�������', NULL, NULL, '������ ��������', NULL, NULL, NULL, NULL);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (21, '��������-������������', '����������', '�������������', '�����', NULL, NULL, NULL, NULL);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (16, '����', '����', '�����������', '�����', NULL, NULL, '�������� � ������������� �������, � ��� � ������ ������� ������������� ����������.', 1819);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (17, '������', '�������', '��������', '�������� ��������', NULL, NULL, '���� �� ������, ���������� ������� ��������� ��������� ����.', 1819);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (15, '�������������', '���������', '�����������', '�������� ��������', NULL, '����������', '�� ���������� ���������, ��� ������� � ������ � ������ � ���������.', 1811);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (13, '��������', '�������', '��������', '������ ���������� ��������', NULL, NULL, '������ �� ���������� � �������������, ������������ � ����������� (���������� � ���� ����� ����������) ������ �����������, � ��� ��� � ��������� �����������.', 1802);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (14, '���������', '��������', '�����������', '����������', '������� �������������� ������� ������', NULL, '���� �� ��������� ���', 1814);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (12, '����������', '��������', '���������', NULL, NULL, NULL, '���� �� ���������, ������������� �������-�����������.', 1798);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (11, '����������', '����', '��������', '��������', '������ ������ ����� ��������', NULL, '���� �� ���������.', 1779);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (10, '������ �� �������', '�����', '�����������', NULL, '����������� �������', '�������', '�� ��� ����� [����� �� ����, ����������� �� ������] ������, � � ��������� �� ����, �� ���� �����, ����� ������������� � ������ �� ����������� �����', 1772);
INSERT INTO mayors ("order", surname, name, patronymic, grade, pedigree, friend, end, date) VALUES (9, '���������', '�����', '��������������', '�������� �������� � �������', NULL, NULL, '���� ����� �������.', 1770);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
