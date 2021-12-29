-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.86-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema lms
--

CREATE DATABASE IF NOT EXISTS lms;
USE lms;

--
-- Definition of table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bookID` varchar(10) default NULL,
  `name` varchar(100) default NULL,
  `publisher` varchar(100) default NULL,
  `price` varchar(10) default NULL,
  `publisherYear` varchar(5) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`bookID`,`name`,`publisher`,`price`,`publisherYear`) VALUES 
 ('b1','Java Programming','James Thomson','2350','1997'),
 ('b2','Python','Reema Thareja','540','2011'),
 ('b4','Python Programming','Reema Threja','495','2009'),
 ('','','','','');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;


--
-- Definition of table `issue`
--

DROP TABLE IF EXISTS `issue`;
CREATE TABLE `issue` (
  `bookID` varchar(10) default NULL,
  `studentID` varchar(10) default NULL,
  `issueDate` varchar(20) default NULL,
  `dueDate` varchar(20) default NULL,
  `returnBook` varchar(5) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` (`bookID`,`studentID`,`issueDate`,`dueDate`,`returnBook`) VALUES 
 ('b1','1','24-11-2021','30-11-2021','YES'),
 ('b1 ','1','09-11-2021','12-11-2021','YES'),
 ('b2','1','02-11-2021','10-11-2021','YES'),
 ('b4','b4','14-12-2021','20-12-2021','No'),
 ('b2','10','27-12-2021','31-12-2021','No');
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;


--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentID` varchar(10) NOT NULL,
  `name` varchar(100) default NULL,
  `fatherName` varchar(100) default NULL,
  `courseName` varchar(20) default NULL,
  `branchName` varchar(20) default NULL,
  PRIMARY KEY  (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`studentID`,`name`,`fatherName`,`courseName`,`branchName`) VALUES 
 ('1','Mac','Deoraj Patel','MCA','IST'),
 ('10','Raja','mahi','BE','IST'),
 ('6','raja','mahajan','B.Tech','IST'),
 ('b1','Mukesh Kumar','Deoraj Patel','MCA','IST'),
 ('b2','john','mish','B.Tech','IT'),
 ('b4','Mac','Rajesh','MCA','IST');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
