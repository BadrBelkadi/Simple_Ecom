-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 07:16 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `micro_projet`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `codeArticle` int(11) NOT NULL,
  `designation` varchar(32) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `categorie` int(32) DEFAULT NULL,
  `photo` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `refCat` int(11) NOT NULL,
  `cat` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `nom` varchar(32) NOT NULL,
  `prenom` varchar(32) NOT NULL,
  `adresse` varchar(32) NOT NULL,
  `codePostal` varchar(32) NOT NULL,
  `ville` varchar(32) NOT NULL,
  `tel` varchar(32) NOT NULL,
  `motpasse` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `commandes`
--

CREATE TABLE `commandes` (
  `numCommande` int(11) NOT NULL,
  `codeClient` int(11) DEFAULT NULL,
  `dateCommande` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lignecommandes`
--

CREATE TABLE `lignecommandes` (
  `numCommande` int(11) NOT NULL,
  `codeArticle` int(11) NOT NULL,
  `qteCde` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`codeArticle`),
  ADD KEY `fk` (`categorie`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`refCat`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk` (`email`);

--
-- Indexes for table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`numCommande`),
  ADD KEY `fk2` (`codeClient`);

--
-- Indexes for table `lignecommandes`
--
ALTER TABLE `lignecommandes`
  ADD PRIMARY KEY (`numCommande`,`codeArticle`),
  ADD KEY `fk_1` (`codeArticle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk` FOREIGN KEY (`categorie`) REFERENCES `categories` (`refCat`);

--
-- Constraints for table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`codeClient`) REFERENCES `clients` (`id`);

--
-- Constraints for table `lignecommandes`
--
ALTER TABLE `lignecommandes`
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`codeArticle`) REFERENCES `articles` (`codeArticle`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
