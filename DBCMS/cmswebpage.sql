-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 08:32 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmswebpage`
--

-- --------------------------------------------------------

--
-- Table structure for table `pagetypes`
--

CREATE TABLE `pagetypes` (
  `pagetypes_id` int(11) NOT NULL,
  `pagetypes_name` varchar(100) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT NULL,
  `creation_user` varchar(50) NOT NULL,
  `update_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `pagetypes`
--

INSERT INTO `pagetypes` (`pagetypes_id`, `pagetypes_name`, `creation_date`, `update_date`, `creation_user`, `update_user`) VALUES
(1, 'Landing Page', '2023-06-24 01:15:20', NULL, '1', NULL),
(2, 'Web Page', '2023-06-24 01:15:20', NULL, '1', NULL),
(3, 'Web Site', '2023-06-24 01:15:21', NULL, '1', NULL),
(4, 'Web Application', '2023-06-24 01:15:21', NULL, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webapplication`
--

CREATE TABLE `webapplication` (
  `webapplication_code` char(11) NOT NULL,
  `webapplication_name` varchar(100) NOT NULL,
  `webapplication_details` text NOT NULL DEFAULT 'details web application',
  `active` tinyint(1) DEFAULT 1,
  `creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT NULL,
  `creation_user` varchar(50) NOT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `pagetypes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `webapplication`
--

INSERT INTO `webapplication` (`webapplication_code`, `webapplication_name`, `webapplication_details`, `active`, `creation_date`, `update_date`, `creation_user`, `update_user`, `pagetypes_id`) VALUES
('WA000000001', 'Hadsonpar', 'details web application', 1, '2023-06-24 01:26:49', NULL, '1', NULL, 2),
('WP000000001', 'APP Diabetes', 'details web application', 1, '2023-06-24 01:26:50', NULL, '1', NULL, 1),
('WS000000001', 'Askella Stores', 'details web application', 1, '2023-06-24 01:26:50', NULL, '1', NULL, 3),
('WS000000002', 'Smart Academy', 'details web application', 1, '2023-06-24 01:26:50', NULL, '1', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `weboption`
--

CREATE TABLE `weboption` (
  `weboption_id` int(11) NOT NULL,
  `weboption_name` varchar(100) NOT NULL,
  `weboption_link` text NOT NULL DEFAULT 'home',
  `weboption_details` text NOT NULL DEFAULT 'details web option',
  `weboption_icon` varchar(200) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT NULL,
  `creation_user` varchar(50) NOT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `webapplication_code` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `weboption`
--

INSERT INTO `weboption` (`weboption_id`, `weboption_name`, `weboption_link`, `weboption_details`, `weboption_icon`, `active`, `creation_date`, `update_date`, `creation_user`, `update_user`, `webapplication_code`) VALUES
(1, 'Home', 'hero', 'details web option', NULL, 1, '2023-06-24 03:12:02', NULL, '1', NULL, 'WA000000001'),
(2, 'About', 'about', 'details web option', NULL, 1, '2023-06-24 03:12:02', NULL, '1', NULL, 'WA000000001'),
(3, 'Services', 'services', 'details web option', NULL, 1, '2023-06-24 03:12:02', NULL, '1', NULL, 'WA000000001'),
(4, 'Portfolio', 'portfolio', 'details web option', NULL, 1, '2023-06-24 03:12:02', NULL, '1', NULL, 'WA000000001'),
(5, 'Team', 'team', 'details web option', NULL, 1, '2023-06-24 03:12:02', NULL, '1', NULL, 'WA000000001'),
(6, 'About', 'about', 'details web option', NULL, 0, '2023-06-24 03:12:02', NULL, '1', NULL, 'WA000000001'),
(7, 'Blog', 'blog', 'details web option', NULL, 0, '2023-06-24 03:12:02', NULL, '1', NULL, 'WA000000001'),
(8, 'Contact', 'contact', 'details web option', NULL, 1, '2023-06-24 03:12:03', NULL, '1', NULL, 'WA000000001');

-- --------------------------------------------------------

--
-- Table structure for table `websection`
--

CREATE TABLE `websection` (
  `websection_id` int(3) NOT NULL,
  `websection_code` int(10) NOT NULL,
  `websection_name` varchar(100) NOT NULL,
  `websection_title` text NOT NULL,
  `websection_subtitle` text DEFAULT NULL,
  `websection_details` text DEFAULT NULL,
  `websection_image_url` text DEFAULT NULL,
  `websection_button_url` text DEFAULT NULL,
  `websection_button_text` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT NULL,
  `creation_user` varchar(50) NOT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `webapplication_code` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `websection`
--

INSERT INTO `websection` (`websection_id`, `websection_code`, `websection_name`, `websection_title`, `websection_subtitle`, `websection_details`, `websection_image_url`, `websection_button_url`, `websection_button_text`, `active`, `creation_date`, `update_date`, `creation_user`, `update_user`, `webapplication_code`) VALUES
(1, 11, 'hero', 'We offer modern solutions for growing your business.', 'We are team of talented designers making websites with Bootstrap.', NULL, 'assets/img/hero-img.png', 'about', 'Get Started', 1, '2023-06-24 04:35:56', NULL, '1', NULL, 'WA000000001'),
(2, 11, 'about', 'Who We Are', 'WExpedita voluptas omnis cupiditate totam eveniet nobis sint iste. Dolores est repellat corrupti reprehenderit.', 'Quisquam vel ut sint cum eos hic dolores aperiam. Sed deserunt et. Inventore et et dolor consequatur itaque ut voluptate sed et. Magnam nam ipsum tenetur suscipit voluptatum nam et est corrupti.', 'assets/img/about.jpg', NULL, 'Read More', 1, '2023-06-24 17:28:11', NULL, '1', NULL, 'WA000000001');

-- --------------------------------------------------------

--
-- Table structure for table `websuboption`
--

CREATE TABLE `websuboption` (
  `websuboption_id` int(11) NOT NULL,
  `websuboption_name` varchar(100) NOT NULL,
  `websuboption_link` text NOT NULL DEFAULT 'page',
  `websuboption_details` text NOT NULL DEFAULT 'details web sub option',
  `websuboption_icon` varchar(200) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT NULL,
  `creation_user` varchar(50) NOT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `weboption_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pagetypes`
--
ALTER TABLE `pagetypes`
  ADD PRIMARY KEY (`pagetypes_id`);

--
-- Indexes for table `webapplication`
--
ALTER TABLE `webapplication`
  ADD PRIMARY KEY (`webapplication_code`),
  ADD KEY `webapplication_fk` (`pagetypes_id`);

--
-- Indexes for table `weboption`
--
ALTER TABLE `weboption`
  ADD PRIMARY KEY (`weboption_id`),
  ADD KEY `weboption_fk` (`webapplication_code`);

--
-- Indexes for table `websection`
--
ALTER TABLE `websection`
  ADD PRIMARY KEY (`websection_id`,`websection_code`),
  ADD KEY `websection_fk` (`webapplication_code`);

--
-- Indexes for table `websuboption`
--
ALTER TABLE `websuboption`
  ADD PRIMARY KEY (`websuboption_id`),
  ADD KEY `websuboption_fk` (`weboption_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pagetypes`
--
ALTER TABLE `pagetypes`
  MODIFY `pagetypes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `weboption`
--
ALTER TABLE `weboption`
  MODIFY `weboption_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `websuboption`
--
ALTER TABLE `websuboption`
  MODIFY `websuboption_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `webapplication`
--
ALTER TABLE `webapplication`
  ADD CONSTRAINT `webapplication_fk` FOREIGN KEY (`pagetypes_id`) REFERENCES `pagetypes` (`pagetypes_id`);

--
-- Constraints for table `weboption`
--
ALTER TABLE `weboption`
  ADD CONSTRAINT `weboption_fk` FOREIGN KEY (`webapplication_code`) REFERENCES `webapplication` (`webapplication_code`);

--
-- Constraints for table `websection`
--
ALTER TABLE `websection`
  ADD CONSTRAINT `websection_fk` FOREIGN KEY (`webapplication_code`) REFERENCES `webapplication` (`webapplication_code`);

--
-- Constraints for table `websuboption`
--
ALTER TABLE `websuboption`
  ADD CONSTRAINT `websuboption_fk` FOREIGN KEY (`weboption_id`) REFERENCES `weboption` (`weboption_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
