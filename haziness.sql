-- phpMyAdmin SQL Dump
-- version 4,7,4
-- https://www,phpmyadmin,net/
--
-- Host: 127,0,0,1
-- Generation Time: Jan 05, 2018 at 09:26 AM
-- Server version: 10,1,29-MariaDB
-- PHP Version: 7,1,12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sort_image`
--

-- --------------------------------------------------------

--
-- Table structure for table `haziness`
--

CREATE TABLE `haziness` (
  `id` int(11) NOT NULL,
  `url` varchar(50) NOT NULL,
  `haze` int(11) NOT NULL,
  `zeros` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `haziness`
--

INSERT INTO `haziness` (`id`, `url`, `haze`, `zeros`) VALUES
(1, ',/images/1,png', 10, 15,234375),
(2, ',/images/2,png', 50, 40,625),
(3, ',/images/3,png', 45, 37,109375),
(4, ',/images/4,png', 50, 21,875),
(5, ',/images/5,png', 45, 39,453125),
(6, ',/images/6,png', 25, 32,8125),
(7, ',/images/7,png', 40, 36,71875),
(8, ',/images/8,png', 15, 23,046875),
(9, ',/images/9,png', 40, 35,546875),
(10, ',/images/10,png', 20, 27,34375),
(11, ',/images/11,png', 30, 28,125),
(12, ',/images/12,png', 45, 36,328125),
(13, ',/images/13,png', 45, 41,015625),
(14, ',/images/14,png', 15, 28,90625),
(15, ',/images/15,png', 40, 29,296875),
(16, ',/images/16,png', 30, 24,609375),
(17, ',/images/17,png', 45, 38,671875),
(18, ',/images/18,png', 20, 30,46875),
(19, ',/images/19,png', 10, 14,84375),
(20, ',/images/20,png', 45, 35,546875),
(21, ',/images/21,png', 40, 35,546875),
(22, ',/images/22,png', 35, 35,9375),
(23, ',/images/23,png', 10, 18,75),
(24, ',/images/24,png', 25, 35,15625),
(25, ',/images/25,png', 15, 27,34375),
(26, ',/images/26,png', 40, 32,03125),
(27, ',/images/27,png', 40, 35,9375),
(28, ',/images/28,png', 10, 9,375),
(29, ',/images/29,png', 40, 17,1875),
(30, ',/images/30,png', 20, 17,96875),
(31, ',/images/31,png', 30, 28,515625),
(32, ',/images/32,png', 40, 39,0625),
(33, ',/images/33,png', 50, 41,796875),
(34, ',/images/34,png', 50, 37,890625),
(35, ',/images/35,png', 15, 31,640625),
(36, ',/images/36,png', 40, 39,84375),
(37, ',/images/37,png', 45, 36,71875),
(38, ',/images/38,png', 50, 35,9375),
(39, ',/images/39,png', 10, 12,109375),
(40, ',/images/40,png', 35, 26,5625),
(41, ',/images/41,png', 45, 31,25),
(42, ',/images/42,png', 20, 31,25),
(43, ',/images/43,png', 50, 29,6875),
(44, ',/images/44,png', 50, 27,734375),
(45, ',/images/45,png', 50, 42,578125),
(46, ',/images/46,png', 15, 18,75),
(47, ',/images/47,png', 50, 27,734375),
(48, ',/images/48,png', 10, 17,96875),
(49, ',/images/49,png', 20, 25),
(50, ',/images/50,png', 25, 28,125),
(51, ',/images/51,png', 50, 31,25),
(52, ',/images/52,png', 10, 28,125),
(53, ',/images/53,png', 10, 14,84375),
(54, ',/images/54,png', 40, 24,21875),
(55, ',/images/55,png', 15, 27,734375),
(56, ',/images/56,png', 25, 19,921875),
(57, ',/images/57,png', 15, 28,90625),
(58, ',/images/58,png', 50, 41,015625),
(59, ',/images/59,png', 45, 30,46875),
(60, ',/images/60,png', 25, 34,375),
(61, ',/images/61,png', 35, 35,546875),
(62, ',/images/62,png', 50, 21,875),
(63, ',/images/63,png', 50, 33,203125),
(64, ',/images/64,png', 40, 32,8125),
(65, ',/images/65,png', 50, 43,359375),
(66, ',/images/66,png', 25, 33,203125),
(67, ',/images/67,png', 10, 25,78125),
(68, ',/images/68,png', 35, 28,125),
(69, ',/images/69,png', 40, 30,859375),
(70, ',/images/70,png', 50, 36,71875),
(71, ',/images/71,png', 10, 17,96875),
(72, ',/images/72,png', 10, 12,5),
(73, ',/images/73,png', 25, 33,203125),
(74, ',/images/74,png', 20, 14,0625),
(75, ',/images/75,png', 40, 38,28125),
(76, ',/images/76,png', 20, 32,03125),
(77, ',/images/77,png', 40, 25,78125),
(78, ',/images/78,png', 20, 34,375),
(79, ',/images/79,png', 50, 42,1875),
(80, ',/images/80,png', 30, 35,9375),
(81, ',/images/81,png', 10, 22,65625),
(82, ',/images/82,png', 20, 24,609375),
(83, ',/images/83,png', 45, 31,25),
(84, ',/images/84,png', 45, 36,328125),
(85, ',/images/85,png', 20, 28,90625),
(86, ',/images/86,png', 20, 26,953125),
(87, ',/images/87,png', 30, 30,859375),
(88, ',/images/88,png', 45, 28,90625),
(89, ',/images/89,png', 50, 38,671875),
(90, ',/images/90,png', 10, 24,21875),
(91, ',/images/91,png', 45, 42,96875),
(92, ',/images/92,png', 35, 33,984375),
(93, ',/images/93,png', 45, 27,734375),
(94, ',/images/94,png', 10, 21,484375),
(95, ',/images/95,png', 40, 29,6875),
(96, ',/images/96,png', 30, 30,859375),
(97, ',/images/97,png', 50, 26,5625),
(98, ',/images/98,png', 35, 38,671875),
(99, ',/images/99,png', 10, 13,671875),
(100, ',/images/100,png', 20, 30,46875),
(101, ',/images/102,png', 20, 26,171875),
(102, ',/images/103,png', 25, 31,640625),
(103, ',/images/104,png', 30, 28,90625),
(104, ',/images/105,png', 45, 35,9375),
(105, ',/images/106,png', 20, 32,8125),
(106, ',/images/107,png', 10, 24,21875),
(107, ',/images/108,png', 35, 35,546875),
(108, ',/images/109,png', 30, 34,375),
(109, ',/images/110,png', 10, 26,5625),
(110, ',/images/111,png', 20, 23,828125),
(111, ',/images/112,png', 35, 38,28125),
(112, ',/images/113,png', 25, 24,21875),
(113, ',/images/114,png', 30, 29,6875),
(114, ',/images/115,png', 30, 33,203125),
(115, ',/images/116,png', 10, 17,578125),
(116, ',/images/117,png', 30, 27,734375),
(117, ',/images/118,png', 30, 34,765625),
(118, ',/images/119,png', 25, 28,515625),
(119, ',/images/120,png', 30, 36,71875),
(120, ',/images/121,png', 20, 28,125),
(121, ',/images/122,png', 10, 21,875),
(122, ',/images/123,png', 45, 41,796875),
(123, ',/images/124,png', 40, 25,390625),
(124, ',/images/125,png', 30, 31,25),
(125, ',/images/126,png', 35, 38,28125),
(126, ',/images/127,png', 30, 32,8125),
(127, ',/images/128,png', 20, 20,703125),
(128, ',/images/129,png', 45, 24,21875),
(129, ',/images/130,png', 15, 21,09375),
(130, ',/images/131,png', 15, 14,453125),
(131, ',/images/132,png', 20, 25,78125),
(132, ',/images/133,png', 40, 37,5),
(133, ',/images/134,png', 40, 28,90625),
(134, ',/images/135,png', 50, 36,328125),
(135, ',/images/136,png', 30, 30,46875),
(136, ',/images/137,png', 35, 33,59375),
(137, ',/images/138,png', 15, 17,96875),
(138, ',/images/139,png', 10, 27,734375),
(139, ',/images/140,png', 50, 31,25),
(140, ',/images/141,png', 15, 28,125),
(141, ',/images/142,png', 50, 41,40625),
(142, ',/images/143,png', 35, 26,5625),
(143, ',/images/144,png', 20, 27,734375),
(144, ',/images/145,png', 40, 40,625),
(145, ',/images/146,png', 50, 32,03125),
(146, ',/images/147,png', 15, 27,34375),
(147, ',/images/148,png', 50, 32,03125),
(148, ',/images/149,png', 20, 17,96875),
(149, ',/images/150,png', 45, 38,28125),
(150, ',/images/151,png', 20, 26,171875),
(151, ',/images/152,png', 40, 26,5625),
(152, ',/images/153,png', 30, 16,40625),
(153, ',/images/154,png', 25, 23,046875),
(154, ',/images/155,png', 15, 13,671875),
(155, ',/images/156,png', 50, 35,9375),
(156, ',/images/157,png', 40, 35,9375),
(157, ',/images/158,png', 10, 12,109375),
(158, ',/images/159,png', 25, 12,109375),
(159, ',/images/160,png', 45, 29,6875),
(160, ',/images/161,png', 45, 29,296875),
(161, ',/images/162,png', 50, 37,5),
(162, ',/images/163,png', 40, 29,296875),
(163, ',/images/164,png', 25, 18,75),
(164, ',/images/165,png', 15, 31,640625),
(165, ',/images/166,png', 50, 28,90625),
(166, ',/images/167,png', 10, 20,3125),
(167, ',/images/168,png', 40, 21,484375),
(168, ',/images/169,png', 15, 27,34375),
(169, ',/images/170,png', 35, 38,671875),
(170, ',/images/171,png', 40, 35,15625),
(171, ',/images/172,png', 50, 28,90625),
(172, ',/images/173,png', 35, 32,03125),
(173, ',/images/174,png', 15, 27,734375),
(174, ',/images/175,png', 10, 20,703125),
(175, ',/images/176,png', 50, 33,984375),
(176, ',/images/177,png', 35, 26,953125),
(177, ',/images/178,png', 30, 33,984375),
(178, ',/images/179,png', 15, 31,640625),
(179, ',/images/180,png', 45, 40,625),
(180, ',/images/181,png', 25, 25,78125),
(181, ',/images/182,png', 10, 23,828125),
(182, ',/images/183,png', 15, 14,453125),
(183, ',/images/184,png', 40, 38,671875),
(184, ',/images/185,png', 20, 26,953125),
(185, ',/images/186,png', 30, 23,4375),
(186, ',/images/187,png', 30, 32,421875),
(187, ',/images/188,png', 45, 39,453125),
(188, ',/images/189,png', 30, 31,25),
(189, ',/images/190,png', 20, 33,59375),
(190, ',/images/191,png', 30, 35,546875),
(191, ',/images/192,png', 30, 36,328125),
(192, ',/images/193,png', 35, 39,84375),
(193, ',/images/194,png', 20, 26,171875),
(194, ',/images/195,png', 30, 23,828125),
(195, ',/images/196,png', 40, 35,15625),
(196, ',/images/197,png', 10, 28,515625),
(197, ',/images/198,png', 45, 34,765625),
(198, ',/images/199,png', 40, 39,0625),
(199, ',/images/200,png', 30, 24,21875),
(200, ',/images/201,png', 45, 25,78125),
(206, ',/images/201,png', 45, 25,78125),
(207, ',/images/202,png', 25, 35,9375),
(208, ',/images/203,png', 50, 40,625),
(209, ',/images/204,png', 45, 37,5),
(210, ',/images/205,png', 40, 35,9375),
(211, ',/images/206,png', 45, 29,6875),
(212, ',/images/207,png', 35, 26,5625),
(213, ',/images/208,png', 45, 38,28125),
(214, ',/images/209,png', 25, 34,765625),
(215, ',/images/210,png', 50, 37,5),
(216, ',/images/211,png', 50, 36,328125),
(217, ',/images/212,png', 25, 35,15625),
(218, ',/images/213,png', 50, 30,078125),
(219, ',/images/214,png', 30, 35,15625),
(220, ',/images/215,png', 25, 27,34375),
(221, ',/images/216,png', 45, 25),
(222, ',/images/217,png', 40, 30,46875),
(223, ',/images/218,png', 50, 21,875),
(224, ',/images/219,png', 15, 22,65625),
(225, ',/images/220,png', 40, 33,984375),
(226, ',/images/221,png', 15, 30,859375),
(227, ',/images/222,png', 15, 14,453125),
(228, ',/images/223,png', 50, 32,03125),
(229, ',/images/224,png', 45, 39,84375),
(230, ',/images/225,png', 15, 23,4375),
(231, ',/images/226,png', 15, 22,65625),
(232, ',/images/227,png', 25, 34,765625),
(233, ',/images/228,png', 45, 33,59375),
(234, ',/images/229,png', 20, 26,171875),
(235, ',/images/230,png', 15, 23,4375),
(236, ',/images/231,png', 35, 17,96875),
(237, ',/images/232,png', 50, 38,28125),
(238, ',/images/233,png', 50, 38,671875),
(239, ',/images/234,png', 45, 40,234375),
(240, ',/images/235,png', 40, 28,515625),
(241, ',/images/236,png', 15, 15,234375),
(242, ',/images/237,png', 35, 20,3125),
(243, ',/images/238,png', 30, 34,375),
(244, ',/images/239,png', 25, 31,25),
(245, ',/images/240,png', 10, 19,921875),
(246, ',/images/241,png', 50, 37,890625),
(247, ',/images/242,png', 45, 38,28125),
(248, ',/images/243,png', 45, 41,796875),
(249, ',/images/244,png', 20, 28,90625),
(250, ',/images/245,png', 15, 21,09375),
(251, ',/images/246,png', 25, 23,4375),
(252, ',/images/247,png', 10, 21,875),
(253, ',/images/248,png', 50, 39,453125),
(254, ',/images/249,png', 25, 27,34375),
(255, ',/images/250,png', 30, 26,953125),
(256, ',/images/251,png', 15, 21,09375),
(257, ',/images/252,png', 25, 28,515625),
(258, ',/images/253,png', 25, 26,5625),
(259, ',/images/254,png', 50, 35,546875),
(260, ',/images/255,png', 50, 28,515625),
(261, ',/images/256,png', 25, 26,5625),
(262, ',/images/257,png', 10, 28,90625),
(263, ',/images/258,png', 45, 31,25),
(264, ',/images/259,png', 20, 18,75),
(265, ',/images/260,png', 40, 31,640625),
(266, ',/images/261,png', 10, 25),
(267, ',/images/262,png', 20, 29,6875),
(268, ',/images/263,png', 30, 37,109375),
(269, ',/images/264,png', 10, 21,484375),
(270, ',/images/265,png', 15, 24,21875),
(271, ',/images/266,png', 15, 24,21875),
(272, ',/images/267,png', 25, 17,96875),
(273, ',/images/268,png', 30, 35,9375),
(274, ',/images/269,png', 45, 33,59375),
(275, ',/images/270,png', 40, 29,296875),
(276, ',/images/271,png', 20, 33,59375),
(277, ',/images/272,png', 20, 12,109375),
(278, ',/images/273,png', 10, 19,140625),
(279, ',/images/274,png', 20, 32,421875),
(280, ',/images/275,png', 25, 30,46875),
(281, ',/images/276,png', 50, 41,40625),
(282, ',/images/277,png', 45, 36,328125),
(283, ',/images/278,png', 25, 25,390625),
(284, ',/images/279,png', 15, 23,4375),
(285, ',/images/280,png', 35, 27,34375),
(286, ',/images/281,png', 10, 16,015625),
(287, ',/images/282,png', 20, 19,53125),
(288, ',/images/283,png', 30, 34,375),
(289, ',/images/284,png', 25, 30,859375),
(290, ',/images/285,png', 10, 21,484375),
(291, ',/images/286,png', 35, 29,296875),
(292, ',/images/287,png', 20, 23,046875),
(293, ',/images/288,png', 45, 33,59375),
(294, ',/images/289,png', 40, 42,96875),
(295, ',/images/290,png', 30, 19,140625),
(296, ',/images/291,png', 50, 32,03125),
(297, ',/images/292,png', 20, 25),
(298, ',/images/293,png', 15, 27,34375),
(299, ',/images/294,png', 45, 39,0625),
(300, ',/images/295,png', 35, 10,9375),
(301, ',/images/296,png', 45, 37,890625),
(302, ',/images/297,png', 35, 30,078125),
(303, ',/images/300,png', 20, 33,59375),
(304, ',/images/298,png', 10, 25,390625),
(305, ',/images/299,png', 15, 34,375),
(306, ',/images/301,png', 35, 29,296875),
(307, ',/images/302,png', 15, 16,796875),
(308, ',/images/303,png', 20, 30,078125),
(309, ',/images/304,png', 25, 32,421875),
(310, ',/images/305,png', 35, 37,890625),
(311, ',/images/306,png', 40, 36,71875),
(312, ',/images/307,png', 20, 32,8125),
(313, ',/images/308,png', 25, 28,125),
(314, ',/images/309,png', 45, 39,0625),
(315, ',/images/310,png', 10, 17,96875),
(316, ',/images/311,png', 50, 39,84375),
(317, ',/images/312,png', 40, 35,546875),
(318, ',/images/313,png', 35, 25,78125),
(319, ',/images/314,png', 40, 28,90625),
(320, ',/images/315,png', 40, 27,34375),
(321, ',/images/316,png', 45, 39,84375),
(322, ',/images/317,png', 15, 22,265625),
(323, ',/images/318,png', 25, 27,34375),
(324, ',/images/319,png', 25, 27,34375),
(325, ',/images/320,png', 50, 33,984375),
(326, ',/images/321,png', 10, 26,5625),
(327, ',/images/322,png', 15, 14,0625),
(328, ',/images/323,png', 25, 20,703125),
(329, ',/images/324,png', 35, 39,0625),
(330, ',/images/325,png', 45, 30,46875),
(331, ',/images/326,png', 35, 27,34375),
(332, ',/images/327,png', 40, 30,859375),
(333, ',/images/328,png', 30, 34,375),
(334, ',/images/329,png', 50, 43,359375),
(335, ',/images/330,png', 25, 21,875),
(336, ',/images/331,png', 25, 18,359375),
(337, ',/images/332,png', 10, 15,625),
(338, ',/images/333,png', 20, 24,21875),
(339, ',/images/334,png', 25, 30,859375),
(340, ',/images/335,png', 45, 27,734375),
(341, ',/images/336,png', 25, 21,484375),
(342, ',/images/337,png', 10, 24,609375),
(343, ',/images/338,png', 45, 36,71875),
(344, ',/images/339,png', 45, 28,125),
(345, ',/images/340,png', 20, 19,140625),
(346, ',/images/341,png', 35, 31,640625),
(347, ',/images/342,png', 50, 29,6875),
(348, ',/images/343,png', 40, 28,90625),
(349, ',/images/344,png', 50, 32,03125),
(350, ',/images/345,png', 10, 25,78125),
(351, ',/images/346,png', 25, 33,203125),
(352, ',/images/347,png', 15, 17,1875),
(353, ',/images/348,png', 35, 37,5),
(354, ',/images/349,png', 30, 26,171875),
(355, ',/images/350,png', 20, 17,96875),
(356, ',/images/351,png', 50, 32,8125),
(357, ',/images/352,png', 40, 28,90625),
(358, ',/images/353,png', 30, 27,734375),
(359, ',/images/354,png', 25, 25),
(360, ',/images/355,png', 45, 38,671875),
(361, ',/images/356,png', 10, 30,859375),
(362, ',/images/357,png', 25, 33,203125),
(363, ',/images/358,png', 40, 29,296875),
(364, ',/images/359,png', 40, 23,828125),
(365, ',/images/360,png', 45, 39,84375),
(366, ',/images/361,png', 15, 14,453125),
(367, ',/images/362,png', 20, 30,46875),
(368, ',/images/363,png', 25, 30,859375),
(369, ',/images/364,png', 50, 38,28125),
(370, ',/images/365,png', 50, 44,140625),
(371, ',/images/366,png', 20, 20,3125),
(372, ',/images/367,png', 45, 42,578125),
(373, ',/images/368,png', 20, 33,984375),
(374, ',/images/369,png', 35, 27,34375),
(375, ',/images/370,png', 50, 30,078125),
(376, ',/images/371,png', 10, 13,671875),
(377, ',/images/372,png', 35, 28,125),
(378, ',/images/373,png', 45, 32,421875),
(379, ',/images/374,png', 40, 34,375),
(380, ',/images/375,png', 15, 21,09375),
(381, ',/images/376,png', 10, 21,09375),
(382, ',/images/377,png', 30, 35,15625),
(383, ',/images/378,png', 10, 25,78125),
(384, ',/images/379,png', 50, 36,71875),
(385, ',/images/380,png', 35, 14,0625),
(386, ',/images/381,png', 45, 31,25),
(387, ',/images/382,png', 40, 33,984375),
(388, ',/images/383,png', 35, 31,640625),
(389, ',/images/384,png', 25, 30,078125),
(390, ',/images/385,png', 25, 30,46875),
(391, ',/images/386,png', 40, 36,71875),
(392, ',/images/387,png', 45, 33,203125),
(393, ',/images/388,png', 20, 22,65625),
(394, ',/images/389,png', 35, 38,28125),
(395, ',/images/390,png', 15, 25,78125),
(396, ',/images/391,png', 20, 25),
(397, ',/images/392,png', 10, 15,625),
(398, ',/images/393,png', 40, 38,28125),
(399, ',/images/394,png', 15, 27,34375),
(400, ',/images/395,png', 30, 19,921875),
(401, ',/images/396,png', 50, 27,34375),
(402, ',/images/397,png', 40, 28,125),
(403, ',/images/399,png', 25, 22,265625),
(404, ',/images/398,png', 15, 19,140625),
(405, ',/images/400,png', 10, 24,21875),
(406, ',/images/301,png', 35, 29,296875),
(407, ',/images/302,png', 15, 16,796875),
(408, ',/images/303,png', 20, 30,078125),
(409, ',/images/304,png', 25, 32,421875),
(410, ',/images/305,png', 35, 37,890625),
(411, ',/images/306,png', 40, 36,71875),
(412, ',/images/307,png', 20, 32,8125),
(413, ',/images/308,png', 25, 28,125),
(414, ',/images/309,png', 45, 39,0625),
(415, ',/images/310,png', 10, 17,96875),
(416, ',/images/311,png', 50, 39,84375),
(417, ',/images/312,png', 40, 35,546875),
(418, ',/images/313,png', 35, 25,78125),
(419, ',/images/314,png', 40, 28,90625),
(420, ',/images/315,png', 40, 27,34375),
(421, ',/images/316,png', 45, 39,84375),
(422, ',/images/317,png', 15, 22,265625),
(423, ',/images/318,png', 25, 27,34375),
(424, ',/images/319,png', 25, 27,34375),
(425, ',/images/320,png', 50, 33,984375),
(426, ',/images/321,png', 10, 26,5625),
(427, ',/images/322,png', 15, 14,0625),
(428, ',/images/323,png', 25, 20,703125),
(429, ',/images/324,png', 35, 39,0625),
(430, ',/images/325,png', 45, 30,46875),
(431, ',/images/326,png', 35, 27,34375),
(432, ',/images/327,png', 40, 30,859375),
(433, ',/images/328,png', 30, 34,375),
(434, ',/images/329,png', 50, 43,359375),
(435, ',/images/330,png', 25, 21,875),
(436, ',/images/331,png', 25, 18,359375),
(437, ',/images/332,png', 10, 15,625),
(438, ',/images/333,png', 20, 24,21875),
(439, ',/images/334,png', 25, 30,859375),
(440, ',/images/335,png', 45, 27,734375),
(441, ',/images/336,png', 25, 21,484375),
(442, ',/images/337,png', 10, 24,609375),
(443, ',/images/338,png', 45, 36,71875),
(444, ',/images/339,png', 45, 28,125),
(445, ',/images/340,png', 20, 19,140625),
(446, ',/images/341,png', 35, 31,640625),
(447, ',/images/342,png', 50, 29,6875),
(448, ',/images/343,png', 40, 28,90625),
(449, ',/images/344,png', 50, 32,03125),
(450, ',/images/345,png', 10, 25,78125),
(451, ',/images/346,png', 25, 33,203125),
(452, ',/images/347,png', 15, 17,1875),
(453, ',/images/348,png', 35, 37,5),
(454, ',/images/349,png', 30, 26,171875),
(455, ',/images/350,png', 20, 17,96875),
(456, ',/images/351,png', 50, 32,8125),
(457, ',/images/352,png', 40, 28,90625),
(458, ',/images/353,png', 30, 27,734375),
(459, ',/images/354,png', 25, 25),
(460, ',/images/355,png', 45, 38,671875),
(461, ',/images/356,png', 10, 30,859375),
(462, ',/images/357,png', 25, 33,203125),
(463, ',/images/358,png', 40, 29,296875),
(464, ',/images/359,png', 40, 23,828125),
(465, ',/images/360,png', 45, 39,84375),
(466, ',/images/361,png', 15, 14,453125),
(467, ',/images/362,png', 20, 30,46875),
(468, ',/images/363,png', 25, 30,859375),
(469, ',/images/364,png', 50, 38,28125),
(470, ',/images/365,png', 50, 44,140625),
(471, ',/images/366,png', 20, 20,3125),
(472, ',/images/367,png', 45, 42,578125),
(473, ',/images/368,png', 20, 33,984375),
(474, ',/images/369,png', 35, 27,34375),
(475, ',/images/370,png', 50, 30,078125),
(476, ',/images/371,png', 10, 13,671875),
(477, ',/images/372,png', 35, 28,125),
(478, ',/images/373,png', 45, 32,421875),
(479, ',/images/374,png', 40, 34,375),
(480, ',/images/375,png', 15, 21,09375),
(481, ',/images/376,png', 10, 21,09375),
(482, ',/images/377,png', 30, 35,15625),
(483, ',/images/378,png', 10, 25,78125),
(484, ',/images/379,png', 50, 36,71875),
(485, ',/images/380,png', 35, 14,0625),
(486, ',/images/381,png', 45, 31,25),
(487, ',/images/382,png', 40, 33,984375),
(488, ',/images/383,png', 35, 31,640625),
(489, ',/images/384,png', 25, 30,078125),
(490, ',/images/385,png', 25, 30,46875),
(491, ',/images/386,png', 40, 36,71875),
(492, ',/images/387,png', 45, 33,203125),
(493, ',/images/388,png', 20, 22,65625),
(494, ',/images/389,png', 35, 38,28125),
(495, ',/images/390,png', 15, 25,78125),
(496, ',/images/391,png', 20, 25),
(497, ',/images/392,png', 10, 15,625),
(498, ',/images/393,png', 40, 38,28125),
(499, ',/images/394,png', 15, 27,34375),
(500, ',/images/395,png', 30, 19,921875),
(501, ',/images/396,png', 50, 27,34375),
(502, ',/images/397,png', 40, 28,125),
(503, ',/images/398,png', 15, 19,140625),
(504, ',/images/399,png', 25, 22,265625),
(505, ',/images/400,png', 10, 24,21875);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `haziness`
--
ALTER TABLE `haziness`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `haziness`
--
ALTER TABLE `haziness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
