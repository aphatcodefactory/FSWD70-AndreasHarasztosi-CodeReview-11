-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 20. Jul 2019 um 18:38
-- Server-Version: 10.1.38-MariaDB
-- PHP-Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr11_andreasharasztosi_travelmatic`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `eventID` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `discription` text,
  `webaddress` varchar(50) NOT NULL,
  `eventStart` datetime NOT NULL,
  `ticketprice` float UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`eventID`, `name`, `location`, `address`, `discription`, `webaddress`, `eventStart`, `ticketprice`) VALUES
(1, 'Kris Kristofferson', 'Wiener Stadthalle, Halle F', 'Roland Rainer Platz 1, 1150 Wien', 'Konzert', 'http://kriskristofferson.com', '2019-10-12 20:00:00', 59.5),
(2, 'Lenny Kravitz', 'Wiener Stadthalle - Halle D', 'Roland Rainer Platz 1, 1150 Wien', 'Konzert', 'www.lennykravitz.com/', '2019-12-09 19:30:00', 48.8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurantID` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `discription` text,
  `address` varchar(50) NOT NULL,
  `webaddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `restaurant`
--

INSERT INTO `restaurant` (`restaurantID`, `name`, `tel`, `type`, `discription`, `address`, `webaddress`) VALUES
(1, 'Lemon Leaf', '0043(1)5812308', 'Thai', 'Das Thai Restaurant ,,Lemon Leaf\" heißt Sie Herzlich Willkommen! Die thailändische Esskultur hat eine sehr lange Vorgeschichte und findet ihren Ursprung in China, Indien und Europa. Im Laufe der Jahrhunderte verschmolz diese zu der Küche, so wie wir sie heute kennen.', 'Kettenbrückengasse 19, 1050 Wien', 'http://www.lemonleaf.at/'),
(2, 'SIXTA', '+43 1 58 528 56', 'viennese', NULL, '1050 Wien, Schönbrunner Straße 21', 'http://www.sixta-restaurant.at'),
(3, 'Cafe Concerto', '+43 (01) 406 47 95', 'music night bar', 'Name ist Programm.', 'Lerchenfelder Gürtel 53, 1160 Wien', 'http://cafeconcerto.at/');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `thtdo`
--

CREATE TABLE `thtdo` (
  `thtdoID` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(70) NOT NULL,
  `type` varchar(20) NOT NULL,
  `discription` text,
  `webaddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `thtdo`
--

INSERT INTO `thtdo` (`thtdoID`, `name`, `address`, `type`, `discription`, `webaddress`) VALUES
(1, 'St. Charles Church', 'Karlsplatz 1, 1010 Wien', 'church', '1739 von seinem Sohn Joseph Emanuel Fischer von Erlach vollendet, erfolgte der Bau auf Grund eines Gelübdes von Kaiser Karl VI. während einer Pestepidemie. Geweiht ist die Kirche dem Namenspatron des Habsburgerkaisers, dem Hl. Karl Borromäus: Das kleine Museo Borromeo stellt unter anderem Reisekleider des Mailänder Bischofs aus.', 'https://www.wien.info/de/sightseeing/sehenswuerdigkeiten/g-k/karlskirche'),
(2, 'Zoo Vienna', 'Maxingstraße 13b, 1130 Wien', 'zoo', 'Unser Ziel - Schutz und Erhalt der Tierarten in ihren natürlichen Lebensräumen - werden wir nur erreichen, wenn es von einer breiten Öffentlichkeit mitgetragen wird.\r\nDer Tiergartenbesucher ist nicht nur Ansprechpartner und Multiplikator unserer Anliegen, sondern als zahlender Gast auch Hauptfinanzier des Tiergartens und seiner Projekte. Dem Gast die Schönheit und Vielfalt der Tier- und Pflanzenwelt in angenehmer Atmosphäre nahe zu bringen, ist daher unsere zentrale Aufgabe.', 'https://www.zoovienna.at/'),
(3, 'Torture Museum', 'Fritz-Grünbaum Platz 1, 1060 Wien', 'museum', 'Im historischen Schutzbunker aus dem 2. Weltkrieg wird die Entwicklung unseres Rechtssystems von der Antike bis zur Neuzeit dokumentiert.', 'https://www.foltermuseum.at/'),
(4, 'Mozarts Living House', 'Makartplatz 8, 5020 Salzburg', 'sight', 'Von 1773 bis 1787 lebte die Familie Mozart im „Tanzmeisterhaus“ am heutigen Makartplatz. Die geräumige Acht-Zimmer-Wohnung im ersten Stock beherbergt nun ein Museum.', 'https://www.salzburg.info/de/sehenswertes/museen/mozart-wohnhaus');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL COMMENT 'username = email address',
  `password` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`userID`, `username`, `password`, `status`) VALUES
(1, 'fuffy@to.live', '$2y$10$bQ3L4baPEQW0ykujk5xD8.i3JzzNEPY4F8EuOtGqal5NLrmiUhYYS', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`);

--
-- Indizes für die Tabelle `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurantID`);

--
-- Indizes für die Tabelle `thtdo`
--
ALTER TABLE `thtdo`
  ADD PRIMARY KEY (`thtdoID`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `eventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `restaurantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `thtdo`
--
ALTER TABLE `thtdo`
  MODIFY `thtdoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
