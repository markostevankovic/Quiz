-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2016 at 09:42 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
CREATE TABLE IF NOT EXISTS `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `first_name`, `last_name`, `password`) VALUES
(1, 'admin', 'admin', '1234'),
(2, 'vladan', 'devedzic', 'john_lennon'),
(3, 'bojan', 'tomic', 'biblioteka'),
(5, 'filip', 'stojkovic', 'redstarbelgrade');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `id_answer` int(11) NOT NULL AUTO_INCREMENT,
  `answer_text` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `id_question` int(11) NOT NULL,
  PRIMARY KEY (`id_answer`),
  KEY `id_question` (`id_question`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id_answer`, `answer_text`, `is_correct`, `id_question`) VALUES
(1, 'Thread', 0, 1),
(2, 'Object', 1, 1),
(3, 'String', 0, 1),
(4, 'Main', 0, 1),
(5, 'Thread', 0, 3),
(6, 'Object', 0, 3),
(7, 'String', 0, 3),
(8, 'Throwable', 1, 3),
(9, 'Thread', 0, 4),
(10, 'Object', 0, 4),
(11, 'InputStream', 1, 4),
(12, 'JFrame', 0, 4),
(13, 'Thread', 1, 5),
(14, 'Object', 0, 5),
(15, 'OutputStream', 0, 5),
(16, 'JFrame', 0, 5),
(17, 'null', 0, 6),
(18, '0', 0, 6),
(19, 'Depends upon the type of variable', 0, 6),
(20, 'Not assigned', 1, 6),
(21, '0', 1, 7),
(22, '0.0', 0, 7),
(23, 'null', 0, 7),
(24, 'not defined', 0, 7),
(25, 'Variables, methods and constructors which are declared public can be accessed by any class.', 1, 8),
(26, 'Variables, methods and constructors which are declared public can be accessed by any class lying in same package.', 0, 8),
(27, 'Variables, methods and constructors which are declared public in the superclass can be accessed only by its child class.', 0, 8),
(28, 'None of the above.', 0, 8),
(29, 'Instance variables are static variables within a class but outside any method.', 1, 9),
(30, 'Instance variables are variables defined inside methods, constructors or blocks.', 0, 9),
(31, 'Instance variables are variables within a class but outside any method.', 0, 9),
(32, 'None of the above.', 0, 9),
(33, 'Methods with same name but different return types.', 0, 10),
(34, 'Methods with same name but different parameters.', 1, 10),
(35, 'Methods with same name, same parameter types but different parameter names.', 0, 10),
(36, 'None of the above.', 0, 10),
(37, 'class is a special data type.', 0, 11),
(38, 'class is used to allocate memory to a data type.', 0, 11),
(39, 'class is another name for integer data type.', 0, 11),
(40, 'class is a blue print from which individual objects are created. A class can contain fields and methods to describe the behavior of an object.', 1, 11),
(41, '8 bit', 0, 12),
(42, '16 bit', 0, 12),
(43, '32 bit', 1, 12),
(44, '64 bit', 0, 12),
(45, '0.0f', 0, 13),
(46, '0.0d', 1, 13),
(47, '0', 0, 13),
(48, 'not defined', 0, 13),
(49, 'String is mutable.', 1, 14),
(50, 'String is immutable.', 0, 14),
(51, 'String is a data type.', 0, 14),
(52, 'None of the above.', 0, 14),
(53, 'Static Binding.', 1, 15),
(54, 'Dynamic Binding.', 0, 15),
(55, 'Both of the above.', 0, 15),
(56, 'None of the above.', 0, 15),
(57, '8 bit', 0, 16),
(58, '16 bit', 0, 16),
(59, '32 bit', 1, 16),
(60, '64 bit', 0, 16),
(61, 'true', 0, 17),
(62, 'false', 1, 17),
(63, 'null', 0, 17),
(64, 'not defined', 0, 17),
(65, 'type', 0, 18),
(66, 'object', 1, 18),
(67, 'Both of the above', 0, 18),
(68, 'None of the above', 0, 18),
(69, 'Serialization is the process of restoring state of an object from an object.', 0, 19),
(70, 'Deserialization is the process of restoring state of an object from a byte stream.', 1, 19),
(71, 'Both of the above', 0, 19),
(72, 'None of the above', 0, 19);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id_question` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id_question`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id_question`, `description`) VALUES
(1, 'Koja je nadklasa svih klasa u programskom jeziku JAVA?'),
(3, 'Koja je natklasa svih izuzetaka u JAVI?'),
(4, 'Koja je osnovna klasa za ulazni tok u programskom jeziku JAVA?'),
(5, 'Koja je osnovna klasa za visenitno programiranje u programskom jeziku JAVA?'),
(6, 'What of the following is the default value of a local variable?'),
(7, 'What is the default value of int variable?'),
(8, 'Which of the following is true about public access modifier?'),
(9, 'What is instance variable?'),
(10, 'What is function overloading?'),
(11, 'What is a class in java?'),
(12, 'What is the size of short variable?'),
(13, 'What is the default value of double variable?'),
(14, 'Which of the following is true about String?'),
(15, 'Method Overloading is an example of'),
(16, 'What is the size of float variable?'),
(17, 'What is the default value of Boolean variable?'),
(18, 'Dynamic binding uses which information for binding?'),
(19, 'What is Deserialization?');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `index_number` int(4) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `enrollment_year` int(4) NOT NULL,
  `password` varchar(20) NOT NULL,
  `result` int(11) DEFAULT NULL,
  PRIMARY KEY (`index_number`,`enrollment_year`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`index_number`, `first_name`, `last_name`, `enrollment_year`, `password`, `result`) VALUES
(1, 'Valentina', 'Andjelkovic', 2014, '2014/1_JAVA', 2),
(8, 'Marko', 'Stevankovic', 2014, '2014/8_JAVA', 6),
(17, 'Vanja', 'Stojanovic', 2014, '2014/17_JAVA', 0),
(115, 'Srdjan', 'Tripkovic', 2014, '2014/115_JAVA', 0),
(123, 'Tijana', 'Terzic', 2014, '2014/123_JAVA', 0),
(248, 'Milose', 'Cvetkovic', 2014, '2014/248_JAVA', 0),
(256, 'Filip', 'Stojkovic', 2014, '2014/256_JAVA', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `question` (`id_question`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
