-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 27, 2017 at 07:53 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ew`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_tbl`
--

CREATE TABLE `address_tbl` (
  `AddID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Add1` varchar(100) NOT NULL,
  `Add2` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Zipcode` varchar(50) NOT NULL,
  `Country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `AdminID` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `UserName` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `LastLogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brand_tbl`
--

CREATE TABLE `brand_tbl` (
  `BrandID` int(11) NOT NULL,
  `BrandName` varchar(50) NOT NULL,
  `BrandRanking` int(11) DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand_tbl`
--

INSERT INTO `brand_tbl` (`BrandID`, `BrandName`, `BrandRanking`) VALUES
(1, 'American Vintage', -1),
(2, 'Angel Dear', -1),
(3, 'Baby Cz', -1),
(4, 'Baby Luigi', -1),
(5, 'Bambino', -1),
(6, 'Busy Bees', -1),
(7, 'Carolina Zapf', -1),
(8, 'CPC', -1),
(9, 'CPC Design', -1),
(10, 'Dani', -1),
(11, 'Darcy Brown', -1),
(12, 'E Land', -1),
(13, 'Florence Eiseman', -1),
(14, 'Honest Company', -1),
(15, 'Issac Mizrahi', -1),
(16, 'Jeanine Johnsen', -1),
(17, 'Kissy Kissy', -1),
(18, 'Laran Ginha', -1),
(19, 'Laranjiha', -1),
(20, 'Larinjiha', -1),
(21, 'Lucky Brand', -1),
(22, 'Luigi Kids', -1),
(23, 'Margery Ellen', -1),
(24, 'Marniere', -1),
(25, 'Miss B', -1),
(26, 'Monteau Girl', -1),
(27, 'Nabee', -1),
(28, 'Nautica', -1),
(29, 'New Jammies', -1),
(30, 'Olian', -1),
(31, 'Oscar De La Renta', -1),
(32, 'Papo D Anjo', -1),
(33, 'Perit Bateau', -1),
(34, 'Petit Bateau', -1),
(35, 'Petit Bateu', -1),
(36, 'Rachel Riley', -1),
(37, 'Ralph Lauren', -1),
(38, 'Sara Louise', -1),
(39, 'Sarah Louise', -1),
(40, 'Stella Cove', -1),
(41, 'TF Laurence', -1),
(42, 'TF Lawrence', -1),
(43, 'Three Hearts', -1),
(44, 'Tommy Hilfiger', -1),
(45, 'Vineyard Vines', -1),
(46, 'test', -1);

-- --------------------------------------------------------

--
-- Table structure for table `child_tbl`
--

CREATE TABLE `child_tbl` (
  `ChildID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ChildFirstName` varchar(100) NOT NULL,
  `ChildMiddleName` varchar(100) NOT NULL,
  `ChildLastName` varchar(100) NOT NULL,
  `GenderID` int(11) NOT NULL,
  `Birthday` date NOT NULL,
  `TopSizeID` int(11) NOT NULL,
  `BottomSizeID` int(11) NOT NULL,
  `Plan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `child_tbl`
--

INSERT INTO `child_tbl` (`ChildID`, `UserID`, `ChildFirstName`, `ChildMiddleName`, `ChildLastName`, `GenderID`, `Birthday`, `TopSizeID`, `BottomSizeID`, `Plan`) VALUES
(1, 1, 'Jacky', '_', 'Chen', 1, '1993-04-01', 1, 2, 'Premium'),
(2, 1, 'Harry', '', 'Potter', 1, '2017-11-14', 6, 11, 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `color_tbl`
--

CREATE TABLE `color_tbl` (
  `ColorID` int(11) NOT NULL,
  `Color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color_tbl`
--

INSERT INTO `color_tbl` (`ColorID`, `Color`) VALUES
(1, 'Blue/White Striped'),
(2, 'Denim'),
(5, 'Blue Orange'),
(8, 'Blue Yellow'),
(13, 'Navy/WHite'),
(17, 'Navy/Vanilla'),
(23, 'Vanilla/Navy'),
(29, 'Navy'),
(36, 'Emberglow'),
(41, 'Light Grey'),
(44, 'Striped Pink'),
(45, 'Lavendar'),
(47, 'Light Pink'),
(49, 'Blue'),
(52, 'Orange'),
(54, 'White'),
(55, 'Navy/ FR Blue'),
(56, 'Navy/Dark Grey'),
(58, 'Double Striped Navy/Red'),
(60, 'Double Striped Teak Navy'),
(66, 'Navy/Orange'),
(67, 'Navy/Red Nautical Stripe'),
(70, 'Nicky Silver'),
(72, 'Striped Ragland Navy Red'),
(75, 'Light Blue'),
(77, 'Navy/Baby Blue'),
(79, 'Navy/Green'),
(82, 'Navy/Light Blue'),
(84, 'Purple/White'),
(85, 'Red/White'),
(86, 'Red Plaid'),
(87, 'Blue Turqoise'),
(96, 'Blue/White'),
(102, 'Gingham Navy'),
(103, 'Gingham Purple'),
(104, 'Gingham Red'),
(105, 'RNCR'),
(109, 'Navy/Charcoal'),
(114, 'Charcoal'),
(128, 'Barn Charcoal'),
(135, 'Black'),
(137, 'Dark Sky Blue'),
(139, 'Multi Purple Peter Pan Floral'),
(140, 'Pink/Lavendar Peter Pan Floral'),
(144, 'Snow Pink'),
(145, 'Cream Multi'),
(146, 'Pink'),
(151, 'Silver'),
(163, 'Navy/Cream'),
(165, 'Rose'),
(166, 'Field Flower'),
(170, 'Gold/Cream'),
(174, 'Red/Cream'),
(176, 'Cream'),
(191, 'Cream/Multi'),
(193, 'Cream/Pink'),
(213, 'White/Navy'),
(221, 'Whie/Multi'),
(224, 'Red'),
(225, 'Peach'),
(238, 'White/Multi'),
(239, 'White/Pink'),
(244, 'Plum'),
(248, 'Moon/Navy'),
(253, 'Baby Blue/Cream'),
(254, 'Baby Blue'),
(255, 'Navy/White Nautical'),
(256, 'French Blue'),
(258, 'Silver Cream'),
(259, 'Silver/Cream'),
(261, 'Crimson'),
(262, 'Tweed Large Check'),
(264, 'Blue Cream'),
(272, 'Grey'),
(278, 'Moon/White'),
(283, 'Striped Ragland Navy Cream'),
(289, 'Moon'),
(300, 'Light Blue/White'),
(306, 'Bright Pink/White'),
(309, 'Light Pink/Cream'),
(311, 'Pink/Green'),
(320, 'Green/White'),
(325, 'Yellow/Blue Stripe'),
(326, 'Green/Navy'),
(327, 'Turquoise/White'),
(329, 'Turquoise Floral'),
(330, 'Pink/White'),
(332, 'White Floral'),
(336, 'Blue/Red Check'),
(337, 'Teak Check'),
(340, 'Teak/White'),
(348, 'Teak/Navy'),
(352, 'Brown'),
(360, 'Brown/Navy'),
(362, 'Color Block French Blue/Navy'),
(363, 'Dark Grey'),
(364, 'Dark Grey/Blue'),
(373, 'Slim Earl Plaid'),
(376, 'Cornflower Blue'),
(379, 'Turqoise Navy Checkered'),
(389, 'Light Blue/Navy'),
(395, 'Green/Multi'),
(402, 'Red/Green/Blue '),
(404, 'Green/Blue/White'),
(407, 'Red/Navy'),
(408, 'Yellow/Blue/White'),
(418, 'Green/Blue Wide Stripe'),
(420, 'Red/Blue Stripe'),
(421, 'Yellow/Blue Wide Stripe'),
(423, 'Aquamarine'),
(426, 'Bright Pink'),
(451, 'Navy Polka Dot'),
(454, 'Dark Peach'),
(467, 'Gold Dots'),
(475, 'Purple Paisley'),
(481, 'Red Paisley'),
(483, 'Teal/Hot Pink'),
(488, 'Navy/White Stripe w/Pink'),
(489, 'Cream/Purple'),
(496, 'Gold'),
(543, 'White w/ Navy trim'),
(555, 'White w/ Pink trim'),
(574, 'Navy Striped'),
(578, 'White/Blue'),
(580, 'Washed Indigo Denim'),
(581, 'Red/Black/White'),
(588, 'Blue Stripe'),
(591, 'Sea Plane'),
(592, 'Toby Check'),
(593, 'Cream Red Tan'),
(594, 'Blue/White/Brown'),
(595, 'Blue/White/Red'),
(597, 'Red/Grey'),
(598, 'Turqoise/Blue'),
(599, 'Tan/Multi'),
(601, 'Cornflower Blue w/ Bow'),
(603, 'Cornflower Blue/White Striped'),
(611, 'Khaki'),
(612, 'Brown Tweed'),
(616, 'Royal Blue'),
(619, 'Navy Gingham'),
(634, 'Dark Khaki'),
(642, 'EK Red'),
(643, 'Hickory'),
(662, 'Green'),
(676, 'Azure Blue'),
(677, 'Coral/Navy'),
(687, 'Pistachio/Navy'),
(688, 'Red/Blue/White'),
(695, 'Green/Blue'),
(697, 'Navy/Coral'),
(699, 'Green Grapes'),
(702, 'Pistachio'),
(704, 'Salmon (Navy Lobster)'),
(705, 'Stone'),
(711, 'Sugar Coral'),
(718, 'Navy/White/Orange'),
(752, 'Bali Navy'),
(759, 'Navy Blue (8410842)'),
(763, 'Purple'),
(764, 'Aqua'),
(773, 'Teal Starfish'),
(775, 'Peach/White'),
(784, 'White Navy'),
(785, 'Royal/White'),
(788, 'Pink White'),
(793, 'White Aqua'),
(794, 'Red/White/Black'),
(796, 'Navy/Blue'),
(797, 'Blue Floral'),
(799, 'Pink Horses'),
(800, 'Blue Plaid'),
(802, 'Green Check'),
(803, 'Pink Plaid'),
(804, 'Pink Gingham'),
(805, 'Pink/Blue'),
(806, 'White/Light Blue'),
(807, 'Light Blue Gingham'),
(808, 'White Outerspace'),
(809, 'Multi'),
(810, 'White Airplane'),
(811, 'White Circus'),
(812, 'Light Blue Duckling'),
(813, 'White Lighthouse'),
(814, 'White Sailboat'),
(815, 'White/Yellow'),
(816, 'White/Blue/Red'),
(817, 'White Roses'),
(818, 'Grey/White'),
(819, 'Pink Dots'),
(820, 'Pink Floral'),
(821, 'White/Red'),
(822, 'Light Blue/ Red'),
(823, 'Grey/Blue'),
(824, 'White w/ Crowns'),
(825, 'White w/ Snowflake'),
(826, 'White/Silver'),
(827, 'Fuschia'),
(828, 'Blue/Cream'),
(829, 'White w/ Black Stripe'),
(830, 'Light Green'),
(831, 'Xmas'),
(832, 'White w/ Whales'),
(833, 'Red/Green'),
(834, 'Violet Gingham'),
(835, 'Periwinkle'),
(836, 'Orchid'),
(837, 'Violet Multi'),
(838, 'White/Violet'),
(839, 'Violet/Green'),
(840, 'Violet/White'),
(841, 'Ivory/Violet'),
(842, 'White/Navy Striped'),
(843, 'Navy/White/Red'),
(844, 'Dark Denim'),
(845, 'Grey/Navy'),
(846, 'Slate'),
(847, 'Ivory'),
(848, 'Tan'),
(849, 'Beige'),
(850, 'Grey/Red Trim'),
(851, 'White/Navy Pinstripe'),
(852, 'Gingham Royal Blue'),
(853, 'Red Slide Stripe'),
(854, 'Aqua/Yellow'),
(855, 'Wide Stripe Aqua'),
(856, 'Tan/White'),
(857, 'Blue/White '),
(858, 'Burgundy/Ivory'),
(859, 'Navy/Ivory'),
(860, 'Bright Blue Stripe'),
(861, 'Coral Pink'),
(862, 'Millereis Navy'),
(863, 'Navy Dots'),
(864, 'Olive'),
(865, 'Grey/Pink'),
(866, 'White/Green'),
(867, 'Coral'),
(868, 'Burgundy'),
(869, 'Indigo'),
(870, 'Charcoal/Silver'),
(871, 'Navy/Brown'),
(872, 'Pink/Turquoise'),
(873, 'Red/White Striped'),
(874, 'White/Silver/Navy'),
(875, 'Pink/Black'),
(876, 'Red Striped'),
(877, 'Teal/Mauve'),
(878, 'Striped Navy/Grey'),
(879, 'Sea Foam Blue w/ Boat'),
(880, 'Navy/White Striped'),
(881, 'White/Navy '),
(882, 'Grey/Red'),
(883, 'Navy/Red'),
(884, 'Beige Plaid'),
(885, 'Cream/Blue'),
(886, 'Burgundy/Grey'),
(887, 'Cream/Brown'),
(888, 'Green Navy'),
(889, 'Maroon Plaid'),
(890, 'Green/Cream'),
(891, 'Putple'),
(892, 'Coral/White'),
(893, 'Blue Gingham'),
(894, 'Herringbone Grey'),
(895, 'Navy/Red/White'),
(896, 'Blue Boats'),
(897, 'Red/Navy/White'),
(898, 'Apricot'),
(899, 'Frill Dark Sky Blue'),
(900, 'Frill Turquoise'),
(901, 'Grey w/ Grapes'),
(902, 'Red Anchor Print'),
(903, 'Wine'),
(904, 'Aqua/Pink'),
(905, 'Cat Grey/Pink'),
(906, 'Damasque Royal Blue'),
(907, 'Damasque Silver'),
(908, 'Grey Polka Dots'),
(909, 'Poppy Hearts'),
(910, 'Red/Gold'),
(911, 'Yellow Polka Dots'),
(912, 'Bordeaux'),
(913, 'Duck Egg'),
(914, 'Sky Blue'),
(915, 'Pink/Brown'),
(916, 'Shift Blue'),
(917, 'Heart Navy/Ivory'),
(918, 'Pink Ivory'),
(919, 'Navy Blue Polka Dot'),
(920, 'Navy Blue Polka Dot/Red Bow'),
(921, 'Maroon/Grey'),
(922, 'Cream/Red'),
(923, 'Hot Pink'),
(924, 'Ivory/Blue'),
(925, 'Caramel/Red'),
(926, 'Lilac'),
(927, 'White Boat Print'),
(928, 'Navy/Tan'),
(929, 'Ivory/Navy '),
(930, 'Navy/Silver'),
(931, 'Ivory/Purple'),
(932, 'Yellow/White'),
(933, 'Navy/Gold'),
(934, 'Cream/Gold'),
(935, 'Rose Pink'),
(936, 'Light Red'),
(937, 'Navy '),
(938, 'Jade'),
(939, 'Turquoise'),
(940, 'Navy w/ Anchor'),
(941, 'Pink/Cream'),
(942, 'Nautical Navy'),
(943, 'Grey Ivory'),
(944, 'Grey/Ivory'),
(945, 'Blue Ivory'),
(946, 'Cream w/ Snowflakes'),
(947, 'White Stripe'),
(948, 'Light Brown'),
(949, 'Navy w/ Bow'),
(950, 'Floral Blue'),
(951, 'White/Bright Pink'),
(952, 'Pink Print'),
(953, 'White/Purple'),
(954, 'Ruffle White'),
(955, 'Hot Pink Print'),
(956, 'Turquoise/Pink'),
(957, 'Navy Anchor'),
(958, 'Blue/Green'),
(959, 'Blue Check'),
(960, 'Light Khaki'),
(961, 'Light Steel'),
(962, 'Blue Blazer'),
(963, 'Blue Point'),
(964, 'Vanilla'),
(965, 'Navy/Pink');

-- --------------------------------------------------------

--
-- Table structure for table `country_origin_tbl`
--

CREATE TABLE `country_origin_tbl` (
  `CountOrigID` int(11) NOT NULL,
  `CountOrig` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_origin_tbl`
--

INSERT INTO `country_origin_tbl` (`CountOrigID`, `CountOrig`) VALUES
(1, 'China'),
(2, 'Korea'),
(3, 'India'),
(4, 'Peru'),
(5, 'Hong Kong'),
(6, 'USA'),
(7, 'EEC'),
(8, 'Phillipines'),
(9, 'Portugal'),
(10, 'El Salvador'),
(11, 'Vietnam'),
(12, 'Morocco'),
(13, 'Mauritus'),
(14, 'Tunisia'),
(15, 'Madagascar'),
(16, 'Philippines'),
(17, 'Turkey'),
(18, 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_tbl`
--

CREATE TABLE `feedback_tbl` (
  `FeedbackID` int(11) NOT NULL,
  `OPID` int(11) NOT NULL,
  `FitRating` int(11) NOT NULL,
  `StyleRating` int(11) NOT NULL,
  `InWaredrobePurchase` tinyint(1) NOT NULL,
  `AffiliatePurchase` tinyint(1) NOT NULL,
  `PurchasePrice` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gender_tbl`
--

CREATE TABLE `gender_tbl` (
  `GenderID` int(11) NOT NULL,
  `Gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gender_tbl`
--

INSERT INTO `gender_tbl` (`GenderID`, `Gender`) VALUES
(1, 'B'),
(2, 'G'),
(3, 'U');

-- --------------------------------------------------------

--
-- Table structure for table `genre_tbl`
--

CREATE TABLE `genre_tbl` (
  `GenreID` int(11) NOT NULL,
  `Genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre_tbl`
--

INSERT INTO `genre_tbl` (`GenreID`, `Genre`) VALUES
(1, 'Jazz/Classic'),
(2, 'Techno/Funky'),
(3, 'Indie/Sustainable'),
(4, 'Hip Hop/Streetwear'),
(5, 'Pop/Trendy'),
(6, 'Lullaby/PJs');

-- --------------------------------------------------------

--
-- Table structure for table `genus_tbl`
--

CREATE TABLE `genus_tbl` (
  `GenusID` int(11) NOT NULL,
  `StyleID` varchar(4) DEFAULT NULL,
  `Genus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genus_tbl`
--

INSERT INTO `genus_tbl` (`GenusID`, `StyleID`, `Genus`) VALUES
(1, 'T', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `item_color_tbl`
--

CREATE TABLE `item_color_tbl` (
  `ItemColorID` int(11) NOT NULL,
  `ItemID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ColorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_genre_tbl`
--

CREATE TABLE `item_genre_tbl` (
  `ItemGenreID` int(11) NOT NULL,
  `ItemID` varchar(11) NOT NULL,
  `GenreID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_genre_tbl`
--

INSERT INTO `item_genre_tbl` (`ItemGenreID`, `ItemID`, `GenreID`) VALUES
(1, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_season_tbl`
--

CREATE TABLE `item_season_tbl` (
  `ItemSeasonID` int(11) NOT NULL,
  `ItemID` varchar(50) NOT NULL,
  `SeasonID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_season_tbl`
--

INSERT INTO `item_season_tbl` (`ItemSeasonID`, `ItemID`, `SeasonID`) VALUES
(1, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_size_tbl`
--

CREATE TABLE `item_size_tbl` (
  `ItemSizeID` int(11) NOT NULL,
  `ItemID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `SizeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_size_tbl`
--

INSERT INTO `item_size_tbl` (`ItemSizeID`, `ItemID`, `SizeID`) VALUES
(1, '1', 11),
(2, '1', 38),
(3, '1', 11);

-- --------------------------------------------------------

--
-- Table structure for table `item_species_tbl`
--

CREATE TABLE `item_species_tbl` (
  `ItemSpeciesID` int(11) NOT NULL,
  `ItemID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `SpeciesID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_species_tbl`
--

INSERT INTO `item_species_tbl` (`ItemSpeciesID`, `ItemID`, `SpeciesID`) VALUES
(1, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_tbl`
--

CREATE TABLE `item_tbl` (
  `ItemID` varchar(50) NOT NULL,
  `BrandID` int(11) DEFAULT NULL,
  `GenderID` int(11) DEFAULT NULL,
  `MaterialID` int(11) DEFAULT NULL,
  `CountOrigID` int(11) DEFAULT NULL,
  `PatternID` int(11) DEFAULT NULL,
  `MSRP` varchar(11) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_tbl`
--

INSERT INTO `item_tbl` (`ItemID`, `BrandID`, `GenderID`, `MaterialID`, `CountOrigID`, `PatternID`, `MSRP`, `Image`) VALUES
('1', 1, 1, 1, 1, 1, '$120', NULL),
('2', 2, 2, 61, 1, 71, '100', '2');

-- --------------------------------------------------------

--
-- Table structure for table `item_temp_tbl`
--

CREATE TABLE `item_temp_tbl` (
  `ItemTempID` int(11) NOT NULL,
  `ItemID` varchar(50) NOT NULL,
  `TempID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_temp_tbl`
--

INSERT INTO `item_temp_tbl` (`ItemTempID`, `ItemID`, `TempID`) VALUES
(1, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `material_tbl`
--

CREATE TABLE `material_tbl` (
  `MaterialID` int(11) NOT NULL,
  `Material` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `material_tbl`
--

INSERT INTO `material_tbl` (`MaterialID`, `Material`) VALUES
(1, '100% Cotton'),
(2, 'Plaid'),
(3, '95% Acrylic 5% Polyester'),
(4, '100% Cottton'),
(5, '100% PIma Cotton'),
(6, '100% Mercerized Cotton'),
(7, '90% Cotton 10% Cashmere'),
(8, '100% Polyester'),
(9, '100% Cotton Valeur'),
(10, '100%'),
(11, '60% Cotton 40% PES'),
(13, '100% Silk'),
(14, '100% China'),
(15, '96% Cotton 4% Lycra'),
(16, '57% Polyester 43% Cotton'),
(17, '70% Cotton 30% Polyester'),
(18, '80% Wool 20% Polyamide'),
(19, '80% Wool 20% '),
(20, '67% Polyester 33% Cotton'),
(21, '98% Cotton 2% Polyurethane'),
(22, '95/5 Spandex'),
(23, '97% Cotton 3% Polyurethene'),
(24, '95% Cotton 5% Spandex'),
(25, '50% Cotton/50% Polyester'),
(26, '100% Acrylic'),
(27, '80% Nylon 20% Spandex'),
(28, '80% Cotton 20% Polyester'),
(29, '1'),
(30, '75% Cotton 25% Polyester '),
(31, '60% Cotton 40% Polyester'),
(32, '65% Polyester 35% Cotton'),
(33, '55% Cotton 45% Polyester'),
(34, '100% Organic Cotton'),
(36, '99% Cotton 1% Elasthanne'),
(37, '97/3 Elasthanine'),
(38, '100% Polyamide'),
(39, '100% Polamide'),
(40, '55% Wool 45% Cotton'),
(41, '53% Wool 47% Cotton'),
(42, '95% cotton 5% Polyamide '),
(43, '85% Cotton 15% Polyamide'),
(44, '99% Cotton 1% Elasthane'),
(45, '99& Cotton 1% Elasthane'),
(46, '93% Cotton 7% Lycra'),
(47, '94% Cotton 6% Elasthanne Lycra'),
(48, '98% Cotton 2% Elasthanne'),
(49, '100% Cotton Terry'),
(50, '57% Cotton 43% Wool'),
(51, '89% Wool 11% Cashmere'),
(52, '57% Wool 43% Cotton'),
(53, '86% Cotton 6% Viscose 4% Polyamide 4% Polyester'),
(55, '63% Rayon 32% Nylon 5% Elastane'),
(56, '100% Ramie'),
(57, '80/20 Velour'),
(58, '70% Cotton 12% Cashmere 18% Spandex'),
(59, '80% Cotton 20% Polyester '),
(60, 'Ramie'),
(61, '45% Cotton 55% Linen'),
(62, '70/30 Spandex'),
(63, '70% Cotton 30% Spandex'),
(64, '92% Cashmere 8% Cashmere'),
(65, '92% Cotton 8% Cashmere'),
(66, '85% Cotton 15% Cashmere'),
(67, 'Velour 80/20'),
(68, '41% Cotton 32% Linen 27% Polyester'),
(69, '100% Wool'),
(70, '99% Cotton 1% Spandex');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_tbl`
--

CREATE TABLE `order_product_tbl` (
  `OPID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `PorductID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_tbl`
--

CREATE TABLE `order_tbl` (
  `OrderID` int(11) NOT NULL,
  `CreateDate` date NOT NULL,
  `ChildID` int(11) NOT NULL,
  `AddID` int(11) NOT NULL,
  `ReturnDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pattern_tbl`
--

CREATE TABLE `pattern_tbl` (
  `PatternID` int(11) NOT NULL,
  `Pattern` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pattern_tbl`
--

INSERT INTO `pattern_tbl` (`PatternID`, `Pattern`) VALUES
(1, 'Chambray'),
(2, 'Plaid'),
(3, 'Marbled'),
(4, 'Stripes'),
(5, 'Solid'),
(6, 'Pointelle Knit'),
(7, 'Solid Knit'),
(8, 'Airplane Graphic'),
(9, 'Denim'),
(10, 'Flower'),
(11, 'Flowers'),
(12, 'Floral'),
(13, 'Soiid'),
(14, 'Solid w/ Trim'),
(15, 'Striped'),
(16, 'Lobster'),
(17, 'Striped w/ Whale'),
(18, 'Mini Stripes'),
(19, 'Check'),
(20, 'Horse Shield'),
(21, 'Gingham'),
(22, 'Searucker'),
(23, 'Stripe'),
(24, 'Chevron'),
(25, 'Motorcycle'),
(26, 'Paisley'),
(27, 'Dots'),
(28, 'Scallop'),
(29, 'Searsucker'),
(30, 'Searsucket'),
(31, 'Anchors'),
(32, 'Searsucker Anchor'),
(33, 'Airplane Embroidered'),
(34, 'Reindeer'),
(35, 'Fagin Fairisle '),
(36, 'Ribbons'),
(37, 'Lacrosse'),
(38, 'Dogs'),
(39, 'Cars'),
(40, 'Whales'),
(41, 'Shark'),
(42, 'Whale'),
(43, 'Block Stripe'),
(44, 'Shoes'),
(45, 'Umbrellas'),
(46, 'Snowflake'),
(47, 'Logo'),
(48, 'Circus'),
(49, 'Airplane'),
(50, 'Giraffe'),
(51, 'Sailboat Decal'),
(52, 'Stars'),
(53, 'Ducking'),
(54, 'Fair Isle'),
(55, 'Solid w/ Fair Isle Trim'),
(56, 'Zoo'),
(57, 'Solid w/ Gingham Trimmed'),
(58, 'Solid '),
(59, 'Palms'),
(60, 'Moose Graphic/Stripes'),
(61, 'Stripe w/ Decal'),
(62, 'Striped w/ Decal'),
(63, 'Color Blocked'),
(64, 'Color Block'),
(65, 'Side Stripe'),
(66, 'Solid w/ Elbow Patches'),
(67, 'Solid w/Trim'),
(68, 'Wide Stripe'),
(69, 'Snowflakes'),
(70, 'Micro Check'),
(71, 'Anchor'),
(72, 'Flamingos'),
(73, 'Desserts'),
(74, 'Sea Horse'),
(75, 'Hearts'),
(76, 'Deer'),
(77, 'Poodles'),
(78, 'Robin '),
(79, 'Polar Bear'),
(80, 'Cherries'),
(81, 'Butterfly'),
(82, 'Beach'),
(83, 'Swan'),
(84, 'Links'),
(85, 'Lace'),
(86, 'Gold Striped Waistband'),
(87, 'Heart Pocket'),
(88, 'Solid Frill'),
(89, 'Houndstooth'),
(90, 'Eyelete Lace'),
(91, 'Diamond'),
(92, 'Aztec'),
(93, 'Polka Dots'),
(94, 'Beach '),
(95, 'Scotty Dogs'),
(96, 'Heart');

-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

CREATE TABLE `product_tbl` (
  `ProductID` int(11) NOT NULL,
  `ItemColorID` int(11) NOT NULL,
  `ItemSizeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `season_tbl`
--

CREATE TABLE `season_tbl` (
  `SeasonID` int(11) NOT NULL,
  `Season` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `season_tbl`
--

INSERT INTO `season_tbl` (`SeasonID`, `Season`) VALUES
(1, 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `size_chart_tbl`
--

CREATE TABLE `size_chart_tbl` (
  `SCID` int(11) NOT NULL,
  `SizeID` int(11) NOT NULL,
  `BrandID` int(11) NOT NULL,
  `HMin` decimal(4,2) DEFAULT NULL,
  `HMax` decimal(4,2) DEFAULT NULL,
  `WeightMin` decimal(5,2) DEFAULT NULL,
  `WeightMax` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `size_tbl`
--

CREATE TABLE `size_tbl` (
  `SizeID` int(11) NOT NULL,
  `Size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `size_tbl`
--

INSERT INTO `size_tbl` (`SizeID`, `Size`) VALUES
(1, '4T'),
(2, '4Y'),
(3, '6Y'),
(4, '7Y'),
(5, '3T'),
(6, '12Y'),
(7, '5Y'),
(8, '6X'),
(9, '2T'),
(10, '8Y'),
(11, '0-3mo'),
(12, '3-6mo'),
(13, '12-18mo'),
(14, '6-12mo'),
(15, '18-24mo'),
(16, '2Y'),
(17, '3Y'),
(18, '8-12mo'),
(19, '4-5Y'),
(20, '12mo'),
(21, '18mo'),
(22, '6mo'),
(23, '9mo'),
(24, '10Y'),
(25, '6-8Y'),
(26, 'Newborn'),
(27, '3mo'),
(28, '6-7Y'),
(29, '24mo'),
(30, '4T-5Y'),
(31, '12'),
(32, '10x'),
(33, '6-9mo'),
(34, 'S'),
(35, 'Premie'),
(36, '7-8Y'),
(37, '24 Months'),
(38, '1Y'),
(39, '1mo'),
(40, '36mo'),
(41, '5-6Y'),
(42, '9Y'),
(43, '14Y');

-- --------------------------------------------------------

--
-- Table structure for table `species_tbl`
--

CREATE TABLE `species_tbl` (
  `SpeciesID` int(11) NOT NULL,
  `GenusID` int(11) NOT NULL,
  `Species` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `species_tbl`
--

INSERT INTO `species_tbl` (`SpeciesID`, `GenusID`, `Species`) VALUES
(1, 1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `style_tbl`
--

CREATE TABLE `style_tbl` (
  `StyleID` varchar(4) CHARACTER SET utf8 NOT NULL,
  `Style` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `style_tbl`
--

INSERT INTO `style_tbl` (`StyleID`, `Style`) VALUES
('B', 'Bottom'),
('D', 'Dress'),
('O', 'One piece'),
('T', 'Top');

-- --------------------------------------------------------

--
-- Table structure for table `temperature_tbl`
--

CREATE TABLE `temperature_tbl` (
  `TempID` int(11) NOT NULL,
  `Temp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `temperature_tbl`
--

INSERT INTO `temperature_tbl` (`TempID`, `Temp`) VALUES
(1, '60-90');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `UserID` int(11) NOT NULL,
  `DateCreated` date NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`UserID`, `DateCreated`, `FirstName`, `LastName`, `Email`) VALUES
(1, '2017-11-11', 'Tom', 'Soya', '123@test.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_tbl`
--
ALTER TABLE `address_tbl`
  ADD PRIMARY KEY (`AddID`);

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `brand_tbl`
--
ALTER TABLE `brand_tbl`
  ADD PRIMARY KEY (`BrandID`);

--
-- Indexes for table `child_tbl`
--
ALTER TABLE `child_tbl`
  ADD PRIMARY KEY (`ChildID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `GenderID` (`GenderID`),
  ADD KEY `TopSizeID` (`TopSizeID`),
  ADD KEY `BottomSizeID` (`BottomSizeID`);

--
-- Indexes for table `color_tbl`
--
ALTER TABLE `color_tbl`
  ADD PRIMARY KEY (`ColorID`);

--
-- Indexes for table `country_origin_tbl`
--
ALTER TABLE `country_origin_tbl`
  ADD PRIMARY KEY (`CountOrigID`);

--
-- Indexes for table `feedback_tbl`
--
ALTER TABLE `feedback_tbl`
  ADD PRIMARY KEY (`FeedbackID`),
  ADD KEY `ChildID` (`OPID`);

--
-- Indexes for table `gender_tbl`
--
ALTER TABLE `gender_tbl`
  ADD PRIMARY KEY (`GenderID`);

--
-- Indexes for table `genre_tbl`
--
ALTER TABLE `genre_tbl`
  ADD PRIMARY KEY (`GenreID`);

--
-- Indexes for table `genus_tbl`
--
ALTER TABLE `genus_tbl`
  ADD PRIMARY KEY (`GenusID`),
  ADD KEY `StyleID` (`StyleID`);

--
-- Indexes for table `item_color_tbl`
--
ALTER TABLE `item_color_tbl`
  ADD PRIMARY KEY (`ItemColorID`),
  ADD KEY `ColorID` (`ColorID`),
  ADD KEY `ItemID` (`ItemID`);

--
-- Indexes for table `item_genre_tbl`
--
ALTER TABLE `item_genre_tbl`
  ADD PRIMARY KEY (`ItemGenreID`),
  ADD KEY `ItemID` (`ItemID`),
  ADD KEY `GenreID` (`GenreID`);

--
-- Indexes for table `item_season_tbl`
--
ALTER TABLE `item_season_tbl`
  ADD PRIMARY KEY (`ItemSeasonID`),
  ADD KEY `ItemID` (`ItemID`),
  ADD KEY `SeasonID` (`SeasonID`);

--
-- Indexes for table `item_size_tbl`
--
ALTER TABLE `item_size_tbl`
  ADD PRIMARY KEY (`ItemSizeID`),
  ADD KEY `SizeID` (`SizeID`),
  ADD KEY `item_size_tbl_ibfk_1` (`ItemID`);

--
-- Indexes for table `item_species_tbl`
--
ALTER TABLE `item_species_tbl`
  ADD PRIMARY KEY (`ItemSpeciesID`),
  ADD KEY `SpeciesID` (`SpeciesID`),
  ADD KEY `ItemID` (`ItemID`);

--
-- Indexes for table `item_tbl`
--
ALTER TABLE `item_tbl`
  ADD PRIMARY KEY (`ItemID`),
  ADD KEY `BrandID` (`BrandID`),
  ADD KEY `GenderID` (`GenderID`),
  ADD KEY `MaterialID` (`MaterialID`),
  ADD KEY `CountOrigID` (`CountOrigID`),
  ADD KEY `PatternID` (`PatternID`);

--
-- Indexes for table `item_temp_tbl`
--
ALTER TABLE `item_temp_tbl`
  ADD PRIMARY KEY (`ItemTempID`),
  ADD KEY `ItemID` (`ItemID`),
  ADD KEY `TempID` (`TempID`);

--
-- Indexes for table `material_tbl`
--
ALTER TABLE `material_tbl`
  ADD PRIMARY KEY (`MaterialID`);

--
-- Indexes for table `order_product_tbl`
--
ALTER TABLE `order_product_tbl`
  ADD PRIMARY KEY (`OPID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ItemID` (`PorductID`);

--
-- Indexes for table `order_tbl`
--
ALTER TABLE `order_tbl`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `AddID` (`AddID`);

--
-- Indexes for table `pattern_tbl`
--
ALTER TABLE `pattern_tbl`
  ADD PRIMARY KEY (`PatternID`);

--
-- Indexes for table `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `ItemColorID` (`ItemColorID`),
  ADD KEY `ItemSizeID` (`ItemSizeID`);

--
-- Indexes for table `season_tbl`
--
ALTER TABLE `season_tbl`
  ADD PRIMARY KEY (`SeasonID`);

--
-- Indexes for table `size_chart_tbl`
--
ALTER TABLE `size_chart_tbl`
  ADD PRIMARY KEY (`SCID`),
  ADD KEY `BrandID` (`BrandID`),
  ADD KEY `SizeID` (`SizeID`);

--
-- Indexes for table `size_tbl`
--
ALTER TABLE `size_tbl`
  ADD PRIMARY KEY (`SizeID`);

--
-- Indexes for table `species_tbl`
--
ALTER TABLE `species_tbl`
  ADD PRIMARY KEY (`SpeciesID`),
  ADD KEY `GenusID` (`GenusID`);

--
-- Indexes for table `style_tbl`
--
ALTER TABLE `style_tbl`
  ADD PRIMARY KEY (`StyleID`);

--
-- Indexes for table `temperature_tbl`
--
ALTER TABLE `temperature_tbl`
  ADD PRIMARY KEY (`TempID`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child_tbl`
--
ALTER TABLE `child_tbl`
  ADD CONSTRAINT `child_tbl_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user_tbl` (`UserID`),
  ADD CONSTRAINT `child_tbl_ibfk_2` FOREIGN KEY (`GenderID`) REFERENCES `gender_tbl` (`GenderID`),
  ADD CONSTRAINT `child_tbl_ibfk_3` FOREIGN KEY (`TopSizeID`) REFERENCES `size_tbl` (`SizeID`),
  ADD CONSTRAINT `child_tbl_ibfk_4` FOREIGN KEY (`BottomSizeID`) REFERENCES `size_tbl` (`SizeID`);

--
-- Constraints for table `feedback_tbl`
--
ALTER TABLE `feedback_tbl`
  ADD CONSTRAINT `feedback_tbl_ibfk_1` FOREIGN KEY (`OPID`) REFERENCES `order_product_tbl` (`OPID`);

--
-- Constraints for table `genus_tbl`
--
ALTER TABLE `genus_tbl`
  ADD CONSTRAINT `genus_tbl_ibfk_1` FOREIGN KEY (`StyleID`) REFERENCES `style_tbl` (`StyleID`);

--
-- Constraints for table `item_color_tbl`
--
ALTER TABLE `item_color_tbl`
  ADD CONSTRAINT `item_color_tbl_ibfk_1` FOREIGN KEY (`ColorID`) REFERENCES `color_tbl` (`ColorID`),
  ADD CONSTRAINT `item_color_tbl_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `item_tbl` (`ItemID`);

--
-- Constraints for table `item_genre_tbl`
--
ALTER TABLE `item_genre_tbl`
  ADD CONSTRAINT `item_genre_tbl_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `item_tbl` (`ItemID`),
  ADD CONSTRAINT `item_genre_tbl_ibfk_2` FOREIGN KEY (`GenreID`) REFERENCES `genre_tbl` (`GenreID`);

--
-- Constraints for table `item_season_tbl`
--
ALTER TABLE `item_season_tbl`
  ADD CONSTRAINT `item_season_tbl_ibfk_1` FOREIGN KEY (`SeasonID`) REFERENCES `season_tbl` (`SeasonID`),
  ADD CONSTRAINT `item_season_tbl_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `item_tbl` (`ItemID`);

--
-- Constraints for table `item_size_tbl`
--
ALTER TABLE `item_size_tbl`
  ADD CONSTRAINT `item_size_tbl_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `item_tbl` (`ItemID`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_size_tbl_ibfk_2` FOREIGN KEY (`SizeID`) REFERENCES `size_tbl` (`SizeID`);

--
-- Constraints for table `item_species_tbl`
--
ALTER TABLE `item_species_tbl`
  ADD CONSTRAINT `item_species_tbl_ibfk_1` FOREIGN KEY (`SpeciesID`) REFERENCES `species_tbl` (`SpeciesID`),
  ADD CONSTRAINT `item_species_tbl_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `item_tbl` (`ItemID`);

--
-- Constraints for table `item_temp_tbl`
--
ALTER TABLE `item_temp_tbl`
  ADD CONSTRAINT `item_temp_tbl_ibfk_1` FOREIGN KEY (`TempID`) REFERENCES `temperature_tbl` (`TempID`),
  ADD CONSTRAINT `item_temp_tbl_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `item_tbl` (`ItemID`);

--
-- Constraints for table `order_product_tbl`
--
ALTER TABLE `order_product_tbl`
  ADD CONSTRAINT `order_product_tbl_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order_tbl` (`OrderID`),
  ADD CONSTRAINT `order_product_tbl_ibfk_2` FOREIGN KEY (`PorductID`) REFERENCES `product_tbl` (`ProductID`);

--
-- Constraints for table `order_tbl`
--
ALTER TABLE `order_tbl`
  ADD CONSTRAINT `order_tbl_ibfk_1` FOREIGN KEY (`AddID`) REFERENCES `address_tbl` (`AddID`);

--
-- Constraints for table `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD CONSTRAINT `product_tbl_ibfk_1` FOREIGN KEY (`ItemColorID`) REFERENCES `item_color_tbl` (`ItemColorID`),
  ADD CONSTRAINT `product_tbl_ibfk_2` FOREIGN KEY (`ItemSizeID`) REFERENCES `item_size_tbl` (`ItemSizeID`);

--
-- Constraints for table `size_chart_tbl`
--
ALTER TABLE `size_chart_tbl`
  ADD CONSTRAINT `size_chart_tbl_ibfk_1` FOREIGN KEY (`BrandID`) REFERENCES `brand_tbl` (`BrandID`),
  ADD CONSTRAINT `size_chart_tbl_ibfk_2` FOREIGN KEY (`SizeID`) REFERENCES `size_tbl` (`SizeID`);

--
-- Constraints for table `species_tbl`
--
ALTER TABLE `species_tbl`
  ADD CONSTRAINT `species_tbl_ibfk_1` FOREIGN KEY (`GenusID`) REFERENCES `genus_tbl` (`GenusID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
