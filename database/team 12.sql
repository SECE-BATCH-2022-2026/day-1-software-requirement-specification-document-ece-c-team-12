-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: dec 05, 2023 at 09:15 PM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iac_spring_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE IF NOT EXISTS `authorities` (
  `username` varchar(60) NOT NULL,
  `authority` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`username`, `authority`) VALUES
('admin', 'ROLE_ADMIN'),
('saikat', 'ROLE_GENERAL'),
('shovon', 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `email` varchar(60) NOT NULL,
  `deadline` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `title`, `company`, `details`, `email`, `deadline`) VALUES
(1, 'Software Developer', 'Therap Services Ltd', 'Work as Technical Lead of Java/Web projects and take responsibility for designing entire application architecture based on requirements, creating base code and standardizing all technical principles.\r\nHave experience in designing project common lib/framework for client side using SCSS, Less and jQuery or MVVM framework to improve project quality and productivity.\r\nHave experience in designing flow of testing phase and documenting to inform project standards to developers.', 'sibianath.m2022ece@sece.ac.in', '13 July, 2023'),
(5, 'Copy Writer', 'Khola Janala', 'Have to write a lot!', 'tamilarasan.m2022ece@sece.ac.in', '13 June, 2023'),
(7, 'Biochemist', 'Square Ltd', 'Has to work 24 hrs a day.', 'santhoshkumar.r2022ece@sece.ac.in', '23 August, 2023'),
(8, 'Developer', 'TNT Corp', 'Work as software developer', 'sivaprakash.g2022ece@sece.ac.in', '11 August, 2023'),
(9, 'Business Manager', 'Unilever Bangladesh', 'Has to perform various managerial duties.', 'sureendran.s2022ece@sece.ac.in', '31 February, 2023'),
(10, 'Software Manager', 'BRAC IT Ltd', 'Have to manage software projects.', 'vignesh.r2022ece@sece.ac.in', '12 January, 2023');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(60) NOT NULL,
  `password` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `email`, `enabled`) VALUES
('santhosh', 'f1c9da7a2275388fed1bb612e9559d85b56c5321d3694d7979c71691cfc2a319b2c8f899893a97e9', 'santhosh.n2022ece@sece.ac.in', 1),
('sobiga', '8c9e4fe6dce0c580004acc411b492465683ca5b3ca1df4060085e1cba7c53a5a87d2a4012442bc75', 'sobiga.k2022ece@sece.ac.in', 1),
('subasri', 'aa66099c2480e96252e4e08477934c5fb59be1ac3d0514fcfe3b0c2d76a4e6e1621ab51824320f6d', 'subasri.m2022ece@sece.ac.in', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
