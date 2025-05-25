-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 25 май 2025 в 23:31
-- Версия на сървъра: 10.4.32-MariaDB
-- Версия на PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `dzi_2509`
--

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_permission`
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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Отговор на въпрос', 7, 'add_option'),
(26, 'Can change Отговор на въпрос', 7, 'change_option'),
(27, 'Can delete Отговор на въпрос', 7, 'delete_option'),
(28, 'Can view Отговор на въпрос', 7, 'view_option'),
(29, 'Can add Анкета', 8, 'add_poll'),
(30, 'Can change Анкета', 8, 'change_poll'),
(31, 'Can delete Анкета', 8, 'delete_poll'),
(32, 'Can view Анкета', 8, 'view_poll'),
(33, 'Can add Въпрос', 9, 'add_question'),
(34, 'Can change Въпрос', 9, 'change_question'),
(35, 'Can delete Въпрос', 9, 'delete_question'),
(36, 'Can view Въпрос', 9, 'view_question');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$XXKY1Bu3h6Mwq3LVsUWwtb$OYrwVxLXB42DkWBmKoNpVVFev/XOTWpi+7TGQwj2L/U=', '2025-02-11 07:37:48.636089', 1, 'admin', '', '', '', 1, 1, '2025-02-11 07:36:48.903948'),
(2, 'pbkdf2_sha256$600000$rkr9W5gpsW4hpS5gbi2epE$siI3qVlM2YoSQ0uT8Eih2+jO+GKPpoNnz5dQAW/+wcc=', NULL, 0, 'user', '', '', '', 0, 1, '2025-02-11 07:39:56.833265'),
(3, 'pbkdf2_sha256$600000$puDguLtOrrJtOH6T2fFHXt$UA5vUOvzthF4NhkRVUj0T3E50Pv/+/3fjcg/YUcaFUQ=', '2025-04-16 09:31:46.095541', 1, 'dzi_25', '', '', '', 1, 1, '2025-03-30 11:36:01.833141');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-02-11 07:39:57.164807', '2', 'user', 1, '[{\"added\": {}}]', 4, 1),
(2, '2025-03-30 13:11:38.549264', '1', 'Анкета 1', 1, '[{\"added\": {}}]', 8, 3),
(3, '2025-03-30 13:11:45.767927', '1', 'Анкета 1', 2, '[]', 8, 3),
(4, '2025-03-30 13:12:08.967832', '2', 'Анкета 2', 1, '[{\"added\": {}}]', 8, 3),
(5, '2025-03-30 13:13:20.617609', '1', 'Въпрос №1 на анкета 1', 1, '[{\"added\": {}}]', 9, 3),
(6, '2025-03-30 13:13:43.982776', '2', 'въпрос №2 на анкета 1', 1, '[{\"added\": {}}]', 9, 3),
(7, '2025-03-30 13:14:10.776931', '3', 'Въпрос 1 на анкета 2', 1, '[{\"added\": {}}]', 9, 3),
(8, '2025-03-30 13:14:34.440430', '4', 'Въпрос 2 на анкета 2', 1, '[{\"added\": {}}]', 9, 3),
(9, '2025-03-30 13:14:56.527896', '5', 'общ въпрос за двете анкети', 1, '[{\"added\": {}}]', 9, 3),
(10, '2025-03-30 13:16:09.577798', '1', '#1: отговор 1 на въпрос 1 *', 1, '[{\"added\": {}}]', 7, 3),
(11, '2025-03-30 13:16:27.603261', '2', '#2: отговор 2 на въпрос 1 *', 1, '[{\"added\": {}}]', 7, 3),
(12, '2025-03-30 13:16:41.047572', '3', '#3: отговор 3 на въпрос 1 *', 1, '[{\"added\": {}}]', 7, 3),
(13, '2025-03-30 13:17:06.947111', '4', '#4: отговор 1 на въпрос 2 *', 1, '[{\"added\": {}}]', 7, 3),
(14, '2025-03-30 13:17:18.676277', '5', '#5: отговор 2 на въпрос 1 *', 1, '[{\"added\": {}}]', 7, 3),
(15, '2025-03-30 13:17:28.317063', '6', '#6: отговор 3 на въпрос 1 *', 1, '[{\"added\": {}}]', 7, 3),
(16, '2025-03-30 13:17:49.597121', '7', '#7: отговор 1 на въпрос 1 **', 1, '[{\"added\": {}}]', 7, 3),
(17, '2025-03-30 13:18:04.274399', '8', '#8: отговор 2 на въпрос 1 **', 1, '[{\"added\": {}}]', 7, 3),
(18, '2025-03-30 13:18:18.440434', '9', '#9: отговор 3 на въпрос 1 **', 1, '[{\"added\": {}}]', 7, 3),
(19, '2025-03-30 13:18:32.712472', '10', '#10: отговор 1 на въпрос 2 **', 1, '[{\"added\": {}}]', 7, 3),
(20, '2025-03-30 13:18:43.382070', '11', '#11: отговор 2 на въпрос 2 **', 1, '[{\"added\": {}}]', 7, 3),
(21, '2025-03-30 13:19:03.066975', '12', '#12: отговор 1  ***', 1, '[{\"added\": {}}]', 7, 3),
(22, '2025-03-30 13:19:07.759024', '13', '#13: отговор 1  ***', 1, '[{\"added\": {}}]', 7, 3),
(23, '2025-03-30 13:19:23.866328', '14', '#14: отговор 3  ***', 1, '[{\"added\": {}}]', 7, 3),
(24, '2025-03-30 13:19:39.689699', '13', '#13: отговор 2  ***', 2, '[{\"changed\": {\"fields\": [\"\\u0422\\u0435\\u043a\\u0441\\u0442\"]}}]', 7, 3),
(25, '2025-04-16 09:32:20.160536', '2', 'Анкета 2', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 3);

-- --------------------------------------------------------

--
-- Структура на таблица `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'main', 'option'),
(8, 'main', 'poll'),
(9, 'main', 'question'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура на таблица `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-02-11 07:24:33.505935'),
(2, 'auth', '0001_initial', '2025-02-11 07:24:34.191957'),
(3, 'admin', '0001_initial', '2025-02-11 07:24:34.346524'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-02-11 07:24:34.357800'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-02-11 07:24:34.368984'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-02-11 07:24:34.443509'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-02-11 07:24:34.528215'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-02-11 07:24:34.553213'),
(9, 'auth', '0004_alter_user_username_opts', '2025-02-11 07:24:34.566259'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-02-11 07:24:34.619440'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-02-11 07:24:34.627381'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-02-11 07:24:34.638389'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-02-11 07:24:34.658408'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-02-11 07:24:34.680917'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-02-11 07:24:34.700921'),
(16, 'auth', '0011_update_proxy_permissions', '2025-02-11 07:24:34.713963'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-02-11 07:24:34.732938'),
(18, 'sessions', '0001_initial', '2025-02-11 07:24:34.772945'),
(19, 'main', '0001_initial', '2025-03-30 13:09:23.499445'),
(20, 'main', '0002_poll_active', '2025-03-30 13:57:11.345474');

-- --------------------------------------------------------

--
-- Структура на таблица `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7r6j2ea4q2pfsy5a6b5h21e9lbxxqf7g', '.eJxVjDsOwjAQBe_iGlkbx19Kes5grXcdHEC2FCcV4u4QKQW0b2beS0Tc1hK3npc4sziLUZx-t4T0yHUHfMd6a5JaXZc5yV2RB-3y2jg_L4f7d1Cwl28djMkBNIyGKSlktFZPw2TZAjGNqAjA6QF8coadAcgUFHhm8B7IGfH-ANrZN2E:1u4z7S:90zazVChrlEMBHHMethe5nvl9MMITOV2KT8Vr2ZZtNA', '2025-04-30 09:31:46.100530'),
('foo1yzv74z2hqknn5j2ki0587jo5sy86', '.eJxVjDsOwjAQBe_iGlkbx19Kes5grXcdHEC2FCcV4u4QKQW0b2beS0Tc1hK3npc4sziLUZx-t4T0yHUHfMd6a5JaXZc5yV2RB-3y2jg_L4f7d1Cwl28djMkBNIyGKSlktFZPw2TZAjGNqAjA6QF8coadAcgUFHhm8B7IGfH-ANrZN2E:1tyqxd:_Ju7yunzr0ZF4o_FySYLW6VozGrKKZMuopNP9dIimcY', '2025-04-13 11:36:17.039931'),
('g23zndpzlw7tuu85mf4n2y52k7d4wc4h', '.eJxVjMsOwiAQRf-FtSE8ChSX7vsNZJgZpWogKe3K-O_apAvd3nPOfYkE21rS1nlJM4mz0OL0u2XAB9cd0B3qrUlsdV3mLHdFHrTLqRE_L4f7d1Cgl2-N4JljZHQDIgGRGgMFEzMiBLA6X60dnXFMMXjIqID9AMrFbLTSoMT7AyI5ON4:1thkq4:Gjhnd4pGniTFEMRItMh_tGAm6axAt-I8i04PVoZvKIY', '2025-02-25 07:37:48.640152');

-- --------------------------------------------------------

--
-- Структура на таблица `main_option`
--

CREATE TABLE `main_option` (
  `id` bigint(20) NOT NULL,
  `text` varchar(200) NOT NULL,
  `checked` tinyint(1) DEFAULT NULL,
  `stat_attempts` int(11) NOT NULL,
  `question_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_option`
--

INSERT INTO `main_option` (`id`, `text`, `checked`, `stat_attempts`, `question_id_id`) VALUES
(1, 'отговор 1 на въпрос 1 *', NULL, 0, 1),
(2, 'отговор 2 на въпрос 1 *', NULL, 0, 1),
(3, 'отговор 3 на въпрос 1 *', NULL, 0, 1),
(4, 'отговор 1 на въпрос 2 *', NULL, 0, 2),
(5, 'отговор 2 на въпрос 1 *', NULL, 0, 2),
(6, 'отговор 3 на въпрос 1 *', NULL, 0, 2),
(7, 'отговор 1 на въпрос 1 **', NULL, 0, 3),
(8, 'отговор 2 на въпрос 1 **', NULL, 0, 3),
(9, 'отговор 3 на въпрос 1 **', NULL, 0, 3),
(10, 'отговор 1 на въпрос 2 **', NULL, 0, 4),
(11, 'отговор 2 на въпрос 2 **', NULL, 0, 4),
(12, 'отговор 1  ***', NULL, 0, 5),
(13, 'отговор 2  ***', NULL, 0, 5),
(14, 'отговор 3  ***', NULL, 0, 5);

-- --------------------------------------------------------

--
-- Структура на таблица `main_poll`
--

CREATE TABLE `main_poll` (
  `id` bigint(20) NOT NULL,
  `theme` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `picture` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_poll`
--

INSERT INTO `main_poll` (`id`, `theme`, `description`, `picture`, `active`) VALUES
(1, 'Анкета 1', 'това е примерно описание на анкета №1', 'poll_pics/services.jpg', 1),
(2, 'Анкета 2', 'това е примерно описание на анкета №2', 'poll_pics/testimonials-bg_nGEtLv2.jpg', 1);

-- --------------------------------------------------------

--
-- Структура на таблица `main_question`
--

CREATE TABLE `main_question` (
  `id` bigint(20) NOT NULL,
  `text` longtext NOT NULL,
  `type` smallint(5) UNSIGNED NOT NULL CHECK (`type` >= 0),
  `stat_attempts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_question`
--

INSERT INTO `main_question` (`id`, `text`, `type`, `stat_attempts`) VALUES
(1, 'Въпрос №1 на анкета 1', 1, 0),
(2, 'въпрос №2 на анкета 1', 2, 0),
(3, 'Въпрос 1 на анкета 2', 1, 0),
(4, 'Въпрос 2 на анкета 2', 2, 0),
(5, 'общ въпрос за двете анкети', 1, 0);

-- --------------------------------------------------------

--
-- Структура на таблица `main_question_pool_id`
--

CREATE TABLE `main_question_pool_id` (
  `id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `poll_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_question_pool_id`
--

INSERT INTO `main_question_pool_id` (`id`, `question_id`, `poll_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 1),
(6, 5, 2);

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индекси за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индекси за таблица `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индекси за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индекси за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индекси за таблица `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индекси за таблица `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индекси за таблица `main_option`
--
ALTER TABLE `main_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_option_question_id_id_f3b18db3_fk_main_question_id` (`question_id_id`);

--
-- Индекси за таблица `main_poll`
--
ALTER TABLE `main_poll`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_question`
--
ALTER TABLE `main_question`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_question_pool_id`
--
ALTER TABLE `main_question_pool_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_question_pool_id_question_id_poll_id_8b840417_uniq` (`question_id`,`poll_id`),
  ADD KEY `main_question_pool_id_poll_id_1686f33a_fk_main_poll_id` (`poll_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `main_option`
--
ALTER TABLE `main_option`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `main_poll`
--
ALTER TABLE `main_poll`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_question`
--
ALTER TABLE `main_question`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_question_pool_id`
--
ALTER TABLE `main_question_pool_id`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `main_option`
--
ALTER TABLE `main_option`
  ADD CONSTRAINT `main_option_question_id_id_f3b18db3_fk_main_question_id` FOREIGN KEY (`question_id_id`) REFERENCES `main_question` (`id`);

--
-- Ограничения за таблица `main_question_pool_id`
--
ALTER TABLE `main_question_pool_id`
  ADD CONSTRAINT `main_question_pool_id_poll_id_1686f33a_fk_main_poll_id` FOREIGN KEY (`poll_id`) REFERENCES `main_poll` (`id`),
  ADD CONSTRAINT `main_question_pool_id_question_id_b914dac4_fk_main_question_id` FOREIGN KEY (`question_id`) REFERENCES `main_question` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
