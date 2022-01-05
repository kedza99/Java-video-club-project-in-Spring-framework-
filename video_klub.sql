-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2019 at 05:20 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `video_klub`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `film_id` int(10) UNSIGNED NOT NULL,
  `naziv` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `deskripcija` text COLLATE utf8_unicode_ci NOT NULL,
  `korisnik_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`film_id`, `naziv`, `deskripcija`, `korisnik_id`) VALUES
(1, 'Betmen mracni vitez', 'A gang of criminals rob a Gotham City mob bank, murdering each other for a higher share of the money until only the Joker remains, who escapes with the money. Batman, District Attorney Harvey Dent and Lieutenant Jim Gordon form an alliance to rid Gotham City of organized crime. Bruce Wayne believes that with Dent as Gotham\'s protector, he can retire from being Batman and lead a normal life with Rachel Dawes – even though she and Dent are dating.', 1),
(2, 'Betmen protiv supermena', 'Fearing that the actions of Superman are left unchecked, Batman takes on the Man of Steel, while the world wrestles with what kind of a hero it really needs.', 2),
(3, 'Grbavac Notr Dama', 'An animated Disney adventure follows disfigured Quasimodo (Tom Hulce), the bell-ringer of Notre Dame Cathedral, who bides his time locked away in a tower. With only gargoyles to keep him company, Quasimodo longs to be with other people, leading to his chance encounter with the enchanting Gypsy Esmeralda (Demi Moore). When the beautiful young woman catches the attention of Quasimodo\'s guardian, sinister Frollo (Tony Jay), Quasimodo must help to keep her out of his clutches.', 3),
(4, 'Herkules', 'Having endured his legendary twelve labors, Hercules, the Greek demigod, has his life as a sword-for-hire tested when the King of Thrace and his daughter seek his aid in defeating a tyrannical warlord.', 4),
(5, 'Potraga za Nemom', 'Marlin (Albert Brooks), a clown fish, is overly cautious with his son, Nemo (Alexander Gould), who has a foreshortened fin. When Nemo swims too close to the surface to prove himself, he is caught by a diver, and horrified Marlin must set out to find him. A blue reef fish named Dory (Ellen DeGeneres) -- who has a really short memory -- joins Marlin and complicates the encounters with sharks, jellyfish, and a host of ocean dangers. Meanwhile, Nemo plots his escape from a dentist\'s fish tank.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `korisnik_id` int(10) UNSIGNED NOT NULL,
  `ime` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `godiste` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `brtel` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `adresa` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnik_id`, `ime`, `prezime`, `godiste`, `brtel`, `adresa`) VALUES
(1, 'Stefan', 'Stankovic', '1998', '0644446663', 'Filipova11'),
(2, 'Filip', 'Przic', '1992', '0633332221', 'Sinisina12'),
(3, 'Lazar', 'Lazic', '1991', '0622223334', 'Kolarska15'),
(4, 'Ana', 'Maric', '2001', '0651112223', 'Musicka22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`),
  ADD KEY `korisnik_id` (`korisnik_id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`korisnik_id`),
  ADD UNIQUE KEY `brtel` (`brtel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `film_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `korisnik_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnik` (`korisnik_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
