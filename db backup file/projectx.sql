-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 02:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectx`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'ankush', 'aaaa', 'ankush@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `categ`
--

CREATE TABLE `categ` (
  `c_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categ`
--

INSERT INTO `categ` (`c_id`, `category`) VALUES
(1, 'Heat Transfer'),
(2, 'Fluid Mechanics'),
(3, 'Thermal'),
(4, 'Database Management System'),
(5, 'Compilers'),
(6, 'Mathamatics'),
(9, 'Science'),
(10, 'Operating System'),
(11, 'Mechanical'),
(12, 'BioTechnology'),
(13, 'Chemistry'),
(14, 'Logic Designing'),
(15, 'Medicals'),
(16, 'Electrical'),
(18, 'English'),
(19, 'Physics'),
(20, 'Commerce');

-- --------------------------------------------------------

--
-- Table structure for table `postbook`
--

CREATE TABLE `postbook` (
  `p_id` int(11) NOT NULL,
  `b_name` varchar(50) NOT NULL,
  `b_isbn` varchar(30) NOT NULL,
  `b_auth` varchar(50) NOT NULL,
  `og_pr` int(11) NOT NULL,
  `ex_pr` int(11) DEFAULT NULL,
  `descript` varchar(200) NOT NULL,
  `pic1` varchar(50) NOT NULL,
  `pic2` varchar(50) NOT NULL,
  `pic3` varchar(50) NOT NULL,
  `genr1` varchar(40) NOT NULL,
  `genr2` varchar(40) NOT NULL,
  `genr3` varchar(40) NOT NULL,
  `genr4` varchar(40) NOT NULL,
  `used` varchar(1) NOT NULL,
  `dt_creation` datetime NOT NULL DEFAULT current_timestamp(),
  `display` varchar(1) NOT NULL,
  `usenam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `postbook`
--

INSERT INTO `postbook` (`p_id`, `b_name`, `b_isbn`, `b_auth`, `og_pr`, `ex_pr`, `descript`, `pic1`, `pic2`, `pic3`, `genr1`, `genr2`, `genr3`, `genr4`, `used`, `dt_creation`, `display`, `usenam`) VALUES
(1, 'Software Engineering', '1234567890', 'Ian Sommerville', 500, 300, '10th edition', '../uploads/63d978c5b1ff84.52391595.jpg', '../uploads/63d978c5b1fff7.36988046.jpg', '../uploads/63d978c5b20000.68493668.jpg', 'Computer Science', 'Reference Books', '', '', 'N', '2023-02-01 01:53:33', 'Y', 9),
(2, 'Compiler Design', '3874938132', 'Alfred V. Aho, Monica S Lam', 450, 220, 'Second Edition and in good condition', '../uploads/63d97a3ab03b89.67150151.jpg', '../uploads/63d97a3ab03c45.38855230.jpg', '../uploads/63d97a3ab03c67.36950936.jpg', 'Computer Science', 'Reference Books', '', 'Engineering', 'N', '2023-02-01 01:59:46', 'Y', 10),
(3, 'Fundamentals of Database System', '5487583475', 'Ramez Elmasri', 600, 419, 'Seventh edition', '../uploads/63d97abd2a7623.74548819.jpg', '../uploads/63d97abd2a76c4.51987544.jpg', '../uploads/63d97abd2a76d3.32648854.jpg', 'Engineering', 'Computer Science', '', '', 'N', '2023-02-01 02:01:57', 'Y', 10),
(4, 'Give and Take', '4578374873', 'Adam Grant', 399, 250, 'Superb Condition', '../uploads/63d97b3cd654c6.15997159.jpg', '../uploads/63d97b3cd65539.32656185.jpg', '../uploads/63d97b3cd65545.71532056.jpg', 'Drama', 'Narrative Nonfiction', '', '', 'N', '2023-02-01 02:04:04', 'Y', 10),
(20, 'harry potter and the prisoner of azkaban', '37377473373', 'JK ROWLINGS', 500350, 350, 'superb condition', '../uploads/64212921e80d83.67465967.jpg', '../uploads/64212921e839f7.44692499.jpg', '../uploads/64212921e83a26.98036843.jpg', 'Comics', '', '', '', 'N', '2023-03-27 10:56:57', 'Y', 10);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `re_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact1` varchar(12) NOT NULL,
  `contact2` varchar(12) NOT NULL,
  `price` int(11) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`re_id`, `email`, `contact1`, `contact2`, `price`, `pos_id`, `owner_id`) VALUES
(25, 'nitinsingh80663@gmail.com', '9858267595', '8899865679', 200, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_basket`
--

CREATE TABLE `shopping_basket` (
  `u_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopping_basket`
--

INSERT INTO `shopping_basket` (`u_id`, `p_id`) VALUES
(9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `state`, `city`, `password`) VALUES
(9, 'nitinsingh.cs20@rvce.edu.in', 'Bengaluru', 'RVCE', '$2y$10$jMUYJ2VDgvuBWWsEEO1/ouZWz7stEjzRZQxWZWelMEXPgNSD0z3cq'),
(10, 'pragam@gmail.com', 'Bengaluru', 'RVCE', '$2y$10$W.hwU5DdjleM3XFtuMwf3et9Llk0XjlgMVUpb9NFcOIY5ctjSXQ/G');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categ`
--
ALTER TABLE `categ`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `postbook`
--
ALTER TABLE `postbook`
  ADD PRIMARY KEY (`p_id`);
ALTER TABLE `postbook` ADD FULLTEXT KEY `b_name` (`b_name`,`b_isbn`,`b_auth`,`descript`,`genr1`,`genr2`,`genr3`,`genr4`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`re_id`);

--
-- Indexes for table `shopping_basket`
--
ALTER TABLE `shopping_basket`
  ADD PRIMARY KEY (`u_id`,`p_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categ`
--
ALTER TABLE `categ`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `postbook`
--
ALTER TABLE `postbook`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `re_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
