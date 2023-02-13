-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 13, 2023 at 01:15 PM
-- Server version: 5.7.40
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2023-02-12 04:17:06'),
(2, 0, 3, 'Admin', 'fa-tasks', '', NULL, NULL, '2023-02-12 05:36:19'),
(3, 2, 4, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2023-02-12 05:36:19'),
(4, 2, 5, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2023-02-12 05:36:19'),
(5, 2, 6, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2023-02-12 05:36:19'),
(6, 2, 7, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2023-02-12 05:36:19'),
(7, 2, 8, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2023-02-12 05:36:19'),
(8, 0, 2, 'Employees', 'fa-users', 'employees', NULL, '2023-02-12 05:36:15', '2023-02-12 05:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 2, 'admin', 'GET', '127.0.0.1', '[]', '2023-02-12 06:39:25', '2023-02-12 06:39:25'),
(2, 2, 'admin', 'GET', '127.0.0.1', '[]', '2023-02-12 06:40:15', '2023-02-12 06:40:15'),
(3, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:40:23', '2023-02-12 06:40:23'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-02-12 06:40:48', '2023-02-12 06:40:48'),
(5, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:40:55', '2023-02-12 06:40:55'),
(6, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Rubel\",\"password\":\"superadmin\",\"password_confirmation\":\"superadmin\",\"_token\":\"PQz6Gu379RSOCDbxj72VPuN6zkNqVJHraMV4dDup\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/employee-attendance.pp\\/admin\"}', '2023-02-12 06:41:02', '2023-02-12 06:41:02'),
(7, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:41:03', '2023-02-12 06:41:03'),
(8, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:42:10', '2023-02-12 06:42:10'),
(9, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:42:11', '2023-02-12 06:42:11'),
(10, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:42:19', '2023-02-12 06:42:19'),
(11, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:42:20', '2023-02-12 06:42:20'),
(12, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:42:28', '2023-02-12 06:42:28'),
(13, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:44:18', '2023-02-12 06:44:18'),
(14, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:44:21', '2023-02-12 06:44:21'),
(15, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:44:50', '2023-02-12 06:44:50'),
(16, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:44:57', '2023-02-12 06:44:57'),
(17, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:45:51', '2023-02-12 06:45:51'),
(18, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:45:56', '2023-02-12 06:45:56'),
(19, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:45:59', '2023-02-12 06:45:59'),
(20, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:46:01', '2023-02-12 06:46:01'),
(21, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-02-12 06:46:26', '2023-02-12 06:46:26'),
(22, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-02-12 06:46:28', '2023-02-12 06:46:28'),
(23, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-02-12 06:46:48', '2023-02-12 06:46:48'),
(24, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-02-12 06:47:21', '2023-02-12 06:47:21'),
(25, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-02-12 06:47:36', '2023-02-12 06:47:36'),
(26, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:47:41', '2023-02-12 06:47:41'),
(27, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:47:51', '2023-02-12 06:47:51'),
(28, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:47:54', '2023-02-12 06:47:54'),
(29, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:47:57', '2023-02-12 06:47:57'),
(30, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:48:12', '2023-02-12 06:48:12'),
(31, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:48:16', '2023-02-12 06:48:16'),
(32, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:51:59', '2023-02-12 06:51:59'),
(33, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:52:45', '2023-02-12 06:52:45'),
(34, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:53:17', '2023-02-12 06:53:17'),
(35, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Super Admin\",\"password\":\"superadmin@123\",\"password_confirmation\":\"superadmin@123\",\"_token\":\"PQz6Gu379RSOCDbxj72VPuN6zkNqVJHraMV4dDup\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/employee-attendance.pp\\/admin\\/auth\\/login\"}', '2023-02-12 06:53:47', '2023-02-12 06:53:47'),
(36, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-02-12 06:53:47', '2023-02-12 06:53:47'),
(37, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:53:52', '2023-02-12 06:53:52'),
(38, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-02-12 06:54:06', '2023-02-12 06:54:06'),
(39, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-12 06:55:12', '2023-02-12 06:55:12'),
(40, 2, 'admin', 'GET', '127.0.0.1', '[]', '2023-02-12 06:55:18', '2023-02-12 06:55:18'),
(41, 2, 'admin', 'GET', '127.0.0.1', '[]', '2023-02-13 05:38:58', '2023-02-13 05:38:58'),
(42, 2, 'admin', 'GET', '127.0.0.1', '[]', '2023-02-13 05:39:31', '2023-02-13 05:39:31'),
(43, 2, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:39:36', '2023-02-13 05:39:36'),
(44, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:39:43', '2023-02-13 05:39:43'),
(45, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-02-13 05:41:10', '2023-02-13 05:41:10'),
(46, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:41:19', '2023-02-13 05:41:19'),
(47, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:41:24', '2023-02-13 05:41:24'),
(48, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:41:35', '2023-02-13 05:41:35'),
(49, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:41:45', '2023-02-13 05:41:45'),
(50, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:41:49', '2023-02-13 05:41:49'),
(51, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:41:54', '2023-02-13 05:41:54'),
(52, 2, 'admin', 'GET', '127.0.0.1', '[]', '2023-02-13 05:42:27', '2023-02-13 05:42:27'),
(53, 2, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:42:29', '2023-02-13 05:42:29'),
(54, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",null],\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/employee-attendance.pp\\/admin\\/auth\\/roles\"}', '2023-02-13 05:42:34', '2023-02-13 05:42:34'),
(55, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2023-02-13 05:42:35', '2023-02-13 05:42:35'),
(56, 2, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 05:42:37', '2023-02-13 05:42:37'),
(57, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:42:45', '2023-02-13 05:42:45'),
(58, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":[\"1\",\"1\",null],\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/employee-attendance.pp\\/admin\\/auth\\/roles\"}', '2023-02-13 05:42:56', '2023-02-13 05:42:56'),
(59, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2023-02-13 05:42:56', '2023-02-13 05:42:56'),
(60, 2, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 05:43:00', '2023-02-13 05:43:00'),
(61, 2, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 05:43:01', '2023-02-13 05:43:01'),
(62, 2, 'admin/employees/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:43:02', '2023-02-13 05:43:02'),
(63, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:43:07', '2023-02-13 05:43:07'),
(64, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"employee\",\"name\":\"Employee\",\"permissions\":[\"1\",\"1\",null],\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/employee-attendance.pp\\/admin\\/auth\\/roles\"}', '2023-02-13 05:43:20', '2023-02-13 05:43:20'),
(65, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2023-02-13 05:43:21', '2023-02-13 05:43:21'),
(66, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:43:26', '2023-02-13 05:43:26'),
(67, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:43:34', '2023-02-13 05:43:34'),
(68, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:43:39', '2023-02-13 05:43:39'),
(69, 1, 'admin/employees/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:43:41', '2023-02-13 05:43:41'),
(70, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 05:45:39', '2023-02-13 05:45:39'),
(71, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 05:45:46', '2023-02-13 05:45:46'),
(72, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:46:03', '2023-02-13 05:46:03'),
(73, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:46:05', '2023-02-13 05:46:05'),
(74, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:46:18', '2023-02-13 05:46:18'),
(75, 1, 'admin/employees/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:46:19', '2023-02-13 05:46:19'),
(76, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 05:46:36', '2023-02-13 05:46:36'),
(77, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 05:46:39', '2023-02-13 05:46:39'),
(78, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 05:46:56', '2023-02-13 05:46:56'),
(79, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 05:51:33', '2023-02-13 05:51:33'),
(80, 1, 'admin/employees/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:51:36', '2023-02-13 05:51:36'),
(81, 1, 'admin/employees/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 05:51:37', '2023-02-13 05:51:37'),
(82, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 05:51:48', '2023-02-13 05:51:48'),
(83, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 05:52:03', '2023-02-13 05:52:03'),
(84, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 05:52:41', '2023-02-13 05:52:41'),
(85, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 05:53:22', '2023-02-13 05:53:22'),
(86, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Carson Love\",\"name\":\"Deborah Burton\",\"email\":\"balodyjy@mailinator.com\",\"mobile\":\"Fugit neque tempora\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Omnis qui dolor libe\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 05:53:31', '2023-02-13 05:53:31'),
(87, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 06:25:45', '2023-02-13 06:25:45'),
(88, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 06:37:37', '2023-02-13 06:37:37'),
(89, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 06:37:59', '2023-02-13 06:37:59'),
(90, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":null,\"mobile\":null,\"password\":null,\"c_password\":null,\"address\":null,\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:38:02', '2023-02-13 06:38:02'),
(91, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 06:40:20', '2023-02-13 06:40:20'),
(92, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":null,\"mobile\":null,\"password\":null,\"c_password\":null,\"address\":null,\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:40:40', '2023-02-13 06:40:40'),
(93, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":null,\"mobile\":null,\"password\":null,\"c_password\":null,\"address\":null,\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:40:51', '2023-02-13 06:40:51'),
(94, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 06:41:11', '2023-02-13 06:41:11'),
(95, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":null,\"mobile\":null,\"password\":null,\"c_password\":null,\"address\":null,\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:41:14', '2023-02-13 06:41:14'),
(96, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Dorothy Kelley\",\"name\":\"Hector Kirkland\",\"email\":\"kybenivoxa@mailinator.com\",\"mobile\":\"Non et magnam saepe\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Animi blanditiis qu\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:41:39', '2023-02-13 06:41:39'),
(97, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Dorothy Kelley\",\"name\":\"Hector Kirkland\",\"email\":\"kybenivoxa@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Animi blanditiis qu\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:41:46', '2023-02-13 06:41:46'),
(98, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 06:42:24', '2023-02-13 06:42:24'),
(99, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 06:42:33', '2023-02-13 06:42:33'),
(100, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":null,\"mobile\":null,\"password\":null,\"c_password\":null,\"address\":null,\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:42:35', '2023-02-13 06:42:35'),
(101, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Faith Ford\",\"name\":\"Faith Ford\",\"email\":\"rubel.codeware@gmail.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Dhaka\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:42:46', '2023-02-13 06:42:46'),
(102, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Faith Ford\",\"name\":\"Faith Ford\",\"email\":\"rubel.codeware@gmail.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Dhaka\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:43:15', '2023-02-13 06:43:15'),
(103, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Faith Ford\",\"name\":\"Faith Ford\",\"email\":\"rubel.codeware@gmail.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Dhaka\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:43:36', '2023-02-13 06:43:36'),
(104, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 06:43:39', '2023-02-13 06:43:39'),
(105, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":null,\"mobile\":null,\"password\":null,\"c_password\":null,\"address\":null,\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:45:09', '2023-02-13 06:45:09'),
(106, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 06:45:48', '2023-02-13 06:45:48'),
(107, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":null,\"mobile\":null,\"password\":null,\"c_password\":null,\"address\":null,\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:48:27', '2023-02-13 06:48:27'),
(108, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 06:48:35', '2023-02-13 06:48:35'),
(109, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Raven Thomas\",\"name\":\"Sierra Villarreal\",\"email\":\"nixupib@mailinator.com\",\"mobile\":\"05555555555555555\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ut ipsum praesentiu\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:48:46', '2023-02-13 06:48:46'),
(110, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Raven Thomas\",\"name\":\"Sierra Villarreal\",\"email\":\"nixupib@mailinator.com\",\"mobile\":\"0195555555555555555\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ut ipsum praesentiu\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:48:57', '2023-02-13 06:48:57'),
(111, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Raven Thomas\",\"name\":\"Sierra Villarreal\",\"email\":\"nixupib@mailinator.com\",\"mobile\":\"0175555555555555555\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ut ipsum praesentiu\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:49:08', '2023-02-13 06:49:08'),
(112, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Raven Thomas\",\"name\":\"Sierra Villarreal\",\"email\":\"nixupib@mailinator.com\",\"mobile\":\"0135555555555555555\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ut ipsum praesentiu\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:49:14', '2023-02-13 06:49:14'),
(113, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Raven Thomas\",\"name\":\"Sierra Villarreal\",\"email\":\"nixupib@mailinator.com\",\"mobile\":\"0135555555555555555\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ut ipsum praesentiu\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:49:56', '2023-02-13 06:49:56'),
(114, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Raven Thomas\",\"name\":\"Sierra Villarreal\",\"email\":\"nixupib@mailinator.com\",\"mobile\":\"0131111111111\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ut ipsum praesentiu\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:50:04', '2023-02-13 06:50:04'),
(115, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Raven Thomas\",\"name\":\"Sierra Villarreal\",\"email\":\"nixupib@mailinator.com\",\"mobile\":\"013111111111\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ut ipsum praesentiu\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:50:10', '2023-02-13 06:50:10'),
(116, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Raven Thomas\",\"name\":\"Sierra Villarreal\",\"email\":\"nixupib@mailinator.com\",\"mobile\":\"01311111111\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ut ipsum praesentiu\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:50:14', '2023-02-13 06:50:14'),
(117, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Raven Thomas\",\"name\":\"Sierra Villarreal\",\"email\":\"nixupib@mailinator.com\",\"mobile\":\"01311111111\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ut ipsum praesentiu\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:50:22', '2023-02-13 06:50:22'),
(118, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Raven Thomas\",\"name\":\"Sierra Villarreal\",\"email\":\"nixupib@mailinator.com\",\"mobile\":\"013111111111\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ut ipsum praesentiu\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:50:30', '2023-02-13 06:50:30'),
(119, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Raven Thomas\",\"name\":\"Sierra Villarreal\",\"email\":\"nixupib@mailinator.com\",\"mobile\":\"01311111111\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ut ipsum praesentiu\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:50:35', '2023-02-13 06:50:35'),
(120, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 06:50:51', '2023-02-13 06:50:51'),
(121, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Galvin Cole\",\"name\":\"Wilma Ratliff\",\"email\":\"cejef@mailinator.com\",\"mobile\":\"0131111111\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit autem exercitat\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:51:01', '2023-02-13 06:51:01'),
(122, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Galvin Cole\",\"name\":\"Wilma Ratliff\",\"email\":\"cejef@mailinator.com\",\"mobile\":\"01311111111\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit autem exercitat\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:51:19', '2023-02-13 06:51:19'),
(123, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Galvin Cole\",\"name\":\"Wilma Ratliff\",\"email\":\"cejef@mailinator.com\",\"mobile\":\"0131111111\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit autem exercitat\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:51:26', '2023-02-13 06:51:26'),
(124, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Galvin Cole\",\"name\":\"Wilma Ratliff\",\"email\":\"cejef@mailinator.com\",\"mobile\":\"01311111111111\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit autem exercitat\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:51:40', '2023-02-13 06:51:40'),
(125, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Galvin Cole\",\"name\":\"Wilma Ratliff\",\"email\":\"cejef@mailinator.com\",\"mobile\":\"01311111\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit autem exercitat\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:51:46', '2023-02-13 06:51:46'),
(126, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Galvin Cole\",\"name\":\"Wilma Ratliff\",\"email\":\"cejef@mailinator.com\",\"mobile\":\"0130000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit autem exercitat\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:51:58', '2023-02-13 06:51:58'),
(127, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Galvin Cole\",\"name\":\"Wilma Ratliff\",\"email\":\"cejef@mailinator.com\",\"mobile\":\"01300000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit autem exercitat\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:52:05', '2023-02-13 06:52:05'),
(128, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Galvin Cole\",\"name\":\"Wilma Ratliff\",\"email\":\"cejef@mailinator.com\",\"mobile\":\"01311111111\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit autem exercitat\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:52:11', '2023-02-13 06:52:11'),
(129, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Galvin Cole\",\"name\":\"Wilma Ratliff\",\"email\":\"cejef@mailinator.com\",\"mobile\":\"01708797991\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit autem exercitat\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 06:52:26', '2023-02-13 06:52:26'),
(130, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Galvin Cole\",\"name\":\"Wilma Ratliff\",\"email\":\"cejef@mailinator.com\",\"mobile\":\"01708797991\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit autem exercitat\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:01:19', '2023-02-13 07:01:19'),
(131, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Galvin Cole\",\"name\":\"Wilma Ratliff\",\"email\":\"cejef@mailinator.com\",\"mobile\":\"01708797991\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit autem exercitat\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:02:42', '2023-02-13 07:02:42'),
(132, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 07:02:44', '2023-02-13 07:02:44'),
(133, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Mariam Allen\",\"name\":\"Philip Williamson\",\"email\":\"xuhibycaze@mailinator.com\",\"mobile\":\"01708797845\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Incidunt eum repell\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:02:55', '2023-02-13 07:02:55'),
(134, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Mariam Allen\",\"name\":\"Philip Williamson\",\"email\":\"xuhibycaze@mailinator.com\",\"mobile\":\"01708797845\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Incidunt eum repell\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:03:25', '2023-02-13 07:03:25'),
(135, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Mariam Allen\",\"name\":\"Philip Williamson\",\"email\":\"xuhibycaze@mailinator.com\",\"mobile\":\"01708797845\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Incidunt eum repell\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:03:44', '2023-02-13 07:03:44'),
(136, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 07:03:47', '2023-02-13 07:03:47'),
(137, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Carly Compton\",\"name\":\"Edan Hill\",\"email\":\"zesomy@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Vel proident ut rei\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:04:05', '2023-02-13 07:04:05'),
(138, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Carly Compton\",\"name\":\"Edan Hill\",\"email\":\"zesomy@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Vel proident ut rei\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:04:42', '2023-02-13 07:04:42'),
(139, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Carly Compton\",\"name\":\"Edan Hill\",\"email\":\"zesomy@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Vel proident ut rei\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:05:34', '2023-02-13 07:05:34'),
(140, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 07:06:05', '2023-02-13 07:06:05'),
(141, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Zachary Donaldson\",\"name\":\"Aphrodite Mays\",\"email\":\"mypelup@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Nisi recusandae Ad\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:06:34', '2023-02-13 07:06:34'),
(142, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 07:09:31', '2023-02-13 07:09:31'),
(143, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Gemma Garza\",\"name\":\"Joseph Koch\",\"email\":\"becu@mailinator.com\",\"mobile\":\"Sed proident et eos\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Mohammadpur, Dhaka, Bangladesh\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:10:12', '2023-02-13 07:10:12'),
(144, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Gemma Garza\",\"name\":\"Joseph Koch\",\"email\":\"becu@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Mohammadpur, Dhaka, Bangladesh\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:10:18', '2023-02-13 07:10:18'),
(145, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Gemma Garza\",\"name\":\"Joseph Koch\",\"email\":\"becu@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Mohammadpur, Dhaka, Bangladesh\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:10:29', '2023-02-13 07:10:29'),
(146, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Gemma Garza\",\"name\":\"Joseph Koch\",\"email\":\"dddd@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Mohammadpur, Dhaka, Bangladesh\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:10:35', '2023-02-13 07:10:35'),
(147, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Gemma Garza\",\"name\":\"Joseph Koch\",\"email\":\"eeeee@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Mohammadpur, Dhaka, Bangladesh\",\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:10:46', '2023-02-13 07:10:46'),
(148, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 07:12:10', '2023-02-13 07:12:10'),
(149, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":null,\"mobile\":null,\"password\":null,\"c_password\":null,\"address\":null,\"status\":\"1\",\"_token\":\"a9rZzU4TPzkYSzKCvHcsbvB8ZSMaW8uKQEoJjSZK\"}', '2023-02-13 07:12:13', '2023-02-13 07:12:13'),
(150, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 07:12:28', '2023-02-13 07:12:28'),
(151, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 07:12:43', '2023-02-13 07:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2023-02-12 03:30:15', '2023-02-12 03:30:15'),
(2, 'Admin', 'admin', '2023-02-12 05:32:02', '2023-02-12 05:32:02'),
(3, 'Employee', 'employee', '2023-02-12 05:32:29', '2023-02-12 05:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(2, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 1, NULL, NULL),
(3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=admin, 2=employee',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `full_name`, `name`, `email`, `mobile`, `password`, `type`, `status`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md. Rubel Khan', 'Super Admin', 'superadmin@gmail.com', '01700000000', '$2y$10$jNGwiLI2PDj27rBlX0/OHeVp6dKGTmoxwo2Za3GbYzsJryzJLr77u', 1, 1, 'images/default-user-avatar.jpg', 'YszpdTNqlDZjz125zZsdadiDQHbML5FKkZqIoAUpQBm73obMOIpHvkAkRtXL', '2023-02-12 03:30:15', '2023-02-12 06:53:47'),
(2, 'admin', 'Retina Soft', 'admin@gmail.com', '01700000000', '$2y$10$y.OXCBr1hMGyvrirE/RRs.iCcKv8hqXsxVcycAjTj10/G2pRtDxv2', 1, 1, 'images/default-user-avatar.jpg', 'EIgujBqRIXFrM1Nc8T4aXE4I2SB1LqnS9BcQfDX60fw8JhqK5fXwU8R0AfVJ', '2023-02-12 05:34:43', '2023-02-12 05:34:43'),
(4, 'Gemma Garza', 'Joseph Koch', 'becu@mailinator.com', '01700000000', '$2y$10$cyiBp6PW03msDYquZNwHFeVrsp8bGkBqRH3VsYsAaqYwS80t6ZeOu', 2, 1, NULL, NULL, '2023-02-13 07:10:19', '2023-02-13 07:10:19'),
(5, 'Gemma Garza', 'Joseph Koch', 'dddd@mailinator.com', '01700000000', '$2y$10$ficAvIMy6KJN8tmz8/kStOU.xqU7ObFwvd/2SelAbV0avVLwQKEoy', 2, 1, NULL, NULL, '2023-02-13 07:10:35', '2023-02-13 07:10:35'),
(6, 'Gemma Garza', 'Joseph Koch', 'eeeee@mailinator.com', '01700000000', '$2y$10$LIJJpjhXAsY9EHyLm8vDiuZWp7/DwUN0OLsKQH/mFdVRWpI5O4n9a', 2, 1, 'images/1676293846.jpg', NULL, '2023-02-13 07:10:46', '2023-02-13 07:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `in_time` timestamp NOT NULL,
  `out_time` timestamp NOT NULL,
  `stay_time` timestamp NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_contacts`
--

CREATE TABLE `employee_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`id`, `employee_id`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(1, 6, 'Mohammadpur, Dhaka, Bangladesh', 'images/1676293846.jpg', '2023-02-13 07:10:46', '2023-02-13 07:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_12_113926_create_employee_details_table', 2),
(7, '2023_02_12_114117_create_employee_contacts_table', 2),
(8, '2023_02_12_114220_create_employee_attendances_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_attendances_employee_id_index` (`employee_id`);

--
-- Indexes for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_contacts_employee_id_index` (`employee_id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_details_employee_id_index` (`employee_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
