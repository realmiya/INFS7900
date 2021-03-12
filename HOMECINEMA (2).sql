-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 22, 2019 at 11:19 PM
-- Server version: 5.7.20
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HOMECINEMA`
--

-- --------------------------------------------------------

--
-- Table structure for table `Account`
--

CREATE TABLE `Account` (
  `username` varchar(30) NOT NULL,
  `firstName` varchar(14) NOT NULL,
  `middleName` varchar(14) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `registrationDate` date DEFAULT NULL,
  `subscriptionTier` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Account`
--

INSERT INTO `Account` (`username`, `firstName`, `middleName`, `lastName`, `email`, `dateOfBirth`, `registrationDate`, `subscriptionTier`) VALUES
('Alice', 'Xiaoya', NULL, 'Wang', '2655558@qq.com', '1980-10-10', '2015-12-10', 'premium'),
('Feng', 'GE', NULL, 'ZHU', 'c56545@g\'mai\'l.com', '1999-10-09', '2019-07-10', 'Standard'),
('Frank', 'Frank', NULL, 'Fei', '84496@qq.com', '1998-11-07', '2015-11-07', 'Premium'),
('GE', 'GE', NULL, 'ZHU', 'cafa@gmail.com', '2009-10-08', '2019-09-03', 'Standard'),
('Jack', 'Jack', 'Snow', 'Spam', '135666@qq.com', '1990-05-10', '2015-10-10', 'standard'),
('Jason', 'Jie', NULL, 'Wang', '299525558@qq.com', '2000-10-10', '2018-12-10', 'standard'),
('lily', 'lily', NULL, 'chen', '74588@qq.com', '2002-11-04', '2019-08-04', 'Premium'),
('Miya', 'Xiaoyu', NULL, 'yang', '1375558@qq.com', '1960-10-10', '2015-10-10', 'premium'),
('Xiaoheng', 'Xi\'ao\'heng', NULL, 'HONG', '7558468@qq.com', '1992-05-15', '2015-05-15', 'Standard'),
('yaya', 'Xiaohu', NULL, 'Zhang', '68375558@qq.com', '1998-10-10', '2015-10-10', 'premium');

-- --------------------------------------------------------

--
-- Table structure for table `Acts`
--

CREATE TABLE `Acts` (
  `code` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Acts`
--

INSERT INTO `Acts` (`code`, `id`) VALUES
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(1111, 101),
(5454545, 101),
(1111, 102),
(5454545, 102),
(10, 108),
(20, 108),
(30, 108),
(10, 109),
(20, 109),
(30, 109);

-- --------------------------------------------------------

--
-- Table structure for table `ActsRoles`
--

CREATE TABLE `ActsRoles` (
  `code` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `roleName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ActsRoles`
--

INSERT INTO `ActsRoles` (`code`, `id`, `roleName`) VALUES
(1, 8, 'Xue Yang'),
(2, 8, 'Xue Yang2'),
(3, 8, 'Xue Yang3'),
(4, 8, 'Xue Yang4'),
(5, 8, 'Xue Yang5'),
(10, 108, 'Bridget Jones'),
(10, 109, 'Zha Nan'),
(20, 108, 'Bridget Jones'),
(20, 109, 'Zha Nan'),
(30, 108, 'Bridget Jones'),
(30, 109, 'Zha Nan'),
(1111, 101, 'Lv'),
(1111, 102, 'Bai'),
(5454545, 101, 'Guo Shi'),
(5454545, 102, 'Xiaomei');

-- --------------------------------------------------------

--
-- Table structure for table `CastMember`
--

CREATE TABLE `CastMember` (
  `id` int(11) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `firstName` varchar(14) NOT NULL,
  `middleName` varchar(14) NOT NULL,
  `lastName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CastMember`
--

INSERT INTO `CastMember` (`id`, `nationality`, `firstName`, `middleName`, `lastName`) VALUES
(8, 'China', 'Haoxuan', '', 'Wang'),
(101, 'China', 'Maggie ', '', 'Cheung'),
(102, 'China', 'Joey ', '', 'Wang'),
(108, 'USA', 'Idris', '', 'Elba'),
(109, 'USA', 'Brad', '', 'Pitt');

-- --------------------------------------------------------

--
-- Table structure for table `Episode`
--

CREATE TABLE `Episode` (
  `code` int(11) NOT NULL,
  `seasonNumber` int(5) NOT NULL,
  `episodeNumber` int(5) NOT NULL,
  `dateOfRelease` date NOT NULL,
  `runtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Episode`
--

INSERT INTO `Episode` (`code`, `seasonNumber`, `episodeNumber`, `dateOfRelease`, `runtime`) VALUES
(1, 1, 1, '2019-10-01', '00:42:00'),
(1, 1, 2, '2019-10-02', '00:38:00'),
(1, 1, 3, '2019-10-03', '00:41:00'),
(1, 1, 4, '2019-10-04', '01:03:00'),
(1, 2, 1, '2019-10-14', '00:59:00'),
(1, 2, 2, '2019-10-15', '00:53:00'),
(2, 1, 1, '2018-11-02', '00:59:00'),
(2, 1, 2, '2019-01-02', '00:59:00'),
(2, 2, 1, '2019-10-01', '00:43:00'),
(3, 1, 1, '2019-09-03', '00:40:00'),
(4, 1, 1, '2019-09-05', '00:50:00'),
(5, 1, 1, '2019-10-02', '00:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `Movie`
--

CREATE TABLE `Movie` (
  `code` int(11) NOT NULL,
  `dateOfRelease` date DEFAULT NULL,
  `runtime` time DEFAULT NULL,
  `sequelCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Movie`
--

INSERT INTO `Movie` (`code`, `dateOfRelease`, `runtime`, `sequelCode`) VALUES
(10, '2018-01-02', '01:00:00', 20),
(20, '2019-01-02', '01:00:00', 30),
(30, '2019-10-11', '01:18:00', NULL),
(1111, '2019-10-02', '02:06:00', 111101),
(111101, '2019-01-16', '02:59:00', NULL),
(5454545, '2010-02-19', '02:24:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Playlist`
--

CREATE TABLE `Playlist` (
  `username` varchar(30) NOT NULL,
  `playlistName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Playlist`
--

INSERT INTO `Playlist` (`username`, `playlistName`) VALUES
('Alice', 'A'),
('Frank', 'FFLIST'),
('lily', 'LILYLIST'),
('Miya', 'M'),
('yaya', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `PlaylistProduct`
--

CREATE TABLE `PlaylistProduct` (
  `username` varchar(30) NOT NULL,
  `playlistName` varchar(50) NOT NULL,
  `code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PlaylistProduct`
--

INSERT INTO `PlaylistProduct` (`username`, `playlistName`, `code`) VALUES
('Miya', 'M', 1),
('Alice', 'A', 2),
('Frank', 'FFLIST', 3),
('Alice', 'A', 10),
('Miya', 'M', 10),
('Alice', 'A', 20),
('Miya', 'M', 20),
('Alice', 'A', 30),
('lily', 'LILYLIST', 1111),
('yaya', 'Y', 5454545);

-- --------------------------------------------------------

--
-- Table structure for table `Premium`
--

CREATE TABLE `Premium` (
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Premium`
--

INSERT INTO `Premium` (`username`) VALUES
('Alice'),
('Frank'),
('lily'),
('Miya'),
('yaya');

-- --------------------------------------------------------

--
-- Table structure for table `PremiumFriend`
--

CREATE TABLE `PremiumFriend` (
  `username` varchar(30) NOT NULL,
  `friendUsername` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PremiumFriend`
--

INSERT INTO `PremiumFriend` (`username`, `friendUsername`) VALUES
('Miya', 'Alice'),
('Miya', 'yaya');

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `code` int(11) NOT NULL,
  `synopsis` varchar(10000) NOT NULL,
  `title` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`code`, `synopsis`, `title`) VALUES
(1, 'The Untamed is a 2019 Chinese web series loosely based on the BL xianxia novel Mo Dao Zu Shi by Mo Xiang Tong Xiu, starring Xiao Zhan and Wang Yibo. The series follows the adventures of two cultivators who travel to solve a series of murder mysteries, eventually finding and defeating the true culprit.', 'The Untamed'),
(2, 'love story 2', 'The TV2'),
(3, 'love stroy3', 'TV3'),
(4, 'LOVE STORY4', 'tv4'),
(5, 'LOVE STORY5', 'TV5'),
(10, 'A British woman is determined to improve herself while she looks for love in a year in which she keeps a personal diary.', 'Bridget Jones\'s Diary '),
(20, 'After finding love, Bridget Jones questions if she really has everything she\'s dreamed of having.', 'Bridget Jones: The Edge of Reason'),
(30, 'Bridget\'s focus on single life and her career is interrupted when she finds herself pregnant, but with one hitch ... she can only be fifty percent sure of the identity of her baby\'s father.', 'Bridget Jones\'s Baby'),
(1111, 'Two snake spirits become human and learn about love and suffering. A monk discovers his own weaknesses and finds that morality is not as simple as he had thought.', 'Green Snake '),
(111101, 'snake movie2', 'green snake2'),
(5454545, 'A parody of Louis Cha\'s novel The Eagle Shooting Heroes (thats the literal translation). Story begins with the Queen of Golden Wheel Kingdom had an affair with her cousin West Poison, and they planned to take over the Kingdom. The 3rd Princess discovered their treason, but she was defeated by West Poison. She flees and sought her master\'s help. He told her of a powerful secret martial arts manual hidden in the mountains and told her by retrieving the manual and learning it she would be able to defeat West Poison. But things get complicated along the way when West Poison beat her to it and stole the secret manual away. She soon gathers an alliance to challenge West Poison\'s exponentially increased new power.', 'The Eagle Shooting Heroes');

-- --------------------------------------------------------

--
-- Table structure for table `ProductAudioOptions`
--

CREATE TABLE `ProductAudioOptions` (
  `code` int(11) NOT NULL,
  `audioLanguage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProductAudioOptions`
--

INSERT INTO `ProductAudioOptions` (`code`, `audioLanguage`) VALUES
(1, 'CHN'),
(2, 'CHN'),
(10, 'CHN'),
(10, 'ENG'),
(20, 'ENG'),
(30, 'ENG'),
(1111, 'CHN'),
(5454545, 'CHN');

-- --------------------------------------------------------

--
-- Table structure for table `ProductSubtitleOptions`
--

CREATE TABLE `ProductSubtitleOptions` (
  `code` int(11) NOT NULL,
  `subtitleLanguage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProductSubtitleOptions`
--

INSERT INTO `ProductSubtitleOptions` (`code`, `subtitleLanguage`) VALUES
(1, 'CHN'),
(1, 'ENG'),
(2, 'ENG'),
(10, 'CHN'),
(10, 'ENG'),
(20, 'CHN'),
(20, 'ENG'),
(1111, 'CHN'),
(5454545, 'CHN');

-- --------------------------------------------------------

--
-- Table structure for table `ProductTags`
--

CREATE TABLE `ProductTags` (
  `code` int(11) NOT NULL,
  `tag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProductTags`
--

INSERT INTO `ProductTags` (`code`, `tag`) VALUES
(1, 'action'),
(1, 'romance'),
(2, 'action'),
(2, 'romance'),
(3, 'school'),
(4, 'school'),
(5, 'school'),
(10, 'romance'),
(20, 'romance'),
(30, 'romance'),
(1111, 'romance'),
(5454545, 'comedy');

-- --------------------------------------------------------

--
-- Table structure for table `Standard`
--

CREATE TABLE `Standard` (
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Standard`
--

INSERT INTO `Standard` (`username`) VALUES
('Feng'),
('GE'),
('Jack'),
('Jason'),
('Xiaoheng');

-- --------------------------------------------------------

--
-- Table structure for table `TVShow`
--

CREATE TABLE `TVShow` (
  `code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TVShow`
--

INSERT INTO `TVShow` (`code`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Table structure for table `Watches`
--

CREATE TABLE `Watches` (
  `username` varchar(30) NOT NULL,
  `code` int(11) NOT NULL,
  `timestampStopped` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Watches`
--

INSERT INTO `Watches` (`username`, `code`, `timestampStopped`) VALUES
('Alice', 4, '2019-10-25 00:16:00'),
('Alice', 10, '2018-10-11 00:20:00'),
('Alice', 20, '2019-10-11 00:30:00'),
('Alice', 30, '2019-10-09 00:10:00'),
('Jack', 5454545, '2019-09-05 00:49:00'),
('Jason', 2, '2019-10-02 00:56:00'),
('Miya', 1, '2019-10-11 00:20:00'),
('Miya', 10, '2019-10-12 00:20:00'),
('Miya', 20, '2019-10-18 00:47:00'),
('Miya', 30, '2019-10-17 00:27:00'),
('yaya', 1111, '2019-05-11 01:05:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Account`
--
ALTER TABLE `Account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Acts`
--
ALTER TABLE `Acts`
  ADD PRIMARY KEY (`code`,`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ActsRoles`
--
ALTER TABLE `ActsRoles`
  ADD PRIMARY KEY (`code`,`id`,`roleName`);

--
-- Indexes for table `CastMember`
--
ALTER TABLE `CastMember`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Episode`
--
ALTER TABLE `Episode`
  ADD PRIMARY KEY (`code`,`seasonNumber`,`episodeNumber`);

--
-- Indexes for table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`code`),
  ADD KEY `sequelCode` (`sequelCode`);

--
-- Indexes for table `Playlist`
--
ALTER TABLE `Playlist`
  ADD PRIMARY KEY (`username`,`playlistName`);

--
-- Indexes for table `PlaylistProduct`
--
ALTER TABLE `PlaylistProduct`
  ADD PRIMARY KEY (`username`,`playlistName`,`code`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `Premium`
--
ALTER TABLE `Premium`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `PremiumFriend`
--
ALTER TABLE `PremiumFriend`
  ADD PRIMARY KEY (`username`,`friendUsername`),
  ADD KEY `PremiumFriend_ibfk_2` (`friendUsername`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `ProductAudioOptions`
--
ALTER TABLE `ProductAudioOptions`
  ADD PRIMARY KEY (`code`,`audioLanguage`);

--
-- Indexes for table `ProductSubtitleOptions`
--
ALTER TABLE `ProductSubtitleOptions`
  ADD PRIMARY KEY (`code`,`subtitleLanguage`);

--
-- Indexes for table `ProductTags`
--
ALTER TABLE `ProductTags`
  ADD PRIMARY KEY (`code`,`tag`);

--
-- Indexes for table `Standard`
--
ALTER TABLE `Standard`
  ADD KEY `Standard_ibfk_1` (`username`);

--
-- Indexes for table `TVShow`
--
ALTER TABLE `TVShow`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `Watches`
--
ALTER TABLE `Watches`
  ADD PRIMARY KEY (`username`,`code`),
  ADD KEY `code` (`code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Acts`
--
ALTER TABLE `Acts`
  ADD CONSTRAINT `Acts_ibfk_1` FOREIGN KEY (`code`) REFERENCES `Product` (`code`),
  ADD CONSTRAINT `Acts_ibfk_2` FOREIGN KEY (`id`) REFERENCES `CastMember` (`id`);

--
-- Constraints for table `ActsRoles`
--
ALTER TABLE `ActsRoles`
  ADD CONSTRAINT `ActsRoles_ibfk_1` FOREIGN KEY (`code`,`id`) REFERENCES `Acts` (`code`, `id`);

--
-- Constraints for table `Episode`
--
ALTER TABLE `Episode`
  ADD CONSTRAINT `Episode_ibfk_1` FOREIGN KEY (`code`) REFERENCES `TVShow` (`code`);

--
-- Constraints for table `Movie`
--
ALTER TABLE `Movie`
  ADD CONSTRAINT `Movie_ibfk_1` FOREIGN KEY (`code`) REFERENCES `Product` (`code`),
  ADD CONSTRAINT `Movie_ibfk_2` FOREIGN KEY (`sequelCode`) REFERENCES `Movie` (`code`);

--
-- Constraints for table `Playlist`
--
ALTER TABLE `Playlist`
  ADD CONSTRAINT `Playlist_ibfk_1` FOREIGN KEY (`username`) REFERENCES `Premium` (`username`);

--
-- Constraints for table `PlaylistProduct`
--
ALTER TABLE `PlaylistProduct`
  ADD CONSTRAINT `PlaylistProduct_ibfk_1` FOREIGN KEY (`username`,`playlistName`) REFERENCES `Playlist` (`username`, `playlistName`),
  ADD CONSTRAINT `PlaylistProduct_ibfk_2` FOREIGN KEY (`code`) REFERENCES `Product` (`code`);

--
-- Constraints for table `Premium`
--
ALTER TABLE `Premium`
  ADD CONSTRAINT `Premium_ibfk_1` FOREIGN KEY (`username`) REFERENCES `Account` (`username`);

--
-- Constraints for table `PremiumFriend`
--
ALTER TABLE `PremiumFriend`
  ADD CONSTRAINT `PremiumFriend_ibfk_1` FOREIGN KEY (`username`) REFERENCES `Premium` (`username`),
  ADD CONSTRAINT `PremiumFriend_ibfk_2` FOREIGN KEY (`friendUsername`) REFERENCES `Premium` (`username`);

--
-- Constraints for table `ProductAudioOptions`
--
ALTER TABLE `ProductAudioOptions`
  ADD CONSTRAINT `ProductAudioOptions_ibfk_1` FOREIGN KEY (`code`) REFERENCES `Product` (`code`);

--
-- Constraints for table `ProductSubtitleOptions`
--
ALTER TABLE `ProductSubtitleOptions`
  ADD CONSTRAINT `ProductSubtitleOptions_ibfk_1` FOREIGN KEY (`code`) REFERENCES `Product` (`code`);

--
-- Constraints for table `ProductTags`
--
ALTER TABLE `ProductTags`
  ADD CONSTRAINT `ProductTags_ibfk_1` FOREIGN KEY (`code`) REFERENCES `Product` (`code`);

--
-- Constraints for table `Standard`
--
ALTER TABLE `Standard`
  ADD CONSTRAINT `Standard_ibfk_1` FOREIGN KEY (`username`) REFERENCES `Account` (`username`);

--
-- Constraints for table `TVShow`
--
ALTER TABLE `TVShow`
  ADD CONSTRAINT `TVShow_ibfk_1` FOREIGN KEY (`code`) REFERENCES `Product` (`code`);

--
-- Constraints for table `Watches`
--
ALTER TABLE `Watches`
  ADD CONSTRAINT `Watches_ibfk_1` FOREIGN KEY (`username`) REFERENCES `Account` (`username`),
  ADD CONSTRAINT `Watches_ibfk_2` FOREIGN KEY (`code`) REFERENCES `Product` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
