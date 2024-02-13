CREATE SCHEMA public;

CREATE TABLE public.MESTO (
    IdMes SERIAL PRIMARY KEY,
    Mesto VARCHAR(20) NOT NULL
);

CREATE TABLE public.KORISNIK (
    IdKor   SERIAL PRIMARY KEY,
    Ime     VARCHAR(20) NOT NULL,
    Email   VARCHAR(50) NOT NULL,
    Godiste INTEGER NOT NULL,
    Pol     VARCHAR(1) NOT NULL CHECK (Pol IN ('M', 'Z')),
    IdMes   INTEGER NOT NULL,
    FOREIGN KEY (IdMes) REFERENCES public.MESTO(IdMes) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE public.KATEGORIJA (
    IdKat SERIAL PRIMARY KEY,
    Naziv  VARCHAR(20) NOT NULL
);

CREATE TABLE public.VIDEO (
    IdVid SERIAL PRIMARY KEY,
    Naziv VARCHAR(20) NOT NULL,
    Trajanje INTEGER NOT NULL,
    Datum date NOT NULL,
    Vreme TIME NOT NULL,
    IdKor INTEGER NOT NULL,
    FOREIGN KEY (IdKor) REFERENCES public.KORISNIK(IdKor) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE public.VIDEO_KATEGORIJA (
    IdVid INTEGER NOT NULL,
    IdKat INTEGER NOT NULL,
    PRIMARY KEY (IdVid, IdKat),
    FOREIGN KEY (IdVid) REFERENCES public.VIDEO(IdVid) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (IdKat) REFERENCES public.KATEGORIJA(IdKat) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE public.PAKET (
    IdPak       SERIAL PRIMARY KEY,
    MesecnaCena FLOAT NOT NULL
);

CREATE TABLE public.PRETPLATA (
    IdPre       SERIAL PRIMARY KEY,
    Datum       date NOT NULL,
    Vreme       TIME NOT NULL,
    PlacenaCena FLOAT NOT NULL,
    IdKor       INTEGER NOT NULL,
    IdPak       INTEGER NOT NULL,
    FOREIGN KEY (IdKor) REFERENCES public.KORISNIK(IdKor) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (IdPak) REFERENCES public.PAKET(IdPak) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE public.GLEDANJE (
    IdGle              SERIAL PRIMARY KEY,
    Datum              date NOT NULL,
    Vreme              TIME NOT NULL,
    IdVid              integer NOT NULL,
    IdKor              integer NOT NULL,
    PocetniSekund      integer NOT NULL,
    TrajanjeUSekundama integer NULL
);

CREATE TABLE public.OCENA (
    IdKor INTEGER NOT NULL,
    IdVid INTEGER NOT NULL,
    Ocena INTEGER NOT NULL CHECK (Ocena BETWEEN 1 AND 5),
    Datum date NOT NULL,
    Vreme TIME NOT NULL,
    PRIMARY KEY (IdKor, IdVid),
    FOREIGN KEY (IdKor) REFERENCES public.KORISNIK(IdKor) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (IdVid) REFERENCES public.VIDEO(IdVid) ON DELETE NO ACTION ON UPDATE NO ACTION
);
