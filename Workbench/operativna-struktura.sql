CREATE SCHEMA IF NOT EXISTS `operativna-struktura`;

DROP TABLE IF EXISTS `operativna-struktura`.`OCENA`;
DROP TABLE IF EXISTS `operativna-struktura`.`GLEDANJE`;
DROP TABLE IF EXISTS `operativna-struktura`.`PRETPLATA`;
DROP TABLE IF EXISTS `operativna-struktura`.`PAKET`;
DROP TABLE IF EXISTS `operativna-struktura`.`VIDEO_KATEGORIJA`;
DROP TABLE IF EXISTS `operativna-struktura`.`VIDEO`;
DROP TABLE IF EXISTS `operativna-struktura`.`KATEGORIJA`;
DROP TABLE IF EXISTS `operativna-struktura`.`KORISNIK`;
DROP TABLE IF EXISTS `operativna-struktura`.`MESTO`;

CREATE TABLE `operativna-struktura`.`MESTO` (
    `IdMes` INT AUTO_INCREMENT PRIMARY KEY,
    `Mesto` VARCHAR(20) NOT NULL,
    `DatumUnosa` TIMESTAMP NOT NULL
);

CREATE TABLE `operativna-struktura`.`KORISNIK` (
    `IdKor` INT AUTO_INCREMENT PRIMARY KEY,
    `Ime` VARCHAR(20) NOT NULL,
    `Email` VARCHAR(50) NOT NULL,
    `Godiste` INT NOT NULL,
    `Pol` VARCHAR(1) NOT NULL CHECK (Pol IN ('M', 'Z')),
    `IdMes` INT NOT NULL,
    `DatumUnosa` TIMESTAMP NOT NULL,
    FOREIGN KEY (`IdMes`) REFERENCES `operativna-struktura`.`MESTO`(`IdMes`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `operativna-struktura`.`KATEGORIJA` (
    `IdKat` INT AUTO_INCREMENT PRIMARY KEY,
    `Naziv` VARCHAR(20) NOT NULL
);

CREATE TABLE `operativna-struktura`.`VIDEO` (
    `IdVid` INT AUTO_INCREMENT PRIMARY KEY,
    `Naziv` VARCHAR(20) NOT NULL,
    `Trajanje` INT NOT NULL,
    `Datum` DATE NOT NULL,
    `Vreme` TIME NOT NULL,
    `IdKor` INT NOT NULL,
    `DatumUnosa` TIMESTAMP NOT NULL,
    FOREIGN KEY (`IdKor`) REFERENCES `operativna-struktura`.`KORISNIK`(`IdKor`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `operativna-struktura`.`VIDEO_KATEGORIJA` (
    `IdVid` INT NOT NULL,
    `IdKat` INT NOT NULL,
    PRIMARY KEY (`IdVid`, `IdKat`),
    FOREIGN KEY (`IdVid`) REFERENCES `operativna-struktura`.`VIDEO`(`IdVid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdKat`) REFERENCES `operativna-struktura`.`KATEGORIJA`(`IdKat`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `operativna-struktura`.`PAKET` (
    `IdPak` INT AUTO_INCREMENT PRIMARY KEY,
    `MesecnaCena` FLOAT NOT NULL
);

CREATE TABLE `operativna-struktura`.`PRETPLATA` (
    `IdPre` INT AUTO_INCREMENT PRIMARY KEY,
    `Datum` DATE NOT NULL,
    `Vreme` TIME NOT NULL,
    `PlacenaCena` FLOAT NOT NULL,
    `IdKor` INT NOT NULL,
    `IdPak` INT NOT NULL,
    FOREIGN KEY (`IdKor`) REFERENCES `operativna-struktura`.`KORISNIK`(`IdKor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdPak`) REFERENCES `operativna-struktura`.`PAKET`(`IdPak`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `operativna-struktura`.`GLEDANJE` (
    `IdGle` INT AUTO_INCREMENT PRIMARY KEY,
    `Datum` DATE NOT NULL,
    `Vreme` TIME NOT NULL,
    `IdVid` INT NOT NULL,
    `IdKor` INT NOT NULL,
    `PocetniSekund` INT NOT NULL,
    `TrajanjeUSekundama` INT NULL
);

CREATE TABLE `operativna-struktura`.`OCENA` (
    `IdKor` INT NOT NULL,
    `IdVid` INT NOT NULL,
    `Ocena` INT NOT NULL CHECK (`Ocena` BETWEEN 1 AND 5),
    `Datum` DATE NOT NULL,
    `Vreme` TIME NOT NULL,
    PRIMARY KEY (`IdKor`, `IdVid`),
    FOREIGN KEY (`IdKor`) REFERENCES `operativna-struktura`.`KORISNIK`(`IdKor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdVid`) REFERENCES `operativna-struktura`.`VIDEO`(`IdVid`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
