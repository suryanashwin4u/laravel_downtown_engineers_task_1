-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 02:31 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_19_082528_create_posts_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category`, `product`, `created_at`, `updated_at`) VALUES
(1, 'Qui cum non sint ut sed.', 'dfsd', '2021-10-20 05:10:03', '2021-10-20 06:34:47'),
(2, 'Voluptatum alias aut voluptatem exercitationem maxime beatae voluptatem.', 'asdfasd', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(3, 'Et id cum quod quis sint commodi eligendi exercitationem.', 'asdfasdf', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(4, 'Corporis quaerat nostrum rerum voluptas culpa quis provident.', 'Aliquid non aut molestias dicta animi voluptatem. Sint eos et et ullam. Minima accusantium nihil aliquam dolorem qui qui. Sit nihil autem dolorem reprehenderit.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(5, 'Dolores fugiat distinctio fugit.', 'Eligendi quia quo est nihil omnis dolorem. Eos nemo magni autem fugiat est et autem. Ipsa libero maxime sequi consequatur nihil ducimus. Quas ut non eos sunt.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(6, 'Nemo quibusdam nisi et non ut et.', 'Eos explicabo commodi autem quibusdam. Accusamus enim qui quae ex exercitationem. Iure consequatur magni distinctio. Possimus aliquid distinctio inventore facilis qui totam doloremque.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(7, 'Excepturi ut et sed fugit vero accusamus rerum.', 'Qui sunt modi ut accusamus optio architecto. Commodi cumque aliquid qui cumque facere natus nobis. Aut officiis ut deserunt sit quia.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(8, 'Accusamus iusto totam quo quidem non deserunt cupiditate ut.', 'Odit quia omnis sint autem mollitia repudiandae nam magnam. Tempora tempore explicabo veniam repudiandae atque quo alias facere. Id dicta rem sed. Aliquid provident ea possimus voluptates.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(9, 'Fuga voluptatem numquam sint.', 'Voluptatem veniam quo doloribus sit. Veniam aut tempora officiis ipsam. Quas voluptate earum natus voluptas soluta illum labore. Necessitatibus quisquam molestias aspernatur sunt in velit. Tempore eaque quas porro fugiat dolorum.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(10, 'Aut aperiam incidunt et adipisci eum accusantium.', 'Rerum vitae mollitia sint quis. Pariatur aut ipsum ut praesentium ut saepe. Consequatur nobis rerum ab ut consectetur eius inventore. Quasi rerum nostrum rerum cupiditate.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(11, 'Possimus praesentium aut qui.', 'Aliquid architecto voluptatibus officiis occaecati quia. Et qui voluptas nisi consequuntur. Quos rerum ea suscipit dolor voluptates. Culpa odio debitis dolor suscipit asperiores.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(12, 'Provident voluptate dolor reiciendis iusto officia.', 'Quo sit officia voluptatem modi est cumque non nostrum. Suscipit nemo ipsa nesciunt deleniti quaerat vel. Sit nemo aut nulla.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(13, 'Ipsam necessitatibus et neque et ipsum.', 'Saepe nostrum qui incidunt deleniti quas dolorem velit sapiente. Qui hic distinctio quis est repellat.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(14, 'Et rerum quam ut et eos.', 'Est velit laborum sed quo eos. Aut voluptas et pariatur laborum dolorum. Sunt cupiditate omnis nostrum asperiores ut dolor sunt.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(15, 'Dolorum quisquam dicta sint harum dolore.', 'Quisquam modi necessitatibus aut. Officiis in optio animi consequatur eligendi. Nesciunt et nulla dolorem doloribus. In unde molestiae autem voluptate aperiam enim omnis.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(16, 'Commodi qui reiciendis voluptas est provident.', 'Asperiores non impedit veniam totam in. Libero deleniti et ut ab quibusdam. Est voluptatem est asperiores quia et distinctio. Debitis expedita mollitia omnis harum natus.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(17, 'Numquam ea illum deleniti blanditiis dolorem adipisci.', 'Delectus commodi molestiae temporibus quas voluptatum. Ea soluta quis et nihil accusantium voluptates molestiae. Necessitatibus qui ullam assumenda vero quibusdam eius. Sed dolores error nisi nihil qui et. Sequi est quis nobis illo nulla.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(18, 'Et quibusdam voluptas laboriosam veritatis.', 'Culpa ut ratione sint eum. Dolorem aut mollitia et dignissimos facilis. Corrupti minus asperiores est sint libero non nemo. Explicabo iusto eveniet ipsam omnis.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(19, 'Quae eos consequatur et voluptates iste culpa animi sunt.', 'Hic incidunt laborum repellat ullam provident dignissimos molestiae cumque. Est harum nihil assumenda et commodi repudiandae eos omnis. Accusantium voluptate qui eveniet exercitationem dolores. Qui qui quis ut voluptate.', '2021-10-20 05:10:03', '2021-10-20 05:10:03'),
(20, 'Ut omnis cumque nulla neque qui sapiente.', 'Voluptas et error perferendis quod et. Culpa illo atque accusamus amet. Inventore labore amet sed nobis nisi ut commodi. Veniam explicabo nobis non quod hic nihil.', '2021-10-20 05:10:03', '2021-10-20 05:10:03');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abhi', 'a@a.com', NULL, '$2y$10$iM04CKoHqBpLyh.iYrj7YeYuNu3YzIjpzryvKEuKmA22E3qdS6cLa', NULL, '2021-10-20 05:11:09', '2021-10-20 05:11:09');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
