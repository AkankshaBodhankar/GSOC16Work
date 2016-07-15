-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2016 at 12:06 AM
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
(1, 'abcd@gmail.com', NULL, NULL),
(1, 'abhi@gmail.com', NULL, NULL),
(1, 'akki.bodhankar@gmail.com', '8885693793', NULL),
(1, 'akki@gmail.com', NULL, NULL),
(1, 'akshata@gmail.com', NULL, NULL),
(1, 'akshu@gmail.com', NULL, NULL),
(1, 'anoosha@gmail.com', NULL, NULL),
(1, 'anu@yahoo.com', NULL, NULL),
(1, 'aubbu@yahoo.com', NULL, NULL),
(1, 'bodhankar.akanksha@gmail.com', NULL, NULL),
(1, 'hbkefe@hbkjsd.com', NULL, NULL),
(1, 'mahesh234@gmail.com', '8885693793', NULL),
(1, 'mahu@gmail.com', NULL, NULL),
(1, 'mala@rediffmail.com', NULL, NULL),
(1, 'manjusha@yahoo.com', NULL, NULL),
(1, 'shreyu@gmail.com', NULL, NULL),
(1, 'shruthi@yahoo.co.in', NULL, NULL),
(2, 'abcd@gmail.com', NULL, NULL),
(2, 'abhi@gmail.com', NULL, NULL),
(2, 'akki.bodhankar@gmail.com', '9985397810', NULL),
(2, 'akki@gmail.com', NULL, NULL),
(2, 'akshata@gmail.com', NULL, NULL),
(2, 'akshu@gmail.com', NULL, NULL),
(2, 'anoosha@gmail.com', NULL, NULL),
(2, 'anu@yahoo.com', NULL, NULL),
(2, 'aubbu@yahoo.com', NULL, NULL),
(2, 'bodhankar.akanksha@gmail.com', NULL, NULL),
(2, 'hbkefe@hbkjsd.com', NULL, NULL),
(2, 'mahesh234@gmail.com', '9642063491', NULL),
(2, 'mahu@gmail.com', NULL, NULL),
(2, 'mala@rediffmail.com', NULL, NULL),
(2, 'manjusha@yahoo.com', NULL, NULL),
(2, 'shreyu@gmail.com', NULL, NULL),
(2, 'shruthi@yahoo.co.in', NULL, NULL),
(3, 'abcd@gmail.com', NULL, NULL),
(3, 'abhi@gmail.com', NULL, NULL),
(3, 'akki.bodhankar@gmail.com', NULL, NULL),
(3, 'akki@gmail.com', NULL, NULL),
(3, 'akshata@gmail.com', NULL, NULL),
(3, 'akshu@gmail.com', NULL, NULL),
(3, 'anoosha@gmail.com', NULL, NULL),
(3, 'anu@yahoo.com', NULL, NULL),
(3, 'aubbu@yahoo.com', NULL, NULL),
(3, 'bodhankar.akanksha@gmail.com', NULL, NULL),
(3, 'hbkefe@hbkjsd.com', NULL, NULL),
(3, 'mahesh234@gmail.com', '9985397810', NULL),
(3, 'mahu@gmail.com', NULL, NULL),
(3, 'mala@rediffmail.com', NULL, NULL),
(3, 'manjusha@yahoo.com', NULL, NULL),
(3, 'shreyu@gmail.com', NULL, NULL),
(3, 'shruthi@yahoo.co.in', NULL, NULL),
(4, 'abcd@gmail.com', NULL, NULL),
(4, 'abhi@gmail.com', NULL, NULL),
(4, 'akki.bodhankar@gmail.com', NULL, NULL),
(4, 'akki@gmail.com', NULL, NULL),
(4, 'akshata@gmail.com', NULL, NULL),
(4, 'akshu@gmail.com', NULL, NULL),
(4, 'anoosha@gmail.com', NULL, NULL),
(4, 'anu@yahoo.com', NULL, NULL),
(4, 'aubbu@yahoo.com', NULL, NULL),
(4, 'bodhankar.akanksha@gmail.com', NULL, NULL),
(4, 'hbkefe@hbkjsd.com', NULL, NULL),
(4, 'mahesh234@gmail.com', NULL, NULL),
(4, 'mahu@gmail.com', NULL, NULL),
(4, 'mala@rediffmail.com', NULL, NULL),
(4, 'manjusha@yahoo.com', NULL, NULL),
(4, 'shreyu@gmail.com', NULL, NULL),
(4, 'shruthi@yahoo.co.in', NULL, NULL),
(5, 'abcd@gmail.com', NULL, NULL),
(5, 'abhi@gmail.com', NULL, NULL),
(5, 'akki.bodhankar@gmail.com', NULL, NULL),
(5, 'akki@gmail.com', NULL, NULL),
(5, 'akshata@gmail.com', NULL, NULL),
(5, 'akshu@gmail.com', NULL, NULL),
(5, 'anoosha@gmail.com', NULL, NULL),
(5, 'anu@yahoo.com', NULL, NULL),
(5, 'aubbu@yahoo.com', NULL, NULL),
(5, 'bodhankar.akanksha@gmail.com', NULL, NULL),
(5, 'hbkefe@hbkjsd.com', NULL, NULL),
(5, 'mahesh234@gmail.com', NULL, NULL),
(5, 'mahu@gmail.com', NULL, NULL),
(5, 'mala@rediffmail.com', NULL, NULL),
(5, 'manjusha@yahoo.com', NULL, NULL),
(5, 'shreyu@gmail.com', NULL, NULL),
(5, 'shruthi@yahoo.co.in', NULL, NULL),
(6, 'abcd@gmail.com', NULL, NULL),
(6, 'abhi@gmail.com', NULL, NULL),
(6, 'akki.bodhankar@gmail.com', NULL, NULL),
(6, 'akki@gmail.com', NULL, NULL),
(6, 'akshata@gmail.com', NULL, NULL),
(6, 'akshu@gmail.com', NULL, NULL),
(6, 'anoosha@gmail.com', NULL, NULL),
(6, 'anu@yahoo.com', NULL, NULL),
(6, 'aubbu@yahoo.com', NULL, NULL),
(6, 'bodhankar.akanksha@gmail.com', NULL, NULL),
(6, 'hbkefe@hbkjsd.com', NULL, NULL),
(6, 'mahesh234@gmail.com', NULL, NULL),
(6, 'mahu@gmail.com', NULL, NULL),
(6, 'mala@rediffmail.com', NULL, NULL),
(6, 'manjusha@yahoo.com', NULL, NULL),
(6, 'shreyu@gmail.com', NULL, NULL),
(6, 'shruthi@yahoo.co.in', NULL, NULL);

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
('abcd@gmail.com', 'abc123', 'abcdefg', 'UK'),
('abhi@gmail.com', 'Abhishek', '1234', 'USA'),
('akki.bodhankar@gmail.com', 'Akanksha', '1234', 'India'),
('akki@gmail.com', 'Akanksha', '1234', 'UK'),
('akshata@gmail.com', 'Akshata', '1234', 'UK'),
('akshu@gmail.com', 'Akshata Bodhankar', 'Akshata', 'USA'),
('anoosha@gmail.com', 'Anoosha', '1234', 'India'),
('anu@yahoo.com', 'Anoosha', 'abcd', 'UK'),
('aubbu@yahoo.com', 'subbu', '2345', 'India'),
('bodhankar.akanksha@gmail.com', 'Akanksha', '123456', 'UK'),
('hbkefe@hbkjsd.com', 'hbgjhefe', 'efkebwf', 'kbekfe'),
('mahesh234@gmail.com', 'Mahesh ', '1234', 'India'),
('mahu@gmail.com', 'Mahesh Bodhankar', '123456', 'India'),
('mala@rediffmail.com', 'Mala', '2345', 'UK'),
('manjusha@yahoo.com', 'Manjusha', '1234', 'USA'),
('shreyu@gmail.com', 'Shreyas', '1234', 'India'),
('shruthi@yahoo.co.in', 'Shruthi', '12345', 'UK');

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
