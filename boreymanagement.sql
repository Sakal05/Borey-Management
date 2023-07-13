-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 11, 2023 at 10:30 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boreymanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_id`, `role_id`, `username`, `email`, `password`, `date_registered`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'A001', 1, 'admin', 'admin@gmail.com', '$2y$10$UnRgxJ1ErX52iYWhoSRi0.pylZSs0WLCv477.EmxrKcwVz5g8V.FC', '2023-07-09', NULL, '2023-07-09 03:49:08', '2023-07-09 03:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_id`, `role_id`, `company_name`, `username`, `email`, `password`, `date_registered`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'C001', 2, 'Borey', 'company', 'company@gmail.com', '$2y$10$BOnGj8HjB/8q7yWbuFe72OotC4ACOvnFlbFO8dckQcSvuY3Aobka6', '2023-07-09', NULL, '2023-07-09 03:49:32', '2023-07-09 03:49:32'),
(4, 'C002', 2, 'Borey1', 'company1', 'company1@gmail.com', '$2y$10$hAwqxxbudOlcABYHJX6Tl.FCj72qOp0Dc15rWp0LzOLShKuATMClG', '2023-07-09', NULL, '2023-07-09 03:49:37', '2023-07-09 03:49:37'),
(5, 'C003', 2, 'Borey2', 'company2', 'company2@gmail.com', '$2y$10$scZ3LLiSpJWnPhie0xJocevOA11YYqb2LgGwRnRWG.i4uKFfzVEG2', '2023-07-09', NULL, '2023-07-09 03:49:45', '2023-07-09 03:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `electricbills`
--

CREATE TABLE `electricbills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `house_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paid_date` date DEFAULT NULL,
  `payment_deadline` date NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `electricbills`
--

INSERT INTO `electricbills` (`id`, `user_id`, `fullname`, `phonenumber`, `house_number`, `street_number`, `category`, `paid_date`, `payment_deadline`, `price`, `payment_status`, `created_at`, `updated_at`) VALUES
(23, 'U001', 'USER', '0123456789', 'A1', '10', 'Electric Bill Payment', NULL, '2023-07-10', '100.00', 'pending', '2023-07-09 04:02:31', '2023-07-09 04:02:31'),
(24, 'U002', 'USER', '0123456789', 'A1', '10', 'Electric Bill Payment', NULL, '2023-07-10', '100.00', 'pending', '2023-07-09 04:02:34', '2023-07-09 04:02:34'),
(25, 'U002', 'USER', '0123456789', 'A1', '10', 'Electric Bill Payment', NULL, '2023-07-10', '100.00', 'pending', '2023-07-09 04:02:42', '2023-07-09 04:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_environments`
--

CREATE TABLE `form_environments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `problem_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `environment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `form_environments`
--

INSERT INTO `form_environments` (`id`, `user_id`, `username`, `fullname`, `email`, `category`, `problem_description`, `path`, `environment_status`, `created_at`, `updated_at`) VALUES
(5, 'U001', 'User1', 'USER', 'user1@gmail.com', 'Water Repair', 'Problem', 'QmUnPMB6SWXqX6D1T3BsBSfsadSYV6p9CqszkeS5gUy3Ga,QmVNJZ2beqiZ1LehDp12U8o6k8c71NCy3UqZ7LnnuTYLKw,QmTddAwCpS8Ap8zZGEkCsaDfJfuR7u9Z3STMK42vSqVWt8', 'pending', '2023-07-09 03:57:32', '2023-07-09 03:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `form_generals`
--

CREATE TABLE `form_generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `problem_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `general_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `form_generals`
--

INSERT INTO `form_generals` (`id`, `user_id`, `username`, `fullname`, `email`, `category`, `problem_description`, `path`, `general_status`, `created_at`, `updated_at`) VALUES
(1, 'U001', 'User1', 'USER', 'user1@gmail.com', 'Water Repair', '2', 'QmTPGoxd4ffwySRKpU1UhKZ9brnrWDfF9NGsmAFnpnDMss,QmVNJZ2beqiZ1LehDp12U8o6k8c71NCy3UqZ7LnnuTYLKw', 'pending', '2023-07-09 03:57:48', '2023-07-09 03:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_02_02_00000_create_roles_table', 1),
(3, '2022_02_02_00001_create_admins_table', 1),
(4, '2022_02_02_00002_create_companies_table', 1),
(5, '2022_02_02_00003_create_users_table', 1),
(6, '2022_02_02_00004_create_password_resets_table', 1),
(7, '2022_02_02_00005_create_failed_jobs_table', 1),
(8, '2023_06_16_165536_create_form_generals_table', 1),
(9, '2023_06_23_031937_create_form_environments_table', 1),
(10, '2023_06_25_082502_create_electricbills_table', 1),
(11, '2023_06_25_082517_create_waterbills_table', 1),
(12, '2023_06_25_082527_create_securitybills_table', 1),
(13, '2023_06_26_170557_create_user_infos_table', 1),
(14, '2023_07_01_164947_create_posts_table', 1),
(15, '2023_07_01_174235_create_postlikes_table', 1),
(16, '2023_07_01_174250_create_postcomments_table', 1),
(17, '2023_07_01_174257_create_postshares_table', 1),
(18, '2023_07_04_083705_create_surveys_table', 1),
(19, '2023_07_04_083725_create_questions_table', 1),
(20, '2023_07_04_083736_create_answers_table', 1),
(21, '2023_07_04_144134_create_requestforms_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Admin', 2, 'admin1@gmail.com', '2b74b8e853de2e0681e29583ff57c4efa4df14c4ff83576be4070134e24e2aff', '[\"*\"]', NULL, '2023-07-05 06:43:07', '2023-07-05 06:43:07'),
(2, 'App\\Models\\Admin', 3, 'admin2@gmail.com', '29352f913782eec1618e91ba8e424348932446d1ee70d701968589f7cbc73f2a', '[\"*\"]', NULL, '2023-07-05 06:43:14', '2023-07-05 06:43:14'),
(3, 'App\\Models\\Admin', 2, 'admin1@gmail.com', 'a5d7a4c173c2ef538d2a5a4d27f65cd306a6b6e5b8e1f467eff952c4b96d11a0', '[\"*\"]', '2023-07-05 15:04:27', '2023-07-05 06:43:25', '2023-07-05 15:04:27'),
(4, 'App\\Models\\Companies', 1, 'company1@gmail.com', '4c1b923c017fcbebf4e96b28c706ba6a251b0afd638aab3c443923e73efcab04', '[\"*\"]', NULL, '2023-07-05 06:43:35', '2023-07-05 06:43:35'),
(5, 'App\\Models\\Companies', 2, 'company2@gmail.com', '3304e12cc30603233e28824c8c3d378f75161ad2c87bf57617a79b37b6406c28', '[\"*\"]', '2023-07-05 13:04:24', '2023-07-05 06:43:42', '2023-07-05 13:04:24'),
(6, 'App\\Models\\Companies', 1, 'company1@gmail.com', '5b186776a46a5925b81f0379af4abacbed0c015b552c41af5d17bbff6035e541', '[\"*\"]', '2023-07-05 07:16:38', '2023-07-05 06:43:46', '2023-07-05 07:16:38'),
(7, 'App\\Models\\User', 1, 'user1@gmail.com', '4c1c75f53bcc5f7aebf84a74079c6f4ae9e36961958f61afaac48e5b1a52b9b0', '[\"*\"]', NULL, '2023-07-05 06:44:08', '2023-07-05 06:44:08'),
(8, 'App\\Models\\User', 2, 'user2@gmail.com', '666d607349c9707bf2fca5a82ae4e97300e6976b38be3cb3593ec63b0d41db34', '[\"*\"]', NULL, '2023-07-05 06:44:17', '2023-07-05 06:44:17'),
(9, 'App\\Models\\User', 3, 'user3@gmail.com', '5a0eb9c3be7a31afb0b62da75d3ed53eae1a38de67f18c6bf859914da378de30', '[\"*\"]', NULL, '2023-07-05 06:44:26', '2023-07-05 06:44:26'),
(10, 'App\\Models\\User', 4, 'user4@gmail.com', '46b1beee3a980b7915f9f14ff83f58815a0f43cf5a392017e0ae0fb0ce5b46fb', '[\"*\"]', '2023-07-05 07:06:11', '2023-07-05 06:44:31', '2023-07-05 07:06:11'),
(11, 'App\\Models\\User', 1, 'user1@gmail.com', '4b0c85492862d7a9c7b294b87f978cde9cd80bb3479e4127885566fee49b6b5e', '[\"*\"]', '2023-07-05 07:05:58', '2023-07-05 06:44:55', '2023-07-05 07:05:58'),
(12, 'App\\Models\\Companies', 2, 'company2@gmail.com', 'ae9564be36aa98762a0bb256c8930240b992b9ac21616b399b2a05d06de61e93', '[\"*\"]', '2023-07-05 07:52:31', '2023-07-05 07:16:47', '2023-07-05 07:52:31'),
(13, 'App\\Models\\User', 2, 'user2@gmail.com', 'f087673394cf20651aaae4e709cd91b874c93e811e00c82d5261daba3ffba035', '[\"*\"]', '2023-07-05 07:51:41', '2023-07-05 07:51:18', '2023-07-05 07:51:41'),
(14, 'App\\Models\\Companies', 1, 'company1@gmail.com', 'd402df14f457d8f3dc6cdf80881e3c54b742d482f70ac95ce76a7fa04b408cff', '[\"*\"]', '2023-07-05 08:25:15', '2023-07-05 07:52:39', '2023-07-05 08:25:15'),
(15, 'App\\Models\\Companies', 2, 'company2@gmail.com', '25f6685c4738b6413247b6823b1e8a4eb6dcfaff2fb6eb17712ecf25e57a33ce', '[\"*\"]', '2023-07-05 09:35:37', '2023-07-05 08:26:00', '2023-07-05 09:35:37'),
(16, 'App\\Models\\Companies', 2, 'company2@gmail.com', '2c750a928d63ea48e045038fd81e775429c80131df9ddc6a5fc5659fed18d3c2', '[\"*\"]', '2023-07-05 09:25:39', '2023-07-05 09:17:35', '2023-07-05 09:25:39'),
(17, 'App\\Models\\Companies', 1, 'company1@gmail.com', '3b9ba9388c5914d9821eb114e944317436cfc68c94629394018e0618576e4498', '[\"*\"]', '2023-07-05 09:51:58', '2023-07-05 09:26:17', '2023-07-05 09:51:58'),
(18, 'App\\Models\\User', 1, 'user1@gmail.com', 'ae4b4f3f4043d7b7f72f6b45f9c422610a2cc27b0fdfd4d448022be3277e1bae', '[\"*\"]', '2023-07-05 10:43:49', '2023-07-05 09:46:46', '2023-07-05 10:43:49'),
(19, 'App\\Models\\Companies', 2, 'company2@gmail.com', 'bb46a33da793bea097ab6e7a56fea51795a8b79f2d62c10cbb7611e23842f8a3', '[\"*\"]', '2023-07-05 09:59:31', '2023-07-05 09:52:05', '2023-07-05 09:59:31'),
(20, 'App\\Models\\Companies', 1, 'company1@gmail.com', 'c9a817eafd3c0188240ec1f443c3dc2ee09fcb1d0da7dba16ccc7d96b087f16f', '[\"*\"]', '2023-07-05 21:01:05', '2023-07-05 09:59:37', '2023-07-05 21:01:05'),
(21, 'App\\Models\\User', 2, 'user2@gmail.com', 'c80d7524c716f049b92c32950233cb601d1ba82dde02582549f6510a7a7687f0', '[\"*\"]', '2023-07-05 10:47:52', '2023-07-05 10:47:41', '2023-07-05 10:47:52'),
(22, 'App\\Models\\User', 1, 'user1@gmail.com', '151d3ff486589e8a953d030513087e35dfc8c0edd7be757d4c4360dcb431d62c', '[\"*\"]', '2023-07-05 13:00:50', '2023-07-05 11:11:07', '2023-07-05 13:00:50'),
(23, 'App\\Models\\User', 4, 'user4@gmail.com', '2638c2606dc5a3d6b5d7f564d955f37714ef2c4ae00eaa1290e456b35cfc1732', '[\"*\"]', NULL, '2023-07-05 13:01:55', '2023-07-05 13:01:55'),
(24, 'App\\Models\\User', 4, 'user4@gmail.com', '05efdd0218ca2a7c2779c637683e10ca42d53de413d9156887a2f244d187ab28', '[\"*\"]', '2023-07-05 13:02:45', '2023-07-05 13:02:13', '2023-07-05 13:02:45'),
(25, 'App\\Models\\User', 1, 'user1@gmail.com', '5bef27f51b2272b347b58d46f4ab8a05565ffcfdb70663c14f012a41455b2841', '[\"*\"]', '2023-07-05 13:02:58', '2023-07-05 13:02:50', '2023-07-05 13:02:58'),
(29, 'App\\Models\\User', 5, 'lysokleng3@gmail.com', 'fa3af74d84b2a7a10797c17340934c5363dddb0ef3f9e1a558853131d5a2755e', '[\"*\"]', '2023-07-05 20:28:46', '2023-07-05 20:22:35', '2023-07-05 20:28:46'),
(30, 'App\\Models\\Admin', 4, 'admin3@gmail.com', 'c05e58c89340ed32f4e73a284b9e4b4957babc1b81ee124dad08c3bb3bde4613', '[\"*\"]', NULL, '2023-07-05 20:56:15', '2023-07-05 20:56:15'),
(31, 'App\\Models\\Admin', 4, 'admin3@gmail.com', '7b4d0d97b3b1eabfc7e285334610d2cb5f4400404770d0cbf001876cc79562d7', '[\"*\"]', '2023-07-05 20:58:00', '2023-07-05 20:56:32', '2023-07-05 20:58:00'),
(32, 'App\\Models\\User', 6, 'user5@gmail.com', '70c0af0fcf445b62a24ffa5004cbfed7392565b11bdcf5f942975ca75acb0e84', '[\"*\"]', '2023-07-05 21:00:02', '2023-07-05 20:59:28', '2023-07-05 21:00:02'),
(33, 'App\\Models\\Admin', 5, 'admin@gmail.com', 'c3cd3a4b8fc4d50873b66926449d1d7468b22339e6b2468099a59f00ec80c5ea', '[\"*\"]', NULL, '2023-07-09 03:47:17', '2023-07-09 03:47:17'),
(34, 'App\\Models\\Admin', 5, 'admin@gmail.com', '75e2e786b78b2de341e0a8d2347982bf6a64c494e47bfb540907f7560b8d5b61', '[\"*\"]', '2023-07-09 03:47:45', '2023-07-09 03:47:32', '2023-07-09 03:47:45'),
(35, 'App\\Models\\Admin', 6, 'admin@gmail.com', 'd3d07fd2fb3e3e9887723884bfbd3d8dd2a1a4824e67271ee52c67e6a05e4aa7', '[\"*\"]', '2023-07-09 04:00:40', '2023-07-09 03:49:08', '2023-07-09 04:00:40'),
(36, 'App\\Models\\Companies', 3, 'company@gmail.com', 'be355ac18c4a1799f993ca48e8bc9cf9bc64b806243847567bc2536cfa74050c', '[\"*\"]', NULL, '2023-07-09 03:49:32', '2023-07-09 03:49:32'),
(37, 'App\\Models\\Companies', 4, 'company1@gmail.com', '5e8cb85e2fc48e7ea40ab314927903185543848a8cbb6d1fafb66d058342578a', '[\"*\"]', NULL, '2023-07-09 03:49:37', '2023-07-09 03:49:37'),
(38, 'App\\Models\\Companies', 5, 'company2@gmail.com', 'ad09fd5616b439cfbc18fbe7a3590b94711797d4b96c1ca5a224f0232511459b', '[\"*\"]', NULL, '2023-07-09 03:49:45', '2023-07-09 03:49:45'),
(39, 'App\\Models\\User', 7, 'user1@gmail.com', '58eaff6ee0304ea0fb6732a812914090df0929d3c02c20a82b8f936929d67361', '[\"*\"]', NULL, '2023-07-09 03:50:12', '2023-07-09 03:50:12'),
(40, 'App\\Models\\User', 8, 'user2@gmail.com', 'ccc1aec42149ccc94dfa44807e74fba68638a2f51ab44bea963e9474a416a0b1', '[\"*\"]', NULL, '2023-07-09 03:50:23', '2023-07-09 03:50:23'),
(41, 'App\\Models\\User', 9, 'user3@gmail.com', '221ddec7063ec758cbe91257d189f2e599030a1f45d01863bd0d1dbe102a7a38', '[\"*\"]', NULL, '2023-07-09 03:50:28', '2023-07-09 03:50:28'),
(42, 'App\\Models\\User', 10, 'user4@gmail.com', '41b107cf043355f58d05fe50c869800a922e376c21acc29075e08e05f23060e4', '[\"*\"]', NULL, '2023-07-09 03:50:34', '2023-07-09 03:50:34'),
(43, 'App\\Models\\User', 11, 'user5@gmail.com', '6c0bedd635901fb365e8a2e662a9166cfe84ad1d0be00dc393bd6d501788208b', '[\"*\"]', NULL, '2023-07-09 03:50:40', '2023-07-09 03:50:40'),
(44, 'App\\Models\\User', 12, 'user6@gmail.com', 'd2222357e056367e8a5559f9df5275610b735d3b75ea548b1f4702f76cb3d9f9', '[\"*\"]', NULL, '2023-07-09 03:50:52', '2023-07-09 03:50:52'),
(45, 'App\\Models\\User', 13, 'user7@gmail.com', '39933037953263651e31c46192138331566360de667a1fee7165539ffff01d3f', '[\"*\"]', NULL, '2023-07-09 03:50:58', '2023-07-09 03:50:58'),
(46, 'App\\Models\\User', 14, 'user8@gmail.com', 'af404fd321761443c12d63774ebf075b5605d9c23f06028d948400f6c2eda477', '[\"*\"]', NULL, '2023-07-09 03:51:03', '2023-07-09 03:51:03'),
(47, 'App\\Models\\User', 15, 'user9@gmail.com', 'b43b9ea0648778841d65eca0350819f634afbef7a44a02720a215557b6e1a27f', '[\"*\"]', NULL, '2023-07-09 03:51:16', '2023-07-09 03:51:16'),
(48, 'App\\Models\\User', 16, 'user10@gmail.com', '031fcd63c35200efc3ebd4d7fdc356b09c382a2f81452099ebb9e9b3999ac932', '[\"*\"]', NULL, '2023-07-09 03:51:26', '2023-07-09 03:51:26'),
(49, 'App\\Models\\User', 17, 'user11@gmail.com', 'f5ed555ec837aa1b7ead6bc3ef60212136cfda192e423c6981f0b7b166a55d96', '[\"*\"]', NULL, '2023-07-09 03:51:49', '2023-07-09 03:51:49'),
(50, 'App\\Models\\User', 18, 'user12@gmail.com', '4f94ad90ae439ca623c5437555cb7979e9693d5013c50151f013e3812d30e9a6', '[\"*\"]', NULL, '2023-07-09 03:51:54', '2023-07-09 03:51:54'),
(51, 'App\\Models\\User', 19, 'user13@gmail.com', 'b7ca45b8b33bc1a4452b0a00578728c5a9fd11edef016f7941b98ccccce21a65', '[\"*\"]', NULL, '2023-07-09 03:51:58', '2023-07-09 03:51:58'),
(52, 'App\\Models\\User', 20, 'user14@gmail.com', '4dbbee2381fb23eea574682cc4f056ef3c976838a00d7d2d567e082b4af869f6', '[\"*\"]', NULL, '2023-07-09 03:52:05', '2023-07-09 03:52:05'),
(53, 'App\\Models\\User', 21, 'user15@gmail.com', 'a10d339e609c0d958d5de5b72739708acefbdadc3c1b8bbfee786e1a758e2636', '[\"*\"]', NULL, '2023-07-09 03:52:10', '2023-07-09 03:52:10'),
(54, 'App\\Models\\User', 7, 'user1@gmail.com', 'c3b8153297d1c785d3b232760832c5d456dcab6171e43722ae4b2bcd4d32f69e', '[\"*\"]', '2023-07-09 04:07:08', '2023-07-09 03:57:23', '2023-07-09 04:07:08'),
(55, 'App\\Models\\Companies', 4, 'company1@gmail.com', '482b4d6152d82c3bac457125ccc987ed06ddbebb637dd659f1057b1dc140b3af', '[\"*\"]', '2023-07-09 03:58:38', '2023-07-09 03:58:20', '2023-07-09 03:58:38'),
(56, 'App\\Models\\Companies', 4, 'company1@gmail.com', '58687a917bf5382d1868fce20b7cad7a7bf922cb6086610bc301a3ef47e8df50', '[\"*\"]', '2023-07-09 04:01:12', '2023-07-09 04:01:05', '2023-07-09 04:01:12'),
(57, 'App\\Models\\Companies', 3, 'company@gmail.com', '1d6a93b6d712a1c46f58cc2ec76765ddbfa88afa67b5de029546d5b8a5bd2cd6', '[\"*\"]', '2023-07-09 04:05:07', '2023-07-09 04:01:22', '2023-07-09 04:05:07'),
(58, 'App\\Models\\User', 8, 'user2@gmail.com', 'efda416a3eeef3aa87ef1e0e2e343902b07b94d0418a8903e6ecc49f6e7a4d73', '[\"*\"]', '2023-07-09 04:02:05', '2023-07-09 04:01:55', '2023-07-09 04:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `postcomments`
--

CREATE TABLE `postcomments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postlikes`
--

CREATE TABLE `postlikes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `company_id`, `content_type`, `heading`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'U001', NULL, 'event1111', 'heading', '12345', 'QmTddAwCpS8Ap8zZGEkCsaDfJfuR7u9Z3STMK42vSqVWt8,QmaQUsJorgFSAHLjYAwXbCEE6BvjKYnezzv6tzXJLPinxJ,QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN,QmV5YwcKdbkyYGKRCmYsXH2rnogA3U2B37CeKkURMq2Kam', '2023-07-09 04:07:08', '2023-07-09 04:07:08'),
(2, 'U001', NULL, 'event222', 'heading', '12345', 'QmTddAwCpS8Ap8zZGEkCsaDfJfuR7u9Z3STMK42vSqVWt8,QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN,QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN,QmV5YwcKdbkyYGKRCmYsXH2rnogA3U2B37CeKkURMq2Kam', '2023-07-09 04:07:08', '2023-07-09 04:07:08'),
(3, 'U002', NULL, 'event33', 'heading', '12345', 'QmTddAwCpS8Ap8zZGEkCsaDfJfuR7u9Z3STMK42vSqVWt8,QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN,QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN,QmV5YwcKdbkyYGKRCmYsXH2rnogA3U2B37CeKkURMq2Kam', '2023-07-09 04:07:08', '2023-07-09 04:07:08'),
(4, 'U001', NULL, 'event444', 'heading', '12345', 'QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN,QmaQUsJorgFSAHLjYAwXbCEE6BvjKYnezzv6tzXJLPinxJ,QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN,QmV5YwcKdbkyYGKRCmYsXH2rnogA3U2B37CeKkURMq2Kam', '2023-07-09 04:07:08', '2023-07-09 04:07:08');


-- --------------------------------------------------------

--
-- Table structure for table `postshares`
--

CREATE TABLE `postshares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('text','mcq') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requestforms`
--

CREATE TABLE `requestforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `request_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `request_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-07-05 06:42:46', '2023-07-05 06:42:46'),
(2, 'company', '2023-07-05 06:42:46', '2023-07-05 06:42:46'),
(3, 'user', '2023-07-05 06:42:46', '2023-07-05 06:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `securitybills`
--

CREATE TABLE `securitybills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `house_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paid_date` date DEFAULT NULL,
  `payment_deadline` date NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `securitybills`
--

INSERT INTO `securitybills` (`id`, `user_id`, `fullname`, `phonenumber`, `house_number`, `street_number`, `category`, `paid_date`, `payment_deadline`, `price`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'U001', 'USER', '0123456789', 'A1', '10', 'Security Bill Payment', NULL, '2023-06-27', '100.00', 'pending', '2023-07-09 04:04:15', '2023-07-09 04:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `role_id`, `company_id`, `username`, `fullname`, `email`, `email_verified_at`, `password`, `date_registered`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'U001', 3, 'C001', 'User1', 'USER', 'user1@gmail.com', NULL, '$2y$10$Fm6kWLYM3Mih/OGOJfah/.3LINlmeBsGaEkNifCWoS.dk3NT8mQca', '2023-07-09', NULL, '2023-07-09 03:50:12', '2023-07-09 03:50:12'),
(8, 'U002', 3, 'C001', 'User2', 'USER', 'user2@gmail.com', NULL, '$2y$10$OcHdYJs5nDfaYLbmut4uRuJplhqyj4tmHIF5gk78ZpyNvU4nL.eeS', '2023-07-09', NULL, '2023-07-09 03:50:23', '2023-07-09 03:50:23'),
(9, 'U003', 3, 'C001', 'User3', 'USER', 'user3@gmail.com', NULL, '$2y$10$EXhzkH0vz.JGLK..Jo4jW.EooBFfHh5T/14xISH8vF6DTqATeE1n2', '2023-07-09', NULL, '2023-07-09 03:50:28', '2023-07-09 03:50:28'),
(10, 'U004', 3, 'C001', 'User4', 'USER', 'user4@gmail.com', NULL, '$2y$10$QOgmY.t46.tzrZZ.sUeJzOH8Xqr.fUqRAWlSf5T5rDYuW/TZBAx6.', '2023-07-09', NULL, '2023-07-09 03:50:34', '2023-07-09 03:50:34'),
(11, 'U005', 3, 'C001', 'User5', 'USER', 'user5@gmail.com', NULL, '$2y$10$eskrOYdLuJmcQUU.Np3Jxes4jNpDH31WzxFG3ueQsE0Azj7MqIzhW', '2023-07-09', NULL, '2023-07-09 03:50:40', '2023-07-09 03:50:40'),
(12, 'U006', 3, 'C002', 'User6', 'USER', 'user6@gmail.com', NULL, '$2y$10$ZTt5ow7zaTe.Zf8u/QilJ.qlXphZZI.P8yCFXQFLaz2qedTtdfDia', '2023-07-09', NULL, '2023-07-09 03:50:52', '2023-07-09 03:50:52'),
(13, 'U007', 3, 'C002', 'User7', 'USER', 'user7@gmail.com', NULL, '$2y$10$LxRi8ZzDphdVp/MZkU0wVuWr2JX28Qyc34hHOCpkhz4Na2bbRbK7G', '2023-07-09', NULL, '2023-07-09 03:50:58', '2023-07-09 03:50:58'),
(14, 'U008', 3, 'C002', 'User8', 'USER', 'user8@gmail.com', NULL, '$2y$10$pMB0tbCuYr1i/6IUya.4V.VvntOtvzxvn53wHw2tcgDPm2deaVdY2', '2023-07-09', NULL, '2023-07-09 03:51:03', '2023-07-09 03:51:03'),
(15, 'U009', 3, 'C002', 'User9', 'USER', 'user9@gmail.com', NULL, '$2y$10$IShZLd2lOWgk/LzcJTeX3ulYXu5h2FYINAIgmaQNxe1BDXPptghM.', '2023-07-09', NULL, '2023-07-09 03:51:16', '2023-07-09 03:51:16'),
(16, 'U010', 3, 'C002', 'User10', 'USER', 'user10@gmail.com', NULL, '$2y$10$FCFeHfIsXUZ3EeNI0yoU.uGv4hvumiqhw6I6ncsH2RYtTHs7fvYT.', '2023-07-09', NULL, '2023-07-09 03:51:26', '2023-07-09 03:51:26'),
(17, 'U011', 3, 'C003', 'User11', 'USER', 'user11@gmail.com', NULL, '$2y$10$Kr.BHdInn3pN76W2zlc9cOqKBxa88T.EVIR8QKMT2nOamvCTwBbd2', '2023-07-09', NULL, '2023-07-09 03:51:49', '2023-07-09 03:51:49'),
(18, 'U012', 3, 'C003', 'User12', 'USER', 'user12@gmail.com', NULL, '$2y$10$1uCXDBqyfTGZpNEE1u6KUOeBzbIGc7liMj/VLJcn4YmoFuJ8D16Vq', '2023-07-09', NULL, '2023-07-09 03:51:54', '2023-07-09 03:51:54'),
(19, 'U013', 3, 'C003', 'User13', 'USER', 'user13@gmail.com', NULL, '$2y$10$sBDDQcSYI6//hKqRVt6MBek6lgc8ImOdls91Bb.HxtVFalYFoVavq', '2023-07-09', NULL, '2023-07-09 03:51:58', '2023-07-09 03:51:58'),
(20, 'U014', 3, 'C003', 'User14', 'USER', 'user14@gmail.com', NULL, '$2y$10$KMwmCmisYsPc8btz1I/csexmHkYJgTEgkus6X/SLlhdhvERWghtp.', '2023-07-09', NULL, '2023-07-09 03:52:05', '2023-07-09 03:52:05'),
(21, 'U015', 3, 'C003', 'User15', 'USER', 'user15@gmail.com', NULL, '$2y$10$kJYq0QpLdxBEDGZOG885IuXMa1vqmdsT4CdIHudbOXRCsRT7bfdUW', '2023-07-09', NULL, '2023-07-09 03:52:10', '2023-07-09 03:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_cid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `house_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `house_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `user_id`, `image_cid`, `dob`, `gender`, `phonenumber`, `house_type`, `house_number`, `street_number`, `created_at`, `updated_at`) VALUES
(7, 'U001', 'QmVNJZ2beqiZ1LehDp12U8o6k8c71NCy3UqZ7LnnuTYLKw', '2003-05-24', 'male', '0123456789', 'Twin Villa', 'A1', '10', '2023-07-09 03:50:12', '2023-07-09 03:59:58'),
(8, 'U002', 'QmVNJZ2beqiZ1LehDp12U8o6k8c71NCy3UqZ7LnnuTYLKw', '2003-05-24', 'male', '0123456789', 'Twin Villa', 'A1', '10', '2023-07-09 03:50:23', '2023-07-09 04:02:05'),
(9, 'U003', 'QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:50:28', '2023-07-09 03:50:28'),
(10, 'U004','QmVC8nzLhJU3PDths7dTTZbV2jiS2hvWkye1cuH9k3Ff8c', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:50:34', '2023-07-09 03:50:34'),
(11, 'U005','QmSKAucG6gpGo3yWD93yuCMrFpwUYqYpgDyNdHHv7EAf2n', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:50:40', '2023-07-09 03:50:40'),
(12, 'U006', 'QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:50:52', '2023-07-09 03:50:52'),
(13, 'U007', 'QmUnPMB6SWXqX6D1T3BsBSfsadSYV6p9CqszkeS5gUy3Ga', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:50:58', '2023-07-09 03:50:58'),
(14, 'U008', 'QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:51:03', '2023-07-09 03:51:03'),
(15, 'U009', 'QmUnPMB6SWXqX6D1T3BsBSfsadSYV6p9CqszkeS5gUy3Ga', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:51:16', '2023-07-09 03:51:16'),
(16, 'U010', 'QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:51:26', '2023-07-09 03:51:26'),
(17, 'U011', 'QmUnPMB6SWXqX6D1T3BsBSfsadSYV6p9CqszkeS5gUy3Ga', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:51:49', '2023-07-09 03:51:49'),
(18, 'U012', 'QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:51:54', '2023-07-09 03:51:54'),
(19, 'U013', 'QmUnPMB6SWXqX6D1T3BsBSfsadSYV6p9CqszkeS5gUy3Ga', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:51:58', '2023-07-09 03:51:58'),
(20, 'U014', 'QmfPzsn63eezKDBQoFncqnhsBqSaTZ5q19kHQzcvZEk6RN', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:52:05', '2023-07-09 03:52:05'),
(21, 'U015', 'QmUnPMB6SWXqX6D1T3BsBSfsadSYV6p9CqszkeS5gUy3Ga', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 03:52:10', '2023-07-09 03:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `waterbills`
--

CREATE TABLE `waterbills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `house_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paid_date` date DEFAULT NULL,
  `payment_deadline` date NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `waterbills`
--

INSERT INTO `waterbills` (`id`, `user_id`, `fullname`, `phonenumber`, `house_number`, `street_number`, `category`, `paid_date`, `payment_deadline`, `price`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'U001', 'USER', '0123456789', 'A1', '10', 'Water Bill Payment', NULL, '2023-06-27', '120.00', 'pending', '2023-07-09 04:05:07', '2023-07-09 04:05:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_admin_id_unique` (`admin_id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_role_id_foreign` (`role_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_foreign` (`question_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_company_id_unique` (`company_id`),
  ADD UNIQUE KEY `companies_username_unique` (`username`),
  ADD UNIQUE KEY `companies_email_unique` (`email`),
  ADD KEY `companies_role_id_foreign` (`role_id`);

--
-- Indexes for table `electricbills`
--
ALTER TABLE `electricbills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `electricbills_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `form_environments`
--
ALTER TABLE `form_environments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_environments_user_id_foreign` (`user_id`);

--
-- Indexes for table `form_generals`
--
ALTER TABLE `form_generals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_generals_user_id_foreign` (`user_id`);

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
-- Indexes for table `postcomments`
--
ALTER TABLE `postcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postcomments_user_id_foreign` (`user_id`),
  ADD KEY `postcomments_post_id_foreign` (`post_id`),
  ADD KEY `postcomments_company_id_foreign` (`company_id`);

--
-- Indexes for table `postlikes`
--
ALTER TABLE `postlikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postlikes_user_id_foreign` (`user_id`),
  ADD KEY `postlikes_post_id_foreign` (`post_id`),
  ADD KEY `postlikes_company_id_foreign` (`company_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_company_id_foreign` (`company_id`);

--
-- Indexes for table `postshares`
--
ALTER TABLE `postshares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postshares_user_id_foreign` (`user_id`),
  ADD KEY `postshares_post_id_foreign` (`post_id`),
  ADD KEY `postshares_company_id_foreign` (`company_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_survey_id_foreign` (`survey_id`);

--
-- Indexes for table `requestforms`
--
ALTER TABLE `requestforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requestforms_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `securitybills`
--
ALTER TABLE `securitybills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitybills_user_id_foreign` (`user_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveys_company_id_foreign` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_company_id_foreign` (`company_id`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_infos_user_id_foreign` (`user_id`);

--
-- Indexes for table `waterbills`
--
ALTER TABLE `waterbills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `waterbills_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `electricbills`
--
ALTER TABLE `electricbills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_environments`
--
ALTER TABLE `form_environments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `form_generals`
--
ALTER TABLE `form_generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `postcomments`
--
ALTER TABLE `postcomments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postlikes`
--
ALTER TABLE `postlikes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `postshares`
--
ALTER TABLE `postshares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requestforms`
--
ALTER TABLE `requestforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `securitybills`
--
ALTER TABLE `securitybills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `waterbills`
--
ALTER TABLE `waterbills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `electricbills`
--
ALTER TABLE `electricbills`
  ADD CONSTRAINT `electricbills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `form_environments`
--
ALTER TABLE `form_environments`
  ADD CONSTRAINT `form_environments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `form_generals`
--
ALTER TABLE `form_generals`
  ADD CONSTRAINT `form_generals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `postcomments`
--
ALTER TABLE `postcomments`
  ADD CONSTRAINT `postcomments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `postcomments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `postcomments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `postlikes`
--
ALTER TABLE `postlikes`
  ADD CONSTRAINT `postlikes_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `postlikes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `postlikes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `postshares`
--
ALTER TABLE `postshares`
  ADD CONSTRAINT `postshares_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `postshares_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `postshares_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `requestforms`
--
ALTER TABLE `requestforms`
  ADD CONSTRAINT `requestforms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `securitybills`
--
ALTER TABLE `securitybills`
  ADD CONSTRAINT `securitybills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `surveys`
--
ALTER TABLE `surveys`
  ADD CONSTRAINT `surveys_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD CONSTRAINT `user_infos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `waterbills`
--
ALTER TABLE `waterbills`
  ADD CONSTRAINT `waterbills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
