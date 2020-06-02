-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Cze 2020, 15:03
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
-- Baza danych: `tlumaczenia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `index_i_data`
--

CREATE TABLE `index_i_data` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `wskaznik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `index_i_data`
--

INSERT INTO `index_i_data` (`id`, `data`, `wskaznik`) VALUES
(1, '2020-06-02', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `slowka`
--

CREATE TABLE `slowka` (
  `id` int(11) NOT NULL,
  `angielski` text COLLATE utf8_polish_ci NOT NULL,
  `polski` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `slowka`
--

INSERT INTO `slowka` (`id`, `angielski`, `polski`) VALUES
(1, 'car', 'samochód'),
(2, 'apple', 'jabłko'),
(3, 'pencil', 'ołówek'),
(4, 'repositorie', 'magazyn'),
(5, 'guide', 'przewodnik'),
(6, 'development', 'rozwój'),
(7, 'team', 'zespół'),
(8, 'security', 'bezpieczeństwo'),
(9, 'white', 'biały'),
(10, 'red', 'czerwony'),
(11, 'orange', 'pomarańczowy'),
(12, 'green', 'zielony'),
(13, 'announces', 'ogłosić'),
(14, 'book', 'książka'),
(16, 'immediate', 'natychmiastowy'),
(17, 'release', 'wydanie'),
(18, 'several', 'kilka'),
(19, 'fixes', 'poprawki'),
(21, 'encouraged', 'zachęcany'),
(22, 'upgrade', 'aktualizacja'),
(23, 'gray', 'szary');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `index_i_data`
--
ALTER TABLE `index_i_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `slowka`
--
ALTER TABLE `slowka`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `index_i_data`
--
ALTER TABLE `index_i_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `slowka`
--
ALTER TABLE `slowka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
