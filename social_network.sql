-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2018 at 04:14 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_author` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`) VALUES
(1, 23, 4, 'eey t', '', '2017-11-23 02:00:02'),
(2, 23, 4, 'eey t', '', '2017-11-23 02:11:23'),
(3, 23, 4, 'fgag', '', '2017-11-23 02:11:50'),
(4, 23, 4, 'fgag', '', '2017-11-23 02:14:32'),
(5, 23, 4, 'fgag', '', '2017-11-23 02:15:19'),
(6, 22, 4, 'to my face', 'bab', '2017-11-23 02:37:30'),
(7, 22, 4, 'hh', 'bab', '2017-11-23 02:37:47'),
(8, 22, 4, 'het there ', 'bab', '2017-11-23 02:37:57'),
(9, 22, 4, 'how are you', 'bab', '2017-11-23 02:38:08'),
(10, 22, 4, 'how are you', 'bab', '2017-11-23 02:38:13'),
(11, 22, 4, 'how are you', 'bab', '2017-11-23 02:44:11'),
(12, 22, 4, 'how are you', 'bab', '2017-11-23 02:45:09'),
(13, 22, 4, 'how are you', 'bab', '2017-11-23 02:48:13'),
(14, 22, 4, 'how are you', 'bab', '2017-11-23 02:48:46'),
(15, 22, 4, 'how are you', 'bab', '2017-11-23 02:49:46'),
(16, 22, 4, 'how are you', 'bab', '2017-11-23 02:51:06'),
(17, 19, 4, 'hey this post has no comments why', 'bab', '2017-11-23 02:52:16'),
(18, 19, 4, 'hey this post has no comments why', 'bab', '2017-11-23 02:52:19'),
(19, 19, 4, 'ther', 'bab', '2017-11-23 02:54:15'),
(20, 1, 4, 'my hell', 'ex', '2017-11-23 03:15:12'),
(21, 1, 4, 'my hell', 'ex', '2017-11-23 03:15:15'),
(22, 21, 4, 'ter', 'babuRoy', '2017-11-23 03:15:57'),
(23, 21, 4, 'ter', 'babuRoy', '2017-11-23 03:16:00'),
(24, 12, 4, 'hf', 'babuRoy', '2017-11-23 15:25:18'),
(25, 12, 4, 'hf', 'babuRoy', '2017-11-23 15:25:18'),
(26, 12, 4, 'jg', 'babuRoy', '2017-11-23 15:25:27'),
(27, 12, 4, 'jg', 'babuRoy', '2017-11-23 15:25:27'),
(28, 12, 4, 'hdtj', 'babuRoy', '2017-11-23 15:25:31'),
(29, 12, 4, 'nd', 'babuRoy', '2017-11-23 15:25:34'),
(30, 12, 4, 'nd', 'babuRoy', '2017-11-23 15:25:34'),
(31, 12, 4, 'nd', 'babuRoy', '2017-11-23 15:25:34'),
(32, 12, 4, 'gbd', 'babuRoy', '2017-11-23 15:25:42'),
(33, 12, 4, 'gbd', 'babuRoy', '2017-11-23 15:25:42'),
(34, 25, 6, 'nfjfx', 'babuRoy', '2017-11-23 15:31:02'),
(35, 25, 6, 'nfjfx', 'babuRoy', '2017-11-23 15:31:06'),
(36, 25, 6, 'xfhh', 'babuRoy', '2017-11-23 15:31:12'),
(37, 25, 6, 'xfhh', 'babuRoy', '2017-11-23 15:31:12'),
(38, 25, 6, 'xfhh', 'babuRoy', '2017-11-23 15:31:12'),
(39, 25, 6, 'xfhh', 'babuRoy', '2017-11-23 15:32:18'),
(40, 25, 6, 'xfhh', 'babuRoy', '2017-11-23 15:32:22'),
(41, 25, 6, 'xfhh', 'babuRoy', '2017-11-23 15:32:25'),
(42, 26, 7, 'hey i am  ready to reply', 'ex', '2017-11-29 20:22:38'),
(43, 26, 7, 'this is me from my side ', 'babuRoy', '2017-11-29 20:24:02'),
(44, 27, 4, 'hey this is a new kind of post...', 'rebhuroy', '2018-03-23 13:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `post_content` text NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `topic_id`, `post_title`, `post_content`, `post_date`) VALUES
(1, 4, 3, 'new post', 'hey there i have created a post', '2017-11-20 18:30:00'),
(2, 4, 3, 'new post edited', 'hey there i have created a post', '2017-11-20 18:30:00'),
(10, 4, 2, 'hi,i want to get help', 'hey help me out', '2017-11-20 18:30:00'),
(11, 4, 4, 'new post from my side', 'hey help me to reach the folder', '2017-11-20 18:30:00'),
(12, 4, 4, 'new post from my side', 'hey help me to reach the folder', '2017-11-20 18:30:00'),
(13, 4, 4, 'new post from my side', 'hey help me to reach the folder', '2017-11-20 18:30:00'),
(14, 4, 1, 'hey there  i have creatd ', 'hey help to reach out there', '2017-11-20 18:30:00'),
(15, 4, 4, '', '', '2017-11-20 18:30:00'),
(16, 4, 2, '', '', '2017-11-20 18:30:00'),
(17, 4, 4, '', '', '2017-11-21 15:25:24'),
(18, 4, 2, '', '', '2017-11-21 15:25:55'),
(19, 4, 2, '', '', '2017-11-21 15:26:00'),
(20, 4, 3, '', '', '2017-11-21 15:26:35'),
(21, 4, 2, 'fhfgj', 'dshsrjhdj', '2017-11-21 15:27:03'),
(22, 4, 2, 'this', '', '2017-11-21 15:33:45'),
(23, 4, 4, 'hrr', 'hfgduj', '2017-11-21 15:33:55'),
(24, 6, 3, 'hrr', 'bfxn', '2017-11-23 15:30:21'),
(25, 6, 3, 'hrr', 'bfxn', '2017-11-23 15:30:21'),
(26, 7, 3, 'rebhu roy', 'this post belongs to me', '2017-11-29 20:22:20'),
(27, 4, 2, 'MITALI', 'Hi i am mitali', '2017-11-29 21:05:38'),
(28, 1, 2, 'reb', 'reegh', '2018-04-12 04:50:05'),
(29, 1, 2, 'new post are pending', 'my post new updated', '2018-04-12 06:54:48'),
(30, 1, 3, 'my latest updated', 'sfs', '2018-04-12 06:54:18'),
(31, 1, 3, 'fs', 'sfs', '2018-04-12 05:06:51'),
(32, 1, 4, 'sgafs', 'hsfshgj', '2018-04-12 06:53:57'),
(37, 2, 2, 'rebhu roy', 'my latest post for being new post', '2018-04-12 09:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(11) NOT NULL,
  `topic_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `topic_title`) VALUES
(1, 'java'),
(2, 'html and css'),
(3, 'php & MySQL'),
(4, 'python');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_country` varchar(100) NOT NULL,
  `user_gender` varchar(100) NOT NULL,
  `user_b_day` date NOT NULL,
  `user_image` text NOT NULL,
  `register_date` date NOT NULL,
  `last_login` date NOT NULL,
  `status` text NOT NULL,
  `posts` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_b_day`, `user_image`, `register_date`, `last_login`, `status`, `posts`) VALUES
(1, 'rebhuroyroy', '123456', 'r@mail.com', 'India', 'male', '2017-11-07', 'image.jpg', '2017-11-01', '2017-11-02', 'unvertified', 'yes'),
(2, 'safina khatoon', '123', 'k@m.com', 'Pakistan', 'male', '2017-11-29', 'Photo0068.jpg', '2021-11-17', '2021-11-17', 'unverified', 'yes'),
(3, 'mitali', '123', 'm@m.com', 'Pakistan', 'female', '2017-11-01', 'default.jpg', '2017-11-21', '2017-11-21', 'unverified', 'yes'),
(4, 'noton', '123', 'n@m.com', 'UK', 'female', '2017-11-24', 'default.jpg', '2017-11-21', '2017-11-21', 'unverified', 'yes'),
(5, 'rebhu', '123456789', 'a@f.com', 'Germeny', 'male', '2017-11-18', 'default.jpg', '2017-11-21', '2017-11-21', 'unverified', 'yes'),
(6, 'babuRoy', '123456789', 'ex@gmail.com', 'France', 'male', '2017-11-25', 'default.jpg', '2017-11-21', '2017-11-21', 'unverified', 'yes'),
(7, 'safina', '123456789', 'p@m.com', 'India', 'female', '2017-11-23', 'default.jpg', '2017-11-22', '2017-11-22', 'unverified', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
