-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 05:36 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `dt` varchar(90) NOT NULL,
  `appname` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `username`, `dt`, `appname`) VALUES
(1, 'gopi', '20220223_205529', ''),
(2, 'gopi', '20220223_205529', 'Image Name                     PID Session Name        Session#    Mem Usage'),
(3, 'gopi', '20220223_205529', '========================= ======== ================ =========== ============'),
(4, 'gopi', '20220223_205529', 'System Idle Process              0 Services                   0          4 K'),
(5, 'gopi', '20220223_205529', 'System                           4 Services                   0      1,156 K'),
(6, 'gopi', '20220223_205529', 'smss.exe                       316 Services                   0        372 K'),
(7, 'gopi', '20220223_205529', 'csrss.exe                      448 Services                   0      1,584 K'),
(8, 'gopi', '20220223_205529', 'wininit.exe                    504 Services                   0      2,156 K'),
(9, 'gopi', '20220223_205529', 'services.exe                   600 Services                   0      3,640 K'),
(10, 'gopi', '20220223_205529', 'lsass.exe                      616 Services                   0      6,552 K'),
(11, 'gopi', '20220223_205529', 'svchost.exe                    688 Services                   0      6,992 K'),
(12, 'gopi', '20220223_205529', 'svchost.exe                    732 Services                   0      5,336 K'),
(13, 'gopi', '20220223_205529', 'svchost.exe                    864 Services                   0     14,576 K'),
(14, 'gopi', '20220223_205529', 'svchost.exe                    932 Services                   0     35,960 K'),
(15, 'gopi', '20220223_205529', 'svchost.exe                    960 Services                   0     10,936 K'),
(16, 'gopi', '20220223_205529', 'igfxCUIService.exe            1020 Services                   0      2,744 K'),
(17, 'gopi', '20220223_205529', 'svchost.exe                    296 Services                   0     78,512 K'),
(18, 'gopi', '20220223_205529', 'svchost.exe                    700 Services                   0     12,964 K'),
(19, 'gopi', '20220223_205529', 'wlanext.exe                   1028 Services                   0      1,764 K'),
(20, 'gopi', '20220223_205529', 'conhost.exe                   1048 Services                   0         84 K'),
(21, 'gopi', '20220223_205529', 'spoolsv.exe                   1116 Services                   0      4,088 K'),
(22, 'gopi', '20220223_205529', 'svchost.exe                   1176 Services                   0     15,652 K'),
(23, 'gopi', '20220223_205529', 'svchost.exe                   1324 Services                   0      2,408 K'),
(24, 'gopi', '20220223_205529', 'Locator.exe                   1380 Services                   0         36 K'),
(25, 'gopi', '20220223_205529', 'svchost.exe                   1400 Services                   0      2,540 K'),
(26, 'gopi', '20220223_205529', 'TeamViewer_Service.exe        1468 Services                   0      5,168 K'),
(27, 'gopi', '20220223_205529', 'MsMpEng.exe                   1616 Services                   0    313,416 K'),
(28, 'gopi', '20220223_205529', 'WmiApSrv.exe                  1640 Services                   0        852 K'),
(29, 'gopi', '20220223_205529', 'PresentationFontCache.exe     2112 Services                   0      2,096 K'),
(30, 'gopi', '20220223_205529', 'svchost.exe                   2932 Services                   0      5,144 K'),
(31, 'gopi', '20220223_205529', 'SearchIndexer.exe             3004 Services                   0     46,712 K'),
(32, 'gopi', '20220223_205529', 'NisSrv.exe                    3040 Services                   0      8,784 K'),
(33, 'gopi', '20220223_205529', 'GoogleCrashHandler.exe        3516 Services                   0         52 K'),
(34, 'gopi', '20220223_205529', 'GoogleCrashHandler64.exe      3668 Services                   0         48 K'),
(35, 'gopi', '20220223_205529', 'MpCmdRun.exe                  1512 Services                   0      7,868 K'),
(36, 'gopi', '20220223_205529', 'csrss.exe                     2356 Console                    5     30,548 K'),
(37, 'gopi', '20220223_205529', 'winlogon.exe                  2316 Console                    5      4,476 K'),
(38, 'gopi', '20220223_205529', 'dwm.exe                       4920 Console                    5     24,932 K'),
(39, 'gopi', '20220223_205529', 'taskhostex.exe                5672 Console                    5     11,204 K'),
(40, 'gopi', '20220223_205529', 'explorer.exe                  5480 Console                    5     90,168 K'),
(41, 'gopi', '20220223_205529', 'igfxEM.exe                    4004 Console                    5     14,120 K'),
(42, 'gopi', '20220223_205529', 'igfxHK.exe                    6036 Console                    5     10,512 K'),
(43, 'gopi', '20220223_205529', 'igfxTray.exe                  3276 Console                    5     13,712 K'),
(44, 'gopi', '20220223_205529', 'jusched.exe                   3080 Console                    5      5,380 K'),
(45, 'gopi', '20220223_205529', 'netbeans64.exe                2572 Console                    5    867,432 K'),
(46, 'gopi', '20220223_205529', 'chrome.exe                    3300 Console                    5    183,900 K'),
(47, 'gopi', '20220223_205529', 'chrome.exe                    3876 Console                    5      5,420 K'),
(48, 'gopi', '20220223_205529', 'chrome.exe                     696 Console                    5     89,020 K'),
(49, 'gopi', '20220223_205529', 'chrome.exe                    3504 Console                    5     47,968 K'),
(50, 'gopi', '20220223_205529', 'chrome.exe                    3716 Console                    5     14,680 K'),
(51, 'gopi', '20220223_205529', 'RuntimeBroker.exe             4124 Console                    5      9,844 K'),
(52, 'gopi', '20220223_205529', 'chrome.exe                    2372 Console                    5    114,652 K'),
(53, 'gopi', '20220223_205529', 'MobiSystemsUpdate.exe         7360 Console                    5     83,356 K'),
(54, 'gopi', '20220223_205529', 'taskhost.exe                  7048 Console                    5      9,060 K'),
(55, 'gopi', '20220223_205529', 'xampp-control.exe             3096 Console                    5     17,580 K'),
(56, 'gopi', '20220223_205529', 'httpd.exe                     7688 Console                    5     17,548 K'),
(57, 'gopi', '20220223_205529', 'conhost.exe                   6576 Console                    5      4,160 K'),
(58, 'gopi', '20220223_205529', 'mysqld.exe                    3544 Console                    5     48,572 K'),
(59, 'gopi', '20220223_205529', 'httpd.exe                     7384 Console                    5     76,492 K'),
(60, 'gopi', '20220223_205529', 'chrome.exe                    1292 Console                    5     85,952 K'),
(61, 'gopi', '20220223_205529', 'java.exe                       608 Console                    5     52,688 K'),
(62, 'gopi', '20220223_205529', 'conhost.exe                   5444 Console                    5      3,624 K'),
(63, 'gopi', '20220223_205529', 'java.exe                      3368 Console                    5    428,024 K'),
(64, 'gopi', '20220223_205529', 'conhost.exe                   4724 Console                    5      3,592 K'),
(65, 'gopi', '20220223_205529', 'chrome.exe                    8152 Console                    5     13,092 K'),
(66, 'gopi', '20220223_205529', 'chrome.exe                    7268 Console                    5     37,500 K'),
(67, 'gopi', '20220223_205529', 'chrome.exe                    5948 Console                    5     92,588 K'),
(68, 'gopi', '20220223_205529', 'chrome.exe                    4812 Console                    5     72,812 K'),
(69, 'gopi', '20220223_205529', 'chrome.exe                    2080 Console                    5     76,992 K'),
(70, 'gopi', '20220223_205529', 'chrome.exe                    3084 Console                    5     72,944 K'),
(71, 'gopi', '20220223_205529', 'chrome.exe                    8084 Console                    5     34,836 K'),
(72, 'gopi', '20220223_205529', 'chrome.exe                    5976 Console                    5     31,696 K'),
(73, 'gopi', '20220223_205529', 'chrome.exe                    6700 Console                    5     40,540 K'),
(74, 'gopi', '20220223_205529', 'chrome.exe                    5364 Console                    5     33,952 K'),
(75, 'gopi', '20220223_205529', 'chrome.exe                    4628 Console                    5     34,436 K'),
(76, 'gopi', '20220223_205529', 'chrome.exe                    5940 Console                    5     35,368 K'),
(77, 'gopi', '20220223_205529', 'chrome.exe                    6588 Console                    5     36,980 K'),
(78, 'gopi', '20220223_205529', 'chrome.exe                    1444 Console                    5     32,084 K'),
(79, 'gopi', '20220223_205529', 'chrome.exe                    7380 Console                    5     43,204 K'),
(80, 'gopi', '20220223_205529', 'chrome.exe                    7520 Console                    5     32,504 K'),
(81, 'gopi', '20220223_205529', 'chrome.exe                    7212 Console                    5     32,176 K'),
(82, 'gopi', '20220223_205529', 'chrome.exe                    4864 Console                    5     31,964 K'),
(83, 'gopi', '20220223_205529', 'chrome.exe                    4316 Console                    5     30,572 K'),
(84, 'gopi', '20220223_205529', 'chrome.exe                    7344 Console                    5     30,864 K'),
(85, 'gopi', '20220223_205529', 'chrome.exe                    6332 Console                    5     32,316 K'),
(86, 'gopi', '20220223_205529', 'SearchProtocolHost.exe        5036 Services                   0      8,892 K'),
(87, 'gopi', '20220223_205529', 'SearchFilterHost.exe          4688 Services                   0      6,896 K'),
(88, 'gopi', '20220223_205529', 'tasklist.exe                  6436 Console                    5      6,236 K'),
(89, 'gopi', '20220223_205529', 'conhost.exe                   5008 Console                    5      3,536 K'),
(90, 'gopi', '20220223_205529', 'WmiPrvSE.exe                  2352 Services                   0      6,904 K'),
(91, 'gopi', '20220223_210121', ''),
(92, 'gopi', '20220223_210121', 'Image Name                     PID Session Name        Session#    Mem Usage'),
(93, 'gopi', '20220223_210121', '========================= ======== ================ =========== ============'),
(94, 'gopi', '20220223_210121', 'System Idle Process              0 Services                   0          4 K'),
(95, 'gopi', '20220223_210121', 'System                           4 Services                   0      1,364 K'),
(96, 'gopi', '20220223_210121', 'smss.exe                       316 Services                   0        368 K'),
(97, 'gopi', '20220223_210121', 'csrss.exe                      448 Services                   0      1,348 K'),
(98, 'gopi', '20220223_210121', 'wininit.exe                    504 Services                   0      1,992 K'),
(99, 'gopi', '20220223_210121', 'services.exe                   600 Services                   0      3,568 K'),
(100, 'gopi', '20220223_210121', 'lsass.exe                      616 Services                   0      6,324 K'),
(101, 'gopi', '20220223_210121', 'svchost.exe                    688 Services                   0      6,592 K'),
(102, 'gopi', '20220223_210121', 'svchost.exe                    732 Services                   0      5,312 K'),
(103, 'gopi', '20220223_210121', 'svchost.exe                    864 Services                   0     13,760 K'),
(104, 'gopi', '20220223_210121', 'svchost.exe                    932 Services                   0     30,152 K'),
(105, 'gopi', '20220223_210121', 'svchost.exe                    960 Services                   0     10,596 K'),
(106, 'gopi', '20220223_210121', 'igfxCUIService.exe            1020 Services                   0      2,564 K'),
(107, 'gopi', '20220223_210121', 'svchost.exe                    296 Services                   0     72,504 K'),
(108, 'gopi', '20220223_210121', 'svchost.exe                    700 Services                   0     12,580 K'),
(109, 'gopi', '20220223_210121', 'wlanext.exe                   1028 Services                   0      1,828 K'),
(110, 'gopi', '20220223_210121', 'conhost.exe                   1048 Services                   0         84 K'),
(111, 'gopi', '20220223_210121', 'spoolsv.exe                   1116 Services                   0      3,684 K'),
(112, 'gopi', '20220223_210121', 'svchost.exe                   1176 Services                   0     16,464 K'),
(113, 'gopi', '20220223_210121', 'svchost.exe                   1324 Services                   0      2,280 K'),
(114, 'gopi', '20220223_210121', 'Locator.exe                   1380 Services                   0         16 K'),
(115, 'gopi', '20220223_210121', 'svchost.exe                   1400 Services                   0      2,496 K'),
(116, 'gopi', '20220223_210121', 'TeamViewer_Service.exe        1468 Services                   0      4,916 K'),
(117, 'gopi', '20220223_210121', 'MsMpEng.exe                   1616 Services                   0    246,304 K'),
(118, 'gopi', '20220223_210121', 'WmiApSrv.exe                  1640 Services                   0        824 K'),
(119, 'gopi', '20220223_210121', 'PresentationFontCache.exe     2112 Services                   0      1,648 K'),
(120, 'gopi', '20220223_210121', 'svchost.exe                   2932 Services                   0      5,096 K'),
(121, 'gopi', '20220223_210121', 'SearchIndexer.exe             3004 Services                   0     45,520 K'),
(122, 'gopi', '20220223_210121', 'NisSrv.exe                    3040 Services                   0      8,848 K'),
(123, 'gopi', '20220223_210121', 'GoogleCrashHandler.exe        3516 Services                   0         48 K'),
(124, 'gopi', '20220223_210121', 'GoogleCrashHandler64.exe      3668 Services                   0         40 K'),
(125, 'gopi', '20220223_210121', 'MpCmdRun.exe                  1512 Services                   0      7,836 K'),
(126, 'gopi', '20220223_210121', 'csrss.exe                     2356 Console                    5     30,300 K'),
(127, 'gopi', '20220223_210121', 'winlogon.exe                  2316 Console                    5      4,428 K'),
(128, 'gopi', '20220223_210121', 'dwm.exe                       4920 Console                    5     23,304 K'),
(129, 'gopi', '20220223_210121', 'taskhostex.exe                5672 Console                    5     10,584 K'),
(130, 'gopi', '20220223_210121', 'explorer.exe                  5480 Console                    5     87,152 K'),
(131, 'gopi', '20220223_210121', 'igfxEM.exe                    4004 Console                    5      8,224 K'),
(132, 'gopi', '20220223_210121', 'igfxHK.exe                    6036 Console                    5      6,428 K'),
(133, 'gopi', '20220223_210121', 'igfxTray.exe                  3276 Console                    5      7,940 K'),
(134, 'gopi', '20220223_210121', 'jusched.exe                   3080 Console                    5      4,476 K'),
(135, 'gopi', '20220223_210121', 'netbeans64.exe                2572 Console                    5    863,488 K'),
(136, 'gopi', '20220223_210121', 'chrome.exe                    3300 Console                    5    182,688 K'),
(137, 'gopi', '20220223_210121', 'chrome.exe                    3876 Console                    5      4,852 K'),
(138, 'gopi', '20220223_210121', 'chrome.exe                     696 Console                    5    100,484 K'),
(139, 'gopi', '20220223_210121', 'chrome.exe                    3504 Console                    5     44,752 K'),
(140, 'gopi', '20220223_210121', 'chrome.exe                    3716 Console                    5     13,564 K'),
(141, 'gopi', '20220223_210121', 'RuntimeBroker.exe             4124 Console                    5      8,644 K'),
(142, 'gopi', '20220223_210121', 'chrome.exe                    2372 Console                    5     90,452 K'),
(143, 'gopi', '20220223_210121', 'MobiSystemsUpdate.exe         7360 Console                    5     49,172 K'),
(144, 'gopi', '20220223_210121', 'taskhost.exe                  7048 Console                    5      9,060 K'),
(145, 'gopi', '20220223_210121', 'xampp-control.exe             3096 Console                    5     17,576 K'),
(146, 'gopi', '20220223_210121', 'httpd.exe                     7688 Console                    5     17,548 K'),
(147, 'gopi', '20220223_210121', 'conhost.exe                   6576 Console                    5      4,160 K'),
(148, 'gopi', '20220223_210121', 'mysqld.exe                    3544 Console                    5     48,688 K'),
(149, 'gopi', '20220223_210121', 'httpd.exe                     7384 Console                    5     77,300 K'),
(150, 'gopi', '20220223_210121', 'chrome.exe                    1292 Console                    5     92,232 K'),
(151, 'gopi', '20220223_210121', 'java.exe                       608 Console                    5     52,688 K'),
(152, 'gopi', '20220223_210121', 'conhost.exe                   5444 Console                    5      3,624 K'),
(153, 'gopi', '20220223_210121', 'java.exe                      3368 Console                    5    426,996 K'),
(154, 'gopi', '20220223_210121', 'conhost.exe                   4724 Console                    5      3,592 K'),
(155, 'gopi', '20220223_210121', 'chrome.exe                    8152 Console                    5     13,076 K'),
(156, 'gopi', '20220223_210121', 'chrome.exe                    7268 Console                    5     37,596 K'),
(157, 'gopi', '20220223_210121', 'chrome.exe                    5948 Console                    5     91,512 K'),
(158, 'gopi', '20220223_210121', 'chrome.exe                    4812 Console                    5     72,860 K'),
(159, 'gopi', '20220223_210121', 'chrome.exe                    2080 Console                    5     80,768 K'),
(160, 'gopi', '20220223_210121', 'chrome.exe                    3084 Console                    5     89,588 K'),
(161, 'gopi', '20220223_210121', 'chrome.exe                    3788 Console                    5     34,988 K'),
(162, 'gopi', '20220223_210121', 'chrome.exe                    7960 Console                    5     31,680 K'),
(163, 'gopi', '20220223_210121', 'chrome.exe                    1944 Console                    5     40,592 K'),
(164, 'gopi', '20220223_210121', 'chrome.exe                    7580 Console                    5     32,120 K'),
(165, 'gopi', '20220223_210121', 'chrome.exe                    4904 Console                    5     35,596 K'),
(166, 'gopi', '20220223_210121', 'chrome.exe                    5488 Console                    5     43,192 K'),
(167, 'gopi', '20220223_210121', 'chrome.exe                    7020 Console                    5     32,876 K'),
(168, 'gopi', '20220223_210121', 'chrome.exe                    7192 Console                    5     34,060 K'),
(169, 'gopi', '20220223_210121', 'chrome.exe                    7228 Console                    5     34,404 K'),
(170, 'gopi', '20220223_210121', 'chrome.exe                    4860 Console                    5     36,936 K'),
(171, 'gopi', '20220223_210121', 'chrome.exe                     808 Console                    5     33,472 K'),
(172, 'gopi', '20220223_210121', 'chrome.exe                    6340 Console                    5     38,224 K'),
(173, 'gopi', '20220223_210121', 'chrome.exe                    5944 Console                    5     37,684 K'),
(174, 'gopi', '20220223_210121', 'chrome.exe                    4748 Console                    5     30,600 K'),
(175, 'gopi', '20220223_210121', 'chrome.exe                    3952 Console                    5     32,188 K'),
(176, 'gopi', '20220223_210121', 'chrome.exe                    6556 Console                    5     36,668 K'),
(177, 'gopi', '20220223_210121', 'SearchProtocolHost.exe        3528 Services                   0      8,220 K'),
(178, 'gopi', '20220223_210121', 'tasklist.exe                  2888 Console                    5      6,256 K'),
(179, 'gopi', '20220223_210121', 'SearchFilterHost.exe          7128 Services                   0      5,628 K'),
(180, 'gopi', '20220223_210121', 'conhost.exe                   5228 Console                    5      3,528 K'),
(181, 'gopi', '20220223_210121', 'WmiPrvSE.exe                  6808 Services                   0      6,904 K'),
(182, 'gopi', '20220223_210219', ''),
(183, 'gopi', '20220223_210219', 'Image Name                     PID Session Name        Session#    Mem Usage'),
(184, 'gopi', '20220223_210219', '========================= ======== ================ =========== ============'),
(185, 'gopi', '20220223_210219', 'System Idle Process              0 Services                   0          4 K'),
(186, 'gopi', '20220223_210219', 'System                           4 Services                   0      1,264 K'),
(187, 'gopi', '20220223_210219', 'smss.exe                       316 Services                   0        368 K'),
(188, 'gopi', '20220223_210219', 'csrss.exe                      448 Services                   0      1,348 K'),
(189, 'gopi', '20220223_210219', 'wininit.exe                    504 Services                   0      1,992 K'),
(190, 'gopi', '20220223_210219', 'services.exe                   600 Services                   0      3,564 K'),
(191, 'gopi', '20220223_210219', 'lsass.exe                      616 Services                   0      6,324 K'),
(192, 'gopi', '20220223_210219', 'svchost.exe                    688 Services                   0      6,608 K'),
(193, 'gopi', '20220223_210219', 'svchost.exe                    732 Services                   0      5,028 K'),
(194, 'gopi', '20220223_210219', 'svchost.exe                    864 Services                   0     13,760 K'),
(195, 'gopi', '20220223_210219', 'svchost.exe                    932 Services                   0     30,444 K'),
(196, 'gopi', '20220223_210219', 'svchost.exe                    960 Services                   0     10,740 K'),
(197, 'gopi', '20220223_210219', 'igfxCUIService.exe            1020 Services                   0      2,564 K'),
(198, 'gopi', '20220223_210219', 'svchost.exe                    296 Services                   0     73,124 K'),
(199, 'gopi', '20220223_210219', 'svchost.exe                    700 Services                   0     12,656 K'),
(200, 'gopi', '20220223_210219', 'wlanext.exe                   1028 Services                   0      1,828 K'),
(201, 'gopi', '20220223_210219', 'conhost.exe                   1048 Services                   0         84 K'),
(202, 'gopi', '20220223_210219', 'spoolsv.exe                   1116 Services                   0      3,684 K'),
(203, 'gopi', '20220223_210219', 'svchost.exe                   1176 Services                   0     15,424 K'),
(204, 'gopi', '20220223_210219', 'svchost.exe                   1324 Services                   0      2,280 K'),
(205, 'gopi', '20220223_210219', 'Locator.exe                   1380 Services                   0         16 K'),
(206, 'gopi', '20220223_210219', 'svchost.exe                   1400 Services                   0      2,496 K'),
(207, 'gopi', '20220223_210219', 'TeamViewer_Service.exe        1468 Services                   0      4,916 K'),
(208, 'gopi', '20220223_210219', 'MsMpEng.exe                   1616 Services                   0    252,776 K'),
(209, 'gopi', '20220223_210219', 'WmiApSrv.exe                  1640 Services                   0        824 K'),
(210, 'gopi', '20220223_210219', 'PresentationFontCache.exe     2112 Services                   0      1,648 K'),
(211, 'gopi', '20220223_210219', 'svchost.exe                   2932 Services                   0      5,096 K'),
(212, 'gopi', '20220223_210219', 'SearchIndexer.exe             3004 Services                   0     45,736 K'),
(213, 'gopi', '20220223_210219', 'NisSrv.exe                    3040 Services                   0      8,868 K'),
(214, 'gopi', '20220223_210219', 'GoogleCrashHandler.exe        3516 Services                   0         48 K'),
(215, 'gopi', '20220223_210219', 'GoogleCrashHandler64.exe      3668 Services                   0         40 K'),
(216, 'gopi', '20220223_210219', 'MpCmdRun.exe                  1512 Services                   0      7,836 K'),
(217, 'gopi', '20220223_210219', 'csrss.exe                     2356 Console                    5     30,300 K'),
(218, 'gopi', '20220223_210219', 'winlogon.exe                  2316 Console                    5      4,428 K'),
(219, 'gopi', '20220223_210219', 'dwm.exe                       4920 Console                    5     22,828 K'),
(220, 'gopi', '20220223_210219', 'taskhostex.exe                5672 Console                    5     10,588 K'),
(221, 'gopi', '20220223_210219', 'explorer.exe                  5480 Console                    5     90,012 K'),
(222, 'gopi', '20220223_210219', 'igfxEM.exe                    4004 Console                    5      8,224 K'),
(223, 'gopi', '20220223_210219', 'igfxHK.exe                    6036 Console                    5      6,428 K'),
(224, 'gopi', '20220223_210219', 'igfxTray.exe                  3276 Console                    5      7,940 K'),
(225, 'gopi', '20220223_210219', 'jusched.exe                   3080 Console                    5      4,476 K'),
(226, 'gopi', '20220223_210219', 'netbeans64.exe                2572 Console                    5    864,332 K'),
(227, 'gopi', '20220223_210219', 'chrome.exe                    3300 Console                    5    181,712 K'),
(228, 'gopi', '20220223_210219', 'chrome.exe                    3876 Console                    5      4,852 K'),
(229, 'gopi', '20220223_210219', 'chrome.exe                     696 Console                    5     93,112 K'),
(230, 'gopi', '20220223_210219', 'chrome.exe                    3504 Console                    5     44,828 K'),
(231, 'gopi', '20220223_210219', 'chrome.exe                    3716 Console                    5     13,548 K'),
(232, 'gopi', '20220223_210219', 'RuntimeBroker.exe             4124 Console                    5      8,644 K'),
(233, 'gopi', '20220223_210219', 'chrome.exe                    2372 Console                    5     90,548 K'),
(234, 'gopi', '20220223_210219', 'MobiSystemsUpdate.exe         7360 Console                    5     49,172 K'),
(235, 'gopi', '20220223_210219', 'taskhost.exe                  7048 Console                    5      9,060 K'),
(236, 'gopi', '20220223_210219', 'xampp-control.exe             3096 Console                    5     17,584 K'),
(237, 'gopi', '20220223_210219', 'httpd.exe                     7688 Console                    5     17,548 K'),
(238, 'gopi', '20220223_210219', 'conhost.exe                   6576 Console                    5      4,160 K'),
(239, 'gopi', '20220223_210219', 'mysqld.exe                    3544 Console                    5     48,836 K'),
(240, 'gopi', '20220223_210219', 'httpd.exe                     7384 Console                    5     77,300 K'),
(241, 'gopi', '20220223_210219', 'chrome.exe                    1292 Console                    5     91,576 K'),
(242, 'gopi', '20220223_210219', 'java.exe                       608 Console                    5     52,688 K'),
(243, 'gopi', '20220223_210219', 'conhost.exe                   5444 Console                    5      3,624 K'),
(244, 'gopi', '20220223_210219', 'java.exe                      3368 Console                    5    416,136 K'),
(245, 'gopi', '20220223_210219', 'conhost.exe                   4724 Console                    5      3,592 K'),
(246, 'gopi', '20220223_210219', 'chrome.exe                    8152 Console                    5     13,076 K'),
(247, 'gopi', '20220223_210219', 'chrome.exe                    7268 Console                    5     43,584 K'),
(248, 'gopi', '20220223_210219', 'chrome.exe                    5948 Console                    5     91,512 K'),
(249, 'gopi', '20220223_210219', 'chrome.exe                    4812 Console                    5     72,860 K'),
(250, 'gopi', '20220223_210219', 'chrome.exe                    2080 Console                    5     83,172 K'),
(251, 'gopi', '20220223_210219', 'chrome.exe                    3084 Console                    5     82,056 K'),
(252, 'gopi', '20220223_210219', 'chrome.exe                    3788 Console                    5     36,252 K'),
(253, 'gopi', '20220223_210219', 'chrome.exe                    7960 Console                    5     31,884 K'),
(254, 'gopi', '20220223_210219', 'chrome.exe                    1944 Console                    5     43,992 K'),
(255, 'gopi', '20220223_210219', 'chrome.exe                    7580 Console                    5     32,296 K'),
(256, 'gopi', '20220223_210219', 'chrome.exe                    4904 Console                    5     36,584 K'),
(257, 'gopi', '20220223_210219', 'chrome.exe                    5488 Console                    5     43,312 K'),
(258, 'gopi', '20220223_210219', 'chrome.exe                    7020 Console                    5     33,056 K'),
(259, 'gopi', '20220223_210219', 'chrome.exe                    7192 Console                    5     34,188 K'),
(260, 'gopi', '20220223_210219', 'chrome.exe                    7228 Console                    5     34,584 K'),
(261, 'gopi', '20220223_210219', 'chrome.exe                    4860 Console                    5     37,064 K'),
(262, 'gopi', '20220223_210219', 'chrome.exe                     808 Console                    5     33,724 K'),
(263, 'gopi', '20220223_210219', 'chrome.exe                    6340 Console                    5     38,296 K'),
(264, 'gopi', '20220223_210219', 'chrome.exe                    5944 Console                    5     37,808 K'),
(265, 'gopi', '20220223_210219', 'chrome.exe                    4748 Console                    5     31,888 K'),
(266, 'gopi', '20220223_210219', 'chrome.exe                    3952 Console                    5     32,396 K'),
(267, 'gopi', '20220223_210219', 'chrome.exe                    6556 Console                    5     37,960 K'),
(268, 'gopi', '20220223_210219', 'SearchProtocolHost.exe        3528 Services                   0      8,776 K'),
(269, 'gopi', '20220223_210219', 'SearchFilterHost.exe          7128 Services                   0      6,904 K'),
(270, 'gopi', '20220223_210219', 'WmiPrvSE.exe                  6808 Services                   0      7,440 K'),
(271, 'gopi', '20220223_210219', 'tasklist.exe                  4612 Console                    5      6,240 K'),
(272, 'gopi', '20220223_210219', 'conhost.exe                   3816 Console                    5      3,536 K'),
(273, 'gopi', '20220223_210241', ''),
(274, 'gopi', '20220223_210241', 'Image Name                     PID Session Name        Session#    Mem Usage'),
(275, 'gopi', '20220223_210241', '========================= ======== ================ =========== ============'),
(276, 'gopi', '20220223_210241', 'System Idle Process              0 Services                   0          4 K'),
(277, 'gopi', '20220223_210241', 'System                           4 Services                   0      1,252 K'),
(278, 'gopi', '20220223_210241', 'smss.exe                       316 Services                   0        368 K'),
(279, 'gopi', '20220223_210241', 'csrss.exe                      448 Services                   0      1,348 K'),
(280, 'gopi', '20220223_210241', 'wininit.exe                    504 Services                   0      1,992 K'),
(281, 'gopi', '20220223_210241', 'services.exe                   600 Services                   0      3,564 K'),
(282, 'gopi', '20220223_210241', 'lsass.exe                      616 Services                   0      6,324 K'),
(283, 'gopi', '20220223_210241', 'svchost.exe                    688 Services                   0      6,664 K'),
(284, 'gopi', '20220223_210241', 'svchost.exe                    732 Services                   0      5,032 K'),
(285, 'gopi', '20220223_210241', 'svchost.exe                    864 Services                   0     13,760 K'),
(286, 'gopi', '20220223_210241', 'svchost.exe                    932 Services                   0     30,516 K'),
(287, 'gopi', '20220223_210241', 'svchost.exe                    960 Services                   0     10,740 K'),
(288, 'gopi', '20220223_210241', 'igfxCUIService.exe            1020 Services                   0      2,564 K'),
(289, 'gopi', '20220223_210241', 'svchost.exe                    296 Services                   0     73,388 K'),
(290, 'gopi', '20220223_210241', 'svchost.exe                    700 Services                   0     12,656 K'),
(291, 'gopi', '20220223_210241', 'wlanext.exe                   1028 Services                   0      1,760 K'),
(292, 'gopi', '20220223_210241', 'conhost.exe                   1048 Services                   0         84 K'),
(293, 'gopi', '20220223_210241', 'spoolsv.exe                   1116 Services                   0      3,684 K'),
(294, 'gopi', '20220223_210241', 'svchost.exe                   1176 Services                   0     15,428 K'),
(295, 'gopi', '20220223_210241', 'svchost.exe                   1324 Services                   0      2,280 K'),
(296, 'gopi', '20220223_210241', 'Locator.exe                   1380 Services                   0         16 K'),
(297, 'gopi', '20220223_210241', 'svchost.exe                   1400 Services                   0      2,496 K'),
(298, 'gopi', '20220223_210241', 'TeamViewer_Service.exe        1468 Services                   0      4,916 K'),
(299, 'gopi', '20220223_210241', 'MsMpEng.exe                   1616 Services                   0    252,804 K'),
(300, 'gopi', '20220223_210241', 'WmiApSrv.exe                  1640 Services                   0        824 K'),
(301, 'gopi', '20220223_210241', 'PresentationFontCache.exe     2112 Services                   0      1,648 K'),
(302, 'gopi', '20220223_210241', 'svchost.exe                   2932 Services                   0      5,096 K'),
(303, 'gopi', '20220223_210241', 'SearchIndexer.exe             3004 Services                   0     45,744 K'),
(304, 'gopi', '20220223_210241', 'NisSrv.exe                    3040 Services                   0      8,876 K'),
(305, 'gopi', '20220223_210241', 'GoogleCrashHandler.exe        3516 Services                   0         48 K'),
(306, 'gopi', '20220223_210241', 'GoogleCrashHandler64.exe      3668 Services                   0         40 K'),
(307, 'gopi', '20220223_210241', 'MpCmdRun.exe                  1512 Services                   0      7,836 K'),
(308, 'gopi', '20220223_210241', 'csrss.exe                     2356 Console                    5     30,300 K'),
(309, 'gopi', '20220223_210241', 'winlogon.exe                  2316 Console                    5      4,428 K'),
(310, 'gopi', '20220223_210241', 'dwm.exe                       4920 Console                    5     22,848 K'),
(311, 'gopi', '20220223_210241', 'taskhostex.exe                5672 Console                    5     10,584 K'),
(312, 'gopi', '20220223_210241', 'explorer.exe                  5480 Console                    5     87,876 K'),
(313, 'gopi', '20220223_210241', 'igfxEM.exe                    4004 Console                    5      8,224 K'),
(314, 'gopi', '20220223_210241', 'igfxHK.exe                    6036 Console                    5      6,428 K'),
(315, 'gopi', '20220223_210241', 'igfxTray.exe                  3276 Console                    5      7,940 K'),
(316, 'gopi', '20220223_210241', 'jusched.exe                   3080 Console                    5      4,476 K'),
(317, 'gopi', '20220223_210241', 'netbeans64.exe                2572 Console                    5    864,692 K'),
(318, 'gopi', '20220223_210241', 'chrome.exe                    3300 Console                    5    182,324 K'),
(319, 'gopi', '20220223_210241', 'chrome.exe                    3876 Console                    5      4,852 K'),
(320, 'gopi', '20220223_210241', 'chrome.exe                     696 Console                    5     95,912 K'),
(321, 'gopi', '20220223_210241', 'chrome.exe                    3504 Console                    5     44,732 K'),
(322, 'gopi', '20220223_210241', 'chrome.exe                    3716 Console                    5     13,548 K'),
(323, 'gopi', '20220223_210241', 'RuntimeBroker.exe             4124 Console                    5      8,644 K'),
(324, 'gopi', '20220223_210241', 'chrome.exe                    2372 Console                    5     90,548 K'),
(325, 'gopi', '20220223_210241', 'MobiSystemsUpdate.exe         7360 Console                    5     49,172 K'),
(326, 'gopi', '20220223_210241', 'taskhost.exe                  7048 Console                    5      9,076 K'),
(327, 'gopi', '20220223_210241', 'xampp-control.exe             3096 Console                    5     17,584 K'),
(328, 'gopi', '20220223_210241', 'httpd.exe                     7688 Console                    5     17,548 K'),
(329, 'gopi', '20220223_210241', 'conhost.exe                   6576 Console                    5      4,160 K'),
(330, 'gopi', '20220223_210241', 'mysqld.exe                    3544 Console                    5     48,992 K'),
(331, 'gopi', '20220223_210241', 'httpd.exe                     7384 Console                    5     77,300 K'),
(332, 'gopi', '20220223_210241', 'chrome.exe                    1292 Console                    5     91,664 K'),
(333, 'gopi', '20220223_210241', 'java.exe                       608 Console                    5     52,688 K'),
(334, 'gopi', '20220223_210241', 'conhost.exe                   5444 Console                    5      3,624 K'),
(335, 'gopi', '20220223_210241', 'java.exe                      3368 Console                    5    411,320 K'),
(336, 'gopi', '20220223_210241', 'conhost.exe                   4724 Console                    5      3,592 K'),
(337, 'gopi', '20220223_210241', 'chrome.exe                    8152 Console                    5     13,060 K'),
(338, 'gopi', '20220223_210241', 'chrome.exe                    7268 Console                    5     44,904 K'),
(339, 'gopi', '20220223_210241', 'chrome.exe                    5948 Console                    5     91,512 K'),
(340, 'gopi', '20220223_210241', 'chrome.exe                    4812 Console                    5     72,864 K'),
(341, 'gopi', '20220223_210241', 'chrome.exe                    2080 Console                    5     83,172 K'),
(342, 'gopi', '20220223_210241', 'chrome.exe                    3084 Console                    5     82,056 K'),
(343, 'gopi', '20220223_210241', 'chrome.exe                    3788 Console                    5     36,252 K'),
(344, 'gopi', '20220223_210241', 'chrome.exe                    7960 Console                    5     31,884 K'),
(345, 'gopi', '20220223_210241', 'chrome.exe                    1944 Console                    5     43,972 K'),
(346, 'gopi', '20220223_210241', 'chrome.exe                    7580 Console                    5     32,296 K'),
(347, 'gopi', '20220223_210241', 'chrome.exe                    4904 Console                    5     36,548 K'),
(348, 'gopi', '20220223_210241', 'chrome.exe                    5488 Console                    5     43,312 K'),
(349, 'gopi', '20220223_210241', 'chrome.exe                    7020 Console                    5     33,056 K'),
(350, 'gopi', '20220223_210241', 'chrome.exe                    7192 Console                    5     34,188 K'),
(351, 'gopi', '20220223_210241', 'chrome.exe                    7228 Console                    5     34,584 K'),
(352, 'gopi', '20220223_210241', 'chrome.exe                    4860 Console                    5     38,220 K'),
(353, 'gopi', '20220223_210241', 'chrome.exe                     808 Console                    5     33,724 K'),
(354, 'gopi', '20220223_210241', 'chrome.exe                    6340 Console                    5     38,296 K'),
(355, 'gopi', '20220223_210241', 'chrome.exe                    5944 Console                    5     37,808 K'),
(356, 'gopi', '20220223_210241', 'chrome.exe                    4748 Console                    5     31,888 K'),
(357, 'gopi', '20220223_210241', 'chrome.exe                    3952 Console                    5     32,396 K'),
(358, 'gopi', '20220223_210241', 'chrome.exe                    6556 Console                    5     37,960 K'),
(359, 'gopi', '20220223_210241', 'SearchProtocolHost.exe        3528 Services                   0      8,648 K'),
(360, 'gopi', '20220223_210241', 'SearchFilterHost.exe          7128 Services                   0      6,872 K'),
(361, 'gopi', '20220223_210241', 'WmiPrvSE.exe                  6808 Services                   0      7,720 K'),
(362, 'gopi', '20220223_210241', 'tasklist.exe                  6544 Console                    5      6,216 K'),
(363, 'gopi', '20220223_210241', 'conhost.exe                   7904 Console                    5      3,524 K'),
(364, 'gopi', '20220223_210247', ''),
(365, 'gopi', '20220223_210247', 'Image Name                     PID Session Name        Session#    Mem Usage'),
(366, 'gopi', '20220223_210247', '========================= ======== ================ =========== ============'),
(367, 'gopi', '20220223_210247', 'System Idle Process              0 Services                   0          4 K'),
(368, 'gopi', '20220223_210247', 'System                           4 Services                   0      1,248 K'),
(369, 'gopi', '20220223_210247', 'smss.exe                       316 Services                   0        368 K'),
(370, 'gopi', '20220223_210247', 'csrss.exe                      448 Services                   0      1,348 K'),
(371, 'gopi', '20220223_210247', 'wininit.exe                    504 Services                   0      1,992 K'),
(372, 'gopi', '20220223_210247', 'services.exe                   600 Services                   0      3,564 K'),
(373, 'gopi', '20220223_210247', 'lsass.exe                      616 Services                   0      6,324 K'),
(374, 'gopi', '20220223_210247', 'svchost.exe                    688 Services                   0      6,664 K'),
(375, 'gopi', '20220223_210247', 'svchost.exe                    732 Services                   0      5,032 K'),
(376, 'gopi', '20220223_210247', 'svchost.exe                    864 Services                   0     13,760 K'),
(377, 'gopi', '20220223_210247', 'svchost.exe                    932 Services                   0     30,540 K'),
(378, 'gopi', '20220223_210247', 'svchost.exe                    960 Services                   0     10,740 K'),
(379, 'gopi', '20220223_210247', 'igfxCUIService.exe            1020 Services                   0      2,564 K'),
(380, 'gopi', '20220223_210247', 'svchost.exe                    296 Services                   0     73,440 K'),
(381, 'gopi', '20220223_210247', 'svchost.exe                    700 Services                   0     12,656 K'),
(382, 'gopi', '20220223_210247', 'wlanext.exe                   1028 Services                   0      1,760 K'),
(383, 'gopi', '20220223_210247', 'conhost.exe                   1048 Services                   0         84 K'),
(384, 'gopi', '20220223_210247', 'spoolsv.exe                   1116 Services                   0      3,684 K'),
(385, 'gopi', '20220223_210247', 'svchost.exe                   1176 Services                   0     15,428 K'),
(386, 'gopi', '20220223_210247', 'svchost.exe                   1324 Services                   0      2,280 K'),
(387, 'gopi', '20220223_210247', 'Locator.exe                   1380 Services                   0         16 K'),
(388, 'gopi', '20220223_210247', 'svchost.exe                   1400 Services                   0      2,496 K'),
(389, 'gopi', '20220223_210247', 'TeamViewer_Service.exe        1468 Services                   0      4,916 K'),
(390, 'gopi', '20220223_210247', 'MsMpEng.exe                   1616 Services                   0    252,792 K'),
(391, 'gopi', '20220223_210247', 'WmiApSrv.exe                  1640 Services                   0        824 K'),
(392, 'gopi', '20220223_210247', 'PresentationFontCache.exe     2112 Services                   0      1,648 K'),
(393, 'gopi', '20220223_210247', 'svchost.exe                   2932 Services                   0      5,096 K'),
(394, 'gopi', '20220223_210247', 'SearchIndexer.exe             3004 Services                   0     45,744 K'),
(395, 'gopi', '20220223_210247', 'NisSrv.exe                    3040 Services                   0      8,896 K'),
(396, 'gopi', '20220223_210247', 'GoogleCrashHandler.exe        3516 Services                   0         48 K'),
(397, 'gopi', '20220223_210247', 'GoogleCrashHandler64.exe      3668 Services                   0         40 K'),
(398, 'gopi', '20220223_210247', 'MpCmdRun.exe                  1512 Services                   0      7,836 K'),
(399, 'gopi', '20220223_210247', 'csrss.exe                     2356 Console                    5     30,300 K'),
(400, 'gopi', '20220223_210247', 'winlogon.exe                  2316 Console                    5      4,428 K'),
(401, 'gopi', '20220223_210247', 'dwm.exe                       4920 Console                    5     22,916 K'),
(402, 'gopi', '20220223_210247', 'taskhostex.exe                5672 Console                    5     10,584 K'),
(403, 'gopi', '20220223_210247', 'explorer.exe                  5480 Console                    5     87,864 K'),
(404, 'gopi', '20220223_210247', 'igfxEM.exe                    4004 Console                    5      8,224 K'),
(405, 'gopi', '20220223_210247', 'igfxHK.exe                    6036 Console                    5      6,428 K'),
(406, 'gopi', '20220223_210247', 'igfxTray.exe                  3276 Console                    5      7,940 K'),
(407, 'gopi', '20220223_210247', 'jusched.exe                   3080 Console                    5      4,476 K'),
(408, 'gopi', '20220223_210247', 'netbeans64.exe                2572 Console                    5    864,708 K'),
(409, 'gopi', '20220223_210247', 'chrome.exe                    3300 Console                    5    182,292 K'),
(410, 'gopi', '20220223_210247', 'chrome.exe                    3876 Console                    5      4,852 K'),
(411, 'gopi', '20220223_210247', 'chrome.exe                     696 Console                    5     96,108 K'),
(412, 'gopi', '20220223_210247', 'chrome.exe                    3504 Console                    5     44,768 K'),
(413, 'gopi', '20220223_210247', 'chrome.exe                    3716 Console                    5     13,548 K'),
(414, 'gopi', '20220223_210247', 'RuntimeBroker.exe             4124 Console                    5      8,644 K'),
(415, 'gopi', '20220223_210247', 'chrome.exe                    2372 Console                    5     90,556 K'),
(416, 'gopi', '20220223_210247', 'MobiSystemsUpdate.exe         7360 Console                    5     49,172 K'),
(417, 'gopi', '20220223_210247', 'taskhost.exe                  7048 Console                    5      9,076 K'),
(418, 'gopi', '20220223_210247', 'xampp-control.exe             3096 Console                    5     17,584 K'),
(419, 'gopi', '20220223_210247', 'httpd.exe                     7688 Console                    5     17,548 K'),
(420, 'gopi', '20220223_210247', 'conhost.exe                   6576 Console                    5      4,160 K'),
(421, 'gopi', '20220223_210247', 'mysqld.exe                    3544 Console                    5     49,156 K'),
(422, 'gopi', '20220223_210247', 'httpd.exe                     7384 Console                    5     77,300 K'),
(423, 'gopi', '20220223_210247', 'chrome.exe                    1292 Console                    5     91,692 K'),
(424, 'gopi', '20220223_210247', 'java.exe                       608 Console                    5     52,688 K'),
(425, 'gopi', '20220223_210247', 'conhost.exe                   5444 Console                    5      3,624 K'),
(426, 'gopi', '20220223_210247', 'java.exe                      3368 Console                    5    411,468 K'),
(427, 'gopi', '20220223_210247', 'conhost.exe                   4724 Console                    5      3,592 K'),
(428, 'gopi', '20220223_210247', 'chrome.exe                    8152 Console                    5     13,060 K'),
(429, 'gopi', '20220223_210247', 'chrome.exe                    7268 Console                    5     46,300 K'),
(430, 'gopi', '20220223_210247', 'chrome.exe                    5948 Console                    5     91,512 K'),
(431, 'gopi', '20220223_210247', 'chrome.exe                    4812 Console                    5     72,864 K'),
(432, 'gopi', '20220223_210247', 'chrome.exe                    2080 Console                    5     83,200 K'),
(433, 'gopi', '20220223_210247', 'chrome.exe                    3084 Console                    5     82,056 K'),
(434, 'gopi', '20220223_210247', 'chrome.exe                    3788 Console                    5     36,252 K'),
(435, 'gopi', '20220223_210247', 'chrome.exe                    7960 Console                    5     33,028 K'),
(436, 'gopi', '20220223_210247', 'chrome.exe                    1944 Console                    5     43,972 K'),
(437, 'gopi', '20220223_210247', 'chrome.exe                    7580 Console                    5     32,296 K'),
(438, 'gopi', '20220223_210247', 'chrome.exe                    4904 Console                    5     36,548 K'),
(439, 'gopi', '20220223_210247', 'chrome.exe                    5488 Console                    5     43,312 K'),
(440, 'gopi', '20220223_210247', 'chrome.exe                    7020 Console                    5     33,056 K'),
(441, 'gopi', '20220223_210247', 'chrome.exe                    7192 Console                    5     34,188 K'),
(442, 'gopi', '20220223_210247', 'chrome.exe                    7228 Console                    5     34,584 K'),
(443, 'gopi', '20220223_210247', 'chrome.exe                    4860 Console                    5     38,220 K'),
(444, 'gopi', '20220223_210247', 'chrome.exe                     808 Console                    5     33,724 K'),
(445, 'gopi', '20220223_210247', 'chrome.exe                    6340 Console                    5     38,296 K'),
(446, 'gopi', '20220223_210247', 'chrome.exe                    5944 Console                    5     37,808 K'),
(447, 'gopi', '20220223_210247', 'chrome.exe                    4748 Console                    5     31,888 K'),
(448, 'gopi', '20220223_210247', 'chrome.exe                    3952 Console                    5     32,396 K'),
(449, 'gopi', '20220223_210247', 'chrome.exe                    6556 Console                    5     37,960 K'),
(450, 'gopi', '20220223_210247', 'SearchProtocolHost.exe        3528 Services                   0      8,428 K');
INSERT INTO `apps` (`id`, `username`, `dt`, `appname`) VALUES
(451, 'gopi', '20220223_210247', 'SearchFilterHost.exe          7128 Services                   0      6,860 K'),
(452, 'gopi', '20220223_210247', 'WmiPrvSE.exe                  6808 Services                   0      7,848 K'),
(453, 'gopi', '20220223_210247', 'tasklist.exe                  6632 Console                    5      6,260 K'),
(454, 'gopi', '20220223_210247', 'conhost.exe                   1892 Console                    5      3,536 K');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(3) NOT NULL,
  `clientname` varchar(100) NOT NULL,
  `assignedto` varchar(100) NOT NULL,
  `deadline` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'w'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `clientname`, `assignedto`, `deadline`, `status`) VALUES
(1, 'testclient', '1', 'null', 'Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(3) NOT NULL,
  `clientname` varchar(100) NOT NULL,
  `clientaddress` varchar(100) NOT NULL,
  `clientmobile` varchar(50) NOT NULL,
  `clientemail` varchar(50) NOT NULL,
  `workdetails` varchar(500) NOT NULL,
  `income` varchar(40) NOT NULL,
  `startdate` varchar(50) NOT NULL,
  `completedate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `clientname`, `clientaddress`, `clientmobile`, `clientemail`, `workdetails`, `income`, `startdate`, `completedate`) VALUES
(1, 'testclient', 'THRISSUR', '9988776655', 'egopi@gmail.com', 'to create a website', '100000', '2022-01-01', '2022-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(3) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `designation`, `salary`, `description`) VALUES
(1, 'senior developer', '30000', ''),
(2, 'junior developer', '18000', ''),
(3, 'technical associate', '22000', ''),
(4, 'null', '5000', 'beginner level employee');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(5) NOT NULL,
  `empid` varchar(30) NOT NULL,
  `empname` varchar(50) NOT NULL,
  `empage` varchar(50) NOT NULL,
  `empgender` varchar(50) NOT NULL,
  `empaddress` varchar(500) NOT NULL,
  `empdesignation` varchar(500) NOT NULL,
  `empmobile` varchar(20) NOT NULL,
  `empemail` varchar(40) NOT NULL,
  `emppassword` varchar(50) NOT NULL,
  `team` varchar(50) NOT NULL DEFAULT 'team1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `empid`, `empname`, `empage`, `empgender`, `empaddress`, `empdesignation`, `empmobile`, `empemail`, `emppassword`, `team`) VALUES
(1, '1', 'gopi', '23', 'male', 'thrissur', 'testclient', '9988776655', 'gopi@gmail.com', 'gopi1234', 'team1'),
(2, '2', 'ddd', '23', 'male', 'qqq', 'Technical Associate', '3333334455', 'iii@gmail.com', 'rrr', 'team1'),
(3, '3', 'testemployee', '34', 'male', 'thrissur', 'developer', '9988774433', 'test@gmail.com', 'test1234', 'team1'),
(4, '1010', 'gopi', '23', 'male', 'thrissur', 'head', '9744112113', 'egopi@gmail.com', 'gopi1234', 'team1');

-- --------------------------------------------------------

--
-- Table structure for table `idletime`
--

CREATE TABLE `idletime` (
  `id` int(3) NOT NULL,
  `totaltime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `idletime`
--

INSERT INTO `idletime` (`id`, `totaltime`) VALUES
(1, '50');

-- --------------------------------------------------------

--
-- Table structure for table `inactive`
--

CREATE TABLE `inactive` (
  `id` int(6) NOT NULL,
  `user` varchar(50) NOT NULL,
  `datetime` varchar(100) NOT NULL,
  `inactive` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inactive`
--

INSERT INTO `inactive` (`id`, `user`, `datetime`, `inactive`) VALUES
(1, 'gopi', '20220223_210353', '40201'),
(2, 'gopi', '20220223_210353', '41313'),
(3, 'gopi', '20220223_210353', '42350'),
(4, 'gopi', '20220223_210353', '43406'),
(5, 'gopi', '20220223_210353', '44451'),
(6, 'gopi', '20220223_210353', '45495'),
(7, 'gopi', '20220223_210353', '46552'),
(8, 'gopi', '20220223_210353', '47597'),
(9, 'gopi', '20220223_210353', '48676'),
(10, 'gopi', '20220223_210353', '49718'),
(11, 'gopi', '20220223_210353', '50751'),
(12, 'gopi', '20220223_210353', '51796'),
(13, 'gopi', '20220223_210353', '52852'),
(14, 'gopi', '20220223_210353', '53906'),
(15, 'gopi', '20220223_210353', '54962'),
(16, 'gopi', '20220223_210353', '56007'),
(17, 'gopi', '20220223_210353', '57040'),
(18, 'gopi', '20220223_210353', '58084'),
(19, 'gopi', '20220223_210353', '59118'),
(20, 'gopi', '20220223_210353', '60151'),
(21, 'gopi', '20220223_210353', '61198'),
(22, 'gopi', '20220223_210353', '62276'),
(23, 'gopi', '20220223_210353', '63322'),
(24, 'gopi', '20220223_210353', '64341'),
(25, 'gopi', '20220223_210353', '65379'),
(26, 'gopi', '20220223_210353', '66394'),
(27, 'gopi', '20220223_210353', '67410'),
(28, 'gopi', '20220223_210353', '68431'),
(29, 'gopi', '20220223_210353', '69450'),
(30, 'gopi', '20220223_210353', '70638'),
(31, 'gopi', '20220223_210353', '71654'),
(32, 'gopi', '20220223_210353', '72700'),
(33, 'gopi', '20220223_210353', '73747'),
(34, 'gopi', '20220223_210353', '74763'),
(35, 'gopi', '20220223_210353', '75810'),
(36, 'gopi', '20220223_210353', '76857'),
(37, 'gopi', '20220223_210353', '77873'),
(38, 'gopi', '20220223_210353', '78920'),
(39, 'gopi', '20220223_210353', '79967'),
(40, 'gopi', '20220223_210353', '80988'),
(41, 'gopi', '20220223_210353', '82024'),
(42, 'gopi', '20220223_210353', '83040'),
(43, 'gopi', '20220223_210353', '84071'),
(44, 'gopi', '20220223_210353', '85118'),
(45, 'gopi', '20220223_210353', '86165'),
(46, 'gopi', '20220223_210353', '87212'),
(47, 'gopi', '20220223_210353', '88262'),
(48, 'gopi', '20220223_210353', '89312'),
(49, 'gopi', '20220223_210353', '90362'),
(50, 'gopi', '20220223_210353', '91425'),
(51, 'gopi', '20220223_210353', '92518'),
(52, 'gopi', '20220223_210353', '93550'),
(53, 'gopi', '20220223_210353', '94659'),
(54, 'gopi', '20220223_210353', '95769'),
(55, 'gopi', '20220223_210353', '96831'),
(56, 'gopi', '20220223_210353', '97866'),
(57, 'gopi', '20220223_210353', '98913'),
(58, 'gopi', '20220223_210353', '99982'),
(59, 'gopi', '20220223_210353', '101028'),
(60, 'gopi', '20220223_210353', '102066'),
(61, 'gopi', '20220223_210353', '103101'),
(62, 'gopi', '20220223_210353', '104116'),
(63, 'gopi', '20220223_210353', '105195'),
(64, 'gopi', '20220223_210353', '106262'),
(65, 'gopi', '20220223_210353', '107379'),
(66, 'gopi', '20220223_210353', '108431'),
(67, 'gopi', '20220223_210353', '109512'),
(68, 'gopi', '20220223_210353', '110621'),
(69, 'gopi', '20220223_210353', '111684'),
(70, 'gopi', '20220223_210353', '112715'),
(71, 'gopi', '20220223_210353', '113840'),
(72, 'gopi', '20220223_210353', '115015'),
(73, 'gopi', '20220223_210353', '116062'),
(74, 'gopi', '20220223_210353', '117114'),
(75, 'gopi', '20220223_210353', '118161'),
(76, 'gopi', '20220223_210353', '119208'),
(77, 'gopi', '20220223_210353', '120258'),
(78, 'gopi', '20220223_210353', '121308'),
(79, 'gopi', '20220223_210353', '122358'),
(80, 'gopi', '20220223_210353', '123411'),
(81, 'gopi', '20220223_210353', '124458'),
(82, 'gopi', '20220223_210353', '125508'),
(83, 'gopi', '20220223_210353', '126571'),
(84, 'gopi', '20220223_210353', '127637'),
(85, 'gopi', '20220223_210353', '128684'),
(86, 'gopi', '20220223_210353', '129731'),
(87, 'gopi', '20220223_210353', '130782'),
(88, 'gopi', '20220223_210353', '131833'),
(89, 'gopi', '20220223_210353', '132880'),
(90, 'gopi', '20220223_210353', '133896'),
(91, 'gopi', '20220223_210353', '135005'),
(92, 'gopi', '20220223_210353', '136024'),
(93, 'gopi', '20220223_210353', '137040'),
(94, 'gopi', '20220223_210353', '138102'),
(95, 'gopi', '20220223_210353', '139118'),
(96, 'gopi', '20220223_210353', '140180'),
(97, 'gopi', '20220223_210353', '141212'),
(98, 'gopi', '20220223_210353', '142368'),
(99, 'gopi', '20220223_210353', '143431'),
(100, 'gopi', '20220223_210353', '144462'),
(101, 'gopi', '20220223_210353', '145587'),
(102, 'gopi', '20220223_210353', '146634'),
(103, 'gopi', '20220223_210353', '147712'),
(104, 'gopi', '20220223_210353', '148778'),
(105, 'gopi', '20220223_210353', '149825'),
(106, 'gopi', '20220223_210353', '150840'),
(107, 'gopi', '20220223_210353', '151919'),
(108, 'gopi', '20220223_210353', '152997'),
(109, 'gopi', '20220223_210353', '154044'),
(110, 'gopi', '20220223_210353', '155078'),
(111, 'gopi', '20220223_210353', '156188'),
(112, 'gopi', '20220223_210353', '157250'),
(113, 'gopi', '20220223_210353', '158266'),
(114, 'gopi', '20220223_210353', '159316'),
(115, 'gopi', '20220223_210353', '160352'),
(116, 'gopi', '20220223_210353', '161418'),
(117, 'gopi', '20220223_210353', '162565'),
(118, 'gopi', '20220223_210353', '163612'),
(119, 'gopi', '20220223_210353', '164644'),
(120, 'gopi', '20220223_210353', '165679'),
(121, 'gopi', '20220223_210353', '166710'),
(122, 'gopi', '20220223_210353', '167745'),
(123, 'gopi', '20220223_210353', '168791'),
(124, 'gopi', '20220223_210353', '169885'),
(125, 'gopi', '20220223_210353', '171035'),
(126, 'gopi', '20220223_210353', '172099'),
(127, 'gopi', '20220223_210353', '173154'),
(128, 'gopi', '20220223_210353', '174215'),
(129, 'gopi', '20220223_210353', '175247'),
(130, 'gopi', '20220223_210353', '176263'),
(131, 'gopi', '20220223_210353', '177325'),
(132, 'gopi', '20220223_210353', '178391');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(5) NOT NULL,
  `empid` varchar(100) NOT NULL,
  `empname` varchar(100) NOT NULL,
  `empdesignation` varchar(100) NOT NULL,
  `empsalary` varchar(100) NOT NULL,
  `empmonth` varchar(100) NOT NULL,
  `empovertime` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `empid`, `empname`, `empdesignation`, `empsalary`, `empmonth`, `empovertime`) VALUES
(6, '1', 'gopi', 'technical associate', '22000', 'Jan', '0'),
(7, '1', 'gopi', 'technical associate', '22000', 'feb', '0');

-- --------------------------------------------------------

--
-- Table structure for table `worklog`
--

CREATE TABLE `worklog` (
  `id` int(3) NOT NULL,
  `empid` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inactive`
--
ALTER TABLE `inactive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `worklog`
--
ALTER TABLE `worklog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inactive`
--
ALTER TABLE `inactive`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `worklog`
--
ALTER TABLE `worklog`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
