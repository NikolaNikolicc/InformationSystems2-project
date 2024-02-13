-- INSERT INTO MESTO
INSERT INTO `operativna-struktura`.`MESTO` (`Mesto`, `DatumUnosa`)
VALUES
  ('Cacak', now()),
  ('Novi Sad', now()),
  ('Nis', now());

-- INSERT INTO KORISNIK
INSERT INTO `operativna-struktura`.`KORISNIK` (`IdMes`, `Ime`, `Email`, `Godiste`, `Pol`, `DatumUnosa`)
VALUES
  (23, 'Milojko', 'milojko@gmail.com', 1989, 'M', now()),
  (21, 'Stefan', 'stefan@icloud.edu', 2024, 'M', now()),
  (1, 'Milica', 'comi@hotmail.com', 2001, 'Z', now());

-- INSERT INTO VIDEO
INSERT INTO `operativna-struktura`.`VIDEO` (`Naziv`, `Trajanje`, `IdKor`, `Datum`, `Vreme`, `DatumUnosa`)
VALUES
  ('American beauty', 125, 22, '1982-10-11', '07:24:11', now()),
  ('Mrtav ladan', 82, 3, '1974-08-03', '20:28:54', now()),
  ('The choice', 117, 20, '1989-04-18', '00:00:00', now());

-- INSERT INTO VIDEO_KATEGORIJA
INSERT INTO `operativna-struktura`.`VIDEO_KATEGORIJA` (`IdVid`, `IdKat`)
VALUES
  (21, 7),
  (22, 9),
  (23, 6);

-- INSERT INTO PRETPLATA
INSERT INTO `operativna-struktura`.`PRETPLATA` (`IdKor`, `IdPak`, `Datum`, `Vreme`, `PlacenaCena`)
VALUES
  (21, 13, CURDATE(), CURTIME(), 5),
  (22, 18, CURDATE(), CURTIME(), 5),
  (23, 18, CURDATE(), CURTIME(), 3);

-- INSERT INTO GLEDANJE
INSERT INTO `operativna-struktura`.`GLEDANJE` (`IdVid`, `IdKor`, `Datum`, `Vreme`, `PocetniSekund`, `TrajanjeUSekundama`)
VALUES
  (14, 6, CURDATE(), CURTIME(), 3279, 4554),
  (11, 21, CURDATE(), CURTIME(), 2896, 5465),
  (21, 8, CURDATE(), CURTIME(), 1579, 3508);

-- INSERT INTO OCENA
INSERT INTO `operativna-struktura`.`OCENA` (`IdKor`, `IdVid`, `Ocena`, `Datum`, `Vreme`)
VALUES
  (22, 21, 5, CURDATE(), CURTIME()),
  (21, 21, 3, CURDATE(), CURTIME()),
  (23, 21, 4, CURDATE(), CURTIME());