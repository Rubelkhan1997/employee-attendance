-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 13, 2023 at 06:56 PM
-- Server version: 5.7.33
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
(151, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 07:12:43', '2023-02-13 07:12:43'),
(152, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:43:55', '2023-02-13 08:43:55'),
(153, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 08:44:17', '2023-02-13 08:44:17'),
(154, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:44:20', '2023-02-13 08:44:20'),
(155, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 08:44:55', '2023-02-13 08:44:55'),
(156, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:44:55', '2023-02-13 08:44:55'),
(157, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:47:18', '2023-02-13 08:47:18'),
(158, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:48:20', '2023-02-13 08:48:20'),
(159, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:48:26', '2023-02-13 08:48:26'),
(160, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:50:47', '2023-02-13 08:50:47'),
(161, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:51:34', '2023-02-13 08:51:34'),
(162, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:52:04', '2023-02-13 08:52:04'),
(163, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:52:16', '2023-02-13 08:52:16'),
(164, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:53:44', '2023-02-13 08:53:44'),
(165, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:54:00', '2023-02-13 08:54:00'),
(166, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:55:57', '2023-02-13 08:55:57'),
(167, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:56:16', '2023-02-13 08:56:16'),
(168, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:57:18', '2023-02-13 08:57:18'),
(169, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Simon Rutledge\",\"name\":[\"Rudyard Humphrey\"],\"email\":[\"mata@mailinator.com\"],\"mobile\":[\"In consequatur Aspe\"],\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Porro quo similique\",\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 08:57:28', '2023-02-13 08:57:28'),
(170, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 08:57:55', '2023-02-13 08:57:55'),
(171, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Aristotle Mclean\",\"name\":\"Alden Bond\",\"email\":\"lasucum@mailinator.com\",\"mobile\":\"Id hic explicabo N\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Natus facilis sit co\",\"c_name\":[\"Cleo Horn\"],\"c_mobile\":[\"Qui architecto fugit\"],\"c_email\":[\"xaxuvafuqi@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 08:58:01', '2023-02-13 08:58:01'),
(172, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Aristotle Mclean\",\"name\":\"Alden Bond\",\"email\":\"lasucum@mailinator.com\",\"mobile\":\"kkkkkkkkkkk\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Natus facilis sit co\",\"c_name\":[\"Cleo Horn\"],\"c_mobile\":[\"Qui architecto fugit\"],\"c_email\":[\"xaxuvafuqi@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 08:58:11', '2023-02-13 08:58:11'),
(173, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Jeremy Booker\",\"name\":\"Scarlet Blankenship\",\"email\":\"nowofuvy@mailinator.com\",\"mobile\":\"01708797991\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Quia tenetur similiq\",\"c_name\":[\"Kaye Meyers\",\"Baker Chang\"],\"c_mobile\":[\"Totam ab recusandae\",\"Eos consequatur Con\"],\"c_email\":[\"qexawyr@mailinator.com\",\"lykepe@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:00:31', '2023-02-13 09:00:31'),
(174, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:01:15', '2023-02-13 09:01:15'),
(175, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"Deserunt natus susci\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\"],\"c_mobile\":[\"Ipsum ex assumenda\"],\"c_email\":[\"pyxydu@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:01:22', '2023-02-13 09:01:22'),
(176, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"lllllllllll\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\"],\"c_mobile\":[\"Ipsum ex assumenda\"],\"c_email\":[\"pyxydu@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:01:30', '2023-02-13 09:01:30'),
(177, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"01lllllllllll\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\"],\"c_mobile\":[\"Ipsum ex assumenda\"],\"c_email\":[\"pyxydu@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:01:40', '2023-02-13 09:01:40'),
(178, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"01llllllllll\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\"],\"c_mobile\":[\"Ipsum ex assumenda\"],\"c_email\":[\"pyxydu@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:01:47', '2023-02-13 09:01:47'),
(179, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\"],\"c_mobile\":[\"Ipsum ex assumenda\"],\"c_email\":[\"pyxydu@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:01:56', '2023-02-13 09:01:56'),
(180, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\"],\"c_mobile\":[\"Ipsum ex assumenda\"],\"c_email\":[\"pyxydu@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:02:04', '2023-02-13 09:02:04'),
(181, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_mobile\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_email\":[\"pyxydu@mailinator.com\",\"pyxydeu@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:02:24', '2023-02-13 09:02:24'),
(182, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_mobile\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_email\":[\"pyxydu@mailinator.com\",\"pyxydeu@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:07:01', '2023-02-13 09:07:01'),
(183, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_mobile\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_email\":[\"pyxydumailinator.com\",\"pyxydeu@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:07:22', '2023-02-13 09:07:22'),
(184, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_mobile\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_email\":[\"pyxydumailinator.com\",\"pyxydeu@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:07:52', '2023-02-13 09:07:52'),
(185, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_mobile\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_email\":[\"pyxydumailinator.com\",\"pyxydeu@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:10:23', '2023-02-13 09:10:23'),
(186, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_mobile\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_email\":[\"pyxydumailinator.com\",\"pyxydeu@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:12:07', '2023-02-13 09:12:07'),
(187, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 09:12:08', '2023-02-13 09:12:08'),
(188, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:12:29', '2023-02-13 09:12:29'),
(189, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Thane Bolton\",\"name\":\"Amal Ross\",\"email\":\"lojov@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Ullamco est non dolo\",\"c_name\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_mobile\":[\"Cyrus Potter\",\"Cyrus Potter\"],\"c_email\":[\"pyxydumaili@nator.com\",\"pyxydeu@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:12:29', '2023-02-13 09:12:29'),
(190, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"Non culpa aliquam m\",\"Qui architecto fugit\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:12:58', '2023-02-13 09:12:58'),
(191, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"Non culpa aliquam m\",\"Qui architecto fugit\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:13:09', '2023-02-13 09:13:09'),
(192, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"Non culpa aliquam m\",\"Qui architecto fugit\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:15:11', '2023-02-13 09:15:11'),
(193, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"Non culpa aliquam m\",\"Qui architecto fugit\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:19:42', '2023-02-13 09:19:42'),
(194, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"Non culpa aliquam m\",\"Qui architecto fugit\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:20:09', '2023-02-13 09:20:09'),
(195, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"Qui architecto fugit\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:20:13', '2023-02-13 09:20:13'),
(196, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"0174\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:20:20', '2023-02-13 09:20:20'),
(197, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 09:20:22', '2023-02-13 09:20:22'),
(198, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"0174\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:21:06', '2023-02-13 09:21:06'),
(199, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"0174\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:21:15', '2023-02-13 09:21:15'),
(200, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"0174\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:21:45', '2023-02-13 09:21:45'),
(201, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"017400000000\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:21:51', '2023-02-13 09:21:51'),
(202, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"017400000000000\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:21:54', '2023-02-13 09:21:54'),
(203, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"017400000000000\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:24:15', '2023-02-13 09:24:15'),
(204, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"017400000000000\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:24:41', '2023-02-13 09:24:41'),
(205, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"1000000\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:24:53', '2023-02-13 09:24:53');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(206, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"017\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:24:58', '2023-02-13 09:24:58'),
(207, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"01710101010\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:25:11', '2023-02-13 09:25:11'),
(208, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0170\",\"01710101010\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:25:20', '2023-02-13 09:25:20'),
(209, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"01710101010\",\"01710101010\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:25:30', '2023-02-13 09:25:30'),
(210, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0171010101\",\"01710101010\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:25:34', '2023-02-13 09:25:34'),
(211, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0171010101\",\"01710101010\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:26:13', '2023-02-13 09:26:13'),
(212, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Tanisha Joseph\",\"name\":\"Fulton Romero\",\"email\":\"gojyjiwef@mailinator.com\",\"mobile\":\"01708797998\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Odit deserunt dolore\",\"c_name\":[\"Chanda Maddox\",\"Cleo Horn\"],\"c_mobile\":[\"0171010101\",\"01710101010\"],\"c_email\":[\"mise@mailinator.com\",\"xaxuvafuqi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:30:41', '2023-02-13 09:30:41'),
(213, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:42:46', '2023-02-13 09:42:46'),
(214, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:43:15', '2023-02-13 09:43:15'),
(215, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:44:55', '2023-02-13 09:44:55'),
(216, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:45:53', '2023-02-13 09:45:53'),
(217, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:47:41', '2023-02-13 09:47:41'),
(218, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Samuel Sweeney\",\"name\":\"Demetria Blackwell\",\"email\":\"qokubag@mailinator.com\",\"mobile\":\"01708797991\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Fugiat soluta in un\",\"c_name\":[\"Tiger Mcclain\",\"Cyrus Potter\"],\"c_mobile\":[\"01700000000\",\"0154444444\"],\"c_email\":[\"vani@mailinator.com\",\"pyxydu@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:48:12', '2023-02-13 09:48:12'),
(219, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Samuel Sweeney\",\"name\":\"Demetria Blackwell\",\"email\":\"qokubag@mailinator.com\",\"mobile\":\"01708797991\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Fugiat soluta in un\",\"c_name\":[\"Tiger Mcclain\",\"Cyrus Potter\"],\"c_mobile\":[\"01700000000\",\"0154444444\"],\"c_email\":[\"vani@mailinator.com\",\"pyxydu@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:48:21', '2023-02-13 09:48:21'),
(220, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Samuel Sweeney\",\"name\":\"Demetria Blackwell\",\"email\":\"qokubag@mailinator.com\",\"mobile\":\"01708797991\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Fugiat soluta in un\",\"c_name\":[\"Tiger Mcclain\",\"Cyrus Potter\"],\"c_mobile\":[\"01700000000\",\"01745145147\"],\"c_email\":[\"vani@mailinator.com\",\"pyxydu@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:48:30', '2023-02-13 09:48:30'),
(221, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:49:07', '2023-02-13 09:49:07'),
(222, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:51:15', '2023-02-13 09:51:15'),
(223, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Kenneth Frederick\",\"name\":\"Georgia Carson\",\"email\":\"howaxod@mailinator.com\",\"mobile\":\"0171021546\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Facere maiores conse\",\"c_name\":[\"Evangeline Kennedy\"],\"c_mobile\":[\"Sint molestias iste\"],\"c_email\":[\"dakagi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:51:41', '2023-02-13 09:51:41'),
(224, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Kenneth Frederick\",\"name\":\"Georgia Carson\",\"email\":\"howaxod@mailinator.com\",\"mobile\":\"01741415415\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Facere maiores conse\",\"c_name\":[\"Evangeline Kennedy\"],\"c_mobile\":[\"Sint molestias iste\"],\"c_email\":[\"dakagi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:51:50', '2023-02-13 09:51:50'),
(225, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Kenneth Frederick\",\"name\":\"Georgia Carson\",\"email\":\"howaxod@mailinator.com\",\"mobile\":\"01741415415\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Facere maiores conse\",\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[\"dakagi@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:51:58', '2023-02-13 09:51:58'),
(226, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Kenneth Frederick\",\"name\":\"Georgia Carson\",\"email\":\"howaxod@mailinator.com\",\"mobile\":\"01741415415\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Facere maiores conse\",\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:52:04', '2023-02-13 09:52:04'),
(227, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Kenneth Frederick\",\"name\":\"Georgia Carson\",\"email\":\"howaxod@mailinator.com\",\"mobile\":\"01741415415\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Facere maiores conse\",\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:52:42', '2023-02-13 09:52:42'),
(228, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Kenneth Frederick\",\"name\":\"Georgia Carson\",\"email\":\"howaxod@mailinator.com\",\"mobile\":\"01741415415\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Facere maiores conse\",\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:53:51', '2023-02-13 09:53:51'),
(229, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Kenneth Frederick\",\"name\":\"Georgia Carson\",\"email\":\"howaxod@mailinator.com\",\"mobile\":\"01741415415\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Facere maiores conse\",\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:54:06', '2023-02-13 09:54:06'),
(230, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:54:08', '2023-02-13 09:54:08'),
(231, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:54:15', '2023-02-13 09:54:15'),
(232, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:54:29', '2023-02-13 09:54:29'),
(233, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[\"Cleo Horn\"],\"c_mobile\":[\"Qui architecto fugit\"],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:54:51', '2023-02-13 09:54:51'),
(234, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[\"Cleo Horn\",\"Cyrus Potter\"],\"c_mobile\":[\"Qui architecto fugit\",\"2222\"],\"c_email\":[null,\"pyxydu@mailinator.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:55:10', '2023-02-13 09:55:10'),
(235, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[\"Cleo Horn\"],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:55:25', '2023-02-13 09:55:25'),
(236, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[\"Cleo Horn\"],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:55:42', '2023-02-13 09:55:42'),
(237, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[\"Cleo Horn\"],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:55:51', '2023-02-13 09:55:51'),
(238, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:56:03', '2023-02-13 09:56:03'),
(239, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:56:07', '2023-02-13 09:56:07'),
(240, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:56:15', '2023-02-13 09:56:15'),
(241, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:56:21', '2023-02-13 09:56:21'),
(242, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:56:23', '2023-02-13 09:56:23'),
(243, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:56:27', '2023-02-13 09:56:27'),
(244, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:56:59', '2023-02-13 09:56:59'),
(245, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:57:20', '2023-02-13 09:57:20'),
(246, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:57:23', '2023-02-13 09:57:23'),
(247, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":null,\"name\":null,\"email\":\"superadmin@gmail.com\",\"mobile\":null,\"password\":\"superadmin@123\",\"c_password\":null,\"address\":null,\"c_name\":[null],\"c_mobile\":[null],\"c_email\":[null],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 09:57:34', '2023-02-13 09:57:34'),
(248, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:57:55', '2023-02-13 09:57:55'),
(249, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 09:58:39', '2023-02-13 09:58:39'),
(250, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 10:01:05', '2023-02-13 10:01:05'),
(251, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Geraldine Pittman\",\"name\":\"Ora Roy\",\"email\":\"guxulu@mailinator.com\",\"mobile\":\"01708797991\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Dolore doloribus odi\",\"c_name\":[\"Edward Walker\"],\"c_mobile\":[\"01700000000\"],\"c_email\":[\"gekuki@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 10:01:21', '2023-02-13 10:01:21'),
(252, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Geraldine Pittman\",\"name\":\"Ora Roy\",\"email\":\"guxfulu@mailinator.com\",\"mobile\":\"01708797991\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Dolore doloribus odi\",\"c_name\":[\"Edward Walker\"],\"c_mobile\":[\"01700000000\"],\"c_email\":[\"gekuki@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 10:01:37', '2023-02-13 10:01:37'),
(253, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Geraldine Pittman\",\"name\":\"Ora Roy\",\"email\":\"guxeeefulu@mailinator.com\",\"mobile\":\"01708797991\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Dolore doloribus odi\",\"c_name\":[\"Edward Walker\"],\"c_mobile\":[\"01700000000\"],\"c_email\":[\"gekuki@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 10:01:56', '2023-02-13 10:01:56'),
(254, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 10:02:45', '2023-02-13 10:02:45'),
(255, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"April Griffin\",\"name\":\"Martin Hyde\",\"email\":\"kazorumibu@mailinator.com\",\"mobile\":\"01708797999\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Enim non nulla iste\",\"c_name\":[\"Kimberley Hess\"],\"c_mobile\":[\"01700000000\"],\"c_email\":[\"qobugabyva@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 10:03:02', '2023-02-13 10:03:02'),
(256, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"April Griffin\",\"name\":\"Martin Hyde\",\"email\":\"kazorumibu@mailinator.com\",\"mobile\":\"01708797999\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Enim non nulla iste\",\"c_name\":[\"Kimberley Hess\"],\"c_mobile\":[\"01700000000\"],\"c_email\":[\"qobugabyva@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 10:03:24', '2023-02-13 10:03:24'),
(257, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"April Griffin\",\"name\":\"Martin Hyde\",\"email\":\"kazorumibuee@mailinator.com\",\"mobile\":\"01708797999\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Enim non nulla iste\",\"c_name\":[\"Kimberley Hess\"],\"c_mobile\":[\"01700000000\"],\"c_email\":[\"qobugabyva@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 10:03:29', '2023-02-13 10:03:29'),
(258, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 10:25:25', '2023-02-13 10:25:25'),
(259, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 10:25:26', '2023-02-13 10:25:26'),
(260, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 10:26:43', '2023-02-13 10:26:43'),
(261, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 10:26:45', '2023-02-13 10:26:45'),
(262, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 10:26:46', '2023-02-13 10:26:46'),
(263, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 10:26:56', '2023-02-13 10:26:56'),
(264, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:28:12', '2023-02-13 10:28:12'),
(265, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:29:01', '2023-02-13 10:29:01'),
(266, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:29:16', '2023-02-13 10:29:16'),
(267, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:29:26', '2023-02-13 10:29:26'),
(268, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:29:31', '2023-02-13 10:29:31'),
(269, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:29:52', '2023-02-13 10:29:52'),
(270, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:29:59', '2023-02-13 10:29:59'),
(271, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:33:03', '2023-02-13 10:33:03'),
(272, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:35:17', '2023-02-13 10:35:17'),
(273, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:35:28', '2023-02-13 10:35:28'),
(274, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:35:50', '2023-02-13 10:35:50'),
(275, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:36:02', '2023-02-13 10:36:02'),
(276, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:36:38', '2023-02-13 10:36:38'),
(277, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:36:43', '2023-02-13 10:36:43'),
(278, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:36:57', '2023-02-13 10:36:57'),
(279, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 10:37:17', '2023-02-13 10:37:17'),
(280, 1, 'admin/employees/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 11:37:51', '2023-02-13 11:37:51'),
(281, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 11:37:56', '2023-02-13 11:37:56'),
(282, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 11:37:57', '2023-02-13 11:37:57'),
(283, 1, 'admin/employees/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 11:38:00', '2023-02-13 11:38:00'),
(284, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:38:01', '2023-02-13 11:38:01'),
(285, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:39:00', '2023-02-13 11:39:00'),
(286, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:40:16', '2023-02-13 11:40:16'),
(287, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:41:46', '2023-02-13 11:41:46'),
(288, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:43:16', '2023-02-13 11:43:16'),
(289, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:44:36', '2023-02-13 11:44:36'),
(290, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:47:36', '2023-02-13 11:47:36'),
(291, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:48:00', '2023-02-13 11:48:00'),
(292, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:48:12', '2023-02-13 11:48:12'),
(293, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:48:32', '2023-02-13 11:48:32'),
(294, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:49:12', '2023-02-13 11:49:12'),
(295, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:50:03', '2023-02-13 11:50:03'),
(296, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:50:27', '2023-02-13 11:50:27'),
(297, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:50:39', '2023-02-13 11:50:39'),
(298, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:50:48', '2023-02-13 11:50:48'),
(299, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Hilda Mccullough\",\"name\":\"Kelsey Love\",\"email\":\"kalocis@mailinator.com\",\"mobile\":\"0000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Aut laudantium ad n\",\"c_name\":[\"Yael Reilly\"],\"c_mobile\":[\"01700000000\"],\"c_email\":[\"nyxir@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 11:51:17', '2023-02-13 11:51:17'),
(300, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Hilda Mccullough\",\"name\":\"Kelsey Love\",\"email\":\"kalocis@mailinator.com\",\"mobile\":\"0000000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Aut laudantium ad n\",\"c_name\":[\"Yael Reilly\"],\"c_mobile\":[\"01700000000\"],\"c_email\":[\"nyxir@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 11:51:29', '2023-02-13 11:51:29'),
(301, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Hilda Mccullough\",\"name\":\"Kelsey Love\",\"email\":\"kalocis@mailinator.com\",\"mobile\":\"0100000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Aut laudantium ad n\",\"c_name\":[\"Yael Reilly\"],\"c_mobile\":[\"01700000000\"],\"c_email\":[\"nyxir@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 11:51:36', '2023-02-13 11:51:36'),
(302, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Hilda Mccullough\",\"name\":\"Kelsey Love\",\"email\":\"kalocis@mailinator.com\",\"mobile\":\"01700000000\",\"password\":\"Pa$$w0rd!\",\"c_password\":\"Pa$$w0rd!\",\"address\":\"Aut laudantium ad n\",\"c_name\":[\"Yael Reilly\"],\"c_mobile\":[\"01700000000\"],\"c_email\":[\"nyxir@mailinator.com\"],\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 11:51:41', '2023-02-13 11:51:41'),
(303, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 11:51:48', '2023-02-13 11:51:48'),
(304, 1, 'admin/employees/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 11:53:11', '2023-02-13 11:53:11'),
(305, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:53:45', '2023-02-13 11:53:45'),
(306, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 11:53:46', '2023-02-13 11:53:46'),
(307, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 11:54:20', '2023-02-13 11:54:20'),
(308, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 11:55:09', '2023-02-13 11:55:09'),
(309, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 11:55:32', '2023-02-13 11:55:32'),
(310, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:55:34', '2023-02-13 11:55:34'),
(311, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:55:39', '2023-02-13 11:55:39'),
(312, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:56:06', '2023-02-13 11:56:06'),
(313, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 11:56:07', '2023-02-13 11:56:07'),
(314, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:56:10', '2023-02-13 11:56:10'),
(315, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 11:56:23', '2023-02-13 11:56:23'),
(316, 1, 'admin/employees/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 11:56:26', '2023-02-13 11:56:26'),
(317, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 11:56:48', '2023-02-13 11:56:48'),
(318, 1, 'admin/employees/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 11:56:51', '2023-02-13 11:56:51'),
(319, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 11:57:36', '2023-02-13 11:57:36'),
(320, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 11:57:37', '2023-02-13 11:57:37'),
(321, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:57:41', '2023-02-13 11:57:41'),
(322, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:58:21', '2023-02-13 11:58:21'),
(323, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:58:25', '2023-02-13 11:58:25'),
(324, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:58:28', '2023-02-13 11:58:28'),
(325, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 11:58:47', '2023-02-13 11:58:47'),
(326, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 11:59:22', '2023-02-13 11:59:22'),
(327, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 11:59:24', '2023-02-13 11:59:24'),
(328, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 12:00:06', '2023-02-13 12:00:06'),
(329, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:00:43', '2023-02-13 12:00:43'),
(330, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 12:00:44', '2023-02-13 12:00:44'),
(331, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 12:02:31', '2023-02-13 12:02:31'),
(332, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 12:03:45', '2023-02-13 12:03:45'),
(333, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-02-13 12:04:54', '2023-02-13 12:04:54'),
(334, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 12:04:56', '2023-02-13 12:04:56'),
(335, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:06:05', '2023-02-13 12:06:05'),
(336, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 12:17:32', '2023-02-13 12:17:32'),
(337, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 12:18:04', '2023-02-13 12:18:04'),
(338, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 12:18:40', '2023-02-13 12:18:40'),
(339, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 12:19:46', '2023-02-13 12:19:46'),
(340, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 12:20:38', '2023-02-13 12:20:38'),
(341, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 12:20:40', '2023-02-13 12:20:40'),
(342, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:20:41', '2023-02-13 12:20:41'),
(343, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 12:20:42', '2023-02-13 12:20:42'),
(344, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"MD: Rubel Khan\",\"name\":\"Rubel\",\"email\":\"rubel@gmail.com\",\"password\":\"rubel@123\",\"c_password\":\"rubel@123\",\"address\":\"Mohammadpur, Dhaka\",\"c_name\":[\"MD: Rubel Khan\",\"MD; mamun Khan\"],\"c_mobile\":[\"01700000000\",\"01700000000\"],\"c_email\":[\"rubel@gmail.com\",\"mamun@gmail.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 12:22:40', '2023-02-13 12:22:40'),
(345, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 12:23:27', '2023-02-13 12:23:27'),
(346, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:23:54', '2023-02-13 12:23:54'),
(347, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:25:14', '2023-02-13 12:25:14'),
(348, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 12:25:30', '2023-02-13 12:25:30'),
(349, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 12:26:04', '2023-02-13 12:26:04'),
(350, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 12:26:06', '2023-02-13 12:26:06'),
(351, 1, 'admin/employees', 'POST', '127.0.0.1', '{\"full_name\":\"Md: Mamun Hossen\",\"name\":\"Mamun\",\"email\":\"mamun@gmail.com\",\"password\":\"mamun@123\",\"c_password\":\"mamun@123\",\"address\":\"Mohammadpur, Dhaka\",\"c_name\":[\"Mamun\",\"Rubel\"],\"c_mobile\":[\"01700000000\",\"01700000000\"],\"c_email\":[\"mamun@gmail.com\",\"rubel@gmail.com\"],\"status\":\"1\",\"_token\":\"a5LACwxeKGe7s4asdA9rDyYzvnlBxOavijIu1JnO\"}', '2023-02-13 12:27:36', '2023-02-13 12:27:36'),
(352, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:27:37', '2023-02-13 12:27:37'),
(353, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:31:33', '2023-02-13 12:31:33'),
(354, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:32:42', '2023-02-13 12:32:42'),
(355, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:32:54', '2023-02-13 12:32:54'),
(356, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"1\"}', '2023-02-13 12:32:58', '2023-02-13 12:32:58'),
(357, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\"}', '2023-02-13 12:33:02', '2023-02-13 12:33:02'),
(358, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\"}', '2023-02-13 12:36:05', '2023-02-13 12:36:05'),
(359, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\"}', '2023-02-13 12:36:07', '2023-02-13 12:36:07'),
(360, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\"}', '2023-02-13 12:36:19', '2023-02-13 12:36:19'),
(361, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"1\"}', '2023-02-13 12:36:57', '2023-02-13 12:36:57'),
(362, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"1\"}', '2023-02-13 12:38:06', '2023-02-13 12:38:06'),
(363, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\"}', '2023-02-13 12:38:21', '2023-02-13 12:38:21'),
(364, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"1\"}', '2023-02-13 12:38:39', '2023-02-13 12:38:39'),
(365, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\"}', '2023-02-13 12:38:41', '2023-02-13 12:38:41'),
(366, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"0\"}', '2023-02-13 12:38:44', '2023-02-13 12:38:44'),
(367, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"0\"}', '2023-02-13 12:39:16', '2023-02-13 12:39:16'),
(368, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"0\"}', '2023-02-13 12:39:27', '2023-02-13 12:39:27'),
(369, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"0\"}', '2023-02-13 12:40:28', '2023-02-13 12:40:28'),
(370, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"0\"}', '2023-02-13 12:43:13', '2023-02-13 12:43:13'),
(371, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"0\"}', '2023-02-13 12:43:28', '2023-02-13 12:43:28'),
(372, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"0\"}', '2023-02-13 12:46:55', '2023-02-13 12:46:55'),
(373, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"1\",\"name\":null}', '2023-02-13 12:47:14', '2023-02-13 12:47:14'),
(374, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\",\"name\":null}', '2023-02-13 12:47:17', '2023-02-13 12:47:17'),
(375, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\",\"name\":\"Md.Rubel Khan\"}', '2023-02-13 12:47:21', '2023-02-13 12:47:21'),
(376, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\",\"name\":\"Md.Rubel Khan\"}', '2023-02-13 12:48:44', '2023-02-13 12:48:44'),
(377, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\",\"name\":null}', '2023-02-13 12:48:49', '2023-02-13 12:48:49'),
(378, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\",\"name\":\"Rubel\"}', '2023-02-13 12:49:02', '2023-02-13 12:49:02'),
(379, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\",\"name\":\"Rubel\"}', '2023-02-13 12:49:04', '2023-02-13 12:49:04'),
(380, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\",\"name\":\"MD; mamun Khan\"}', '2023-02-13 12:49:13', '2023-02-13 12:49:13'),
(381, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"2\",\"name\":\"MD; mamun Khan\"}', '2023-02-13 12:49:52', '2023-02-13 12:49:52'),
(382, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 12:49:54', '2023-02-13 12:49:54'),
(383, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:52:46', '2023-02-13 12:52:46'),
(384, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:53:04', '2023-02-13 12:53:04'),
(385, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:53:32', '2023-02-13 12:53:32'),
(386, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:53:47', '2023-02-13 12:53:47'),
(387, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:54:04', '2023-02-13 12:54:04'),
(388, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:54:28', '2023-02-13 12:54:28'),
(389, 1, 'admin/employees', 'GET', '127.0.0.1', '[]', '2023-02-13 12:55:07', '2023-02-13 12:55:07'),
(390, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"0\",\"name\":\"Mamun\"}', '2023-02-13 12:55:30', '2023-02-13 12:55:30'),
(391, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"0\",\"name\":\"mamun Khan\"}', '2023-02-13 12:55:39', '2023-02-13 12:55:39'),
(392, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"status\":\"0\",\"name\":null}', '2023-02-13 12:55:46', '2023-02-13 12:55:46'),
(393, 1, 'admin/employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-02-13 12:56:02', '2023-02-13 12:56:02'),
(394, 1, 'admin/employees/create', 'GET', '127.0.0.1', '[]', '2023-02-13 12:56:06', '2023-02-13 12:56:06');

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

INSERT INTO `admin_users` (`id`, `full_name`, `name`, `email`, `password`, `type`, `status`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md. Rubel Khan', 'Super Admin', 'superadmin@gmail.com', '$2y$10$jNGwiLI2PDj27rBlX0/OHeVp6dKGTmoxwo2Za3GbYzsJryzJLr77u', 1, 1, 'images/default-user-avatar.jpg', 'YszpdTNqlDZjz125zZsdadiDQHbML5FKkZqIoAUpQBm73obMOIpHvkAkRtXL', '2023-02-12 03:30:15', '2023-02-12 06:53:47'),
(2, 'admin', 'Retina Soft', 'admin@gmail.com', '$2y$10$y.OXCBr1hMGyvrirE/RRs.iCcKv8hqXsxVcycAjTj10/G2pRtDxv2', 1, 1, 'images/default-user-avatar.jpg', 'EIgujBqRIXFrM1Nc8T4aXE4I2SB1LqnS9BcQfDX60fw8JhqK5fXwU8R0AfVJ', '2023-02-12 05:34:43', '2023-02-12 05:34:43'),
(13, 'MD: Rubel Khan', 'Rubel', 'rubel@gmail.com', '$2y$10$gmQ23o9NgVIvbNueQHQ3ZubqTt436qO0FjpemvKur2m9edGO7jiOG', 2, 0, 'images/1676312560.jpg', NULL, '2023-02-13 12:22:40', '2023-02-13 12:22:40'),
(14, 'Md: Mamun Hossen', 'Mamun', 'mamun@gmail.com', '$2y$10$Sfz1KV9vu0Lnpajxm0/GwOTbQtYzXO7QsapBJhCz6soImNrYws9bC', 2, 1, 'images/1676312857.jpg', NULL, '2023-02-13 12:27:37', '2023-02-13 12:27:37');

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

--
-- Dumping data for table `employee_contacts`
--

INSERT INTO `employee_contacts` (`id`, `employee_id`, `contact_name`, `contact_email`, `contact_phone`, `created_at`, `updated_at`) VALUES
(1, 13, 'MD: Rubel Khan', '01700000000', 'rubel@gmail.com', '2023-02-13 12:22:40', '2023-02-13 12:22:40'),
(2, 13, 'MD; mamun Khan', '01700000000', 'mamun@gmail.com', '2023-02-13 12:22:40', '2023-02-13 12:22:40'),
(3, 14, 'Mamun', '01700000000', 'mamun@gmail.com', '2023-02-13 12:27:37', '2023-02-13 12:27:37'),
(4, 14, 'Rubel', '01700000000', 'rubel@gmail.com', '2023-02-13 12:27:37', '2023-02-13 12:27:37');

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
(1, 13, 'Mohammadpur, Dhaka', 'images/1676312560.jpg', '2023-02-13 12:22:40', '2023-02-13 12:22:40'),
(2, 14, 'Mohammadpur, Dhaka', 'images/1676312857.jpg', '2023-02-13 12:27:37', '2023-02-13 12:27:37');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
