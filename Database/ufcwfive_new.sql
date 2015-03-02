-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2015 at 11:48 AM
-- Server version: 5.5.27
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ufcwfive`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE IF NOT EXISTS `app` (
  `app_id` int(3) NOT NULL,
  `about_us` varchar(500) NOT NULL,
  `app_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`app_id`, `about_us`, `app_name`) VALUES
(1, 'United Food and Commercial Workers Local 5 is a 33,000 member labor union based in San Jose, California. The local is a progressive voice in the labor movement and the community with a strong tradition of member advocacy and involvement. It is an affiliate of the United Food and Commercial Workers International union based in Washington DC.\r\n\r\nLocal 5 members work primarily in retail grocery and meat with growing numbers employed in department stores.', 'UFCW 5'),
(2, 'The United Latinos of the United Food and Commercial Workers Union (UFCW) is an organization of men and women who have joined together to promote the issues and pursue interests important to Latino workers.\r\n“Working Toward Latino Empowerment and Building Latino Pride!” We have a simple but powerful purpose of empowering Latino men and women within the UFCW and within our communities. We are also building Latino pride which will help others better understand our cultural differences.', 'UNITED LATINOS');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_id` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `app_id`) VALUES
(1, 'About', 1),
(2, 'Get Educated', 1),
(3, 'Member Benefits', 1),
(4, 'Member Resources', 1),
(5, 'Stay Connected', 1),
(6, 'Member Discounts', 1),
(7, 'Negotiation Update', 1),
(8, 'Union News', 1),
(9, 'Upcoming Events', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`contact_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_no1` varchar(20) DEFAULT NULL,
  `phone_no2` varchar(20) DEFAULT NULL,
  `fax_no` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `time_cone` varchar(15) DEFAULT NULL,
  `app_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `designation`, `address`, `phone_no1`, `phone_no2`, `fax_no`, `email`, `time_cone`, `app_id`) VALUES
(10, 'Jami Moore', 'Alameda County', '28870 Mission Blvd.\r\nHayward, CA 94544', '(510) 583-8421', '(510) 889-0870', '(510) 889-6415	', 'jmoore@ufcw5.org', '2015-02-06 08:3', '1'),
(12, 'John Nunes', 'Alameda County', '28870 Mission Blvd.\r\nHayward, CA 94544', '(510) 583-8410	', '(510) 889-0870', '(510) 889-6415', 'jnunes@ufcw5.org', '2015-02-09 18:2', '1'),
(13, 'John Bueno	', 'Alameda County', '28870 Mission Blvd.\r\nHayward, CA 94544', '(510) 889-0870', ' (510) 889-0870', '(510) 889-6415', 'jbueno@ufcw5.org', '2015-02-06 08:3', '1'),
(14, 'Maggie Feder', 'Alameda County', '28870 Mission Blvd. \r\nHayward, CA 94544			', '(510) 583-8424', '(510) 889-0870 ', '(510) 889-6415', 'mfeder@ufcw5.org', '2015-02-06 08:3', '1'),
(15, 'Marla Donati		', 'Alameda County', '28870 Mission Blvd.\r\nHayward, CA 94544', '(510) 583-8419', ' (510) 889-0870', '(510) 889-6415', 'mdonati@ufcw5.org', '2015-02-06 08:3', '1'),
(16, 'Mike Henneberry', 'Alameda County', '28870 Mission Blvd. \r\nHayward, CA 94544\r\n', '(510) 583-8420', ' (510) 889-0870', '(510) 889-6415', 'mhenneberry@ufcw5.org', '2015-02-09 17:3', '1'),
(17, 'Angela Jo Willmes', 'Alameda County', '28870 Mission Blvd.\r\nHayward, CA 94544\r\n\r\n	', '(510) 583-8423', ' (510) 889-0870', '(510) 889-6415', 'awillmes@ufcw5.org', '2015-02-09 18:2', '1'),
(18, 'Bambi Marien', 'Contra Costa County', '4121 Alhambra Ave. \r\nMartinez, CA 94553\r\n\r\n\r\n\r\n', ' (925) 269-2421', '(925) 228-8800', '(925) 370-7305', 'bmarien@ufcw5.org', '2015-02-06 08:2', '1'),
(19, 'Jack	Landes', 'Contra Costa County', '4121 Alhambra Ave. \r\nMartinez, CA 94553', '( 925) 269-2426', '(925) 228-8800', '(925) 370-7305', 'jlandes@ufcw5.org', '2015-02-09 18:2', '1'),
(20, 'Oscar Orozco', 'Contra Costa County', '4121 Alhambra Ave. \r\nMartinez, CA 94553\r\n', '( 925) 269-2420', '(925) 228-8800', '(925) 370-7305', 'oorozco@ufcw5.org', '2015-02-06 08:2', '1'),
(21, 'Pam Danniel', 'Contra Costa County', ' 4121 Alhambra Ave. \r\nMartinez, CA 94553		', '(925) 269-2442', '(925) 228-8800', '(925) 370-7305', 'pdanniel@ufcw5.org', '2015-02-09 18:2', '1'),
(22, 'Pete Derenale', 'Contra Costa County', '4121 Alhambra Ave. \r\nMartinez, CA 94553\r\n	 	', '(925) 269-2445', '(925) 228-8800', '(925) 370-7305', 'pderenale@ufcw5.org', '2015-02-09 18:2', '1'),
(23, 'John Frahm', 'Eureka', '840 E St., Suite 8\r\nEureka, CA 95501', '(707) 442-1751 ext.3', '  ', '(707) 442-9572', 'jfrahm@ufcw5.org', '2015-02-09 18:2', '1'),
(24, 'John Rossi	', 'Novato / San Francisco', '85 Galli Drive\r\nNovato, CA 94949', '(415) 883-6833 ext.3', '(415) 693-0143', '(415) 883-1043', 'jrossi@ufcw5.org', '2015-02-09 18:3', '1'),
(25, 'Lance Wood', 'Novato / San Francisco', '85 Galli Drive\r\nNovato, CA 94949\r\n', '(415) 883-6833 ext.3', '(415) 693-0143', '(415) 883-1043', 'lwood@ufcw5.org', '2015-02-09 17:4', '1'),
(26, 'Katie Johnston	', 'San Francisco', '323 Geary Street, Room 709\r\nSan Francisco, CA 94102\r\n', '(415) 693-0143 ext.3', ' ', '(415) 693-9352', 'kjohnston@ufcw5.org', '2015-02-09 17:5', '1'),
(27, 'Mike	 Jones		', 'San Francisco', '323 Geary Street, Room 709\r\n', '(415) 693-0143 ext.3', 'San Francisco, CA 94', '(415) 693-9352', 'mjones@ufcw5.org', '2015-02-09 18:3', '1'),
(28, 'Mike Frenna', 'South San Francisco', '208 Miller Ave.\r\nSouth San Francisco 94080', '(650) 871-3539', '(650) 871-5730', '(650) 866-3504', 'mfrenna@ufcw5.org', '2015-02-09 18:3', '1'),
(29, 'Dustin Tyssen		', 'South San Francisco', '208 Miller Ave.\r\nSouth San Francisco 94080\r\n\r\n\r\n\r\nFax: ', '(650) 871-3541', '(650) 871-5730', '(650) 866-3504', 'dtyssen@ufcw5.org', '2015-02-09 17:5', '1'),
(30, 'Juan Escobar		', 'South San Francisco', '208 Miller Ave.\r\nSouth San Francisco 94080\r\n', '(650) 871-3526', '(650) 871-5730', '(650) 866-3504', 'jescobar@ufcw5.org', '2015-02-09 17:5', '1'),
(31, 'Carl	Nakano		', 'San Jose', '240 South Market Street, \r\nSan Jose, CA 95113', '(408) 625-5615', '(408) 998-0428', '(408) 971-8355', 'cnakano@ufcw5.org', '2015-02-09 18:0', '1'),
(32, 'Elise	Blazek		', 'San Jose', '240 South Market Street\r\nSan Jose, CA 95113', '(408) 625-5620', '(408) 998-0428', '(408) 971-8355', 'eblazek@ufcw5.org', '2015-02-09 18:0', '1'),
(33, 'Gladis Gallardo	', 'San Jose', '240 South Market Street\r\nSan Jose, CA 95113', '(408) 625-5645', '(408) 998-0428', '(408) 971-8355', 'ggallardo@ufcw5.org', '2015-02-09 18:1', '1'),
(34, 'James Cortez	', 'San Jose', '240 South Market Street\r\nSan Jose, CA 95113', '(408 )625-5635', '(408) 998-0428', '(408) 971-8355', 'jcortez@ufcw5.org', '2015-02-09 18:1', '1'),
(35, 'Jon Hughes	', 'San Jose', '240 South Market Street\r\nSan Jose, CA 95113', '(408) 625-5629	', '(408) 998-0428', '(408) 971-8355', 'jhughes@ufcw5.org', '2015-02-09 18:1', '1'),
(36, 'Kelly	Martinez		', 'San Jose', '240 South Market Street\r\nSan Jose, CA 95113', '(408) 625-5613', '(408) 998-0428', '(408) 971-8355', 'kmartinez@ufcw5.org', '2015-02-09 18:1', '1'),
(37, 'Laurie Mesa		', 'San Jose', '240 South Market Street\r\nSan Jose, CA 95113', '(408) 625-5624', '(408) 998-0428', '(408) 971-8355', 'lmesa@ufcw5.org', '2015-02-09 18:1', '1'),
(38, 'Letresa Perkins', 'San Jose', '240 South Market Street\r\nSan Jose, CA 95113', '(408) 625-5607	', '(408) 998-0428', '(408) 971-8355', 'lperkins@ufcw5.org', '2015-02-09 18:1', '1'),
(39, 'Phil	Fidandis', 'San Jose', '240 South Market Street\r\nSan Jose, CA 95113', '(408) 625-5647	', '(408) 998-0428', '(408) 971-8355', 'pfidandis@ufcw5.org', '2015-02-09 18:1', '1'),
(40, 'Terry Gonzales', 'San Jose', '240 South Market Street\r\nSan Jose, CA 95113', '(408) 625-5621', '(408) 998-0428', '(408) 971-8355', 'tgonzales@ufcw5.org', '2015-02-09 18:2', '1'),
(41, 'Todd Tamone', 'San Jose', '240 South Market Street\r\nSan Jose, CA 95113	\r\n', '(408) 625-5611', '(408) 998-0428', '(408) 971-8355', 'ttamone@ufcw5.org', '2015-02-09 18:2', '1'),
(42, 'Tony Alexander	', 'San Jose', '240 South Market Street\r\nSan Jose, CA 95113', '(408) 625-5614	', '(408) 998-0428', '(408) 971-8355', 'talexander@ufcw5.org', '2015-02-09 18:2', '1'),
(43, 'Pete Maturino', 'President', '1145 North Main Street\r\nSalinas, CA 93906\r\n \r\nPhone: \r\nFax: (831) 757-9115', '(408)- 6255-(595)', ' ', ' (831) 757-9115', 'pmaturino@ufcw5.org', '2015-02-10 08:5', '2');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
`office_id` bigint(20) NOT NULL,
  `office_title` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `time_cone` varchar(100) DEFAULT NULL,
  `app_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`office_id`, `office_title`, `address`, `phone_no`, `website`, `time_cone`, `app_id`) VALUES
(5, 'San Francisco Office', '323 Geary Street, Room 709, San Francisco, CA 94102', '(415) 693-0143', 'ufcw5.org', '2015-02-06 08:05:45', '1'),
(6, 'San Jose Office', '240 South Market Street, San Jose, CA 95113                       ', '(408) 998-0428', 'ufcw5.org', '2015-02-09 20:51:09', '1'),
(7, 'Eureka Office', '840 E St., Suite 8, Eureka, CA 95501', '(707) 442-1751', 'ufcw5.org', '2015-02-06 08:04:21', '1'),
(8, 'Hayward Office', '28870 Mission Blvd. Hayward, CA 94544\r\n', '(510) 889-0870', 'ufcw5.org', '2015-02-06 08:04:37', '1'),
(9, 'Martinez Office', '4121 Alhambra Ave. Martinez, CA 94553\r\n', '(925) 228-8800', 'ufcw5.org', '2015-02-06 08:04:52', '1'),
(10, 'Novato Office', '85 Galli Drive, Novato, CA 94949\r\n', '(415) 883-6833', 'ufcw5.org', '2015-02-06 08:05:05', '1'),
(11, 'Salinas Office', '1145 North Main Street, Salinas, CA 93906\r\n', '(831) 757-3094', 'ufcw5.org', '2015-02-06 08:05:23', '1'),
(13, 'South San Francisco Office', '208 Miller Ave., South San Francisco 94080\r\n', '(650) 871-5730', 'ufcw5.org', '2015-02-06 08:06:01', '1'),
(27, 'UFCW United Latinos', '1145 North Main Street\r\nSalinas, CA 93906', '(408) 625-5595', 'www.ufcwunitedlatinos.org', '2015-02-09 21:57:40', '2');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`news_id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time_cone` varchar(30) DEFAULT NULL,
  `category` varchar(20) NOT NULL,
  `app_id` int(11) NOT NULL,
  `facebook` varchar(20) DEFAULT NULL,
  `twitter` varchar(20) DEFAULT NULL,
  `google` varchar(20) DEFAULT NULL,
  `pinterest` varchar(20) DEFAULT NULL,
  `social` varchar(2) DEFAULT NULL,
  `order` int(100) DEFAULT NULL,
  `published` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=534 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `description`, `file`, `time_cone`, `category`, `app_id`, `facebook`, `twitter`, `google`, `pinterest`, `social`, `order`, `published`) VALUES
(152, 'Lucky-Save Mart Implements Contract Changes', '<b>Lucky-Save Mart store''s</b> has implemented the terms of a so called last, best and final offer dated <b>November 11. </b>\r\n<img src="http://ufcw5.org/wp-content/themes/ufcw5/images/logo.png">\r\nThe company has followed up with a road show of labor relations staff fanning out through the stores explaining the implementation. \r\n<a href="tel:555-555-1212">555-555-1212</a>\r\nFurther, the company has accused the union of reneging on an agreement to meet on November 24 with Federal Mediation. Since the company illegally implemented conditions the need for a meeting is moot since the venue for resolving the situation is now with the National Labor Relations Board (NLRB).\r\n<a href="mailto:me@anydomainname.com">me@anydomainname.com</a>\r\n\r\nThere is no defense to the indefensible. The company<strong>â€™</strong>s excuse for implementing conditions, many of which are clearly not OK with most employees, is that the union and company were at impasse. Save Mart claims there were no issues left on the table to negotiate. This assertion is completely false. There were substantive issues on the table to be resolved, the company refused to meet and tried to force impasse by email negotiations. The employer declared impasse over non-mandatory subjects. Â The employer failed to provide information, which Local 5 required for negotiations such as confirmation of their need for additional economic relief. This is a classic case of bad faith bargaining. Local 5 has multiple labor board charges filed against the company which the NLRB is now investigating.\r\n\r\n<a href="http://www.google.com" target="_blank"> Click to read full story </a>\r\n\r\nLocal 5s position is that implementation of the negative impacts of the offer s be reversed by the NLRB, that the positive aspects be maintained and bargaining should resume on a level playing field.\r\n\r\nPlease continue to monitor the website, FB and the hotline (800) 619.4036 for further updates.', 'b6d767d2f8ed5d21a44b0e5886680cb9.png', '2015-02-12 08:08:23', '1.1', 1, '', '', '', '', 'on', 1, 1),
(154, 'UFCW President Hansen Statement in Response to President Obamas Executive Action on Immigration', 'WASHINGTON, D.C. Joe Hansen, International President of the United Food and Commercial Workers International Union (UFCW), today released the following statement in response to President Obama plan to take executive action on immigration. Today the President announced he will take belated but necessary action to provide relief to immigrant workers, families, and communities. Make no mistake this is not a substitute for comprehensive immigration reform. But it will prevent the deportation of many immigrants who would have qualified for citizenship under the Senate bill that passed over 500 days ago.For nearly a year and a half, the House Republican leadership has refused to take action to fix our broken immigration system. The President has both a legal right and moral responsibility to step in. At the UFCW, this has been our fight for decades. Our members and their families have persevered through raids and deportations. UFCW members have mobilized to defeat racist ballot initiatives and our union has assisted workers with the legalization process while negotiating contracts that protect our members where the law fails to. All along, those in UFCW gold have lobbied for comprehensive immigration reform at protests, marches, rallies, town halls, and just yesterday, in front of the White House. We will continue to call on Congress to send legislation to the Presidents desk. But with no bill to sign, President Obama is rightly using his pen to provide relief to those who are trying to make a better life for themselves and their families. Executive action is not all we need or deserve. But it is a step in the right direction and for that we are thankful. The United Food and Commercial Workers International Union (UFCW) represents more than 1.3 million workers, primarily in the retail and meatpacking, food processing and poultry industries. The UFCW protects the rights of workers and strengthens Americas middle class by fighting for health care reform, living wages, retirement security, safe working conditions and the right to unionize so that working men and women and their families can realize the American Dream. For more information about the UFCWs effort to protect workers rights and strengthen Americas middle class, visit www.ufcw.org, or join our online community at www.facebook.com/UFCWinternational and www.twitter.com/ufcw.image002', '28dd2c7955ce926456240b2ff0100bde.png', '2015-02-12 06:34:34', '1.2', 1, '', '', '', '', 'on', 2, 1),
(156, 'Lucky-Save Mart Implements Contract Changes ', 'Lucky-Save Mart stores has implemented the terms of a so called <strong>â€œ</strong>last, best and final offer<strong>â€ </strong>dated November 11. The company has followed up with a road show of labor relations staff fanning out through the stores <strong>â€œ</strong>explaining<strong>â€ </strong>the implementation.Further, the company has accused the union of reneging on an agreement to meet on November 24 with Federal Mediation. Since the company illegally implemented conditions the need for a meeting is moot since the venue for resolving the situation is now with the National Labor Relations Board (NLRB).There is no defense to the indefensible. The company<strong>â€™</strong>s excuse for implementing conditions, many of which are clearly not OK with most employees, is that the union and company were at impasse. Save Mart claims there were no issues left on the table to negotiate. This assertion is completely false. There were substantive issues on the table to be resolved, the company refused to meet and tried to force impasse by email negotiations. The employer declared impasse over non-mandatory subjects. Â The employer failed to provide information, which Local 5 required for negotiations such as confirmation of their need for additional economic relief. This is a classic case of bad faith bargaining. Local 5 has multiple labor board charges filed against the company which the NLRB is now investigating.Local 5<strong>â€™</strong>s position is that implementation of the negative impacts of the offer s be reversed by the NLRB, that the positive aspects be maintained and bargaining should resume on a level playing field.Please continue to monitor the website, FB and the hotline (1 800 619-4036) for further updates.To download flyer click here:Â <a href="http://ufcw5.org/wp-content/uploads/2014/11/FinalLSMImplementation.pdf">FinalLSMImplementation</a>                                                                                                              ', 'd2ddea18f00665ce8623e36bd4e3c7c5.png', '2015-02-12 08:10:15', '1.3', 1, '', '', '', '', 'on', 4, 1),
(157, 'Local 5 President and President-Elect Meet with International President ', 'Local 5 President Ron Lind and President-Elect John Nunes met with UFCW President Joe Hansen and Secretary-Treasurer Marc Perrone on November 7 in Washington DC. The purpose of the visit was to brief the international officers about the Lucky-Save Mart situation and answer any questions the international had about the state of negotiations. The meeting was productive and President Hansen and Secretary-Treasurer Perrone indicated support for efforts to maintain high standards in the unionized grocery industry in Northern California and across the country.', 'c20ad4d76fe97759aa27a0c99bff6710.png', '2015-02-12 08:08:38', '8', 1, '', '', '', '', 'on', 3, 0),
(158, 'UFCW Local 5 Members say No to Concessions ', 'In meetings held by the union with Lucky-Save Mart members from Ukiah to Salinas and all points in between, workers represented by Local 5 made it clear they oppose takeaways. At well-attended gatherings, that started Sunday and concluded Wednesday evening, members voted by 99% to oppose give backs to the company.\r\n\r\nOriginally meetings were set with the membership to vote on a last best and final offer made by the company. When word was received from the international union requesting Local 5 hold off on a strike/ratification vote the local changed the vote to an advisory referendum on the last, best and final offer. The request by the international is provided for in article 23 of the constitution and the local agreed to the request. Additionally, the company claims the last, best and final offer was withdrawn. Since the offer was supposedly withdrawn Local 5 has made a request for additional bargaining dates under the auspices of the Federal Mediation & Conciliation Service (FMCS) to conclude bargaining. A meeting is in the process of being set with the federal mediator and company when all the principals can attend.\r\n\r\nThanks go out to all members who attended and made their voices heard. Speak with your rep, steward, contact your local office and watch the website and Facebook for updates.', '98f13708210194c475687be6106a3b84.png', '2015-01-23 17:10:11', '6', 1, NULL, NULL, NULL, NULL, NULL, 4, 0),
(270, 'Executive Action on Immigration ', ' President Obamas executive action to provide relief to immigrant workers, families, and communities is a victory for the UFCW, our members, and the entire nation.  While executive action is not a substitute for comprehensive immigration reform, it is a step in the right direction and will directly impact tens of thousands of our members.\r\nA UFCW working group made up of key staff from the Civil Rights and Community Action, Food Processing, Packing, and Manufacturing, Legislative and Political, Legal, and Communications Departments is developing a plan to work with you to help eligible members access these newly expanded programs. This will include a comprehensive checklist of what is needed, worksite flyers, and other important resources.\r\nAttached is the fact sheet sheet for your local union officers and staff explaining what the President’s actions entail and their timeline for implementation.', 'd1fe173d08e959397adf34b1d77e88d7.png', '2015-02-13 05:43:56', '8', 2, '', '', '', '', '', 1, 0),
(271, 'President Obamas Immigration Announcement', 'On November 20, 2014, the president announced executive actions that his administration will be taking to help fix our dysfunctional immigration system.\r\n Here’s what we know about the new programs: \r\n&#61623; A new Deferred Action for Parents (DAP) program will allow undocumented people who have a U.S. citizen or lawful permanent resident son or daughter to apply for work authorization and protection from deportation, if the person has been in the U.S. since January 1, 2010. An estimated 4.1 million people should qualify for this program.\r\n&#61623; The existing Deferred Action for Childhood Arrivals (DACA) program will be expanded and now will cover people who entered the U.S. before their sixteenth birthday and have lived continuously in the U.S. since January 1, 2010. People who were “aged out” of DACA by being older than age 31 on June 15, 2012, are now eligible to apply, regardless of how old they are now. Approximately 300,000 people will be benefit from these changes.\r\n&#61623; Certain spouses of lawful permanent residents may be able to get their lawful permanent resident (“green card”) status through a waiver process. Spouses of U.S. citizens are currently able to apply through this process.\r\nHere’s what you can do: \r\n&#61623; Even if you are eligible for these programs, you cannot apply for them yet! The government expects that it will start accepting applications within three months from now for those eligible for expanded DACA, and within six months from now for those eligible for DAP.\r\n&#61623; Do not take advice about your immigration case from a notary public or an immigration consultant. Contact only a qualified immigration lawyer or an accredited representative for legal advice about your case. If you encounter notario fraud, report it!\r\n&#61623; If you know someone who is in immigration detention and is eligible for one of these programs, advise them to identify themselves to their case officer, or the ICE Information Line at 888-351-4024, and explain that they are eligible for one of these new programs.\r\n&#61623; If you believe you are eligible, begin preparing now by gathering documents that prove:\r\n that you were in the U.S. yesterday (on November 20, 2014),\r\n that you have been in the U.S. since January 1, 2010, and\r\n that you have a U.S. citizen or lawful permanent resident son or daughter.\r\n(Read our Top Ten Ways You Can Prepare for Executive Action on Immigration.) \r\n&#61623; Stay informed and sign up at www.nilc.org/relief.html to receive updates. As we find out about webinars, we’ll share them with you. We’ll also share materials and information about new developments. To receive these updates by email, subscribe to our Immigration Issues email list (http://tinyurl.com/mxbmyse).\r\nTo download, print and share this flyer check here.', 'e2c420d928d4bf8ce0ff2ec19b371514.png', '2015-02-13 05:38:02', '8', 2, 'www.facebook.com', 'www.facebook.com', 'www.gmail.com.', 'www.pinterest.com', '', 3, 0),
(288, 'UFCW Bargaining Update Jan 9', 'Hi Local 5! Here are the negotiation updates for Safeway, Nob Hill and Rite Aid.  You can download the flyers by clicking on highlighted links.  If you have any questions, be sure to contact your representative.\r\n\r\n \r\n\r\nSafeway:  SFWY Nego Update 1\r\n\r\nNob Hill: NOHL Nego Update 1\r\n\r\nRite Aid: RiteAid Nego Update 1', '7647966b7343c29048673252e490f736.png', '2015-01-23 20:19:21', '8', 1, NULL, NULL, NULL, NULL, NULL, 5, 0),
(289, 'Negotiations Updates for Safeway and Lucky-SaveMart', 'UFCW Local 5 Safeway Negotiations Update\r\n\r\nLocal 5 and the company met last week to begin negotiations. The meeting was held primarily to discuss logistics for the coming talks, get an update on the Cerberus takeover and find out who will be representing Safeway at the bargaining table.\r\n\r\nLocal 5 will be bargaining individually in this set of talks and intends on negotiating an agreement that reflects to desire of the membership and is appropriate to the economic reality where Local 5 members live and work.\r\n\r\nSafeway has indicated they will be contacting Local 5 with future dates for bargaining, you will be advised when the dates are secured.\r\n\r\nPlease keep up to date with your rep, on the website & Facebook.\r\n\r\n \r\n\r\n \r\n\r\nUFCW Local 5 Lucky-Save Mart Negotiations Update\r\n\r\nAs everyone knows LSM implemented their so-called last best and final offer in November. Since then Local 5 has been pursuing unfair labor practice charges at the National Labor Relations Board (NLRB) to reverse this illegal action. A key component of the union’s argument is that Local 5 and the company were not at impasse when they put their offer into effect and therefore the implementation of an offer no one wanted was improper and needs to be reversed.\r\n\r\nLast week, as if to make the union’s case that the union and company were not at impasse, the company contacted Local 5 to bargain over a retirement incentive. A prerequisite for any discussions with the company is the reversal of the illegal implementation of the last, best & final. The union is pursuing charges against the company at the NLRB because we were not at impasse. The employer did not bargain in good faith. The union will not engage in negotiations with the company until the illegal implementation is reversed. We continue to seek redress through the NLRB.\r\n\r\nPlease keep up to date with your union rep, on the website & Facebook.\r\n\r\n ', 'a1d0c6e83f027327d8461063f4ac58a6.png', '2015-02-09 04:12:44', '8', 1, 'llknl', 'knlk', 'nlkn', '', '', 6, 0),
(290, 'Negotiations Updates for Safeway and Lucky-SaveMart', 'UFCW Local 5 Safeway Negotiations Update\r\n\r\nLocal 5 and the company met last week to begin negotiations. The meeting was held primarily to discuss logistics for the coming talks, get an update on the Cerberus takeover and find out who will be representing Safeway at the bargaining table.\r\n\r\nLocal 5 will be bargaining individually in this set of talks and intends on negotiating an agreement that reflects to desire of the membership and is appropriate to the economic reality where Local 5 members live and work.\r\n\r\nSafeway has indicated they will be contacting Local 5 with future dates for bargaining, you will be advised when the dates are secured.\r\n\r\nPlease keep up to date with your rep, on the website & Facebook.\r\n\r\n \r\n\r\n \r\n\r\nUFCW Local 5 Lucky-Save Mart Negotiations Update\r\n\r\nAs everyone knows LSM implemented their so-called last best and final offer in November. Since then Local 5 has been pursuing unfair labor practice charges at the National Labor Relations Board (NLRB) to reverse this illegal action. A key component of the union’s argument is that Local 5 and the company were not at impasse when they put their offer into effect and therefore the implementation of an offer no one wanted was improper and needs to be reversed.\r\n\r\nLast week, as if to make the union’s case that the union and company were not at impasse, the company contacted Local 5 to bargain over a retirement incentive. A prerequisite for any discussions with the company is the reversal of the illegal implementation of the last, best & final. The union is pursuing charges against the company at the NLRB because we were not at impasse. The employer did not bargain in good faith. The union will not engage in negotiations with the company until the illegal implementation is reversed. We continue to seek redress through the NLRB.\r\n\r\nPlease keep up to date with your union rep, on the website & Facebook.\r\n\r\n ', '02e74f10e0327ad868d138f2b4fdd6f0.png', '2015-02-12 08:09:45', '7', 1, '', '', '', '', 'on', 1, 0),
(291, 'UFCW Local 5 Health and Welfare', 'Benefits Department\r\nThis vital department keeps members informed about their medical and pension benefits. Any member who has any questions about benefits can have them answered here.\r\n\r\nPersonnel are available in all Local 5 offices to answer your questions.\r\n\r\nBenefits Director, Alyse Davidson\r\n\r\nadavidson@ufcw5.org\r\n\r\nFor information regarding your benefits visit the UFCW Trust Fund Online at ufcwtrust.com\r\n', '98dce83da57b0395e163467c9dae521b.png', '2015-02-12 08:10:29', '3', 1, '', '', '', '', 'on', 1, 0),
(292, 'UFCW Local 5 Scholarship Application', 'Local 5 Scholarship Winners Announced\r\n\r\nThe scholarship winners for the UFCW Local 5 and the Labor Foundation for Working Families have been announced.\r\n\r\nForty (40) members and/or dependents were awarded a scholarship of $1,000.00. With over 70 scholarship applications received, the selection process was highly competitive. We are proud so many members and their dependents are pursuing higher education. Congratulations to all the scholarship winners! UFCW 5 members and their dependents can apply for the scholarship again next year.\r\n\r\nSee a list of the 2014 winners at ufcw5.org/member-scholarship-application', '6ea9ab1baa0efb9e19094440c317e21b.png', '2015-02-12 08:10:45', '3', 1, '', '', '', '', 'on', 2, 0),
(293, 'UFCW Local 5 Membership Forms', 'Trust Fund Forms can be found on the Trust Fund website at https://www.ufcwtrust.com/forms.aspx', 'fc490ca45c00b1249bbe3554a4fdf6fb.png', '2015-02-12 08:10:57', '3', 1, '', '', '', '', 'on', 3, 0),
(294, 'Information for New Members ', 'INITIATION FEE CREDIT PROGRAM FOR NEW HIRES\r\nUFCW 5 has implemented a program that is designed to help new members reduce their initiation fee by one-third (1/3). A new member will be eligible for this reduction in their initiation fees by getting involved with our Union. In order to qualify, the new member must do the following:\r\n\r\n1. Attend the new member orientation meeting.\r\n\r\n2. Participate in three (3) additional Local 5 actions; such as membership meetings, attend an office hosted virtual town hall meeting, rallies and other Union sponsored event.\r\n\r\nIf a new member participates in the three (3) events over the course of an eighteen (18) month period following the new member orientation meeting, they will be given a credit of one-third (1/3) of the initiation fees.\r\n\r\nYou should always check our website for upcoming meetings and events. If you have any questions regarding this program, please contact your Union Representative.\r\n\r\nYou must RSVP for the meetings you would like to attend, by calling Cindy Mendoza at 408-625-5643 or by email at cmendoza@ufcw5.org.\r\n\r\nThank you,\r\n\r\nRon Lind, President\r\n\r\nHave questions about your contract? Want to find out when membership meetings are?  Contact your union rep by registering at ufcw5.org and logging into your personal membership page.\r\n\r\nGet Political\r\nWant to learn how you can support pro-worker politicians and policies, and fight back against corporate greed and big business in our political system? Want to help level the playing field for working families? Contact Tony Alexander, UFCW Local 5&#8242; political director and get involved in a movement to rebuild our middle class and restore the American Dream.\r\n\r\nGet Involved\r\nThe best thing about being a UFCW member is the power to stick together with your co-workers and make your voices heard. But there are all kinds of other opportunities available to you as a union member, too, that can help you advance your career, get better training, or save a little money.\r\n\r\nEducation and Scholarships- Once again the Foundation for Working Families and UFCW5 has finished the process of awarding scholarships for 2013.  Recipients have been notified and this years winners have been post on this website.\r\n\r\nDiscounts and Benefits – Save money on travel, car insurance, hotels, activities, mortgages, and other things with Union Plus for members and their families.\r\n\r\nJoin With Us\r\nWant to learn more about what a union is and why strength in numbers is always on plus on the job? Want to find out how you and your co-workers can become part of a movement to improve jobs for workers across the country? Contact our organizing department today.', 'b53b3a3d6ab90ce0268229151c9bde11.png', '2015-02-12 08:11:07', '3', 1, '', '', '', '', 'on', 4, 0),
(297, 'Safeway Update Jan 28', 'UFCW Local 5 Safeway Negotiations Update\r\n\r\nLocal 5 and the company met last week to begin negotiations. The meeting was held primarily to discuss logistics for the coming talks, get an update on the Cerberus takeover and find out who will be representing Safeway at the bargaining table.\r\n\r\nLocal 5 will be bargaining individually in this set of talks and intends on negotiating an agreement that reflects to desire of the membership and is appropriate to the economic reality where Local 5 members live and work.\r\n\r\nSafeway has indicated they will be contacting Local 5 with future dates for bargaining, you will be advised when the dates are secured.\r\n\r\nPlease keep up to date with your rep, on the website & Facebook.', 'a3f390d88e4c41f2747bfa2f1b5f87db.png', '2015-02-12 08:09:56', '7', 1, '', '', '', '', 'on', 2, 0),
(298, 'Lucky-Save Mart Negotiations Update Jan. 28', 'UFCW Local 5 Lucky-Save Mart Negotiations Update\r\n\r\nAs everyone knows LSM implemented their so-called last best and final offer in November. Since then Local 5 has been pursuing unfair labor practice charges at the National Labor Relations Board (NLRB) to reverse this illegal action. A key component of the unions argument is that Local 5 and the company were not at impasse when they put their offer into effect and therefore the implementation of an offer no one wanted was improper and needs to be reversed.\r\n\r\nLast week, as if to make the unions case that the union and company were not at impasse, the company contacted Local 5 to bargain over a retirement incentive. A prerequisite for any discussions with the company is the reversal of the illegal implementation of the last, best & final. The union is pursuing charges against the company at the NLRB because we were not at impasse. The employer did not bargain in good faith. The union will not engage in negotiations with the company until the illegal implementation is reversed. We continue to seek redress through the NLRB.\r\n\r\nPlease keep up to date with your union rep, on the website & Facebook.', '26657d5ff9020d2abefe558796b99584.png', '2015-02-12 08:10:06', '7', 1, '', '', '', '', 'on', 3, 0),
(402, 'Membership Meeting', 'Membership Meetings are held the 2nd Tuesday of each quarter.  The next upcoming meeting will be:\r\n\r\nTuesday, April 14, 2015 at 7pm.', '7cbbc409ec990f19c78c75bd1e06f215.png', '2015-02-12 08:11:21', '9', 1, '', '', '', '', 'on', 1, 0),
(403, 'Pacific Printing', '\r\nWith a combined experience of over 125 years, PrintedUnion.com brings to you unparalleled service and cost effective savings, backed by a 100% guarantee. And because we work so closely with labor unions, we are sensitive to the demands and needs of your busy schedule and budget.\r\n\r\nHere are some reasons why you should allow us to help you with your printing needs:\r\n \r\nWe are a union printer that helps fuel union printing needs\r\nWe are family owned and operated\r\nWe serve both local and out-of-state unions\r\nWe use top quality paper stock and inks\r\nWe use industry-trusted presses\r\nAll of our work is 100% guaranteed\r\n\r\nGive us a  call at (800) 793-7082, email us at steve@printedunion.com or contact us through our website at printedunion.com.\r\n ', 'a5771bce93e200c36f7cd9dfd0e5deaa.png', '2015-02-09 18:42:54', '8', 1, '', '', '', '', 'on', 0, 0),
(409, 'hello world ', ' is my negoitiatiin news', '34173cb38f07f89ddbebc2ac9128303f.png', '2015-02-09 08:18:13', '7', 2, 'kk', 'jbkj', 'bkjb', 'kj', 'on', 0, 0),
(418, 'A Message from UFCW United Latinos President Pete Maturino', 'On November 20, 2014 President Obama took a step forward in completing part of a promise to the Latino community and more importantly to the immigrant community all over this country. It is my belief that we should embrace this effort by the President to attempt to fix dysfunctional immigration system and begin the process of helping and or assisting the membership of this Union in completing the application and forms needed to receive the deferred action.\r\nOne of the most important things we as union officials, whether working through the local union or in partnership with community agency’s, is to get the word out to the immigrant community to be very careful of those individuals who’s only goal is to take your money and leave you with nothing done.\r\nAlong with this letter I am attaching information from the National Immigration Law Center on what is believed the law will do and what it means to millions of immigrants, as well as ways the immigrant community can prepare when the applications become available for processing, I hope this will help you in your efforts in helping members through this process.\r\nThe United Latinos with help of the International and Esther Lopez from the Civil Rights department will be able to assist the immigrant community within our Union not only in providing updated information on changes that may come up in the Presidents directive, but beginning in early December if anyone of you who has a group of members that you feel would benefit from a presentation from the Civil Rights Department on this deferred action, you can contact the United Latinos to make those arrangements.\r\nAt minimum if there is anything that you feel you need from the Civil Rights Department in order to assist you members on this deferred action please do not hesitate in contacting the United Latinos of the UFCW directly.\r\nSi Se Puede!\r\nPete Maturino\r\nPresident United Latinos', '70efdf2ec9b086079795c442636b55fb.png', '2015-02-13 05:33:45', '8', 2, '', '', '', '', 'on', 2, 0),
(419, 'First Recipients of United Latinos Scholarship Become Citizens', 'In 2014, the United Latinos of UFCW approved the creation of the United Latinos New American Citizen Scholarship Fund. The Fund was created to help UFCW United Latinos members offset their expenses of becoming a U.S. citizen. The first two (2) recipients of the scholarship are members from Local 431 in Beardstown, Illinois.<br />\r\nUnited Latinos is proud to support UFCW members through their journey towards citizenship and help realize their American Dream.\r\n', '33e75ff09dd601bbe69f351039152189.png', '2015-02-09 22:02:43', '8', 2, '', '', '', '', 'on', 0, 0),
(420, 'About Us', 'The United Latinos of the United Food and Commercial Workers Union (UFCW) is an organization of men and women who have joined together to promote the issues and pursue interests important to Latino workers.<br />\r\n“Working Toward Latino Empowerment and Building Latino Pride!” We have a simple but powerful purpose of empowering Latino men and women within the UFCW and within our communities. We are also building Latino pride which will help others better understand our cultural differences. Our diversity will help make our organization and our society stronger. The United Latinos will help teach others that through UFCW membership, there is a better way of life that includes wages, health benefits, pensions, job security and dignity.\r\n ', 'f899139df5e1059396431415e770c6dd.png', '2015-02-09 22:06:33', '3', 2, '', '', '', '', 'on', 0, 0),
(421, 'Pride', 'There is significant value in our diversity when it is seen as an asset. We know that it is natural to fear the unknown so we propose to educate those around us about our various Latino cultures. We have much to offer and are proud to share what we are and what we know, especially when it helps reach and empower Latinos. The ultimate goal of United Latinos is to be an asset and a resource to the UFCW, its Locals and to the Labor Movement. By working together we will help make the UFCW the very best.', 'c51ce410c124a10e0db5e4b97fc2af39.png', '2015-02-09 22:07:32', '3', 2, '', '', '', '', 'on', 0, 0),
(422, 'Empowerment', 'Our goal is to empower Latino men, women and children through:\r\nPolitical Participation\r\nEducation\r\nCommunity Involvement\r\nSolidarity of Union Membership<br />\r\nThe Latino population is growing fast. It is predicted that in 50 years one in every four Americans will be Latino. More Latinos vote in elections today. The Latino vote is a powerful and exciting phenomenon in American politics. As Latinos are empowered we will have our place in main stream America and share in the American Dream. When we empower Latino workers we empower our great union and we empower our community. Through outreach programs, the United Latinos builds partnerships with community groups also working to improve the rights and lives of Latino men and women.\r\n', '6ea9ab1baa0efb9e19094440c317e21b.png', '2015-02-09 22:08:15', '3', 2, '', '', '', '', 'on', 0, 0),
(423, 'Join the United Latinos', 'To join The United Latinos of UFCW you can download and complete a membership application in English (click here) or in Spanish (click here). Return it with your annual dues payment to the address listed on the application. Local Unions,  providers and friends of the UFCW can also participate by becoming a Sponsor of United Latinos by making an annual contribution. These moneys enable us to work toward our goals of Latino Empowerment and Building Latino Pride.<br />\r\nWe look forward to your membership and support!\r\n', '70efdf2ec9b086079795c442636b55fb.png', '2015-02-09 22:09:23', '3', 2, '', '', '', '', 'on', 0, 0),
(464, 'City Council Votes Unanimously to Send Worker Ordinance Referral to Staff to Return for Vote', 'City Council Votes Unanimously to Send Worker Ordinance Referral to Staff to Return for Vote\r\n<br />\r\nUpdate:  On February 3rd, the Alameda City Council voted 5-0 to send Jim Oddiess Grocery Worker Retention Ordinance referral to staff to return for a vote. The ordinance will require employers purchasing stores to keep existing workers on staff for a minimum of 90 days. Great job so far by the council & staff.\r\nThe union will let everyone know when the next meeting will be.', 'ea5d2f1c4608232e07d3aa3d998e5135.png', '2015-02-10 23:32:18', '8', 1, '', '', '', '', 'on', 7, 0),
(465, 'UFCW Scholarship Programs 2015', 'A message from Labor Foundation for Working Families:\r\n\r\nNow is the time for members and their dependents to apply for the UFCW Local 5 and Labor Foundation for Working Families 2015 scholarship program. Scholarships are available for members or their dependents that are seeking higher education. In order to qualify for a scholarship applicants must submit a short essay (500 words or less) describing what impact the labor movement has had on their life and their most recent official transcript. Members applying for themselves or for family members must be in good standing with UFCW Local 5. Submissions must be received in the Hayward office no later than March 31, 2015.\r\n\r\n*Local 5 staff & families are not eligible to participate in this program\r\n\r\n“Education is the most powerful weapon which you can use to change the world.”\r\n\r\nThe UFCW is about workers coming together to build better lives for themselves. It is about creating opportunity. That is why each year the UFCW awards several scholarships of up to $8,000 each to UFCW members or their unmarried dependents under the age of 20. Apply at www.ufcw.org/scholarship. Applications must be received by March 15, 2015.\r\n\r\nTo download application go to ufcw5.org and ufcw.org.\r\n', 'd9d4f495e875a2e075a1a4a6e1b9770f.png', '2015-02-10 11:49:27', '8', 1, '', '', '', '', 'on', 8, 0),
(466, 'UFCW Celebrates Black History Month', 'UFCW Celebrates Black History Month: Bayard Rustin An Overlooked Champion of Civil and Labor Rights\r\n\r\nBlack History Month is a time to remember and celebrate the rich history of African Americans and the achievements of the civil rights movement.\r\n\r\nBlack History Month dates back to 1926, when historian Carter G. Woodson and other prominent African Americans dedicated the second week in February as Negro History Week to coincide with the birthdays of Abraham Lincoln and Frederick Douglass.  In 1976, the celebration was officially recognized and expanded and every U.S. president since then has celebrated Black History Month during the month of February.\r\nOne of the greatest moments of the Civil Rights era was the March on Washington in 1963 one of the largest non violent protests to ever occur in America. The March on Washington brought thousands of people of all races together, in the name of equal rights for everyone whether they were black or white, rich or poor, Muslim or Christian. Dr. Marin Luther King, Jr. made one of his most inspiring and famous speeches at the march, which culminated on the National mall.\r\n\r\nBut history has often overlooked the man who was the driving force behind this monumental event a man namedBayard Rustin. Rustin was the one who organized the march, bringing methods used by Gandhi as well as the Quaker religion to Washington to ensure peace, but also impact. It was Rustin who helped shape Dr. King into the iconic symbol of peace he is remembered as.\r\n\r\nAs a young adult, Rustin worked with many kinds of people who influenced his activism, including ministers and labor organizers. During World War II, Rustin fought against racial discrimination in war-related hiring, and was later jailed for two years after refusing to enter the draft.\r\n\r\nContinue Reading at http://www.ufcw.org/2015/02/09/ufcw-celebrates-black-history-month-bayard-rustin-an-overlooked-champion-of-civil-and-labor-rights/', 'a1d0c6e83f027327d8461063f4ac58a6.png', '2015-02-10 23:36:37', '8', 1, '', '', '', '', 'on', 9, 0),
(526, 'Member Resources', '<b><h3>Stewards</h3></b><br />\r\n		\r\nUnion Stewards are a key to building our union’s strength. \r\n\r\nThe shop steward holds a special place in any union. At the worksite, the steward is the union - the union''s link between the members and management. \r\n\r\nStewards are the members'' first line of defense when the contract is violated and grievances arise, as well as being responsible for ensuring worksite safety, mobilizing members for contract/political/organizing campaigns, orienting new members to the worksite and the union, and more.\r\nYour job as a steward is more than just a list of duties. Stewards play both offense and defense. Your chief responsibility is building an educated, united, organized, and involved membership at your worksite.\r\nIn addition to the stewards'' special responsibility, they also have a special authority that is protected by law and the union contract. As a steward, you deal with management as an equal. It is a violation of federal law for your employer to discriminate or retaliate against you for fulfilling your steward duties.\r\nBecause of the importance of stewards, we are making it a priority to grow and strengthen our steward network.<br /><b>\r\n<h3>Functions of a Shop Steward at Local 5</h3></b><br />\r\n<b>Educator/Communicator</b><br />\r\n•  Explain what unions are and what they are not<br />\r\n•  Answer questions about union goals, policies and procedures.<br />\r\n•  Talk and listen to members one-on-one or in small meetings about union issues, such as contract negotiations and key legislation.<br />\r\n• Talk to union rep and officers about what''s going on in the workplace.<br /><br />\r\n<b>Problem Solver</b><br />\r\n•  Update union representative on workplace problems.<br />\r\n•  Listen to member''s concerns and ideas and relay this information to the union representative.<br />\r\n•  Speak up to management to defend worker''s rights and protect working conditions.<br />\r\n•  Keep good records<br />\r\n•  Answer member''s questions about union programs and activities, the contract, and management''s work rules.<br /><br /> \r\n<b>Organizer</b><br />\r\n•  Welcome new employees and introduce them to union programs and benefits.<br />\r\n•  Make sure new employees join the union within 30 days.<br />\r\n•  Build a system of key people.<br />\r\n•  Notify and recruit members to participate in union activities.<br />\r\n•  Mobilize workers to support union issues and to work together to solve common problems.<br /><br />\r\n<b>Political Activist </b><br />\r\n•  Encourage members to register and vote.<br />\r\n•  Inform members about union''s legislative programs.<br />\r\n•  Distribute Get-Out-The-Vote information.<br />\r\n•  Volunteer in elections and/or pro-worker candidate campaigns.<br />\r\n•  Educate members about the Active Ballot Club (ABC) and sign them up for weekly contributions through paychecks.<br /><br />\r\n<b>Negotiator</b><br />\r\n•  Be aware of issues that will be discussed in negotiations by attending contract preparation meetings.<br />\r\n•  Help prepare proposals for negotiations by filling out contract surveys and attending proposal meetings.<br />\r\n•  Encourage co-workers to learn about the issues being discussed at the bargaining table and to get involved in contract solidarity activities like wearing buttons.<br />\r\n•	Educate co-workers, family, friends, neighbors, and consumers about the important issues we are fighting for in our negotiations.<br />\r\n•	Help organize and encourage other members to get involved in consumer awareness campaign in front of stores or door-to-door.<br /><br />\r\n<h2>\r\n<i><a href="http://www.ufcw5.org/wp-content/uploads/2012/10.ENG-Steawords-Book.pdv">•	Click Here to Download the UFCW Stewards Handbook</a></i></h2>\r\n<br /><br /><br /><br /><br /><br />', 'b53b3a3d6ab90ce0268229151c9bde11.png', '2015-02-17 07:22:44', '4.1', 1, '', '', '', '', '', 1, 0),
(527, 'Health and Welfare ', 'As a Union member, you may be eligible for benefits provided through the <a href="http://ufcwtrust.com">UFCW Trust Funds</a>There are different eligibility requirements depending on which benefit program you fall under. Your eligible dependents may also be covered as they meet the Fund requirements for eligibility. The Trust Funds provides Health & Welfare benefits including medical, prescription drug, dental, vision, chiropractic, mental health, pension, death benefits & cobra continuation of benefits.<br />\r\n\r\nHealth Benefits or Pension information are only available in person or by telephone. For more information, please visit ANY Local 5 office, contact your union by phone at <a href="tel:(408) 998.0428">(408) 998.0428</a> or visit <a href="http://ufcwtrust.com">ufcwtrust.com\r\n</a>', '6f4922f45568161a8cdf4ad2299f6d23.png', '2015-02-17 07:33:00', '3.1', 1, '', '', '', '', '', 1, 0),
(528, 'Scholorship Application', '<h3><b><u>"Education is the most powerful weapon which you can use to change the world.”</u>\r\n</h3></b><br /><br />The UFCW is about workers coming together to build better lives for themselves.  It is about creating opportunity.  That is why each year the UFCW awards several scholarships of up to $8,000 each to UFCW members or their unmarried dependents under the age of 20.<br />\r\n<b><a href="http://ufcw5.org/about/opportunitites/scholorship/procedure/apply-online\r\n">Click here to learn how you can apply online.\r\n</a></b>', '43ec517d68b6edd3015b3edc9a11367b.png', '2015-02-17 07:47:06', '3.2', 1, '', '', '', '', '', 1, 0),
(529, 'Collective Barganing', 'Collective bargaining is the process in which working people, through their unions, negotiate contracts with their employers to determine their terms of employment, including pay, benefits, hours, leave, job health and safety policies, ways to balance work and family and more<br /><br />\r\n\r\nCollective bargaining is a way to solve workplace problems. After the rights of public employees to collectively bargain for a middle-class life came under attack in 2010, working people in all kinds of jobs as well as students, community supporters, faith leaders and others united to defend this basic right.<br /><br />\r\n\r\nThe United States has long lagged behind other industrialized nations in collective bargaining coverage for public- and private-sector workers. Yet the right to collectively bargain is essential so that working men and women have the strength to improve their living standards, provide for their families and build a strong middle class.<br />\r\n', '68d30a9594728bc39aa24be94b319d21.png', '2015-02-17 07:51:42', '2.1', 1, '', '', '', '', '', 1, 0),
(530, 'New Members ', 'As a new employee in the bargaining unit, you are represented by United Food and Commercial Workers Union Local 5. If you are like many employees, this is the first time you have been represented by a Union and you should have questions as to what this means to you.<br />\r\nUnion representation means that UFCW Union Local 5, with your active participation, negotiates and administers a legally binding contract on your behalf.<br /><br />\r\n\r\nThis contract is also known as a Collective Bargaining Agreement. It sets forth your wages, benefits, hours, and nearly all of your working conditions. Because all employees negotiate together through the Union, Union members receive higher wages and better benefits than non-Union workers in similar jobs. Strength in numbers makes this possible.<br /><br />\r\n\r\nLocal 5 is part of the United Food and Commercial Workers International Union. There are more than 900 affiliated UFCW Locals representing 1.4 million workers in both similar and varied vocations across America and Canada.\r\n<br /><br />\r\nA Union Representative, assigned by the president, administers your contract. Representatives visit locations on a regular basis and have designated days in the office.<br /><br />\r\n\r\nMany of you also have a Union ''''steward'''' at your place of work. A steward, selected by your Union Representative, is a fellow employee who is both an activist of the Union and a conduit of general information between members and the Union.<br /><br />\r\n\r\nLocal 5 conducts general membership meetings on a quarterly basis. These meetings are important and, as a member, you are encouraged to attend and participate in the events of your Union. <br /><br />\r\n\r\nWithout a legally binding contract the law allows employers greater latitude with regard to determining and applying job standards. These conditions all too often leave the individual with little to no recourse when faced with problems. Your Union contract provides a legally binding agreement that is enforceable.\r\n\r\n', '68d30a9594728bc39aa24be94b319d21.png', '2015-02-17 07:55:46', '2.2', 1, '', '', '', '', '', 1, 0),
(531, 'Organizing ', 'A union is a group of workers who join together to achieve better wages, better benefits, respect on the job, and a stronger voice in workplace decisions. With the help of a union, workers negotiate a contract with their employer to ensure these things.<br /><br />\r\n\r\nWithout a union, employers have 100% control over its employees and complete authority to make all decisions. Unions give employees some of this control to make their workplace better. A union’s major goal is to give workers a voice on the job for respect, safety, security, better pay and benefits, and other improvements to working conditions.\r\n', 'b53b3a3d6ab90ce0268229151c9bde11.png', '2015-02-17 07:57:17', '2.3', 1, '', '', '', '', '', 1, 0),
(532, 'Registering To Vote ', '<b><h3>Registering To Vote \r\n</h3></b><br />\r\nTo register to vote in California, you must be:<br />\r\n•  A United States citizen<br />\r\n•  A resident of California<br />\r\n•  18 years of age or older on Election Day\r\n<br /><br /><br />\r\n<h3><b>How To Register </b>\r\n</h3><br />\r\n<b>Method A: Fill Out The Online Voter Registration Form \r\n</b><br /><br />\r\n\r\nSimply step through the screens and fill in the information requested on the form. Then print it, sign it, and mail it directly to the county elections office address that is pre-printed on the form. If you have any questions, you may contact the Elections Division at <a href="mailto:elections@sos.ca.gov">elections@sos.ca.gov</a> or <a href="tel:(800) 345-8683">(800) 345-8683</a> <br /><br /><b>\r\n\r\nMethod B: Pick Up A Voter Registration Form </b><br /><br />\r\n\r\nYou can pick up a voter registration form at your county elections office, library, or U.S. Post Office. It is important that your voter registration form be filled out completely and be postmarked or hand-delivered to your county elections office at least 15 days before the election. <br />', '66f041e16a60928b05a7e228a89c3799.png', '2015-02-17 08:08:01', '2.4', 1, '', '', '', '', '', 1, 0),
(533, 'Support Union Shops', 'Shop Union and Patronize Union Workplaces.\r\n<img src="file:///C:/Users/Education%20for%20all/Desktop/9774249_1.jpg">\r\n When you choose to patronize a union workplace, you are making \r\na choice to support your community and a better quality of life for the people who live there. By having a voice in the workplace, union members can improve working conditions for ourselves and the people we serve every day.\r\n\r\n\r\nGrocery and Meat\r\nRetail\r\nHealth Care\r\nPrinting\r\nOther Industries\r\n\r\nWhy Patronizing Union Matters\r\nUnion members, on average get paid more in wages, get better health benefits, vacation, sick leave and retirement plan than non-union members. And union members have a contract with their employer that helps protects them from favoritism and unjust treatment on the job.\r\nAs a customer or patient, where you choose to spend your money and get your health care sends a message. Thank you for choosing a union workplace when shopping. It makes a difference.\r\n\r\nPromote your union workplace or business\r\nDo you want to promote your union shop in the San Francisco area? Please contact Local 5 by email at ufcwsj@gmail.com.  We are happy to list all union businesses on our website for free. For paid listings or advertising promotions, email for details.\r\n\r\nWork Union, Shop Union, Live Union!\r\n', '', '2015-02-17 08:13:45', '2.5', 1, '', '', '', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stayconected`
--

CREATE TABLE IF NOT EXISTS `stayconected` (
`id` int(11) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stayconected`
--

INSERT INTO `stayconected` (`id`, `name`, `link`, `app_id`) VALUES
(1, 'Facebook', 'https://www.facebook.com/ufcw5?ref=hnav', 1),
(2, 'Twitter', 'http://www.twitter.com/ufcw5', 1),
(3, 'Youtube', 'http://www.youtube.com/user/ufcwvoice', 1),
(4, 'Instagram', 'http://instagram.com/ufcw5', 1),
(7, 'Twitter', 'twitter@twitter.com', 2),
(8, 'Facebook', 'facebook.com/ufcwunitedlatinos', 2),
(10, 'Instagram', 'instagram@instagram.com', 2),
(24, 'Flickr', 'https://www.flickr.com/people/ufcw5/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE IF NOT EXISTS `subcategories` (
  `menu_id` int(50) NOT NULL,
  `submenu_id` double NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`menu_id`, `submenu_id`, `name`) VALUES
(2, 2.1, 'Collective Bargaining'),
(2, 2.2, 'New Members'),
(2, 2.3, 'Organizing'),
(2, 2.4, 'Register To Vote'),
(3, 3.1, 'Health and Welfare'),
(3, 3.2, 'Scholarship Application'),
(2, 2.5, 'Support Union Shops'),
(4, 4.1, 'Stewards'),
(4, 4.2, 'Union Representatives'),
(4, 4.3, 'Office Locations'),
(1, 1.1, 'Who is UFCW'),
(1, 1.2, 'What is a Union'),
(1, 1.3, 'Why Join the Union'),
(1, 1.4, 'Benefits of Being a Union Member');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(2) NOT NULL,
`app_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `cookie` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT 'user.jpg',
  `email` varchar(25) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `time_cone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `app_id`, `user_name`, `password`, `cookie`, `image`, `email`, `logo`, `cover`, `time_cone`) VALUES
(1, 1, 'ufcw5', 'torpedo1', '812b4ba287f5ee0bc9d43bbf5bbe87fb', 'steve.png', 'arbishpalla@gmail.com', '9f61408e3afb633e50cdf1b20de6f466.png', 'd1fe173d08e959397adf34b1d77e88d7.png', '2014-11-20 05:17:24'),
(2, 2, 'unitedlatinos', 'torpedo1', '2a38a4a9316c49e5a833517c45d31070', '2a38a4a9316c49e5a833517c45d31070.png', 'jones436@gmail.com', '3416a75f4cea9109507cacd8e2f2aefc.png', '3416a75f4cea9109507cacd8e2f2aefc.png', '2014-11-20 05:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `webservices`
--

CREATE TABLE IF NOT EXISTS `webservices` (
  `id` int(3) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webservices`
--

INSERT INTO `webservices` (`id`, `name`) VALUES
(1, 'news_category.php'),
(2, 'union_representatives.php'),
(3, 'social_networks.php'),
(4, 'stay_connected.php'),
(5, 'view.php'),
(6, 'stay_connected.php'),
(7, 'office_location.php');

-- --------------------------------------------------------

--
-- Table structure for table `webservice_category`
--

CREATE TABLE IF NOT EXISTS `webservice_category` (
`id` int(2) NOT NULL,
  `webservice` int(2) NOT NULL,
  `category` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webservice_category`
--

INSERT INTO `webservice_category` (`id`, `webservice`, `category`) VALUES
(1, 5, 1.1),
(2, 5, 1.2),
(3, 5, 1.3),
(4, 5, 1.4),
(5, 4, 5),
(6, 7, 4.3),
(7, 2, 4.2),
(8, 1, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
 ADD PRIMARY KEY (`office_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `stayconected`
--
ALTER TABLE `stayconected`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `webservices`
--
ALTER TABLE `webservices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webservice_category`
--
ALTER TABLE `webservice_category`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
MODIFY `office_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `news_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=534;
--
-- AUTO_INCREMENT for table `stayconected`
--
ALTER TABLE `stayconected`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `webservice_category`
--
ALTER TABLE `webservice_category`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
