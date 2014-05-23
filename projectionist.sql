-- phpMyAdmin SQL Dump
-- version 4.1.13
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2014-05-22 14:19:00
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `projectionist`
--

-- --------------------------------------------------------

--
-- 表的结构 `chains`
--

CREATE TABLE IF NOT EXISTS `chains` (
  `chain_id` int(11) NOT NULL AUTO_INCREMENT,
  `chain_name` text NOT NULL,
  `chain_available` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`chain_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `chains`
--

INSERT INTO `chains` (`chain_id`, `chain_name`, `chain_available`) VALUES
(4, '保利影城科技馆店', 1);

-- --------------------------------------------------------

--
-- 表的结构 `films`
--

CREATE TABLE IF NOT EXISTS `films` (
  `film_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_userdefine_id` int(11) NOT NULL,
  `film_name` text NOT NULL,
  `film_path` text NOT NULL,
  `chain_id` int(11) NOT NULL,
  `film_available` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`film_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `films`
--

INSERT INTO `films` (`film_id`, `film_userdefine_id`, `film_name`, `film_path`, `chain_id`, `film_available`) VALUES
(5, 0, '超凡蜘蛛侠2', '0', 4, 1);

-- --------------------------------------------------------

--
-- 表的结构 `records`
--

CREATE TABLE IF NOT EXISTS `records` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `chain_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `location` text NOT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `records`
--

INSERT INTO `records` (`record_id`, `user_id`, `film_id`, `chain_id`, `date_time`, `location`) VALUES
(3, 24, 5, 4, '2014-05-04 00:00:00', 'IMAX　厅');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` text NOT NULL,
  `user_password` text NOT NULL,
  `user_type` int(11) NOT NULL,
  `user_available` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_type`, `user_available`) VALUES
(20, '12281121', 'e10adc3949ba59abbe56e057f20f883e', 0, 1),
(23, 'testupper', 'e10adc3949ba59abbe56e057f20f883e', 1, 1),
(24, 'testlower', 'e10adc3949ba59abbe56e057f20f883e', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `user_tree`
--

CREATE TABLE IF NOT EXISTS `user_tree` (
  `parent_user_id` int(11) NOT NULL,
  `child_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_tree`
--

INSERT INTO `user_tree` (`parent_user_id`, `child_user_id`) VALUES
(8, 14),
(8, 15),
(15, 16),
(8, 17),
(15, 18),
(8, 19),
(8, 20),
(20, 21),
(20, 22),
(20, 23),
(23, 24);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
