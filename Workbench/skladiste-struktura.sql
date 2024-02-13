CREATE SCHEMA IF NOT EXISTS `skladiste-struktura`;

DROP TABLE IF EXISTS `skladiste-struktura`.`OCENE`;
DROP TABLE IF EXISTS `skladiste-struktura`.`GLEDANJA`;
DROP TABLE IF EXISTS `skladiste-struktura`.`PRETPLATE`;
DROP TABLE IF EXISTS `skladiste-struktura`.`VREME`;
DROP TABLE IF EXISTS `skladiste-struktura`.`VIDEO`;
DROP TABLE IF EXISTS `skladiste-struktura`.`UZRAST`;
DROP TABLE IF EXISTS `skladiste-struktura`.`POL`;
DROP TABLE IF EXISTS `skladiste-struktura`.`MESTO`;
DROP TABLE IF EXISTS `skladiste-struktura`.`poslednja_izmena`;

CREATE TABLE `skladiste-struktura`.`poslednja_izmena` (
    `id` INT PRIMARY KEY,
    `datum` TIMESTAMP NOT NULL
);

CREATE TABLE `skladiste-struktura`.`MESTO` (
    `IdMes` INT AUTO_INCREMENT PRIMARY KEY,
    `Naziv` VARCHAR(20) NULL
);

CREATE TABLE `skladiste-struktura`.`POL` (
    `IdPol` INT AUTO_INCREMENT PRIMARY KEY,
    `Naziv` VARCHAR(1) NULL
);

CREATE TABLE `skladiste-struktura`.`UZRAST` (
    `IdUzr` INT AUTO_INCREMENT PRIMARY KEY,
    `Uzrast` INT NOT NULL
);

CREATE TABLE `skladiste-struktura`.`VIDEO` (
    `IdVid` INT AUTO_INCREMENT PRIMARY KEY,
    `NazivVideo` VARCHAR(20) NULL,
    `IdKat` INTEGER NULL
);

CREATE TABLE `skladiste-struktura`.`VREME` (
    `IdVre` INT AUTO_INCREMENT PRIMARY KEY,
    `Vreme` TIME NOT NULL
);

CREATE TABLE `skladiste-struktura`.`GLEDANJA` (
    `BrMinuta` INT NULL,
    `IdVre` INT NOT NULL,
    `IdVid` INT NOT NULL,
    `IdPol` INT NOT NULL,
    `IdUzr` INT NOT NULL,
    `IdMesGle` INT NOT NULL,
    `IdMesVla` INT NOT NULL,
    PRIMARY KEY (`IdVre`, `IdVid`, `IdPol`, `IdUzr`, `IdMesGle`, `IdMesVla`),
    FOREIGN KEY (`IdVre`) REFERENCES `skladiste-struktura`.`VREME`(`IdVre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdVid`) REFERENCES `skladiste-struktura`.`VIDEO`(`IdVid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdPol`) REFERENCES `skladiste-struktura`.`POL`(`IdPol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdUzr`) REFERENCES `skladiste-struktura`.`UZRAST`(`IdUzr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdMesGle`) REFERENCES `skladiste-struktura`.`MESTO`(`IdMes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdMesVla`) REFERENCES `skladiste-struktura`.`MESTO`(`IdMes`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `skladiste-struktura`.`OCENE` (
    `IdVre` INT NOT NULL,
    `IdVid` INT NOT NULL,
    `IdPol` INT NOT NULL,
    `IdMesGle` INT NOT NULL,
    `IdMesVla` INT NOT NULL,
    `Ocena` INT NULL,
    `IdUzr` INT NOT NULL,
    PRIMARY KEY (`IdVre`, `IdVid`, `IdPol`, `IdMesGle`, `IdMesVla`, `IdUzr`),
    FOREIGN KEY (`IdVre`) REFERENCES `skladiste-struktura`.`VREME`(`IdVre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdVid`) REFERENCES `skladiste-struktura`.`VIDEO`(`IdVid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdPol`) REFERENCES `skladiste-struktura`.`POL`(`IdPol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdUzr`) REFERENCES `skladiste-struktura`.`UZRAST`(`IdUzr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdMesGle`) REFERENCES `skladiste-struktura`.`MESTO`(`IdMes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdMesVla`) REFERENCES `skladiste-struktura`.`MESTO`(`IdMes`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `skladiste-struktura`.`PRETPLATE` (
    `IdVre` INT NOT NULL,
    `IdPol` INT NOT NULL,
    `IdUzr` INT NOT NULL,
    `IdMes` INT NOT NULL,
    `Cena` FLOAT NOT NULL,
    PRIMARY KEY (`IdVre`, `IdPol`, `IdUzr`, `IdMes`),
    FOREIGN KEY (`IdVre`) REFERENCES `skladiste-struktura`.`VREME`(`IdVre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdPol`) REFERENCES `skladiste-struktura`.`POL`(`IdPol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdUzr`) REFERENCES `skladiste-struktura`.`UZRAST`(`IdUzr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (`IdMes`) REFERENCES `skladiste-struktura`.`MESTO`(`IdMes`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
