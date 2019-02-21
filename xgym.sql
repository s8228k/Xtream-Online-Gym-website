-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2018 at 07:23 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xgym`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminUserName` varchar(30) DEFAULT NULL,
  `adminId` int(4) NOT NULL,
  `adminDOB` date DEFAULT NULL,
  `adminAddress` varchar(100) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminUserName`, `adminId`, `adminDOB`, `adminAddress`, `password`) VALUES
('AAAA', 1001, '1978-06-25', 'colombo06', '1234567'),
('BBBB', 1002, '1966-11-11', 'jaffna', '2345678'),
('CCCC', 1003, '1965-09-24', 'Kandy', '3456789'),
('DDDD', 1004, '1983-12-23', 'colombo 7', 'ddd123456'),
('EEEE', 1005, '1976-10-10', 'narahenpita', 'eee123456');

-- --------------------------------------------------------

--
-- Table structure for table `bmi`
--

DROP TABLE IF EXISTS `bmi`;
CREATE TABLE IF NOT EXISTS `bmi` (
  `username` varchar(16) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bmi` float DEFAULT NULL,
  `des` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bmi`
--

INSERT INTO `bmi` (`username`, `date`, `bmi`, `des`) VALUES
('erandijon', '2018-02-01 18:30:00', 30.7, 'over weight'),
('erandijon', '2018-03-03 18:30:00', 24.5, 'healthy weight'),
('erandijon', '2018-03-27 18:30:00', 25.1, 'over weight'),
('erandijon', '2018-05-18 18:30:00', 441, 'asahs'),
('erandijon', '2018-05-19 13:42:17', 512515000, 'shdkjshkjdhk'),
('erandijon', '2018-06-18 18:30:00', 441, 'asahs'),
('janadiboy', '2018-01-02 18:30:00', 15.3, 'under weight'),
('janadiboy', '2018-02-11 18:30:00', 16.1, 'under weight'),
('janadiboy', '2018-03-02 18:30:00', 16.5, 'under weight'),
('janadiboy', '2018-03-05 18:30:00', 16.5, 'under weight'),
('rushdamal', '0000-00-00 00:00:00', 25.3906, 'over weight'),
('rushdamal', '2018-02-15 18:30:00', 20.7, 'healty weight'),
('rushdamal', '2018-05-18 18:30:00', 0, 'null'),
('rushdamal', '2018-05-19 13:45:25', 20.9877, 'healthy weight'),
('rushdamal', '2018-05-19 13:46:01', 20.9877, 'healthy weight'),
('rushdamal', '2018-05-19 13:47:16', 20.9877, 'healthy weight'),
('rushdamal', '2018-05-19 13:50:04', 22.1607, 'healthy weight'),
('rushdamal', '2018-05-19 13:55:26', 22.1607, 'healthy weight'),
('rushdamal', '2018-05-19 14:08:11', 20.7756, 'healthy weight');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
CREATE TABLE IF NOT EXISTS `equipment` (
  `equipmentId` int(4) NOT NULL,
  `equipmentName` varchar(30) DEFAULT NULL,
  `dateOfPurchase` date DEFAULT NULL,
  `Cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equipmentId`, `equipmentName`, `dateOfPurchase`, `Cost`) VALUES
(2345, 'Dumbells', '2018-05-10', 10000),
(2355, 'Leg Press', '2018-05-24', 40000),
(3456, 'Treadmill', '2018-05-09', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `fname` varchar(15) DEFAULT NULL,
  `lname` varchar(15) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`fname`, `lname`, `gender`, `dob`, `email`, `username`, `password`, `address`, `phone`) VALUES
('erandi', 'jonny', 'female', '1996-07-01', 'erandi@gmail.com', 'erandijon', '@Erandi01', '56Rathmalana', '0771234567'),
('janadi', 'maboy', 'female', '1997-10-24', 'janadi@gmail.com', 'janadiboy', '123456789', '50,Colombo 07', '0775678912'),
('jane', 'jack', 'Female', '1997-01-30', 'janejack@gmail.com', 'janeJack', '123456789', 'mount', '0112345678'),
('rjve', 'nigu', 'male', '1996-01-01', 'rjve@gmail.com', 'rjvenigu', 'rjvenigu', 'colombo', '0777777777'),
('rushda', 'malli', 'female', '1997-01-30', 'rushda@gmail.com', 'rushdamal', 'rushda30', '38,MT.Lavinia', '0772345678'),
('pirathap', 'tharmalingam', 'Male', '1991-07-24', 'pirathapthass@gmail.com', 'thass', 'vishali1124', 'jaffna', '0779999999'),
('visha', 'barney', 'female', '1996-11-11', 'visha@gmail.com', 'visha1inip', 'visha1124', '9,Bambalapitiya', '0773456789');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `paymentId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `date` date NOT NULL,
  `TotalPayment` float NOT NULL,
  PRIMARY KEY (`paymentId`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentId`, `username`, `date`, `TotalPayment`) VALUES
(5, 'rushdamal', '2018-05-19', 3000),
(6, 'rushdamal', '2018-05-19', 3000),
(7, 'rushdamal', '2018-05-19', 6500);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `scheduleId` char(4) NOT NULL,
  `scheduleType` varchar(20) NOT NULL,
  `scheduleName` varchar(20) NOT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`scheduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleId`, `scheduleType`, `scheduleName`, `price`) VALUES
('A000', 'Activities', 'Activities', 4000),
('A001', 'Activities', 'BodyTone', 4000),
('A002', 'Activities', 'FitnessPilates', 4000),
('A003', 'Activities', 'Legs,Bums,Tums', 4000),
('A004', 'Activities', 'Cycling', 5000),
('A005', 'Activities', 'Cardio', 3000),
('P001', 'Plan', 'Yoga', 3000),
('P002', 'Plan', 'Aerobics', 3500),
('S001', 'Sports', 'Badminton', 2500),
('S002', 'Sports', 'Tennis', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `scheduleactivity`
--

DROP TABLE IF EXISTS `scheduleactivity`;
CREATE TABLE IF NOT EXISTS `scheduleactivity` (
  `scheduleId` char(4) NOT NULL,
  `scheduleName` varchar(20) NOT NULL,
  `username` varchar(16) NOT NULL,
  PRIMARY KEY (`scheduleId`,`username`),
  KEY `fk_scheduleName` (`scheduleName`),
  KEY `fk_username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheduleactivity`
--

INSERT INTO `scheduleactivity` (`scheduleId`, `scheduleName`, `username`) VALUES
('P002', 'Aerobics', 'erandijon'),
('P001', 'Yoga', 'janadiboy'),
('A000', 'Activities', 'vishalinip'),
('A000', 'Activities', 'rjvenigu'),
('A000', 'Activities', 'janadiboy'),
('A000', 'Activities', 'erandijon'),
('A000', 'Activities', 'rushdamal'),
('S001', 'Badminton', 'vishalinip'),
('S001', 'Badminton', 'rjvenigu'),
('S002', 'Tennis', 'rushdamal'),
('S002', 'Tennis', 'vishalinip'),
('S002', 'Tennis', 'janadiboy'),
('A003', 'Legs,Bums,Tums', 'null'),
('A003', 'Legs,Bums,Tums', 'rushdamal');

-- --------------------------------------------------------

--
-- Table structure for table `scheduledaytime`
--

DROP TABLE IF EXISTS `scheduledaytime`;
CREATE TABLE IF NOT EXISTS `scheduledaytime` (
  `scheduleId` char(4) NOT NULL,
  `Day` varchar(15) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  PRIMARY KEY (`scheduleId`,`Day`,`starttime`,`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheduledaytime`
--

INSERT INTO `scheduledaytime` (`scheduleId`, `Day`, `starttime`, `endtime`) VALUES
('A001', 'MONDAY', '08:00:00', '10:00:00'),
('A001', 'THURSDAY', '10:00:00', '12:00:00'),
('A001', 'TUESDAY', '09:00:00', '11:00:00'),
('A002', 'FRIDAY', '12:00:00', '14:00:00'),
('A002', 'MONDAY', '11:00:00', '13:00:00'),
('A002', 'WEDNESDAY', '12:00:00', '14:00:00'),
('A003', 'FRIDAY', '15:00:00', '17:00:00'),
('A003', 'MONDAY', '15:00:00', '17:00:00'),
('A003', 'THURSDAY', '16:00:00', '18:00:00'),
('A003', 'TUESDAY', '13:00:00', '15:00:00'),
('A003', 'WEDNESDAY', '15:00:00', '17:00:00'),
('A004', 'FRIDAY', '18:00:00', '20:00:00'),
('A004', 'TUESDAY', '16:00:00', '18:00:00'),
('A004', 'WEDNESDAY', '18:00:00', '20:00:00'),
('A005', 'FRIDAY', '08:00:00', '09:00:00'),
('A005', 'WEDNESDAY', '08:00:00', '10:00:00'),
('P001', 'SATURDAY', '08:00:00', '10:00:00'),
('P001', 'SATURDAY', '18:00:00', '20:00:00'),
('P001', 'SUNDAY', '08:00:00', '10:00:00'),
('P001', 'SUNDAY', '16:00:00', '20:00:00'),
('P002', 'SATURDAY', '11:00:00', '13:00:00'),
('P002', 'SUNDAY', '11:00:00', '13:00:00'),
('S001', 'SATURDAY', '14:00:00', '16:00:00'),
('S001', 'SUNDAY', '16:00:00', '18:00:00'),
('S002', 'SATURDAY', '16:00:00', '18:00:00'),
('S002', 'SUNDAY', '14:00:00', '16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `testadd`
--

DROP TABLE IF EXISTS `testadd`;
CREATE TABLE IF NOT EXISTS `testadd` (
  `CartId` char(4) NOT NULL,
  `username` varchar(16) NOT NULL,
  `scheduleName` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `Date` varchar(10) NOT NULL,
  PRIMARY KEY (`CartId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testadd`
--

INSERT INTO `testadd` (`CartId`, `username`, `scheduleName`, `price`, `Date`) VALUES
('P001', 'erandijon', 'Yoga', 3000, '2018-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `trainee`
--

DROP TABLE IF EXISTS `trainee`;
CREATE TABLE IF NOT EXISTS `trainee` (
  `traineename` varchar(20) NOT NULL,
  `traineeid` int(11) NOT NULL,
  `traineetype` varchar(20) NOT NULL,
  `message` varchar(150) NOT NULL,
  PRIMARY KEY (`traineeid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainee`
--

INSERT INTO `trainee` (`traineename`, `traineeid`, `traineetype`, `message`) VALUES
('Roshnikan', 1111, 'Badminton', 'Class includes badminton sessions'),
('Shanimal', 2222, 'Cardio', 'Half an hour of Muscular exercises will be done'),
('Pikka', 3333, 'Aerobics', 'class includes cardio sessions'),
('Chathurika', 4444, 'Cycling', 'An hour of fitness Plans will be done'),
('Kamal', 5555, 'BodyTone', 'One hour of Machine Equipment are used to exercise'),
('Nimal', 6666, 'FitnessPilates', 'class includes fitness sessions'),
('Vimal', 7777, 'Tennis', 'Class includes tennis sessions'),
('Suni', 8888, 'Legs,Bums,Tums', 'One hour of Ab sessions will be done'),
('Kapiki', 9999, 'Yoga', 'Class includes Hourly Breathing sessions');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bmi`
--
ALTER TABLE `bmi`
  ADD CONSTRAINT `fk_bmi` FOREIGN KEY (`username`) REFERENCES `member` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
