-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 06:14 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_event`
--

CREATE TABLE `app_event` (
  `id` bigint(20) NOT NULL,
  `event_name` varchar(120) NOT NULL,
  `event_date` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_event`
--

INSERT INTO `app_event` (`id`, `event_name`, `event_date`, `user_id`) VALUES
(1, 'Signup API', '2022-01-19', 2),
(2, 'Angular Project', '2022-01-28', 4),
(3, 'Assignment API', '2022-01-26', 5),
(4, 'Event Name', '2022-03-12', 1),
(5, 'Event Name2', '2022-02-05', 5);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add event', 7, 'add_event'),
(26, 'Can change event', 7, 'change_event'),
(27, 'Can delete event', 7, 'delete_event'),
(28, 'Can view event', 7, 'view_event'),
(29, 'Can add task', 8, 'add_task'),
(30, 'Can change task', 8, 'change_task'),
(31, 'Can delete task', 8, 'delete_task'),
(32, 'Can view task', 8, 'view_task');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$oWxX2F030jspPzdcVKnirP$XdOZsR99lCHAFN32OkC7RhLRdASk0A8JzuEnbUSU2Wk=', '2022-01-25 05:08:24.752517', 1, 'admin', '', '', '', 1, 1, '2022-01-19 04:02:30.101132'),
(2, 'pbkdf2_sha256$320000$wvT614C5FnLxhJsEmMEr9i$cwfkMxdAd8nwVQg4OHzkxb9TRz3knCV2cegFcZZcC3k=', '2022-01-25 05:06:23.691169', 0, 'milanraj96', 'Milan', 'Gupta', 'milanraj96@gmail.com', 1, 1, '2022-01-19 04:38:30.000000'),
(3, 'pbkdf2_sha256$320000$F1cjKPROuuXbK706a5g1LX$SeByyNVlYMERgn3YBuj8MwEy98Ew38g+HQMc5IoVy/I=', NULL, 0, 'alok', 'Alok', 'Raj', 'alok@gmail.com', 0, 1, '2022-01-19 04:41:13.824061'),
(4, 'pbkdf2_sha256$320000$gVMYoFV2LOj8WnTpGur5MZ$8jnyQrkBYjgwuvyTpPV1yYi08DZT8j9+VyTvEdXO+pA=', NULL, 0, 'praveen', 'Praveen', 'Vorugala', 'praveen@gmail.com', 0, 1, '2022-01-20 05:49:19.770652'),
(5, 'pbkdf2_sha256$320000$GT0suSUr43JwCJ6sd7olAA$rd1A8VD4RuXi1NBXXBvw5E2vsdjjbDQxkakQMcU0PeQ=', NULL, 0, 'npr', 'NPR', 'N', 'npr@gmail.com', 0, 1, '2022-01-24 07:48:45.101872'),
(6, 'pbkdf2_sha256$320000$oVbiFYZlc5CoRGzjfVnXda$ibj4eXzI/TVw+7kVe1uJlmGJDKKQIcSH5Y0gPuc0lcQ=', NULL, 0, 'npr1', 'NPR', 'N', 'npr5@gmail.com', 0, 1, '2022-01-24 07:49:47.859435');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-01-19 05:04:10.383702', '1', 'Make employee Table', 1, '[{\"added\": {}}]', 8, 1),
(2, '2022-01-19 05:23:51.667758', '1', 'oiethdtik', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-01-19 06:20:23.880767', '1', 'Event Name', 2, '[{\"changed\": {\"fields\": [\"Event name\"]}}]', 7, 1),
(4, '2022-01-19 06:20:54.716896', '1', 'Make employee Table', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 8, 1),
(5, '2022-01-19 06:21:15.636421', '1', 'Event Name', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 7, 1),
(6, '2022-01-20 05:53:29.385737', '2', 'Angular Project', 1, '[{\"added\": {}}]', 8, 1),
(7, '2022-01-24 07:52:06.615116', '3', 'Angular Project', 1, '[{\"added\": {}}]', 8, 1),
(8, '2022-01-25 04:48:02.290785', '2', 'Angular Project', 1, '[{\"added\": {}}]', 7, 1),
(9, '2022-01-25 04:48:39.589490', '3', 'Assignment API', 1, '[{\"added\": {}}]', 7, 1),
(10, '2022-01-25 04:49:08.576170', '1', 'Signup API', 2, '[{\"changed\": {\"fields\": [\"Event name\"]}}]', 7, 1),
(11, '2022-01-25 05:05:39.042226', '2', 'milanraj96', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app', 'event'),
(8, 'app', 'task'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-19 04:01:33.168536'),
(2, 'auth', '0001_initial', '2022-01-19 04:01:44.032389'),
(3, 'admin', '0001_initial', '2022-01-19 04:01:46.112326'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-01-19 04:01:46.190418'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-19 04:01:46.252928'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-01-19 04:01:47.502998'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-01-19 04:01:48.502956'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-01-19 04:01:48.674829'),
(9, 'auth', '0004_alter_user_username_opts', '2022-01-19 04:01:48.752992'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-01-19 04:01:49.706129'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-01-19 04:01:49.753005'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-01-19 04:01:49.815479'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-01-19 04:01:49.971785'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-01-19 04:01:50.128038'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-01-19 04:01:50.549918'),
(16, 'auth', '0011_update_proxy_permissions', '2022-01-19 04:01:50.831111'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-01-19 04:01:51.190526'),
(18, 'sessions', '0001_initial', '2022-01-19 04:01:51.846785'),
(19, 'app', '0001_initial', '2022-01-19 05:00:34.423565'),
(20, 'app', '0002_alter_task_completed_at', '2022-01-19 05:02:05.172304'),
(21, 'app', '0003_alter_task_completed_at', '2022-01-19 05:05:54.752509'),
(22, 'app', '0004_alter_task_completed_at', '2022-01-19 05:08:08.870943'),
(23, 'app', '0005_delete_task', '2022-01-25 04:45:26.151573');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('njfnmiv20gz2otrht1fv2wdm0vlxyi9e', '.eJxVjDkOwjAUBe_iGllefmyHkp4zRH9xcADZUpYKcXeIlALaNzPvpQbc1jJsS56HSdRZWXX63Qj5kesO5I711jS3us4T6V3RB130tUl-Xg7376DgUr41g-lG8CZFwBHZIHoMlpkDRZHoUoIcggVnIzAl8j1REteTdGDFG_X-AOorN-8:1nCE48:eoroNjTmm5vmbkYv5IhXHKe2h3ZTcCTFmxdDOY2Bvg4', '2022-02-08 05:08:24.880530'),
('szmlkuslb0k8278a6cbeiqiewac8vm52', '.eJxVjDkOwjAUBe_iGllefmyHkp4zRH9xcADZUpYKcXeIlALaNzPvpQbc1jJsS56HSdRZWXX63Qj5kesO5I711jS3us4T6V3RB130tUl-Xg7376DgUr41g-lG8CZFwBHZIHoMlpkDRZHoUoIcggVnIzAl8j1REteTdGDFG_X-AOorN-8:1nA2Bh:qsrS_6ST3tHYP865RmkqRANGGEo6e8cpbkop2EJ2cwA', '2022-02-02 04:03:09.846499');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_event`
--
ALTER TABLE `app_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_event_user_id_5c14bdfe_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_event`
--
ALTER TABLE `app_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_event`
--
ALTER TABLE `app_event`
  ADD CONSTRAINT `app_event_user_id_5c14bdfe_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
