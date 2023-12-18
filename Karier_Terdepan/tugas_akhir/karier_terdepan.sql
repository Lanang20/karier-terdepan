-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 06:06 PM
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
-- Database: `karier_terdepan`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add minat', 6, 'add_minat'),
(22, 'Can change minat', 6, 'change_minat'),
(23, 'Can delete minat', 6, 'delete_minat'),
(24, 'Can view minat', 6, 'view_minat'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add jurusan', 8, 'add_jurusan'),
(30, 'Can change jurusan', 8, 'change_jurusan'),
(31, 'Can delete jurusan', 8, 'delete_jurusan'),
(32, 'Can view jurusan', 8, 'view_jurusan'),
(33, 'Can add soal minat', 9, 'add_soalminat'),
(34, 'Can change soal minat', 9, 'change_soalminat'),
(35, 'Can delete soal minat', 9, 'delete_soalminat'),
(36, 'Can view soal minat', 9, 'view_soalminat'),
(37, 'Can add tes', 10, 'add_tes'),
(38, 'Can change tes', 10, 'change_tes'),
(39, 'Can delete tes', 10, 'delete_tes'),
(40, 'Can view tes', 10, 'view_tes'),
(41, 'Can add jawaban minat', 11, 'add_jawabanminat'),
(42, 'Can change jawaban minat', 11, 'change_jawabanminat'),
(43, 'Can delete jawaban minat', 11, 'delete_jawabanminat'),
(44, 'Can view jawaban minat', 11, 'view_jawabanminat'),
(45, 'Can add penjurusan', 12, 'add_penjurusan'),
(46, 'Can change penjurusan', 12, 'change_penjurusan'),
(47, 'Can delete penjurusan', 12, 'delete_penjurusan'),
(48, 'Can view penjurusan', 12, 'view_penjurusan');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-12-08 04:35:17.333796', '1', 'Minat object (1)', 1, '[{\"added\": {}}]', 6, 1),
(2, '2023-12-08 04:35:54.432567', '2', 'Minat object (2)', 1, '[{\"added\": {}}]', 6, 1),
(3, '2023-12-08 04:36:38.513347', '3', 'Minat object (3)', 1, '[{\"added\": {}}]', 6, 1),
(4, '2023-12-08 04:37:11.279950', '4', 'Minat object (4)', 1, '[{\"added\": {}}]', 6, 1),
(5, '2023-12-08 04:37:39.799943', '5', 'Minat object (5)', 1, '[{\"added\": {}}]', 6, 1),
(6, '2023-12-08 04:38:04.818082', '6', 'Minat object (6)', 1, '[{\"added\": {}}]', 6, 1),
(7, '2023-12-08 04:41:33.482888', '1', 'SoalMinat object (1)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2023-12-08 04:45:02.391449', '2', 'SoalMinat object (2)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2023-12-08 04:47:45.104073', '3', 'SoalMinat object (3)', 1, '[{\"added\": {}}]', 9, 1),
(10, '2023-12-08 04:50:15.786933', '4', 'SoalMinat object (4)', 1, '[{\"added\": {}}]', 9, 1),
(11, '2023-12-08 04:53:31.120410', '5', 'SoalMinat object (5)', 1, '[{\"added\": {}}]', 9, 1),
(12, '2023-12-08 04:55:38.983190', '6', 'SoalMinat object (6)', 1, '[{\"added\": {}}]', 9, 1),
(13, '2023-12-08 04:58:37.285873', '7', 'SoalMinat object (7)', 1, '[{\"added\": {}}]', 9, 1),
(14, '2023-12-08 05:01:05.279194', '8', 'SoalMinat object (8)', 1, '[{\"added\": {}}]', 9, 1),
(15, '2023-12-08 05:03:12.242511', '9', 'SoalMinat object (9)', 1, '[{\"added\": {}}]', 9, 1),
(16, '2023-12-08 05:06:19.295173', '10', 'SoalMinat object (10)', 1, '[{\"added\": {}}]', 9, 1),
(17, '2023-12-08 05:08:49.762564', '1', 'Jurusan object (1)', 1, '[{\"added\": {}}]', 8, 1),
(18, '2023-12-08 05:09:30.088667', '2', 'Jurusan object (2)', 1, '[{\"added\": {}}]', 8, 1),
(19, '2023-12-08 05:10:30.352240', '3', 'Jurusan object (3)', 1, '[{\"added\": {}}]', 8, 1),
(20, '2023-12-08 05:11:08.524263', '4', 'Jurusan object (4)', 1, '[{\"added\": {}}]', 8, 1),
(21, '2023-12-08 05:11:40.524455', '5', 'Jurusan object (5)', 1, '[{\"added\": {}}]', 8, 1),
(22, '2023-12-08 05:12:18.973303', '6', 'Jurusan object (6)', 1, '[{\"added\": {}}]', 8, 1),
(23, '2023-12-08 05:13:02.313489', '7', 'Jurusan object (7)', 1, '[{\"added\": {}}]', 8, 1),
(24, '2023-12-08 05:13:42.621040', '8', 'Jurusan object (8)', 1, '[{\"added\": {}}]', 8, 1),
(25, '2023-12-08 05:14:15.909269', '9', 'Jurusan object (9)', 1, '[{\"added\": {}}]', 8, 1),
(26, '2023-12-08 05:14:46.073679', '10', 'Jurusan object (10)', 1, '[{\"added\": {}}]', 8, 1),
(27, '2023-12-08 05:15:23.510516', '11', 'Jurusan object (11)', 1, '[{\"added\": {}}]', 8, 1),
(28, '2023-12-08 05:16:00.270695', '12', 'Jurusan object (12)', 1, '[{\"added\": {}}]', 8, 1),
(29, '2023-12-08 05:16:48.460655', '13', 'Jurusan object (13)', 1, '[{\"added\": {}}]', 8, 1),
(30, '2023-12-08 05:17:16.770188', '14', 'Jurusan object (14)', 1, '[{\"added\": {}}]', 8, 1),
(31, '2023-12-08 05:17:53.133552', '15', 'Jurusan object (15)', 1, '[{\"added\": {}}]', 8, 1),
(32, '2023-12-08 05:18:29.502603', '16', 'Jurusan object (16)', 1, '[{\"added\": {}}]', 8, 1),
(33, '2023-12-08 05:18:58.046924', '17', 'Jurusan object (17)', 1, '[{\"added\": {}}]', 8, 1),
(34, '2023-12-08 05:20:07.723597', '18', 'Jurusan object (18)', 1, '[{\"added\": {}}]', 8, 1),
(35, '2023-12-08 05:20:48.968528', '19', 'Jurusan object (19)', 1, '[{\"added\": {}}]', 8, 1),
(36, '2023-12-08 05:21:18.191535', '20', 'Jurusan object (20)', 1, '[{\"added\": {}}]', 8, 1),
(37, '2023-12-08 05:21:55.612407', '21', 'Jurusan object (21)', 1, '[{\"added\": {}}]', 8, 1),
(38, '2023-12-08 05:22:24.965020', '22', 'Jurusan object (22)', 1, '[{\"added\": {}}]', 8, 1),
(39, '2023-12-08 05:22:52.764152', '23', 'Jurusan object (23)', 1, '[{\"added\": {}}]', 8, 1),
(40, '2023-12-08 05:23:25.656180', '24', 'Jurusan object (24)', 1, '[{\"added\": {}}]', 8, 1),
(41, '2023-12-08 05:23:54.321510', '25', 'Jurusan object (25)', 1, '[{\"added\": {}}]', 8, 1),
(42, '2023-12-08 05:24:30.506665', '26', 'Jurusan object (26)', 1, '[{\"added\": {}}]', 8, 1),
(43, '2023-12-08 05:25:03.736753', '27', 'Jurusan object (27)', 1, '[{\"added\": {}}]', 8, 1),
(44, '2023-12-08 05:25:39.761241', '28', 'Jurusan object (28)', 1, '[{\"added\": {}}]', 8, 1),
(45, '2023-12-08 05:26:08.409857', '29', 'Jurusan object (29)', 1, '[{\"added\": {}}]', 8, 1),
(46, '2023-12-08 05:26:35.932709', '30', 'Jurusan object (30)', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(11, 'karier_terdepan', 'jawabanminat'),
(8, 'karier_terdepan', 'jurusan'),
(6, 'karier_terdepan', 'minat'),
(12, 'karier_terdepan', 'penjurusan'),
(9, 'karier_terdepan', 'soalminat'),
(10, 'karier_terdepan', 'tes'),
(7, 'karier_terdepan', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-08 03:00:52.354503'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-12-08 03:00:52.462879'),
(3, 'auth', '0001_initial', '2023-12-08 03:00:52.816603'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-12-08 03:00:52.891010'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-12-08 03:00:52.906007'),
(6, 'auth', '0004_alter_user_username_opts', '2023-12-08 03:00:52.919012'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-12-08 03:00:52.940018'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-12-08 03:00:52.944015'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-12-08 03:00:52.957015'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-12-08 03:00:52.971254'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-12-08 03:00:52.984248'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-12-08 03:00:53.009280'),
(13, 'auth', '0011_update_proxy_permissions', '2023-12-08 03:00:53.027256'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-12-08 03:00:53.038244'),
(15, 'karier_terdepan', '0001_initial', '2023-12-08 03:00:54.239268'),
(16, 'admin', '0001_initial', '2023-12-08 03:00:54.458451'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-12-08 03:00:54.480429'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-08 03:00:54.512431'),
(19, 'sessions', '0001_initial', '2023-12-08 03:00:54.596434'),
(20, 'karier_terdepan', '0002_penjurusan', '2023-12-09 13:26:37.256327'),
(21, 'karier_terdepan', '0003_alter_penjurusan_jurusan', '2023-12-09 13:31:37.747190');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3ymlo051xsqx0pkfgthjnidp8rftyzun', '.eJxVjDsOwjAQRO_iGln-x6akzxms3bWDA8iW4qRC3J1ESgHdaN6bebMI21ri1vMS58SuzLDLb4dAz1wPkB5Q741Tq-syIz8UftLOx5by63a6fwcFetnXEHBCNGS1H2wIjrSRZGHQQXmpwGolpRckLNnkwmRQZgCl0p5QOOPY5wvT4Tdn:1rCWeG:N-O-wXPzM44AmjAT7DnZH9u0fVi68uGo3uoA7cm7gV4', '2023-12-25 03:08:00.966710'),
('i3cis6j9o44fpokryn7nqrp6hejtkd3m', '.eJxVjDsOwjAQRO_iGln-x6akzxms3bWDA8iW4qRC3J1ESgHdaN6bebMI21ri1vMS58SuzLDLb4dAz1wPkB5Q741Tq-syIz8UftLOx5by63a6fwcFetnXEHBCNGS1H2wIjrSRZGHQQXmpwGolpRckLNnkwmRQZgCl0p5QOOPY5wvT4Tdn:1rCfO7:4f2EEroFHFwvxkF9RZFFNlrOhgLbqYqL894Y7xBb0HA', '2023-12-25 12:27:55.172347');

-- --------------------------------------------------------

--
-- Table structure for table `karier_terdepan_jawabanminat`
--

CREATE TABLE `karier_terdepan_jawabanminat` (
  `id` bigint(20) NOT NULL,
  `jawaban` varchar(10) NOT NULL,
  `id_soal_id` bigint(20) NOT NULL,
  `tes_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karier_terdepan_jawabanminat`
--

INSERT INTO `karier_terdepan_jawabanminat` (`id`, `jawaban`, `id_soal_id`, `tes_id`) VALUES
(51, '6', 1, 10),
(52, '5', 2, 10),
(53, '1', 3, 10),
(54, '6', 4, 10),
(55, '2', 5, 10),
(56, '6', 6, 10),
(57, '5', 7, 10),
(58, '4', 8, 10),
(59, '5', 9, 10),
(60, '6', 10, 10),
(61, '1', 1, 11),
(62, '1', 2, 11),
(63, '4', 3, 11),
(64, '4', 4, 11),
(65, '5', 5, 11),
(66, '3', 6, 11),
(67, '4', 7, 11),
(68, '5', 8, 11),
(69, '1', 9, 11),
(70, '1', 10, 11),
(71, '2', 1, 12),
(72, '1', 2, 12),
(73, '3', 3, 12),
(74, '2', 4, 12),
(75, '1', 5, 12),
(76, '1', 6, 12),
(77, '6', 7, 12),
(78, '2', 8, 12),
(79, '2', 9, 12),
(80, '2', 10, 12),
(81, '3', 1, 13),
(82, '3', 2, 13),
(83, '3', 3, 13),
(84, '3', 4, 13),
(85, '3', 5, 13),
(86, '3', 6, 13),
(87, '3', 7, 13),
(88, '3', 8, 13),
(89, '3', 9, 13),
(90, '3', 10, 13),
(91, '4', 1, 14),
(92, '1', 2, 14),
(93, '1', 3, 14),
(94, '3', 4, 14),
(95, '3', 5, 14),
(96, '1', 6, 14),
(97, '6', 7, 14),
(98, '2', 8, 14),
(99, '3', 9, 14),
(100, '1', 10, 14),
(101, '2', 1, 15),
(102, '2', 2, 15),
(103, '5', 3, 15),
(104, '2', 4, 15),
(105, '2', 5, 15),
(106, '5', 6, 15),
(107, '1', 7, 15),
(108, '3', 8, 15),
(109, '4', 9, 15),
(110, '5', 10, 15),
(111, '3', 1, 16),
(112, '1', 2, 16),
(113, '6', 3, 16),
(114, '2', 4, 16),
(115, '1', 5, 16),
(116, '1', 6, 16),
(117, '6', 7, 16),
(118, '3', 8, 16),
(119, '3', 9, 16),
(120, '1', 10, 16),
(121, '1', 1, 17),
(122, '1', 2, 17),
(123, '3', 3, 17),
(124, '2', 4, 17),
(125, '3', 5, 17),
(126, '2', 6, 17),
(127, '2', 1, 19),
(128, '4', 2, 19),
(129, '1', 3, 19),
(130, '2', 4, 19),
(131, '3', 5, 19),
(132, '2', 6, 19),
(133, '6', 7, 19),
(134, '5', 8, 19),
(135, '4', 9, 19),
(136, '4', 10, 19),
(137, '1', 1, 21),
(138, '6', 1, 22),
(139, '2', 2, 22),
(140, '1', 3, 22),
(141, '6', 4, 22),
(142, '2', 5, 22),
(143, '6', 6, 22),
(144, '5', 7, 22),
(145, '6', 8, 22),
(146, '1', 9, 22),
(147, '4', 10, 22),
(148, '2', 1, 23),
(149, '2', 2, 23),
(150, '2', 3, 23),
(151, '2', 4, 23),
(152, '4', 5, 23),
(153, '5', 6, 23),
(154, '2', 7, 23),
(155, '4', 8, 23),
(156, '2', 9, 23),
(157, '6', 10, 23),
(158, '5', 1, 24),
(159, '6', 2, 24),
(160, '2', 3, 24),
(161, '3', 4, 24),
(162, '2', 5, 24),
(163, '3', 6, 24),
(164, '3', 7, 24),
(165, '4', 8, 24),
(166, '1', 9, 24),
(167, '5', 10, 24),
(168, '4', 1, 26),
(169, '4', 2, 26),
(170, '6', 3, 26),
(171, '3', 4, 26),
(172, '2', 5, 26),
(173, '3', 6, 26),
(174, '6', 7, 26),
(175, '6', 8, 26),
(176, '4', 9, 26),
(177, '2', 10, 26),
(178, '1', 1, 27),
(179, '6', 2, 27),
(180, '2', 3, 27),
(181, '3', 4, 27),
(182, '5', 5, 27),
(183, '5', 6, 27),
(184, '4', 7, 27),
(185, '2', 8, 27),
(186, '2', 9, 27),
(187, '1', 10, 27);

-- --------------------------------------------------------

--
-- Table structure for table `karier_terdepan_jurusan`
--

CREATE TABLE `karier_terdepan_jurusan` (
  `id` bigint(20) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `prospek_kerja` longtext NOT NULL,
  `minat_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karier_terdepan_jurusan`
--

INSERT INTO `karier_terdepan_jurusan` (`id`, `nama_jurusan`, `deskripsi`, `prospek_kerja`, `minat_id`) VALUES
(1, 'Teknik sipil', 'Mempelajari tentang perencanaan, pelaksanaan, dan pemeliharaan infrastruktur, seperti jalan, jembatan, gedung, dan irigasi. Mahasiswa akan mempelajari prinsip-prinsip teknik sipil dan keterampilan praktis terkait konstruksi.', 'Insinyur sipil, arsitek, kontraktor, konsultan teknik, peneliti, dosen, dan Mereka juga dapat terlibat dalam pengembangan proyek infrastruktur.', 1),
(2, 'Teknik mesin', 'Merupakan jurusan yang mempelajari tentang perencanaan, desain, pembuatan, dan pemeliharaan mesin. Lulusan Teknik Mesin memiliki keterampilan dalam mendesain, menganalisis, dan membuat mesin.', 'Lulusan teknik mesin dapat bekerja sebagai insinyur desain, teknisi perawatan mesin, atau ahli produksi. Mereka juga dapat terlibat dalam riset dan pengembangan teknologi baru.', 1),
(3, 'Pertanian', 'Merupakan jurusan yang mempelajari tentang ilmu pertanian, mulai dari produksi, pengolahan, hingga pemasaran hasil pertanian. Lulusan Pertanian memiliki keterampilan dalam mengelola pertanian, mulai dari proses budidaya hingga pemasaran hasil pertanian.', 'Lulusan pertanian dapat bekerja sebagai agronom, Produksi pertanian, peneliti pertanian, Pengolahan hasil pertanian, atau konsultan pertanian. Mereka juga dapat terlibat dalam pengelolaan agribisnis.', 1),
(4, 'Teknik Elektro', 'Merupakan jurusan yang mempelajari tentang perencanaan, desain, pembuatan, dan pemeliharaan peralatan listrik. Lulusan Teknik Elektro memiliki keterampilan dalam mendesain, menganalisis, dan membuat peralatan listrik.', 'Lulusan teknik elektro dapat bekerja sebagai insinyur listrik, perancang sirkuit, elektronika, robotika, atau spesialis telekomunikasi. Mereka juga dapat terlibat dalam riset dan pengembangan teknologi elektrik.', 1),
(5, 'Teknik Kimia', 'Merupakan jurusan yang mempelajari tentang ilmu kimia, mulai dari sintesis, analisis, hingga proses kimia. Lulusan Teknik Kimia memiliki keterampilan dalam mendesain, menganalisis, dan membuat proses kimia.', 'Lulusan teknik kimia dapat bekerja dalam industri kimia, minyak dan gas, farmasi, atau lingkungan. Mereka dapat mengejar karier sebagai insinyur proses, ahli keberlanjutan, atau peneliti kimia.', 1),
(6, 'Informatika', 'Merupakan jurusan yang mempelajari tentang ilmu komputer, mulai dari pemrograman, sistem informasi, hingga kecerdasan buatan. Lulusan Informatika memiliki keterampilan dalam merancang, mengembangkan, dan menguji perangkat lunak.', 'Lulusan informatika memiliki peluang bekerja sebagai Software engineer, Data scientist, Web developer, Mobile developer, Network engineer, Sistem informasi, Analis system, Konsultan IT, administrator basis data, atau spesialis keamanan informasi. Mereka juga dapat terlibat dalam pengembangan solusi teknologi informasi.', 2),
(7, 'Statistika', 'Merupakan jurusan yang mempelajari tentang ilmu statistika, mulai dari teori statistika, metode statistika, hingga aplikasi statistika. Lulusan Statistika memiliki keterampilan dalam mengumpulkan, menganalisis, dan menyajikan data.', 'Lulusan statistika dapat bekerja sebagai analis data, ilmuwan data, statistikawan, guru, peneliti atau konsultan statistika. Mereka memiliki peran kunci dalam membuat keputusan berdasarkan data dan merumuskan strategi bisnis.', 2),
(8, 'Fisika', 'Merupakan jurusan yang mempelajari tentang ilmu fisika, mulai dari mekanika, termodinamika, hingga listrik dan magnet. Lulusan Fisika memiliki keterampilan dalam memahami dan menerapkan hukum-hukum fisika.', 'Lulusan fisika dapat bekerja sebagai peneliti fisika, pengajar, insinyur, atau ahli kebijakan sains. Mereka juga dapat berkontribusi pada pengembangan teknologi baru.', 2),
(9, 'Biologi', 'Merupakan jurusan yang mempelajari tentang ilmu biologi, mulai dari biologi sel, biologi molekuler, hingga biologi evolusi. Nantinya lulusan Biologi memiliki keterampilan dalam memahami dan menerapkan prinsip-prinsip biologi.', 'Lulusan biologi dapat bekerja sebagai peneliti biologi, ahli ekologi, Teknisi laboratorium, atau guru biologi. Mereka juga dapat terlibat dalam industri farmasi, kesehatan, atau konservasi lingkungan.', 2),
(10, 'Kimia', 'Merupakan jurusan yang mempelajari tentang ilmu kimia, mulai dari struktur atom, reaksi kimia, hingga sintesis kimia. Lulusan Kimia memiliki keterampilan dalam memahami dan menerapkan prinsip-prinsip kimia.', 'Lulusan kimia dapat bekerja dalam industri kimia, farmasi, teknologi material, insinyur, peneliti, atau laboratorium penelitian. Mereka juga dapat terlibat dalam pengembangan produk kimia baru atau kualitas bahan.', 2),
(11, 'Seni rupa', 'Merupakan jurusan yang mempelajari tentang seni visual, mulai dari menggambar, melukis, hingga patung. Lulusan Seni Rupa memiliki keterampilan dalam mengekspresikan diri melalui karya seni visual.', 'Lulusan seni rupa dapat menjadi seniman independen, kurator seni, desainer visual, atau ilustrator. Mereka juga dapat bekerja dalam industri kreatif seperti periklanan atau desain grafis.', 3),
(12, 'Desain komunikasi visual', 'Merupakan jurusan yang mempelajari tentang bagaimana menyampaikan pesan secara efektif melalui media visual. Lulusan Desain Komunikasi Visual memiliki keterampilan dalam merancang dan membuat berbagai produk komunikasi visual, seperti poster, iklan, logo, dan website.', 'Lulusan desain komunikasi visual dapat bekerja sebagai desainer grafis, ilustrator, animator, atau spesialis multimedia. Mereka memiliki peran kunci dalam menciptakan identitas merek dan komunikasi visual yang efektif.', 3),
(13, 'Sastra', 'Merupakan jurusan yang mempelajari tentang bahasa dan sastra, mulai dari sejarah sastra, teori sastra, hingga kritik sastra. Lulusan Sastra memiliki keterampilan dalam menganalisis dan memahami karya sastra.', 'Lulusan sastra dapat bekerja sebagai penulis, editor, penerjemah, atau guru bahasa dan sastra. Mereka juga dapat terlibat dalam industri penerbitan, media, atau bidang kreatif lainnya.', 3),
(14, 'Music', 'Merupakan jurusan yang mempelajari tentang musik, mulai dari teori musik, komposisi musik, hingga aransemen musik. Lulusan Musik memiliki keterampilan dalam memainkan alat musik, menulis musik, dan menciptakan musik.', 'Lulusan musik dapat menjadi musisi profesional, guru musik, produser musik, atau penulis lagu. Mereka juga dapat terlibat dalam industri rekaman, pertunjukan langsung, atau pendidikan musik.', 3),
(15, 'Desain produk', 'Merupakan jurusan yang mempelajari tentang desain produk, mulai dari konseptualisasi, perancangan, hingga produksi produk. Lulusan Desain Produk memiliki keterampilan dalam mendesain produk yang fungsional dan estetis.', 'Lulusan desain produk dapat bekerja sebagai desainer industri, insinyur produk, atau pengembang produk. Mereka juga dapat terlibat dalam inovasi produk dan riset pasar untuk mendukung pengembangan produk yang sukses.', 3),
(16, 'Ilmu komunikasi', 'Merupakan jurusan yang mempelajari tentang proses komunikasi, mulai dari teori komunikasi, media komunikasi, hingga komunikasi massa. Lulusan Ilmu Komunikasi memiliki keterampilan dalam menyampaikan pesan secara efektif kepada khalayak.', 'Lulusan ilmu komunikasi dapat bekerja sebagai spesialis media sosial, jurnalis, hubungan masyarakat, periklanan, atau pemasaran. Mereka juga dapat terlibat dalam produksi media atau pekerjaan di bidang pemasaran.', 4),
(17, 'Pendidikan sosiologi', 'Merupakan jurusan yang mempelajari tentang ilmu sosiologi, mulai dari teori sosiologi, metode penelitian sosial, hingga sosiologi pendidikan. Lulusan Pendidikan Sosiologi memiliki keterampilan dalam menganalisis fenomena sosial dan mengembangkan program pendidikan.', 'Lulusan pendidikan sosiologi dapat menjadi guru, peneliti pendidikan, konsultan pendidikan, atau pengembang kurikulum. Mereka juga dapat bekerja dalam lembaga-lembaga penelitian atau organisasi non-pemerintah yang berfokus pada pendidikan.', 4),
(18, 'Psikologi', 'Merupakan jurusan yang mempelajari tentang ilmu psikologi, mulai dari teori psikologi, metode penelitian psikologi, hingga psikologi klinis. Lulusan Psikologi memiliki keterampilan dalam memahami perilaku manusia dan memberikan bantuan psikologis.', 'Lulusan psikologi dapat bekerja sebagai konselor, psikolog klinis, analis perilaku, atau manajer sumber daya manusia. Mereka juga dapat terlibat dalam riset psikologi di berbagai bidang.', 4),
(19, 'Pendidikan guru sekolah dasar', 'Merupakan jurusan yang mempelajari tentang ilmu pendidikan, mulai dari teori pendidikan, metode pembelajaran, hingga kurikulum pendidikan dasar. Lulusan Pendidikan Guru Sekolah Dasar memiliki keterampilan dalam mengajar dan mendidik anak-anak usia sekolah dasar.', 'Lulusan pendidikan guru sekolah dasar dapat bekerja sebagai guru kelas dasar, koordinator kurikulum, atau pengembang materi pendidikan. Mereka juga dapat berkontribusi pada pengelolaan dan pengembangan sekolah.', 4),
(20, 'Hubungan internasional', 'Merupakan jurusan yang mempelajari tentang hubungan internasional, mulai dari teori hubungan internasional, kebijakan luar negeri, hingga diplomasi. Lulusan Hubungan Internasional memiliki keterampilan dalam memahami dan menangani isu-isu internasional.', 'Lulusan hubungan internasional dapat bekerja sebagai diplomat, analis kebijakan luar negeri, pejabat hubungan internasional, atau konsultan keamanan global. Mereka juga dapat berkarier dalam organisasi internasional atau lembaga pemerintah terkait luar negeri.', 4),
(21, 'Manajemen bisnis', 'Merupakan jurusan yang mempelajari tentang pengelolaan bisnis, mulai dari perencanaan, pengorganisasian, pengarahan, dan pengendalian. Lulusan Manajemen Bisnis memiliki keterampilan dalam mengelola perusahaan atau organisasi.', 'Lulusan manajemen bisnis dapat bekerja sebagai manajer umum, analis bisnis, konsultan manajemen, atau pengusaha. Mereka juga dapat terlibat dalam pengelolaan sumber daya manusia, operasi bisnis, atau pengembangan strategi perusahaan.', 5),
(22, 'Manajemen keuangan', 'Merupakan jurusan yang mempelajari tentang pengelolaan keuangan, mulai dari perencanaan, penganggaran, investasi, hingga pelaporan keuangan. Lulusan Manajemen Keuangan memiliki keterampilan dalam mengelola keuangan perusahaan atau organisasi.', 'Lulusan manajemen keuangan dapat bekerja sebagai analis keuangan, manajer keuangan, konsultan pajak, atau analis investasi. Mereka juga dapat terlibat dalam manajemen risiko keuangan atau pengelolaan portofolio.', 5),
(23, 'Kewirausahaan', 'Merupakan jurusan yang mempelajari tentang cara memulai dan mengelola usaha sendiri. Lulusan Kewirausahaan memiliki keterampilan dalam menciptakan dan mengembangkan bisnis baru.', 'Lulusan kewirausahaan dapat menjadi pengusaha, pemilik bisnis kecil, manajer bisnis startup, atau konsultan bisnis. Mereka juga dapat terlibat dalam inovasi produk atau pengembangan bisnis baru.', 5),
(24, 'Hubungan masyarakat', 'Merupakan jurusan yang mempelajari tentang cara membangun dan memelihara hubungan antara organisasi dengan publiknya. Lulusan Hubungan Masyarakat memiliki keterampilan dalam berkomunikasi dan membangun citra positif bagi organisasi.', 'Lulusan hubungan masyarakat dapat bekerja sebagai spesialis hubungan masyarakat, manajer komunikasi, atau konsultan komunikasi. Mereka juga dapat terlibat dalam manajemen acara atau pemasaran perusahaan.', 5),
(25, 'Pemasaran', 'Merupakan jurusan yang mempelajari tentang cara memasarkan produk atau jasa kepada konsumen. Lulusan Pemasaran memiliki keterampilan dalam memahami kebutuhan konsumen dan mengembangkan strategi pemasaran yang efektif.', 'Lulusan pemasaran dapat bekerja sebagai manajer pemasaran, spesialis iklan, analis riset pasar, atau manajer merek. Mereka juga dapat terlibat dalam pengembangan strategi pemasaran digital atau manajemen hubungan pelanggan.', 5),
(26, 'Ilmu administrasi negara', 'Merupakan jurusan yang mempelajari tentang administrasi pemerintahan, mulai dari perencanaan, pengorganisasian, pengarahan, dan pengendalian. Lulusan Ilmu Administrasi Negara memiliki keterampilan dalam mengelola pemerintahan dan organisasi publik.', 'Lulusan ilmu administrasi negara dapat bekerja sebagai pegawai pemerintah, analis kebijakan, manajer proyek pemerintah, atau administrator publik. Mereka juga dapat terlibat dalam pengelolaan program pelayanan publik.', 6),
(27, 'Akuntansi', 'Merupakan jurusan yang mempelajari tentang pencatatan, pelaporan, dan analisis keuangan. Lulusan Akuntansi memiliki keterampilan dalam mengelola keuangan perusahaan atau organisasi.', 'Lulusan akuntansi dapat bekerja sebagai akuntan publik, auditor, analis keuangan, atau manajer keuangan. Mereka juga dapat berkarier dalam bidang perpajakan atau konsultasi keuangan.', 6),
(28, 'Hukum', 'Merupakan jurusan yang mempelajari tentang hukum, mulai dari hukum publik, hukum privat, hingga hukum internasional. Lulusan Hukum memiliki keterampilan dalam memahami dan menerapkan hukum.', 'Lulusan hukum dapat menjadi advokat, jaksa, hakim, atau konsultan hukum. Mereka juga dapat berkarier dalam sektor bisnis sebagai ahli hukum perusahaan atau manajer kepatuhan.', 6),
(29, 'Ekonomi', 'Merupakan jurusan yang mempelajari tentang ilmu ekonomi, mulai dari teori ekonomi, metode ekonomi, hingga kebijakan ekonomi. Lulusan Ekonomi memiliki keterampilan dalam memahami dan menganalisis ekonomi.', 'Lulusan ekonomi dapat bekerja sebagai ekonom, analis riset ekonomi, konsultan kebijakan ekonomi, atau manajer risiko ekonomi. Mereka juga dapat terlibat dalam analisis pasar dan perencanaan keuangan.', 6),
(30, 'Manajemen perkantoran', 'Merupakan jurusan yang mempelajari tentang pengelolaan kantor, mulai dari administrasi, tata usaha, hingga manajemen informasi. Lulusan Manajemen Perkantoran memiliki keterampilan dalam mengelola kantor secara efektif dan efisien.', 'Lulusan manajemen perkantoran dapat bekerja sebagai manajer administrasi, sekretaris eksekutif, atau koordinator administratif. Mereka juga dapat terlibat dalam manajemen layanan pelanggan atau pengelolaan operasional perkantoran.', 6);

-- --------------------------------------------------------

--
-- Table structure for table `karier_terdepan_minat`
--

CREATE TABLE `karier_terdepan_minat` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karier_terdepan_minat`
--

INSERT INTO `karier_terdepan_minat` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Realistic', 'Aspek minat Anda adalah Realistic (Tipe Pelaksana atau Praktis). Anda menyukai aktivitas yang melibatkan keterampilan fisik dan keahlian praktis. Pekerjaan dengan alat, mesin, atau hewan mungkin sangat sesuai untuk Anda. Bidang karir yang cocok termasuk konstruksi, teknik, pertanian, atau pekerjaan yang memerlukan keahlian manual.'),
(2, 'Investigative', 'Aspek minat Anda adalah Investigative (Tipe Peneliti atau Analitis). Anda memiliki minat dalam aktivitas penelitian, analisis, dan pengumpulan informasi. Menyelesaikan masalah kompleks dan mengeksplorasi ide-ide baru mungkin menjadi kekuatan Anda. Karir di bidang ilmu pengetahuan, riset, teknologi informasi, atau analisis data dapat menjadi pilihan yang cocok.'),
(3, 'Artistic', 'Aspek minat Anda adalah Artistic (Tipe Pencipta atau Kreatif). Anda cenderung menikmati kegiatan yang memungkinkan ekspresi kreatif. Dunia seni, musik, teater, atau pekerjaan yang membutuhkan imajinasi dan inovasi mungkin sesuai dengan minat Anda. Karir di seni visual, desain, musik, atau penulisan kreatif dapat memenuhi kebutuhan minat ini.'),
(4, 'Social', 'Aspek minat Anda adalah Social (Tipe Sosial). Anda menyukai bekerja dengan orang lain dan memberikan bantuan. Minat Anda mungkin berada dalam pekerjaan yang melibatkan perhatian terhadap kesejahteraan sosial, kesehatan, atau pendidikan. Bidang karir yang sesuai termasuk layanan sosial, kesehatan masyarakat, pendidikan, atau pekerjaan di sektor non-profit.'),
(5, 'Enterprising', 'Aspek minat Anda adalah Enterprising (Tipe Komunikatif). Anda suka bekerja dengan orang, terlibat dalam aktivitas persuasif, dan memiliki kemampuan kepemimpinan. Minat Anda mungkin terletak pada bisnis, penjualan, pemasaran, atau pengembangan bisnis. Karir di bidang manajemen, pemasaran, keuangan, atau wirausaha mungkin sesuai dengan kepribadian Anda.'),
(6, 'Conventional', 'Aspek minat Anda adalah Conventional (Tipe Administratif). Anda cenderung suka dengan pekerjaan yang melibatkan kegiatan administratif dan pengaturan. Menyukai rutinitas, mengorganisir data, dan bekerja dengan informasi terstruktur mungkin merupakan keahlian Anda. Karir di bidang administrasi, keuangan, atau perencanaan dapat sesuai dengan minat dan keterampilan administratif Anda.');

-- --------------------------------------------------------

--
-- Table structure for table `karier_terdepan_penjurusan`
--

CREATE TABLE `karier_terdepan_penjurusan` (
  `id` bigint(20) NOT NULL,
  `jurusan` longtext NOT NULL,
  `minat_id` bigint(20) NOT NULL,
  `tes_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karier_terdepan_penjurusan`
--

INSERT INTO `karier_terdepan_penjurusan` (`id`, `jurusan`, `minat_id`, `tes_id`, `user_id`) VALUES
(1, 'Ilmu administrasi negara, Akuntansi, Hukum, Ekonomi, Manajemen perkantoran', 6, 10, 4),
(2, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(3, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(4, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(5, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(6, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(7, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(8, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(9, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(10, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(11, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(12, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(13, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(14, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(15, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(16, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(17, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(18, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(19, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(20, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(21, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(22, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 11, 4),
(23, 'Informatika, Statistika, Fisika, Biologi, Kimia', 2, 12, 4),
(24, 'Seni rupa, Desain komunikasi visual, Sastra, Music, Desain produk', 3, 13, 4),
(25, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 14, 4),
(26, 'Informatika, Statistika, Fisika, Biologi, Kimia', 2, 15, 8),
(27, 'Teknik sipil, Teknik mesin, Pertanian, Teknik Elektro, Teknik Kimia', 1, 16, 8),
(28, 'Informatika, Statistika, Fisika, Biologi, Kimia', 2, 19, 11),
(29, 'Ilmu administrasi negara, Akuntansi, Hukum, Ekonomi, Manajemen perkantoran', 6, 22, 4),
(30, 'Informatika, Statistika, Fisika, Biologi, Kimia', 2, 23, 4),
(31, 'Seni rupa, Desain komunikasi visual, Sastra, Music, Desain produk', 3, 24, 12),
(32, 'Ilmu komunikasi, Pendidikan sosiologi, Psikologi, Pendidikan guru sekolah dasar, Hubungan internasional', 4, 26, 13),
(33, 'Informatika, Statistika, Fisika, Biologi, Kimia', 2, 27, 13);

-- --------------------------------------------------------

--
-- Table structure for table `karier_terdepan_soalminat`
--

CREATE TABLE `karier_terdepan_soalminat` (
  `id` bigint(20) NOT NULL,
  `soal` longtext NOT NULL,
  `pilihan_a` longtext NOT NULL,
  `pilihan_b` longtext NOT NULL,
  `pilihan_c` longtext NOT NULL,
  `pilihan_d` longtext NOT NULL,
  `pilihan_e` longtext NOT NULL,
  `pilihan_f` longtext NOT NULL,
  `minat_a_id` bigint(20) NOT NULL,
  `minat_b_id` bigint(20) NOT NULL,
  `minat_c_id` bigint(20) NOT NULL,
  `minat_d_id` bigint(20) NOT NULL,
  `minat_e_id` bigint(20) NOT NULL,
  `minat_f_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karier_terdepan_soalminat`
--

INSERT INTO `karier_terdepan_soalminat` (`id`, `soal`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`, `pilihan_f`, `minat_a_id`, `minat_b_id`, `minat_c_id`, `minat_d_id`, `minat_e_id`, `minat_f_id`) VALUES
(1, 'Ketika bertemu orang baru, saya cenderung...', 'Berbicara tentang kegiatan atau pekerjaan praktis yang saya nikmati.', 'Membahas topik-topik mendalam dan pengetahuan yang saya miliki.', 'Menunjukkan minat pada seni, kreativitas, atau hobi saya.', 'Bertanya tentang kehidupan dan pengalaman orang lain.', 'Membahas peluang bisnis atau proyek baru.', 'Berbicara tentang tugas administratif atau tindakan terorganisir yang saya sukai.', 1, 2, 3, 4, 5, 6),
(2, 'Ketika di kelas atau dalam tim, saya cenderung...', 'Menyukai tugas yang terorganisir dan membutuhkan ketertiban.', 'Menyukai proyek yang melibatkan keterampilan fisik dan aktivitas lapangan.', 'Mengambil peran dalam membuat presentasi kreatif atau seni.', 'Bekerjasama dengan teman-teman untuk mencapai tujuan bersama.', 'Bertanggung jawab untuk menganalisis data dan membuat keputusan.', 'Mengambil inisiatif dalam proyek dan memimpin tim.', 6, 1, 3, 4, 2, 5),
(3, 'Saat di rumah, saya sering...', 'Membaca buku atau mencari tahu informasi baru.', 'Menjaga tata ruang atau mengorganisir barang-barang di rumah.', 'Mengekspresikan diri melalui seni atau kreativitas.', 'Melibatkan diri dalam kegiatan keluarga atau sosial.', 'Merencanakan atau terlibat dalam proyek bisnis kecil.', 'Menyukai kegiatan yang melibatkan perbaikan atau pekerjaan rumah tangga.', 2, 6, 3, 4, 5, 1),
(4, 'Saat dihadapkan pada keputusan besar, saya lebih memilih...', 'Menggunakan intuisi dan kreativitas untuk memandu pilihan.', 'Melakukan riset dan analisis sebelum membuat keputusan.', 'Memilih opsi yang praktis dan dapat diimplementasikan dengan cepat.', 'Mengambil inisiatif dan risiko untuk mencapai hasil yang diinginkan.', 'Berkonsultasi dengan orang-orang terdekat untuk mendapatkan masukan.', 'Mengikuti prosedur yang sudah ditetapkan dalam pengambilan keputusan.', 3, 2, 1, 5, 4, 6),
(5, 'Saat mencari hiburan atau rekreasi, saya lebih tertarik...', 'Terlibat dalam permainan atau kegiatan yang memicu kompetisi.', 'Aktivitas yang melibatkan kegiatan fisik atau petualangan.', 'Menghadiri acara seni atau menciptakan sesuatu dengan tangan.', 'Menghabiskan waktu bersama teman-teman atau keluarga.', 'Mengikuti rencana atau jadwal yang sudah ditentukan.', 'Membaca buku, menonton dokumenter, atau mengeksplorasi ide-ide baru.', 5, 1, 3, 4, 6, 2),
(6, 'Saat bekerja dalam tim, saya cenderung...', 'Mengambil peran kepemimpinan dan memotivasi anggota tim.', 'Menyumbangkan keahlian praktis dan bekerja secara efisien.', 'Menyajikan ide-ide analitis dan solusi yang terencana.', 'Memberikan sentuhan kreatif atau inovatif dalam mencapai tujuan kelompok.', 'Menjaga hubungan baik dan membantu dalam dinamika sosial kelompok.', 'Menjalankan tugas administratif dan mengatur tugas kelompok.', 5, 1, 2, 3, 4, 6),
(7, 'Ketika dihadapkan pada tugas yang belum pernah saya lakukan sebelumnya, saya cenderung...', 'Berkonsultasi dengan orang lain untuk mendapatkan pandangan dan saran.', 'Mengikuti panduan dan prosedur yang ada untuk menyelesaikan tugas.', 'Mencoba secara langsung dengan pemecahan masalah praktis.', 'Melakukan riset dan belajar sebanyak mungkin tentang tugas tersebut.', 'Membawa unsur kreatif dan ide segar dalam menyelesaikan tugas.', 'Mengambil inisiatif untuk memimpin dan mengarahkan tim.', 4, 6, 1, 2, 3, 5),
(8, 'Saat berkumpul dengan teman-teman, kegiatan apa yang biasanya Anda nikmati?', 'Berdiskusi tentang topik menarik atau berita terbaru.', 'Bermain olahraga atau aktivitas fisik bersama.', 'Mengadakan acara seni atau kreatif bersama.', 'Mengorganisir kegiatan atau proyek bersama.', 'Menetapkan rencana atau jadwal untuk pertemuan.', 'Membicarakan kehidupan dan menawarkan dukungan sosial.', 2, 1, 3, 5, 6, 4),
(9, 'Saat memilih film atau acara TV, preferensi saya adalah...', 'Film dokumenter atau cerita yang menuntut pemikiran analitis.', 'Karya seni atau film yang menampilkan visual dan kreativitas yang tinggi.', 'Film atau acara yang menampilkan petualangan atau aktivitas fisik.', 'Drama atau film yang menyoroti hubungan sosial dan dinamika kelompok.', 'Film dengan plot yang terstruktur dan tata cerita yang jelas.', 'Film yang menginspirasi dalam hal kepemimpinan atau kisah bisnis.', 2, 3, 1, 4, 6, 5),
(10, 'Saat memutuskan tempat makan untuk pertemuan bersama teman, saya lebih memilih...', 'Tempat yang menyajikan makanan dengan penyajian atau konsep yang unik.', 'Restoran yang menawarkan hidangan eksklusif atau unik.', 'Tempat dengan dekorasi atau suasana yang artistik dan kreatif.', 'Restoran yang ramai dan menyenangkan untuk dinikmati bersama teman.', 'Tempat yang cocok untuk pertemuan bisnis atau diskusi.', 'Restoran dengan layanan yang terorganisir dan tata letak yang rapi.', 1, 2, 3, 4, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `karier_terdepan_tes`
--

CREATE TABLE `karier_terdepan_tes` (
  `id` bigint(20) NOT NULL,
  `tanggal_tes` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karier_terdepan_tes`
--

INSERT INTO `karier_terdepan_tes` (`id`, `tanggal_tes`, `user_id`) VALUES
(10, '2023-12-09 20:40:52.230644', 4),
(11, '2023-12-09 20:48:51.419564', 4),
(12, '2023-12-10 13:07:55.530988', 4),
(13, '2023-12-10 13:14:20.113997', 4),
(14, '2023-12-10 13:54:17.053530', 4),
(15, '2023-12-10 17:14:36.456751', 8),
(16, '2023-12-10 17:34:46.424055', 8),
(17, '2023-12-13 08:41:15.945687', 11),
(18, '2023-12-13 08:43:23.834785', 11),
(19, '2023-12-13 08:44:35.451462', 11),
(20, '2023-12-13 08:50:41.805459', 11),
(21, '2023-12-13 08:50:50.584180', 11),
(22, '2023-12-13 14:24:52.406841', 4),
(23, '2023-12-14 19:10:25.042397', 4),
(24, '2023-12-15 09:16:46.380887', 12),
(25, '2023-12-15 09:24:36.031897', 4),
(26, '2023-12-16 20:21:41.272848', 13),
(27, '2023-12-16 20:30:11.235012', 13);

-- --------------------------------------------------------

--
-- Table structure for table `karier_terdepan_user`
--

CREATE TABLE `karier_terdepan_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `asal_sekolah` varchar(255) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karier_terdepan_user`
--

INSERT INTO `karier_terdepan_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `jenis_kelamin`, `tanggal_lahir`, `asal_sekolah`, `no_hp`) VALUES
(1, 'pbkdf2_sha256$720000$UjJi3xw11UoV4iwNFEPlPp$ZbL+6SpPXauQTpVkvzNtBPT2KHInBiDYeCjIDAU6YMQ=', '2023-12-08 04:34:03.369674', 1, 'superuser', '', '', '', 1, 1, '2023-12-08 03:01:58.659691', '', '2002-09-20', '', ''),
(2, 'pbkdf2_sha256$720000$mSk5P2tObflqbzt9JMQAVV$qTV4brjU8RkNcIP4qgV+FyVpj6kqribTTvkt5/rqsVE=', '2023-12-08 05:49:23.735643', 0, 'lanang', 'Pangestu Lanang Wicaksono', '', 'pangestuwicaksono891@gmail.com', 0, 1, '2023-12-08 03:07:04.353921', 'Laki-laki', '2002-09-20', 'SMA N 1 Purbalingga', '085702386691'),
(3, 'pbkdf2_sha256$720000$hIlzvMdmDC7EY9kYLW9WFF$EcKpHiGt4NkkDca3pQPuPt6W1eRpTX55szCzHN9vXIc=', '2023-12-08 03:10:34.005837', 0, 'ika', 'Ika Beti Rusiati', '', 'betyrusiati1@gmail.com', 0, 1, '2023-12-08 03:10:12.255488', 'Perempuan', '2002-05-31', 'SMA N 1 Bantarsari', '082264189236'),
(4, 'pbkdf2_sha256$720000$rUdnQVvVEIIc2tTrGSRfur$UGYyG3DS5kkhCU3GgYNCQsPOkjToimcEV2gp/Ycz+Zs=', '2023-12-15 02:23:55.510811', 0, 'maldika', 'Maldika Ageng Rizki Pangesti', '', 'maldika@gmail.com', 0, 1, '2023-12-08 11:53:41.370412', 'Perempuan', '2001-08-16', 'SMA N 2 Purbalingga', '085725638819'),
(5, 'pbkdf2_sha256$720000$06cP7VLFOkZK1KBGxRums2$lNdpUgKy5taeoKsdlDr+IuRHdI6hA+syGFyEhIRg3Tk=', NULL, 0, 'arif', 'Arif Yanuar', '', 'arifyanuar@gmail.com', 0, 1, '2023-12-08 15:31:00.428420', 'Laki-laki', '2002-05-20', 'SMK N 1 Purbalingga', '085327983672'),
(6, 'pbkdf2_sha256$720000$wHQdjNj9UMUa0mPo1pxsWq$euFX6/bewlwU2CNsZutGvVlkzcO7JrCXR68B4eEEWWc=', NULL, 0, 'fahru', 'Fahru Munif', '', 'fahrumunif@gmail.com', 0, 1, '2023-12-08 15:32:16.248380', 'Laki-laki', '2002-03-05', 'SMA N 1 Purbalingga', '0857276318891'),
(7, 'pbkdf2_sha256$720000$AqSm2BwzVPQjsbws7MeKZi$3wyfyQ3bXM3Z6Ej3yHxUKaWhU5J7xp1Fx6WAmgyWRqU=', NULL, 0, 'fitri', 'Fitri Nur Istiqomah', '', 'fitri@gmail.com', 0, 1, '2023-12-10 06:25:27.040196', 'Perempuan', '2002-01-05', 'SMA N 1 Bantarsari', '085728371163'),
(8, 'pbkdf2_sha256$720000$ne3n9Hp20GYz0wYMLuQoF8$CNJ7677bZLGFVLJ/2sx1iYWaJOnIQIqWiqrseAVGWaM=', '2023-12-10 10:14:02.539865', 0, 'maulana', 'Maulana Ari Wibowo', '', 'maulana@gmail.com', 0, 1, '2023-12-10 06:27:44.730417', 'Laki-laki', '2002-01-24', 'SMA N 2 Purbalingga', '085739176728'),
(9, 'pbkdf2_sha256$720000$6EbuaZDOjZonHL5qCX24Ex$vldsrgxHRKmnO19RMEB8gmDN9mP02yvqMGYhS/Bds4Y=', NULL, 0, 'mutiara', 'Mutiara Anggun', '', 'mutiara123@gmail.com', 0, 1, '2023-12-10 06:30:12.945102', 'Perempuan', '2002-07-06', 'SMA N 2 Purbalingga', '085718263583'),
(10, 'pbkdf2_sha256$720000$snMlOZ9FsnEh0qneUbYFOr$se86j+P80OU6evlGCVJb/+wgQYZMmSeMGSNyI+Sra+A=', NULL, 0, 'hanif', 'Muhammad Hanif', '', 'hanif@gmail.com', 0, 1, '2023-12-10 06:40:44.058716', 'Laki-laki', '2001-12-19', 'SMA N 1 Purbalingga', '085327891426'),
(11, 'pbkdf2_sha256$720000$iQQVSeUeTnDdgv7Nn5dbT5$PRZ4JEa/Llv4z/nsxWqUzNNMTtCRqbtWamDIzB8Yoxg=', '2023-12-13 01:39:46.839754', 0, 'rian', 'rian', '', 'irwan23@gmail.com', 0, 1, '2023-12-13 01:39:14.951070', 'Laki-laki', '2006-05-18', 'SMAN 3 Bandung', '086336453636'),
(12, 'pbkdf2_sha256$720000$EhVBMcHbVh7tewrgKtSEZ3$/EytDXMUT1DTQ9miCalojgiFbHImdMWTjh0GfNU6qTE=', '2023-12-15 02:13:20.392405', 0, 'laela', 'Nurlaela Hidayati', '', 'laela@gmail.com', 0, 1, '2023-12-15 02:12:46.044219', 'Laki-laki', '2001-03-12', 'SMA N 1 Bantarsari', '083256894578'),
(13, 'pbkdf2_sha256$720000$onuQkwbPcqjpxdC4jTH1d1$nJOhojAheaDrUp2vZRsrXay4ofZIRDW8WzAzEsdBW74=', '2023-12-16 13:28:52.708975', 0, 'liza', 'Liza Virgianti', '', 'liza@gmail.com', 0, 1, '2023-12-16 13:18:12.642719', 'Perempuan', '2001-09-01', 'SMA N 1 Bandung', '085702383214');

-- --------------------------------------------------------

--
-- Table structure for table `karier_terdepan_user_groups`
--

CREATE TABLE `karier_terdepan_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `karier_terdepan_user_user_permissions`
--

CREATE TABLE `karier_terdepan_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_karier_terdepan_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `karier_terdepan_jawabanminat`
--
ALTER TABLE `karier_terdepan_jawabanminat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `karier_terdepan_jawa_id_soal_id_180d6770_fk_karier_te` (`id_soal_id`),
  ADD KEY `karier_terdepan_jawa_tes_id_b33270a2_fk_karier_te` (`tes_id`);

--
-- Indexes for table `karier_terdepan_jurusan`
--
ALTER TABLE `karier_terdepan_jurusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `karier_terdepan_juru_minat_id_7b530046_fk_karier_te` (`minat_id`);

--
-- Indexes for table `karier_terdepan_minat`
--
ALTER TABLE `karier_terdepan_minat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karier_terdepan_penjurusan`
--
ALTER TABLE `karier_terdepan_penjurusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `karier_terdepan_penj_minat_id_94dce14e_fk_karier_te` (`minat_id`),
  ADD KEY `karier_terdepan_penj_tes_id_29891891_fk_karier_te` (`tes_id`),
  ADD KEY `karier_terdepan_penj_user_id_9b9838d2_fk_karier_te` (`user_id`);

--
-- Indexes for table `karier_terdepan_soalminat`
--
ALTER TABLE `karier_terdepan_soalminat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `karier_terdepan_soal_minat_a_id_27fc91fe_fk_karier_te` (`minat_a_id`),
  ADD KEY `karier_terdepan_soal_minat_b_id_a1af5873_fk_karier_te` (`minat_b_id`),
  ADD KEY `karier_terdepan_soal_minat_c_id_2166c854_fk_karier_te` (`minat_c_id`),
  ADD KEY `karier_terdepan_soal_minat_d_id_81969db0_fk_karier_te` (`minat_d_id`),
  ADD KEY `karier_terdepan_soal_minat_e_id_41ba8931_fk_karier_te` (`minat_e_id`),
  ADD KEY `karier_terdepan_soal_minat_f_id_7444a846_fk_karier_te` (`minat_f_id`);

--
-- Indexes for table `karier_terdepan_tes`
--
ALTER TABLE `karier_terdepan_tes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `karier_terdepan_tes_user_id_63c93835_fk_karier_terdepan_user_id` (`user_id`);

--
-- Indexes for table `karier_terdepan_user`
--
ALTER TABLE `karier_terdepan_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `karier_terdepan_user_groups`
--
ALTER TABLE `karier_terdepan_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `karier_terdepan_user_groups_user_id_group_id_f62e83fe_uniq` (`user_id`,`group_id`),
  ADD KEY `karier_terdepan_user_groups_group_id_9330b2ad_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `karier_terdepan_user_user_permissions`
--
ALTER TABLE `karier_terdepan_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `karier_terdepan_user_use_user_id_permission_id_b1085709_uniq` (`user_id`,`permission_id`),
  ADD KEY `karier_terdepan_user_permission_id_cb30e183_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `karier_terdepan_jawabanminat`
--
ALTER TABLE `karier_terdepan_jawabanminat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `karier_terdepan_jurusan`
--
ALTER TABLE `karier_terdepan_jurusan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `karier_terdepan_minat`
--
ALTER TABLE `karier_terdepan_minat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `karier_terdepan_penjurusan`
--
ALTER TABLE `karier_terdepan_penjurusan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `karier_terdepan_soalminat`
--
ALTER TABLE `karier_terdepan_soalminat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `karier_terdepan_tes`
--
ALTER TABLE `karier_terdepan_tes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `karier_terdepan_user`
--
ALTER TABLE `karier_terdepan_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `karier_terdepan_user_groups`
--
ALTER TABLE `karier_terdepan_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karier_terdepan_user_user_permissions`
--
ALTER TABLE `karier_terdepan_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_karier_terdepan_user_id` FOREIGN KEY (`user_id`) REFERENCES `karier_terdepan_user` (`id`);

--
-- Constraints for table `karier_terdepan_jawabanminat`
--
ALTER TABLE `karier_terdepan_jawabanminat`
  ADD CONSTRAINT `karier_terdepan_jawa_id_soal_id_180d6770_fk_karier_te` FOREIGN KEY (`id_soal_id`) REFERENCES `karier_terdepan_soalminat` (`id`),
  ADD CONSTRAINT `karier_terdepan_jawa_tes_id_b33270a2_fk_karier_te` FOREIGN KEY (`tes_id`) REFERENCES `karier_terdepan_tes` (`id`);

--
-- Constraints for table `karier_terdepan_jurusan`
--
ALTER TABLE `karier_terdepan_jurusan`
  ADD CONSTRAINT `karier_terdepan_juru_minat_id_7b530046_fk_karier_te` FOREIGN KEY (`minat_id`) REFERENCES `karier_terdepan_minat` (`id`);

--
-- Constraints for table `karier_terdepan_penjurusan`
--
ALTER TABLE `karier_terdepan_penjurusan`
  ADD CONSTRAINT `karier_terdepan_penj_minat_id_94dce14e_fk_karier_te` FOREIGN KEY (`minat_id`) REFERENCES `karier_terdepan_minat` (`id`),
  ADD CONSTRAINT `karier_terdepan_penj_tes_id_29891891_fk_karier_te` FOREIGN KEY (`tes_id`) REFERENCES `karier_terdepan_tes` (`id`),
  ADD CONSTRAINT `karier_terdepan_penj_user_id_9b9838d2_fk_karier_te` FOREIGN KEY (`user_id`) REFERENCES `karier_terdepan_user` (`id`);

--
-- Constraints for table `karier_terdepan_soalminat`
--
ALTER TABLE `karier_terdepan_soalminat`
  ADD CONSTRAINT `karier_terdepan_soal_minat_a_id_27fc91fe_fk_karier_te` FOREIGN KEY (`minat_a_id`) REFERENCES `karier_terdepan_minat` (`id`),
  ADD CONSTRAINT `karier_terdepan_soal_minat_b_id_a1af5873_fk_karier_te` FOREIGN KEY (`minat_b_id`) REFERENCES `karier_terdepan_minat` (`id`),
  ADD CONSTRAINT `karier_terdepan_soal_minat_c_id_2166c854_fk_karier_te` FOREIGN KEY (`minat_c_id`) REFERENCES `karier_terdepan_minat` (`id`),
  ADD CONSTRAINT `karier_terdepan_soal_minat_d_id_81969db0_fk_karier_te` FOREIGN KEY (`minat_d_id`) REFERENCES `karier_terdepan_minat` (`id`),
  ADD CONSTRAINT `karier_terdepan_soal_minat_e_id_41ba8931_fk_karier_te` FOREIGN KEY (`minat_e_id`) REFERENCES `karier_terdepan_minat` (`id`),
  ADD CONSTRAINT `karier_terdepan_soal_minat_f_id_7444a846_fk_karier_te` FOREIGN KEY (`minat_f_id`) REFERENCES `karier_terdepan_minat` (`id`);

--
-- Constraints for table `karier_terdepan_tes`
--
ALTER TABLE `karier_terdepan_tes`
  ADD CONSTRAINT `karier_terdepan_tes_user_id_63c93835_fk_karier_terdepan_user_id` FOREIGN KEY (`user_id`) REFERENCES `karier_terdepan_user` (`id`);

--
-- Constraints for table `karier_terdepan_user_groups`
--
ALTER TABLE `karier_terdepan_user_groups`
  ADD CONSTRAINT `karier_terdepan_user_groups_group_id_9330b2ad_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `karier_terdepan_user_user_id_437f820c_fk_karier_te` FOREIGN KEY (`user_id`) REFERENCES `karier_terdepan_user` (`id`);

--
-- Constraints for table `karier_terdepan_user_user_permissions`
--
ALTER TABLE `karier_terdepan_user_user_permissions`
  ADD CONSTRAINT `karier_terdepan_user_permission_id_cb30e183_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `karier_terdepan_user_user_id_173a9ddf_fk_karier_te` FOREIGN KEY (`user_id`) REFERENCES `karier_terdepan_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
