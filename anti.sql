-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2021 at 08:06 AM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s264265_onerp`
--

-- --------------------------------------------------------

--
-- Table structure for table `anticheat_settings`
--

CREATE TABLE `anticheat_settings` (
  `ac_code` int(2) NOT NULL,
  `ac_code_trigger_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anticheat_settings`
--

INSERT INTO `anticheat_settings` (`ac_code`, `ac_code_trigger_type`) VALUES
(0, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 0),
(39, 1),
(40, 0),
(41, 0),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 0),
(49, 0),
(50, 1),
(51, 1),
(52, 1);

-- --------------------------------------------------------

--
-- Table structure for table `arrestpoints`
--

CREATE TABLE `arrestpoints` (
  `id` int(2) NOT NULL,
  `PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `VW` int(5) NOT NULL DEFAULT '0',
  `Int` int(5) NOT NULL DEFAULT '0',
  `Type` int(1) NOT NULL DEFAULT '0',
  `jailVW` int(5) NOT NULL DEFAULT '0',
  `jailInt` int(5) NOT NULL DEFAULT '0',
  `jailpos1x` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos1y` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos1z` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos2x` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos2y` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos2z` float(10,5) NOT NULL DEFAULT '0.00000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auctions`
--

CREATE TABLE `auctions` (
  `id` int(11) NOT NULL,
  `BiddingFor` varchar(64) NOT NULL DEFAULT '(none)',
  `InProgress` int(11) NOT NULL DEFAULT '0',
  `Bid` int(11) NOT NULL DEFAULT '0',
  `Bidder` int(11) NOT NULL DEFAULT '0',
  `Expires` int(11) NOT NULL DEFAULT '0',
  `Wining` varchar(24) NOT NULL DEFAULT '(none)',
  `Increment` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `bannedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `permanent` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billboards`
--

CREATE TABLE `billboards` (
  `id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `rentby` int(11) NOT NULL DEFAULT '0',
  `cost` int(11) NOT NULL DEFAULT '0',
  `rentdate` int(11) NOT NULL DEFAULT '0',
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `posRX` float NOT NULL,
  `posRY` float NOT NULL,
  `posRZ` float NOT NULL,
  `int` int(11) NOT NULL,
  `vw` int(11) NOT NULL,
  `model` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `name` varchar(64) DEFAULT 'Unamed Business',
  `message` varchar(128) DEFAULT 'Welcome to the business!',
  `type` tinyint(2) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `entryfee` int(10) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '1',
  `timestamp` int(10) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `outsideint` tinyint(2) DEFAULT '0',
  `outsidevw` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `products` int(10) DEFAULT '500',
  `robbed` smallint(6) NOT NULL DEFAULT '3',
  `robbing` int(11) DEFAULT NULL,
  `prices0` int(11) NOT NULL DEFAULT '0',
  `prices1` int(11) NOT NULL DEFAULT '0',
  `prices2` int(11) NOT NULL DEFAULT '0',
  `prices3` int(11) NOT NULL DEFAULT '0',
  `prices4` int(11) NOT NULL DEFAULT '0',
  `prices5` int(11) NOT NULL DEFAULT '0',
  `prices6` int(11) NOT NULL DEFAULT '0',
  `prices7` int(11) NOT NULL DEFAULT '0',
  `prices8` int(11) NOT NULL DEFAULT '0',
  `prices9` int(11) NOT NULL DEFAULT '0',
  `prices10` int(11) NOT NULL DEFAULT '0',
  `prices11` int(11) NOT NULL DEFAULT '0',
  `prices12` int(11) NOT NULL DEFAULT '0',
  `prices13` int(11) NOT NULL DEFAULT '0',
  `prices14` int(11) NOT NULL DEFAULT '0',
  `prices15` int(11) NOT NULL DEFAULT '0',
  `prices16` int(11) NOT NULL DEFAULT '0',
  `prices17` int(11) NOT NULL DEFAULT '0',
  `prices18` int(11) NOT NULL DEFAULT '0',
  `prices19` int(11) NOT NULL DEFAULT '0',
  `prices20` int(11) NOT NULL DEFAULT '0',
  `prices21` int(11) NOT NULL DEFAULT '0',
  `prices22` int(11) NOT NULL DEFAULT '0',
  `prices23` int(11) NOT NULL DEFAULT '0',
  `prices24` int(11) NOT NULL DEFAULT '0',
  `Car0PosX` float NOT NULL DEFAULT '0',
  `Car0PosY` float NOT NULL DEFAULT '0',
  `Car0PosZ` float NOT NULL DEFAULT '0',
  `Car0PosAngle` float NOT NULL DEFAULT '0',
  `Car0ModelId` int(11) NOT NULL DEFAULT '0',
  `Car0Price` int(11) NOT NULL DEFAULT '0',
  `Car1PosX` float NOT NULL DEFAULT '0',
  `Car1PosY` float NOT NULL DEFAULT '0',
  `Car1PosZ` float NOT NULL DEFAULT '0',
  `Car1PosAngle` float NOT NULL DEFAULT '0',
  `Car1ModelId` int(11) NOT NULL DEFAULT '0',
  `Car1Price` int(11) NOT NULL DEFAULT '0',
  `Car2PosX` float NOT NULL DEFAULT '0',
  `Car2PosY` float NOT NULL DEFAULT '0',
  `Car2PosZ` float NOT NULL DEFAULT '0',
  `Car2PosAngle` float NOT NULL DEFAULT '0',
  `Car2ModelId` int(11) NOT NULL DEFAULT '0',
  `Car2Price` int(11) NOT NULL DEFAULT '0',
  `Car3PosX` float NOT NULL DEFAULT '0',
  `Car3PosY` float NOT NULL DEFAULT '0',
  `Car3PosZ` float NOT NULL DEFAULT '0',
  `Car3PosAngle` float NOT NULL DEFAULT '0',
  `Car3ModelId` int(11) NOT NULL DEFAULT '0',
  `Car3Price` int(11) NOT NULL DEFAULT '0',
  `Car1Stock` int(11) NOT NULL DEFAULT '0',
  `Car2Stock` int(11) NOT NULL DEFAULT '0',
  `Car3Stock` int(11) NOT NULL DEFAULT '0',
  `Car1Order` int(11) NOT NULL DEFAULT '0',
  `Car2Order` int(11) NOT NULL DEFAULT '0',
  `Car3Order` int(11) NOT NULL DEFAULT '0',
  `Car4PosX` float NOT NULL DEFAULT '0',
  `Car4PosY` float NOT NULL DEFAULT '0',
  `Car4PosZ` float NOT NULL DEFAULT '0',
  `Car4PosAngle` float NOT NULL DEFAULT '0',
  `Car4ModelId` int(11) NOT NULL DEFAULT '0',
  `Car4Price` int(11) NOT NULL DEFAULT '0',
  `Car5PosX` int(11) NOT NULL DEFAULT '0',
  `Car5PosY` float NOT NULL DEFAULT '0',
  `Car5PosZ` float NOT NULL DEFAULT '0',
  `Car5PosAngle` float NOT NULL DEFAULT '0',
  `Car5ModelId` int(11) NOT NULL DEFAULT '0',
  `Car5Price` int(11) NOT NULL DEFAULT '0',
  `Car6PosX` float NOT NULL DEFAULT '0',
  `Car6PosY` float NOT NULL DEFAULT '0',
  `Car6PosZ` float NOT NULL DEFAULT '0',
  `Car6PosAngle` float NOT NULL DEFAULT '0',
  `Car6ModelId` int(11) NOT NULL DEFAULT '0',
  `Car6Price` int(11) NOT NULL DEFAULT '0',
  `Car7PosX` float NOT NULL DEFAULT '0',
  `Car7PosY` float NOT NULL DEFAULT '0',
  `Car7PosZ` float NOT NULL DEFAULT '0',
  `Car7PosAngle` float NOT NULL DEFAULT '0',
  `Car7ModelId` int(11) NOT NULL DEFAULT '0',
  `Car7Price` int(11) NOT NULL DEFAULT '0',
  `Car8PosX` float NOT NULL DEFAULT '0',
  `Car8PosY` float NOT NULL DEFAULT '0',
  `Car8PosZ` float NOT NULL DEFAULT '0',
  `Car8PosAngle` float NOT NULL DEFAULT '0',
  `Car8ModelId` int(11) NOT NULL DEFAULT '0',
  `Car8Price` int(11) NOT NULL DEFAULT '0',
  `Car9PosX` float NOT NULL DEFAULT '0',
  `Car9PosY` float NOT NULL DEFAULT '0',
  `Car9PosZ` float NOT NULL DEFAULT '0',
  `Car9PosAngle` float NOT NULL DEFAULT '0',
  `Car9ModelId` int(11) NOT NULL DEFAULT '0',
  `Car9Price` int(11) NOT NULL DEFAULT '0',
  `PurchaseX` float NOT NULL DEFAULT '0',
  `PurchaseY` float NOT NULL DEFAULT '0',
  `PurchaseZ` float NOT NULL DEFAULT '0',
  `PurchaseAngle` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `ownerid`, `owner`, `name`, `message`, `type`, `price`, `entryfee`, `locked`, `timestamp`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `int_x`, `int_y`, `int_z`, `int_a`, `interior`, `world`, `outsideint`, `outsidevw`, `cash`, `products`, `robbed`, `robbing`, `prices0`, `prices1`, `prices2`, `prices3`, `prices4`, `prices5`, `prices6`, `prices7`, `prices8`, `prices9`, `prices10`, `prices11`, `prices12`, `prices13`, `prices14`, `prices15`, `prices16`, `prices17`, `prices18`, `prices19`, `prices20`, `prices21`, `prices22`, `prices23`, `prices24`, `Car0PosX`, `Car0PosY`, `Car0PosZ`, `Car0PosAngle`, `Car0ModelId`, `Car0Price`, `Car1PosX`, `Car1PosY`, `Car1PosZ`, `Car1PosAngle`, `Car1ModelId`, `Car1Price`, `Car2PosX`, `Car2PosY`, `Car2PosZ`, `Car2PosAngle`, `Car2ModelId`, `Car2Price`, `Car3PosX`, `Car3PosY`, `Car3PosZ`, `Car3PosAngle`, `Car3ModelId`, `Car3Price`, `Car1Stock`, `Car2Stock`, `Car3Stock`, `Car1Order`, `Car2Order`, `Car3Order`, `Car4PosX`, `Car4PosY`, `Car4PosZ`, `Car4PosAngle`, `Car4ModelId`, `Car4Price`, `Car5PosX`, `Car5PosY`, `Car5PosZ`, `Car5PosAngle`, `Car5ModelId`, `Car5Price`, `Car6PosX`, `Car6PosY`, `Car6PosZ`, `Car6PosAngle`, `Car6ModelId`, `Car6Price`, `Car7PosX`, `Car7PosY`, `Car7PosZ`, `Car7PosAngle`, `Car7ModelId`, `Car7Price`, `Car8PosX`, `Car8PosY`, `Car8PosZ`, `Car8PosAngle`, `Car8ModelId`, `Car8Price`, `Car9PosX`, `Car9PosY`, `Car9PosZ`, `Car9PosAngle`, `Car9ModelId`, `Car9Price`, `PurchaseX`, `PurchaseY`, `PurchaseZ`, `PurchaseAngle`) VALUES
(3, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 999999999, 0, 0, 0, 916.324, -979.578, 38.067, 175.032, -27.438, -57.611, 1003.55, 0, 6, 3000003, 0, 0, 0, 499, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `changes`
--

CREATE TABLE `changes` (
  `slot` tinyint(2) DEFAULT NULL,
  `text` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `chargedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clothing`
--

CREATE TABLE `clothing` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `boneid` tinyint(2) DEFAULT NULL,
  `attached` tinyint(1) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `scale_x` float DEFAULT NULL,
  `scale_y` float DEFAULT NULL,
  `scale_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clothing`
--

INSERT INTO `clothing` (`id`, `uid`, `name`, `modelid`, `boneid`, `attached`, `pos_x`, `pos_y`, `pos_z`, `rot_x`, `rot_y`, `rot_z`, `scale_x`, `scale_y`, `scale_z`) VALUES
(1, 1, 'Black hair', 19077, 2, 1, 0.111, 0.014, -0.003, 0, 0, 0, 1, 1, 0.946);

-- --------------------------------------------------------

--
-- Table structure for table `crates`
--

CREATE TABLE `crates` (
  `id` int(11) NOT NULL,
  `cbObject` int(11) DEFAULT '964',
  `Facility` int(11) NOT NULL DEFAULT '0',
  `Group` int(11) NOT NULL DEFAULT '-1',
  `CrateX` float(20,5) NOT NULL DEFAULT '0.00000',
  `CrateY` float(20,5) NOT NULL DEFAULT '0.00000',
  `CrateZ` float(20,5) NOT NULL DEFAULT '0.00000',
  `InVehicle` int(11) NOT NULL DEFAULT '-1',
  `OnVehicle` int(11) NOT NULL DEFAULT '-1',
  `Int` int(11) NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Materials` int(11) NOT NULL DEFAULT '0',
  `Gun1` int(11) NOT NULL DEFAULT '0',
  `GunAmount1` int(11) NOT NULL DEFAULT '0',
  `Gun2` int(11) NOT NULL DEFAULT '0',
  `GunAmount2` int(11) NOT NULL DEFAULT '0',
  `Gun3` int(11) NOT NULL DEFAULT '0',
  `GunAmount3` int(11) NOT NULL DEFAULT '0',
  `Gun4` int(11) NOT NULL DEFAULT '0',
  `GunAmount4` int(11) NOT NULL DEFAULT '0',
  `Gun5` int(11) NOT NULL DEFAULT '0',
  `GunAmount5` int(11) NOT NULL DEFAULT '0',
  `Gun6` int(11) NOT NULL DEFAULT '0',
  `GunAmount6` int(11) NOT NULL DEFAULT '0',
  `Gun7` int(11) NOT NULL DEFAULT '0',
  `GunAmount7` int(11) NOT NULL DEFAULT '0',
  `Gun8` int(11) NOT NULL DEFAULT '0',
  `GunAmount8` int(11) NOT NULL DEFAULT '0',
  `Gun9` int(11) NOT NULL DEFAULT '0',
  `GunAmount9` int(11) NOT NULL DEFAULT '0',
  `Gun10` int(11) NOT NULL DEFAULT '0',
  `GunAmount10` int(11) NOT NULL DEFAULT '0',
  `Gun11` int(11) NOT NULL DEFAULT '0',
  `GunAmount11` int(11) NOT NULL DEFAULT '0',
  `Gun12` int(11) NOT NULL DEFAULT '0',
  `GunAmount12` int(11) NOT NULL DEFAULT '0',
  `Gun13` int(11) NOT NULL DEFAULT '0',
  `GunAmount13` int(11) NOT NULL DEFAULT '0',
  `Gun14` int(11) NOT NULL DEFAULT '0',
  `GunAmount14` int(11) NOT NULL DEFAULT '0',
  `Gun15` int(11) NOT NULL DEFAULT '0',
  `GunAmount16` int(11) NOT NULL DEFAULT '0',
  `GunAmount15` int(11) NOT NULL DEFAULT '0',
  `Gun16` int(11) NOT NULL DEFAULT '0',
  `PlacedBy` varchar(24) NOT NULL DEFAULT 'Unknown',
  `Lifespan` int(11) NOT NULL DEFAULT '0',
  `Transfer` int(1) NOT NULL DEFAULT '0',
  `DoorID` int(11) NOT NULL DEFAULT '-1',
  `DoorType` int(11) NOT NULL DEFAULT '-1',
  `Price` int(11) NOT NULL DEFAULT '0',
  `Paid` int(1) NOT NULL DEFAULT '0',
  `Active` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` tinyint(2) DEFAULT NULL,
  `divisionid` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE `entrances` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `iconid` smallint(5) DEFAULT '1239',
  `locked` tinyint(1) DEFAULT '0',
  `radius` float DEFAULT '3',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `outsideint` tinyint(2) DEFAULT '0',
  `outsidevw` int(10) DEFAULT '0',
  `adminlevel` tinyint(2) DEFAULT '0',
  `factiontype` tinyint(2) DEFAULT '0',
  `vip` tinyint(2) DEFAULT '0',
  `vehicles` tinyint(1) DEFAULT '0',
  `freeze` tinyint(1) DEFAULT '0',
  `password` varchar(64) DEFAULT 'None',
  `label` tinyint(1) DEFAULT '1',
  `mapicon` tinyint(2) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionpay`
--

CREATE TABLE `factionpay` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionranks`
--

CREATE TABLE `factionranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `shortname` tinytext,
  `leader` varchar(24) DEFAULT 'No-one',
  `type` tinyint(2) DEFAULT '0',
  `color` int(10) DEFAULT '-1',
  `rankcount` tinyint(2) DEFAULT '6',
  `lockerx` float DEFAULT '0',
  `lockery` float DEFAULT '0',
  `lockerz` float DEFAULT '0',
  `lockerinterior` tinyint(2) DEFAULT '0',
  `lockerworld` int(10) DEFAULT '0',
  `turftokens` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`id`, `name`, `shortname`, `leader`, `type`, `color`, `rankcount`, `lockerx`, `lockery`, `lockerz`, `lockerinterior`, `lockerworld`, `turftokens`) VALUES
(1, 'Medic', NULL, 'No-one', 2, -1, 6, 0, 0, 0, 0, 0, 0),
(2, 'mechanic', NULL, 'No-one', 7, -1, 6, 0, 0, 0, 0, 0, 0),
(3, 'police', NULL, 'No-one', 1, -1, 6, 0, 0, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `factionskins`
--

CREATE TABLE `factionskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `flaggedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(10) NOT NULL,
  `houseid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `interior` tinyint(2) DEFAULT NULL,
  `world` int(10) DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT '0',
  `door_locked` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangranks`
--

CREATE TABLE `gangranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangs`
--

CREATE TABLE `gangs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT 'None',
  `motd` varchar(128) DEFAULT 'None',
  `leader` varchar(24) DEFAULT 'No-one',
  `color` int(10) DEFAULT '-256',
  `strikes` tinyint(1) DEFAULT '0',
  `level` tinyint(2) DEFAULT '1',
  `points` int(10) DEFAULT '0',
  `turftokens` int(10) DEFAULT '0',
  `stash_x` float DEFAULT '0',
  `stash_y` float DEFAULT '0',
  `stash_z` float DEFAULT '0',
  `stashinterior` tinyint(2) DEFAULT '0',
  `stashworld` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `pot` int(10) DEFAULT '0',
  `crack` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `pistolammo` int(10) DEFAULT '0',
  `shotgunammo` int(10) DEFAULT '0',
  `smgammo` int(10) DEFAULT '0',
  `arammo` int(10) DEFAULT '0',
  `rifleammo` int(10) DEFAULT '0',
  `hpammo` int(10) DEFAULT '0',
  `poisonammo` int(10) DEFAULT '0',
  `fmjammo` int(10) DEFAULT '0',
  `weapon_9mm` int(10) DEFAULT '0',
  `weapon_sdpistol` int(10) DEFAULT '0',
  `weapon_deagle` int(10) DEFAULT '0',
  `weapon_shotgun` int(10) DEFAULT '0',
  `weapon_spas12` int(10) DEFAULT '0',
  `weapon_sawnoff` int(10) DEFAULT '0',
  `weapon_tec9` int(10) DEFAULT '0',
  `weapon_uzi` int(10) DEFAULT '0',
  `weapon_mp5` int(10) DEFAULT '0',
  `weapon_ak47` int(10) DEFAULT '0',
  `weapon_m4` int(10) DEFAULT '0',
  `weapon_rifle` int(10) DEFAULT '0',
  `weapon_sniper` int(10) DEFAULT '0',
  `weapon_molotov` int(10) DEFAULT '0',
  `armsdealer` tinyint(1) DEFAULT '0',
  `drugdealer` tinyint(1) DEFAULT '0',
  `arms_x` float DEFAULT '0',
  `arms_y` float DEFAULT '0',
  `arms_z` float DEFAULT '0',
  `arms_a` float DEFAULT '0',
  `drug_x` float DEFAULT '0',
  `drug_y` float DEFAULT '0',
  `drug_z` float DEFAULT '0',
  `drug_a` float DEFAULT '0',
  `armsworld` int(10) DEFAULT '0',
  `drugworld` int(10) DEFAULT '0',
  `drugweed` int(10) DEFAULT '0',
  `drugcocaine` int(10) DEFAULT '0',
  `drugmeth` int(10) DEFAULT '0',
  `armsmaterials` int(10) DEFAULT '0',
  `armsprice_1` int(10) DEFAULT '0',
  `armsprice_2` int(10) DEFAULT '0',
  `armsprice_3` int(10) DEFAULT '0',
  `armsprice_4` int(10) DEFAULT '0',
  `armsprice_5` int(10) DEFAULT '0',
  `armsprice_6` int(10) DEFAULT '0',
  `armsprice_7` int(10) DEFAULT '0',
  `armsprice_8` int(10) DEFAULT '0',
  `weed_price` int(10) DEFAULT '0',
  `cocaine_price` int(10) DEFAULT '0',
  `meth_price` int(10) DEFAULT '0',
  `armshpammo` int(10) DEFAULT '0',
  `armspoisonammo` int(10) DEFAULT '0',
  `armsfmjammo` int(10) DEFAULT '0',
  `alliance` int(10) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangskins`
--

CREATE TABLE `gangskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int(10) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `exit_x` float DEFAULT '0',
  `exit_y` float DEFAULT '0',
  `exit_z` float DEFAULT '0',
  `exit_a` float DEFAULT '0',
  `world` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gateID` int(12) NOT NULL,
  `gateModel` int(12) DEFAULT '980',
  `gateSpeed` float DEFAULT '0',
  `gateTime` int(12) DEFAULT '0',
  `gateX` float DEFAULT '0',
  `gateY` float DEFAULT '0',
  `gateZ` float DEFAULT '0',
  `gateRX` float DEFAULT '0',
  `gateRY` float DEFAULT '0',
  `gateRZ` float DEFAULT '0',
  `gateInterior` int(12) DEFAULT '0',
  `gateWorld` int(12) DEFAULT '0',
  `gateMoveX` float DEFAULT '0',
  `gateMoveY` float DEFAULT '0',
  `gateMoveZ` float DEFAULT '0',
  `gateMoveRX` float DEFAULT '0',
  `gateMoveRY` float DEFAULT '0',
  `gateMoveRZ` float DEFAULT '0',
  `gateLinkID` int(12) DEFAULT '0',
  `gateFaction` int(12) DEFAULT '0',
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(12) NOT NULL DEFAULT '0',
  `graffitiX` float DEFAULT '0',
  `graffitiY` float DEFAULT '0',
  `graffitiZ` float DEFAULT '0',
  `graffitiAngle` float DEFAULT '0',
  `graffitiDefault` int(64) DEFAULT NULL,
  `graffitiColor` int(12) DEFAULT '0',
  `graffitiFont` varchar(50) DEFAULT NULL,
  `graffitiText` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `graffities`
--

CREATE TABLE `graffities` (
  `id` int(11) DEFAULT NULL,
  `text` varchar(32) NOT NULL,
  `color` int(16) NOT NULL,
  `back_color` int(16) NOT NULL,
  `font` varchar(16) NOT NULL,
  `font_size` int(11) NOT NULL,
  `bold` int(11) NOT NULL,
  `creator` varchar(32) NOT NULL,
  `c_date` varchar(64) NOT NULL,
  `posx` float NOT NULL,
  `posy` float NOT NULL,
  `posz` float NOT NULL,
  `rotx` float NOT NULL,
  `roty` float NOT NULL,
  `rotz` float NOT NULL,
  `gotox` float NOT NULL,
  `gotoy` float NOT NULL,
  `gotoz` float NOT NULL,
  `interior` int(11) NOT NULL,
  `world` int(11) NOT NULL,
  `accepted` int(11) NOT NULL,
  `acceptor` varchar(32) NOT NULL,
  `a_date` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gunracks`
--

CREATE TABLE `gunracks` (
  `rackID` int(12) NOT NULL,
  `rackHouse` int(12) DEFAULT '0',
  `rackX` float DEFAULT '0',
  `rackY` float DEFAULT '0',
  `rackZ` float DEFAULT '0',
  `rackA` float DEFAULT '0',
  `rackInterior` int(12) DEFAULT '0',
  `rackWorld` int(12) DEFAULT '0',
  `rackWeapon1` int(12) DEFAULT '0',
  `rackAmmo1` int(12) DEFAULT '0',
  `rackWeapon2` int(12) DEFAULT '0',
  `rackAmmo2` int(12) DEFAULT '0',
  `rackWeapon3` int(12) DEFAULT '0',
  `rackAmmo3` int(12) DEFAULT '0',
  `rackWeapon4` int(12) DEFAULT '0',
  `rackAmmo4` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint(2) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `rentprice` int(10) DEFAULT '0',
  `level` tinyint(2) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int(10) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `outsideint` int(10) DEFAULT '0',
  `outsidevw` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `pot` int(10) DEFAULT '0',
  `crack` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `weapon_1` tinyint(2) DEFAULT '0',
  `weapon_2` tinyint(2) DEFAULT '0',
  `weapon_3` tinyint(2) DEFAULT '0',
  `weapon_4` tinyint(2) DEFAULT '0',
  `weapon_5` tinyint(2) DEFAULT '0',
  `weapon_6` tinyint(2) DEFAULT '0',
  `weapon_7` tinyint(2) DEFAULT '0',
  `weapon_8` tinyint(2) DEFAULT '0',
  `weapon_9` tinyint(2) DEFAULT '0',
  `weapon_10` tinyint(2) DEFAULT '0',
  `ammo_1` smallint(5) DEFAULT '0',
  `ammo_2` smallint(5) DEFAULT '0',
  `ammo_3` smallint(5) DEFAULT '0',
  `ammo_4` smallint(5) DEFAULT '0',
  `ammo_5` smallint(5) DEFAULT '0',
  `ammo_6` tinyint(2) DEFAULT '0',
  `ammo_7` tinyint(2) DEFAULT '0',
  `ammo_8` tinyint(2) DEFAULT '0',
  `ammo_9` tinyint(2) DEFAULT '0',
  `ammo_10` tinyint(2) DEFAULT '0',
  `pistolammo` smallint(5) DEFAULT '0',
  `shotgunammo` smallint(5) DEFAULT '0',
  `smgammo` smallint(5) DEFAULT '0',
  `arammo` smallint(5) DEFAULT '0',
  `rifleammo` smallint(5) DEFAULT '0',
  `hpammo` smallint(5) DEFAULT '0',
  `poisonammo` smallint(5) DEFAULT '0',
  `fmjammo` smallint(5) DEFAULT '0',
  `robbed` smallint(6) NOT NULL DEFAULT '3',
  `robbing` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kills`
--

CREATE TABLE `kills` (
  `id` int(10) NOT NULL,
  `killer_uid` int(10) DEFAULT NULL,
  `target_uid` int(10) DEFAULT NULL,
  `killer` varchar(24) DEFAULT NULL,
  `target` varchar(24) DEFAULT NULL,
  `reason` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kills`
--

INSERT INTO `kills` (`id`, `killer_uid`, `target_uid`, `killer`, `target`, `reason`, `date`) VALUES
(1, 1, 1, 'Isaac_Rodriguez', 'Isaac_Rodriguez', 'Explosion', '2021-07-12 11:48:59'),
(2, 2, 2, 'Kaushal_Stokes', 'Kaushal_Stokes', 'Explosion', '2021-07-12 17:29:23'),
(3, 2, 1, 'Kaushal_Stokes', 'Isaac_Rodriguez', 'Deagle', '2021-07-12 17:35:47'),
(4, 1, 2, 'Isaac_Rodriguez', 'Kaushal_Stokes', 'AK-47', '2021-07-12 17:35:59'),
(5, 1, 2, 'Isaac_Rodriguez', 'Kaushal_Stokes', 'Colt 45', '2021-07-12 17:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `landobjects`
--

CREATE TABLE `landobjects` (
  `id` int(10) NOT NULL,
  `landid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT '0',
  `door_locked` tinyint(1) DEFAULT '0',
  `move_x` float DEFAULT '0',
  `move_y` float DEFAULT '0',
  `move_z` float DEFAULT '0',
  `move_rx` float DEFAULT '0',
  `move_ry` float DEFAULT '0',
  `move_rz` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE `lands` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `price` int(10) DEFAULT '0',
  `min_x` float DEFAULT '0',
  `min_y` float DEFAULT '0',
  `max_x` float DEFAULT '0',
  `max_y` float DEFAULT '0',
  `height` float DEFAULT '0',
  `lx` float NOT NULL,
  `ly` float NOT NULL,
  `lz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_admin`
--

CREATE TABLE `log_admin` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_bans`
--

CREATE TABLE `log_bans` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_cheat`
--

CREATE TABLE `log_cheat` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_contracts`
--

CREATE TABLE `log_contracts` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_faction`
--

CREATE TABLE `log_faction` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_gang`
--

CREATE TABLE `log_gang` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_give`
--

CREATE TABLE `log_give` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_namechanges`
--

CREATE TABLE `log_namechanges` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_namehistory`
--

CREATE TABLE `log_namehistory` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `oldname` varchar(24) DEFAULT NULL,
  `newname` varchar(24) DEFAULT NULL,
  `changedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_property`
--

CREATE TABLE `log_property` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_punishments`
--

CREATE TABLE `log_punishments` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_referrals`
--

CREATE TABLE `log_referrals` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_vip`
--

CREATE TABLE `log_vip` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `object`
--

CREATE TABLE `object` (
  `mobjID` int(11) NOT NULL,
  `mobjModel` int(11) NOT NULL DEFAULT '980',
  `mobjInterior` int(11) NOT NULL DEFAULT '0',
  `mobjWorld` int(11) NOT NULL DEFAULT '0',
  `mobjX` float NOT NULL DEFAULT '0',
  `mobjY` float NOT NULL DEFAULT '0',
  `mobjZ` float NOT NULL DEFAULT '0',
  `mobjRX` float NOT NULL DEFAULT '0',
  `mobjRY` float NOT NULL DEFAULT '0',
  `mobjRZ` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE `phonebook` (
  `name` varchar(24) DEFAULT NULL,
  `number` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phone_contacts`
--

CREATE TABLE `phone_contacts` (
  `contact_id` int(11) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `contact_name` varchar(24) NOT NULL,
  `contact_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT '-1',
  `type` tinyint(2) DEFAULT '0',
  `profits` int(10) DEFAULT '0',
  `time` tinyint(2) DEFAULT '24',
  `point_x` float DEFAULT '0',
  `point_y` float DEFAULT '0',
  `point_z` float DEFAULT '0',
  `pointinterior` tinyint(2) DEFAULT '0',
  `pointworld` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shots`
--

CREATE TABLE `shots` (
  `id` int(10) NOT NULL,
  `playerid` smallint(3) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `hittype` tinyint(2) DEFAULT NULL,
  `hitid` int(10) DEFAULT NULL,
  `hitplayer` varchar(24) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `timestamp` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(11) NOT NULL,
  `speedRange` float DEFAULT '0',
  `speedLimit` float DEFAULT '0',
  `speedX` float DEFAULT '0',
  `speedY` float DEFAULT '0',
  `speedZ` float DEFAULT '0',
  `speedAngle` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int(10) NOT NULL,
  `sender_number` int(10) DEFAULT NULL,
  `recipient_number` int(10) DEFAULT NULL,
  `sender` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE `turfs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT '-1',
  `type` tinyint(2) DEFAULT '0',
  `time` tinyint(2) DEFAULT '12',
  `min_x` float DEFAULT '0',
  `min_y` float DEFAULT '0',
  `max_x` float DEFAULT '0',
  `max_y` float DEFAULT '0',
  `height` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(129) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `setup` tinyint(1) DEFAULT '1',
  `gender` tinyint(1) DEFAULT '1',
  `age` tinyint(3) DEFAULT '18',
  `skin` smallint(3) DEFAULT '299',
  `BirthYear` int(10) DEFAULT '0',
  `BirthMonth` tinyint(5) DEFAULT '0',
  `BirthDay` tinyint(5) DEFAULT '0',
  `camera_x` float DEFAULT '0',
  `camera_y` float DEFAULT '0',
  `camera_z` float DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '13000',
  `bank` int(10) DEFAULT '2000',
  `paycheck` int(10) DEFAULT '0',
  `level` int(10) DEFAULT '1',
  `exp` int(10) DEFAULT '0',
  `minutes` smallint(3) DEFAULT '0',
  `hours` int(10) DEFAULT '0',
  `adminlevel` int(10) DEFAULT '0',
  `adminname` varchar(24) DEFAULT 'None',
  `helperlevel` tinyint(2) DEFAULT '0',
  `health` float DEFAULT '100',
  `armor` float DEFAULT '0',
  `upgradepoints` int(10) DEFAULT '0',
  `warnings` tinyint(3) DEFAULT '0',
  `injured` tinyint(1) DEFAULT '0',
  `hospital` tinyint(1) DEFAULT '0',
  `spawnhealth` float DEFAULT '50',
  `spawnarmor` float DEFAULT '0',
  `jailtype` tinyint(1) DEFAULT '0',
  `jailtime` int(10) DEFAULT '0',
  `newbiemuted` tinyint(1) DEFAULT '0',
  `helpmuted` tinyint(1) DEFAULT '0',
  `admuted` tinyint(1) DEFAULT '0',
  `livemuted` tinyint(1) DEFAULT '0',
  `globalmuted` tinyint(1) DEFAULT '0',
  `reportmuted` tinyint(2) DEFAULT '0',
  `reportwarns` tinyint(2) DEFAULT '0',
  `fightstyle` tinyint(2) DEFAULT '4',
  `locked` tinyint(1) DEFAULT '0',
  `accent` varchar(16) DEFAULT 'None',
  `cookies` int(10) DEFAULT '0',
  `phone` varchar(24) DEFAULT '0',
  `job` int(10) DEFAULT '-1',
  `secondjob` tinyint(2) DEFAULT '-1',
  `crimes` int(10) DEFAULT '0',
  `arrested` int(10) DEFAULT '0',
  `wantedlevel` tinyint(2) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `pot` int(10) DEFAULT '0',
  `crack` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `seeds` int(10) DEFAULT '0',
  `ephedrine` int(10) DEFAULT '0',
  `muriaticacid` int(10) DEFAULT '0',
  `bakingsoda` int(10) DEFAULT '0',
  `cigars` int(10) DEFAULT '0',
  `walkietalkie` tinyint(1) DEFAULT '0',
  `channel` int(10) DEFAULT '0',
  `rentinghouse` int(10) DEFAULT '0',
  `spraycans` int(10) DEFAULT '0',
  `boombox` tinyint(1) DEFAULT '0',
  `mp3player` tinyint(1) DEFAULT '0',
  `phonebook` tinyint(1) DEFAULT '0',
  `fishingrod` tinyint(1) DEFAULT '0',
  `fishingbait` int(10) DEFAULT '0',
  `fishweight` int(10) DEFAULT '0',
  `components` int(10) DEFAULT '0',
  `courierskill` int(10) DEFAULT '0',
  `fishingskill` int(10) DEFAULT '0',
  `guardskill` int(10) DEFAULT '0',
  `weaponskill` int(10) DEFAULT '0',
  `mechanicskill` int(10) DEFAULT '0',
  `lawyerskill` int(10) DEFAULT '0',
  `smugglerskill` int(10) DEFAULT '0',
  `toggletextdraws` tinyint(1) DEFAULT '0',
  `toggleooc` tinyint(1) DEFAULT '0',
  `togglephone` tinyint(1) DEFAULT '0',
  `toggleadmin` tinyint(1) DEFAULT '0',
  `togglehelper` tinyint(1) DEFAULT '0',
  `togglenewbie` tinyint(1) DEFAULT '0',
  `togglewt` tinyint(1) DEFAULT '0',
  `toggleradio` tinyint(1) DEFAULT '0',
  `togglevip` tinyint(1) DEFAULT '0',
  `togglemusic` tinyint(1) DEFAULT '0',
  `togglefaction` tinyint(1) DEFAULT '0',
  `togglegang` tinyint(1) DEFAULT '0',
  `togglenews` tinyint(1) DEFAULT '0',
  `toggleglobal` tinyint(1) DEFAULT '0',
  `togglecam` tinyint(1) DEFAULT '0',
  `carlicense` tinyint(1) DEFAULT '0',
  `vippackage` tinyint(2) NOT NULL DEFAULT '0',
  `viptime` int(10) DEFAULT '0',
  `vipcooldown` int(10) DEFAULT '0',
  `weapon_0` tinyint(2) DEFAULT '0',
  `weapon_1` tinyint(2) DEFAULT '0',
  `weapon_2` tinyint(2) DEFAULT '0',
  `weapon_3` tinyint(2) DEFAULT '0',
  `weapon_4` tinyint(2) DEFAULT '0',
  `weapon_5` tinyint(2) DEFAULT '0',
  `weapon_6` tinyint(2) DEFAULT '0',
  `weapon_7` tinyint(2) DEFAULT '0',
  `weapon_8` tinyint(2) DEFAULT '0',
  `weapon_9` tinyint(2) DEFAULT '0',
  `weapon_10` tinyint(2) DEFAULT '0',
  `weapon_11` tinyint(2) DEFAULT '0',
  `weapon_12` tinyint(2) DEFAULT '0',
  `ammo_0` smallint(5) DEFAULT '0',
  `ammo_1` smallint(5) DEFAULT '0',
  `ammo_2` smallint(5) DEFAULT '0',
  `ammo_3` smallint(5) DEFAULT '0',
  `ammo_4` smallint(5) DEFAULT '0',
  `ammo_5` smallint(5) DEFAULT '0',
  `ammo_6` smallint(5) DEFAULT '0',
  `ammo_7` smallint(5) DEFAULT '0',
  `ammo_8` smallint(5) DEFAULT '0',
  `ammo_9` smallint(5) DEFAULT '0',
  `ammo_10` smallint(5) DEFAULT '0',
  `ammo_11` smallint(5) DEFAULT '0',
  `ammo_12` smallint(5) DEFAULT '0',
  `faction` tinyint(2) DEFAULT '-1',
  `gang` tinyint(2) DEFAULT '-1',
  `factionrank` tinyint(2) DEFAULT '0',
  `gangrank` tinyint(2) DEFAULT '0',
  `division` tinyint(2) DEFAULT '-1',
  `contracted` int(10) DEFAULT '0',
  `contractby` varchar(24) DEFAULT 'Nobody',
  `bombs` int(10) DEFAULT '0',
  `completedhits` int(10) DEFAULT '0',
  `failedhits` int(10) DEFAULT '0',
  `reports` int(10) DEFAULT '0',
  `helprequests` int(10) DEFAULT '0',
  `speedometer` tinyint(1) DEFAULT '1',
  `factionmod` tinyint(1) DEFAULT '0',
  `gangmod` tinyint(1) DEFAULT '0',
  `banappealer` tinyint(1) DEFAULT '0',
  `potplanted` tinyint(1) DEFAULT '0',
  `pottime` int(10) DEFAULT '0',
  `potgrams` int(10) DEFAULT '0',
  `pot_x` float DEFAULT '0',
  `pot_y` float DEFAULT '0',
  `pot_z` float DEFAULT '0',
  `pot_a` float DEFAULT '0',
  `inventoryupgrade` int(10) DEFAULT '0',
  `addictupgrade` int(10) DEFAULT '0',
  `traderupgrade` int(10) DEFAULT '0',
  `assetupgrade` int(10) DEFAULT '0',
  `pistolammo` smallint(5) DEFAULT '0',
  `shotgunammo` smallint(5) DEFAULT '0',
  `smgammo` smallint(5) DEFAULT '0',
  `arammo` smallint(5) DEFAULT '0',
  `rifleammo` smallint(5) DEFAULT '0',
  `hpammo` smallint(5) DEFAULT '0',
  `poisonammo` smallint(5) DEFAULT '0',
  `fmjammo` smallint(5) DEFAULT '0',
  `ammotype` tinyint(2) DEFAULT '0',
  `ammoweapon` tinyint(2) DEFAULT '0',
  `dmwarnings` tinyint(2) DEFAULT '0',
  `weaponrestricted` int(10) DEFAULT '0',
  `referral_uid` int(10) DEFAULT '0',
  `refercount` int(10) DEFAULT '0',
  `watch` tinyint(1) DEFAULT '0',
  `gps` tinyint(1) DEFAULT '0',
  `prisonedby` varchar(24) DEFAULT 'No-one',
  `prisonreason` varchar(128) DEFAULT 'None',
  `togglehud` tinyint(1) DEFAULT '1',
  `clothes` smallint(3) DEFAULT '-1',
  `showturfs` tinyint(1) DEFAULT '0',
  `showlands` tinyint(1) DEFAULT '0',
  `watchon` tinyint(1) DEFAULT '0',
  `gpson` tinyint(1) DEFAULT '0',
  `doublexp` int(10) DEFAULT '0',
  `couriercooldown` int(10) DEFAULT '0',
  `pizzacooldown` int(10) DEFAULT '0',
  `detectivecooldown` int(10) DEFAULT '0',
  `duty` int(10) DEFAULT '0',
  `bandana` int(10) NOT NULL DEFAULT '0',
  `detectiveskill` int(11) DEFAULT '0',
  `gascan` int(11) DEFAULT '0',
  `refunded` int(11) DEFAULT '0',
  `backpack` int(11) DEFAULT '0',
  `bpcash` int(11) DEFAULT '0',
  `bpmaterials` int(11) DEFAULT '0',
  `bppot` int(11) DEFAULT '0',
  `bpcrack` int(11) DEFAULT '0',
  `bpmeth` int(11) DEFAULT '0',
  `bppainkillers` int(11) DEFAULT '0',
  `bpweapon_0` int(11) DEFAULT '0',
  `bpweapon_1` int(11) DEFAULT '0',
  `bpweapon_2` int(11) DEFAULT '0',
  `bpweapon_3` int(11) DEFAULT '0',
  `bpweapon_4` int(11) DEFAULT '0',
  `bpweapon_5` int(11) DEFAULT '0',
  `bpweapon_6` int(11) DEFAULT '0',
  `bpweapon_7` int(11) DEFAULT '0',
  `bpweapon_8` int(11) DEFAULT '0',
  `bpweapon_9` int(11) DEFAULT '0',
  `bpweapon_10` int(11) DEFAULT '0',
  `bpweapon_11` int(11) DEFAULT '0',
  `bpweapon_12` int(11) DEFAULT '0',
  `bpweapon_13` int(11) DEFAULT '0',
  `bpweapon_14` int(11) DEFAULT '0',
  `bphpammo` int(11) DEFAULT '0',
  `bppoisonammo` int(11) DEFAULT '0',
  `bpfmjammo` int(11) DEFAULT '0',
  `formeradmin` int(2) NOT NULL DEFAULT '0',
  `deathcooldown` int(10) NOT NULL DEFAULT '0',
  `hunger` int(10) NOT NULL DEFAULT '100',
  `hungertimer` int(10) NOT NULL DEFAULT '0',
  `thirst` int(11) NOT NULL DEFAULT '100',
  `thirsttimer` int(11) NOT NULL DEFAULT '0',
  `totalpatients` int(10) NOT NULL DEFAULT '0',
  `totalfires` int(10) NOT NULL DEFAULT '0',
  `rarecooldown` int(10) NOT NULL DEFAULT '0',
  `customtitle` varchar(64) NOT NULL DEFAULT '0',
  `customcolor` varchar(16) NOT NULL DEFAULT '0',
  `callsign` varchar(64) NOT NULL DEFAULT '0',
  `mask` int(10) NOT NULL DEFAULT '0',
  `diamonds` int(11) NOT NULL DEFAULT '0',
  `blindfold` int(10) NOT NULL DEFAULT '0',
  `rope` int(10) NOT NULL DEFAULT '0',
  `insurance` int(10) NOT NULL DEFAULT '0',
  `passport` int(10) NOT NULL DEFAULT '0',
  `passportname` varchar(64) DEFAULT NULL,
  `passportlevel` int(10) NOT NULL DEFAULT '0',
  `passportskin` int(10) NOT NULL DEFAULT '0',
  `passportphone` int(10) NOT NULL DEFAULT '0',
  `marriedto` int(10) NOT NULL DEFAULT '-1',
  `newbies` int(10) NOT NULL DEFAULT '0',
  `chatanim` tinyint(2) NOT NULL DEFAULT '0',
  `Lottery` int(11) NOT NULL DEFAULT '0',
  `LotteryB` int(11) NOT NULL DEFAULT '0',
  `flashlight` tinyint(2) NOT NULL DEFAULT '0',
  `candy` int(11) NOT NULL DEFAULT '0',
  `investor` int(11) NOT NULL DEFAULT '0',
  `bitcoins` int(11) NOT NULL DEFAULT '0',
  `thiefskill` int(11) DEFAULT '0',
  `thiefcooldown` int(11) DEFAULT '0',
  `cocainecooldown` int(11) DEFAULT '0',
  `gunlicense` tinyint(2) NOT NULL DEFAULT '0',
  `dirtycash` int(11) NOT NULL DEFAULT '0',
  `comserv` int(11) NOT NULL DEFAULT '0',
  `fmtime` int(11) DEFAULT '0',
  `facemask` int(11) DEFAULT '0',
  `covid` int(11) DEFAULT '0',
  `covidtime` int(11) DEFAULT '0',
  `firstaid` int(11) NOT NULL DEFAULT '0',
  `groupleader` tinyint(11) NOT NULL DEFAULT '0',
  `crew` tinyint(11) NOT NULL DEFAULT '-1',
  `pgroup` tinyint(11) NOT NULL DEFAULT '0',
  `drugwater` int(10) DEFAULT '0',
  `drugpot` int(10) DEFAULT '0',
  `drugcrack` int(10) DEFAULT '0',
  `drugmuriatic` int(10) DEFAULT '0',
  `drughydrogen` int(10) DEFAULT '0',
  `drugbattery` int(10) DEFAULT '0',
  `drugacetone` int(10) DEFAULT '0',
  `drugethyl` int(10) DEFAULT '0',
  `drugsulfuric` int(10) DEFAULT '0',
  `druglithium` int(10) DEFAULT '0',
  `drugiodine` int(10) DEFAULT '0',
  `drugopium` int(10) DEFAULT '0',
  `drugamphetamine` int(10) DEFAULT '0',
  `drugbenzodioxol` int(10) DEFAULT '0',
  `gunlicensedate` int(10) DEFAULT '0',
  `task1` int(10) NOT NULL DEFAULT '0',
  `task2` int(10) NOT NULL DEFAULT '0',
  `task3` int(10) NOT NULL DEFAULT '0',
  `task4` int(10) NOT NULL DEFAULT '0',
  `task5` int(10) NOT NULL DEFAULT '0',
  `claimed1` int(10) NOT NULL DEFAULT '0',
  `claimed2` int(10) NOT NULL DEFAULT '0',
  `claimed3` int(10) NOT NULL DEFAULT '0',
  `claimed4` int(10) NOT NULL DEFAULT '0',
  `claimed5` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `ip`, `setup`, `gender`, `age`, `skin`, `BirthYear`, `BirthMonth`, `BirthDay`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `totalpatients`, `totalfires`, `rarecooldown`, `customtitle`, `customcolor`, `callsign`, `mask`, `diamonds`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `investor`, `bitcoins`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `gunlicense`, `dirtycash`, `comserv`, `fmtime`, `facemask`, `covid`, `covidtime`, `firstaid`, `groupleader`, `crew`, `pgroup`, `drugwater`, `drugpot`, `drugcrack`, `drugmuriatic`, `drughydrogen`, `drugbattery`, `drugacetone`, `drugethyl`, `drugsulfuric`, `druglithium`, `drugiodine`, `drugopium`, `drugamphetamine`, `drugbenzodioxol`, `gunlicensedate`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`) VALUES
(1, 'Isaac_Rodriguez', 'E3A0AAB780C66AA52E62028182E23CC38701555C0F75AAA72545826E9593C83E433231EE2C6DFC0BFE89EF187E91A64AA66C7442BC7EA9854E6C09B4F4757009', '2021-07-12 11:07:35', '2021-07-19 07:43:21', '49.36.233.93', 0, 1, 18, 47, 1921, 1, 1, 1528.64, -1659.79, 14.042, 1526.9, -1654.64, 13.383, 18.672, 0, 0, 53785, 2032, 0, 1, 8, 5, 8, 7, 'None', 0, 79.572, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '0', -1, -1, 0, 0, 0, 0, 8, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1626685677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 160, 35, 100, 0, 0, 0, '0', '0', '0', 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, -1, 0, 4, 0, 0, 0, 0, 0, 5, 0, 0, 11, 0, 50, 0, 16, 235037473, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Kaushal_Stokes', '51086CD7F083DBE3213980948D430CB151225D77581762FC591271497DB53FD7957FBC4DAAAC65B09CA8BC048BCACFAF8A33C1B41E008378CC5E51DE926FC84F', '2021-07-12 17:06:04', '2021-07-14 19:19:52', '49.34.118.11', 0, 1, 18, 29, 2000, 7, 5, 1967.25, 1009.16, 994.697, 1964.8, 1009.52, 992.469, 81.772, 10, 0, 16985, 2000, 0, 1, 1, 19, 1, 7, 'None', 0, 94.72, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '2', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1634743214, 0, 0, 0, 24, 0, 32, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 94, 0, 128, 0, 0, 0, 0, 200, 0, 0, 0, 3, -1, 5, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 147, 98, 87, 0, 0, 0, '0', '0', '0', 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 50, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1628873806, 1, 0, 0, 0, 0, -1, 0, 100, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 235037480, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Rose_Oberoii', '1F451558098C8B9C6CD673534B8404A67BF50FD0259F76BAD993EF3C78EF317312B09CDCA8A38048D398FAB82F90FEFC228B1C1C4959623DFE2F39E446CBE849', '2021-07-15 19:22:50', '2021-07-15 19:22:50', '45.121.30.136', 0, 2, 18, 169, 1998, 9, 22, 508.941, -1273.65, 17.608, 495.454, -1284.93, 15.191, 173.793, 0, 0, 63000, 2000, 0, 1, 0, 13, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1626974639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, -1, 5, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 69, 94, 69, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Elton_Davids', '2EDAC476DBB081C3DDA3DF4CEB305D7D17950CC5C3E26326C1F937570C41CDBF73233C7273CA499C97741E8A3A0DE3986BBE83486FB1BBBC5C0C7A8D1B84E903', '2021-07-17 08:49:54', '2021-07-17 09:39:21', '84.17.50.207', 0, 1, 18, 292, 1990, 1, 8, -1522.35, -1276.03, 89.87, -1524.9, -1274.27, 87.643, 56.061, 0, 0, 63000, 2000, 0, 1, 0, 7, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '9', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1627109511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 90, 98, 30, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `modelid` smallint(3) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `tickets` int(10) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `dlock` tinyint(1) DEFAULT '0',
  `dlocked` tinyint(1) DEFAULT '0',
  `plate` varchar(32) DEFAULT 'None',
  `fuel` tinyint(3) DEFAULT '100',
  `health` float DEFAULT '1000',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `color1` smallint(3) DEFAULT '0',
  `color2` smallint(3) DEFAULT '0',
  `paintjob` smallint(3) DEFAULT '-1',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `neon` smallint(5) DEFAULT '0',
  `neonenabled` tinyint(1) DEFAULT '0',
  `trunk` tinyint(1) DEFAULT '0',
  `mod_1` smallint(4) DEFAULT '0',
  `mod_2` smallint(4) DEFAULT '0',
  `mod_3` smallint(4) DEFAULT '0',
  `mod_4` smallint(4) DEFAULT '0',
  `mod_5` smallint(4) DEFAULT '0',
  `mod_6` smallint(4) DEFAULT '0',
  `mod_7` smallint(4) DEFAULT '0',
  `mod_8` smallint(4) DEFAULT '0',
  `mod_9` smallint(4) DEFAULT '0',
  `mod_10` smallint(4) DEFAULT '0',
  `mod_11` smallint(4) DEFAULT '0',
  `mod_12` smallint(4) DEFAULT '0',
  `mod_13` smallint(4) DEFAULT '0',
  `mod_14` smallint(4) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `pot` int(10) DEFAULT '0',
  `crack` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `weapon_1` tinyint(2) DEFAULT '0',
  `weapon_2` tinyint(2) DEFAULT '0',
  `weapon_3` tinyint(2) DEFAULT '0',
  `ammo_1` smallint(5) DEFAULT '0',
  `ammo_2` smallint(5) DEFAULT '0',
  `ammo_3` smallint(5) DEFAULT '0',
  `gangid` tinyint(2) DEFAULT '-1',
  `factiontype` tinyint(2) DEFAULT '0',
  `vippackage` tinyint(2) NOT NULL DEFAULT '0',
  `job` tinyint(2) DEFAULT '-1',
  `respawndelay` int(10) DEFAULT '0',
  `pistolammo` smallint(5) DEFAULT '0',
  `shotgunammo` smallint(5) DEFAULT '0',
  `smgammo` smallint(5) DEFAULT '0',
  `arammo` smallint(5) DEFAULT '0',
  `rifleammo` smallint(5) DEFAULT '0',
  `hpammo` smallint(5) DEFAULT '0',
  `poisonammo` smallint(5) DEFAULT '0',
  `fmjammo` smallint(5) DEFAULT '0',
  `registered` int(11) NOT NULL DEFAULT '0',
  `siren` tinyint(2) DEFAULT '0',
  `rank` tinyint(3) DEFAULT '0',
  `alarm` int(11) NOT NULL DEFAULT '0',
  `impounded` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `ownerid`, `owner`, `modelid`, `price`, `tickets`, `locked`, `dlock`, `dlocked`, `plate`, `fuel`, `health`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `color1`, `color2`, `paintjob`, `interior`, `world`, `neon`, `neonenabled`, `trunk`, `mod_1`, `mod_2`, `mod_3`, `mod_4`, `mod_5`, `mod_6`, `mod_7`, `mod_8`, `mod_9`, `mod_10`, `mod_11`, `mod_12`, `mod_13`, `mod_14`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `weapon_1`, `weapon_2`, `weapon_3`, `ammo_1`, `ammo_2`, `ammo_3`, `gangid`, `factiontype`, `vippackage`, `job`, `respawndelay`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `registered`, `siren`, `rank`, `alarm`, `impounded`) VALUES
(1, 1, 'Isaac_Rodriguez', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1814.04, -1369.78, 15.078, 270.28, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 'Kaushal_Stokes', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1814.04, -1369.78, 15.078, 270.28, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, 'Rose_Oberoii', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1814.04, -1369.78, 15.078, 270.28, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 'Elton_Davids', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1814.04, -1369.78, 15.078, 270.28, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendorID` int(12) NOT NULL,
  `vendorModel` int(12) DEFAULT '980',
  `vendorPosX` float DEFAULT '0',
  `vendorPosY` float DEFAULT '0',
  `vendorPosZ` float DEFAULT '0',
  `vendorInterior` int(12) DEFAULT '0',
  `vendorWorld` int(12) DEFAULT '0',
  `vendorAngle` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `uid` int(10) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `ammo` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weaponsettings`
--

CREATE TABLE `weaponsettings` (
  `Name` varchar(24) NOT NULL,
  `WeaponID` tinyint(4) NOT NULL,
  `PosX` float DEFAULT '-0.116',
  `PosY` float DEFAULT '0.189',
  `PosZ` float DEFAULT '0.088',
  `RotX` float DEFAULT '0',
  `RotY` float DEFAULT '44.5',
  `RotZ` float DEFAULT '0',
  `Bone` tinyint(4) NOT NULL DEFAULT '1',
  `Hidden` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anticheat_settings`
--
ALTER TABLE `anticheat_settings`
  ADD UNIQUE KEY `ac_code` (`ac_code`);

--
-- Indexes for table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auctions`
--
ALTER TABLE `auctions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billboards`
--
ALTER TABLE `billboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
  ADD UNIQUE KEY `slot` (`slot`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crates`
--
ALTER TABLE `crates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD UNIQUE KEY `id` (`id`,`divisionid`);

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factionpay`
--
ALTER TABLE `factionpay`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factionranks`
--
ALTER TABLE `factionranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `factionskins`
--
ALTER TABLE `factionskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangranks`
--
ALTER TABLE `gangranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `gangs`
--
ALTER TABLE `gangs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `gangskins`
--
ALTER TABLE `gangskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- Indexes for table `graffities`
--
ALTER TABLE `graffities`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kills`
--
ALTER TABLE `kills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landobjects`
--
ALTER TABLE `landobjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_admin`
--
ALTER TABLE `log_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_bans`
--
ALTER TABLE `log_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_cheat`
--
ALTER TABLE `log_cheat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_contracts`
--
ALTER TABLE `log_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_faction`
--
ALTER TABLE `log_faction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_gang`
--
ALTER TABLE `log_gang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_give`
--
ALTER TABLE `log_give`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_property`
--
ALTER TABLE `log_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_punishments`
--
ALTER TABLE `log_punishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_referrals`
--
ALTER TABLE `log_referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_vip`
--
ALTER TABLE `log_vip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`mobjID`);

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `shots`
--
ALTER TABLE `shots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorID`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD UNIQUE KEY `uid` (`uid`,`slot`);

--
-- Indexes for table `weaponsettings`
--
ALTER TABLE `weaponsettings`
  ADD PRIMARY KEY (`WeaponID`),
  ADD UNIQUE KEY `weapon` (`Name`,`WeaponID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auctions`
--
ALTER TABLE `auctions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billboards`
--
ALTER TABLE `billboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clothing`
--
ALTER TABLE `clothing`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crates`
--
ALTER TABLE `crates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrances`
--
ALTER TABLE `entrances`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kills`
--
ALTER TABLE `kills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `landobjects`
--
ALTER TABLE `landobjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lands`
--
ALTER TABLE `lands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_admin`
--
ALTER TABLE `log_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_bans`
--
ALTER TABLE `log_bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_cheat`
--
ALTER TABLE `log_cheat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_contracts`
--
ALTER TABLE `log_contracts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_faction`
--
ALTER TABLE `log_faction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_gang`
--
ALTER TABLE `log_gang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_give`
--
ALTER TABLE `log_give`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_property`
--
ALTER TABLE `log_property`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_punishments`
--
ALTER TABLE `log_punishments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_referrals`
--
ALTER TABLE `log_referrals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_vip`
--
ALTER TABLE `log_vip`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `object`
--
ALTER TABLE `object`
  MODIFY `mobjID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shots`
--
ALTER TABLE `shots`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weaponsettings`
--
ALTER TABLE `weaponsettings`
  MODIFY `WeaponID` tinyint(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
