-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2016 at 07:10 PM
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `dupemail` (IN `mail` VARCHAR(100))  select *from user where email = mail$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `login` (IN `pass` VARCHAR(100), IN `mail` VARCHAR(100))  select * from user where password = pass AND email = mail$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `registration` (IN `mail` VARCHAR(100), IN `uname` VARCHAR(100), IN `pass` VARCHAR(100), IN `country` VARCHAR(100))  insert into user values(mail,uname,pass,country)$$

DELIMITER ;

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
('abhi@gmail.com', 'abhi', '1234', 'India'),
('akki.bodhankar@gmail.com', 'Akanksha Bodhankar', 'Akki', 'India'),
('akki06@gmail.com', 'Akki', '1234567890', 'UK'),
('akshata.bodhankar@gmail.com', 'akshu', 'abcd', 'India'),
('atharv@gmail.com', 'Atharv Bodhankar', '1234', 'India'),
('bodhankar.akanksha@gmail.com', 'akki', '1234', 'India'),
('fghs@gmail.com', 'akki', '5678', 'India'),
('harshala@gmail.com', 'Harshala', '1234', 'India'),
('hh', '7wrgr', '7867', 'rger'),
('hha@gmail.com', 'akki', '12345', 'UK'),
('hhh@gmail.com', 'akki', 'jbgjhva', 'India'),
('hyyd@gmail.com', 'xyz123', '1234', 'uk'),
('mahesh@gmail.com', 'mahesh', '12345', 'uk'),
('rash@gmail.com', 'Rashmi Patankar', 'abcd', 'USA'),
('vadevjb@gmail.com', 'hhhhh', 'jbkajed', 'ins'),
('xyz@gmail.com', 'akki', '12345', 'india');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
