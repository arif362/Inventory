-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2015 at 08:34 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_list`
--

CREATE TABLE IF NOT EXISTS `employee_list` (
`employee_id` int(11) NOT NULL,
  `employee_pic` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `add_date` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `employee_list`
--

INSERT INTO `employee_list` (`employee_id`, `employee_pic`, `username`, `firstname`, `lastname`, `type`, `designation`, `sex`, `birthday`, `contact_number`, `account_number`, `address`, `email`, `password`, `add_date`) VALUES
(4, 'shahinur0077.jpg', 'shahinur0077', 'Shahinur', 'Rahman', 'Employee', 'General Manager', 'male', '07-01-1992', '01719022565', '01719022565', 'Savar', 'shahinur0077@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2015-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE IF NOT EXISTS `job_post` (
`p_id` int(11) NOT NULL,
  `job_cat` varchar(255) NOT NULL,
  `post_date` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`p_id`, `job_cat`, `post_date`) VALUES
(1, 'Production Manager', '26-02-2015'),
(2, 'General Manager', ''),
(3, 'Assistant Manager', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
`cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`) VALUES
(1, 'Notice'),
(2, 'Home'),
(3, 'Products'),
(4, 'About Us');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(2500) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `username`, `fullname`, `password`) VALUES
(1, 'engr.liton0077', 'Md. Shahinur Rahman', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'ariful', 'Md. Ariful Islam', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE IF NOT EXISTS `tbl_message` (
`c_id` int(11) NOT NULL,
  `your_name` varchar(255) NOT NULL,
  `your_email` varchar(255) NOT NULL,
  `your_message` text NOT NULL,
  `c_date` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE IF NOT EXISTS `tbl_post` (
`post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_description` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `year` varchar(4) NOT NULL,
  `month` varchar(2) NOT NULL,
  `post_timestamp` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_image`, `cat_name`, `post_date`, `year`, `month`, `post_timestamp`) VALUES
(3, 'Job Vaccancy', '<p>Welcome to our new website. Please have a look around, any feedback is much appreciated.</p>\r\n', '3.jpg', 'Notice', '26-Feb-2015', '26-F', 'b-', '1771110000'),
(4, 'Welcome To Inventory', '<p>Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.</p>\r\n', '4.jpg', 'Home', '26-Feb-2015', '26-F', 'b-', '1771110000'),
(5, 'Welcome To Inventory', '<p>Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.</p>\r\n', '5.jpg', 'Home', '26-Feb-2015', '26-F', 'b-', '1771110000'),
(6, 'About Us', '<p>Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.</p>\r\n', '6.jpg', 'About Us', '26-Feb-2015', '26-F', 'b-', '1771110000'),
(7, 'Job Description', '<p>Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.Welcome to our new website. Please have a look around, any feedback is much appreciated.</p>\r\n', '7.jpg', 'About Us', '26-Feb-2015', '26-F', 'b-', '1771110000'),
(9, 'Job Vaccancy', '<p>ddddddddddddddddddddd</p>\r\n', '9.jpg', 'Products', '26-Feb-2015', '26-F', 'b-', '1771110000');

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE IF NOT EXISTS `user_list` (
`user_id` int(11) NOT NULL,
  `user_pic` varchar(255) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `job_cat` varchar(255) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `contact_num` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regi_date` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`user_id`, `user_pic`, `firstname`, `lastname`, `username`, `user_type`, `job_cat`, `sex`, `contact_num`, `address`, `birthday`, `email`, `password`, `regi_date`) VALUES
(4, 'shahinur0077.jpg', 'Shahinur', 'Rahman', 'shahinur0077', 'General User', 'Production Manager', 'male', '01719022565', 'Savar', '18-10-1992', 'shahinur0077@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2015-02-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_list`
--
ALTER TABLE `employee_list`
 ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
 ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
 ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
 ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_list`
--
ALTER TABLE `employee_list`
MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
