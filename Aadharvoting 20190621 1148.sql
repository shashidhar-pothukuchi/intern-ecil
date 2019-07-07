-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema aadhar1
--

CREATE DATABASE IF NOT EXISTS aadhar1;
USE aadhar1;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(45) NOT NULL default 'mmm',
  `password` varchar(45) NOT NULL default 'mmm',
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`username`,`password`) VALUES 
 ('admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `countr`
--

DROP TABLE IF EXISTS `countr`;
CREATE TABLE `countr` (
  `aadhaarid` varchar(45) NOT NULL,
  `partyname` varchar(45) NOT NULL,
  PRIMARY KEY  (`aadhaarid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countr`
--

/*!40000 ALTER TABLE `countr` DISABLE KEYS */;
INSERT INTO `countr` (`aadhaarid`,`partyname`) VALUES 
 ('0988-1673-6532','TRS'),
 ('111','CONGRESS'),
 ('1111','CONGRESS'),
 ('11222','BJP'),
 ('12',''),
 ('1222-2221-1222','BJP'),
 ('1234',''),
 ('123456789','TDP'),
 ('4567',''),
 ('67890','BJP'),
 ('987776555433','CONGRESS'),
 ('9998','CONGRESS');
/*!40000 ALTER TABLE `countr` ENABLE KEYS */;


--
-- Definition of table `party`
--

DROP TABLE IF EXISTS `party`;
CREATE TABLE `party` (
  `Candidatename` varchar(90) NOT NULL,
  `Area` varchar(45) NOT NULL,
  `Partyname` varchar(45) NOT NULL,
  `Partysymbol` varchar(45) NOT NULL,
  PRIMARY KEY  (`Partyname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party`
--

/*!40000 ALTER TABLE `party` DISABLE KEYS */;
INSERT INTO `party` (`Candidatename`,`Area`,`Partyname`,`Partysymbol`) VALUES 
 ('kcr','HYD','TRS','II');
/*!40000 ALTER TABLE `party` ENABLE KEYS */;


--
-- Definition of table `partyd`
--

DROP TABLE IF EXISTS `partyd`;
CREATE TABLE `partyd` (
  `partyname` varchar(45) NOT NULL,
  PRIMARY KEY  (`partyname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partyd`
--

/*!40000 ALTER TABLE `partyd` DISABLE KEYS */;
INSERT INTO `partyd` (`partyname`) VALUES 
 ('BJP'),
 ('CONGRESS'),
 ('CPI'),
 ('Lok Satta'),
 ('TDP'),
 ('TRS'),
 ('YSRCP');
/*!40000 ALTER TABLE `partyd` ENABLE KEYS */;


--
-- Definition of table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `name` varchar(50) NOT NULL,
  `voterid` varchar(45) NOT NULL,
  `aadhaarid` varchar(45) NOT NULL,
  `mobilenumber` varchar(20) NOT NULL,
  `dateofbirth` datetime NOT NULL,
  `gender` varchar(60) NOT NULL default 'm',
  `username` varchar(60) NOT NULL default 'f',
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`name`,`voterid`,`aadhaarid`,`mobilenumber`,`dateofbirth`,`gender`,`username`,`password`) VALUES 
 ('1@gmail.com','111111','1222-2221-1222','8500895709','1999-03-02 00:00:00','male','123','shashi'),
 ('123@gmail.com','11','111','111111','0001-02-01 00:00:00','female','1234',''),
 ('ak@gmail.com','111111','1222-2221-1222','8500895709','1999-03-02 00:00:00','male','ak','shashi'),
 ('akash@gmail.com','111111','1222-2221-1222','8500895709','1999-03-02 00:00:00','male','akash','akash'),
 ('2@gmail.com','123456','1222-2221-1222','8500895709','1999-02-03 00:00:00','male','allo','shashi'),
 ('arun','qwe','1234','7800','2009-09-09 00:00:00','male','arun','arun'),
 ('am','abx','54674','88899','2001-02-03 00:00:00','m','kk','kk'),
 ('p','p','12','133','2001-01-01 00:00:00','m','m','p'),
 ('sai','abc','67890','563738','2006-06-06 00:00:00','male','mi','sai'),
 ('nike','11111','1111','111111','0001-01-01 00:00:00','male','nike','nihil'),
 ('nikhil@gmail.com','562231','0988-1673-6532','9912313523`','1999-10-17 00:00:00','male','nikhil','nikhil'),
 ('pvdprasad@gmail.com','98765','987776555433','9391602595','1998-06-10 00:00:00','male','prasad','prasad');
INSERT INTO `register` (`name`,`voterid`,`aadhaarid`,`mobilenumber`,`dateofbirth`,`gender`,`username`,`password`) VALUES 
 ('ram','edc','12345678','1234567890','2007-07-07 00:00:00','male','ram','ram'),
 ('saithechinnu@gmail.com','111111','1222-2221-1222','8500895709','1999-03-02 00:00:00','male','shashi','shashi');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;


--
-- Definition of table `sign-in`
--

DROP TABLE IF EXISTS `sign-in`;
CREATE TABLE `sign-in` (
  `username` varchar(60) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign-in`
--

/*!40000 ALTER TABLE `sign-in` DISABLE KEYS */;
/*!40000 ALTER TABLE `sign-in` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
