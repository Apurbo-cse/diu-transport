-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 03:20 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diu_transport_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_seats` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `category_id`, `route_id`, `name`, `tracking_number`, `total_seats`, `bus_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Suryamukhi 1', '01317074745', '40', '101', 'active', '2020-11-26 12:46:04', '2020-11-26 12:46:04'),
(3, 3, 1, 'Rojonigondha 4', '01317074745', '40', '102', 'active', '2020-11-26 12:51:35', '2020-11-26 12:51:35'),
(4, 3, 1, 'Bus 21', '01317074745', '40', '103', 'active', '2020-11-26 12:52:33', '2020-11-26 12:52:33'),
(5, 1, 1, 'Bus 22', '01317074745', '30', '104', 'active', '2020-11-26 12:53:06', '2020-11-26 12:53:18'),
(6, 3, 1, 'Bus 20', '01317074745', '40', '105', 'active', '2020-11-26 12:54:05', '2020-11-26 12:54:05'),
(7, 3, 1, 'Bus 19', '01317074745', '40', '106', 'active', '2020-11-26 12:54:36', '2020-11-26 12:54:36'),
(8, 1, 4, 'Suryamukhi 2', '01317074745', '40', '107', 'active', '2020-11-26 12:55:28', '2020-11-26 12:55:28'),
(9, 3, 4, 'Rojonigondha 2', '01317074745', '40', '108', 'active', '2020-11-26 12:56:06', '2020-11-26 12:56:06'),
(10, 1, 4, 'Bus 12', '01317074745', '35', '109', 'active', '2020-11-26 12:56:57', '2020-11-26 12:56:57'),
(11, 3, 4, 'Bus 11', '01317074745', '40', '110', 'active', '2020-11-26 12:57:22', '2020-11-26 12:57:22'),
(12, 1, 3, 'Surjomukhi-21', '01317074745', '35', '112', 'active', '2020-11-29 07:12:03', '2020-11-29 07:12:03'),
(13, 3, 5, 'Surjomukhi-11', '01317074745', '40', '113', 'active', '2020-11-29 07:12:48', '2020-11-29 07:12:58'),
(14, 3, 5, 'Rojonigondha-5', '01317074745', '40', '114', 'active', '2020-11-29 07:15:34', '2020-11-29 07:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `bus__categories`
--

CREATE TABLE `bus__categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus__categories`
--

INSERT INTO `bus__categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AC Bus', 'Have a nice Journey', 'active', '2020-11-17 07:25:43', '2020-11-17 07:37:35'),
(3, 'Non-AC Bus', 'Non-AC Bus description', 'active', '2020-11-17 10:27:11', '2020-11-17 10:27:11'),
(4, 'Ambluancse', 'description', 'active', '2020-11-17 10:27:30', '2020-11-17 10:27:30'),
(5, 'Car', 'Car description', 'active', '2020-11-17 10:27:53', '2020-11-17 10:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New AC Bus', 'This is the best AC Bus service in the Campus', 'images/gallery/1605382761bus13.jpg', 'active', '2020-11-14 13:39:21', '2020-11-14 13:51:43'),
(2, 'Colorful Bus', 'Shadhinota Sommelon Center (Auditoriam)', 'images/gallery/1605383130bus.jpg', 'active', '2020-11-14 13:45:30', '2020-11-14 13:45:30'),
(4, 'Mini AC Bus', 'Provides a good  travel trip', 'images/gallery/1605384048bus11.jpg', 'active', '2020-11-14 14:00:48', '2020-11-14 14:00:48'),
(5, 'Non-AC Bus', 'DIU Bustand', 'images/gallery/1605384121bus4.jpg', 'active', '2020-11-14 14:02:01', '2020-11-14 14:02:01'),
(6, 'Mid-Night', 'Night time on campus', 'images/gallery/1605384166bus5.jpg', 'active', '2020-11-14 14:02:46', '2020-11-14 14:02:46'),
(7, 'Bus Clean Center', 'This the largest bus clean center in private versity at DIU', 'images/gallery/1605384216bus3.jpg', 'active', '2020-11-14 14:03:36', '2020-11-14 14:03:36'),
(8, 'New AC Bus', 'This is the best AC Bus service in the Campus', 'images/gallery/1605384293bus13.jpg', 'inactive', '2020-11-14 14:04:53', '2020-11-14 14:05:24');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_27_144958_create_sliders_table', 2),
(5, '2020_11_14_150322_create_videos_table', 3),
(6, '2020_11_14_191738_create_galleries_table', 4),
(7, '2020_11_15_062034_create_tags_table', 5),
(8, '2020_11_15_070257_create_posts_table', 6),
(9, '2020_11_17_055514_create_services_table', 7),
(10, '2020_11_17_122909_create_bus__categories_table', 8),
(11, '2020_11_17_131858_create_bus__categories_table', 9),
(12, '2020_11_17_154931_create_routes_table', 10),
(14, '2020_11_17_172825_create_routes_table', 12),
(16, '2020_11_17_174443_create_routes_table', 14),
(19, '2020_11_22_163806_create_buses_table', 17),
(20, '2020_11_26_070532_create_buses_table', 18),
(21, '2020_11_26_151845_create_routes_table', 19),
(22, '2020_11_26_153725_create_routes_table', 20),
(23, '2020_11_26_154435_create_routes_table', 21),
(24, '2020_11_26_182622_create_buses_table', 22),
(25, '2020_11_26_190712_create_stoppages_table', 23),
(26, '2020_11_29_144025_create_services_table', 24),
(27, '2020_11_29_151401_create_roles_table', 25),
(28, '2020_12_04_123850_create_blogcategories_table', 26),
(29, '2020_11_17_163308_create_stuffs_table', 27),
(30, '2020_11_17_163308_create_stuffs_table', 25),
(31, '2020_12_05_080911_create_stuffs_table', 25),
(32, '2020_12_05_080911_create_stuffs_table', 25),
(33, '2021_01_09_192052_create_schedules_table', 27);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` bigint(20) NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `published_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `image`, `view_count`, `is_featured`, `published_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NO ID NO Service', 'The ID card you have been issued represents your identity. Wearing ID card at all times helps the security personnel and others toThe ID card you have been issued represents your identity. Wearing ID card at all times helps the security personnel and others toThe ID card you have been issued represents your identity. Wearing ID card at all times helps the security personnel and others toThe ID card you have been issued represents your identity. Wearing ID card at all times helps the security personnel and others toThe ID card you have been issued represents your identity. Wearing ID card at all times helps the security personnel and others toThe ID card you have been issued represents your identity. Wearing ID card at all times helps the security personnel and others to', 'images/posts/1605519969bus6..jpg', 18, 1, '2020-11-15 02:17:18', 'active', '2020-11-15 02:17:18', '2020-12-04 04:35:56'),
(5, 'Bonomaya is located at Daffodil International University', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'images/posts/1605433174bono.jpg', 4, 1, '2020-11-15 03:39:34', 'active', '2020-11-15 03:39:34', '2020-11-28 16:10:28'),
(6, 'Our dreams just got one step closer to universal reality', 'Transportation is a major issue to both students and parents. Most of the university students are matured enough to travel their campuses by themselves. In these cases, students use public transport from different places. DIU is always concerned about their students and for this purpose now, We have around 50 + buses which are exclusively used for our students/faculty/admin personnel and staff. A parents Car and an ambulance is also available for the students and their parents. Total transportation system is managed from our Ashulia campus. All the transports are moving for the students on different routes and campuses from Ashulia Campus. Students just need to present their ID card for getting this facility. According to the distance they pay a small amount for the transport facility. Every month DIU authorizes to pay some subsidy considering the benefits of the Students/Faculty and Admin people. It is time consuming and also saves money. Particulerly this service is very helpful for our female students. They can easily avoid the unavoidable circumstances or any types of unpleasant situations.', 'images/posts/1605452559bus5.jpg', 30, 1, '2020-11-15 09:02:39', 'active', '2020-11-15 09:02:39', '2020-12-04 04:36:47'),
(7, 'Safe and time consuming', 'Transportation is a major issue to both students and parents. Most of the university students are matured enough to travel their campuses by themselves. In these cases, students use public transport from different places. DIU is always concerned about their students and for this purpose now, We have around 50 + buses which are exclusively used for our students/faculty/admin personnel and staff. A parents Car and an ambulance is also available for the students and their parents. Total transportation system is managed from our Ashulia campus. All the transports are moving for the students on different routes and campuses from Ashulia Campus. Students just need to present their ID card for getting this facility. According to the distance they pay a small amount for the transport facility. Every month DIU authorizes to pay some subsidy considering the benefits of the Students/Faculty and Admin people. It is time consuming and also saves money. Particulerly this service is very helpful for our female students. They can easily avoid the unavoidable circumstances or any types of unpleasant situations.Transportation is a major issue to both students and parents. Most of the university students are matured enough to travel their campuses by themselves. In these cases, students use public transport from different places. DIU is always concerned about their students and for this purpose now, We have around 50 + buses which are exclusively used for our students/faculty/admin personnel and staff. A parents Car and an ambulance is also available for the students and their parents. Total transportation system is managed from our Ashulia campus. All the transports are moving for the students on different routes and campuses from Ashulia Campus. Students just need to present their ID card for getting this facility. According to the distance they pay a small amount for the transport facility. Every month DIU authorizes to pay some subsidy considering the benefits of the Students/Faculty and Admin people. It is time consuming and also saves money. Particulerly this service is very helpful for our female students. They can easily avoid the unavoidable circumstances or any types of unpleasant situations.', 'images/posts/1605452650bus7.jpg', 9, 0, '2020-11-15 09:04:10', 'active', '2020-11-15 09:04:10', '2020-11-25 00:46:17'),
(8, 'Our dreams just got one step closer to universal', 'Transportation is a major issue to both students and parents. Most of the university students are matured enough to travel their campuses by themselves. In these cases, students use public transport from different places. DIU is always concerned about their students and for this purpose now, We have around 50 + buses which are exclusively used for our students/faculty/admin personnel and staff. A parents Car and an ambulance is also available for the students and their parents. Total transportation system is managed from our Ashulia campus. All the transports are moving for the students on different routes and campuses from Ashulia Campus. Students just need to present their ID card for getting this facility. According to the distance they pay a small amount for the transport facility. Every month DIU authorizes to pay some subsidy considering the benefits of the Students/Faculty and Admin people. It is time consuming and also saves money. Particulerly this service is very helpful for our female students. They can easily avoid the unavoidable circumstances or any types of unpleasant situations.Transportation is a major issue to both students and parents. Most of the university students are matured enough to travel their campuses by themselves. In these cases, students use public transport from different places. DIU is always concerned about their students and for this purpose now, We have around 50 + buses which are exclusively used for our students/faculty/admin personnel and staff. A parents Car and an ambulance is also available for the students and their parents. Total transportation system is managed from our Ashulia campus. All the transports are moving for the students on different routes and campuses from Ashulia Campus. Students just need to present their ID card for getting this facility. According to the distance they pay a small amount for the transport facility. Every month DIU authorizes to pay some subsidy considering the benefits of the Students/Faculty and Admin people. It is time consuming and also saves money. Particulerly this service is very helpful for our female students. They can easily avoid the unavoidable circumstances or any types of unpleasant situations.Transportation is a major issue to both students and parents. Most of the university students are matured enough to travel their campuses by themselves. In these cases, students use public transport from different places. DIU is always concerned about their students and for this purpose now, We have around 50 + buses which are exclusively used for our students/faculty/admin personnel and staff. A parents Car and an ambulance is also available for the students and their parents. Total transportation system is managed from our Ashulia campus. All the transports are moving for the students on different routes and campuses from Ashulia Campus. Students just need to present their ID card for getting this facility. According to the distance they pay a small amount for the transport facility. Every month DIU authorizes to pay some subsidy considering the benefits of the Students/Faculty and Admin people. It is time consuming and also saves money. Particulerly this service is very helpful for our female students. They can easily avoid the unavoidable circumstances or any types of unpleasant situations.', 'images/posts/1605452713bus12.jpg', 4, 0, '2020-11-15 09:05:13', 'active', '2020-11-15 09:05:13', '2020-11-28 14:49:23'),
(9, 'Safe and time consuming Transportation', 'Transportation is a major issue to both students and parents. Most of the university students are matured enough to travel their campuses by themselves. In these cases, students use public transport from different places. DIU is always concerned about their students and for this purpose now, We have around 50 + buses which are exclusively used for our students/faculty/admin personnel and staff. A parents Car and an ambulance is also available for the students and their parents. Total transportation system is managed from our Ashulia campus. All the transports are moving for the students on different routes and campuses from Ashulia Campus. Students just need to present their ID card for getting this facility. According to the distance they pay a small amount for the transport facility. Every month DIU authorizes to pay some subsidy considering the benefits of the Students/Faculty and Admin people. It is time consuming and also saves money. Particulerly this service is very helpful for our female students. They can easily avoid the unavoidable circumstances or any types of unpleasant situations.Transportation is a major issue to both students and parents. Most of the university students are matured enough to travel their campuses by themselves. In these cases, students use public transport from different places. DIU is always concerned about their students and for this purpose now, We have around 50 + buses which are exclusively used for our students/faculty/admin personnel and staff. A parents Car and an ambulance is also available for the students and their parents. Total transportation system is managed from our Ashulia campus. All the transports are moving for the students on different routes and campuses from Ashulia Campus. Students just need to present their ID card for getting this facility. According to the distance they pay a small amount for the transport facility. Every month DIU authorizes to pay some subsidy considering the benefits of the Students/Faculty and Admin people. It is time consuming and also saves money. Particulerly this service is very helpful for our female students. They can easily avoid the unavoidable circumstances or any types of unpleasant situations.Transportation is a major issue to both students and parents. Most of the university students are matured enough to travel their campuses by themselves. In these cases, students use public transport from different places. DIU is always concerned about their students and for this purpose now, We have around 50 + buses which are exclusively used for our students/faculty/admin personnel and staff. A parents Car and an ambulance is also available for the students and their parents. Total transportation system is managed from our Ashulia campus. All the transports are moving for the students on different routes and campuses from Ashulia Campus. Students just need to present their ID card for getting this facility. According to the distance they pay a small amount for the transport facility. Every month DIU authorizes to pay some subsidy considering the benefits of the Students/Faculty and Admin people. It is time consuming and also saves money. Particulerly this service is very helpful for our female students. They can easily avoid the unavoidable circumstances or any types of unpleasant situations.', 'images/posts/1605452793bus13.jpg', 8, 0, '2020-11-15 09:06:33', 'active', '2020-11-15 09:06:33', '2020-11-26 02:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'active', '2020-11-29 09:26:12', '2020-11-29 09:26:12'),
(2, 'student', 'active', '2020-11-29 09:35:30', '2020-11-29 09:35:30'),
(3, 'Super Admin', 'active', '2020-12-04 04:53:26', '2020-12-04 04:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depart_time` time NOT NULL,
  `fare` int(11) NOT NULL,
  `route_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `route_name`, `destination_from`, `destination_to`, `depart_time`, `fare`, `route_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhanmondi Route', 'Dhanmondi', 'Dhanmondi', '08:30:00', 25, 'DIU is always concerned about their students and for this purpose now, We have around ... All the transports are moving for the students on different routes', 'active', '2020-11-26 11:41:31', '2020-11-26 12:18:54'),
(3, 'Uttora Route', 'Uttora', 'Uttora', '09:30:00', 19, 'DIU is always concerned about their students and for this purpose now, We have around ... All the transports are moving for the students on different routes', 'active', '2020-11-26 12:13:10', '2020-11-26 12:13:10'),
(4, 'City Campus Route', 'Ashulia', 'Ashulia', '08:00:00', 15, 'DIU is always concerned about their students and for this purpose now, We have around ... All the transports are moving for the students on different routes', 'active', '2020-11-26 12:16:01', '2020-11-26 12:16:01'),
(5, 'Others Route', 'Savar', 'Savar', '10:00:00', 10, 'DIU is always concerned about their students and for this purpose now, We have around ... All the transports are moving for the students on different routes', 'active', '2020-11-26 12:18:21', '2020-11-26 12:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `total_seat` int(11) NOT NULL,
  `left_seat` int(11) NOT NULL,
  `departure_time` time NOT NULL,
  `date` date NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `bus_id`, `route_id`, `price`, `total_seat`, `left_seat`, `departure_time`, `date`, `status`, `created_at`, `updated_at`) VALUES
(2, 4, 4, 30, 40, 40, '10:00:00', '2021-01-01', '1', '2021-01-09 15:18:38', '2021-01-10 06:42:06'),
(3, 7, 1, 40, 30, 30, '12:00:00', '2021-01-02', '1', '2021-01-10 06:50:42', '2021-01-10 06:50:42'),
(4, 7, 4, 35, 35, 35, '13:00:00', '2021-01-01', '1', '2021-01-10 09:49:55', '2021-01-10 09:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_id`, `title`, `sub_title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'AC Bus', 'Have a nice Journey', 'Responsive Profile Card UI Design using HTML & CSS profile card html css, html css profile card, profile card ui, profile card ui.Responsive Profile Card UI Design using HTML & CSS profile card html css, html css profile card, profile card ui, profile card ui', 'images/services/1606661730diubus.jpg', 'active', '2020-11-29 08:55:30', '2020-12-01 00:18:21'),
(2, 3, 'Non-AC Bus', 'Filling Awesome', 'Responsive Profile Card UI Design using HTML & CSS profile card html css, html css profile card, profile card ui, profile card ui', 'images/services/1606662388diubus.jpg', 'active', '2020-11-29 09:06:28', '2020-12-01 00:18:08'),
(3, 4, 'Ambluancse', 'First aid & Health support', 'Responsive Profile Card UI Design using HTML & CSS profile card html css, html css profile card, profile card ui, profile card ui.Responsive Profile Card UI Design using HTML & CSS profile card html css, html css profile card, profile card ui, profile card ui.', 'images/services/1606662448diubus.jpg', 'active', '2020-11-29 09:07:28', '2020-12-01 00:17:58'),
(4, 5, 'Car', 'New AC Bus Service', 'Responsive Profile Card UI Design using HTML & CSS profile card html css, html css profile card, profile card ui, profile card ui', 'images/services/1606662533diubus.jpg', 'active', '2020-11-29 09:08:53', '2020-12-01 00:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(6, 'Daffodil Internatinal University', 'A New Journey in Campus Automate Transportation System', 'active', 'images/slider/bus13.jpg', '2020-10-27 21:55:30', '2020-11-14 11:34:01'),
(8, 'DIU', 'Thank you, Daffodil!', 'active', 'images/slider/bus1.jpg', '2020-11-10 06:57:38', '2020-11-10 06:57:38'),
(9, 'DIU', 'We love the Big Apple!', 'active', 'images/slider/bus4.jpg', '2020-11-10 06:58:10', '2020-11-14 11:15:19'),
(10, 'Daffodil Internatinal University', 'A New Journey in Campus Automate Transportation System', 'active', 'images/slider/bus.jpg', '2020-11-14 11:32:49', '2020-11-17 01:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `stoppages`
--

CREATE TABLE `stoppages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stoppages`
--

INSERT INTO `stoppages` (`id`, `route_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Ashulia Campus', 'active', '2020-11-26 13:44:58', '2020-11-26 13:59:07'),
(3, 1, 'Dhanmondi Campus', 'active', '2020-11-26 13:58:57', '2020-11-26 13:58:57'),
(4, 3, 'Uttora campus', 'active', '2020-11-26 13:59:28', '2020-11-26 13:59:28'),
(5, 5, 'Savar', 'active', '2020-11-26 13:59:42', '2020-11-26 13:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `stuffs`
--

CREATE TABLE `stuffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `bus_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `helper_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `helper_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stuffs`
--

INSERT INTO `stuffs` (`id`, `category_id`, `route_id`, `bus_name`, `designation`, `driver_name`, `driver_phone`, `helper_name`, `helper_phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'AC Bus (Rojonigondha)', 'Senior', 'Mr. Rohim Miah', '01749969029', 'Mr. Korim Miah', '01949969029', 'active', '2020-11-17 13:08:36', '2020-11-17 14:00:38'),
(2, 1, 4, 'AC Bus(Surjomukhi)', 'Senior', 'Mr. korim Miah', '01749969029', 'Mr. Abul Miah', '01949969029', 'active', '2020-11-17 14:02:23', '2020-11-17 14:03:33'),
(4, 3, 1, 'Rojonigondha', 'Senior', 'Mr Raihan', '01318366612', 'Md. Korim', '01777777777', 'active', '2020-11-29 07:10:02', '2020-11-29 07:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'BONOMAYA', 'bonomaya', 'Description Bonomaya', '2020-11-15 00:46:42', '2020-11-15 00:46:42'),
(2, 'INOVATION LAB', 'inovation-lab', 'INOVATION LAB Description', '2020-11-15 00:50:42', '2020-11-15 01:00:37');

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
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_id`, `role_id`, `department`, `phone_no`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Mizanur Rahaman', 'mizanur@gmail.com', NULL, '$2y$10$w0/.ecPLSaR4S5EySHI6OeHapK5di9tEm87CNx.NZN1bxl5pI4U46', '171-15-1452', 1, 'CSE', '01749969029', 'assets/frontend/icons/profile.jpg', 'GCZWEG2R63R5fDS4lKoYl9KAboLQElCGH1WvqjR6X76hmwGmvIfPzcOiD5Io', NULL, NULL),
(8, 'Mizanur Rahaman', 'mrraihan@gmail.com', NULL, '$2y$10$Rrga/RO/ZZzUTZpUfreJruOLGpxkzJsmSURrfnAbrNST18ipT.2xm', '171-15-1611', 2, 'CSE', '01317074745', 'assets/frontend/images/profile.jpg', NULL, '2020-11-29 13:51:28', '2020-12-04 04:26:33'),
(15, 'Abbu', 'abbu@estore.com', NULL, '$2y$10$7buXICwx7s7gMzKcXSV8leJb4qvDEx9mblQj3CY7uVvo0PjPm123O', '131-10-1555', 2, 'CSE', '01749969028', 'images/user/2aa.jpg', NULL, '2020-12-04 04:59:27', '2020-12-04 05:06:49'),
(17, 'Mizanur Rahaman', 'gg@estore.com', NULL, '$2y$10$vM0TTG1a/QQupH1DfY3NSO65mf60th6vDI4cpOGatK/1rh87tJpP.', '121-87-4321', 3, 'CSE', '01749969029', 'images/user/IMG_7325.JPG', NULL, '2020-12-04 05:08:18', '2020-12-04 05:08:18'),
(18, 'Jahid Hassan', 'jahid15-1499@diu.edu.bd', NULL, '$2b$10$O8wr8gSYNE3BnDldcqTJsOEtOHalnP5BAsN55e3Alo7c1TiHLSmja\r\n', '171-15-1499', 3, 'CSE', '01956658318', 'assets/frontend/images/profile.jpg', NULL, '2020-12-04 12:05:28', '2020-12-04 12:05:28'),
(19, 'Mizanur Rahaman', 'mizanur@estore.com', NULL, '$2y$10$0Ahkl9aIXmTR77R1SKDUD.EP4QQ4cP5quBSa6kqI/mNXHhVGfpHg2', '121-17-1566', 2, 'CSE', '01888888888', 'assets/frontend/images/profile.jpg', NULL, '2020-12-04 12:09:13', '2020-12-04 12:09:13'),
(20, 'Tanjil', 'tanjil@gmail.com', NULL, '$2y$10$EJ/yTkTkgaZPkkPaHqHKTeREBa/WwfieX.rcWhs9WOfKqnJtywzZm', '191-16-1932', 2, 'CSE', '01956658319', 'assets/frontend/images/profile.jpg', '7AI50YNgT1lEn79gEaGHHSOQNl3Dc6zIMuxXHz5QhfbK2lUMjLOD8gy5FeEU', '2020-12-04 14:17:27', '2020-12-04 14:17:27'),
(21, 'Md Moklasur Rahaman', 'moklasur@gmail.com', NULL, '$2y$10$3.4OsWurVCYyE3K4EqNry.DpN9a5NptCMHWGMulxheAcnB0k3VYcm', '171-16-1990', 2, 'CSE', '01749969029', '1aa.jpg', NULL, '2020-12-07 09:52:06', '2020-12-07 11:46:49'),
(23, 'AAAA', 'aaaa@gmail.com', NULL, '$2y$10$xxFwKzGm3NpQb7FaJ6ozEu82MaDtlp0M1oBLsH0CP3lILtVh8bDny', '181-09-1445', 2, 'SWE', '01967765315', '28534589_336574690162766_1753409203_n.jpg', NULL, '2020-12-07 12:14:51', '2020-12-07 12:23:44'),
(24, 'ASD', 'as@gmail.com', NULL, '$2y$10$tGXW526AgNvAQmxvYtqg8O70Cf8xBgt/4zva2POaaunfXB0RApmEi', '121-09-8765', 2, 'CSE', '01956656319', 'images/user/profile.jpg', NULL, '2020-12-07 12:25:47', '2020-12-07 12:25:47'),
(25, 'Imran Khan', 'imran@gmail', NULL, '$2y$10$qmcDAq8EkzPu/PZ5DHcNQOClFAZtSruEAen2P7a8kG73axHXbA4QG', '181-19-1998', 2, 'SWE', '01967758318', 'IMG-20190129-WA0007.jpg', NULL, '2020-12-07 12:35:11', '2020-12-07 12:52:43'),
(26, 'ALU', 'alu@gmail.com', NULL, '$2y$10$ptGoBWLvQzL9QlpLG.iLLOnZ8wXPMK3lZ5tMoM04ZpgEZLBvZPW2i', '191-18-1777', 2, 'SWE', '01956658312', 'images/user/profile.jpg', NULL, '2020-12-07 12:53:34', '2020-12-07 12:53:34'),
(27, 'Robin', 'robin@gmail.com', NULL, '$2y$10$pPhff4OqQw898F/x/N7BfOf.Y2iSBgFCF8zH6EaVqukL/ciw.hDOS', '191-18-1998', 2, 'SWE', '01956658318', 'assets/frontend/images/profile.jpg', NULL, '2020-12-07 12:55:49', '2020-12-07 12:55:49'),
(28, 'Kolu Babu', 'kolu@gmail.com', NULL, '$2y$10$8D/a2VXzKQHKvb8GcVRn5uMteBH2rfoUqZFAxOXOHcUCLnN1R.f2q', '191-17-1998', 2, 'SWE', '01956658319', '28534589_336574690162766_1753409203_n.jpg', NULL, '2020-12-07 12:58:15', '2020-12-07 13:00:06'),
(29, 'OL', 'ol@gmail.com', NULL, '$2y$10$I3IZFDmA7YxK4Zp3ziKeoO0bKAIhaSF.7Bp55inwQ2mKCjG42z4ki', '191-17-1990', 2, 'SWE', '01877777777', '202012072014IMG_20191228_095523.jpg', NULL, '2020-12-07 13:02:46', '2020-12-07 14:14:06'),
(30, 'Aq', 'aq@gmail.com', NULL, '$2y$10$0c.dWiVIm.n39dCDvobcTO3khHW/s9.boyTz.CIANztlzt889mxKC', '191-17-1098', 2, 'SWE', '01888888888', 'images/user/profile.jpg', NULL, '2020-12-07 14:16:05', '2020-12-07 14:16:05'),
(31, 'AQQ', 'aqq@gmail.com', NULL, '$2y$10$Iujpf1SHhjz/Gcw2gJjzSuRnw6zaWXTPZAXchaUEx3PM3f3tO9Lj6', '191-19-1009', 2, 'SWE', '01956658317', 'assets/frontend/images/profile.jpg', NULL, '2020-12-07 14:19:25', '2020-12-07 14:19:25'),
(32, 'AZ', 'az@fmail.com', NULL, '$2y$10$QurMF2VDxmQOk0pRbsPdeOw0NKWNvr/QnKe2sGk1EHpW24JxjpQ3a', '191-17-1667', 2, 'CSE', '01967768518', '20201207202327484900_1881259778853126_1805147780_o.jpg', NULL, '2020-12-07 14:21:37', '2020-12-07 14:23:48'),
(33, 'Aol', 'aol@gmail.com', NULL, '$2y$10$xTUf3ufpQPyL12shWK3IXuDVWucqAgLkmkAp9MIpQ3JU1DroFx2KO', '181-16-1997', 2, 'CSE', '01967768319', '202012072025IMG_7326(a).jpg', NULL, '2020-12-07 14:24:56', '2020-12-07 14:25:20'),
(35, 'Adw', 'adw@gmail.com', NULL, '$2y$10$q4Ob0ka6lL.r80MQs5TxT.6Ia0DdZ5MNSjHVSRlrAepXJ/ntu3FIy', '191-19-1880', 2, 'CSE', '01956658318', '28534589_336574690162766_1753409203_n.jpg', NULL, '2020-12-08 00:22:46', '2020-12-08 00:30:36'),
(36, 'jahid hassan', 'j@gmail.com', NULL, '$2y$10$Oe2Wafm9c6bJImBcRmxMGex6lHte0qk7ks3FCeq4vX7H7a8cQWQaC', '171-15-1504', 2, 'CSE', '01745998860', NULL, NULL, '2021-01-10 06:17:56', '2021-01-10 06:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `published_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `image`, `link`, `view_count`, `published_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bustand', 'There is a huge transport pool on the permanent campus for students to travel. There is a bus stand next to the main campus to keep the buses safe.', 'images/videos/1605369905bus5.jpg', 'https://www.youtube.com/watch?v=sL0oTexGTc4', 0, '2020-11-14 09:40:12', 'inactive', '2020-11-14 09:40:12', '2020-11-14 11:40:24'),
(4, 'Daffodil International University\'s 16th Foundation Day at Ashulia', 'A transport system can be conceptualized as the set of relationships between nodes, networks and the demand. These relationships involve locations spatially expressing this demand, flows between them and infrastructures designed to handle and link these flows. All the components of a transport system are designed to facilitate the movements of passengers, freight and information, either as separate or joint components.', 'images/videos/1605375603noid.jpg', 'https://www.youtube.com/watch?v=_iC6JjNWr6s', 0, '2020-11-14 11:40:03', 'active', '2020-11-14 11:40:03', '2020-11-14 11:40:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buses_category_id_foreign` (`category_id`),
  ADD KEY `buses_route_id_foreign` (`route_id`);

--
-- Indexes for table `bus__categories`
--
ALTER TABLE `bus__categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bus__categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `routes_route_name_unique` (`route_name`),
  ADD UNIQUE KEY `routes_destination_from_unique` (`destination_from`),
  ADD UNIQUE KEY `routes_destination_to_unique` (`destination_to`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_bus_id_foreign` (`bus_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_category_id_foreign` (`category_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stoppages`
--
ALTER TABLE `stoppages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stoppages_route_id_foreign` (`route_id`);

--
-- Indexes for table `stuffs`
--
ALTER TABLE `stuffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stuffs_category_id_foreign` (`category_id`),
  ADD KEY `stuffs_route_id_foreign` (`route_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_user_id_unique` (`user_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bus__categories`
--
ALTER TABLE `bus__categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stoppages`
--
ALTER TABLE `stoppages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stuffs`
--
ALTER TABLE `stuffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buses`
--
ALTER TABLE `buses`
  ADD CONSTRAINT `buses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `bus__categories` (`id`),
  ADD CONSTRAINT `buses_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`);

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `bus__categories` (`id`);

--
-- Constraints for table `stoppages`
--
ALTER TABLE `stoppages`
  ADD CONSTRAINT `stoppages_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`);

--
-- Constraints for table `stuffs`
--
ALTER TABLE `stuffs`
  ADD CONSTRAINT `stuffs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `bus__categories` (`id`),
  ADD CONSTRAINT `stuffs_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
