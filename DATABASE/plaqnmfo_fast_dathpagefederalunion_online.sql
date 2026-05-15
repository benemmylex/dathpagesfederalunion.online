-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2026 at 11:34 AM
-- Server version: 11.4.10-MariaDB-cll-lve-log
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plaqnmfo_fast.dathpagesfederalunion.online`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `acct_image` varchar(255) DEFAULT 'user.png',
  `internetid` varchar(50) DEFAULT NULL,
  `current_acctno` varchar(255) DEFAULT NULL,
  `savings_acctno` varchar(255) DEFAULT NULL,
  `acct_currency` varchar(55) DEFAULT '$',
  `savings_balance` varchar(255) DEFAULT '0',
  `loan_balance` varchar(255) DEFAULT '0',
  `current_balance` varchar(255) DEFAULT '0',
  `acct_status` varchar(50) DEFAULT 'hold' COMMENT 'active, hold',
  `kyc_status` int(11) DEFAULT 0 COMMENT '1=Approved, 2=processing, 0=Pending',
  `kyc_pending` int(11) NOT NULL DEFAULT 1 COMMENT '1 = approved, 0 = pending',
  `phoneverify` int(11) NOT NULL DEFAULT 1 COMMENT '1 = verified, 0 = unverified',
  `acct_email` varchar(200) DEFAULT NULL,
  `acct_phone` varchar(20) DEFAULT NULL,
  `acct_gender` text DEFAULT NULL,
  `acct_dob` varchar(255) DEFAULT NULL,
  `state` text DEFAULT NULL,
  `acct_ssn` varchar(255) DEFAULT NULL,
  `acct_address` text DEFAULT NULL,
  `acct_password` text DEFAULT NULL,
  `resettoken` varchar(50) DEFAULT NULL,
  `resettokenexp` date DEFAULT NULL,
  `billing_code` int(11) DEFAULT 0,
  `transfer` int(11) DEFAULT 1,
  `idfront` varchar(255) DEFAULT NULL,
  `idBack` varchar(255) DEFAULT NULL,
  `id_no` varchar(255) DEFAULT NULL,
  `proofaddress` varchar(255) DEFAULT NULL,
  `acct_pin` varchar(6) DEFAULT '123456',
  `acct_otp` varchar(6) DEFAULT '876545',
  `manager_name` varchar(255) DEFAULT NULL,
  `manager_email` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `developer_name` varchar(255) DEFAULT '''rrrrrrr''',
  `Developer_phone` varchar(255) DEFAULT '''2222222222'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `firstname`, `lastname`, `acct_image`, `internetid`, `current_acctno`, `savings_acctno`, `acct_currency`, `savings_balance`, `loan_balance`, `current_balance`, `acct_status`, `kyc_status`, `kyc_pending`, `phoneverify`, `acct_email`, `acct_phone`, `acct_gender`, `acct_dob`, `state`, `acct_ssn`, `acct_address`, `acct_password`, `resettoken`, `resettokenexp`, `billing_code`, `transfer`, `idfront`, `idBack`, `id_no`, `proofaddress`, `acct_pin`, `acct_otp`, `manager_name`, `manager_email`, `createdAt`, `developer_name`, `Developer_phone`) VALUES
(61, 'Aisha ', 'Gaddafi ', '1202509702IMG-20260322-WA0006.jpg', '1202509702', '36378217450', '67392348811', '$', '00', '00', '15350000', 'hold', 0, 1, 1, 'aishagaddafi7452@gmail.com', '09031595175', 'Female', '1976-12-25', 'Libya ', NULL, '20 street Oman', '$2y$10$jS3TpFbDnNnlGqJ4W06K5eElWkLnw9uG9PoGRbGsv6ryemSYRgZNq', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '745212', '750392', NULL, NULL, '2026-03-30 13:41:39', '\'rrrrrrr\'', '\'2222222222\''),
(62, 'KIM', 'SUNG BUM', '1202285657IMG-20260331-WA0000.jpg', '1202285657', '36378196322', '67392317505', '$', '00', '00', '5350000', 'hold', 0, 1, 1, 'taha6272@daum.net', '01022301250', 'Male', '1957-04-06', 'Republic Korea ', NULL, '96, Guchonmyeon-ro 42-gil, Gangdong-gu, Seoul (Cheonho-dong)', '$2y$10$21wzDmhVFnzpAmZVL5amju07NgiX.XdGYD86CMwv6I2KBXnQw6rEC', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '745212', '876545', NULL, NULL, '2026-03-31 04:43:52', '\'rrrrrrr\'', '\'2222222222\''),
(63, 'Seong', 'Si Kwan', '1202290624IMG_20260331_160848.jpg', '1202290624', '36378315508', '67392187687', '$', '00', '00', '15350000', 'hold', 0, 1, 1, 'sikwan3355@naver.com', '01049798844', 'Male', '1939-02-02', 'Republic of Korea ', NULL, 'B2, 25 Seokcheon-ro 159beon-gil, Manan-gu, Anyang-si, Gyeonggi-do', '$2y$10$2unK62Ou5DWyw4QUx.R3AufAjyDj3W0xYKZnOkqjrH6j20IL5M5lG', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '745212', '876545', NULL, NULL, '2026-03-31 11:26:08', '\'rrrrrrr\'', '\'2222222222\'');

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `internetid` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `internetid`, `details`, `createdAt`) VALUES
(1, '1202201822', 'Login into dashboard', '2024-04-08 09:34:51'),
(2, '1202201822', 'Login into dashboard', '2024-04-08 10:43:25'),
(3, '1202201822', 'Login into dashboard', '2024-04-08 10:48:19'),
(4, '1202201822', 'Login into dashboard', '2024-04-08 11:06:07'),
(5, '1202201822', 'Login into dashboard', '2024-04-08 11:06:21'),
(6, '1202201822', 'New Wire Transfer', '2024-04-08 11:07:31'),
(7, '1202201822', 'Login into dashboard', '2024-04-10 04:22:11'),
(8, '1202201822', 'Login into dashboard', '2024-04-10 04:24:03'),
(9, '1202201822', 'New Wire Transfer', '2024-04-10 04:26:27'),
(10, '1202201822', 'Login into dashboard', '2024-04-10 04:33:24'),
(11, '1202201822', 'New Wire Transfer', '2024-04-10 04:36:02'),
(12, '1202807633', 'New Registration', '2024-04-11 16:45:09'),
(13, '1202201822', 'Login into dashboard', '2024-04-12 02:06:06'),
(14, '1202201822', 'Login into dashboard', '2024-04-12 02:21:30'),
(15, '1202201822', 'Login into dashboard', '2024-04-12 02:23:09'),
(16, '1202201822', 'New Self Transfer', '2024-04-12 02:25:57'),
(17, '1202201822', 'Login into dashboard', '2024-04-12 02:31:42'),
(18, '1202201822', 'Login into dashboard', '2024-04-12 02:39:34'),
(19, '1202201822', 'New Domestic Transfer', '2024-04-12 02:42:31'),
(20, '1202201822', 'Login into dashboard', '2024-04-12 02:51:15'),
(21, '1202201822', 'Login into dashboard', '2024-04-12 02:56:50'),
(22, '1202201822', 'Login into dashboard', '2024-04-12 03:05:01'),
(23, '1202201822', 'Login into dashboard', '2024-04-12 03:06:28'),
(24, '1202201822', 'Login into dashboard', '2024-04-12 03:08:01'),
(25, '1202201822', 'Login into dashboard', '2024-04-12 03:19:24'),
(26, '1202201822', 'Login into dashboard', '2024-04-12 03:33:21'),
(27, '1202280407', 'New Registration', '2024-04-12 03:40:40'),
(28, '1202201822', 'Login into dashboard', '2024-04-12 03:42:16'),
(29, '1202201822', 'Login into dashboard', '2024-04-12 03:47:14'),
(30, '1202201822', 'Login into dashboard', '2024-04-12 04:09:47'),
(31, '1202201822', 'Login into dashboard', '2024-04-12 04:30:40'),
(32, '1202201822', 'Login into dashboard', '2024-04-12 06:02:56'),
(33, '1202201822', 'Card Application', '2024-04-12 06:04:22'),
(34, '1202201822', 'Login into dashboard', '2024-04-12 06:14:18'),
(35, '1202315195', 'New Registration', '2024-04-12 06:34:39'),
(36, '1202201822', 'Login into dashboard', '2024-04-12 06:35:30'),
(37, '1202201822', 'Login into dashboard', '2024-04-12 06:38:17'),
(38, '1202201822', 'Login into dashboard', '2024-04-12 06:40:55'),
(39, '1202201822', 'Login into dashboard', '2024-04-12 06:41:36'),
(40, '1202201822', 'Login into dashboard', '2024-04-12 06:42:10'),
(41, '1202201822', 'Loan Request', '2024-04-12 06:43:32'),
(42, '1202201822', 'Login into dashboard', '2024-04-12 06:44:46'),
(43, '1202201822', 'Login into dashboard', '2024-04-12 06:44:52'),
(44, '1202201822', 'Login into dashboard', '2024-04-12 06:44:57'),
(45, '1202201822', 'Login into dashboard', '2024-04-12 06:45:05'),
(46, '1202201822', 'Login into dashboard', '2024-04-12 06:50:34'),
(47, '1202201822', 'Login into dashboard', '2024-04-12 06:53:55'),
(48, '1202201822', 'Login into dashboard', '2024-04-12 06:54:27'),
(49, '1202201822', 'New Domestic Transfer', '2024-04-12 06:56:03'),
(50, '1202201822', 'New Wire Transfer', '2024-04-12 06:57:55'),
(51, '1202201822', 'Login into dashboard', '2024-04-12 07:08:23'),
(52, '1202201822', 'Login into dashboard', '2024-04-12 07:10:35'),
(53, '1202201822', 'Login into dashboard', '2024-04-12 07:23:59'),
(54, '1202201822', 'Login into dashboard', '2024-04-12 07:24:17'),
(55, '1202201822', 'Login into dashboard', '2024-04-12 07:27:19'),
(56, '1202201822', 'Login into dashboard', '2024-04-12 07:29:41'),
(57, '1202201822', 'New Domestic Transfer', '2024-04-12 07:31:44'),
(58, '1202201822', 'Login into dashboard', '2024-04-12 07:33:25'),
(59, '1202201822', 'New Domestic Transfer', '2024-04-12 07:35:24'),
(60, '1202201822', 'Login into dashboard', '2024-04-12 07:38:55'),
(61, '1202201822', 'Login into dashboard', '2024-04-12 07:39:50'),
(62, '1202201822', 'Login into dashboard', '2024-04-12 07:39:55'),
(63, '1202201822', 'Login into dashboard', '2024-04-12 07:47:01'),
(64, '1202201822', 'New Self Transfer', '2024-04-12 07:47:36'),
(65, '1202201822', 'New Domestic Transfer', '2024-04-12 07:49:22'),
(66, '1202201822', 'Login into dashboard', '2024-04-12 07:59:56'),
(67, '1202201822', 'Login into dashboard', '2024-04-12 08:01:11'),
(68, '1202201822', 'Login into dashboard', '2024-04-12 08:02:03'),
(69, '1202201822', 'Profile Picture Upadate', '2024-04-12 08:03:30'),
(70, '1202201822', 'Profile Picture Upadate', '2024-04-12 08:05:50'),
(71, '1202201822', 'Login into dashboard', '2024-04-12 08:11:45'),
(72, '1202201822', 'Login into dashboard', '2024-04-12 08:15:03'),
(73, '1202201822', 'Login into dashboard', '2024-04-12 08:15:16'),
(74, '1202201822', 'New Wire Transfer', '2024-04-12 08:19:31'),
(75, '1202201822', 'New Wire Transfer', '2024-04-12 08:20:09'),
(76, '1202201822', 'Login into dashboard', '2024-04-12 08:29:28'),
(77, '1202201822', 'Login into dashboard', '2024-04-12 08:29:33'),
(78, '1202201822', 'Login into dashboard', '2024-04-12 08:29:40'),
(79, '1202201822', 'Login into dashboard', '2024-04-12 08:29:45'),
(80, '1202201822', 'Login into dashboard', '2024-04-12 08:30:02'),
(81, '1202201822', 'Login into dashboard', '2024-04-12 08:38:23'),
(82, '1202201822', 'Login into dashboard', '2024-04-12 08:53:52'),
(83, '1202201822', 'New Wire Transfer', '2024-04-12 08:55:57'),
(84, '1202201822', 'Login into dashboard', '2024-04-12 09:01:10'),
(85, '1202201822', 'New Wire Transfer', '2024-04-12 09:03:37'),
(86, '1202201822', 'New Wire Transfer', '2024-04-12 09:03:44'),
(87, '1202201822', 'Login into dashboard', '2024-04-12 09:05:51'),
(88, '1202201822', 'Loan Request', '2024-04-12 09:06:51'),
(89, '1202201822', 'Login into dashboard', '2024-04-12 09:07:49'),
(90, '1202201822', 'Login into dashboard', '2024-04-12 09:08:52'),
(91, '1202201822', 'Login into dashboard', '2024-04-12 09:16:46'),
(92, '1202201822', 'Login into dashboard', '2024-04-12 09:25:59'),
(93, '1202201822', 'Login into dashboard', '2024-04-12 09:35:41'),
(94, '1202201822', 'Login into dashboard', '2024-04-12 09:37:51'),
(95, '1202201822', 'Login into dashboard', '2024-04-12 09:39:35'),
(96, '1202201822', 'Login into dashboard', '2024-04-12 09:42:08'),
(97, '1202201822', 'Login into dashboard', '2024-04-12 09:44:31'),
(98, '1202201822', 'Login into dashboard', '2024-04-12 09:55:04'),
(99, '1202201822', 'Login into dashboard', '2024-04-12 09:58:04'),
(100, '1202201822', 'New Wire Transfer', '2024-04-12 09:59:03'),
(101, '1202201822', 'Login into dashboard', '2024-04-12 10:01:07'),
(102, '1202201822', 'Login into dashboard', '2024-04-12 10:01:37'),
(103, '1202201822', 'Login into dashboard', '2024-04-12 10:02:42'),
(104, '1202201822', 'Login into dashboard', '2024-04-12 10:25:49'),
(105, '1202201822', 'New Wire Transfer', '2024-04-12 10:27:13'),
(106, '1202201822', 'Login into dashboard', '2024-04-12 10:28:31'),
(107, '1202201822', 'Login into dashboard', '2024-04-12 10:52:03'),
(108, '1202201822', 'New Wire Transfer', '2024-04-12 10:53:46'),
(109, '1202201822', 'Login into dashboard', '2024-04-12 10:57:07'),
(110, '1202201822', 'New Wire Transfer', '2024-04-12 10:57:25'),
(111, '1202201822', 'Login into dashboard', '2024-04-12 11:00:55'),
(112, '1202201822', 'Login into dashboard', '2024-04-12 11:01:00'),
(113, '1202201822', 'Login into dashboard', '2024-04-12 11:01:07'),
(114, '1202201822', 'Login into dashboard', '2024-04-12 11:01:12'),
(115, '1202201822', 'Login into dashboard', '2024-04-12 11:15:57'),
(116, '1202201822', 'Login into dashboard', '2024-04-12 11:22:55'),
(117, '1202201822', 'Login into dashboard', '2024-04-12 12:05:17'),
(118, '1202201822', 'Login into dashboard', '2024-04-12 12:06:42'),
(119, '1202201822', 'Login into dashboard', '2024-04-12 12:13:03'),
(120, '1202201822', 'Login into dashboard', '2024-04-12 12:19:40'),
(121, '1202201822', 'Login into dashboard', '2024-04-12 12:24:03'),
(122, '1202201822', 'Login into dashboard', '2024-04-12 12:35:47'),
(123, '1202201822', 'Login into dashboard', '2024-04-12 12:43:37'),
(124, '1202201822', 'Login into dashboard', '2024-04-12 12:43:55'),
(125, '1202201822', 'New Wire Transfer', '2024-04-12 12:46:17'),
(126, '1202201822', 'Login into dashboard', '2024-04-12 12:48:13'),
(127, '1202201822', 'Login into dashboard', '2024-04-12 12:52:13'),
(128, '1202201822', 'Login into dashboard', '2024-04-12 13:01:30'),
(129, '1202201822', 'Login into dashboard', '2024-04-12 13:03:56'),
(130, '1202201822', 'New Domestic Transfer', '2024-04-12 13:14:58'),
(131, '1202201822', 'Login into dashboard', '2024-04-12 13:35:40'),
(132, '1202201822', 'Login into dashboard', '2024-04-12 13:50:28'),
(133, '1202201822', 'Login into dashboard', '2024-04-12 13:54:22'),
(134, '1202201822', 'Login into dashboard', '2024-04-12 13:54:26'),
(135, '1202201822', 'Login into dashboard', '2024-04-12 14:18:00'),
(136, '1202201822', 'Login into dashboard', '2024-04-12 14:54:15'),
(137, '1202201822', 'Login into dashboard', '2024-04-12 16:07:36'),
(138, '1202201822', 'Login into dashboard', '2024-04-12 17:13:21'),
(139, '1202201822', 'Login into dashboard', '2024-04-12 17:28:02'),
(140, '1202201822', 'Login into dashboard', '2024-04-12 17:29:01'),
(141, '1202201822', 'Profile Picture Upadate', '2024-04-12 17:41:57'),
(142, '1202201822', 'Login into dashboard', '2024-04-12 19:13:15'),
(143, '1202201822', 'Profile Picture Upadate', '2024-04-12 19:15:19'),
(144, '1202201822', 'Profile Picture Upadate', '2024-04-12 19:28:24'),
(145, '1202201822', 'Profile Picture Upadate', '2024-04-12 19:30:48'),
(146, '1202201822', 'Login into dashboard', '2024-04-12 21:13:53'),
(147, '1202201822', 'Profile Picture Upadate', '2024-04-12 21:14:37'),
(148, '1202201822', 'Login into dashboard', '2024-04-12 23:03:28'),
(149, '1202201822', 'Login into dashboard', '2024-04-12 23:06:57'),
(150, '1202201822', 'Login into dashboard', '2024-04-12 23:21:32'),
(151, '1202201822', 'New Wire Transfer', '2024-04-12 23:27:11'),
(152, '1202201822', 'Login into dashboard', '2024-04-12 23:53:10'),
(153, '1202201822', 'Login into dashboard', '2024-04-13 01:16:35'),
(154, '1202201822', 'Login into dashboard', '2024-04-13 01:39:32'),
(155, '1202201822', 'Login into dashboard', '2024-04-13 02:38:19'),
(156, '1202201822', 'Login into dashboard', '2024-04-13 02:40:02'),
(157, '1202292871', 'New Registration', '2024-04-13 02:43:21'),
(158, '1202201822', 'Login into dashboard', '2024-04-13 02:44:39'),
(159, '1202201822', 'Login into dashboard', '2024-04-13 02:45:17'),
(160, '1202201822', 'Login into dashboard', '2024-04-13 03:02:52'),
(161, '1202201822', 'Login into dashboard', '2024-04-13 03:46:07'),
(162, '1202201822', 'Login into dashboard', '2024-04-13 03:46:52'),
(163, '1202201822', 'Login into dashboard', '2024-04-13 04:02:36'),
(164, '1202201822', 'New Wire Transfer', '2024-04-13 04:04:32'),
(165, '1202201822', 'Login into dashboard', '2024-04-13 04:07:12'),
(166, '1202201822', 'Login into dashboard', '2024-04-13 04:07:17'),
(167, '1202201822', 'Login into dashboard', '2024-04-13 04:07:23'),
(168, '1202201822', 'Login into dashboard', '2024-04-13 04:07:31'),
(169, '1202201822', 'Login into dashboard', '2024-04-13 04:12:44'),
(170, '1202201822', 'Login into dashboard', '2024-04-13 04:17:01'),
(171, '1202201822', 'Login into dashboard', '2024-04-13 04:22:07'),
(172, '1202311551', 'New Registration', '2024-04-13 04:23:29'),
(173, '1202201822', 'Login into dashboard', '2024-04-13 04:48:47'),
(174, '1202201822', 'Profile Picture Upadate', '2024-04-13 04:50:16'),
(175, '1202249764', 'New Registration', '2024-04-13 05:06:38'),
(176, '1202249764', 'Login into dashboard', '2024-04-13 05:12:29'),
(177, '1202249764', 'Login into dashboard', '2024-04-13 05:16:09'),
(178, '1202201822', 'Login into dashboard', '2024-04-13 05:55:22'),
(179, '1202201822', 'Login into dashboard', '2024-04-13 07:39:59'),
(180, '1202201822', 'Login into dashboard', '2024-04-13 07:43:49'),
(181, '1202201822', 'Login into dashboard', '2024-04-13 09:05:28'),
(182, '1202201822', 'Profile Picture Upadate', '2024-04-13 09:06:53'),
(183, '1202201822', 'Profile Picture Upadate', '2024-04-13 09:08:12'),
(184, '1202201822', 'Profile Picture Upadate', '2024-04-13 09:17:24'),
(185, '1202201822', 'Login into dashboard', '2024-04-13 10:08:55'),
(186, '1202201822', 'Login into dashboard', '2024-04-13 10:19:11'),
(187, '1202130989', 'New Registration', '2024-04-13 11:00:47'),
(188, '1202201822', 'Login into dashboard', '2024-04-13 11:25:40'),
(189, '1202201822', 'Login into dashboard', '2024-04-13 12:17:53'),
(190, '1202201822', 'New Wire Transfer', '2024-04-13 12:21:57'),
(191, '1202201822', 'Login into dashboard', '2024-04-13 14:55:27'),
(192, '1202201822', 'Login into dashboard', '2024-04-13 14:55:32'),
(193, '1202201822', 'Login into dashboard', '2024-04-13 15:51:24'),
(194, '1202201822', 'Login into dashboard', '2024-04-13 16:02:04'),
(195, '1202201822', 'Login into dashboard', '2024-04-13 16:15:58'),
(196, '1202201822', 'Profile Picture Upadate', '2024-04-13 16:16:34'),
(197, '1202201822', 'Profile Picture Upadate', '2024-04-13 16:18:30'),
(198, '1202201822', 'Login into dashboard', '2024-04-13 16:23:42'),
(199, '1202201822', 'Profile Picture Upadate', '2024-04-13 16:32:16'),
(200, '1202201822', 'Profile Picture Upadate', '2024-04-13 16:38:35'),
(201, '1202201822', 'Profile Picture Upadate', '2024-04-13 16:41:33'),
(202, '1202201822', 'Profile Picture Upadate', '2024-04-13 16:45:58'),
(203, '1202201822', 'Login into dashboard', '2024-04-13 17:28:47'),
(204, '1202201822', 'New Wire Transfer', '2024-04-13 17:33:25'),
(205, '1202201822', 'New Wire Transfer', '2024-04-13 17:40:42'),
(206, '1202201822', 'New Wire Transfer', '2024-04-13 17:44:36'),
(207, '1202201822', 'Login into dashboard', '2024-04-13 18:24:07'),
(208, '1202201822', 'New Wire Transfer', '2024-04-13 18:27:17'),
(209, '1202201822', 'Login into dashboard', '2024-04-13 18:38:55'),
(210, '1202201822', 'Profile Picture Upadate', '2024-04-13 18:39:36'),
(211, '1202201822', 'Login into dashboard', '2024-04-13 18:43:35'),
(212, '1202201822', 'Profile Picture Upadate', '2024-04-13 18:45:21'),
(213, '1202201822', 'Profile Picture Upadate', '2024-04-13 18:50:01'),
(214, '1202201822', 'Profile Picture Upadate', '2024-04-13 18:51:01'),
(215, '1202201822', 'Profile Picture Upadate', '2024-04-13 18:51:49'),
(216, '1202201822', 'Login into dashboard', '2024-04-13 19:46:55'),
(217, '1202201822', 'New Wire Transfer', '2024-04-13 19:50:09'),
(218, '1202201822', 'Login into dashboard', '2024-04-13 19:57:54'),
(219, '1202201822', 'Login into dashboard', '2024-04-13 22:14:51'),
(220, '1202201822', 'Login into dashboard', '2024-04-14 00:14:06'),
(221, '1202201822', 'Login into dashboard', '2024-04-14 00:55:22'),
(222, '1202201822', 'Login into dashboard', '2024-04-14 01:07:29'),
(223, '1202201822', 'Login into dashboard', '2024-04-14 01:10:29'),
(224, '1202201822', 'Profile Picture Upadate', '2024-04-14 01:11:27'),
(225, '1202201822', 'Login into dashboard', '2024-04-14 03:58:51'),
(226, '1202201822', 'Login into dashboard', '2024-04-14 04:21:54'),
(227, '1202201822', 'Login into dashboard', '2024-04-14 04:33:18'),
(228, '1202201822', 'Login into dashboard', '2024-04-14 04:48:37'),
(229, '1202201822', 'Login into dashboard', '2024-04-14 04:59:16'),
(230, '1202201822', 'Login into dashboard', '2024-04-14 05:05:39'),
(231, '1202201822', 'Login into dashboard', '2024-04-14 06:19:40'),
(232, '1202201822', 'Login into dashboard', '2024-04-14 07:00:07'),
(233, '1202201822', 'Login into dashboard', '2024-04-14 07:00:17'),
(234, '1202201822', 'Login into dashboard', '2024-04-14 07:12:32'),
(235, '1202201822', 'Login into dashboard', '2024-04-14 08:21:44'),
(236, '1202201822', 'Login into dashboard', '2024-04-14 10:32:50'),
(237, '1202201822', 'New Domestic Transfer', '2024-04-14 10:34:22'),
(238, '1202201822', 'Login into dashboard', '2024-04-14 11:21:52'),
(239, '1202201822', 'New Domestic Transfer', '2024-04-14 11:22:49'),
(240, '1202201822', 'Login into dashboard', '2024-04-14 12:24:32'),
(241, '1202201822', 'Login into dashboard', '2024-04-14 12:54:35'),
(242, '1202201822', 'Login into dashboard', '2024-04-14 13:05:34'),
(243, '1202201822', 'Login into dashboard', '2024-04-14 13:08:36'),
(244, '1202201822', 'New Domestic Transfer', '2024-04-14 13:10:56'),
(245, '1202201822', 'Login into dashboard', '2024-04-14 13:19:14'),
(246, '1202201822', 'Login into dashboard', '2024-04-14 13:19:24'),
(247, '1202201822', 'Login into dashboard', '2024-04-14 13:41:06'),
(248, '1202201822', 'Profile Picture Upadate', '2024-04-14 13:41:58'),
(249, '1202201822', 'Profile Picture Upadate', '2024-04-14 13:46:32'),
(250, '1202201822', 'Profile Picture Upadate', '2024-04-14 13:57:10'),
(251, '1202201822', 'Profile Picture Upadate', '2024-04-14 14:01:16'),
(252, '1202201822', 'Profile Picture Upadate', '2024-04-14 14:09:44'),
(253, '1202201822', 'Profile Picture Upadate', '2024-04-14 14:12:41'),
(254, '1202201822', 'Profile Picture Upadate', '2024-04-14 14:13:00'),
(255, '1202201822', 'Login into dashboard', '2024-04-14 15:02:59'),
(256, '1202201822', 'Login into dashboard', '2024-04-14 15:04:30'),
(257, '1202201822', 'Login into dashboard', '2024-04-14 17:52:16'),
(258, '1202201822', 'Login into dashboard', '2024-04-14 19:01:14'),
(259, '1202201822', 'Login into dashboard', '2024-04-14 19:03:10'),
(260, '1202201822', 'Loan Request', '2024-04-14 19:05:13'),
(261, '1202201822', 'Login into dashboard', '2024-04-15 04:15:16'),
(262, '1202201822', 'Login into dashboard', '2024-04-15 05:39:35'),
(263, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:44:11'),
(264, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:44:35'),
(265, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:45:54'),
(266, '1202201822', 'Login into dashboard', '2024-04-15 05:51:03'),
(267, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:56:40'),
(268, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:57:35'),
(269, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:58:30'),
(270, '1202201822', 'Profile Picture Upadate', '2024-04-15 05:58:50'),
(271, '1202201822', 'Login into dashboard', '2024-04-15 06:14:06'),
(272, '1202201822', 'Login into dashboard', '2024-04-15 07:20:11'),
(273, '1202201822', 'Login into dashboard', '2024-04-15 08:26:30'),
(274, '1202201822', 'Login into dashboard', '2024-04-15 09:32:21'),
(275, '1202201822', 'Login into dashboard', '2024-04-15 09:48:13'),
(276, '1202201822', 'Login into dashboard', '2024-04-15 11:46:38'),
(277, '1202201822', 'Login into dashboard', '2024-04-15 11:49:34'),
(278, '1202201822', 'Login into dashboard', '2024-04-15 12:12:46'),
(279, '1202201822', 'Login into dashboard', '2024-04-15 12:15:54'),
(280, '1202201822', 'Login into dashboard', '2024-04-15 12:26:00'),
(281, '1202201822', 'Login into dashboard', '2024-04-15 12:26:06'),
(282, '1202201822', 'Login into dashboard', '2024-04-15 12:26:49'),
(283, '1202201822', 'Login into dashboard', '2024-04-15 14:08:00'),
(284, '1202201822', 'New Wire Transfer', '2024-04-15 14:09:28'),
(285, '1202201822', 'Login into dashboard', '2024-04-15 14:10:08'),
(286, '1202201822', 'New Wire Transfer', '2024-04-15 14:11:31'),
(287, '1202201822', 'Loan Request', '2024-04-15 14:18:25'),
(288, '1202201822', 'Login into dashboard', '2024-04-15 15:53:11'),
(289, '1202201822', 'Login into dashboard', '2024-04-15 17:24:45'),
(290, '1202294834', 'New Registration', '2024-04-15 17:51:33'),
(291, '1202201822', 'Login into dashboard', '2024-04-16 01:54:17'),
(292, '1202201822', 'Login into dashboard', '2024-04-16 03:39:04'),
(293, '1202201822', 'Login into dashboard', '2024-04-16 03:44:03'),
(294, '1202201822', 'New Crypto Deposit', '2024-04-16 03:47:00'),
(295, '1202201822', 'New Domestic Transfer', '2024-04-16 03:50:26'),
(296, '1202201822', 'New Wire Transfer', '2024-04-16 03:53:15'),
(297, '1202201822', 'New Self Transfer', '2024-04-16 04:00:01'),
(298, '1202201822', 'Loan Request', '2024-04-16 04:02:37'),
(299, '1202201822', 'Profile Picture Upadate', '2024-04-16 04:11:29'),
(300, '1202888917', 'New Registration', '2025-04-02 04:44:00'),
(301, '1202888917', 'Login into dashboard', '2025-04-02 05:22:35'),
(302, '1202888917', 'Login into dashboard', '2025-04-02 05:27:40'),
(303, '1202888917', 'Login into dashboard', '2025-04-02 05:28:37'),
(304, '1202888917', 'Login into dashboard', '2025-04-02 05:31:42'),
(305, '1202888917', 'New Domestic Transfer', '2025-04-02 05:38:47'),
(306, '1202888917', 'New Domestic Transfer', '2025-04-02 05:43:21'),
(307, '1202888917', 'New Domestic Transfer', '2025-04-02 05:45:46'),
(308, '1202888917', 'Login into dashboard', '2025-04-02 10:38:05'),
(309, '1202888917', 'Login into dashboard', '2025-04-02 10:43:08'),
(310, '1202888917', 'Login into dashboard', '2025-04-02 10:43:16'),
(311, '1202888917', 'Login into dashboard', '2025-04-02 10:48:18'),
(312, '1202888917', 'Login into dashboard', '2025-04-02 10:53:22'),
(313, '1202888917', 'Login into dashboard', '2025-04-02 10:58:24'),
(314, '1202888917', 'Login into dashboard', '2025-04-02 10:58:29'),
(315, '1202888917', 'Login into dashboard', '2025-04-02 10:58:33'),
(316, '1202888917', 'Login into dashboard', '2025-04-02 11:03:36'),
(317, '1202888917', 'Login into dashboard', '2025-04-04 10:42:17'),
(318, '1202888917', 'Login into dashboard', '2025-04-04 10:45:00'),
(319, '1202888917', 'Login into dashboard', '2025-04-04 10:47:19'),
(320, '1202888917', 'Login into dashboard', '2025-04-04 10:49:00'),
(321, '1202888917', 'Login into dashboard', '2025-04-04 19:31:27'),
(322, '1202137746', 'New Registration', '2025-04-04 20:27:37'),
(323, '1202137746', 'Login into dashboard', '2025-04-04 20:29:19'),
(324, '1202888917', 'Login into dashboard', '2025-04-05 03:17:10'),
(325, '1202888917', 'New Domestic Transfer', '2025-04-05 03:23:43'),
(326, '1202888917', 'Login into dashboard', '2025-04-05 03:53:53'),
(327, '1202888917', 'Login into dashboard', '2025-04-05 04:01:40'),
(328, '1202888917', 'Login into dashboard', '2025-04-05 04:04:00'),
(329, '1202137746', 'Login into dashboard', '2025-04-05 06:28:03'),
(330, '1202209176', 'New Registration', '2025-04-05 08:27:04'),
(331, '1202209176', 'Login into dashboard', '2025-04-05 08:43:42'),
(332, '1202209176', 'Login into dashboard', '2025-04-05 08:44:26'),
(333, '1202209176', 'Login into dashboard', '2025-04-05 08:49:40'),
(334, '1202209176', 'Login into dashboard', '2025-04-05 08:54:01'),
(335, '1202209176', 'Login into dashboard', '2025-04-05 08:54:12'),
(336, '1202888917', 'Login into dashboard', '2025-04-05 08:57:20'),
(337, '1202209176', 'Login into dashboard', '2025-04-05 08:58:05'),
(338, '1202209176', 'Login into dashboard', '2025-04-05 08:58:23'),
(339, '1202209176', 'Login into dashboard', '2025-04-05 08:58:35'),
(340, '1202888917', 'Login into dashboard', '2025-04-05 09:01:39'),
(341, '1202209176', 'Login into dashboard', '2025-04-05 09:02:24'),
(342, '1202209176', 'Login into dashboard', '2025-04-05 09:02:45'),
(343, '1202888917', 'Login into dashboard', '2025-04-05 09:03:35'),
(344, '1202209176', 'Login into dashboard', '2025-04-05 09:06:46'),
(345, '1202209176', 'Login into dashboard', '2025-04-05 09:07:26'),
(346, '1202209176', 'Login into dashboard', '2025-04-05 09:11:50'),
(347, '1202209176', 'Login into dashboard', '2025-04-05 09:16:12'),
(348, '1202209176', 'Login into dashboard', '2025-04-05 09:20:34'),
(349, '1202209176', 'Login into dashboard', '2025-04-05 09:24:56'),
(350, '1202888917', 'Login into dashboard', '2025-04-05 09:29:12'),
(351, '1202209176', 'Login into dashboard', '2025-04-05 09:29:18'),
(352, '1202209176', 'Login into dashboard', '2025-04-05 09:33:40'),
(353, '1202209176', 'Login into dashboard', '2025-04-05 09:38:02'),
(354, '1202209176', 'Login into dashboard', '2025-04-05 09:42:25'),
(355, '1202209176', 'Login into dashboard', '2025-04-05 09:43:42'),
(356, '1202209176', 'Login into dashboard', '2025-04-05 09:46:47'),
(357, '1202209176', 'Login into dashboard', '2025-04-05 09:51:09'),
(358, '1202209176', 'Login into dashboard', '2025-04-05 09:55:31'),
(359, '1202888917', 'Login into dashboard', '2025-04-05 10:01:22'),
(360, '1202209176', 'Login into dashboard', '2025-04-05 13:30:12'),
(361, '1202888917', 'Login into dashboard', '2025-04-05 14:14:07'),
(362, '1202888917', 'Login into dashboard', '2025-04-05 14:42:16'),
(363, '1202888917', 'Login into dashboard', '2025-04-05 14:47:02'),
(364, '1202888917', 'Login into dashboard', '2025-04-05 17:00:45'),
(365, '1202209176', 'Login into dashboard', '2025-04-05 17:05:08'),
(366, '1202888917', 'Login into dashboard', '2025-04-05 17:12:37'),
(367, '1202888917', 'Login into dashboard', '2025-04-05 17:12:58'),
(368, '1202888917', 'Login into dashboard', '2025-04-05 17:13:23'),
(369, '1202888917', 'Login into dashboard', '2025-04-05 17:13:45'),
(370, '1202209176', 'Login into dashboard', '2025-04-05 17:18:31'),
(371, '1202209176', 'Login into dashboard', '2025-04-05 17:21:42'),
(372, '1202209176', 'Profile Picture Upadate', '2025-04-05 17:25:00'),
(373, '1202209176', 'Login into dashboard', '2025-04-05 17:36:01'),
(374, '1202209176', 'Login into dashboard', '2025-04-05 17:37:34'),
(375, '1202209176', 'New Domestic Transfer', '2025-04-05 17:42:35'),
(376, '1202888917', 'Login into dashboard', '2025-04-05 17:45:36'),
(377, '1202209176', 'Login into dashboard', '2025-04-05 18:07:25'),
(378, '1202209176', 'Login into dashboard', '2025-04-05 18:09:43'),
(379, '1202209176', 'New Domestic Transfer', '2025-04-05 18:15:02'),
(380, '1202209176', 'New Domestic Transfer', '2025-04-05 18:21:16'),
(381, '1202209176', 'New Domestic Transfer', '2025-04-05 18:29:43'),
(382, '1202888917', 'Login into dashboard', '2025-04-05 18:44:33'),
(383, '1202888917', 'New Wire Transfer', '2025-04-05 18:45:20'),
(384, '1202209176', 'New Wire Transfer', '2025-04-05 18:50:15'),
(385, '1202342681', 'New Registration', '2025-04-05 19:04:57'),
(386, '1202209176', 'Login into dashboard', '2025-04-06 03:00:09'),
(387, '1202888917', 'Login into dashboard', '2025-04-06 17:00:14'),
(388, '1202888917', 'Login into dashboard', '2025-04-06 17:08:52'),
(389, '1202888917', 'New Domestic Transfer', '2025-04-06 17:13:54'),
(390, '1202888917', 'New Domestic Transfer', '2025-04-06 17:16:35'),
(391, '1202888917', 'New Domestic Transfer', '2025-04-06 17:17:16'),
(392, '1202888917', 'New Domestic Transfer', '2025-04-06 17:17:47'),
(393, '1202888917', 'New Domestic Transfer', '2025-04-06 17:54:08'),
(394, '1202888917', 'New Domestic Transfer', '2025-04-06 17:58:54'),
(395, '1202888917', 'New Domestic Transfer', '2025-04-06 18:01:57'),
(396, '1202962256', 'New Registration', '2025-04-06 19:22:50'),
(397, '1202209176', 'Login into dashboard', '2025-04-06 19:31:15'),
(398, '1202209176', 'Login into dashboard', '2025-04-06 19:39:50'),
(399, '1202209176', 'Login into dashboard', '2025-04-06 19:42:43'),
(400, '1202209176', 'Login into dashboard', '2025-04-06 19:49:00'),
(401, '1202888917', 'Login into dashboard', '2025-04-07 03:10:52'),
(402, '1202209176', 'Login into dashboard', '2025-04-07 03:39:29'),
(403, '1202237469', 'New Registration', '2025-04-07 03:59:07'),
(404, '1202237469', 'Login into dashboard', '2025-04-07 04:02:52'),
(405, '1202237469', 'Login into dashboard', '2025-04-07 04:06:26'),
(406, '1202237469', 'Login into dashboard', '2025-04-07 04:09:16'),
(407, '1202237469', 'Login into dashboard', '2025-04-07 04:11:33'),
(408, '1202237469', 'Login into dashboard', '2025-04-07 10:39:47'),
(409, '1202237469', 'Login into dashboard', '2025-04-07 10:43:43'),
(410, '1202237469', 'Login into dashboard', '2025-04-07 10:44:45'),
(411, '1202237469', 'Login into dashboard', '2025-04-07 10:46:00'),
(412, '1202237469', 'Login into dashboard', '2025-04-07 10:48:26'),
(413, '1202237469', 'Login into dashboard', '2025-04-07 10:53:05'),
(414, '1202209176', 'Login into dashboard', '2025-04-07 10:54:15'),
(415, '1202209176', 'Login into dashboard', '2025-04-07 10:54:15'),
(416, '1202237469', 'Login into dashboard', '2025-04-07 10:55:50'),
(417, '1202237469', 'Login into dashboard', '2025-04-07 10:56:57'),
(418, '1202237469', 'Login into dashboard', '2025-04-07 11:02:18'),
(419, '1202237469', 'Login into dashboard', '2025-04-07 12:06:28'),
(420, '1202237469', 'Login into dashboard', '2025-04-07 12:30:18'),
(421, '1202209176', 'Login into dashboard', '2025-04-07 12:33:47'),
(422, '1202209176', 'Login into dashboard', '2025-04-07 12:37:27'),
(423, '1202209176', 'New Wire Transfer', '2025-04-07 12:40:01'),
(424, '1202237469', 'Profile Picture Upadate', '2025-04-07 12:42:17'),
(425, '1202209176', 'New Domestic Transfer', '2025-04-07 12:48:17'),
(426, '1202237469', 'Login into dashboard', '2025-04-08 14:37:39'),
(427, '1202237469', 'Login into dashboard', '2025-04-08 21:20:06'),
(428, '1202237469', 'Login into dashboard', '2025-04-09 15:07:04'),
(429, '1202237469', 'Login into dashboard', '2025-04-09 15:08:26'),
(430, '1202237469', 'Login into dashboard', '2025-04-18 15:38:56'),
(431, '1202237469', 'Login into dashboard', '2025-04-18 16:06:29'),
(432, '1202209176', 'Login into dashboard', '2025-04-18 16:08:24'),
(433, '1202209176', 'Login into dashboard', '2025-04-18 16:09:50'),
(434, '1202237469', 'New Domestic Transfer', '2025-04-18 16:19:54'),
(435, '1202209176', 'Login into dashboard', '2025-04-18 16:26:01'),
(436, '1202209176', 'Login into dashboard', '2025-04-18 16:27:17'),
(437, '1202209176', 'Login into dashboard', '2025-04-18 16:28:07'),
(438, '1202209176', 'Login into dashboard', '2025-04-18 16:30:24'),
(439, '1202237469', 'Login into dashboard', '2025-04-18 16:36:34'),
(440, '1202209176', 'Login into dashboard', '2025-04-20 12:42:29'),
(441, '1202962256', 'New Wire Transfer', '2025-04-20 13:07:54'),
(442, '1202962256', 'New Wire Transfer', '2025-04-20 13:07:54'),
(443, '1202209176', 'New Domestic Transfer', '2025-04-20 13:13:48'),
(444, '1202209176', 'Login into dashboard', '2025-04-20 13:57:37'),
(445, '1202209176', 'Login into dashboard', '2025-04-20 13:58:33'),
(446, '1202209176', 'Login into dashboard', '2025-04-20 14:02:01'),
(447, '1202209176', 'Login into dashboard', '2025-04-20 14:03:20'),
(448, '1202209176', 'Login into dashboard', '2025-04-20 14:04:17'),
(449, '1202209176', 'Login into dashboard', '2025-04-20 14:04:26'),
(450, '1202209176', 'Login into dashboard', '2025-04-20 14:04:26'),
(451, '1202209176', 'Login into dashboard', '2025-04-20 14:06:31'),
(452, '1202209176', 'Login into dashboard', '2025-04-20 14:06:32'),
(453, '1202209176', 'Login into dashboard', '2025-04-21 04:57:09'),
(454, '1202209176', 'Login into dashboard', '2025-04-21 04:57:11'),
(455, '1202240901', 'New Registration', '2025-04-21 05:08:04'),
(456, '1202240901', 'Login into dashboard', '2025-04-21 05:09:40'),
(457, '1202888917', 'Login into dashboard', '2025-04-22 03:47:18'),
(458, '1202209176', 'Login into dashboard', '2025-04-23 22:18:56'),
(459, '1202209176', 'Login into dashboard', '2025-04-23 23:14:15'),
(460, '1202209176', 'Login into dashboard', '2025-04-23 23:15:53'),
(461, '1202209176', 'Login into dashboard', '2025-04-23 23:24:27'),
(462, '1202240901', 'Login into dashboard', '2025-04-23 23:26:36'),
(463, '1202240901', 'Login into dashboard', '2025-04-23 23:26:36'),
(464, '1202209176', 'New Domestic Transfer', '2025-04-23 23:29:38'),
(465, '1202235443', 'New Registration', '2025-05-09 00:37:11'),
(466, '1202235443', 'Login into dashboard', '2025-05-09 16:58:56'),
(467, '1202235443', 'Login into dashboard', '2025-05-09 16:58:57'),
(468, '1202235443', 'Login into dashboard', '2025-05-09 17:47:57'),
(469, '1202235443', 'Login into dashboard', '2025-05-09 17:47:59'),
(470, '1202235443', 'Login into dashboard', '2025-05-09 17:52:02'),
(471, '1202235443', 'Login into dashboard', '2025-05-09 17:52:38'),
(472, '1202235443', 'Login into dashboard', '2025-05-09 17:52:53'),
(473, '1202235443', 'Login into dashboard', '2025-05-09 18:10:22'),
(474, '1202235443', 'Login into dashboard', '2025-05-09 18:40:44'),
(475, '1202235443', 'Login into dashboard', '2025-05-10 01:52:34'),
(476, '1202235443', 'Login into dashboard', '2025-05-10 04:06:23'),
(477, '1202235443', 'Login into dashboard', '2025-05-10 10:40:58'),
(478, '1202235443', 'Profile Picture Upadate', '2025-05-10 10:55:47'),
(479, '1202235443', 'Login into dashboard', '2025-05-10 18:53:33'),
(480, '1202235443', 'Login into dashboard', '2025-05-10 18:56:13'),
(481, '1202124851', 'New Registration', '2025-05-19 14:11:40'),
(482, '1202124851', 'Login into dashboard', '2025-05-19 15:56:19'),
(483, '1202124851', 'Login into dashboard', '2025-05-19 16:18:42'),
(484, '1202124851', 'Login into dashboard', '2025-05-20 05:33:54'),
(485, '1202124851', 'Login into dashboard', '2025-05-20 05:34:51'),
(486, '1202124851', 'Login into dashboard', '2025-05-20 05:43:42'),
(487, '1202888917', 'Login into dashboard', '2025-05-20 06:07:58'),
(488, '1202888917', 'Login into dashboard', '2025-05-20 06:21:17'),
(489, '1202124851', 'New Domestic Transfer', '2025-05-20 09:45:00'),
(490, '1202124851', 'Login into dashboard', '2025-05-20 17:47:43'),
(491, '1202124851', 'Login into dashboard', '2025-05-20 19:30:21'),
(492, '1202124851', 'Login into dashboard', '2025-05-20 19:34:54'),
(493, '1202124851', 'Login into dashboard', '2025-05-20 19:36:23'),
(494, '1202124851', 'Login into dashboard', '2025-05-20 19:45:08'),
(495, '1202209176', 'Login into dashboard', '2025-05-20 21:29:54'),
(496, '1202209176', 'Login into dashboard', '2025-05-20 23:24:52'),
(497, '1202252424', 'New Registration', '2025-05-21 08:21:40'),
(498, '1202209176', 'Login into dashboard', '2025-05-21 09:25:20'),
(499, '1202209176', 'Login into dashboard', '2025-05-21 09:25:23'),
(500, '1202209176', 'Login into dashboard', '2025-05-21 09:49:40'),
(501, '1202209176', 'Login into dashboard', '2025-05-21 09:51:52'),
(502, '1202209176', 'Login into dashboard', '2025-05-21 09:54:44'),
(503, '1202209176', 'Login into dashboard', '2025-05-21 11:04:15'),
(504, '1202237469', 'Login into dashboard', '2025-05-26 05:55:34'),
(505, '1202237469', 'Login into dashboard', '2025-05-27 18:44:12'),
(506, '1202972400', 'New Registration', '2025-06-20 12:01:59'),
(507, '1202744358', 'New Registration', '2025-09-20 07:42:52'),
(508, '1202744358', 'Login into dashboard', '2025-09-20 16:35:41'),
(509, '1202744358', 'Login into dashboard', '2025-09-20 16:54:01'),
(510, '1202223127', 'New Registration', '2025-09-20 17:03:07'),
(511, '1202302067', 'Login into dashboard', '2025-09-21 09:24:29'),
(512, '1202362658', 'Login into dashboard', '2025-09-21 09:34:04'),
(513, '1202362658', 'Login into dashboard', '2025-09-21 09:38:06'),
(514, '1202362658', 'Login into dashboard', '2025-09-21 10:11:36'),
(515, '1202362658', 'Login into dashboard', '2025-09-21 10:31:12'),
(516, '1202362658', 'Login into dashboard', '2025-09-21 11:00:58'),
(517, '1202273287', 'Login into dashboard', '2025-09-21 11:34:43'),
(518, '1202273287', 'Login into dashboard', '2025-09-21 11:36:51'),
(519, '1202273287', 'Login into dashboard', '2025-09-21 11:39:12'),
(520, '1202273287', 'Profile Picture Upadate', '2025-09-21 11:49:46'),
(521, '1202273287', 'New Wire Transfer', '2025-09-21 11:53:24'),
(522, '1202273287', 'New Wire Transfer', '2025-09-21 11:54:20'),
(523, '1202273287', 'Login into dashboard', '2025-09-21 12:01:59'),
(524, '1202273287', 'Login into dashboard', '2025-09-21 12:01:59'),
(525, '1202273287', 'Login into dashboard', '2025-09-21 12:06:56'),
(526, '1202273287', 'Login into dashboard', '2025-09-21 12:10:04'),
(527, '1202273287', 'Login into dashboard', '2025-09-21 12:13:22'),
(528, '1202273287', 'Login into dashboard', '2025-09-21 12:13:25'),
(529, '1202273287', 'Login into dashboard', '2025-09-21 19:22:20'),
(530, '1202273287', 'Login into dashboard', '2025-09-21 19:52:31'),
(531, '1202288777', 'Login into dashboard', '2025-09-24 20:46:38'),
(532, '1202288777', 'Login into dashboard', '2025-09-24 20:54:52'),
(533, '1202288777', 'Profile Picture Upadate', '2025-09-24 21:00:52'),
(534, '1202288777', 'New Wire Transfer', '2025-09-24 21:09:16'),
(535, '1202288777', 'New Wire Transfer', '2025-09-24 21:14:17'),
(536, '1202324427', 'Login into dashboard', '2025-09-24 22:02:43'),
(537, '1202187436', 'Login into dashboard', '2025-09-24 22:13:05'),
(538, '1202187436', 'Login into dashboard', '2025-09-24 22:23:14'),
(539, '1202187436', 'Profile Picture Upadate', '2025-09-24 22:25:41'),
(540, '1202277776', 'Login into dashboard', '2025-09-24 22:30:55'),
(541, '1202277776', 'Profile Picture Upadate', '2025-09-24 22:40:24'),
(542, '1202277776', 'Profile Picture Upadate', '2025-09-24 22:42:45'),
(543, '1202201405', 'Login into dashboard', '2025-09-24 22:47:51'),
(544, '1202201405', 'Login into dashboard', '2025-09-24 22:52:40'),
(545, '1202201405', 'Profile Picture Upadate', '2025-09-24 22:55:03'),
(546, '1202259353', 'Login into dashboard', '2025-09-24 22:57:14'),
(547, '1202259353', 'Login into dashboard', '2025-09-24 23:00:19'),
(548, '1202259353', 'Login into dashboard', '2025-09-24 23:03:44'),
(549, '1202257088', 'Login into dashboard', '2025-09-24 23:06:37'),
(550, '1202259353', 'Profile Picture Upadate', '2025-09-24 23:07:18'),
(551, '1202201405', 'Login into dashboard', '2025-09-24 23:08:23'),
(552, '1202288777', 'Login into dashboard', '2025-09-24 23:09:12'),
(553, '1202273287', 'Login into dashboard', '2025-09-24 23:10:55'),
(554, '1202115383', 'Login into dashboard', '2025-09-24 23:12:49'),
(555, '1202115383', 'Profile Picture Upadate', '2025-09-24 23:19:18'),
(556, '1202115383', 'Login into dashboard', '2025-09-24 23:27:27'),
(557, '1202288777', 'Login into dashboard', '2025-09-24 23:33:26'),
(558, '1202221627', 'Login into dashboard', '2025-09-24 23:34:24'),
(559, '1202128507', 'Login into dashboard', '2025-09-24 23:40:47'),
(560, '1202128507', 'Profile Picture Upadate', '2025-09-24 23:42:53'),
(561, '1202221627', 'Login into dashboard', '2025-09-24 23:46:01'),
(562, '1202257088', 'Login into dashboard', '2025-09-24 23:48:46'),
(563, '1202221627', 'Login into dashboard', '2025-09-24 23:50:19'),
(564, '1202257088', 'Profile Picture Upadate', '2025-09-24 23:51:41'),
(565, '1202174285', 'Login into dashboard', '2025-09-25 00:01:41'),
(566, '1202174285', 'Profile Picture Upadate', '2025-09-25 00:07:17'),
(567, '1202174285', 'Profile Picture Upadate', '2025-09-25 00:07:19'),
(568, '1202174285', 'Profile Picture Upadate', '2025-09-25 00:09:20'),
(569, '1202112458', 'Login into dashboard', '2025-09-28 20:38:46'),
(570, '1202112458', 'Profile Picture Upadate', '2025-09-28 20:49:35'),
(571, '1202112458', 'Login into dashboard', '2025-09-28 21:09:02'),
(572, '1202174285', 'Login into dashboard', '2025-09-28 21:34:30'),
(573, '1202174285', 'Login into dashboard', '2025-09-28 21:52:23'),
(574, '1202174285', 'Login into dashboard', '2025-09-28 21:53:11'),
(575, '1202174285', 'Login into dashboard', '2025-09-28 21:59:41'),
(576, '1202174285', 'Login into dashboard', '2025-09-28 22:07:38'),
(577, '1202174285', 'Login into dashboard', '2025-09-28 22:12:03'),
(578, '1202174285', 'Login into dashboard', '2025-09-28 22:14:49'),
(579, '1202174285', 'Login into dashboard', '2025-09-28 22:20:05'),
(580, '1202174285', 'Login into dashboard', '2025-09-28 22:42:45'),
(581, '1202174285', 'Login into dashboard', '2025-09-28 23:37:47'),
(582, '1202174285', 'Login into dashboard', '2025-09-28 23:45:48'),
(583, '1202174285', 'Login into dashboard', '2025-09-29 00:06:36'),
(584, '1202174285', 'Login into dashboard', '2025-09-29 00:07:31'),
(585, '1202174285', 'Login into dashboard', '2025-10-06 06:34:05'),
(586, '1202174285', 'Login into dashboard', '2025-10-06 08:15:21'),
(587, '1202174285', 'Login into dashboard', '2025-10-06 08:32:29'),
(588, '1202174285', 'Login into dashboard', '2025-10-09 11:51:23'),
(589, '1202174285', 'Login into dashboard', '2025-10-09 12:49:13'),
(590, '1202174285', 'Login into dashboard', '2025-10-09 13:13:30'),
(591, '1202128507', 'Login into dashboard', '2025-10-11 11:26:32'),
(592, '1202128507', 'Login into dashboard', '2025-10-11 11:33:10'),
(593, '1202128507', 'Login into dashboard', '2025-10-11 12:05:32'),
(594, '1202128507', 'Login into dashboard', '2025-10-11 12:10:31'),
(595, '1202128507', 'Login into dashboard', '2025-10-16 08:04:23'),
(596, '1202128507', 'Login into dashboard', '2025-10-16 09:45:12'),
(597, '1202128507', 'Login into dashboard', '2025-10-16 10:16:42'),
(598, '1202128507', 'Login into dashboard', '2025-10-17 20:32:56'),
(599, '1202259353', 'Login into dashboard', '2025-10-20 15:40:02'),
(600, '1202259353', 'Login into dashboard', '2025-10-20 16:28:43'),
(601, '1202112458', 'Login into dashboard', '2025-10-23 09:21:50'),
(602, '1202112458', 'Login into dashboard', '2025-10-23 10:43:59'),
(603, '1202112458', 'Login into dashboard', '2025-10-23 10:45:19'),
(604, '1202112458', 'Login into dashboard', '2025-10-23 10:46:36'),
(605, '1202112458', 'Login into dashboard', '2025-10-23 10:47:40'),
(606, '1202112458', 'Login into dashboard', '2025-10-23 10:52:34'),
(607, '1202112458', 'Login into dashboard', '2025-10-23 10:55:40'),
(608, '1202112458', 'Login into dashboard', '2025-10-23 11:02:32'),
(609, '1202112458', 'Login into dashboard', '2025-10-23 11:12:23'),
(610, '1202112458', 'Login into dashboard', '2025-10-23 11:18:53'),
(611, '1202112458', 'Login into dashboard', '2025-10-23 11:24:54'),
(612, '1202112458', 'Login into dashboard', '2025-10-23 12:56:38'),
(613, '1202112458', 'Login into dashboard', '2025-10-23 13:21:30'),
(614, '1202112458', 'Login into dashboard', '2025-10-23 13:37:41'),
(615, '1202112458', 'Login into dashboard', '2025-10-23 13:42:13'),
(616, '1202112458', 'Login into dashboard', '2025-10-23 13:44:17'),
(617, '1202112458', 'Login into dashboard', '2025-10-23 13:44:56'),
(618, '1202112458', 'Login into dashboard', '2025-10-23 13:47:22'),
(619, '1202112458', 'Login into dashboard', '2025-10-23 13:48:32'),
(620, '1202112458', 'Login into dashboard', '2025-10-23 14:02:09'),
(621, '1202112458', 'Login into dashboard', '2025-10-23 14:02:16'),
(622, '1202112458', 'Login into dashboard', '2025-10-23 14:04:53'),
(623, '1202187436', 'Login into dashboard', '2025-10-25 11:57:33'),
(624, '1202187436', 'Login into dashboard', '2025-10-25 12:32:03'),
(625, '1202201405', 'Login into dashboard', '2025-11-07 11:42:33'),
(626, '1202201405', 'Login into dashboard', '2025-11-07 11:46:12'),
(627, '1202201405', 'Login into dashboard', '2025-11-07 11:52:55'),
(628, '1202201405', 'Login into dashboard', '2025-11-07 12:12:28'),
(629, '1202277776', 'Login into dashboard', '2025-11-14 19:12:46'),
(630, '1202277776', 'Login into dashboard', '2025-11-14 19:14:43'),
(631, '1202277776', 'Login into dashboard', '2025-11-14 19:19:28'),
(632, '1202277776', 'Login into dashboard', '2025-11-14 19:39:57'),
(633, '1202277776', 'Login into dashboard', '2025-11-14 19:45:09'),
(634, '1202259353', 'Login into dashboard', '2025-11-20 21:37:53'),
(635, '1202259353', 'Login into dashboard', '2025-11-20 21:44:24'),
(636, '1202259353', 'Login into dashboard', '2025-11-20 22:01:26'),
(637, '1202259353', 'Login into dashboard', '2025-11-20 22:25:50'),
(638, '1202259353', 'Login into dashboard', '2025-11-23 09:31:24'),
(639, '1202259353', 'Login into dashboard', '2025-11-23 09:36:11'),
(640, '1202259353', 'Login into dashboard', '2025-11-23 09:40:46'),
(641, '1202259353', 'Login into dashboard', '2025-11-23 09:41:39'),
(642, '1202259353', 'Login into dashboard', '2025-11-23 09:43:00'),
(643, '1202259353', 'Login into dashboard', '2025-11-23 09:45:11'),
(644, '1202259353', 'Login into dashboard', '2025-11-23 09:46:40'),
(645, '1202259353', 'Login into dashboard', '2025-11-23 09:47:59'),
(646, '1202259353', 'Login into dashboard', '2025-11-23 09:53:22'),
(647, '1202259353', 'Login into dashboard', '2025-11-23 09:54:02'),
(648, '1202259353', 'Login into dashboard', '2025-11-23 09:56:07'),
(649, '1202259353', 'Login into dashboard', '2025-11-23 10:01:11'),
(650, '1202259353', 'Login into dashboard', '2025-11-23 10:06:25'),
(651, '1202259353', 'Login into dashboard', '2025-11-23 10:15:34'),
(652, '1202259353', 'Login into dashboard', '2025-11-23 10:30:00'),
(653, '1202259353', 'Login into dashboard', '2025-11-23 10:31:19'),
(654, '1202259353', 'Login into dashboard', '2025-11-23 10:34:26'),
(655, '1202259353', 'Login into dashboard', '2025-11-23 10:37:03'),
(656, '1202259353', 'Login into dashboard', '2025-11-23 10:38:50'),
(657, '1202259353', 'Login into dashboard', '2025-11-28 19:45:58'),
(658, '1202259353', 'New Wire Transfer', '2025-11-28 20:13:13'),
(659, '1202259353', 'Login into dashboard', '2025-11-28 21:04:28'),
(660, '1202259353', 'Login into dashboard', '2025-11-28 21:13:00'),
(661, '1202201405', 'Login into dashboard', '2025-11-29 19:59:06'),
(662, '1202201405', 'Login into dashboard', '2025-11-29 20:01:22'),
(663, '1202257088', 'Login into dashboard', '2025-12-01 11:23:13'),
(664, '1202257088', 'Login into dashboard', '2025-12-01 11:28:18'),
(665, '1202257088', 'Login into dashboard', '2025-12-01 11:28:46'),
(666, '1202257088', 'Login into dashboard', '2025-12-01 11:38:22'),
(667, '1202257088', 'Login into dashboard', '2025-12-01 11:41:49'),
(668, '1202257088', 'Login into dashboard', '2025-12-01 11:43:06'),
(669, '1202257088', 'Login into dashboard', '2025-12-01 11:49:58'),
(670, '1202257088', 'Login into dashboard', '2025-12-01 12:08:43'),
(671, '1202257088', 'Login into dashboard', '2025-12-01 12:11:03'),
(672, '1202257088', 'Login into dashboard', '2025-12-01 12:46:03'),
(673, '1202259353', 'Login into dashboard', '2025-12-14 18:57:36'),
(674, '1202259353', 'Login into dashboard', '2025-12-14 19:01:23'),
(675, '1202154261', 'Login into dashboard', '2025-12-14 21:22:09'),
(676, '1202154261', 'Profile Picture Upadate', '2025-12-14 21:28:38'),
(677, '1202225225', 'Login into dashboard', '2025-12-15 20:02:55'),
(678, '1202225225', 'Profile Picture Upadate', '2025-12-15 20:08:36'),
(679, '1202201405', 'Login into dashboard', '2025-12-17 18:52:09'),
(680, '1202201405', 'Login into dashboard', '2025-12-17 19:10:56'),
(681, '1202128507', 'Login into dashboard', '2025-12-21 07:06:24'),
(682, '1202128507', 'Profile Picture Upadate', '2025-12-21 07:13:34'),
(683, '1202128507', 'Login into dashboard', '2025-12-21 07:17:39'),
(684, '1202128507', 'Login into dashboard', '2025-12-22 17:15:15'),
(685, '1202128507', 'Login into dashboard', '2025-12-22 17:40:23'),
(686, '1202187436', 'Login into dashboard', '2026-01-02 11:18:15'),
(687, '1202187436', 'Login into dashboard', '2026-01-02 11:26:34'),
(688, '1202187436', 'Login into dashboard', '2026-01-02 11:39:36'),
(689, '1202187436', 'Login into dashboard', '2026-01-02 20:45:40'),
(690, '1202187436', 'Profile Picture Upadate', '2026-01-02 20:49:01'),
(691, '1202187436', 'Login into dashboard', '2026-01-02 21:26:02'),
(692, '1202187436', 'Login into dashboard', '2026-01-03 06:27:28'),
(693, '1202187436', 'Login into dashboard', '2026-01-03 06:28:38'),
(694, '1202187436', 'Login into dashboard', '2026-01-03 06:34:33'),
(695, '1202225225', 'Login into dashboard', '2026-01-16 21:06:15'),
(696, '1202225225', 'Login into dashboard', '2026-01-16 21:29:26'),
(697, '1202154261', 'Login into dashboard', '2026-01-17 11:45:55'),
(698, '1202154261', 'Login into dashboard', '2026-01-17 11:45:55'),
(699, '1202154261', 'Login into dashboard', '2026-01-17 11:45:56'),
(700, '1202154261', 'Login into dashboard', '2026-01-17 11:50:24'),
(701, '1202154261', 'Login into dashboard', '2026-01-17 11:56:05'),
(702, '1202154261', 'Login into dashboard', '2026-01-17 12:23:52'),
(703, '1202154261', 'Login into dashboard', '2026-01-17 12:31:45'),
(704, '1202225225', 'Login into dashboard', '2026-02-06 12:21:43'),
(705, '1202225225', 'Login into dashboard', '2026-02-06 13:04:18'),
(706, '1202225225', 'Login into dashboard', '2026-02-06 13:44:04'),
(707, '1202225225', 'Login into dashboard', '2026-02-06 14:51:46'),
(708, '1202225225', 'Login into dashboard', '2026-02-06 16:53:06'),
(709, '1202225225', 'Login into dashboard', '2026-02-06 17:48:09'),
(710, '1202225225', 'Login into dashboard', '2026-02-06 20:22:37'),
(711, '1202225225', 'Login into dashboard', '2026-02-06 20:30:49'),
(712, '1202225225', 'Login into dashboard', '2026-02-06 20:37:35'),
(713, '1202225225', 'Login into dashboard', '2026-02-06 20:55:27'),
(714, '1202225225', 'Login into dashboard', '2026-02-06 20:56:13'),
(715, '1202225225', 'Login into dashboard', '2026-02-06 22:13:41'),
(716, '1202225225', 'Login into dashboard', '2026-02-06 22:38:53'),
(717, '1202225225', 'Login into dashboard', '2026-02-06 23:06:25'),
(718, '1202225225', 'Login into dashboard', '2026-02-07 17:50:54'),
(719, '1202225225', 'Login into dashboard', '2026-02-07 19:17:57'),
(720, '1202944315', 'Login into dashboard', '2026-03-05 07:06:26'),
(721, '1202316451', 'Login into dashboard', '2026-03-05 07:28:04'),
(722, '1202944315', 'Login into dashboard', '2026-03-05 07:28:45'),
(723, '1202316451', 'Profile Picture Upadate', '2026-03-05 07:32:05'),
(724, '1202944315', 'Profile Picture Upadate', '2026-03-05 07:32:46'),
(725, '1202944315', 'Login into dashboard', '2026-03-05 07:34:52'),
(726, '1202944315', 'Login into dashboard', '2026-03-05 07:34:53'),
(727, '1202944315', 'Login into dashboard', '2026-03-05 07:34:54'),
(728, '1202944315', 'Login into dashboard', '2026-03-05 07:34:56'),
(729, '1202944315', 'Login into dashboard', '2026-03-05 07:34:56'),
(730, '1202944315', 'Login into dashboard', '2026-03-05 07:34:57'),
(731, '1202154261', 'Login into dashboard', '2026-03-11 21:46:08'),
(732, '1202154261', 'Login into dashboard', '2026-03-11 23:06:40'),
(733, '1202154261', 'Login into dashboard', '2026-03-11 23:30:26'),
(734, '1202154261', 'Login into dashboard', '2026-03-12 00:04:42'),
(735, '1202128507', 'Login into dashboard', '2026-03-12 10:20:35'),
(736, '1202128507', 'Login into dashboard', '2026-03-12 10:22:38'),
(737, '1202128507', 'Login into dashboard', '2026-03-12 18:58:38'),
(738, '1202351388', 'Login into dashboard', '2026-03-17 07:58:59'),
(739, '1202351388', 'Login into dashboard', '2026-03-17 08:02:27'),
(740, '1202257440', 'Login into dashboard', '2026-03-17 08:18:54'),
(741, '1202257440', 'Profile Picture Upadate', '2026-03-17 08:26:15'),
(742, '1202351388', 'Profile Picture Upadate', '2026-03-17 08:55:50'),
(743, '1202256627', 'Login into dashboard', '2026-03-17 09:02:05'),
(744, '1202256627', 'Profile Picture Upadate', '2026-03-17 09:05:56'),
(745, '1202246902', 'Login into dashboard', '2026-03-17 09:06:25'),
(746, '1202246902', 'Profile Picture Upadate', '2026-03-17 09:29:22'),
(747, '1202181177', 'Login into dashboard', '2026-03-17 09:29:59'),
(748, '1202181177', 'Login into dashboard', '2026-03-17 09:31:24'),
(749, '1202181177', 'Login into dashboard', '2026-03-17 09:34:21'),
(750, '1202319064', 'Login into dashboard', '2026-03-17 09:37:27'),
(751, '1202181177', 'Login into dashboard', '2026-03-17 09:37:55'),
(752, '1202319064', 'Login into dashboard', '2026-03-17 09:39:27'),
(753, '1202181177', 'Login into dashboard', '2026-03-17 09:41:34'),
(754, '1202181177', 'Profile Picture Upadate', '2026-03-17 09:43:06'),
(755, '1202181177', 'Login into dashboard', '2026-03-17 09:44:15'),
(756, '1202319064', 'Profile Picture Upadate', '2026-03-17 09:44:56'),
(757, '1202319064', 'Login into dashboard', '2026-03-17 09:45:22'),
(758, '1202227176', 'Login into dashboard', '2026-03-17 09:54:33');
INSERT INTO `activities` (`id`, `internetid`, `details`, `createdAt`) VALUES
(759, '1202227176', 'Login into dashboard', '2026-03-17 09:57:12'),
(760, '1202227176', 'Profile Picture Upadate', '2026-03-17 10:00:20'),
(761, '1202181177', 'Login into dashboard', '2026-03-17 10:14:02'),
(762, '1202181177', 'Login into dashboard', '2026-03-17 10:16:03'),
(763, '1202181177', 'New Wire Transfer', '2026-03-17 10:19:33'),
(764, '1202677518', 'Login into dashboard', '2026-03-17 12:59:55'),
(765, '1202677518', 'Profile Picture Upadate', '2026-03-17 13:02:28'),
(766, '1202257440', 'Login into dashboard', '2026-03-17 13:29:01'),
(767, '1202104512', 'Login into dashboard', '2026-03-17 15:58:58'),
(768, '1202227176', 'Login into dashboard', '2026-03-17 16:13:33'),
(769, '1202227176', 'Login into dashboard', '2026-03-17 16:15:28'),
(770, '1202104512', 'Profile Picture Upadate', '2026-03-17 16:27:31'),
(771, '1202104512', 'Profile Picture Upadate', '2026-03-17 16:33:12'),
(772, '1202351388', 'Login into dashboard', '2026-03-17 17:47:49'),
(773, '1202227176', 'Login into dashboard', '2026-03-17 18:04:11'),
(774, '1202227176', 'Login into dashboard', '2026-03-17 18:17:45'),
(775, '1202319064', 'Login into dashboard', '2026-03-18 10:17:00'),
(776, '1202319064', 'Login into dashboard', '2026-03-18 10:17:02'),
(777, '1202351388', 'Login into dashboard', '2026-03-18 10:21:11'),
(778, '1202351388', 'Login into dashboard', '2026-03-18 12:32:06'),
(779, '1202227176', 'Login into dashboard', '2026-03-18 12:35:43'),
(780, '1202227176', 'Login into dashboard', '2026-03-18 12:43:24'),
(781, '1202351388', 'Login into dashboard', '2026-03-18 12:54:04'),
(782, '1202351388', 'Login into dashboard', '2026-03-18 12:57:06'),
(783, '1202227176', 'Login into dashboard', '2026-03-18 12:59:28'),
(784, '1202181177', 'Login into dashboard', '2026-03-18 13:01:53'),
(785, '1202181177', 'Login into dashboard', '2026-03-18 13:02:11'),
(786, '1202257440', 'Login into dashboard', '2026-03-18 13:02:32'),
(787, '1202351388', 'Login into dashboard', '2026-03-18 13:02:38'),
(788, '1202256627', 'Login into dashboard', '2026-03-18 13:04:29'),
(789, '1202257440', 'Login into dashboard', '2026-03-18 13:05:46'),
(790, '1202181177', 'Login into dashboard', '2026-03-18 13:05:54'),
(791, '1202246902', 'Login into dashboard', '2026-03-18 13:08:07'),
(792, '1202677518', 'Login into dashboard', '2026-03-18 13:08:11'),
(793, '1202257440', 'Login into dashboard', '2026-03-18 13:09:49'),
(794, '1202246902', 'Login into dashboard', '2026-03-18 13:09:57'),
(795, '1202257440', 'Login into dashboard', '2026-03-18 13:14:09'),
(796, '1202181177', 'Login into dashboard', '2026-03-18 13:14:34'),
(797, '1202181177', 'Login into dashboard', '2026-03-18 13:16:30'),
(798, '1202246902', 'Login into dashboard', '2026-03-18 13:22:19'),
(799, '1202319064', 'Login into dashboard', '2026-03-18 15:52:50'),
(800, '1202319064', 'Login into dashboard', '2026-03-18 15:52:52'),
(801, '1202319064', 'Login into dashboard', '2026-03-18 15:52:54'),
(802, '1202319064', 'Login into dashboard', '2026-03-18 15:52:56'),
(803, '1202319064', 'Login into dashboard', '2026-03-18 15:53:19'),
(804, '1202319064', 'Login into dashboard', '2026-03-18 15:53:20'),
(805, '1202319064', 'Login into dashboard', '2026-03-18 15:53:21'),
(806, '1202319064', 'Login into dashboard', '2026-03-18 15:56:22'),
(807, '1202104512', 'Login into dashboard', '2026-03-18 20:05:12'),
(808, '1202104512', 'Login into dashboard', '2026-03-18 22:48:19'),
(809, '1202104512', 'Login into dashboard', '2026-03-18 23:08:25'),
(810, '1202104512', 'Login into dashboard', '2026-03-18 23:12:48'),
(811, '1202246902', 'Login into dashboard', '2026-03-21 10:47:00'),
(812, '1202246902', 'Login into dashboard', '2026-03-21 10:50:43'),
(813, '1202246902', 'Login into dashboard', '2026-03-21 10:53:34'),
(814, '1202319064', 'Login into dashboard', '2026-03-24 04:47:21'),
(815, '1202225225', 'Login into dashboard', '2026-03-27 20:35:16'),
(816, '1202225225', 'Login into dashboard', '2026-03-27 22:48:44'),
(817, '1202472110', 'New Registration', '2026-03-30 02:19:15'),
(818, '1202176692', 'Login into dashboard', '2026-03-30 12:59:02'),
(819, '1202176692', 'Login into dashboard', '2026-03-30 12:59:04'),
(820, '1202176692', 'Login into dashboard', '2026-03-30 13:03:26'),
(821, '1202176692', 'Login into dashboard', '2026-03-30 13:16:32'),
(822, '1202176692', 'Login into dashboard', '2026-03-30 13:16:35'),
(823, '1202509702', 'Login into dashboard', '2026-03-30 13:43:07'),
(824, '1202509702', 'Login into dashboard', '2026-03-31 03:35:33'),
(825, '1202509702', 'Login into dashboard', '2026-03-31 04:06:27'),
(826, '1202509702', 'Login into dashboard', '2026-03-31 04:15:41'),
(827, '1202285657', 'Login into dashboard', '2026-03-31 04:44:41'),
(828, '1202285657', 'Profile Picture Upadate', '2026-03-31 04:47:49'),
(829, '1202285657', 'Login into dashboard', '2026-03-31 07:23:32'),
(830, '1202290624', 'Login into dashboard', '2026-03-31 11:27:42'),
(831, '1202290624', 'Profile Picture Upadate', '2026-03-31 11:29:06'),
(832, '1202285657', 'Login into dashboard', '2026-04-01 07:11:03'),
(833, '1202285657', 'Login into dashboard', '2026-04-01 07:32:14'),
(834, '1202290624', 'Login into dashboard', '2026-04-01 09:25:24'),
(835, '1202290624', 'Login into dashboard', '2026-04-01 09:35:25'),
(836, '1202285657', 'Login into dashboard', '2026-04-02 00:11:26'),
(837, '1202285657', 'Login into dashboard', '2026-04-02 04:29:53'),
(838, '1202285657', 'Login into dashboard', '2026-04-02 06:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `adminimage` text DEFAULT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `adminimage`, `admin_email`, `admin_password`) VALUES
(1, 'Admin', 'Admin', 'user.png', 'admin@mail.com', '4sTCys8lB9xxw');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `internetid` varchar(255) DEFAULT NULL,
  `device` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ipAddress` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `datenow` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `internetid`, `device`, `ipAddress`, `datenow`) VALUES
(1, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.53.187', '2024-04-08 13:34:51'),
(2, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '105.112.222.25', '2024-04-08 14:43:25'),
(3, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '105.112.222.25', '2024-04-08 14:48:19'),
(4, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.53.187', '2024-04-08 15:06:07'),
(5, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.53.187', '2024-04-08 15:06:21'),
(6, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.89.34.127', '2024-04-10 08:22:11'),
(7, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.89.34.141', '2024-04-10 08:24:03'),
(8, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '102.89.34.158', '2024-04-10 08:33:24'),
(9, '1202807633', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', '102.90.58.230', '2024-04-11 20:45:09'),
(10, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/119.0.6045.109 Mobile/15E148 Safari/604.1', '197.210.226.143', '2024-04-12 06:06:06'),
(11, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '197.211.61.142', '2024-04-12 06:21:30'),
(12, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '197.211.61.142', '2024-04-12 06:23:09'),
(13, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '102.88.70.97', '2024-04-12 06:31:42'),
(14, '1202201822', 'Mozilla/5.0 (Linux; Android 11; TECNO PR651E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', '197.210.85.221', '2024-04-12 06:39:34'),
(15, '1202201822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '197.210.54.50', '2024-04-12 06:51:15'),
(16, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '102.90.49.223', '2024-04-12 06:56:50'),
(17, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.85.219', '2024-04-12 07:05:01'),
(18, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '197.210.226.90', '2024-04-12 07:06:28'),
(19, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/24.0 Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.226.238', '2024-04-12 07:08:01'),
(20, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/121.0.6167.171 Mobile/15E148 Safari/604.1', '197.210.55.174', '2024-04-12 07:19:24'),
(21, '1202201822', 'Mozilla/5.0 (Linux; Android 13; 23106RN0DA) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.280 Mobile Safari/537.36 OPR/80.6.4244.78244', '129.205.124.176', '2024-04-12 07:33:21'),
(22, '1202280407', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1', '197.211.59.160', '2024-04-12 07:40:40'),
(23, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '41.190.2.39', '2024-04-12 07:42:16'),
(24, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36 EdgA/122.0.0.0', '105.120.128.225', '2024-04-12 07:47:14'),
(25, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', '102.88.82.112', '2024-04-12 08:09:47'),
(26, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '197.210.85.23', '2024-04-12 08:30:40'),
(27, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '129.0.79.245', '2024-04-12 10:02:56'),
(28, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '102.88.82.159', '2024-04-12 10:14:18'),
(29, '1202315195', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '102.91.52.75', '2024-04-12 10:34:39'),
(30, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15', '105.113.85.128', '2024-04-12 10:35:30'),
(31, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '154.161.28.16', '2024-04-12 10:38:17'),
(32, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', '102.90.65.89', '2024-04-12 10:40:55'),
(33, '1202201822', 'Mozilla/5.0 (Linux; Android 11; 2209116AG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '105.112.210.48', '2024-04-12 10:41:36'),
(34, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '102.91.52.187', '2024-04-12 10:42:10'),
(35, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '129.205.113.172', '2024-04-12 10:44:46'),
(36, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '129.205.113.172', '2024-04-12 10:44:52'),
(37, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '129.205.113.172', '2024-04-12 10:44:57'),
(38, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '129.205.113.172', '2024-04-12 10:45:05'),
(39, '1202201822', 'Mozilla/5.0 (Linux; Android 13; CPH2159) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '102.89.42.254', '2024-04-12 10:50:34'),
(40, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '197.210.54.148', '2024-04-12 10:53:55'),
(41, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '41.85.163.82', '2024-04-12 10:54:27'),
(42, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '129.205.124.176', '2024-04-12 11:08:23'),
(43, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', '102.88.43.22', '2024-04-12 11:10:35'),
(44, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '104.28.88.89', '2024-04-12 11:23:59'),
(45, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '105.113.41.40', '2024-04-12 11:24:17'),
(46, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/105.0.5195.129 Mobile/15E148 Safari/604.1', '197.211.61.136', '2024-04-12 11:27:19'),
(47, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '197.211.58.120', '2024-04-12 11:29:41'),
(48, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 OPR/107.0.0.0', '77.111.246.43', '2024-04-12 11:33:25'),
(49, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '129.205.113.176', '2024-04-12 11:38:55'),
(50, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.113.102.212', '2024-04-12 11:39:50'),
(51, '1202201822', 'Mozilla/5.0 (Linux; Android 12; TECNO KI5k) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', '129.205.124.177', '2024-04-12 11:39:55'),
(52, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '102.90.43.50', '2024-04-12 11:47:01'),
(53, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '197.210.226.131', '2024-04-12 11:59:56'),
(54, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '197.210.226.131', '2024-04-12 12:01:11'),
(55, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.160.100.55', '2024-04-12 12:02:03'),
(56, '1202201822', 'Mozilla/5.0 (Linux; Android 10; TECNO KE5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.99 Mobile Safari/537.36', '154.16.192.80', '2024-04-12 12:11:45'),
(57, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/105.0.5195.129 Mobile/15E148 Safari/604.1', '197.211.61.141', '2024-04-12 12:15:03'),
(58, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '102.135.200.174', '2024-04-12 12:15:16'),
(59, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '102.22.222.45', '2024-04-12 12:29:28'),
(60, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '102.22.222.45', '2024-04-12 12:29:33'),
(61, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '102.22.222.45', '2024-04-12 12:29:40'),
(62, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '102.22.222.45', '2024-04-12 12:29:45'),
(63, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.90.44.40', '2024-04-12 12:30:02'),
(64, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '105.112.221.96', '2024-04-12 12:38:23'),
(65, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Safari/605.1.15', '105.113.71.69', '2024-04-12 12:53:52'),
(66, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '105.113.71.69', '2024-04-12 13:01:10'),
(67, '1202201822', 'Mozilla/5.0 (Linux; Android 7.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Mobile Safari/537.36', '105.112.117.61', '2024-04-12 13:05:51'),
(68, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '102.90.65.104', '2024-04-12 13:07:49'),
(69, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.78.73', '2024-04-12 13:08:52'),
(70, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Safari/605.1.15', '105.113.71.69', '2024-04-12 13:16:46'),
(71, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.90.57.148', '2024-04-12 13:25:59'),
(72, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '129.205.124.180', '2024-04-12 13:35:41'),
(73, '1202201822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '102.90.66.232', '2024-04-12 13:37:51'),
(74, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '102.89.43.126', '2024-04-12 13:39:35'),
(75, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/24.0 Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.55.135', '2024-04-12 13:42:08'),
(76, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', '197.210.85.249', '2024-04-12 13:44:31'),
(77, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '105.113.89.86', '2024-04-12 13:55:04'),
(78, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', '155.94.216.9', '2024-04-12 13:58:04'),
(79, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) EdgiOS/117.0.2045.33 Version/16.0 Mobile/15E148 Safari/604.1', '102.90.64.252', '2024-04-12 14:01:07'),
(80, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '197.211.58.112', '2024-04-12 14:01:37'),
(81, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '104.28.87.70', '2024-04-12 14:02:42'),
(82, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.112.190.10', '2024-04-12 14:25:49'),
(83, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.89.47.69', '2024-04-12 14:28:31'),
(84, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', '105.112.217.69', '2024-04-12 14:52:03'),
(85, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '173.239.204.62', '2024-04-12 14:57:07'),
(86, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.227.0', '2024-04-12 15:00:55'),
(87, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.227.0', '2024-04-12 15:01:00'),
(88, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.227.0', '2024-04-12 15:01:07'),
(89, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '197.210.54.39', '2024-04-12 15:01:12'),
(90, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 OPR/107.0.0.0', '41.217.85.61', '2024-04-12 15:15:57'),
(91, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '102.90.65.121', '2024-04-12 15:22:55'),
(92, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '102.90.42.243', '2024-04-12 16:05:17'),
(93, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '197.210.79.14', '2024-04-12 16:06:42'),
(94, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Mobile/15E148 Safari/604.1', '102.176.94.123', '2024-04-12 16:13:03'),
(95, '1202201822', 'Mozilla/5.0 (Linux; Android 10; Infinix X657B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '105.113.13.63', '2024-04-12 16:19:40'),
(96, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.91.52.91', '2024-04-12 16:24:03'),
(97, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.160.100.66', '2024-04-12 16:35:47'),
(98, '1202201822', 'Mozilla/5.0 (Android 13; Mobile; rv:123.0) Gecko/123.0 Firefox/123.0', '102.91.47.154', '2024-04-12 16:43:37'),
(99, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '102.89.34.77', '2024-04-12 16:43:55'),
(100, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '197.211.59.154', '2024-04-12 16:48:13'),
(101, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '102.89.22.200', '2024-04-12 16:52:13'),
(102, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '129.205.124.179', '2024-04-12 17:01:30'),
(103, '1202201822', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '105.112.210.49', '2024-04-12 17:03:56'),
(104, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', '102.90.66.27', '2024-04-12 17:35:40'),
(105, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.55.141', '2024-04-12 17:50:28'),
(106, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', '102.90.65.133', '2024-04-12 17:54:22'),
(107, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '41.113.98.200', '2024-04-12 17:54:26'),
(108, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '41.113.98.200', '2024-04-12 18:18:00'),
(109, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.88.63.42', '2024-04-12 18:54:15'),
(110, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.79.97', '2024-04-12 20:07:36'),
(111, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.71.250', '2024-04-12 21:13:21'),
(112, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '41.190.2.136', '2024-04-12 21:28:02'),
(113, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '41.190.2.136', '2024-04-12 21:29:01'),
(114, '1202201822', 'Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0', '197.211.61.136', '2024-04-12 23:13:15'),
(115, '1202201822', 'Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0', '197.211.61.136', '2024-04-13 01:13:53'),
(116, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '102.215.57.157', '2024-04-13 03:03:28'),
(117, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.211.53.1', '2024-04-13 03:06:57'),
(118, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '146.70.99.210', '2024-04-13 03:21:32'),
(119, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '102.90.66.231', '2024-04-13 03:53:10'),
(120, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '197.210.54.138', '2024-04-13 05:16:35'),
(121, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '197.210.55.70', '2024-04-13 05:39:32'),
(122, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '197.211.61.137', '2024-04-13 06:38:19'),
(123, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '84.239.27.9', '2024-04-13 06:40:02'),
(124, '1202292871', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', '105.120.129.41', '2024-04-13 06:43:21'),
(125, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '197.210.70.18', '2024-04-13 06:44:39'),
(126, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 OPR/108.0.0.0', '156.67.94.11', '2024-04-13 06:45:17'),
(127, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '137.184.199.252', '2024-04-13 07:02:52'),
(128, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '105.112.181.23', '2024-04-13 07:46:07'),
(129, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '105.116.6.60', '2024-04-13 07:46:52'),
(130, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '105.112.220.197', '2024-04-13 08:02:36'),
(131, '1202201822', 'Mozilla/5.0 (Linux; U; Android 12; Infinix X669D Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/123.0.6312.42 Mobile Safari/537.36 OPR/78.0.2254.70362', '185.26.180.199', '2024-04-13 08:07:12'),
(132, '1202201822', 'Mozilla/5.0 (Linux; U; Android 12; Infinix X669D Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/123.0.6312.42 Mobile Safari/537.36 OPR/78.0.2254.70362', '185.26.180.199', '2024-04-13 08:07:17'),
(133, '1202201822', 'Mozilla/5.0 (Linux; U; Android 12; Infinix X669D Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/123.0.6312.42 Mobile Safari/537.36 OPR/78.0.2254.70362', '185.26.180.199', '2024-04-13 08:07:23'),
(134, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '102.91.55.8', '2024-04-13 08:07:31'),
(135, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '102.89.40.223', '2024-04-13 08:12:44'),
(136, '1202201822', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '102.89.22.44', '2024-04-13 08:17:01'),
(137, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '102.88.43.14', '2024-04-13 08:22:07'),
(138, '1202311551', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '102.89.22.17', '2024-04-13 08:23:29'),
(139, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', '212.108.136.207', '2024-04-13 08:48:47'),
(140, '1202249764', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '107.170.44.29', '2024-04-13 09:06:38'),
(141, '1202249764', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '107.170.44.29', '2024-04-13 09:12:29'),
(142, '1202249764', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '107.170.44.29', '2024-04-13 09:16:09'),
(143, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.203.13.93', '2024-04-13 09:55:22'),
(144, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '105.112.217.0', '2024-04-13 11:39:59'),
(145, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '105.113.104.88', '2024-04-13 11:43:49'),
(146, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.203.13.93', '2024-04-13 13:05:28'),
(147, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '46.252.103.196', '2024-04-13 14:08:55'),
(148, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '46.252.103.196', '2024-04-13 14:19:11'),
(149, '1202130989', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', '197.210.77.133', '2024-04-13 15:00:47'),
(150, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '105.112.211.36', '2024-04-13 15:25:40'),
(151, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/122.0.6261.89 Mobile/15E148 Safari/604.1', '105.113.88.91', '2024-04-13 16:17:53'),
(152, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', '154.161.13.227', '2024-04-13 18:55:27'),
(153, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', '154.161.13.227', '2024-04-13 18:55:32'),
(154, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '197.210.70.104', '2024-04-13 19:51:24'),
(155, '1202201822', 'Mozilla/5.0 (Linux; Android 10; TECNO KD7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.74 Mobile Safari/537.36', '197.211.61.139', '2024-04-13 20:02:04'),
(156, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.203.13.93', '2024-04-13 20:15:58'),
(157, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '102.91.5.232', '2024-04-13 20:23:42'),
(158, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '206.189.115.99', '2024-04-13 21:28:47'),
(159, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '102.89.40.113', '2024-04-13 22:24:07'),
(160, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.203.13.57', '2024-04-13 22:38:55'),
(161, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '105.112.214.61', '2024-04-13 22:43:35'),
(162, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', '105.112.120.145', '2024-04-13 23:46:55'),
(163, '1202201822', 'Mozilla/5.0 (Linux; Android 10; Infinix X657B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '105.113.28.205', '2024-04-13 23:57:54'),
(164, '1202201822', 'Mozilla/5.0 (Linux; Android 10; Infinix X657B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', '105.113.28.205', '2024-04-14 02:14:51'),
(165, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '206.189.115.99', '2024-04-14 04:14:06'),
(166, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.85.33', '2024-04-14 04:55:22'),
(167, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.112.204.120', '2024-04-14 05:07:29'),
(168, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.112.204.120', '2024-04-14 05:10:29'),
(169, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '105.113.71.238', '2024-04-14 07:58:51'),
(170, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '105.112.104.251', '2024-04-14 08:21:54'),
(171, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '102.90.58.67', '2024-04-14 08:33:18'),
(172, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', '154.120.118.61', '2024-04-14 08:48:37'),
(173, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1', '102.90.45.112', '2024-04-14 08:59:16'),
(174, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.78.88', '2024-04-14 09:05:39'),
(175, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36 EdgA/123.0.0.0', '41.217.79.37', '2024-04-14 10:19:40'),
(176, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '102.90.64.209', '2024-04-14 11:00:07'),
(177, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', '102.90.64.209', '2024-04-14 11:00:17'),
(178, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '102.90.64.10', '2024-04-14 11:12:32'),
(179, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '162.243.219.23', '2024-04-14 12:21:44'),
(180, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.112.26.100', '2024-04-14 14:32:50'),
(181, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '102.215.57.125', '2024-04-14 15:21:52'),
(182, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '197.210.55.154', '2024-04-14 16:24:32'),
(183, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '102.88.64.154', '2024-04-14 16:54:35'),
(184, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '129.205.113.169', '2024-04-14 17:05:34'),
(185, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '129.205.113.169', '2024-04-14 17:08:36'),
(186, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.2 Mobile/15E148 Safari/604.1', '197.210.55.175', '2024-04-14 17:19:14'),
(187, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.2 Mobile/15E148 Safari/604.1', '197.210.55.175', '2024-04-14 17:19:24'),
(188, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.203.13.64', '2024-04-14 17:41:06'),
(189, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '102.90.64.247', '2024-04-14 19:02:59'),
(190, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Mobile/15E148 Safari/604.1', '197.210.84.54', '2024-04-14 19:04:30'),
(191, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '105.120.132.155', '2024-04-14 21:52:16'),
(192, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '80.244.29.178', '2024-04-14 23:01:14'),
(193, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1', '102.88.85.166', '2024-04-14 23:03:10'),
(194, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '41.80.113.152', '2024-04-15 08:15:16'),
(195, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '193.203.13.64', '2024-04-15 09:39:35'),
(196, '1202201822', 'Mozilla/5.0 (Linux; Android 11; TECNO KF7j) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Mobile Safari/537.36', '105.112.116.82', '2024-04-15 09:51:03'),
(197, '1202201822', 'Mozilla/5.0 (Linux; Android 11; TECNO KF7j) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Mobile Safari/537.36', '105.112.116.82', '2024-04-15 10:14:06'),
(198, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '194.116.208.180', '2024-04-15 11:20:11'),
(199, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '197.211.58.215', '2024-04-15 12:26:30'),
(200, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', '197.210.78.167', '2024-04-15 13:32:21'),
(201, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.79.161', '2024-04-15 13:48:13'),
(202, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '105.112.188.52', '2024-04-15 15:46:38'),
(203, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '105.120.130.147', '2024-04-15 15:49:34'),
(204, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/24.0 Chrome/117.0.0.0 Mobile Safari/537.36', '105.113.61.51', '2024-04-15 16:12:46'),
(205, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', '102.89.46.125', '2024-04-15 16:15:54'),
(206, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1', '105.113.94.65', '2024-04-15 16:26:00'),
(207, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1', '105.113.94.65', '2024-04-15 16:26:06'),
(208, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', '197.210.79.191', '2024-04-15 16:26:49'),
(209, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '102.130.54.140', '2024-04-15 18:08:00'),
(210, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', '102.89.46.12', '2024-04-15 18:10:08'),
(211, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.226.140', '2024-04-15 19:53:11'),
(212, '1202201822', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', '102.89.42.37', '2024-04-15 21:24:45'),
(213, '1202294834', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.120.131.67', '2024-04-15 21:51:33'),
(214, '1202201822', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '105.113.17.41', '2024-04-16 05:54:17'),
(215, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '197.210.54.53', '2024-04-16 07:39:04'),
(216, '1202201822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '105.112.103.173', '2024-04-16 07:44:03'),
(217, '1202888917', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '102.90.100.112', '2025-04-02 12:44:00'),
(218, '1202888917', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '102.90.100.112', '2025-04-02 13:22:35'),
(219, '1202888917', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '102.90.100.112', '2025-04-02 13:27:40'),
(220, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.100.112', '2025-04-02 13:28:37'),
(221, '1202888917', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.103.175', '2025-04-02 13:31:42'),
(222, '1202888917', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.54.242', '2025-04-02 18:38:05'),
(223, '1202888917', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.54.242', '2025-04-02 18:43:08'),
(224, '1202888917', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.54.242', '2025-04-02 18:43:16'),
(225, '1202888917', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.54.242', '2025-04-02 18:48:18'),
(226, '1202888917', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.84.16', '2025-04-02 18:53:22'),
(227, '1202888917', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.84.16', '2025-04-02 18:58:24'),
(228, '1202888917', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.54.242', '2025-04-02 18:58:29'),
(229, '1202888917', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.54.242', '2025-04-02 18:58:33'),
(230, '1202888917', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '197.210.54.242', '2025-04-02 19:03:36'),
(231, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.96.51', '2025-04-04 18:42:16'),
(232, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.96.51', '2025-04-04 18:45:00'),
(233, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.96.51', '2025-04-04 18:47:19'),
(234, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.96.51', '2025-04-04 18:49:00'),
(235, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.96.51', '2025-04-05 03:31:27'),
(236, '1202137746', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.45.111', '2025-04-05 04:27:37'),
(237, '1202137746', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.45.111', '2025-04-05 04:29:19'),
(238, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.100.236', '2025-04-05 11:17:10'),
(239, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.100.236', '2025-04-05 11:53:53'),
(240, '1202888917', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '102.90.100.236', '2025-04-05 12:01:40'),
(241, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.100.236', '2025-04-05 12:04:00'),
(242, '1202137746', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.91.4.232', '2025-04-05 14:28:03'),
(243, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 16:27:04'),
(244, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 16:43:42'),
(245, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 16:44:26'),
(246, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 16:49:40'),
(247, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 16:54:01'),
(248, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 16:54:12'),
(249, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.100.236', '2025-04-05 16:57:20'),
(250, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 16:58:05'),
(251, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 16:58:23'),
(252, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 16:58:35'),
(253, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.100.236', '2025-04-05 17:01:39'),
(254, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:02:24'),
(255, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:02:45'),
(256, '1202888917', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '197.211.63.52', '2025-04-05 17:03:35'),
(257, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:06:46'),
(258, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:07:26'),
(259, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:11:50'),
(260, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:16:12'),
(261, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:20:34'),
(262, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:24:56'),
(263, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.100.236', '2025-04-05 17:29:12'),
(264, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:29:18'),
(265, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:33:40'),
(266, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:38:02'),
(267, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:42:25'),
(268, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:43:42'),
(269, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:46:47'),
(270, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:51:09'),
(271, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 17:55:31');
INSERT INTO `audit_logs` (`id`, `internetid`, `device`, `ipAddress`, `datenow`) VALUES
(272, '1202888917', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '105.112.209.49', '2025-04-05 18:01:22'),
(273, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.132.194', '2025-04-05 21:30:12'),
(274, '1202888917', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '105.112.100.240', '2025-04-05 22:14:07'),
(275, '1202888917', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '105.112.100.240', '2025-04-05 22:42:16'),
(276, '1202888917', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '105.112.100.240', '2025-04-05 22:47:02'),
(277, '1202888917', 'Mozilla/5.0 (Linux; Android 13; en; itel S681LN Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.129 HiBrowser/v2.23.1.4 UWS/ Mobile Safari/537.36', '105.112.215.198', '2025-04-06 01:00:45'),
(278, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.128.192', '2025-04-06 01:05:07'),
(279, '1202888917', 'Mozilla/5.0 (Linux; Android 13; en; itel S681LN Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.129 HiBrowser/v2.23.1.4 UWS/ Mobile Safari/537.36', '105.112.215.198', '2025-04-06 01:12:37'),
(280, '1202888917', 'Mozilla/5.0 (Linux; Android 13; en; itel S681LN Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.129 HiBrowser/v2.23.1.4 UWS/ Mobile Safari/537.36', '105.112.215.198', '2025-04-06 01:12:58'),
(281, '1202888917', 'Mozilla/5.0 (Linux; Android 13; en; itel S681LN Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.129 HiBrowser/v2.23.1.4 UWS/ Mobile Safari/537.36', '105.112.215.198', '2025-04-06 01:13:23'),
(282, '1202888917', 'Mozilla/5.0 (Linux; Android 13; en; itel S681LN Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.129 HiBrowser/v2.23.1.4 UWS/ Mobile Safari/537.36', '105.112.215.198', '2025-04-06 01:13:45'),
(283, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.128.192', '2025-04-06 01:18:31'),
(284, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.128.192', '2025-04-06 01:21:42'),
(285, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.128.192', '2025-04-06 01:36:01'),
(286, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.128.192', '2025-04-06 01:37:34'),
(287, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.102.69', '2025-04-06 01:45:36'),
(288, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.128.145', '2025-04-06 02:07:25'),
(289, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '5.62.43.189', '2025-04-06 02:09:43'),
(290, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.102.69', '2025-04-06 02:44:33'),
(291, '1202342681', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.128.145', '2025-04-06 03:04:57'),
(292, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '197.210.85.169', '2025-04-06 11:00:09'),
(293, '1202888917', 'Mozilla/5.0 (Linux; Android 13; en; itel S681LN Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.129 HiBrowser/v2.23.1.4 UWS/ Mobile Safari/537.36', '105.120.130.183', '2025-04-07 01:00:14'),
(294, '1202888917', 'Mozilla/5.0 (Linux; Android 13; en; itel S681LN Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.129 HiBrowser/v2.23.1.4 UWS/ Mobile Safari/537.36', '105.120.130.183', '2025-04-07 01:08:52'),
(295, '1202962256', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.135.82', '2025-04-07 03:22:50'),
(296, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.135.82', '2025-04-07 03:31:15'),
(297, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.135.82', '2025-04-07 03:39:50'),
(298, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.135.82', '2025-04-07 03:42:43'),
(299, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.135.82', '2025-04-07 03:49:00'),
(300, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.90.97.249', '2025-04-07 11:10:51'),
(301, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 11:39:29'),
(302, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 11:59:07'),
(303, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 12:02:52'),
(304, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 12:06:26'),
(305, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 12:09:16'),
(306, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 12:11:33'),
(307, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 18:39:47'),
(308, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 18:43:43'),
(309, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 18:44:45'),
(310, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 18:46:00'),
(311, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 18:48:26'),
(312, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 18:53:05'),
(313, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '197.211.63.114', '2025-04-07 18:54:15'),
(314, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '197.211.63.114', '2025-04-07 18:54:15'),
(315, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 18:55:50'),
(316, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '197.211.63.114', '2025-04-07 18:56:57'),
(317, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '197.211.63.114', '2025-04-07 19:02:18'),
(318, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.133.27', '2025-04-07 20:06:28'),
(319, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '197.211.63.114', '2025-04-07 20:30:18'),
(320, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '197.211.63.114', '2025-04-07 20:33:47'),
(321, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '197.211.63.114', '2025-04-07 20:37:27'),
(322, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.136.8', '2025-04-08 22:37:39'),
(323, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.135.127', '2025-04-09 05:20:06'),
(324, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.131.58', '2025-04-09 23:07:04'),
(325, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.131.58', '2025-04-09 23:08:26'),
(326, '1202237469', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/135.0.7049.83 Mobile/15E148 Safari/604.1', '37.65.131.53', '2025-04-18 23:38:56'),
(327, '1202237469', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/135.0.7049.83 Mobile/15E148 Safari/604.1', '37.65.131.53', '2025-04-19 00:06:29'),
(328, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.134.127', '2025-04-19 00:08:24'),
(329, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.134.127', '2025-04-19 00:09:50'),
(330, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.134.127', '2025-04-19 00:26:01'),
(331, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.134.127', '2025-04-19 00:27:17'),
(332, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.134.127', '2025-04-19 00:28:07'),
(333, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.134.127', '2025-04-19 00:30:24'),
(334, '1202237469', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/135.0.7049.83 Mobile/15E148 Safari/604.1', '37.65.131.53', '2025-04-19 00:36:34'),
(335, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.134.51', '2025-04-20 20:42:29'),
(336, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.134.51', '2025-04-20 21:57:37'),
(337, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.134.51', '2025-04-20 21:58:33'),
(338, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.134.51', '2025-04-20 22:02:01'),
(339, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.134.51', '2025-04-20 22:03:20'),
(340, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '105.120.134.51', '2025-04-20 22:04:17'),
(341, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.134.51', '2025-04-20 22:04:26'),
(342, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.134.51', '2025-04-20 22:04:26'),
(343, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.134.51', '2025-04-20 22:06:31'),
(344, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.134.51', '2025-04-20 22:06:32'),
(345, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.131.36', '2025-04-21 12:57:09'),
(346, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.131.36', '2025-04-21 12:57:11'),
(347, '1202240901', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.131.36', '2025-04-21 13:08:04'),
(348, '1202240901', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.131.36', '2025-04-21 13:09:40'),
(349, '1202888917', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '197.211.63.27', '2025-04-22 11:47:18'),
(350, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '174.210.162.19', '2025-04-24 06:18:56'),
(351, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '102.90.99.115', '2025-04-24 07:14:15'),
(352, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '174.210.162.19', '2025-04-24 07:15:53'),
(353, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '174.210.162.19', '2025-04-24 07:24:27'),
(354, '1202240901', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '197.210.84.150', '2025-04-24 07:26:36'),
(355, '1202240901', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '197.210.84.150', '2025-04-24 07:26:36'),
(356, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '197.211.63.110', '2025-05-09 08:37:11'),
(357, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.99.183', '2025-05-10 00:58:56'),
(358, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.99.183', '2025-05-10 00:58:57'),
(359, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.99.183', '2025-05-10 01:47:57'),
(360, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.99.183', '2025-05-10 01:47:59'),
(361, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.99.183', '2025-05-10 01:52:01'),
(362, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.99.183', '2025-05-10 01:52:38'),
(363, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.99.183', '2025-05-10 01:52:53'),
(364, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.99.183', '2025-05-10 02:10:22'),
(365, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.99.183', '2025-05-10 02:40:44'),
(366, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.99.183', '2025-05-10 09:52:34'),
(367, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.102.100', '2025-05-10 12:06:23'),
(368, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.102.100', '2025-05-10 18:40:58'),
(369, '1202235443', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Mobile/15E148 Safari/604.1', '24.252.50.178', '2025-05-11 02:53:33'),
(370, '1202235443', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '102.90.103.146', '2025-05-11 02:56:13'),
(371, '1202124851', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '105.113.12.250', '2025-05-19 22:11:40'),
(372, '1202124851', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '104.223.102.51', '2025-05-19 23:56:19'),
(373, '1202124851', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.113.35.139', '2025-05-20 00:18:42'),
(374, '1202124851', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.130.157', '2025-05-20 13:33:54'),
(375, '1202124851', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.130.157', '2025-05-20 13:34:51'),
(376, '1202124851', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Mobile/15E148 Safari/604.1', '102.90.97.247', '2025-05-20 13:43:42'),
(377, '1202888917', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Mobile/15E148 Safari/604.1', '102.90.97.247', '2025-05-20 14:07:58'),
(378, '1202888917', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '197.211.63.173', '2025-05-20 14:21:17'),
(379, '1202124851', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '155.94.247.248', '2025-05-21 01:47:43'),
(380, '1202124851', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '102.90.81.135', '2025-05-21 03:30:21'),
(381, '1202124851', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '5.62.43.204', '2025-05-21 03:34:54'),
(382, '1202124851', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '5.62.43.204', '2025-05-21 03:36:23'),
(383, '1202124851', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '5.62.43.204', '2025-05-21 03:45:08'),
(384, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.132.238', '2025-05-21 05:29:54'),
(385, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.113.33.217', '2025-05-21 07:24:51'),
(386, '1202252424', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '223.185.22.254', '2025-05-21 16:21:40'),
(387, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.113.33.217', '2025-05-21 17:25:20'),
(388, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.113.33.217', '2025-05-21 17:25:23'),
(389, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.132.173', '2025-05-21 17:49:40'),
(390, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.132.173', '2025-05-21 17:51:52'),
(391, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '105.120.132.173', '2025-05-21 17:54:44'),
(392, '1202209176', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '159.242.227.158', '2025-05-21 19:04:15'),
(393, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '105.120.131.64', '2025-05-26 13:55:34'),
(394, '1202237469', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '105.120.136.178', '2025-05-28 02:44:12'),
(395, '1202972400', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '102.88.112.170', '2025-06-20 20:01:59'),
(396, '1202744358', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:43.0) Gecko/20100101 Firefox/43.0', '105.120.132.174', '2025-09-20 15:42:52'),
(397, '1202744358', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:43.0) Gecko/20100101 Firefox/43.0', '105.113.35.252', '2025-09-21 00:35:41'),
(398, '1202744358', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '105.113.35.252', '2025-09-21 00:54:01'),
(399, '1202223127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', '105.113.35.252', '2025-09-21 01:03:07'),
(400, '1202302067', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '105.116.10.188', '2025-09-21 17:24:29'),
(401, '1202362658', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '105.116.10.188', '2025-09-21 17:34:04'),
(402, '1202362658', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '102.91.5.51', '2025-09-21 17:38:06'),
(403, '1202362658', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '195.78.54.103', '2025-09-21 18:11:36'),
(404, '1202362658', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '195.78.54.103', '2025-09-21 18:31:12'),
(405, '1202362658', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '195.78.54.103', '2025-09-21 19:00:58'),
(406, '1202273287', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '151.240.205.41', '2025-09-21 19:34:43'),
(407, '1202273287', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '151.240.205.41', '2025-09-21 19:36:51'),
(408, '1202273287', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '151.240.205.41', '2025-09-21 19:39:12'),
(409, '1202273287', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '151.240.205.41', '2025-09-21 20:01:59'),
(410, '1202273287', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '151.240.205.41', '2025-09-21 20:01:59'),
(411, '1202273287', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '195.78.54.103', '2025-09-21 20:06:56'),
(412, '1202273287', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '195.78.54.103', '2025-09-21 20:10:04'),
(413, '1202273287', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '195.78.54.103', '2025-09-21 20:13:22'),
(414, '1202273287', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '195.78.54.103', '2025-09-21 20:13:25'),
(415, '1202273287', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '151.240.205.41', '2025-09-22 03:22:20'),
(416, '1202273287', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '151.240.205.41', '2025-09-22 03:52:31'),
(417, '1202288777', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '105.116.11.23', '2025-09-25 04:46:38'),
(418, '1202288777', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '105.116.11.23', '2025-09-25 04:54:52'),
(419, '1202324427', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '105.116.10.22', '2025-09-25 06:02:43'),
(420, '1202187436', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', '105.116.10.22', '2025-09-25 06:13:05'),
(421, '1202187436', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '37.19.198.31', '2025-09-25 06:23:14'),
(422, '1202277776', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '203.188.164.46', '2025-09-25 06:30:55'),
(423, '1202201405', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '37.19.198.139', '2025-09-25 06:47:51'),
(424, '1202201405', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '37.19.198.139', '2025-09-25 06:52:40'),
(425, '1202259353', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '37.19.198.132', '2025-09-25 06:57:14'),
(426, '1202259353', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '37.19.198.132', '2025-09-25 07:00:19'),
(427, '1202259353', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '37.19.198.132', '2025-09-25 07:03:44'),
(428, '1202257088', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '191.96.150.114', '2025-09-25 07:06:37'),
(429, '1202201405', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '37.19.198.139', '2025-09-25 07:08:23'),
(430, '1202288777', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '105.116.10.22', '2025-09-25 07:09:11'),
(431, '1202273287', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '151.240.205.41', '2025-09-25 07:10:55'),
(432, '1202115383', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '151.240.205.74', '2025-09-25 07:12:49'),
(433, '1202115383', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '151.240.205.74', '2025-09-25 07:27:27'),
(434, '1202288777', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '203.188.164.24', '2025-09-25 07:33:26'),
(435, '1202221627', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '203.188.164.24', '2025-09-25 07:34:24'),
(436, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '151.240.205.41', '2025-09-25 07:40:47'),
(437, '1202221627', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '203.188.164.24', '2025-09-25 07:46:01'),
(438, '1202257088', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '191.96.150.114', '2025-09-25 07:48:46'),
(439, '1202221627', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '203.188.164.24', '2025-09-25 07:50:19'),
(440, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '203.188.164.24', '2025-09-25 08:01:41'),
(441, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '105.113.40.212', '2025-09-29 04:38:46'),
(442, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '105.113.40.212', '2025-09-29 05:09:02'),
(443, '1202174285', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '212.102.35.57', '2025-09-29 05:34:30'),
(444, '1202174285', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '212.102.35.57', '2025-09-29 05:52:23'),
(445, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '172.58.135.101', '2025-09-29 05:53:11'),
(446, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '172.58.135.39', '2025-09-29 05:59:41'),
(447, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '172.58.135.39', '2025-09-29 06:07:38'),
(448, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '172.58.134.153', '2025-09-29 06:12:03'),
(449, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '172.58.134.153', '2025-09-29 06:14:49'),
(450, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '172.58.134.163', '2025-09-29 06:20:05'),
(451, '1202174285', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '212.102.35.57', '2025-09-29 06:42:45'),
(452, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '172.58.134.209', '2025-09-29 07:37:47'),
(453, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '172.58.134.209', '2025-09-29 07:45:48'),
(454, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '172.58.134.255', '2025-09-29 08:06:36'),
(455, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '172.58.134.255', '2025-09-29 08:07:31'),
(456, '1202174285', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '158.173.21.222', '2025-10-06 14:34:05'),
(457, '1202174285', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', '107.127.28.9', '2025-10-06 16:15:21'),
(458, '1202174285', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', '107.127.28.9', '2025-10-06 16:32:29'),
(459, '1202174285', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.1 Mobile/15E148 Safari/604.1', '102.90.116.207', '2025-10-09 19:51:23'),
(460, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '98.239.2.83', '2025-10-09 20:49:13'),
(461, '1202174285', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '98.239.2.83', '2025-10-09 21:13:30'),
(462, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '191.96.227.28', '2025-10-11 19:26:32'),
(463, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '172.2.76.57', '2025-10-11 19:33:10'),
(464, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '172.2.76.57', '2025-10-11 20:05:32'),
(465, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '172.2.76.57', '2025-10-11 20:10:31'),
(466, '1202128507', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', '72.158.132.72', '2025-10-16 16:04:23'),
(467, '1202128507', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', '216.103.158.62', '2025-10-16 17:45:12'),
(468, '1202128507', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', '216.103.158.62', '2025-10-16 18:16:42'),
(469, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '191.96.150.120', '2025-10-18 04:32:56'),
(470, '1202259353', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '172.10.127.188', '2025-10-20 23:40:02'),
(471, '1202259353', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', '172.10.127.188', '2025-10-21 00:28:43'),
(472, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '191.96.150.120', '2025-10-23 17:21:50'),
(473, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 18:43:59'),
(474, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 18:45:19'),
(475, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 18:46:36'),
(476, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 18:47:40'),
(477, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 18:52:34'),
(478, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 18:55:40'),
(479, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 19:02:32'),
(480, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 19:12:23'),
(481, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 19:18:53'),
(482, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 19:24:54'),
(483, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 20:56:38'),
(484, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 21:21:30'),
(485, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 21:37:41'),
(486, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 21:42:13'),
(487, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 21:44:17'),
(488, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 21:44:56'),
(489, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 21:47:22'),
(490, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 21:48:32'),
(491, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 22:02:09'),
(492, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 22:02:16'),
(493, '1202112458', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '71.76.126.72', '2025-10-23 22:04:53'),
(494, '1202187436', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', '174.225.176.48', '2025-10-25 19:57:33'),
(495, '1202187436', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', '174.225.176.48', '2025-10-25 20:32:03'),
(496, '1202201405', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '172.58.51.254', '2025-11-07 21:42:33'),
(497, '1202201405', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '172.58.51.254', '2025-11-07 21:46:12'),
(498, '1202201405', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '172.58.51.254', '2025-11-07 21:52:55'),
(499, '1202201405', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '172.58.51.254', '2025-11-07 22:12:28'),
(500, '1202277776', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '172.56.227.150', '2025-11-15 05:12:46'),
(501, '1202277776', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '71.45.70.195', '2025-11-15 05:14:43'),
(502, '1202277776', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '71.45.70.195', '2025-11-15 05:19:28'),
(503, '1202277776', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '71.45.70.195', '2025-11-15 05:39:57'),
(504, '1202277776', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '71.45.70.195', '2025-11-15 05:45:09'),
(505, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1 Ddg/26.1', '76.97.65.199', '2025-11-21 07:37:53'),
(506, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1 Ddg/26.1', '76.97.65.199', '2025-11-21 07:44:24'),
(507, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1 Ddg/26.1', '76.97.65.199', '2025-11-21 08:01:26'),
(508, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1 Ddg/26.1', '76.97.65.199', '2025-11-21 08:25:50'),
(509, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.72', '2025-11-23 19:31:24'),
(510, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.72', '2025-11-23 19:36:11'),
(511, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.73', '2025-11-23 19:40:46'),
(512, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.73', '2025-11-23 19:41:39'),
(513, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.73', '2025-11-23 19:43:00'),
(514, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.73', '2025-11-23 19:45:11'),
(515, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.73', '2025-11-23 19:46:40'),
(516, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.73', '2025-11-23 19:47:59'),
(517, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.72', '2025-11-23 19:53:22'),
(518, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.72', '2025-11-23 19:54:02'),
(519, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.73', '2025-11-23 19:56:07'),
(520, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.72', '2025-11-23 20:01:11'),
(521, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '146.75.223.73', '2025-11-23 20:06:25'),
(522, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '104.28.79.153', '2025-11-23 20:15:34'),
(523, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '104.28.77.154', '2025-11-23 20:30:00'),
(524, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '104.28.77.154', '2025-11-23 20:31:19'),
(525, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '104.28.132.141', '2025-11-23 20:34:26'),
(526, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '104.28.132.135', '2025-11-23 20:37:03'),
(527, '1202259353', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1', '104.28.132.139', '2025-11-23 20:38:50'),
(528, '1202259353', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '8.227.219.246', '2025-11-29 05:45:58'),
(529, '1202259353', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '174.56.174.80', '2025-11-29 07:04:28'),
(530, '1202259353', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '174.56.174.80', '2025-11-29 07:13:00'),
(531, '1202201405', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', '146.75.234.48', '2025-11-30 05:59:06'),
(532, '1202201405', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', '146.75.234.48', '2025-11-30 06:01:22'),
(533, '1202257088', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '70.162.94.37', '2025-12-01 21:23:13'),
(534, '1202257088', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '70.162.94.37', '2025-12-01 21:28:18'),
(535, '1202257088', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '70.162.94.37', '2025-12-01 21:28:46'),
(536, '1202257088', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '70.162.94.37', '2025-12-01 21:38:22'),
(537, '1202257088', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '70.162.94.37', '2025-12-01 21:41:49'),
(538, '1202257088', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '70.162.94.37', '2025-12-01 21:43:06'),
(539, '1202257088', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '70.162.94.37', '2025-12-01 21:49:58'),
(540, '1202257088', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '70.162.94.37', '2025-12-01 22:08:43'),
(541, '1202257088', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '70.162.94.37', '2025-12-01 22:11:03'),
(542, '1202257088', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '70.162.94.37', '2025-12-01 22:46:03'),
(543, '1202259353', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '191.96.150.128', '2025-12-15 04:57:36'),
(544, '1202259353', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '191.96.150.128', '2025-12-15 05:01:23'),
(545, '1202154261', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '151.240.205.69', '2025-12-15 07:22:09');
INSERT INTO `audit_logs` (`id`, `internetid`, `device`, `ipAddress`, `datenow`) VALUES
(546, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '151.240.205.69', '2025-12-16 06:02:55'),
(547, '1202201405', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '72.83.68.182', '2025-12-18 04:52:09'),
(548, '1202201405', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '72.83.68.182', '2025-12-18 05:10:56'),
(549, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '151.240.205.69', '2025-12-21 17:06:24'),
(550, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '151.240.205.69', '2025-12-21 17:17:39'),
(551, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '105.116.3.125', '2025-12-23 03:15:15'),
(552, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '71.254.55.103', '2025-12-23 03:40:23'),
(553, '1202187436', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '172.59.71.126', '2026-01-02 21:18:15'),
(554, '1202187436', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '172.59.71.126', '2026-01-02 21:26:34'),
(555, '1202187436', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '172.59.71.126', '2026-01-02 21:39:36'),
(556, '1202187436', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '191.96.227.18', '2026-01-03 06:45:40'),
(557, '1202187436', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '172.59.68.254', '2026-01-03 07:26:02'),
(558, '1202187436', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '172.59.69.204', '2026-01-03 16:27:28'),
(559, '1202187436', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '172.59.69.204', '2026-01-03 16:28:38'),
(560, '1202187436', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '172.59.69.204', '2026-01-03 16:34:33'),
(561, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '151.240.205.29', '2026-01-17 07:06:15'),
(562, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '151.240.205.29', '2026-01-17 07:29:26'),
(563, '1202154261', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1', '76.228.213.196', '2026-01-17 21:45:55'),
(564, '1202154261', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1', '76.228.213.196', '2026-01-17 21:45:55'),
(565, '1202154261', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1', '76.228.213.196', '2026-01-17 21:45:56'),
(566, '1202154261', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1', '76.228.213.196', '2026-01-17 21:50:24'),
(567, '1202154261', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1', '76.228.213.196', '2026-01-17 21:56:05'),
(568, '1202154261', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1', '76.228.213.196', '2026-01-17 22:23:52'),
(569, '1202154261', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Mobile/15E148 Safari/604.1', '76.228.213.196', '2026-01-17 22:31:45'),
(570, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-06 22:21:43'),
(571, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-06 23:04:18'),
(572, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-06 23:44:04'),
(573, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-07 00:51:46'),
(574, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-07 02:53:06'),
(575, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-07 03:48:09'),
(576, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-07 06:22:37'),
(577, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-07 06:30:49'),
(578, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-07 06:37:35'),
(579, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-07 06:55:27'),
(580, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-07 06:56:13'),
(581, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-07 08:13:41'),
(582, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-07 08:38:53'),
(583, '1202225225', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.1 Mobile/15E148 Safari/604.1', '105.116.14.164', '2026-02-07 09:06:25'),
(584, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-08 03:50:54'),
(585, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', '166.205.190.104', '2026-02-08 05:17:57'),
(586, '1202944315', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '151.240.205.42', '2026-03-05 17:06:26'),
(587, '1202316451', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '151.240.205.45', '2026-03-05 17:28:04'),
(588, '1202944315', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '37.19.198.115', '2026-03-05 17:28:45'),
(589, '1202944315', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '37.19.198.115', '2026-03-05 17:34:52'),
(590, '1202944315', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '37.19.198.115', '2026-03-05 17:34:53'),
(591, '1202944315', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '37.19.198.115', '2026-03-05 17:34:54'),
(592, '1202944315', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '37.19.198.115', '2026-03-05 17:34:56'),
(593, '1202944315', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '37.19.198.115', '2026-03-05 17:34:56'),
(594, '1202944315', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '37.19.198.115', '2026-03-05 17:34:57'),
(595, '1202154261', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '47.13.108.65', '2026-03-12 05:46:08'),
(596, '1202154261', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '47.13.108.65', '2026-03-12 07:06:40'),
(597, '1202154261', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '47.13.108.65', '2026-03-12 07:30:26'),
(598, '1202154261', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '47.13.108.65', '2026-03-12 08:04:42'),
(599, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '105.116.7.157', '2026-03-12 18:20:35'),
(600, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '105.116.7.157', '2026-03-12 18:22:38'),
(601, '1202128507', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '191.96.227.126', '2026-03-13 02:58:38'),
(602, '1202351388', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '105.120.129.233', '2026-03-17 15:58:59'),
(603, '1202351388', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '105.120.129.233', '2026-03-17 16:02:27'),
(604, '1202257440', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_15 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.2 Mobile/15E148 Safari/604.1', '105.120.129.233', '2026-03-17 16:18:54'),
(605, '1202256627', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_15 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.2 Mobile/15E148 Safari/604.1', '105.120.129.233', '2026-03-17 17:02:05'),
(606, '1202246902', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', '105.120.129.233', '2026-03-17 17:06:25'),
(607, '1202181177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.8 Mobile/15E148 Safari/604.1', '105.120.129.233', '2026-03-17 17:29:59'),
(608, '1202181177', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '84.239.52.2', '2026-03-17 17:31:24'),
(609, '1202181177', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '84.239.52.2', '2026-03-17 17:34:21'),
(610, '1202319064', 'Mozilla/5.0 (Linux; Android 15; UX0Gpi0ogh; U; en) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.63 Mobile Safari/537.36', '102.90.96.239', '2026-03-17 17:37:27'),
(611, '1202181177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.8 Mobile/15E148 Safari/604.1', '105.120.129.233', '2026-03-17 17:37:55'),
(612, '1202319064', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/411.0.879111500 Mobile/15E148 Safari/604.1', '105.120.129.233', '2026-03-17 17:39:27'),
(613, '1202181177', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '102.90.100.81', '2026-03-17 17:41:34'),
(614, '1202181177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.8 Mobile/15E148 Safari/604.1', '105.120.129.233', '2026-03-17 17:44:15'),
(615, '1202319064', 'Mozilla/5.0 (Linux; Android 15; UX0Gpi0ogh; U; en) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.63 Mobile Safari/537.36', '102.90.96.239', '2026-03-17 17:45:22'),
(616, '1202227176', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0 Mobile/15E148 Safari/604.1', '84.239.16.68', '2026-03-17 17:54:33'),
(617, '1202227176', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0 Mobile/15E148 Safari/604.1', '84.239.16.55', '2026-03-17 17:57:12'),
(618, '1202181177', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '105.120.129.233', '2026-03-17 18:14:02'),
(619, '1202181177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.8 Mobile/15E148 Safari/604.1', '105.120.129.233', '2026-03-17 18:16:03'),
(620, '1202677518', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_15 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.2 Mobile/15E148 Safari/604.1', '105.120.129.233', '2026-03-17 20:59:55'),
(621, '1202257440', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_15 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.2 Mobile/15E148 Safari/604.1', '105.120.129.233', '2026-03-17 21:29:01'),
(622, '1202104512', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_15 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.2 Mobile/15E148 Safari/604.1', '105.120.129.233', '2026-03-17 23:58:58'),
(623, '1202227176', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Mobile/15E148 Safari/604.1', '102.90.96.242', '2026-03-18 00:13:33'),
(624, '1202227176', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0 Mobile/15E148 Safari/604.1', '105.120.128.98', '2026-03-18 00:15:28'),
(625, '1202351388', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/411.0.879111500 Mobile/15E148 Safari/604.1', '105.120.131.61', '2026-03-18 01:47:49'),
(626, '1202227176', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Mobile/15E148 Safari/604.1', '102.90.96.242', '2026-03-18 02:04:11'),
(627, '1202227176', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0 Mobile/15E148 Safari/604.1', '84.239.17.35', '2026-03-18 02:17:45'),
(628, '1202319064', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '105.113.36.156', '2026-03-18 18:17:00'),
(629, '1202319064', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '105.113.36.156', '2026-03-18 18:17:02'),
(630, '1202351388', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/411.0.879111500 Mobile/15E148 Safari/604.1', '105.113.36.156', '2026-03-18 18:21:11'),
(631, '1202351388', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/411.0.879111500 Mobile/15E148 Safari/604.1', '105.120.134.154', '2026-03-18 20:32:06'),
(632, '1202227176', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0 Mobile/15E148 Safari/604.1', '105.120.131.210', '2026-03-18 20:35:43'),
(633, '1202227176', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_0_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', '105.120.131.210', '2026-03-18 20:43:24'),
(634, '1202351388', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/148.2 Mobile/15E148 Safari/604.1', '89.247.162.222', '2026-03-18 20:54:04'),
(635, '1202351388', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/148.2 Mobile/15E148 Safari/604.1', '89.247.162.222', '2026-03-18 20:57:06'),
(636, '1202227176', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0 Mobile/15E148 Safari/604.1', '105.120.131.210', '2026-03-18 20:59:28'),
(637, '1202181177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.8 Mobile/15E148 Safari/604.1', '84.239.16.177', '2026-03-18 21:01:53'),
(638, '1202181177', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '105.120.134.154', '2026-03-18 21:02:11'),
(639, '1202257440', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_15 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.2 Mobile/15E148 Safari/604.1', '46.246.122.101', '2026-03-18 21:02:32'),
(640, '1202351388', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/411.0.879111500 Mobile/15E148 Safari/604.1', '105.120.134.153', '2026-03-18 21:02:38'),
(641, '1202256627', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '84.239.12.6', '2026-03-18 21:04:29'),
(642, '1202257440', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_15 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.2 Mobile/15E148 Safari/604.1', '46.246.122.101', '2026-03-18 21:05:46'),
(643, '1202181177', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '105.120.134.154', '2026-03-18 21:05:54'),
(644, '1202246902', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', '105.120.134.154', '2026-03-18 21:08:07'),
(645, '1202677518', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_15 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.2 Mobile/15E148 Safari/604.1', '46.246.122.101', '2026-03-18 21:08:11'),
(646, '1202257440', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '84.239.12.6', '2026-03-18 21:09:49'),
(647, '1202246902', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', '105.120.134.154', '2026-03-18 21:09:57'),
(648, '1202257440', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.120.134.154', '2026-03-18 21:14:09'),
(649, '1202181177', 'Mozilla/5.0 (Linux; Android 14; TECNO KL4 Build/UP1A.231005.007) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.7632.162 Mobile Safari/537.36', '105.120.134.154', '2026-03-18 21:14:34'),
(650, '1202181177', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '105.120.134.154', '2026-03-18 21:16:30'),
(651, '1202246902', 'Mozilla/5.0 (Linux; U; Android 10; Infinix X657 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/142.0.7444.171 Mobile Safari/537.36 OPR/99.0.2254.81922', '82.145.223.195', '2026-03-18 21:22:19'),
(652, '1202319064', 'Mozilla/5.0 (Linux; Android 15; aWKgaMOcRX; U; en) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.63 Mobile Safari/537.36', '102.90.103.59', '2026-03-18 23:52:50'),
(653, '1202319064', 'Mozilla/5.0 (Linux; Android 15; aWKgaMOcRX; U; en) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.63 Mobile Safari/537.36', '102.90.103.59', '2026-03-18 23:52:52'),
(654, '1202319064', 'Mozilla/5.0 (Linux; Android 15; aWKgaMOcRX; U; en) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.63 Mobile Safari/537.36', '102.90.103.59', '2026-03-18 23:52:54'),
(655, '1202319064', 'Mozilla/5.0 (Linux; Android 15; aWKgaMOcRX; U; en) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.63 Mobile Safari/537.36', '102.90.103.59', '2026-03-18 23:52:56'),
(656, '1202319064', 'Mozilla/5.0 (Linux; Android 15; aWKgaMOcRX; U; en) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.63 Mobile Safari/537.36', '102.90.103.59', '2026-03-18 23:53:19'),
(657, '1202319064', 'Mozilla/5.0 (Linux; Android 15; aWKgaMOcRX; U; en) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.63 Mobile Safari/537.36', '102.90.103.59', '2026-03-18 23:53:20'),
(658, '1202319064', 'Mozilla/5.0 (Linux; Android 15; aWKgaMOcRX; U; en) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.63 Mobile Safari/537.36', '102.90.103.59', '2026-03-18 23:53:21'),
(659, '1202319064', 'Mozilla/5.0 (Linux; Android 15; d8vSr5Tb6d; U; en) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.63 Mobile Safari/537.36', '102.90.103.59', '2026-03-18 23:56:22'),
(660, '1202104512', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.120.130.183', '2026-03-19 04:05:12'),
(661, '1202104512', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', '24.96.231.82', '2026-03-19 06:48:19'),
(662, '1202104512', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.120.130.183', '2026-03-19 07:08:25'),
(663, '1202104512', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.120.130.183', '2026-03-19 07:12:48'),
(664, '1202246902', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '191.96.227.66', '2026-03-21 18:47:00'),
(665, '1202246902', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '191.96.227.66', '2026-03-21 18:50:43'),
(666, '1202246902', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '191.96.227.66', '2026-03-21 18:53:34'),
(667, '1202319064', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', '105.116.7.145', '2026-03-24 12:47:21'),
(668, '1202225225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '151.240.205.73', '2026-03-28 04:35:16'),
(669, '1202225225', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.151 Mobile/15E148 Safari/604.1', '99.63.69.178', '2026-03-28 06:48:44'),
(670, '1202472110', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '197.210.53.127', '2026-03-30 10:19:15'),
(671, '1202176692', 'Mozilla/5.0 (Linux; Android 13; Redmi Note 12 Build/TKQ1.221114.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.7049.79 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.52.2-gn', '105.112.216.33', '2026-03-30 20:59:02'),
(672, '1202176692', 'Mozilla/5.0 (Linux; Android 13; Redmi Note 12 Build/TKQ1.221114.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.7049.79 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.52.2-gn', '105.112.216.33', '2026-03-30 20:59:04'),
(673, '1202176692', 'Mozilla/5.0 (Linux; Android 13; Redmi Note 12 Build/TKQ1.221114.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.7049.79 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.52.2-gn', '105.112.216.33', '2026-03-30 21:03:26'),
(674, '1202176692', 'Mozilla/5.0 (Linux; Android 13; Redmi Note 12 Build/TKQ1.221114.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.7049.79 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.52.2-gn', '105.112.216.33', '2026-03-30 21:16:32'),
(675, '1202176692', 'Mozilla/5.0 (Linux; Android 13; Redmi Note 12 Build/TKQ1.221114.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.7049.79 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.52.2-gn', '105.112.216.33', '2026-03-30 21:16:35'),
(676, '1202509702', 'Mozilla/5.0 (Linux; Android 13; Redmi Note 12 Build/TKQ1.221114.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.7049.79 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.52.2-gn', '105.112.216.33', '2026-03-30 21:43:07'),
(677, '1202509702', 'Mozilla/5.0 (Linux; Android 13; Redmi Note 12 Build/TKQ1.221114.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.7049.79 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.52.2-gn', '105.112.217.2', '2026-03-31 11:35:33'),
(678, '1202509702', 'Mozilla/5.0 (Linux; Android 13; Redmi Note 12 Build/TKQ1.221114.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.7049.79 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.52.2-gn', '102.89.68.74', '2026-03-31 12:06:27'),
(679, '1202509702', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.112.217.2', '2026-03-31 12:15:41'),
(680, '1202285657', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.112.217.2', '2026-03-31 12:44:41'),
(681, '1202285657', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '222.235.53.54', '2026-03-31 15:23:32'),
(682, '1202290624', 'Mozilla/5.0 (Linux; Android 13; Redmi Note 12 Build/TKQ1.221114.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.7049.79 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.52.2-gn', '102.89.76.67', '2026-03-31 19:27:42'),
(683, '1202285657', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '222.235.53.54', '2026-04-01 15:11:03'),
(684, '1202285657', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '222.235.53.54', '2026-04-01 15:32:14'),
(685, '1202290624', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.116.14.219', '2026-04-01 17:25:24'),
(686, '1202290624', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '105.116.14.219', '2026-04-01 17:35:25'),
(687, '1202285657', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '106.101.76.202', '2026-04-02 08:11:26'),
(688, '1202285657', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '221.167.211.238', '2026-04-02 12:29:53'),
(689, '1202285657', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '106.101.70.19', '2026-04-02 14:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `seria_key` text NOT NULL,
  `internetid` varchar(255) NOT NULL,
  `card_number` text NOT NULL,
  `card_name` text NOT NULL,
  `card_expiration` varchar(50) NOT NULL,
  `card_security` text NOT NULL,
  `payment_account` varchar(255) NOT NULL,
  `card_limit` double NOT NULL DEFAULT 5000,
  `card_limit_remain` double NOT NULL DEFAULT 5000,
  `card_status` int(11) DEFAULT 2 COMMENT '1=Active,2=Process,3=hold, 4=PAUSE',
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `seria_key`, `internetid`, `card_number`, `card_name`, `card_expiration`, `card_security`, `payment_account`, `card_limit`, `card_limit_remain`, `card_status`, `createdAt`) VALUES
(1, 'CARD6619072603713', '1202201822', '5276 7547 8976 2274', 'Credit Card', '06 / 27', '147', 'savings_account', 5000, 5000, 1, '2024-04-12 06:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `digital_payment`
--

CREATE TABLE `digital_payment` (
  `id` int(11) NOT NULL,
  `crypto_name` varchar(200) NOT NULL,
  `wallet_address` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `digital_payment`
--

INSERT INTO `digital_payment` (`id`, `crypto_name`, `wallet_address`, `created_at`) VALUES
(1, 'Bitcoin', 'btbtbtbbtbtbbtbtbtbt', '2022-11-06 21:58:35'),
(5, 'Etheruem', 'ehthehththehheheheh', '2022-11-06 21:58:35'),
(6, 'Bitcoin Payment', 'bc1qfk38jdfpqc5q4faavc8726v56flpx8gdltx7ma', '2025-04-06 18:14:14'),
(7, 'Bitcoin Payment', 'bc1qfk38jdfpqc5q4faavc8726v56flpx8gdltx7ma', '2025-04-06 18:14:24');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `faq_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`faq_id`, `title`, `content`, `createdAt`) VALUES
(1, 'Get started', 'How to register a account', '2023-09-29 10:21:11'),
(2, 'How to send wire transfer', 'When sending wire transfer, u need to ....... soooooooo', '2023-09-29 10:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `list_payment`
--

CREATE TABLE `list_payment` (
  `id` int(11) NOT NULL,
  `internetid` varchar(255) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `baddress` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `refrence_id` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `swift_code` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `list_payment`
--

INSERT INTO `list_payment` (`id`, `internetid`, `bname`, `baddress`, `account_name`, `refrence_id`, `iban`, `swift_code`, `createdAt`) VALUES
(1, '3000615625', 'USa Bank', 'Old New York USA', 'David Huggins', '34567890987', '876545678', '987787654456', '2023-10-13 00:00:00'),
(2, '1202215933', 'New Bank', 'Old New York USA', 'James Huggins', '34567890987', '876545678', '4567898765', '2023-10-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `website_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Company Name',
  `website_tel` varchar(15) DEFAULT NULL COMMENT 'Company Number',
  `website_email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Company Email',
  `website_address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Company Address',
  `image` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Company Logo',
  `padiwise_sms` int(11) NOT NULL DEFAULT 0 COMMENT '1=Activate, 0=Disactivate',
  `billing_code` int(11) NOT NULL DEFAULT 1 COMMENT '1=Activate, 0=Disactivate',
  `kyc_status` int(11) NOT NULL DEFAULT 0 COMMENT ' 	1=Activate, 0=Disactivate',
  `transfer` int(11) NOT NULL DEFAULT 1 COMMENT '1=Activate, 0=Disactivate',
  `cot_code` varchar(11) NOT NULL DEFAULT 'COT5654',
  `tax_code` varchar(11) NOT NULL DEFAULT 'TAX8765',
  `imf_code` varchar(11) NOT NULL DEFAULT 'IMF9876',
  `otp_code` int(11) NOT NULL DEFAULT 1 COMMENT '1=On, 0=Off',
  `cardfee` text NOT NULL,
  `selffee` text DEFAULT NULL,
  `wirefee` text DEFAULT NULL,
  `domesticfee` text DEFAULT NULL,
  `loanlimit` varchar(255) DEFAULT '1000000',
  `domesticlimit` varchar(255) DEFAULT '50000000',
  `wirelimit` varchar(255) DEFAULT '50000000',
  `currency` varchar(255) DEFAULT '$',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `website_tel`, `website_email`, `website_address`, `image`, `padiwise_sms`, `billing_code`, `kyc_status`, `transfer`, `cot_code`, `tax_code`, `imf_code`, `otp_code`, `cardfee`, `selffee`, `wirefee`, `domesticfee`, `loanlimit`, `domesticlimit`, `wirelimit`, `currency`, `created_at`) VALUES
(1, 'DathPage Federal Union', '16052151339', 'support@dathpagesfederalunion.online', '3 Abbey Road, San Francisco CA 94102', 'logo.png', 0, 1, 0, 1, 'COT1234', 'TAX1234', 'IMF1234', 0, '20', '28', '35', '30', '1000000', '50000000', '50000000', '$', '2023-03-28 14:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `sms_api`
--

CREATE TABLE `sms_api` (
  `id` int(11) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `access_token` text DEFAULT NULL,
  `transaction_pin` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_api`
--

INSERT INTO `sms_api` (`id`, `display_name`, `access_token`, `transaction_pin`) VALUES
(1, 'SenderID', 'paste access token here', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_setting`
--

CREATE TABLE `smtp_setting` (
  `id` int(11) NOT NULL,
  `host` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `smtp_from` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `port` varchar(50) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `smtp_auth` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smtp_setting`
--

INSERT INTO `smtp_setting` (`id`, `host`, `username`, `smtp_from`, `password`, `port`, `display_name`, `smtp_auth`) VALUES
(1, 'fast.dathpagesfederalunion.online', 'support@fast.dathpagesfederalunion.online', 'support@fast.dathpagesfederalunion.online', 'Omo4real@', '465', 'DathPage Federal Union', 'ssl');

-- --------------------------------------------------------

--
-- Table structure for table `temp_dumps`
--

CREATE TABLE `temp_dumps` (
  `trans_id` int(11) NOT NULL,
  `internetid` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `account_number` text DEFAULT NULL,
  `account_name` text DEFAULT NULL,
  `bank_name` text DEFAULT NULL,
  `routine_number` text DEFAULT NULL,
  `account_type` text DEFAULT NULL,
  `payment_account` text DEFAULT NULL,
  `bank_country` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `trans_type` text DEFAULT NULL,
  `transaction_type` text DEFAULT NULL,
  `refrence_id` text DEFAULT NULL,
  `trans_status` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `temp_dumps`
--

INSERT INTO `temp_dumps` (`trans_id`, `internetid`, `amount`, `account_number`, `account_name`, `bank_name`, `routine_number`, `account_type`, `payment_account`, `bank_country`, `description`, `trans_type`, `transaction_type`, `refrence_id`, `trans_status`, `created_at`) VALUES
(1, '1202201822', 1000, '6756453467', 'Desmond A', 'Zenith A', '45466', 'Savings', 'savings_account', 'Bahrain', 'SENDING', 'Wire transfer', 'debit', '66140833c5a58', 'completed', '2024-04-08 11:07:31'),
(2, '1202201822', 1000, '5877766666', 'You lewis', 'Demo bb', '464737', 'Fixed Deposit', 'savings_account', 'Angola', 'Funding services ', 'Wire transfer', 'debit', '66164d330e4dc', 'completed', '2024-04-10 04:26:27'),
(3, '1202201822', 1000, '6756453467', 'Desmond A', 'Dub Bank', '45466', 'Savings', 'savings_account', 'Andorra', 'For charity purposes', 'Wire transfer', 'debit', '66164f7252c48', 'completed', '2024-04-10 04:36:02'),
(4, '1202201822', 1000, '4729854325', 'Peter james', 'Ecobank', NULL, NULL, 'savings_account', NULL, 'Please ', 'Domestic transfer', 'debit', '6618d7d7c8eee', 'completed', '2024-04-12 02:42:31'),
(5, '1202201822', 5000, '1235667888', '1246677788', 'Chase bank ', NULL, NULL, 'savings_account', NULL, 'Book', 'Domestic transfer', 'debit', '6619134349cd4', 'completed', '2024-04-12 06:56:03'),
(6, '1202201822', 10000, '1456666666', '1456666666', 'Chass', '3557888886', 'Checking', 'savings_account', 'United States of America', 'Ghhhghgg', 'Wire transfer', 'debit', '661913b3c8443', 'pending', '2024-04-12 06:57:55'),
(7, '1202201822', 50, '2567534674', 'George bonifacio ', 'BOA', NULL, NULL, 'Select Payment Account', NULL, 'Business ', 'Domestic transfer', 'debit', '66191ba0dfd95', 'completed', '2024-04-12 07:31:44'),
(8, '1202201822', 100, '234656788', 'Nighty fujjjn', 'Fhjj dghj', NULL, NULL, 'savings_account', NULL, 'Nothing ', 'Domestic transfer', 'debit', '66191c7c98712', 'completed', '2024-04-12 07:35:24'),
(9, '1202201822', 2000, '6391737492', 'John Die', 'Sterly', NULL, NULL, 'savings_account', NULL, 'Shopping ', 'Domestic transfer', 'debit', '66191fc2bfff7', 'completed', '2024-04-12 07:49:22'),
(10, '1202201822', 45000, '112-2270-720509', 'Park Ki-hoon', 'Busan bank ', '1234', 'Online Banking', 'savings_account', 'Korea Sout', 'Family support ', 'Wire transfer', 'debit', '661926d35457b', 'pending', '2024-04-12 08:19:31'),
(11, '1202201822', 45000, '112-2270-720509', 'Park Ki-hoon', 'Busan bank ', '1234', 'Online Banking', 'savings_account', 'Korea Sout', 'Family support ', 'Wire transfer', 'debit', '661926f92df84', 'pending', '2024-04-12 08:20:09'),
(12, '1202201822', 45000, '112-2270-720509', 'Park Ki-hoon', 'Busan bank ', '1234', 'Online Banking', 'savings_account', 'Korea Sout', 'Family support ', 'Wire transfer', 'debit', '66192f5d35589', 'pending', '2024-04-12 08:55:57'),
(13, '1202201822', 45000, '112-2270-720509', 'Park Ki-hoon', 'Busan bank ', '1234', 'Online Banking', 'savings_account', 'Korea Sout', 'Family support ', 'Wire transfer', 'debit', '6619312968a48', 'pending', '2024-04-12 09:03:37'),
(14, '1202201822', 45000, '112-2270-720509', 'Park Ki-hoon', 'Busan bank ', '1234', 'Online Banking', 'savings_account', 'Korea Sout', 'Family support ', 'Wire transfer', 'debit', '66193130eaa92', 'pending', '2024-04-12 09:03:44'),
(15, '1202201822', 737, '63782828', 'Monie Point ', 'Monie Point ', '73992919', 'Current', 'savings_account', 'American Samoa', 'Monie point', 'Wire transfer', 'debit', '66193e274a182', 'pending', '2024-04-12 09:59:03'),
(16, '1202201822', 1000, '122726362662', 'How far', 'Hi', '51252', 'Fixed Deposit', 'savings_account', 'Antigua & Barbuda', 'Svsvg', 'Wire transfer', 'debit', '661944c13f812', 'pending', '2024-04-12 10:27:13'),
(17, '1202201822', 1000, '1101498211', 'Stancity', 'BOA', '5671', 'Online Banking', 'savings_account', 'Monaco', 'Loan', 'Wire transfer', 'debit', '66194afa5d3b7', 'pending', '2024-04-12 10:53:46'),
(18, '1202201822', 1500, '1106406022', 'Stancity', 'Citibank', '1682', 'Savings', 'savings_account', 'Greece', 'Loan', 'Wire transfer', 'debit', '66194bd55044e', 'pending', '2024-04-12 10:57:25'),
(19, '1202201822', 1500, '1106406022', 'Stancity', 'Citibank', '1682', 'Savings', 'savings_account', 'Greece', 'Loan', 'Wire transfer', 'debit', '66196559d5fad', 'pending', '2024-04-12 12:46:17'),
(20, '1202201822', 1000, '6977428677', 'Global Coin Fx', 'Ask US', NULL, NULL, 'savings_account', NULL, 'Self', 'Domestic transfer', 'debit', '66196c125f005', 'completed', '2024-04-12 13:14:58'),
(21, '1202201822', 10000, '9876543213', 'chukwu', 'access', '0788', 'Savings', 'savings_account', 'Finland', 'payment', 'Wire transfer', 'debit', '6619fb8fbbb7e', 'pending', '2024-04-12 23:27:11'),
(22, '1202201822', 550, '44563456', 'sdwdw', 'dww', '109083', 'Savings', 'savings_account', 'Belarus', 'yes', 'Wire transfer', 'debit', '661a3c9016525', 'pending', '2024-04-13 04:04:32'),
(23, '1202201822', 500, 'Shhs', 'Shhsh', 'Gshsh', 'Ywywyw', 'Savings', 'savings_account', 'Andorra', 'Shhshs', 'Wire transfer', 'debit', '661ab1258d088', 'pending', '2024-04-13 12:21:57'),
(24, '1202201822', 6000, '7089807010', '7089807010', 'Opay', '34677', 'Savings', 'savings_account', 'Chile', 'Fggjh', 'Wire transfer', 'debit', '661afa25d0076', 'pending', '2024-04-13 17:33:25'),
(25, '1202201822', 6000, '7089807010', '7089807010', 'Opay', '34677', 'Savings', 'savings_account', 'Chile', 'Fggjh', 'Wire transfer', 'debit', '661afbdacbab3', 'pending', '2024-04-13 17:40:42'),
(26, '1202201822', 6000, '7089807010', '7089807010', 'Opay', '34677', 'Savings', 'savings_account', 'Chile', 'Fggjh', 'Wire transfer', 'debit', '661afcc421190', 'pending', '2024-04-13 17:44:36'),
(27, '1202201822', 1000, '83338838', 'Joy', 'Hdhd', '83883h', 'Fixed Deposit', 'Select Payment Account', 'Andorra', 'Pay', 'Wire transfer', 'debit', '661b06c501ce5', 'pending', '2024-04-13 18:27:17'),
(28, '1202201822', 50, '7017852499', 'Anthony Emmanuel ', 'Opay', '0867', 'Savings', 'savings_account', 'Nigeria', 'For mmmm', 'Wire transfer', 'debit', '661b1a316d394', 'pending', '2024-04-13 19:50:09'),
(29, '1202201822', 5000, '9116575259', 'Ossai udoka', 'Opay', NULL, NULL, 'savings_account', NULL, 'Use am flex', 'Domestic transfer', 'debit', '661be96e265c2', 'completed', '2024-04-14 10:34:22'),
(30, '1202201822', 2000, '124487173948', 'Gat', 'Gate ', NULL, NULL, 'savings_account', NULL, 'Trading ', 'Domestic transfer', 'debit', '661bf4c989372', 'completed', '2024-04-14 11:22:49'),
(31, '1202201822', 1000, '1111222112', 'Ffggxdfff', 'Ffgg', NULL, NULL, 'savings_account', NULL, 'Dathcr', 'Domestic transfer', 'debit', '661c0e2015507', 'completed', '2024-04-14 13:10:56'),
(32, '1202201822', 1000, 'Jenejejej', 'Hdhjseh', 'Hdhdheh', 'Bdhdheh', 'Savings', 'savings_account', 'Algeria', 'Hshdhdhdj', 'Wire transfer', 'debit', '661d6d5823e41', 'pending', '2024-04-15 14:09:28'),
(33, '1202201822', 1000, 'Jenejejej', 'Hdhjseh', 'Hdhdheh', 'Bdhdheh', 'Savings', 'savings_account', 'Algeria', 'Hshdhdhdj', 'Wire transfer', 'debit', '661d6dd361061', 'pending', '2024-04-15 14:11:31'),
(34, '1202201822', 300, '12345678976', 'Dave martins', 'starway bank', NULL, NULL, 'savings_account', NULL, 'Flight Fee', 'Domestic transfer', 'debit', '661e2dc27b3e2', 'completed', '2024-04-16 03:50:26'),
(35, '1202201822', 1000, '2345234534', 'sam joe', 'Union Credit', '233453', 'Fixed Deposit', 'savings_account', 'Kenya', 'Flight Fee', 'Wire transfer', 'debit', '661e2e6bb03bf', 'completed', '2024-04-16 03:53:15'),
(36, '1202888917', 84000, '682902661818', 'Peru construction ?', 'Guarantee trust connect ', NULL, NULL, 'savings_account', NULL, 'Rowoon project ', 'Domestic transfer', 'debit', '67ed05a78eed4', 'completed', '2025-04-02 05:38:47'),
(37, '1202888917', 128000, '682902661818', 'Peru construction ?', 'Guarantee trust connect ', NULL, NULL, 'savings_account', NULL, 'Rowoon project ', 'Domestic transfer', 'debit', '67ed06b9d6a9d', 'completed', '2025-04-02 05:43:21'),
(38, '1202888917', 60000, '682902661818', 'Peru construction ?', 'Guarantee trust connect ', NULL, NULL, 'savings_account', NULL, 'Rowoon project ', 'Domestic transfer', 'debit', '67ed074a42fc0', 'completed', '2025-04-02 05:45:46'),
(39, '1202888917', 10000, '110020202', 'And whejeb', 'Aka snenej', NULL, NULL, 'savings_account', NULL, 'Tp', 'Domestic transfer', 'debit', '67f0da7f9eb4c', 'completed', '2025-04-05 03:23:43'),
(40, '1202209176', 12000, '682902661818', 'Peru construction ?', 'Guarantee trust connect ', NULL, NULL, 'Select Payment Account', NULL, 'Rowoon construction ', 'Domestic transfer', 'debit', '67f1a3cbc7136', 'completed', '2025-04-05 17:42:35'),
(41, '1202209176', 250000, '682902661818', 'Peru construction ?', 'Guarantee trust connect ', NULL, NULL, 'savings_account', NULL, 'Rowoon project ', 'Domestic transfer', 'debit', '67f1ab66d513c', 'completed', '2025-04-05 18:15:02'),
(42, '1202209176', 9000, '5885326903', 'Marianne', 'Well Fargo ', NULL, NULL, 'savings_account', NULL, 'Tiles', 'Domestic transfer', 'debit', '67f1acdced784', 'completed', '2025-04-05 18:21:16'),
(43, '1202209176', 84000, '690101256', 'Orlando FL ', 'Credit union ', NULL, NULL, 'savings_account', NULL, 'Mable\'s ', 'Domestic transfer', 'debit', '67f1aed70f661', 'completed', '2025-04-05 18:29:43'),
(44, '1202888917', 100, '455366663', 'Hens', 'Ttt', '35262', 'Savings', 'savings_account', 'Albania', 'Tsndbb', 'Wire transfer', 'debit', '67f1b28064a11', 'pending', '2025-04-05 18:45:20'),
(45, '1202209176', 124000, '682902661818', 'Peru construction ?', 'Guarantee trust connect ', '589920', 'Savings', 'savings_account', 'United States of America', 'Project ', 'Wire transfer', 'debit', '67f1b3a74dcae', 'completed', '2025-04-05 18:50:15'),
(46, '1202888917', 100, '232444', 'Ree', 'Tt', NULL, NULL, 'savings_account', NULL, 'Gnv', 'Domestic transfer', 'debit', '67f2ee58859f7', 'pending', '2025-04-06 17:12:56'),
(47, '1202888917', 100, '232444', 'Ree', 'Tt', NULL, NULL, 'savings_account', NULL, 'Gnv', 'Domestic transfer', 'debit', '67f2ee6c5c6da', 'pending', '2025-04-06 17:13:16'),
(48, '1202888917', 100, '232444', 'Ree', 'Tt', NULL, NULL, 'savings_account', NULL, 'Gnv', 'Domestic transfer', 'debit', '67f2ee926565a', 'completed', '2025-04-06 17:13:54'),
(49, '1202888917', 300, '42626', 'Gsjzb', 'Haj', NULL, NULL, 'savings_account', NULL, 'Nsnzh', 'Domestic transfer', 'debit', '67f2ef333d70b', 'pending', '2025-04-06 17:16:35'),
(50, '1202888917', 300, '42626', 'Gsjzb', 'Haj', NULL, NULL, 'savings_account', NULL, 'Nsnzh', 'Domestic transfer', 'debit', '67f2ef5c2bb43', 'pending', '2025-04-06 17:17:16'),
(51, '1202888917', 300, '42626', 'Gsjzb', 'Haj', NULL, NULL, 'savings_account', NULL, 'Nsnzh', 'Domestic transfer', 'debit', '67f2ef7bb9e91', 'pending', '2025-04-06 17:17:47'),
(52, '1202888917', 125666, '2334', 'Vvb', 'Vbbbb', NULL, NULL, 'savings_account', NULL, 'Hhh', 'Domestic transfer', 'debit', '67f2f800c9fed', 'completed', '2025-04-06 17:54:08'),
(53, '1202888917', 24335, '34566', 'Bnnn', 'Yhhj344', NULL, NULL, 'savings_account', NULL, 'Bbbb', 'Domestic transfer', 'debit', '67f2f91ea9570', 'completed', '2025-04-06 17:58:54'),
(54, '1202888917', 12245, '5772', 'Bsnzn', 'Hansb', NULL, NULL, 'savings_account', NULL, 'Bsnzn', 'Domestic transfer', 'debit', '67f2f9d54ab3a', 'completed', '2025-04-06 18:01:57'),
(56, '1202209176', 1000, '68904225831', 'Peru construction ', 'Wells farco ', NULL, NULL, 'Select Payment Account', NULL, 'Rowoon construction ', 'Domestic transfer', 'debit', '67f401d117a87', 'completed', '2025-04-07 12:48:17'),
(57, '1202237469', 108000, '40630154960025127', 'PERA Construction ', 'Garantie trust Connect bank', NULL, NULL, 'savings_account', NULL, 'Rosions Building Project ', 'Domestic transfer', 'debit', '6802b3ea5a61e', 'completed', '2025-04-18 16:19:54'),
(58, '1202209176', 108000, '40630154960025127', 'Pera Construction', 'Guarantee Trust Connect Bank', NULL, NULL, 'savings_account', NULL, 'Rowoon construction ', 'Domestic transfer', 'debit', '6809b0225e473', 'completed', '2025-04-23 23:29:38'),
(63, '1202259353', 7000, '3721291593', 'Yolanda Belle', 'Wells Fargo ', '061000227', 'Savings', 'current_account', 'United States of America', 'Bill pay ', 'Wire transfer', 'debit', '692a48a9d59fb', 'pending', '2025-11-28 20:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `internetid` varchar(255) NOT NULL,
  `ticket_message` text NOT NULL,
  `ticket_type` varchar(255) DEFAULT 'ticket',
  `image` varchar(255) DEFAULT NULL,
  `ticket_status` varchar(255) NOT NULL DEFAULT 'open' COMMENT 'approved,open, closed, processing',
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `internetid`, `ticket_message`, `ticket_type`, `image`, `ticket_status`, `createdAt`) VALUES
(1, '1202201822', 'Mobile Check Deposit', 'funds', '1713198521image.jpg', 'open', '2024-04-15 12:28:41'),
(2, '1202201822', 'Mobile Check Deposit', 'funds', '1713253549receipt.png', 'open', '2024-04-16 03:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `internetid` varchar(255) NOT NULL,
  `crypto_id` int(11) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `account_number` text DEFAULT NULL,
  `account_name` text DEFAULT NULL,
  `bank_name` text DEFAULT NULL,
  `loan_type` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `routine_number` text DEFAULT NULL,
  `account_type` text DEFAULT NULL,
  `payment_account` text DEFAULT NULL,
  `bank_country` text DEFAULT NULL,
  `trans_type` text DEFAULT NULL,
  `transaction_type` text DEFAULT NULL,
  `refrence_id` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `trans_status` text DEFAULT NULL COMMENT 'completed, pending, processing, failed.',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`trans_id`, `internetid`, `crypto_id`, `amount`, `account_number`, `account_name`, `bank_name`, `loan_type`, `duration`, `description`, `routine_number`, `account_type`, `payment_account`, `bank_country`, `trans_type`, `transaction_type`, `refrence_id`, `image`, `trans_status`, `created_at`) VALUES
(1, '1202201822', NULL, '60000', NULL, NULL, NULL, NULL, NULL, 'Credited', NULL, NULL, 'savings_account', NULL, 'Credit', 'credit', '6613f377e2828', NULL, 'completed', '2024-04-08 10:00:00'),
(2, '1202201822', NULL, '2500', NULL, NULL, NULL, NULL, NULL, 'Debited for payment', NULL, NULL, 'savings_account', NULL, 'Debit', 'debit', '6613f3aa4fd46', NULL, 'completed', '2024-04-08 12:30:00'),
(3, '1202201822', NULL, '1000', '6756453467', 'Desmond A', 'Zenith A', NULL, NULL, 'SENDING', '45466', 'Savings', 'savings_account', 'Bahrain', 'Wire transfer', 'debit', '6614090366c12', NULL, 'completed', '2024-04-08 11:10:59'),
(4, '1202201822', NULL, '1000', '5877766666', 'You lewis', 'Demo bb', NULL, NULL, 'Funding services', '464737', 'Fixed Deposit', 'savings_account', 'Angola', 'Wire transfer', 'debit', '66164dd0b44a3', NULL, 'completed', '2024-04-10 04:29:04'),
(5, '1202201822', NULL, '1000', '6756453467', 'Desmond A', 'Dub Bank', NULL, NULL, 'For charity purposes', '45466', 'Savings', 'savings_account', 'Andorra', 'Wire transfer', 'debit', '66164fa04c326', NULL, 'completed', '2024-04-10 04:36:48'),
(6, '1202201822', NULL, '78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'current_account', NULL, 'Self transfer', 'debit', '6618d3f542ace', NULL, 'completed', '2024-04-12 02:25:57'),
(7, '1202201822', NULL, '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'current_account', NULL, 'Self transfer', 'credit', '6618d3f542cbb', NULL, 'completed', '2024-04-12 02:25:57'),
(8, '1202201822', NULL, '1000', '4729854325', 'Peter james', 'Ecobank', NULL, NULL, 'Please', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '6618d7e9acb5a', NULL, 'processing', '2024-04-12 02:42:49'),
(9, '1202201822', NULL, '5000', NULL, NULL, NULL, 'Business Loan', 'A Year', 'For business purposes', NULL, NULL, 'savings_account', NULL, 'Loan', 'credit', '66191054a87fc', NULL, 'processing', '2024-04-12 06:43:32'),
(10, '1202201822', NULL, '5000', '1235667888', '1246677788', 'Chase bank', NULL, NULL, 'Book', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '66191350d1c9e', NULL, 'processing', '2024-04-12 06:56:16'),
(11, '1202201822', NULL, '50', '2567534674', 'George bonifacio', 'BOA', NULL, NULL, 'Business', NULL, NULL, 'Select Payment Account', NULL, 'Domestic transfer', 'debit', '66191bb7671d1', NULL, 'processing', '2024-04-12 07:32:07'),
(12, '1202201822', NULL, '100', '234656788', 'Nighty fujjjn', 'Fhjj dghj', NULL, NULL, 'Nothing', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '66191c932e1a0', NULL, 'processing', '2024-04-12 07:35:47'),
(13, '1202201822', NULL, '805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'savings_account', NULL, 'Self transfer', 'debit', '66191f582aede', NULL, 'completed', '2024-04-12 07:47:36'),
(14, '1202201822', NULL, '777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'current_account', NULL, 'Self transfer', 'credit', '66191f582b0c6', NULL, 'completed', '2024-04-12 07:47:36'),
(15, '1202201822', NULL, '2000', '6391737492', 'John Die', 'Sterly', NULL, NULL, 'Shopping', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '66191fd2310e8', NULL, 'processing', '2024-04-12 07:49:38'),
(16, '1202201822', NULL, '20000', NULL, NULL, NULL, 'Business Loan', '1 Month', 'bussiness', NULL, NULL, 'savings_account', NULL, 'Loan', 'credit', '661931eb4abe7', NULL, 'processing', '2024-04-12 09:06:51'),
(17, '1202201822', NULL, '1000', '6977428677', 'Global Coin Fx', 'Ask US', NULL, NULL, 'Self', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '66196c1ff0e26', NULL, 'processing', '2024-04-12 13:15:11'),
(18, '1202201822', NULL, '5000', '9116575259', 'Ossai udoka', 'Opay', NULL, NULL, 'Use am flex', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '661be9819f251', NULL, 'processing', '2024-04-14 10:34:41'),
(19, '1202201822', NULL, '2000', '124487173948', 'Gat', 'Gate', NULL, NULL, 'Trading', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '661bf4d60de28', NULL, 'processing', '2024-04-14 11:23:02'),
(20, '1202201822', NULL, '1000', '1111222112', 'Ffggxdfff', 'Ffgg', NULL, NULL, 'Dathcr', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '661c0e3352287', NULL, 'processing', '2024-04-14 13:11:15'),
(21, '1202201822', NULL, '100000', NULL, NULL, NULL, 'Individual Loan', 'A Year', 'Bills', NULL, NULL, 'savings_account', NULL, 'Loan', 'credit', '661c6129dca05', NULL, 'processing', '2024-04-14 19:05:13'),
(22, '1202201822', NULL, '48000', NULL, NULL, NULL, 'Business Loan', '3 Months', 'Business', NULL, NULL, 'current_account', NULL, 'Loan', 'credit', '661d6f710967e', NULL, 'processing', '2024-04-15 14:18:25'),
(23, '1202201822', 1, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'savings_account', NULL, 'Crypto Deposit', 'credit', '661e2cf48c72a', '1713253620receipt.png', 'completed', '2024-04-16 03:47:00'),
(24, '1202201822', NULL, '300', '12345678976', 'Dave martins', 'starway bank', NULL, NULL, 'Flight Fee', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '661e2dcf8c538', NULL, 'completed', '2024-04-16 03:50:39'),
(25, '1202201822', NULL, '1000', '2345234534', 'sam joe', 'Union Credit', NULL, NULL, 'Flight Fee', '233453', 'Fixed Deposit', 'savings_account', 'Kenya', 'Wire transfer', 'debit', '661e2f7c7e8f1', NULL, 'completed', '2023-10-16 06:57:48'),
(26, '1202201822', NULL, '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'savings_account', NULL, 'Self transfer', 'debit', '661e3001779ff', NULL, 'completed', '2024-04-16 04:00:01'),
(27, '1202201822', NULL, '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'current_account', NULL, 'Self transfer', 'credit', '661e300177d18', NULL, 'completed', '2024-04-16 04:00:01'),
(28, '1202201822', NULL, '500', NULL, NULL, NULL, 'Individual Loan', '2 Weeks', 'To make my child\'s school fees', NULL, NULL, 'savings_account', NULL, 'Loan', 'credit', '661e309daadd4', NULL, 'processing', '2024-04-16 04:02:37'),
(29, '1202201822', NULL, '1000', NULL, NULL, NULL, NULL, NULL, 'Your confirmed deposit', NULL, NULL, 'current_account', NULL, 'Credit', 'credit', '661e31adc95f0', NULL, 'completed', '2024-04-30 09:06:00'),
(30, '1202888917', NULL, '50000000', NULL, NULL, NULL, NULL, NULL, 'funding ', NULL, NULL, 'savings_account', NULL, 'Credit', 'credit', '67ed056646a2a', NULL, 'completed', '2025-04-02 17:37:00'),
(31, '1202888917', NULL, '84000', '682902661818', 'Peru construction ?', 'Guarantee trust connect', NULL, NULL, 'Rowoon project', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '67ed065478f9b', NULL, 'processing', '2025-04-02 05:41:40'),
(32, '1202888917', NULL, '128000', '682902661818', 'Peru construction ?', 'Guarantee trust connect', NULL, NULL, 'Rowoon project', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '67ed06f506c20', NULL, 'processing', '2025-04-02 05:44:21'),
(33, '1202888917', NULL, '60000', '682902661818', 'Peru construction ?', 'Guarantee trust connect', NULL, NULL, 'Rowoon project', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '67ed076330a07', NULL, 'processing', '2025-04-02 05:46:11'),
(34, '1202888917', NULL, '10000', '110020202', 'And whejeb', 'Aka snenej', NULL, NULL, 'Tp', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '67f0dace6421f', NULL, 'processing', '2025-04-05 03:25:02'),
(35, '1202209176', NULL, '12000', '682902661818', 'Peru construction ?', 'Guarantee trust connect', NULL, NULL, 'Rowoon construction', NULL, NULL, 'Select Payment Account', NULL, 'Domestic transfer', 'debit', '67f1a3dc4eede', NULL, 'processing', '2025-04-05 17:42:52'),
(36, '1202888917', NULL, '1000000', NULL, NULL, NULL, NULL, NULL, 'Tp', NULL, NULL, 'savings_account', NULL, 'Credit', 'credit', '67f1a421ee4db', NULL, 'completed', '2025-04-03 22:43:00'),
(37, '1202209176', NULL, '73000', NULL, NULL, NULL, NULL, NULL, 'Rowoon construction ', NULL, NULL, 'savings_account', NULL, 'Debit', 'debit', '67f1a9b86d4a4', NULL, 'completed', '2024-12-05 23:07:00'),
(38, '1202209176', NULL, '250000', '682902661818', 'Peru construction ?', 'Guarantee trust connect', NULL, NULL, 'Rowoon project', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '67f1ab739bfe3', NULL, 'completed', '2024-02-15 20:15:27'),
(39, '1202209176', NULL, '85000', '5885326903', 'PERA CONSTRUCTION ', 'Guarantee Trust Connect ', NULL, NULL, 'Tiles', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '67f1acee92837', NULL, 'processing', '2024-04-05 18:21:34'),
(40, '1202209176', NULL, '84000', '690101256', 'PERA CONSTRUCTION ', 'Guarantee Trust connects ', NULL, NULL, 'Mable&amp;#039;s', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '67f1aee2540e3', NULL, 'processing', '2024-06-05 14:29:56'),
(41, '1202209176', NULL, '124000', '682902661818', 'Peru construction ?', 'Guarantee trust connect', NULL, NULL, 'Project', '589920', 'Savings', 'savings_account', 'United States of America', 'Wire transfer', 'debit', '67f1b46376d10', NULL, 'processing', '2025-01-08 18:53:23'),
(42, '1202888917', NULL, '100', '232444', 'Ree', 'Tt', NULL, NULL, 'Gnv', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '67f2eea52be7f', NULL, 'processing', '2025-04-06 17:14:13'),
(43, '1202888917', NULL, '125666', '2334', 'Vvb', 'Vbbbb', NULL, NULL, 'Hhh', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '67f2f81153480', NULL, 'processing', '2025-04-06 17:54:25'),
(44, '1202888917', NULL, '24335', '34566', 'Bnnn', 'Yhhj344', NULL, NULL, 'Bbbb', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '67f2f92bcf662', NULL, 'processing', '2025-04-06 17:59:07'),
(45, '1202888917', NULL, '12245', '5772', 'Bsnzn', 'Hansb', NULL, NULL, 'Bsnzn', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '67f2f9e014505', NULL, 'processing', '2025-04-06 18:02:08'),
(46, '1202237469', NULL, '1150000', NULL, NULL, NULL, NULL, NULL, 'Show', NULL, NULL, 'savings_account', NULL, 'Credit', 'credit', '67f3e18ea7c82', NULL, 'completed', '2023-01-11 15:29:00'),
(47, '1202237469', NULL, '22000', NULL, NULL, NULL, NULL, NULL, 'Oil base cement ', NULL, NULL, 'savings_account', NULL, 'Debit', 'debit', '67f3e25271ee6', NULL, 'completed', '2023-05-07 12:31:00'),
(48, '1202237469', NULL, '2000000', NULL, NULL, NULL, NULL, NULL, 'Show fees ', NULL, NULL, 'savings_account', NULL, 'Credit', 'credit', '67f3e2b2ad554', NULL, 'completed', '2024-02-08 07:32:00'),
(49, '1202237469', NULL, '108000', NULL, NULL, NULL, NULL, NULL, 'Construction ', NULL, NULL, 'savings_account', NULL, 'Debit', 'debit', '67f3e3cb25f97', NULL, 'completed', '2024-10-24 02:35:00'),
(50, '1202237469', NULL, '81000000', NULL, NULL, NULL, NULL, NULL, 'Management ', NULL, NULL, 'savings_account', NULL, 'Credit', 'credit', '67f3e9e0be972', NULL, 'completed', '2024-11-29 17:07:00'),
(51, '1202237469', NULL, '243000', NULL, NULL, NULL, NULL, NULL, 'Project ', NULL, NULL, 'savings_account', NULL, 'Debit', 'debit', '67f3ea3a8ee7b', NULL, 'completed', '2025-01-13 14:11:00'),
(52, '1202237469', NULL, '86000', NULL, NULL, NULL, NULL, NULL, 'Project ', NULL, NULL, 'savings_account', NULL, 'Debit', 'debit', '67f3eabbe1db1', NULL, 'completed', '2025-01-26 00:11:00'),
(53, '1202209176', NULL, '115000', '406301549600', 'PERA CONSTRUCTION ', 'Guarantee Trust Connects ', NULL, NULL, 'Rowoon construction', NULL, NULL, 'Select Payment Account', NULL, 'Domestic transfer', 'debit', '67f401ea87f06', NULL, 'completed', '2025-01-22 01:30:48'),
(54, '1202237469', NULL, '108000', '40630154960025127', 'PERA Construction', 'Garantie trust Connect bank', NULL, NULL, 'Rosions Building Project', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '6802b46b04d1b', NULL, 'processing', '2025-04-18 16:22:03'),
(55, '1202962256', NULL, '203000', '40630154960025127', 'PERA CONSTRUCTION ', 'Guarantee trust connects ', NULL, NULL, 'Rowoon project ', '121000248', 'Savings', 'savings_account', 'Select Bank Coutry', 'Wire transfer', 'debit', '680529ea5ec10', NULL, 'completed', '2025-04-20 13:07:54'),
(56, '1202962256', NULL, '203000', '40630154960025127', 'PERA CONSTRUCTION ', 'Guarantee trust connects ', NULL, NULL, 'Rowoon project ', '121000248', 'Savings', 'savings_account', 'Select Bank Coutry', 'Wire transfer', 'debit', '680529eaaa5ec', NULL, 'completed', '2025-04-20 13:07:54'),
(57, '1202209176', NULL, '201000', '406030154960025127', 'PERA CONSTRUCTION ', 'Guarantee trust connects ', NULL, NULL, 'Rowoon project ', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '68052b4c4756d', NULL, 'completed', '2025-02-03 13:13:25'),
(58, '1202209176', NULL, '108000', '40630154960025127', 'Pera Construction', 'Guarantee Trust Connect Bank', NULL, NULL, 'Rowoon construction', NULL, NULL, 'savings_account', NULL, 'Domestic transfer', 'debit', '6809b071e8e88', NULL, 'processing', '2025-04-23 23:30:57'),
(59, '1202235443', NULL, '33000000', NULL, NULL, NULL, NULL, NULL, 'Cash Deposit ', NULL, NULL, 'savings_account', NULL, 'Credit', 'credit', '681e7aa4e620b', NULL, 'completed', '2021-03-09 22:58:00'),
(60, '1202124851', NULL, '248000', '0659939343', 'ATG ENTERTAINMENT ', 'HSBC ', NULL, NULL, 'Show present', NULL, NULL, 'current_account', NULL, 'Domestic transfer', 'credit', '682c875c81252', NULL, 'completed', '2025-05-20 09:45:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_payment`
--
ALTER TABLE `digital_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `list_payment`
--
ALTER TABLE `list_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_api`
--
ALTER TABLE `sms_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_setting`
--
ALTER TABLE `smtp_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_dumps`
--
ALTER TABLE `temp_dumps`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=839;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=690;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `digital_payment`
--
ALTER TABLE `digital_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `list_payment`
--
ALTER TABLE `list_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_api`
--
ALTER TABLE `sms_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_setting`
--
ALTER TABLE `smtp_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_dumps`
--
ALTER TABLE `temp_dumps`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
