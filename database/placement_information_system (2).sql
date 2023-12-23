-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 03:08 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placement information system`
--

-- --------------------------------------------------------

--
-- Table structure for table `drive_details`
--

CREATE TABLE `drive_details` (
  `company_name` varchar(50) NOT NULL,
  `eligible_branches` varchar(100) NOT NULL,
  `eligible_year` int(40) NOT NULL,
  `criteria` varchar(40) NOT NULL,
  `ssc` float NOT NULL,
  `hsc` float NOT NULL,
  `graduation` float NOT NULL,
  `postgraduation` float NOT NULL,
  `backlog` int(2) NOT NULL,
  `gap` int(2) NOT NULL,
  `job_profile` varchar(35) NOT NULL,
  `location` varchar(50) NOT NULL,
  `ctc` float NOT NULL,
  `joining` varchar(30) NOT NULL,
  `about` text NOT NULL,
  `logo` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drive_details`
--

INSERT INTO `drive_details` (`company_name`, `eligible_branches`, `eligible_year`, `criteria`, `ssc`, `hsc`, `graduation`, `postgraduation`, `backlog`, `gap`, `job_profile`, `location`, `ctc`, `joining`, `about`, `logo`, `link`) VALUES
('Amazon', 'All Branches', 2021, 'yes', 60, 60, 60, 65, 0, 1, 'Software Developer', 'Hydrabad', 10, 'jan 2023', 'Amazon is a multinational e commerce company which operates in the world', 'null', 'https://www.amazon.com'),
('MAQ', 'mca', 2023, 'yes', 0, 0, 60, 0, 2, 1, 'sde', 'pune', 12, 'june 2023', 'this is a multinational company', 'Screenshot (64).png', 'www.google.com'),
('microsoft', 'B-tech', 2022, 'yes', 65, 65, 65, 70, 70, 0, 'Software Engineer', 'Banglore', 35, 'feb 2023', 'microsoft ia a mnc product based company', '', 'www.microsoft.com'),
('unify', 'mca', 2023, 'yes', 60, 60, 60, 70, 0, 0, 'tester', 'noida', 4.5, 'june 2023', 'dncm,sdnm,cv', 'Screenshot (65).png', 'dnfkldfsn'),
('webkul', 'mca', 2022, 'yes', 60, 60, 60, 60, 1, 1, 'sde intern', 'noida', 5, 'june 2023', 'this is a multinational company', 'Screenshot (63).png', 'www.webkul.com');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `user_id` varchar(25) NOT NULL,
  `name` varchar(40) NOT NULL,
  `department` varchar(50) NOT NULL,
  `assigned_class` char(2) NOT NULL,
  `designation` varchar(35) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` decimal(25,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`user_id`, `name`, `department`, `assigned_class`, `designation`, `email`, `password`) VALUES
('btech1', 'Shubham Dubey', 'BTECH', 'C', 'Professor', 'shubham@kiet.edu', '1234567'),
('mba1', 'Ankit Verma', 'MBA', 'B', 'Professor', 'ankitverma@kiet.edu', '123456'),
('mca1', 'Dr. Vidushi ', 'MCA', 'A', 'Professor', 'dr.vidushi@kiet.edu', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `user_id` varchar(20) NOT NULL,
  `password` decimal(20,0) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `roll_no` decimal(20,0) NOT NULL,
  `email_id` varchar(40) NOT NULL,
  `contact` decimal(10,0) NOT NULL,
  `dob` date NOT NULL,
  `classroll_no` int(3) NOT NULL,
  `section` char(2) NOT NULL,
  `hsc_mark` float NOT NULL,
  `ssc_mark` float NOT NULL,
  `graduation_mark` float NOT NULL,
  `postgraduation` float NOT NULL,
  `backlog` int(2) NOT NULL,
  `gap` int(2) NOT NULL,
  `placement_status` varchar(5) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `proof` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`user_id`, `password`, `name`, `course`, `roll_no`, `email_id`, `contact`, `dob`, `classroll_no`, `section`, `hsc_mark`, `ssc_mark`, `graduation_mark`, `postgraduation`, `backlog`, `gap`, `placement_status`, `company_name`, `proof`) VALUES
('2124mba2125', '12345', 'Rohit Sharma', 'MBA', '2100290148025', 'rohit@kiet.edu', '454894988', '2001-05-14', 21, 'C', 75, 48, 68, 78, 1, 1, 'no', 'null', 'null'),
('2124mca1110', '123456', 'Bharti', 'mca', '2100290140051', 'BHARTI@KIET.EDU', '9999999999', '2000-02-28', 10, 'B', 88, 90, 85, 88, 0, 0, 'yes', 'null', 'null'),
('2124mca1118', '54217', 'Sanjay Sahu', 'MBA', '2104528752', 'sanjay@kiet.edu', '456845464', '1999-12-25', 45, 'A', 85, 65, 75, 85, 0, 1, 'yes', 'null', 'null'),
('2124mca1125', '0', 'Vinay bhardwaj', 'BTECH', '2100290140149', 'vinay.2124mca1127@kiet.edu', '8474738', '2022-11-13', 51, 'B', 45, 78, 54, 85, 2, 1, 'no', 'null', 'null'),
('2124mca1127', '12345', 'Vinay Gupta', 'MCA', '2100290140148', 'vinay.2123mca1127@kiet.edu', '750372240', '2000-01-27', 50, 'B', 68, 60, 65, 82, 0, 1, 'yes', 'capgimini', 'ComponentDiagram1.jpg'),
('2124mca1238', '1234', 'Vishal', 'BTECH', '21002129300', 'vishal@gmail.com', '784673839', '2000-02-14', 45, 'A', 56, 67, 78, 67, 0, 0, 'no', 'null', 'null'),
('A001', '1234', 'Rahul', 'MBA', '210030929', 'rahul@gmail.com', '4094994994', '1999-12-14', 25, 'A', 56, 67, 76, 0, 1, 1, 'No', 'null', 'null');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drive_details`
--
ALTER TABLE `drive_details`
  ADD UNIQUE KEY `company_name` (`company_name`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `assigned_class` (`assigned_class`),
  ADD UNIQUE KEY `assigned_class_2` (`assigned_class`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
