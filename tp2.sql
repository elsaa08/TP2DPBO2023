-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 01:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id_music` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL,
  `producer` int(100) NOT NULL,
  `img_album` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id_music`, `title`, `album`, `producer`, `img_album`) VALUES
(1, 'RED', 'RED', 1, 'https://i.pinimg.com/736x/46/20/3b/46203b0cd5d0e70fca60f7341c853a68.jpg'),
(2, 'Light a Flame', 'Semicolon', 2, 'https://i.pinimg.com/564x/dd/ef/b6/ddefb688eeb04eba320ba6451b6417fe.jpg'),
(3, 'I wish', 'Heng:garae', 2, 'https://i.pinimg.com/564x/5f/3e/33/5f3e33e6251783ec3ae5519a81fb3b99.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `password`
--

CREATE TABLE `password` (
  `id_pass` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `password`
--

INSERT INTO `password` (`id_pass`, `username`, `pass`) VALUES
(1, 'admin1004', 'iloveyou');

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `Id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `agencies` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`Id`, `name`, `age`, `agencies`, `img`) VALUES
(1, 'Taylor Swift', 28, 'American Ent', 'https://i.pinimg.com/564x/49/15/d4/4915d4d52c40e9d43abe11b875021e90.jpg'),
(2, 'Woozi of Seventeen', 27, 'Pledis Ent', 'https://i.pinimg.com/564x/ae/63/f2/ae63f2b0d0e9e543e543a66a3f267580.jpg'),
(6, 'Suga of BTS', 28, 'Hybe Labels', 'https://i.pinimg.com/564x/3c/93/13/3c93137f57b821c41b328a15427fd553.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id_music`),
  ADD KEY `mscfk` (`producer`);

--
-- Indexes for table `password`
--
ALTER TABLE `password`
  ADD PRIMARY KEY (`id_pass`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id_music` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `password`
--
ALTER TABLE `password`
  MODIFY `id_pass` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `producer`
--
ALTER TABLE `producer`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `music`
--
ALTER TABLE `music`
  ADD CONSTRAINT `mscfk` FOREIGN KEY (`producer`) REFERENCES `producer` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
