-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2018 at 11:07 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_cart_cst336_sp_2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'books'),
(2, 'birds'),
(3, 'basketball');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `image_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `name`, `price`, `image_url`) VALUES
(33, 'Penn-Plax Bird Life Perch Echlle Bird Pe', 6.92, 'https://i5.walmartimages.com/asr/0c38b2c5-ce7b-4e17-922c-b32afc34a586_1.d37802c08197348a8c4b2b383804bca4.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(34, 'Wild Harvest Premium Cuttlebone for All ', 1.48, 'https://i5.walmartimages.com/asr/e854f981-778c-4267-aff5-a1090d779d27_1.d1d0112d92d7a691720ad2bdc49c6318.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(35, 'Pennington Classic Wild Bird Feed and Se', 20.50, 'https://i5.walmartimages.com/asr/86bfe54d-4ff4-40ec-ad47-29513162e6eb_2.2f3d3e9d24d39714f3ce2664cde9d7a5.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(36, 'Prevue Pet Products Bodacious Bites Stac', 3.11, 'https://i5.walmartimages.com/asr/2c0778dd-ee56-4486-8488-d6ae2a7c81f1_1.9d78b01f335d91423c2cc34b7425178c.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(37, 'Wild Harvest Bird Protector for Small Bi', 3.22, 'https://i5.walmartimages.com/asr/c7c4d87b-16ed-4042-aebf-cffe7f1fec1a_1.10a949959b1a92c31489d155cfd285c8.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(38, '7-Step Wooden Bird Ladder', 2.28, 'https://i5.walmartimages.com/asr/71578855-76ae-4374-bc76-25ddec7d5073_1.4e9ff6d9bb26530c0aed244da789fd80.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(39, 'Wild Harvest Chewable Bird Perch, 3 in 1', 3.97, 'https://i5.walmartimages.com/asr/19c1761f-1374-4682-b304-ee26918e945e_1.2ad1ca7324067dd3b7a7e165d9c742b1.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(40, 'Plastic Wood Rope Bird Hanging Toy', 2.97, 'https://i5.walmartimages.com/asr/a69221d3-c661-4564-9caf-cd11105bee45_1.c0efcb80e5eaeecc541f7b30a82b2049.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(41, 'Wild Harvest for All Birds Vitamin Suppl', 2.28, 'https://i5.walmartimages.com/asr/6d8a4217-8f36-4f4d-8756-84374a5fde1d_1.cf8a9ab7350e294ec0b23368f693e39d.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(42, 'Hartz Absorbent Cage Liners For Birds An', 3.72, 'https://i5.walmartimages.com/asr/0346d152-b14b-4552-a568-3e10be0dddcc_1.9e396d28d1a978d51d9e9b850f9506d8.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(43, 'Book of North American Birds : An Illust', 12.49, 'https://i5.walmartimages.com/asr/d0cbf6e9-a1d3-479c-b6bd-9d42dac70195_1.e7427777c7c015cfafebce2323db23d7.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(44, 'Ultimate Sticker Book: North American Bi', 6.99, 'https://i5.walmartimages.com/asr/62319e12-a6d7-42e7-b829-24f980a0bd00_1.81a96123457682a37ea31d1834c40a54.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(45, 'Adult Coloring Book: Cats Birds Flowers ', 6.99, 'https://i5.walmartimages.com/asr/a3031de3-b8c2-49eb-be42-7a19df2b0a9d_1.f66a77d4de4b72c2f80889c943e3a912.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(46, 'The Bird Watching Answer Book : Everythi', 8.88, 'https://i5.walmartimages.com/asr/34019de8-3ae6-41b8-837d-0ea2290f5eea_1.cdf39beb2d14333420cd516d61917b60.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(47, 'Gooney Bird Greene Three Books in One! :', 9.61, 'https://i5.walmartimages.com/asr/10d19b2e-3863-4a15-beda-084257141905_1.5ca3ee8e1fc104674c88e736584b02f6.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(48, 'Birds Board Book', 3.31, 'https://i5.walmartimages.com/asr/b487df8c-7c9c-43f4-8495-a8d4eb48e564_1.7a816af63d6e5c52bf3ea14bcc04aaf9.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(49, 'Early Bird : A Picture Book', 7.42, 'https://i5.walmartimages.com/asr/60d96ace-e58a-455e-9815-6ec17ca8f373_1.25d37c2d4f54ecc8b5b28b2f47bfedd4.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(50, 'DoverÂ® Creative Haven Birds Color by Nu', 6.82, 'https://i5.walmartimages.com/asr/db549022-a423-4da2-bc20-0dfb56555b6b_1.a284dd16de9e5c52989620ec182369cb.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(51, 'Exotic Birds Adult Coloring Book', 5.99, 'https://i5.walmartimages.com/asr/4081be24-4ac9-4ffa-b2ca-99955471e013_1.dbfa9ab7e46f75282851970595a270f5.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(52, 'Little Kids First Big Book Collector\'s S', 20.99, 'https://i5.walmartimages.com/asr/dd11c0b0-16b5-4829-87f7-fb721abaaf40_1.5c96632d4dd9a66054a6c24d3bd73923.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(53, 'Spalding NBA Super Tack Indoor/Outdoor B', 12.88, 'https://i5.walmartimages.com/asr/4336ada2-cd1d-461c-8f2e-793ce243d123_1.61088e3ca5b716e89924f3fb12aca826.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(54, '\"MacGregorÂ® Official Size (29.5\"\") Rubb', 7.26, 'https://i5.walmartimages.com/asr/447f773e-0448-4b89-94b6-63caf16fe6c8_1.91c062bfbe207a98175fa5fa9212eef0.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(55, '\"Wilson NCAA Killer Crossover 27.5\"\" Bas', 9.97, 'https://i5.walmartimages.com/asr/29454595-9a64-4bf4-a373-eedc41cca5f7_1.24e87f98008dac8260fab1822849fda7.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(56, 'Spalding Official NBA Youth Outdoor Bask', 11.86, 'https://i5.walmartimages.com/asr/62f061c8-9eae-460b-8964-84877f89dfc6_1.63cb4384ad2e3927105b7cfe8aa71fcc.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(57, '\"Wilson NCAA Killer Crossover 28.5\"\" Bas', 9.97, 'https://i5.walmartimages.com/asr/77e140f1-40c1-47d8-bf09-baa3afa8dca7_1.68da4c0cb691164e2ead88da641f583b.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(58, '\"\"\"Wilson Pure Shot 28.5\"\"\"\" Basketball,', 11.93, 'https://i5.walmartimages.com/asr/37566cf6-6469-4b18-915b-383891a6a40c_1.b136a268a3ba7105994fb172dde4c03e.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(59, '\"Wilson NCAA Final 4 Edition Basketball ', 18.46, 'https://i5.walmartimages.com/asr/bf53fe7f-266c-4fe1-9331-75b85e1cab7f_1.5670fff096f8a0204b8322d14c8b1eaf.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(60, '\"Spalding NBA 54\"\" Portable Basketball H', 167.99, 'https://i5.walmartimages.com/asr/7706b024-44af-4e3f-bbf9-aae36aa8f8c5_1.f0359e6b999a456bf7e24d9705cc2811.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(61, '\"WilsonÂ® NCAAÂ® Street Replica 29.5\"\" B', 20.76, 'https://i5.walmartimages.com/asr/bb451e71-d6e1-48a0-a5c9-e4ed8e0a9cd8_1.479d70aa3347f4521892fd53d26723ad.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(62, 'Spalding Official NBA Street Basketball', 21.56, 'https://i5.walmartimages.com/asr/ed28f8de-1bcf-4234-9ee0-f540cafa20d5_1.51e3ebec5124d082c7d04426b7da7bf6.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(63, 'Big Book of Who Basketball', 12.01, 'https://i5.walmartimages.com/asr/b5256b4d-ce63-4792-83a7-2b0dd047cac0_1.cf8de17441a556b177fd3e876eb4752f.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(64, 'My First Basketball Book', 6.98, 'https://i5.walmartimages.com/asr/232161be-5e1e-493d-82a6-724080e72a62_1.034bef20c2e4f8b6dd1dbf03f8e28aa9.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(65, 'The A-Z Basketball Book: What Every Play', 14.95, 'https://i5.walmartimages.com/asr/153e97a9-205c-4aa4-83a3-e3f2bb586aed_1.fd8043be7bcfdfb799dbd05af42f1973.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(66, 'Kevin Durant: Kevin Durant: The Star. Ea', 10.20, 'https://i5.walmartimages.com/asr/153e97a9-205c-4aa4-83a3-e3f2bb586aed_1.fd8043be7bcfdfb799dbd05af42f1973.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(67, 'Basketball Championships\' Most Wanted : ', 14.68, 'https://i5.walmartimages.com/asr/680d0f32-b210-42e3-8d4d-8976c43ded84_1.1285c6ae896088ca90f6751e4083f85a.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(68, 'My Basketball Book', 5.67, 'https://i5.walmartimages.com/asr/7ce1ef2f-ddf7-4501-82de-d88a0edfd64b_1.adf427d0f6f089b29a21fa36d641f95a.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(69, 'The Everything Kidsâ€™ Basketball Book, ', 9.40, 'https://i5.walmartimages.com/asr/4e237bd4-b1eb-4a1b-8bc6-ee14e7c523f2_1.ce0d42fc672c71f3978902a7a40c119e.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(70, 'BOOK OF BASKETBALL', 10.56, 'https://i5.walmartimages.com/asr/cbca2641-b5a5-4da2-a6f4-e95cbef728b5_1.99308f93ff47a160189d3a41cb89d92c.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(71, 'The Everything Kids\' Sports Bundle : The', 29.65, 'https://i5.walmartimages.com/asr/96b750fc-b356-42a0-94d1-0b713d1f5dcd_1.7171c8edf54fd316bf5f27c0597fa647.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF'),
(72, 'University of Louisville: Big Book of Ba', 9.08, 'https://i5.walmartimages.com/asr/43849e8e-6b4f-48cb-b4ca-a090861d0a8d_1.7fc3783e46eacf7d5248de7c1af47e73.jpeg?odnHeight=100&odnWidth=100&odnBg=FFFFFF');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `grouping_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`grouping_id`, `item_id`, `category_id`) VALUES
(82, 43, 1),
(83, 44, 1),
(84, 45, 1),
(85, 46, 1),
(86, 47, 1),
(87, 48, 1),
(88, 49, 1),
(89, 50, 1),
(90, 51, 1),
(91, 52, 1),
(92, 33, 2),
(93, 34, 2),
(94, 35, 2),
(95, 36, 2),
(96, 37, 2),
(97, 38, 2),
(98, 39, 2),
(99, 40, 2),
(100, 41, 2),
(101, 42, 2),
(102, 43, 2),
(103, 44, 2),
(104, 45, 2),
(105, 46, 2),
(106, 47, 2),
(107, 48, 2),
(108, 49, 2),
(109, 50, 2),
(110, 51, 2),
(111, 52, 2),
(112, 53, 3),
(113, 54, 3),
(114, 55, 3),
(115, 56, 3),
(116, 57, 3),
(117, 58, 3),
(118, 59, 3),
(119, 60, 3),
(120, 61, 3),
(121, 62, 3),
(122, 63, 3),
(123, 64, 3),
(124, 65, 3),
(125, 66, 3),
(126, 67, 3),
(127, 68, 3),
(128, 69, 3),
(129, 70, 3),
(130, 71, 3),
(131, 72, 3),
(132, 63, 1),
(133, 64, 1),
(134, 65, 1),
(135, 66, 1),
(136, 67, 1),
(137, 68, 1),
(138, 69, 1),
(139, 70, 1),
(140, 71, 1),
(141, 72, 1),
(142, 63, 1),
(143, 64, 1),
(144, 65, 1),
(145, 66, 1),
(146, 67, 1),
(147, 68, 1),
(148, 69, 1),
(149, 70, 1),
(150, 71, 1),
(151, 72, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`grouping_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `grouping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
