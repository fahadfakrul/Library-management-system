-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2023 at 03:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(250) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`book_id`, `book_name`, `author`, `quantity`) VALUES
(1, 'Java: A Beginner\'s Guide', 'Herbert Schildt ', 10),
(2, 'Fluent Python', 'Luciano Ramalho', 11),
(3, 'The Joy of PHP', 'Alan Forbes', 5),
(4, 'Dipu No 2', 'Muhammad Jafor Iqbal', 6),
(5, 'Raj Kahini', 'Rabindranath Thakur', 8),
(6, 'Alices adventures in wonderland', 'Tobias George Smollett', 11),
(7, 'Treasure Island', 'Robert Louis Stevenson', 6),
(8, 'The Hobbit', 'J.R.R. Tolkien', 9),
(9, 'Oliver Twist', 'Charles Dickens', 10),
(10, 'The great Gatsby', 'F. Scott Fitzgerald', 25),
(11, 'Animal Farm', 'George Orwell', 29);

-- --------------------------------------------------------

--
-- Table structure for table `issue_book_details`
--

CREATE TABLE `issue_book_details` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `book_name` varchar(150) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue_book_details`
--

INSERT INTO `issue_book_details` (`id`, `book_id`, `book_name`, `student_id`, `student_name`, `issue_date`, `due_date`, `status`) VALUES
(1, 1, 'JAVA', 1, 'Fahad', '2023-12-05', '2023-12-11', 'returned'),
(2, 2, 'PYTHON', 2, 'Emu', '2023-12-07', '2023-12-08', 'pending'),
(3, 2, 'Fluent Python', 3, 'Antor Chakraborty', '2023-12-09', '2023-12-21', 'returned'),
(4, 6, 'Alices adventures in wonderland', 6, 'Prome', '2023-12-09', '2023-12-18', 'pending'),
(5, 2, 'Fluent Python', 1, 'Fahad', '2023-11-03', '2023-12-21', 'pending'),
(6, 9, 'Oliver Twist', 9, 'Rohan', '2023-11-03', '2023-12-21', 'pending'),
(7, 7, 'Treasure Island', 5, 'Ome', '2023-11-17', '2023-12-22', 'pending'),
(8, 11, 'Animal Farm', 8, 'Zubran', '2023-11-17', '2023-12-08', 'pending'),
(9, 4, 'Dipu No 2', 7, 'Atik', '2023-12-08', '2023-12-08', 'pending'),
(10, 5, 'Raj Kahini', 3, 'Antor Chakraborty', '2023-12-09', '2023-12-21', 'returned'),
(11, 8, 'The Hobbit', 3, 'Antor Chakraborty', '2023-12-09', '2023-12-22', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`student_id`, `name`, `course`, `branch`) VALUES
(1, 'Fahad', 'BSC', 'CSE'),
(2, 'Emu', 'BSC ', 'CSE'),
(3, 'Antor Chakraborty', 'BSC ', 'CSE'),
(4, 'Arif', 'MSC', 'EEE'),
(5, 'Ome', 'MSC', 'BANGLA'),
(6, 'Prome', 'MSC', 'ELL'),
(7, 'Atik', 'MSC', 'PHARM.'),
(8, 'Zubran', 'MSC', 'BA'),
(9, 'Rohan', 'PHD', 'ELL'),
(10, 'Zakir', 'PHD', 'TE'),
(11, 'Nafis', 'MSC', 'EEE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `contact`) VALUES
(1, 'Fahad', '123456', 'fahad916@gmail.com', '01780243459'),
(2, 'Emu', '123456', 'emu@gmail.com', '123456789'),
(3, 'Antor', '123456', 'antor@gmail.com', '12456789'),
(11, 'Hamid', '12456', 'hamid@gmail.com', '123456789'),
(12, 'Prome', '1234568', 'prome@gmail.com', '154879656'),
(13, 'Manha', '123456', 'manah@yahoo.com', '1234568'),
(14, 'Asif', '123456', 'asif@hotmail.com', '1645654651'),
(15, 'Muntaha', '1651613', 'muntaha@gmail.com', '165416465'),
(16, 'Zubran', '65416541', 'zubra123@mailme.com', '454165416541'),
(17, 'Ali', '6516', 'bjhfgj@gmail.com', '45165416516');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `issue_book_details`
--
ALTER TABLE `issue_book_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `issue_book_details`
--
ALTER TABLE `issue_book_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
