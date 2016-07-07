-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2016 at 05:31 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcsa_web`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addcomrade` (IN `id` INT(1), IN `mail` VARCHAR(100))  NO SQL
INSERT INTO comrade(comradeid,email)VALUES(id,mail)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `dupemail` (IN `mail` VARCHAR(100))  SELECT *from user where email = mail$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `login` (IN `pass` VARCHAR(100), IN `mail` VARCHAR(100))  SELECT * from user where password = pass AND email = mail$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `registration` (IN `mail` VARCHAR(100), IN `uname` VARCHAR(100), IN `pass` VARCHAR(100), IN `country` VARCHAR(100))  INSERT INTO user VALUES(mail,uname,pass,country)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updatecomrade` (IN `id` INT(1), IN `mail` VARCHAR(100), IN `phno` VARCHAR(100))  NO SQL
UPDATE comrade SET phonenumber = phno where email = mail and comradeid = id$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `comrade`
--

CREATE TABLE `comrade` (
  `comradeid` int(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) DEFAULT NULL,
  `comrade_email` varchar(100) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comrade`
--

INSERT INTO `comrade` (`comradeid`, `email`, `phonenumber`, `comrade_email`) VALUES
(1, 'akki.bodhankar@gmail.com', '8885693793', NULL),
(1, 'mahesh234@gmail.com', '8885693793', NULL),
(2, 'akki.bodhankar@gmail.com', '9642063491', NULL),
(2, 'mahesh234@gmail.com', '9642063491', NULL),
(3, 'akki.bodhankar@gmail.com', NULL, NULL),
(3, 'mahesh234@gmail.com', '9985397810', NULL),
(4, 'akki.bodhankar@gmail.com', NULL, NULL),
(4, 'mahesh234@gmail.com', NULL, NULL),
(5, 'akki.bodhankar@gmail.com', NULL, NULL),
(5, 'mahesh234@gmail.com', NULL, NULL),
(6, 'akki.bodhankar@gmail.com', NULL, NULL),
(6, 'mahesh234@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phonenumbers`
--

CREATE TABLE `phonenumbers` (
  `name` text NOT NULL,
  `location` text,
  `phno` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonenumbers`
--

INSERT INTO `phonenumbers` (`name`, `location`, `phno`) VALUES
('PCMO', 'Syria', 1111),
('SSM', 'Syria', 2222),
('SARL', 'Syria', 3333),
('PCMO', 'Uganda', 4444),
('SSM', 'Uganda', 5555),
('SARL', 'Uganda', 6666),
('PCMO', 'Tunisia', 7777),
('SSM', 'Tunisia', 8888),
('SARL', 'Tunisia', 9999),
('OfficeOfVictimAdvocacy', NULL, 2024092701),
('OfficeOfCivilRightsAndDiversity', NULL, 2026922139),
('OfficeOfInspectorGeneral', NULL, 2026922915),
('PCSaves', NULL, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(100) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `host_country` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `username`, `password`, `host_country`) VALUES
('akki.bodhankar@gmail.com', 'Akanksha', '1234', 'India'),
('mahesh234@gmail.com', 'Mahesh ', '1234', 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comrade`
--
ALTER TABLE `comrade`
  ADD PRIMARY KEY (`comradeid`,`email`),
  ADD UNIQUE KEY `comrade_email` (`comrade_email`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `phonenumbers`
--
ALTER TABLE `phonenumbers`
  ADD UNIQUE KEY `phno` (`phno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comrade`
--
ALTER TABLE `comrade`
  ADD CONSTRAINT `comrade_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
