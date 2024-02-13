-- INSERT INTO MESTO
INSERT INTO `operativna-struktura`.`MESTO` (`Mesto`, `DatumUnosa`)
VALUES
  ('Beograd', now()),
  ('Le Cannet', now()),
  ('Guadalajara', now()),
  ('Saint Petersburg', now()),
  ('Huesca', now()),
  ('Gijón', now()),
  ('Millesimo', now()),
  ('Badajoz', now()),
  ('Bracknell', now()),
  ('Villeneuve-dAscq', now()),
  ('Bangor', now()),
  ('Meridian', now()),
  ('Saint-Dié-des-Vosges', now()),
  ('Oryol', now()),
  ('Alcalá de Henares', now()),
  ('Reggio nell Emilia', now()),
  ('Portobuffolè', now()),
  ('Olivola', now()),
  ('Ely', now()),
  ('Gatchina', now());

-- INSERT INTO KORISNIK
INSERT INTO `operativna-struktura`.`KORISNIK` (`IdMes`, `Ime`, `Email`, `Godiste`, `Pol`, `DatumUnosa`)
VALUES
  (9, 'Dane', 'sit.amet.metus@yahoo.couk', 1968, 'M', now()),
  (18, 'Rafael', 'leo.elementum@icloud.edu', 1986, 'M', now()),
  (17, 'Denton', 'quisque.ornare.tortor@hotmail.com', 1956, 'M', now()),
  (16, 'Armand', 'scelerisque.scelerisque@hotmail.edu', 1953, 'M', now()),
  (19, 'Melyssa', 'mauris@hotmail.org', 1993, 'Z', now()),
  (4, 'Arthur', 'mus@icloud.ca', 2005, 'Z', now()),
  (9, 'Octavius', 'rhoncus.donec@outlook.org', 1994, 'Z', now()),
  (15, 'Cain', 'non.luctus@aol.couk', 2019, 'M', now()),
  (13, 'Noel', 'purus.duis.elementum@google.com', 2019, 'Z', now()),
  (16, 'Barclay', 'luctus.curabitur@yahoo.com', 1988, 'M', now()),
  (16, 'Belle', 'laoreet.posuere@yahoo.com', 2002, 'Z', now()),
  (1, 'Zena', 'auctor.nunc@yahoo.org', 1966, 'Z', now()),
  (12, 'Ariel', 'urna.nunc@aol.ca', 1991, 'Z', now()),
  (9, 'Lana', 'accumsan@aol.org', 1952, 'Z', now()),
  (11, 'Brittany', 'consequat@protonmail.ca', 1976, 'M', now()),
  (17, 'Cheryl', 'amet.consectetuer@hotmail.net', 2016, 'Z', now()),
  (17, 'Timon', 'sem@aol.ca', 1986, 'M', now()),
  (4, 'Jonas', 'orci.luctus@aol.edu', 1975, 'Z', now()),
  (6, 'Skyler', 'ut.eros@aol.org', 2018, 'Z', now()),
  (7, 'Karen', 'ultricies.dignissim.lacus@aol.edu', 2016, 'Z', now());

-- INSERT INTO KATEGORIJA
INSERT INTO `operativna-struktura`.`KATEGORIJA` (`Naziv`)
VALUES
  ('Action'),
  ('Comedy'),
  ('Drama'),
  ('Science Fiction'),
  ('Fantasy'),
  ('Horror'),
  ('Thriller'),
  ('Romance'),
  ('Mystery'),
  ('Animation'),
  ('Crime'),
  ('Adventure'),
  ('Family'),
  ('Historical'),
  ('Documentary'),
  ('Musical'),
  ('War'),
  ('Biography'),
  ('Sports'),
  ('Western');

-- INSERT INTO VIDEO
INSERT INTO `operativna-struktura`.`VIDEO` (`Naziv`, `Trajanje`, `IdKor`, `Datum`, `Vreme`, `DatumUnosa`)
VALUES
  ('The Matrix', 177, 7, '2022-10-11', '05:24:11', now()),
  ('Inception', 164, 3, '1974-08-03', '20:28:54', now()),
  ('Pulp Fiction', 180, 20, '1989-04-18', '11:46:27', now()),
  ('Terminator', 106, 19, '1991-01-21', '05:39:58', now()),
  ('Jurassic Park', 109, 12, '1962-07-13', '22:55:36', now()),
  ('Back to the Future', 157, 4, '1986-07-23', '19:17:07', now()),
  ('Shawshank Redemption', 111, 15, '2020-03-29', '06:42:41', now()),
  ('Forrest Gump', 112, 14, '1972-08-12', '14:55:07', now()),
  ('Casablanca', 163, 17, '1952-02-24', '08:25:55', now()),
  ('Fight Club', 141, 7, '1994-10-03', '16:59:31', now()),
  ('Die Hard', 85, 7, '1989-12-24', '19:51:42', now()),
  ('The Godfather', 123, 8, '1985-10-05', '23:21:14', now()),
  ('Lord of the Rings', 129, 12, '2003-11-25', '23:22:17', now()),
  ('Joker', 99, 2, '2019-12-17', '04:10:38', now()),
  ('The Graduate', 70, 16, '1967-05-29', '23:51:31', now()),
  ('Titanic', 141, 17, '1996-08-24', '03:56:06', now()),
  ('Big Lebowski', 148, 3, '1998-05-23', '03:35:14', now()),
  ('La La Land', 69, 2, '2017-08-25', '18:43:13', now()),
  ('Gone with the Wind', 113, 8, '1956-04-14', '13:14:26', now()),
  ('Basterds', 76, 17, '2017-04-06', '08:56:25', now());

-- INSERT INTO VIDEO_KATEGORIJA
INSERT INTO `operativna-struktura`.`VIDEO_KATEGORIJA` (`IdVid`, `IdKat`)
VALUES
  (1, 7),
  (2, 9),
  (3, 6),
  (4, 10),
  (5, 14),
  (6, 6),
  (7, 4),
  (8, 18),
  (9, 12),
  (10, 1),
  (11, 14),
  (12, 6),
  (13, 12),
  (14, 17),
  (15, 10),
  (16, 12),
  (17, 7),
  (18, 1),
  (19, 6),
  (20, 15);

-- INSERT INTO PAKET
INSERT INTO `operativna-struktura`.`PAKET` (`MesecnaCena`)
VALUES
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15);

-- INSERT INTO PAKET (Continuation)
INSERT INTO `operativna-struktura`.`PAKET` (`MesecnaCena`)
VALUES
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15),
  (RAND() * (25 - 15) + 15);

-- INSERT INTO PRETPLATA
INSERT INTO `operativna-struktura`.`PRETPLATA` (`IdKor`, `IdPak`, `Datum`, `Vreme`, `PlacenaCena`)
VALUES
  (1, 13, '1966-08-15', '18:18:33', 5),
  (2, 18, '2018-05-15', '05:43:28', 5),
  (3, 18, '1960-09-24', '18:38:34', 3),
  (4, 14, '2008-04-17', '13:38:28', 2),
  (5, 2, '2018-10-19', '06:41:53', 3),
  (6, 8, '1992-02-14', '10:20:57', 3),
  (7, 2, '1988-12-11', '08:09:59', 1),
  (8, 4, '1991-03-23', '07:59:43', 4),
  (9, 4, '1965-01-29', '01:19:34', 4),
  (10, 1, '2013-10-14', '20:28:00', 4),
  (11, 6, '2003-06-07', '23:15:09', 1),
  (12, 5, '2016-05-31', '17:39:36', 2),
  (13, 17, '1952-11-02', '04:37:37', 4),
  (14, 8, '1963-11-30', '16:42:42', 2),
  (15, 11, '1953-02-18', '00:31:06', 4),
  (16, 5, '1975-06-16', '12:57:14', 1),
  (17, 18, '1990-03-18', '01:27:04', 1),
  (18, 15, '1971-06-20', '09:18:53', 3),
  (19, 10, '1995-11-08', '08:50:20', 4),
  (20, 4, '2008-04-04', '10:53:17', 2);

-- INSERT INTO GLEDANJE
INSERT INTO `operativna-struktura`.`GLEDANJE` (`IdVid`, `IdKor`, `Datum`, `Vreme`, `PocetniSekund`, `TrajanjeUSekundama`)
VALUES
  (13, 6, '2002-09-07', '18:09:00', 3279, 4554),
  (11, 11, '2023-04-23', '01:29:00', 2896, 5465),
  (13, 8, '2023-08-21', '07:41:00', 1579, 3508),
  (5, 14, '2024-01-04', '06:08:00', 977, 3364),
  (15, 13, '2023-06-10', '13:59:00', 2502, 6019),
  (4, 8, '2023-02-19', '05:53:00', 2054, 5472),
  (11, 2, '2023-12-11', '04:49:00', 1349, 4676),
  (11, 9, '2023-06-25', '21:53:00', 2898, 2979),
  (4, 2, '2020-02-05', '13:30:00', 2464, 4542),
  (11, 19, '2024-01-17', '01:26:00', 1132, 9264),
  (8, 16, '2017-01-05', '16:58:00', 2004, 4120),
  (3, 9, '2023-06-14', '00:05:00', 3128, 6974),
  (3, 18, '2023-11-24', '16:13:00', 1946, 2340),
  (2, 9, '2023-07-17', '02:11:00', 577, 6991),
  (8, 15, '2023-12-23', '20:18:00', 3457, 9561),
  (11, 20, '2021-08-21', '08:17:00', 2076, 3458),
  (11, 5, '2023-07-12', '00:34:00', 494, 9829),
  (3, 16, '2023-08-03', '13:29:00', 1899, 8155),
  (8, 15, '2023-07-13', '20:35:00', 1417, 6777),
  (17, 6, '2023-02-21', '00:05:00', 2954, 9624);

-- INSERT INTO OCENA
INSERT INTO `operativna-struktura`.`OCENA` (`IdKor`, `IdVid`, `Ocena`, `Datum`, `Vreme`)
VALUES
  (7, 10, 2, '2004-02-22', '01:31:12'),
  (10, 13, 3, '1991-09-25', '16:25:01'),
  (4, 3, 4, '2014-12-08', '12:54:35'),
  (6, 2, 4, '1959-03-13', '16:11:38'),
  (18, 12, 1, '1978-09-27', '03:27:28'),
  (17, 8, 3, '1999-08-19', '09:39:41'),
  (19, 12, 1, '1956-09-24', '10:36:17'),
  (7, 12, 4, '1997-10-14', '03:12:17'),
  (13, 9, 3, '1994-02-09', '14:25:10'),
  (13, 3, 1, '1979-03-01', '16:00:45'),
  (2, 19, 1, '1999-04-01', '09:45:52'),
  (13, 12, 5, '1992-05-23', '09:41:32'),
  (15, 2, 4, '1958-11-17', '17:41:55'),
  (3, 18, 2, '1972-09-29', '08:46:41'),
  (5, 5, 2, '1967-07-14', '13:37:44'),
  (7, 8, 3, '2018-02-13', '03:02:52'),
  (2, 17, 4, '2015-12-22', '11:58:30'),
  (6, 9, 2, '2004-12-30', '14:47:10'),
  (17, 7, 2, '2021-10-13', '16:27:08'),
  (19, 16, 3, '1979-01-20', '23:29:17');
