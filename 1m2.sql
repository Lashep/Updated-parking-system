-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2020 at 07:07 AM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1m2`
--

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'თამარაშვილი', '2019-08-21 10:51:14', '2019-08-29 19:56:58'),
(2, 'ყაზბეგი', '2019-08-21 10:51:34', '2019-08-29 19:57:04'),
(28, 'ჭავჭავაძე', '2019-08-29 19:57:19', '2019-08-29 19:57:19'),
(29, 'ნუცუბიძე', '2019-08-29 19:57:35', '2019-08-29 19:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `guest_id` bigint(20) UNSIGNED NOT NULL,
  `guest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_vehicle1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_vehicle2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_vehicle3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `guest_enteringDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_leavingDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_count` int(255) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`guest_id`, `guest_name`, `guest_phone`, `guest_vehicle1`, `guest_vehicle2`, `guest_vehicle3`, `user_id`, `created_at`, `updated_at`, `guest_enteringDate`, `guest_leavingDate`, `guest_status`, `building`, `visit_count`, `user_name`) VALUES
(28, 'სატესტო სტუმარი', '571 000 323', 'LA014SH', NULL, NULL, '40', '2019-08-29 20:01:53', '2019-09-04 06:31:14', '2019-08-30 01:00:24', '2019-09-04 10:31:14', 'გავიდა', '1', 2, 'ვაჟა აფციაური'),
(30, 'ლუკა ჭიბოშვილი', '597030406', 'LU-001-KA', NULL, NULL, '39', '2019-08-29 20:07:45', '2019-09-02 06:30:16', '2019-09-02 10:30:00', '2019-09-02 10:30:16', 'გავიდა', '1', 2, 'ლაშა აფციაური'),
(54, NULL, NULL, 'AB-321-SO', NULL, NULL, '39', '2019-09-01 21:33:26', '2019-09-02 07:01:02', '2019-09-02 10:49:38', '2019-09-02 11:01:02', 'გავიდა', '1', 5, 'ლაშა აფციაური'),
(59, 'სატესტო სტუმარი #3', '597002285', 'TE-003-ST', NULL, NULL, '40', '2019-09-02 07:55:33', '2019-09-02 11:55:34', '2019-09-02 12:04:17', '2019-09-02 15:55:34', 'გავიდა', '1', 3, 'ვაჟა აფციაური'),
(66, NULL, NULL, 'მინდია', NULL, NULL, '37', '2019-09-02 08:16:19', '2019-09-02 08:16:19', NULL, '2019-09-02 12:16:19', NULL, '0', 0, 'ლაშა აფციაური'),
(71, 'ქავთარაძე ნიკა', '3131', 'mindia', NULL, NULL, '42', '2019-09-03 13:42:27', '2019-09-04 09:05:31', '2019-09-04 13:05:31', '2019-09-05 13:05:31', 'შემოსულია', '2', 1, 'Lasha Aptsiauri'),
(72, '3131', NULL, '3131', NULL, NULL, '42', '2019-09-03 13:42:41', '2019-09-04 09:05:34', '2019-09-04 13:05:34', '2019-09-05 13:05:34', 'შემოსულია', '2', 1, 'Lasha Aptsiauri'),
(73, 'ქავთარაძე ნიკა', '313131', '31313131', NULL, NULL, '42', '2019-09-03 13:46:07', '2019-09-05 13:01:02', '2019-09-03 17:46:12', '2019-09-05 17:01:02', 'გავიდა', '1', 1, 'Lasha Aptsiauri'),
(75, 'Test K', NULL, 'TESTING K', NULL, NULL, '48', '2019-09-04 09:06:02', '2019-09-04 09:06:02', '2019-09-04 13:06:02', '2019-09-04 13:06:02', 'მოსასვლელია', '2', 0, 'Host Kazbegu'),
(76, 'სატესტო სტუმარი #4', '500500500', 'TE-004-ST', NULL, NULL, '40', '2019-09-04 12:38:16', '2019-09-04 12:39:11', '2019-09-04 16:39:07', '2019-09-04 16:39:11', 'გავიდა', '1', 1, 'ვაჟა აფციაური'),
(77, 'გიორგი გულუა', '555555555', '213', NULL, NULL, '39', '2019-09-05 08:40:15', '2019-09-05 08:42:39', '2019-09-05 12:42:39', '2019-09-06 12:42:39', 'შემოსულია', '1', 2, 'ლაშა აფციაური'),
(78, NULL, NULL, 'gpg 407', NULL, NULL, '40', '2019-09-05 13:36:25', '2019-09-06 13:20:21', '2019-09-06 17:20:21', '2019-09-07 23:00:00', 'შემოსულია', '1', 1, 'ვაჟა აფციაური'),
(105, 'გიორგი ფირცხალეიშვილი', '571432034', 'AA722SC', NULL, NULL, '40', '2019-09-09 13:39:41', '2020-02-12 13:15:11', '2020-02-12', '2020-02-13 13:15:11', 'კომპლექსის ტერიტორიაზეა', '1', 2, 'ვაჟა აფციაური'),
(122, 'Vazha Aphtsiauri', NULL, 'ry-657-tu', NULL, NULL, '21', '2020-02-09 02:00:31', '2020-02-10 17:46:54', '2020-02-10', '2020-02-10', 'კომპლექსის ტერიტორიაზეა', '1', 2, 'ლორემ ipsum'),
(123, 'Vazha Aphtsiauriyh', '571-011-574', 'ty-466-rg', NULL, NULL, '21', '2020-02-09 02:01:02', '2020-02-10 10:18:02', '2020-02-09', '2020-02-10', 'დატოვა კომპლექსი', '1', 1, 'ლორემ ipsum'),
(124, 'სატესტო სტუმარი', '571-000-666', '10', NULL, NULL, '2', '2020-02-09 03:09:50', '2020-02-20 01:33:38', '2020-02-09', '2020-02-20', 'დატოვა კომპლექსი', '1', 1, 'ვაჟა აფციაური'),
(125, 'ტესტ სტუმარი', '561-123-512', '123123', NULL, NULL, '2', '2020-02-09 03:22:36', '2020-02-09 03:22:36', '2020-02-09', '2020-02-09', 'კომპლექსის ტერიტორიაზეა', '1', 1, 'ვაჟა აფციაური'),
(129, 'ნიკოლოზ აბულაძე', '512-345-678', 'ას-231-ას', NULL, NULL, '21', '2020-02-11 21:05:04', '2020-02-11 21:05:04', '2020-05-19', '2020-02-20', 'მოლოდინის რეჟიმშია', '1', 0, 'ლორემ ipsum'),
(130, 'ნიკოლოზ აბულაძეორი', '512-345-656', 'ას-231-აა', NULL, NULL, '21', '2020-02-11 21:05:27', '2020-02-11 21:05:27', '2020-02-21', '2020-02-20', 'მოლოდინის რეჟიმშია', '1', 0, 'ლორემ ipsum'),
(131, 'ნიკოლოზ აბულაძესამი', '511-111-111', 'სს-213-სდ', NULL, NULL, '21', '2020-02-11 21:05:42', '2020-02-11 21:05:42', '2020-02-11', '2020-02-11', 'მოლოდინის რეჟიმშია', '1', 0, 'ლორემ ipsum'),
(132, 'ნიკოლოზ აბულაძეasd', NULL, 'as-132-ad', NULL, NULL, '21', '2020-02-11 21:26:11', '2020-02-11 21:28:27', '2020-02-11', '2020-02-11', 'დატოვა კომპლექსი', '1', 1, 'ლორემ ipsum'),
(134, 'ლუკა ჭიბოშვილი', '571-000-666', '123213213', NULL, NULL, '2', '2020-02-11 21:38:08', '2020-02-11 21:38:08', '2020-02-11', '2020-02-11', 'კომპლექსის ტერიტორიაზეა', '1', 1, 'ვაჟაxd აფციაური'),
(135, 'სანდრო დომიანიძე', '595-033-123', 'DO-313-MY', NULL, NULL, '21', '2020-02-11 21:46:02', '2020-02-11 22:50:43', '2020-02-11', '2020-02-11', 'დატოვა კომპლექსი', '1', 1, 'ლორემ ipsum'),
(137, 'Adsa daasd', '511-231-231', '13-151-12', NULL, NULL, '2', '2020-02-11 22:11:35', '2020-02-11 22:11:35', '2020-02-11', '2020-02-11', 'კომპლექსის ტერიტორიაზეა', '1', 1, 'ვაჟაxd აფციაური'),
(138, 'ოთო ბენიძე', '571-000-666', 'LA-014-SHasdsadsad', NULL, NULL, '2', '2020-02-11 22:44:46', '2020-02-11 22:44:46', '2020-02-11', '2020-02-11', 'კომპლექსის ტერიტორიაზეა', '1', 1, 'ვაჟაxd აფციაური'),
(139, 'ნატა გრიგალაშვილი', '555-585-652', 'გპგ407', NULL, NULL, '2', '2020-02-12 13:14:50', '2020-02-12 13:14:50', '2020-02-12', '2020-02-12', 'კომპლექსის ტერიტორიაზეა', '1', 1, 'ვაჟაxd აფციაური'),
(144, 'Test', '511-315-678', 'xd-231-აა', NULL, NULL, '2', '2020-02-12 13:54:56', '2020-02-12 13:54:56', '2020-02-12', '2020-02-12', 'კომპლექსის ტერიტორიაზეა', '1', 1, 'ვაჟა აფციაური');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('guard@outlook.com', '$2y$10$P8mb/.Nv9WZfBN/T0svCjucebkGkzgnN2sDBNyngZEhLKjQPLQ9Je', '2019-08-29 20:18:19'),
('vaptsiauri@outlook.com', '$2y$10$GplH.8eIRdkiIMbO81dfuO0QBvFRzz44WOJwLqGdF9vYpLGJuRAhq', '2019-09-01 14:47:23'),
('laptsiauri@outlook.com', '$2y$10$AXea98oFLiapF3vWW3s7m.KtNHEGXRGUGYoq75jrvmNKlaLy.Lmny', '2019-09-09 10:48:28'),
('ngrigalashvili13@gmail.com', '$2y$10$t2Tr/RzC9gtX34mpDstb6.myETHKChUxrHeb/EsrlRv3S.W5R51ta', '2020-02-05 11:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL,
  `hall` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flatno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carno1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carno2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carno3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parkno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renternumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rentercarnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `phone`, `building`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `hall`, `flatno`, `carno1`, `carno2`, `carno3`, `parkno`, `status`, `renter`, `renternumber`, `rentercarnumber`, `verified`) VALUES
(1, 'ლაშა', 'აფციაური', '597850022', '1', 'admin@outlook.com', NULL, '$2y$10$jQThmxauIoCNLtuaBnya4e2pzRpbouAfhY3yOa.Tm7Z2WXD0hbMja', NULL, '2019-09-30 09:22:41', '2019-10-02 08:06:14', 3, '2', '31', NULL, NULL, NULL, NULL, 'Y', 'ტესტი', '123', 'TEST-100', 1),
(2, 'ვაჟა', 'აფციაური', '571-011-572', '1', 'guard@outlook.com', NULL, '$2y$10$EaeHcmiN7lDVoOQ/BkKxwOwTE5fzpS5849ekisGmFT.WByCk.pawm', NULL, '2019-10-02 08:08:34', '2020-02-12 13:40:33', 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 1),
(21, 'ლორემ', 'ipsum', '500-500-500', '1', 'host@outlook.com', NULL, '$2y$10$JMY5iZ0uEMGlqS0VA9K2K.x2NwNQM86FMYYOV7IPP0QkcJKGuBJgy', NULL, '2019-10-02 08:09:15', '2020-02-08 16:02:10', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, '595-990-30', '213123', 1),
(22, 'Test 1', 'Test User', '577288870', '1', 'mgogi14@freeuni.edu.ge', NULL, '$2y$10$2jds7nFxY3Mums9zCmf1DugTqO.wLxdxcrTzWqOjBX4YMx9aUWSiK', NULL, '2019-11-12 11:44:46', '2019-11-12 11:44:46', 1, '1', '12', 'zz-111-zz', NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 0),
(23, 'ადმინ', 'ადმინ', '500500500', '1', 'test@outlook.com', NULL, '$2y$10$fMDv7gscytfw.L7TQ.mKweH8iHtfqgT6J.c57NHwLxzrOEUS2VVgC', NULL, '2020-02-03 14:00:09', '2020-02-03 14:00:09', 3, '2', '3', 'TE-012-ST', NULL, NULL, '14', 'Y', NULL, NULL, NULL, 1),
(24, 'მარიამი', 'გოგიტაძე', '577288870', '1', 'mgogi15@freeuni.edu.ge', NULL, '$2y$10$djcIoRlH7Li2Ik3B.9qx7u..Jed7zXaaseTYeulqo7mBXF13U7x/e', NULL, '2020-02-05 11:08:53', '2020-02-05 11:08:53', 1, '1', '1', 'aa-111-aa', 'bb-222-bb', NULL, '1', 'Y', NULL, NULL, NULL, 0),
(25, 'ნატა', 'გრიგალაშვილი', '599701777', '2', 'ngrigalashvili13@gmail.com', NULL, '$2y$10$Gl1uEDcMMFVqvZRc820Ks.BLHeiWH704BJNq6znhYTBpkDp.mljvy', NULL, '2020-02-05 11:25:32', '2020-02-10 18:02:11', 1, '1', '1', 'ni-008-um', NULL, NULL, '12', 'N', NULL, NULL, NULL, 0),
(26, 'ნატა', 'გრიგალაშვილი', '599701777', '1', 'ngrig15@freeuni.edu.ge', NULL, '$2y$10$xN7IRlZ7oAkAxND17xVQRO.ut8fy0kn9zxj/SW7fC3Ufe4nnPFTT.', NULL, '2020-02-05 11:33:10', '2020-02-05 11:33:10', 1, '1', '1', 'ni-008-um', NULL, NULL, '1', 'Y', NULL, NULL, NULL, 0),
(27, 'ნატა', 'გრიგალაშვილი', '555545856', '1', 'ngrig17@freeuni.edu.ge', NULL, '$2y$10$5UHqzerHTTzFGCurkaqNsOXTBEzKjITtjjr2dUOKLKNjZRt8FEGN6', NULL, '2020-02-05 11:39:54', '2020-02-05 11:39:54', 1, '1', '1', 'ninis54', NULL, NULL, '1', 'Y', NULL, NULL, NULL, 0),
(32, 'ლაშა', 'აფციაური', '597850022', '1', 'laptsiauri@outlook.com', NULL, '$2y$10$6Of/Q6oP8E6Ov.ZRsGd55.ZjLJF81WG0Rhg.pvmAmvRp3DvMd1WtO', NULL, '2020-02-06 20:34:46', '2020-02-06 20:34:46', 1, '9', '232', 'LA014SH', NULL, NULL, '29', 'Y', NULL, NULL, NULL, 0),
(36, 'Lasha', NULL, '571-000-666', '1', 'name@exampl.eeeecom', NULL, '$2y$10$Db6HxWeWEkLZdjtxpVUsmOF0Yj8AuZYoyyxgt942lPQBzHitvLbFm', NULL, '2020-02-08 21:03:48', '2020-02-08 21:03:48', 1, '213213213', '123213213', '213213', NULL, NULL, '213213213', 'Y', 'Lasha aptsiauri', '313-131-31', NULL, 1),
(37, 'დაცვა ერთი', NULL, NULL, '28', 'dacva@example.com', NULL, '$2y$10$cd97a0th8c2BYxswS0qJhufGx9dl9nnqUblnnbCPav3GPFtHl1eCa', NULL, '2020-02-08 23:40:11', '2020-02-08 23:40:11', 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 1),
(38, 'ნატა', NULL, '555-585-654', '1', 'ngrigalashvili14@gmail.com', NULL, '$2y$10$4kniu0pXVZus2huepjztM.EhUrh/EZyMwv0Bc4WqB6pLmouBk8t7y', NULL, '2020-02-10 09:43:38', '2020-02-10 09:43:38', 1, '1', NULL, 'ni-555-um', NULL, NULL, '1', 'Y', NULL, NULL, NULL, 0),
(39, 'ნატა', NULL, '555-515-452', '1', 'ngrigalashvili10@gmail.com', NULL, '$2y$10$udPmwfHcD.DAdWjfGYG5iObfc91ny6RYLQHY8wCxiccKmVoYAin/2', NULL, '2020-02-12 13:20:25', '2020-02-12 13:20:25', 1, '1', '1', 'ni-002-um', NULL, NULL, '2', 'Y', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `user_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`user_id`, `token`, `created_at`, `updated_at`) VALUES
(37, 'wioKczIfvY286X0w3Z9dtXAUUSeYktA8Yben4mlo', '2019-08-24 10:46:44', '2019-08-24 10:46:44'),
(38, 'pOvywlKq84K2FQjgee6eM38MPwJcrrCBAelqMufN', '2019-08-29 12:14:11', '2019-08-29 12:14:11'),
(41, 'm30B1mKg6SshZSRD1W1lkC8o1oPvnLXHC5muMFU4', '2019-08-30 11:36:09', '2019-08-30 11:36:09'),
(42, 'QT0MoHK64uWdB7vsvoFolwzdQO9sKf79C9gOGOfI', '2019-08-30 11:48:37', '2019-08-30 11:48:37'),
(43, 'CvTJWf0kUn6XkWAuiqvo7sIGDKHcafprTXuiCMEH', '2019-08-30 12:14:07', '2019-08-30 12:14:07'),
(44, '02rACgCXkezfitaBE0DFg6P1YFYAiGwaYK20AzHS', '2019-08-30 12:15:24', '2019-08-30 12:15:24'),
(49, 'DGeOSeKdTxKSRdYuy0nFPgAjqwrg6Ut6qIR19Pvh', '2019-09-04 09:38:19', '2019-09-04 09:38:19'),
(50, 'TIAGMNwg8LZf9GbR25yLKDWXK2ySNaNTwk3pdUfC', '2019-09-04 13:29:57', '2019-09-04 13:29:57'),
(52, 'x59w9NCPnQAwPihdKypkLi8pu4I4B2CJHMVbVlmJ', '2019-09-09 10:49:47', '2019-09-09 10:49:47'),
(53, 'F4zsUJtVAIIYWn5yEajj6HBemrHG9EdYoVU2ZDsu', '2019-09-09 10:57:40', '2019-09-09 10:57:40'),
(54, 'HQwRWR6pLlDELPe33zwCfYl78fBCKjbDEc6vznxR', '2019-09-09 11:05:04', '2019-09-09 11:05:04'),
(55, 'bhgEO9s3mn6poZrSQymE99MPpsG7neCydgJdOzBL', '2019-09-09 11:07:39', '2019-09-09 11:07:39'),
(56, '1jhnsAX4X4sgncd2lysn9piHnkVy5j2bt2Mng5t7', '2019-09-09 11:14:41', '2019-09-09 11:14:41'),
(57, 'hNGvjXNxVpwfhmSztec0qIVYeVzQvwGv0eqncJfu', '2019-09-09 11:17:18', '2019-09-09 11:17:18'),
(12, 'XUIRriJcsGx5hV7hqFqJzYRZ8W1TfkOifWfJqPlI', '2019-10-01 15:09:54', '2019-10-01 15:09:54'),
(13, 'XfCRKQcrAyKiuQpUAm2yo0eIY1IzKlTtFtcTzmQ8', '2019-10-01 15:13:35', '2019-10-01 15:13:35'),
(14, 'IATx87Vl6D1LPYuBcA91VcfhEDbGIz3gSbUuP9Xn', '2019-10-01 15:16:25', '2019-10-01 15:16:25'),
(15, '2RS4cfecC3BQ8xaARI07AEwPgvDTWZRNzN222Z7P', '2019-10-01 15:17:37', '2019-10-01 15:17:37'),
(16, 'SaZnVFzUyTcnBUCGPxkJuyM4uPc4SnyaROo4JJ4O', '2019-10-02 07:47:31', '2019-10-02 07:47:31'),
(17, '1APrnrv1I89OM40g9Qj3NHt7Q0MrsCBbz0lvwFN4', '2019-10-02 07:58:31', '2019-10-02 07:58:31'),
(18, 'Y1oeVYHO0IkD6GMG4jnlMeENKfpU9koRvRhJZ3PJ', '2019-10-02 08:02:50', '2019-10-02 08:02:50'),
(22, 'Qvou8zmtdRb7UxNVmz2pcECKrkWfBjIuaRliuOWY', '2019-11-12 11:44:46', '2019-11-12 11:44:46'),
(23, 'sGO0b74BUxcI8P8HSL1DfnzH6Y1SbLwdeZZNHOEA', '2019-11-15 10:25:11', '2019-11-15 10:25:11'),
(24, 'jNyZr1nCFZKVb2LFsK6s5LaoD8kYfnXPjIY0IZ9K', '2019-11-15 10:31:28', '2019-11-15 10:31:28'),
(25, 'OLbajCQHJnCfKF2G1Ubr0CKbrSBMJx7eTEgIr1CF', '2019-11-15 10:42:39', '2019-11-15 10:42:39'),
(26, 'LUH1xtpsi9K0th0v7uAFdN4Cy4KpAOBn5nYx6BaA', '2019-11-15 10:43:36', '2019-11-15 10:43:36'),
(27, '5AUvLmIhi1oyGNYouWMnYRd6VB7Yh4fUiamhExXC', '2019-11-15 10:45:33', '2019-11-15 10:45:33'),
(28, 'tCrP4QQ23c2yIq0Bkdi3iOjnlnTxuKxcvQgLkijA', '2019-11-15 10:47:42', '2019-11-15 10:47:42'),
(23, 'NuodK5BoLL2QJ4sscz4PAzbVElLppK97abuLuCcw', '2020-02-03 14:00:09', '2020-02-03 14:00:09'),
(24, 'DCyf9nB1PXtI7dLrSTn03d9YXgjsz6DkXzCLppRq', '2020-02-05 11:08:53', '2020-02-05 11:08:53'),
(25, 'rXFzeoQMtGPegqMWKnMY8xBztSG0dACWNATibGf8', '2020-02-05 11:25:32', '2020-02-05 11:25:32'),
(26, 'AA7j4lOncqKeoNp11sb5RvXmya1RVeytghS6u7c3', '2020-02-05 11:33:10', '2020-02-05 11:33:10'),
(27, '4tCk90MTaLkzyq4I4er3uc4lWGFbWfD7OoiymQsA', '2020-02-05 11:39:54', '2020-02-05 11:39:54'),
(29, 'NhkKYdVKMsVR7F7xQgA9WQC8gkd1JGnhsdGalllN', '2020-02-06 20:22:39', '2020-02-06 20:22:39'),
(30, '4JN7WGtYpI2jPnYvrp6ng7h8KSjQUByD5FQBeMXn', '2020-02-06 20:26:24', '2020-02-06 20:26:24'),
(31, 'tsj1FdqWa6Ypvp9sMTfzmKrksKm0zk4eeBHWBPyB', '2020-02-06 20:27:48', '2020-02-06 20:27:48'),
(32, 'Riy66uyBbgcnGgPAtlAtzqIKGgS69xiecRCKDxKQ', '2020-02-06 20:34:46', '2020-02-06 20:34:46'),
(33, 'VEtqiHhe1A25ZTsIEYpKkp7rGBjn3ybBCj2fKeK6', '2020-02-06 20:47:45', '2020-02-06 20:47:45'),
(38, 's64P8fSYlJH7X0f3zgLTGRUKmDRsQxjLaPX1drxJ', '2020-02-10 09:43:38', '2020-02-10 09:43:38'),
(39, 'JqlGBGXVmxoIqRE0zftwL9r3Swrg1LwJxs4xi9HY', '2020-02-12 13:20:25', '2020-02-12 13:20:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `guest_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
