-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 19 2022 г., 21:02
-- Версия сервера: 10.4.12-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `userapi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `category`, `parent_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Fruits', 1, '2022-07-19 10:36:05', '2022-07-19 10:36:05'),
(2, 'vegetables', 2, '2022-07-19 10:36:41', '2022-07-19 10:36:41'),
(3, 'greens', 3, '2022-07-19 10:37:10', '2022-07-19 10:38:26'),
(5, 'greens', 4, '2022-07-19 10:39:12', '2022-07-19 10:39:12');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_18_054114_create_user_table', 1),
(6, '2022_07_18_054352_create_role_table', 1),
(7, '2022_07_18_054525_create_category_table', 1),
(8, '2022_07_18_054540_create_product_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `title`, `img`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Ananas', 'https://source.unsplash.com/random', 7, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(2, 'watermelon', 'https://source.unsplash.com/random', 7, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(3, 'cherry', 'https://source.unsplash.com/random', 5, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(4, 'watermelon', 'https://source.unsplash.com/random', 2, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(5, 'cherry', 'https://source.unsplash.com/random', 9, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(6, 'Ananas', 'https://source.unsplash.com/random', 5, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(7, 'quince', 'https://source.unsplash.com/random', 9, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(8, 'Apple', 'https://source.unsplash.com/random', 8, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(9, 'Ananas', 'https://source.unsplash.com/random', 9, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(10, 'cherry', 'https://source.unsplash.com/random', 1, '2022-07-19 00:32:49', '2022-07-19 00:32:49');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user', '2022-07-19 10:44:11', '2022-07-19 10:44:11'),
(2, 'admin', '2022-07-19 10:44:20', '2022-07-19 10:44:20');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nick_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `firstname` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `nick_name`, `email`, `email_verified_at`, `firstname`, `lastname`, `password`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Ekonomist', 'dilshod941004@inbox.ru', NULL, 'Dilshod', 'Ernazarov', 'skyrim1004', 1, '2022-07-18 04:19:41', '2022-07-18 04:19:41'),
(2, 'Programmists', 'elyor941004@inbox.ru', NULL, 'Elyor', 'Ernazarov', 'skyrim1004', 1, '2022-07-18 04:20:07', '2022-07-18 04:20:33'),
(3, 'Programmist', 'elyor1004@inbox.ru', NULL, 'Elyo', 'Ernazarov', 'skyrim1004', 1, '2022-07-18 05:04:12', '2022-07-18 05:04:12'),
(4, 'Ms. Dawn Nitzsche I', 'lucius.gibson@example.org', NULL, 'Retta', 'Fritsch', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:30:45', '2022-07-19 00:30:45'),
(5, 'Alena Kemmer', 'miracle.ortiz@example.net', NULL, 'Travis', 'Cassin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:30:45', '2022-07-19 00:30:45'),
(6, 'Lorna Huels DVM', 'hobart.wiegand@example.com', NULL, 'Pedro', 'Schinner', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:30:45', '2022-07-19 00:30:45'),
(7, 'Anahi Corkery', 'hegmann.vance@example.net', NULL, 'Samantha', 'Kuhlman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:30:45', '2022-07-19 00:30:45'),
(8, 'Heath Cole', 'marty.murphy@example.org', NULL, 'Florine', 'Maggio', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:30:45', '2022-07-19 00:30:45'),
(9, 'Mr. Cleveland Rau Sr.', 'bennie.predovic@example.org', NULL, 'Braulio', 'Smith', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:30:45', '2022-07-19 00:30:45'),
(10, 'Thelma Fadel', 'zoey.yundt@example.com', NULL, 'Darren', 'Cummings', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:30:45', '2022-07-19 00:30:45'),
(11, 'Paula Carter', 'tremblay.leonora@example.net', NULL, 'Claudia', 'Boehm', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:30:45', '2022-07-19 00:30:45'),
(12, 'Mattie Carter', 'mazie.langosh@example.com', NULL, 'Kaleb', 'Weber', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:30:45', '2022-07-19 00:30:45'),
(13, 'Demarco Walter', 'smoen@example.com', NULL, 'Casey', 'Howe', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:30:45', '2022-07-19 00:30:45'),
(14, 'Otilia Wuckert', 'rubye35@example.com', NULL, 'Camylle', 'Hudson', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(15, 'Alayna Zboncak', 'filomena99@example.net', NULL, 'Broderick', 'Littel', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(16, 'Brigitte Russel III', 'reggie.greenfelder@example.net', NULL, 'Kristina', 'VonRueden', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(17, 'Mr. Claude Keebler', 'umaggio@example.com', NULL, 'Winona', 'Flatley', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(18, 'Arnaldo Hettinger', 'isac21@example.net', NULL, 'Clint', 'Jerde', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(19, 'Kiley Bauch', 'hickle.tiana@example.net', NULL, 'Francesca', 'Dibbert', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(20, 'Victor Casper II', 'nader.thora@example.net', NULL, 'Milford', 'Halvorson', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(21, 'Emmett Wiegand', 'guadalupe16@example.com', NULL, 'Daniella', 'Swift', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(22, 'Mrs. Valentina Greenfelder III', 'penelope.sanford@example.net', NULL, 'Zackary', 'Pfannerstill', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:32:49', '2022-07-19 00:32:49'),
(23, 'Karolann Terry', 'powlowski.eleonore@example.net', NULL, 'Mitchel', 'Mills', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2022-07-19 00:32:49', '2022-07-19 00:32:49');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bekzod', 'bekzod@mail.ru', NULL, 'inom@', NULL, '2022-07-18 03:57:26', '2022-07-18 04:01:33'),
(2, 'Dilshod', 'dilshod941004@inbox.ru', NULL, 'skyrim1004', NULL, '2022-07-18 03:58:03', '2022-07-18 03:58:03');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
