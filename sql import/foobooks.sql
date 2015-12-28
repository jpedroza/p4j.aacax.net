-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2015 at 02:02 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foobooks`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `created_at`, `updated_at`, `first_name`, `last_name`) VALUES
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
  `author_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `created_at`, `updated_at`, `title`, `link`, `description`, `thumbnail`, `author_id`, `user_id`) VALUES
(1, '0000-00-00 00:00:00', '2015-12-25 01:38:34', 'Darwin Plays The Guitar', '1.mp4', 'Darwin shows off the guitar', 'thumbnail.png', 1, 2),
(2, '2015-12-22 03:56:08', '2015-12-22 13:13:04', 'Sarah the Fan', '2.mp4', 'Sarah really wants to belong', 'thumbnail.png', 2, 3),
(3, '2015-12-22 03:56:08', '2015-12-23 07:35:35', 'Gumball: Sarah is Stalking Darwin and Gumball', '3.mp4', 'Sarah is really trying to hangout with Gumball and Darwin', 'thumbnail.png', 3, 3),
(4, '2015-12-23 17:31:33', '2015-12-23 17:31:33', 'Howdy', '4.mp4', 'A Great Big Howdy!', 'thumbnail.png', 1, 3),
(8, '0000-00-00 00:00:00', '2015-12-25 01:42:20', 'Zombie', '5.mp4', 'Just when it was safe to go outside', 'thumbnail.png', 2, 3),
(9, '0000-00-00 00:00:00', '2015-12-25 00:37:38', 'Grim is really having fun today', '6.mp4', 'The Grim Reaper struts and can run fast', 'thumbnail.png', 3, 3);

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book_tag`
--

INSERT INTO `book_tag` (`id`, `created_at`, `updated_at`, `book_id`, `tag_id`) VALUES
(5, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 2, 1),
(6, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 2, 2),
(7, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 2, 3),
(8, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 2, 5),
(9, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 3, 6),
(10, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 3, 7),
(11, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 3, 3),
(12, '2015-12-22 03:56:08', '2015-12-22 03:56:08', 3, 5),
(13, '2015-12-25 00:05:16', '2015-12-25 00:05:16', 9, 4),
(16, '2015-12-25 00:05:16', '2015-12-25 00:05:16', 9, 5),
(17, '2015-12-25 00:17:07', '2015-12-25 00:17:07', 9, 3),
(18, '2015-12-25 01:38:25', '2015-12-25 01:38:25', 1, 7),
(19, '2015-12-25 01:38:25', '2015-12-25 01:38:25', 1, 3),
(20, '2015-12-25 01:38:25', '2015-12-25 01:38:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enter your comment here',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'this is the commented title',
  `email_address_of_commenter` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enter your email address here',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `title`, `email_address_of_commenter`, `created_at`, `updated_at`) VALUES
(1, 'F. Scott Fitzgerald', 'this is the commented title', 'The Great', '2015-12-23 20:00:13', '2015-12-23 20:00:13'),
(2, 'this is my comment', 'this is the commented title', 'john@harvard.edu', '2015-12-23 20:40:17', '2015-12-23 20:40:17'),
(3, 'another comment', 'this is the commented title', 'joe@harvard.edu', '2015-12-23 21:06:52', '2015-12-23 21:06:52'),
(4, 'great video of gumball', 'this is the commented title', 'betsy@harvard.edu', '2015-12-24 10:51:31', '2015-12-24 10:51:31'),
(5, 'this is my comment', 'this is the commented title', 'john@harvard.edu', '2015-12-24 10:58:08', '2015-12-24 10:58:08'),
(6, 'these are them', 'this is the commented title', 'bob@harvard.edu', '2015-12-24 11:01:38', '2015-12-24 11:01:38'),
(7, 'my comment', 'this is the commented title', 'michelle@harvard.edu', '2015-12-24 11:15:04', '2015-12-24 11:15:04'),
(8, 'My commment', 'this is the commented title', 'ice@harvard.edu', '2015-12-24 11:18:48', '2015-12-24 11:18:48'),
(9, 'this is my comment', 'this is the commented title', 'chip@harvard.edu', '2015-12-24 11:36:13', '2015-12-24 11:36:13'),
(10, 'buzz', 'this is the commented title', 'gee@oc.com', '2015-12-24 11:39:54', '2015-12-24 11:39:54'),
(11, '9:43 PM', 'this is the commented title', 'cliff@hotmail.com', '2015-12-24 11:46:01', '2015-12-24 11:46:01'),
(12, 'My commment', 'this is the commented title', 'joe@harvard.edu', '2015-12-24 11:52:01', '2015-12-24 11:52:01'),
(13, 'wax', 'this is the commented title', 'joe@harvard.edu', '2015-12-24 11:57:26', '2015-12-24 11:57:26'),
(14, 'My commment', 'this is the commented title', 'nik@usa.com', '2015-12-24 12:02:50', '2015-12-24 12:02:50'),
(15, 'something else', 'this is the commented title', 'joe@harvard.edu', '2015-12-24 12:06:52', '2015-12-24 12:06:52'),
(16, 'I am trying to write the comment to the note or title field', 'this is the commented title', 'john@harvard.edu', '2015-12-24 12:27:14', '2015-12-24 12:27:14'),
(17, 'I am trying to take the videoid field and write to', 'this is the commented title', 'john@harvard.edu', '2015-12-24 12:32:16', '2015-12-24 12:32:16'),
(18, 'another', 'this is the commented title', 'j1@harvard.edu', '2015-12-24 12:38:47', '2015-12-24 12:38:47'),
(19, 'concatenate', 'this is the commented title', 'concatenate@gmail.com', '2015-12-24 12:45:12', '2015-12-24 12:45:12'),
(20, 'til', 'this is the commented title', 'tril@g.com', '2015-12-24 12:52:08', '2015-12-24 12:52:08'),
(21, 'comment 21', 'this is the commented title', '21@gmail.com', '2015-12-24 12:54:50', '2015-12-24 12:54:50'),
(22, '23 note', 'this is the commented title', '23@try.com', '2015-12-24 12:59:26', '2015-12-24 12:59:26'),
(23, 'this is 23', 'this is the commented title', '23@gmail.com', '2015-12-24 13:02:39', '2015-12-24 13:02:39'),
(24, '24', 'this is the commented title', '24@gmail.com', '2015-12-24 13:04:29', '2015-12-24 13:04:29'),
(25, '25', 'this is the commented title', '25@gmail.com', '2015-12-24 13:07:31', '2015-12-24 13:07:31'),
(26, 'glue', 'this is the commented title', 'john@harvard.edu', '2015-12-24 13:30:34', '2015-12-24 13:30:34'),
(27, 'test of the new system', 'this is the commented title', 'john@harvard.edu', '2015-12-24 14:24:45', '2015-12-24 14:24:45'),
(28, 'here is the problem', 'this is the commented title', 'john@hello.com', '2015-12-24 14:27:22', '2015-12-24 14:27:22'),
(29, '1.mp4: I am used to it', 'this is the commented title', 'joe@harvard.edu', '2015-12-24 14:30:01', '2015-12-24 14:30:01'),
(30, 'Comment', 'this is the commented title', 'joe@harvard.edu', '2015-12-24 14:38:20', '2015-12-24 14:38:20'),
(31, 'comment 21', 'this is the commented title', 'joe@harvard.edu', '2015-12-24 14:43:23', '2015-12-24 14:43:23'),
(32, 'tigether', 'this is the commented title', 'michelle@harvard.edu', '2015-12-24 14:45:49', '2015-12-24 14:45:49'),
(33, 'now', 'this is the commented title', 'joe@harvard.edu', '2015-12-24 14:48:06', '2015-12-24 14:48:06'),
(34, 'okay', 'this is the commented title', 'joe@harvard.edu', '2015-12-24 14:49:42', '2015-12-24 14:49:42'),
(35, 'bogff', 'this is the commented title', 'john@harvard.edu', '2015-12-24 14:53:38', '2015-12-24 14:53:38'),
(36, '1.mp4: geeze', 'this is the commented title', 'joe@harvard.edu', '2015-12-24 14:55:17', '2015-12-24 14:55:17'),
(37, '2.mp4: comment 21', 'this is the commented title', 'john@harvard.edu', '2015-12-24 15:06:22', '2015-12-24 15:06:22'),
(38, '1.mp4: commodus', 'this is the commented title', 'jill@harvard.edu', '2015-12-24 15:14:24', '2015-12-24 15:14:24'),
(39, '1.mp4: comment', 'this is the commented title', 'john@harvard.edu', '2015-12-24 15:51:36', '2015-12-24 15:51:36'),
(40, '1.mp4: my first comment on the p4i version', '1.mp4', 'john@harvard.edu', '2015-12-24 16:04:47', '2015-12-24 16:04:47'),
(41, 'I really like this video', '3.mp4', 'john@harvard.edu', '2015-12-24 19:06:11', '2015-12-24 19:06:11');

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
('2015_11_11_062822_create_authors_table', 1),
('2015_11_11_191450_connect_authors_and_books', 1),
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
(1, 'Jill', 'jill@harvard.edu', '$2y$10$b7bJA7eqBddUkAM4EKN8O.PA0mIN7g/RJsd34J2sFq22R6zIaNqWe', 'CU6E0h0bp4GyuYjRiiy8OyqrvWZXdvRvW7NkN0J7b26ie5XynMvrDS9QvXLG', '2015-12-22 03:56:08', '2015-12-25 01:24:27'),
(2, 'Jamal', 'jamal@harvard.edu', '$2y$10$om/9ymx9eSmPGp5b7tmr4ONmkJQFUINku9OVWVCL5ryenlnISEBra', NULL, '2015-12-22 03:56:08', '2015-12-22 03:56:08'),
(3, 'john', 'john@harvard.edu', '$2y$10$.lyfnYPba3JKVMcPDvqfteOHnolHV0mizZVxqH9.gl1FRGfv7Mim2', 'ByxuRX5V9TexptZewIv31ukchhd0jqPaTKtOZVYb41tlS9UHyGjDGPuAc5Wg', '2015-12-22 13:04:32', '2015-12-25 01:40:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_author_id_foreign` (`author_id`),
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

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `book_tag`
--
ALTER TABLE `book_tag`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
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
