-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Lis 2020, 23:50
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `covid`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lozko`
--

CREATE TABLE `lozko` (
  `numer` int(4) NOT NULL,
  `zajety` tinyint(1) NOT NULL DEFAULT 0,
  `pokoj` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `lozko`
--

INSERT INTO `lozko` (`numer`, `zajety`, `pokoj`) VALUES
(1, 0, 1),
(2, 0, 1),
(3, 0, 2),
(4, 0, 2),
(5, 0, 3),
(6, 0, 3),
(7, 0, 4),
(8, 0, 5),
(9, 0, 5),
(10, 0, 6),
(11, 0, 6),
(12, 0, 7),
(13, 0, 7),
(14, 0, 8),
(15, 0, 8),
(16, 0, 9),
(17, 0, 9),
(18, 0, 10),
(19, 0, 11),
(20, 0, 10),
(21, 0, 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pokoj`
--

CREATE TABLE `pokoj` (
  `numer` int(4) NOT NULL,
  `pietro` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pokoj`
--

INSERT INTO `pokoj` (`numer`, `pietro`) VALUES
(1, NULL),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `login` varchar(24) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`login`, `password`) VALUES
('kbugaj', '$2y$10$k548iTeSCsYeYAFEi5m8muSFRMh0pexP11y0VkIODH5QAwIFUR2nm');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lozko`
--
ALTER TABLE `lozko`
  ADD PRIMARY KEY (`numer`),
  ADD UNIQUE KEY `numer` (`numer`),
  ADD KEY `lozko_pokoj_numer_fk` (`pokoj`);

--
-- Indeksy dla tabeli `pokoj`
--
ALTER TABLE `pokoj`
  ADD PRIMARY KEY (`numer`),
  ADD UNIQUE KEY `numer` (`numer`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`login`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `lozko`
--
ALTER TABLE `lozko`
  ADD CONSTRAINT `lozko_pokoj_numer_fk` FOREIGN KEY (`pokoj`) REFERENCES `pokoj` (`numer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
