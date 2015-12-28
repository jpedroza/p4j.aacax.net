-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2015 at 04:13 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fobooks` 
--

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE IF NOT EXISTS `formats` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `formats`
--

INSERT INTO `formats` (`id`, `created_at`, `updated_at`, `first_name`, `last_name`) VALUES
(1, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 'External', ''),
(2, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 'Internal', ''),
(3, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 'Other', '');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'please fill in the name of the mp4 file here',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'please fill in the description of the video book',
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'please fill in the name of the png file',
  `cover` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `format_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `created_at`, `updated_at`, `title`, `link`, `description`, `thumbnail`, `cover`, `format_id`, `user_id`) VALUES 
(1, '2015-12-22 03:56:08', '2015-12-22 03:56:08', '1.mp4', 'please fill in the file name for video book here', 'please fill in the description for this video book here', 'please fill in the name of the png file', 'img/thumbnail.png\r\n', 1, 3),
(2, '2015-12-22 03:56:08', '2015-12-22 13:13:04', '2.mp4', 'please fill in the file name for video book here', 'please fill in the description for video book here', 'please fill in the name of the png file', 'img/thumbnail.png', 2, 3),
(3, '2015-12-22 03:56:08', '2015-12-23 07:35:35', '3.mp4', 'please fill in the file name for video book here', 'please fill in the description for video book here', 'please fill in the name of the png file', 'img/thumbnail.png', 3, 3),
(4, '2015-12-23 17:31:33', '2015-12-23 17:31:33', '4.mp4', 'please fill in the name of the mp4 file here', 'please fill in the description of the video book', 'please fill in the name of the png file', 'img/thumbnail.png', 1, 3),
(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5.mp4', '4.mp4', 'please fill in the description of the video book', 'img/thumbnail.png', '', 3, 3),
(9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6.mp4', '5.mp4', 'please fill in the description of the video book', 'img/thumbnail.png', '', 3, 3),
(10, '2015-12-26 10:09:30', '2015-12-26 10:09:30', 'Generic Laravel Video Book', 'please fill in the name of the mp4 file here', 'please fill in the description of the video book', 'please fill in the name of the png file', 'http://DefaultThumbnail.html', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `book_tag`
--

CREATE TABLE IF NOT EXISTS `book_tag` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `book_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book_tag`
--

INSERT INTO `book_tag` (`id`, `created_at`, `updated_at`, `book_id`, `tag_id`) VALUES
(1, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 1, 1),
(2, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 1, 2),
(3, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 1, 3),
(4, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 1, 4),
(5, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 2, 1),
(6, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 2, 2),
(7, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 2, 3),
(8, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 2, 5),
(9, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 3, 6),
(10, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 3, 7),
(11, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 3, 3),
(12, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enter your comment here',
  `email_address_of_commenter` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enter your email address here',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `email_address_of_commenter`, `created_at`, `updated_at`) VALUES
(1, 'F. Scott Fitzgerald', 'The Great', '2015-12-23 20:00:13', '2015-12-23 20:00:13'),
(2, 'this is my comment', 'john@harvard.edu', '2015-12-23 20:40:17', '2015-12-23 20:40:17'),
(3, 'another comment', 'joe@harvard.edu', '2015-12-23 21:06:52', '2015-12-23 21:06:52'),
(7, 'this is cool', 'willie', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1), 
('2015_10_28_230046_create_books_table', 1),
('2015_11_11_062822_create_formats_table', 1),
('2015_11_11_191450_connect_formats_and_books', 1),
('2015_11_18_092951_create_tags_table', 1),
('2015_11_18_094510_create_book_tag_table', 1),
('2015_12_02_043556_connect_books_and_users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 'js'),
(2, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 'php'),
(3, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 'html'),
(4, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 'css'),
(5, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 'mysql'),
(6, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 'front-end'),
(7, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 'forms');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jill', 'jill@harvard.edu', '$2y$10$b7bJA7eqBddUkAM4EKN8O.PA0mIN7g/RJsd34J2sFq22R6zIaNqWe', NULL, '2015-12-22 03:56:08', '2015-12-22 03:56:08'),
(2, 'Jamal', 'jamal@harvard.edu', '$2y$10$om/9ymx9eSmPGp5b7tmr4ONmkJQFUINku9OVWVCL5ryenlnISEBra', NULL, '2015-12-22 03:56:08', '2015-12-22 03:56:08'),
(3, 'john', 'john@harvard.edu', '$2y$10$.lyfnYPba3JKVMcPDvqfteOHnolHV0mizZVxqH9.gl1FRGfv7Mim2', 'b8uJvu6eKC1LByfs5hplr12Hx5GLIrm7CrHZbJqwvGJv14VW3fnsYs3SOUI4', '2015-12-22 13:04:32', '2015-12-23 22:04:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_format_id_foreign` (`format_id`),
  ADD KEY `books_user_id_foreign` (`user_id`);

--
-- Indexes for table `book_tag`
--
ALTER TABLE `book_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_tag_book_id_foreign` (`book_id`),
  ADD KEY `book_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'enter a subject for what you are requesting',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'enter a description of what you are looking for'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1; 

--
-- Dumping data for table `requests` 
--

INSERT INTO `requests` (`id`, `created_at`, `updated_at`, `subject`, `description`) VALUES
(1, '2015-12-24 19:00:44', '2015-12-24 19:00:44', 'I want something that shows how to ', 'depict the etc file settings explaining them'),
(2, '2015-12-24 19:11:44', '2015-12-24 19:11:44', 'Troubleshooting', 'This is really a great subject'),
(3, '2015-12-24 19:21:11', '2015-12-24 19:21:11', 'bigger', 'complicated'),
(4, '2015-12-24 19:53:52', '2015-12-24 19:53:52', 'plus another', 'lorem ipsum');

-- --------------------------------------------------------
  
--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `book_tag`
--
ALTER TABLE `book_tag`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_format_id_foreign` FOREIGN KEY (`format_id`) REFERENCES `formats` (`id`),
  ADD CONSTRAINT `books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `book_tag`
--
ALTER TABLE `book_tag`
  ADD CONSTRAINT `book_tag_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
