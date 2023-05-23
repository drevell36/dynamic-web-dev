-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 09, 2023 at 11:41 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text,
  `imageurl` text,
  `title` tinytext,
  `websitetitle` tinytext,
  `websiteurl` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `comment`, `imageurl`, `title`, `websitetitle`, `websiteurl`) VALUES
(5, 'Test', 'https://images.unsplash.com/photo-1575425186775-b8de9a427e67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80', 'Test comment', 'unsplash', 'https://images.unsplash.com/photo-1575425186775-b8de9a427e67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idUsers` int(11) NOT NULL AUTO_INCREMENT,
  `emailUsers` tinytext,
  `pwdUsers` longtext,
  `uidUsers` tinytext,
  PRIMARY KEY (`idUsers`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUsers`, `emailUsers`, `pwdUsers`, `uidUsers`) VALUES
(1, 'darren@darren.com', '$2y$10$BrMvOAEB6oDeZjemAQZRDOPaYzFpsBcXIR0Of3T8cfi9Vk2GoAFZS', 'darren'),
(2, 'bob@bob.com', '$2y$10$HLR9irMRdYi2tezrluW3.uBnOUWJjYG5gzUGKF8x44rMHdhM3fnVO', 'Bob'),
(3, 'meg@meg.com', '$2y$10$fSX4zIMAgGPb6DFjPbqgx.QLCoT2r9rmPgQK/eDZj/gQY16KpaGha', 'Meg'),
(4, 'john@john.com', '$2y$10$II87sfRReKAm3MNoICt2les3Scblu9Ay4UmoeSApuM/VUAMjU3KwG', 'John');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
