-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2018 at 07:52 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `juvy`
--

-- --------------------------------------------------------

--
-- Table structure for table `jv_feed`
--

CREATE TABLE `jv_feed` (
  `feed_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `feed_op` varchar(20) NOT NULL,
  `feed_content` text NOT NULL,
  `feed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enabled` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jv_feed`
--

INSERT INTO `jv_feed` (`feed_id`, `user_id`, `feed_op`, `feed_content`, `feed_date`, `enabled`) VALUES
(17, 5, 'Anonymous', 'My girl.<br><br>Hello. Gusto ko lang ishare sainyo to.<br>Firstyear college ako noon nung una ko siyang makilala, Kumalat sa block namin na crush niya ako. Pero hindi pa ako aware nun. Kasi masyado akong tutok sa pag aaral. At hindi rin ako pala imik na tao. Ayoko sa maraming tao at sa magulo. Nalaman ko lang yun na may gusto siya sakin nung may nagsabi saakin. Hindi ko pinansin kasi akala ko nagbibiro lang sila. Pero ng kinalaunan. Napapansin ko na nga na gusto niya ko. Mahiyain siya, mahinhin, mahina ang boses. Hindi ko siya kilala sa pangalan noon kasi di naman ako interesadong pumasok sa relationship. ( no girlfriend since birth)', '2018-12-01 05:50:21', 1),
(18, 5, 'Anonymous', 'anyway gusto ko lang ishare yon disappointment namin sa pag dine in sa pizza hut festival mall alabang .. <br>nagdecide kami magdinner don bago umuwi. pagpasok namin sa store syempre oorder na kami. since second time palang namin kakain ulit don sa restau hindi namin kabisado un menu. e wala naman nalapit samin para bigyan kami ng menu,neither may staff man lang na mag assist or greet sa incoming guest(which is okay lang naman sakin but i know its an SOP sa isang semi or fine dinning cause nagtrabaho na din ako sa isang restau) like from umupo kami siguro mga 15mins na nakakalipas wla pa din nalapit samin though hindi naman peak para maging sobrang busy ang tao kasi around 8pm na un and wala gano staff sa paligid at kung meron man e may inaasikaso na guest. napaisip ako kung nag aanticipate ba sila ng guest o bahala na kung may umorder o wala kasi wla naman naasikaso samin until tinawag namin yun girl na nasa take out pizza pa un na dumaan lang kasi hihingi kami ng menu.', '2018-12-01 05:50:53', 1),
(19, 5, 'roronoaeil', 'Hello!! Pa-LIKE po nung picture sa link please, no other reactions, LIKE lang po ang counted and pa-SHARE narin po kung okay lang ???? Para po sa TUPT ?thank you so muchhh!', '2018-12-01 05:55:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jv_secrets`
--

CREATE TABLE `jv_secrets` (
  `secret_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `secret` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enabled` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jv_users`
--

CREATE TABLE `jv_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(35) NOT NULL,
  `last_name` varchar(35) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `password` varchar(100) NOT NULL,
  `pin_code` text NOT NULL,
  `secret_pass` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enabled` int(11) NOT NULL DEFAULT '0' COMMENT '-1=deactivate; 0=unverified; 1=verified'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jv_users`
--

INSERT INTO `jv_users` (`user_id`, `username`, `email`, `first_name`, `last_name`, `age`, `gender`, `password`, `pin_code`, `secret_pass`, `date_created`, `enabled`) VALUES
(5, 'roronoaeil', 'waeilmugiwara@gmail.com', 'Waeil', 'Tingao', 18, 'M', 'QkpKUldMeCtuVjhvd0llcTIwUGYzUT09', '', 'QkpKUldMeCtuVjhvd0llcTIwUGYzUT09', '2018-11-29 23:49:44', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jv_feed`
--
ALTER TABLE `jv_feed`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `jv_secrets`
--
ALTER TABLE `jv_secrets`
  ADD PRIMARY KEY (`secret_id`);

--
-- Indexes for table `jv_users`
--
ALTER TABLE `jv_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jv_feed`
--
ALTER TABLE `jv_feed`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jv_secrets`
--
ALTER TABLE `jv_secrets`
  MODIFY `secret_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jv_users`
--
ALTER TABLE `jv_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
