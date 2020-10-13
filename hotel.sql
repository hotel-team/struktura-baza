DROP DATABASE IF EXISTS hotel;
CREATE DATABASE hotel;
DROP TABLE IF EXISTS uzytkownik;
CREATE TABLE uzytkownik(
    id INT NOT NULL AUTO_INCREMENT,
    imie VARCHAR(30) NOT NULL,
    nazwisko VARCHAR(30) NOT NULL,
    email VARCHAR(40) NOT NULL,
    telefon VARCHAR(9) NOT NULL,
    miasto VARCHAR(30) NOT NULL,
    ulica VARCHAR(30) NOT NULL,
    numer_domu INT(4) NOT NULL,
    nume_mieszkania INT(6),
    kod_pocztowy VARCHAR(6) NOT NULL,
    PESEL INT(11) NOT NULL,
    login VARCHAR(16) NOT NULL,
    haslo VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);
DROP TABLE IF EXISTS pokoj;
CREATE TABLE pokoj(
    id INT NOT NULL AUTO_INCREMENT,
    numer INT(4) NOT NULL,
    opis VARCHAR(255) NOT NULL,
    klasa VARCHAR(20) NOT NULL,
    miniatura LONGBLOB NOT NULL,
    slide1 LONGBLOB NOT NULL,
    slide2 LONGBLOB NOT NULL,
    slide3 LONGBLOB NOT NULL,
    slide4 LONGBLOB NOT NULL,
    PRIMARY KEY(id)
);
DROP TABLE IF EXISTS rezerwacja;
CREATE TABLE rezerwacja(
    id INT NOT NULL AUTO_INCREMENT,
    data_rozpoczencia DATE NOT NULL,
    data_zakonczenia DATE NOT NULL,
    id_pokoju INT NOT NULL,
    id_uczrytkownika INT NULL,
    PRIMARY KEY(id)
);

