-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 12, 2018 at 08:52 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thisitz6_tana_tandana`
--

-- --------------------------------------------------------

--
-- Table structure for table `Artists`
--

CREATE TABLE `Artists` (
  `id` int(11) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `password_hash` varchar(128) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `specialty` varchar(20) DEFAULT NULL,
  `country` varchar(90) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email_address` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Artists`
--

INSERT INTO `Artists` (`id`, `last_name`, `first_name`, `password_hash`, `image`, `phone_number`, `specialty`, `country`, `state`, `city`, `address`, `email_address`) VALUES
(0, 'last_name', 'first_name', 'email_address', 'password_hash', 'image', 'phone number', 'specialty', 'country', 'state', 'city', 'address'),
(1, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(2, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(3, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(4, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(5, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(6, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(7, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(8, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(9, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(10, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(11, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(12, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(13, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(14, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(15, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(16, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(17, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(18, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(19, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(20, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(21, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(22, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(23, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(24, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(25, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(26, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(27, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(28, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(29, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(30, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(31, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(32, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(33, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(34, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(35, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(36, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(37, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(38, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(39, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road'),
(40, 'Obrien', 'Spencer', 'example@email.com', 'd3fe8458710462b970246cafac4d537fe90dabef8361e83573f4a7f69276915d', 'img.png', '952-942-7562', 'folk', 'USA', 'MN', 'Eden Prairie', '8614 Darnel Road');

-- --------------------------------------------------------

--
-- Table structure for table `dances`
--

CREATE TABLE `dances` (
  `dance_id` int(11) NOT NULL,
  `dance_english_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `dance_alternate_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `dance_telugu_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `dance_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dance_origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dance_description` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dance_image_reference` text COLLATE utf8_unicode_ci,
  `dance_video_reference` text COLLATE utf8_unicode_ci,
  `dance_key_words` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dance_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `artist_images` text COLLATE utf8_unicode_ci NOT NULL,
  `links` text COLLATE utf8_unicode_ci NOT NULL,
  `malayalam_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hindi_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `odish_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bengal_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `native_disp_language` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'telugu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dances`
--

INSERT INTO `dances` (`dance_id`, `dance_english_name`, `dance_alternate_name`, `dance_telugu_name`, `dance_category`, `dance_origin`, `dance_description`, `dance_image_reference`, `dance_video_reference`, `dance_key_words`, `dance_status`, `artist_images`, `links`, `malayalam_name`, `hindi_name`, `odish_name`, `bengal_name`, `native_disp_language`) VALUES
(1, 'For Testing by Kou', 'Breakdance', 'బ్రేక్ డాన్సు', 'Folk', 'USA', 'B-boying or breaking, also called breakdancing, is a style of street dance that originated primarily among Puerto Rican and African American youth, many former members of the Black Spades, the Young Spades, and the Baby Spades, during the mid 1970s.[1] Th', 'https://upload.wikimedia.org/wikipedia/commons/0/01/Breakdance.jpg, http://ttldancespringfieldmo.com/resources/Tagged_Class_Photos/Hip_Hop/BreakDance%20B%20Boy%20Springfield%20mo.jpg', 'https://www.youtube.com/embed/2oRysW2mm4A, https://www.youtube.com/embed/44kKLeDKIIc', 'breakdance, bboy, modern, other, usa', 'Done', 'assets/artist_images/artist_images.png', 'https://en.wikipedia.org/wiki/B-boying,\r\nhttps://simple.wikipedia.org/wiki/Breakdance,\r\nhttp://www.dictionary.com/browse/break-dancing,\r\nhttp://www.wikihow.com/Breakdance', NULL, NULL, NULL, NULL, 'telugu'),
(3, 'alaavu gitaalavaaru', '', 'అలావు గీతాలవారు', 'Folk', '', '', '', '', '', 'Submitted', 'assets/artist_images/edit.png', '', NULL, NULL, NULL, NULL, 'telugu'),
(5, 'Lion Dance', 'Dragon Dance', 'సింహం నృత్య', 'Traditional', 'China', 'There has been an old tradition in China of dancers wearing masks to resemble animals or mythical beasts since antiquity, and performances described in ancient texts such as Shujing where wild beasts and phoenix danced may have been masked dances.[1][2] In Qin Dynasty sources, dancers performing exorcism rituals were described as wearing bearskin mask,[1] and it was also mentioned in Han Dynasty texts that &quot;mime people&quot; (象人) performed as fish, dragons, and phoenixes.[3][4] However, lion is not native to China, and the Lion Dance therefore has been suggested to have originated outside of China from countries such as India or Persia,[5][6] and introduced via Cental Asia.[7] According to ethnomusicologist Laurence Picken, the Chinese word for lion itself, shi (獅, written as 師 in the early periods), may have been derived from the Persian word šer.[8] The earliest use of the word shizi meaning lion first appeared in Han Dynasty texts and had strong association with Central Asia (an even earlier but obsolete term for lion was suanni (狻麑 or 狻猊)), and lions were presented to the Han court by emissaries from Central Asia and the Parthian Empire.[9] Detailed descriptions of Lion Dance appeared during the Tang Dynasty and it was already recognized by writers and poets then as a foreign dance, however, Lion dance may have been recorded in China as early as the third century AD where &quot;lion acts&quot; were referred to by a Three Kingdoms scholar Meng Kang (孟康) in a commentary on Hanshu.[10][11][12] In the early periods it had association with Buddhism: it was recorded in a Northern Wei text, Description of Buddhist Temples in Luoyang (洛陽伽藍記), that a parade for a statue of Buddha of a temple was led by a lion to drive away evil spirits.[11][13][14] Japanese illustration of a Lion Dance that some argued represents the Tang Dynasty lion dance described by Bai Juyi.[15] The original painting is dated to the Heian period. There were different versions of the dance in the Tang Dynasty. In the Tang court, the lion dance was called the Great Peace Music (太平樂, Taiping yue) or the Lion Dance of the Five Directions (五方師子舞) where five large lions of different colours and expressing different moods were each led and manipulated on rope by two persons, and accompanied by 140 singers.[11][16] In a later account, the 5 lions were described as each over 3 metres tall and each had 12 &quot;lion lads&quot;, who may tease the lions with red whisks.[11][17][18] Another version of the lion dance was described by the Tang poet Bai Juyi in his poem &quot;Western Liang Arts&quot; (西凉伎), where the dance was performed by two hu (胡, meaning here non-Han people from Central Asia) dancers who wore a lion costume made of a wooden head, a silk tail and furry body, with eyes gilded with gold and teeth plated with silver as well as ears that moved, a form that resembles today\'s Lion Dance.[11][19][20] By the eighth century, this lion dance had reached Japan. During the Song Dynasty the lion dance was commonly performed in festivals and it was known as the Northern Lion during the Southern Song. The Southern Lion is a later development in the south of China originating in the Guangdong province. There are a number of myths associated with the origin of the Southern Lion: one story relates that the dance originated as a celebration in a village where a mythical monster called Nian was successfully driven away;[7][21] another has it that the Qianlong Emperor dreamt of an auspicious animal while on a tour of Southern China, and ordered that the image of the animal be recreated and used during festivals. However it is likely that the Southern Lion of Guangzhou is an adaptation of the Northern Lion to local myths and characteristics, perhaps during the Ming Dynasty.[22][23]', 'http://shimworld.files.wordpress.com/2008/01/ccms-liondance-013.jpg, http://www.lansugarden.org/content/CI_events/287/lion-dance-cny__page-header.jpg', 'https://www.youtube.com/embed/n-0DJzxUdTE, https://www.youtube.com/embed/hJusyaRAq1I', 'china, dragon dance, lion dance, traditional', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(7, 'Seungmu', '', 'Seungmu', 'Folk', '', '', '', '', '', 'Submitted', 'assets/artist_images/seungmu.jpg', '', NULL, NULL, NULL, NULL, 'telugu'),
(8, 'allaa ke naam paaTalu', '', 'అల్లా కె నాం పాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/ఫకీరు_వేషాలు', NULL, NULL, NULL, NULL, 'telugu'),
(9, 'aasaadi kathalu', '', 'ఆసాది కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://groups.google.com/forum/#!topic/telugupadam/2YK-cJiuQPw, http://www.maganti.org/vyasavali/drpadmanabha/gramadevatalu.html', NULL, NULL, NULL, NULL, 'telugu'),
(10, 'aSva nRutyam', 'Dummy Horse Dance, గుర్రం ఆట, కీలు గుర్రాలు, Poikkal Kudhirai Aattam (Tamil),', 'అశ్వ నృత్యం', 'Folk', '', '', 'https://s-media-cache-ak0.pinimg.com/736x/e3/98/f5/e398f58d8067928324280e000f3571ed.jpg,https://s-media-cache-ak0.pinimg.com/564x/c3/ab/9b/c3ab9b4769402d07124bf85e8dc4f6f5.jpg, http://www.rajasthanvisit.com/Images/KachhiGhodidance3.jpg', 'https://www.youtube.com/embed/sBk6_AswVXA, https://www.youtube.com/embed/w1_iPp6n5zs,https://www.youtube.com/embed/qjC7YZP5pIY,https://www.youtube.com/embed/SNeispY9hrA,https://www.youtube.com/embed/Rw1bJiDH3vM', '', 'Selected', '', 'https://te.wikipedia.org/wiki/గొంతాలమ్మ_అశ్వనృత్యం', NULL, NULL, NULL, NULL, 'telugu'),
(12, 'bairaagi tatvaalu', '', 'బైరాగి తత్వాలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(13, 'baala paMtulu', '', 'బాలపంతులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(14, 'baTraajulu', 'భట్రాజులు', 'బట్రాజులు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/భట్రాజు_పొగడ్తలు', NULL, NULL, NULL, NULL, 'telugu'),
(15, 'bayakāni kadha ', '', 'బయకాని కధ', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(16, 'byalaaTa', 'బయలు నాటకం', 'బయలాట  ', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(17, 'bayaniiLLu', 'బైండ్లవారు', 'బయనీళ్ళు', 'Folk', '', '', '', 'https://www.youtube.com/embed/4UQTB2Ooq5E', '', 'Submitted', '', 'https://te.wikisource.org/wiki/తెలుగువారి_జానపద_కళారూపాలు/బవనీలే_బైండ్లవారు', NULL, NULL, NULL, NULL, 'telugu'),
(18, 'Bharatanatyam', 'Bharathanatiyam', 'భరతనాట్యం', 'Folk', 'India', 'The theoretical foundations of Bharatanatyam are found in Natya Shastra, the ancient Hindu text of performance arts.[5][17][18]\r\n\r\nNatya Shastra is attributed to the ancient scholar Bharata Muni, and its first complete compilation is dated to between 200 BCE and 200 CE,[19][20] but estimates vary between 500 BCE and 500 CE.[21] The most studied version of the Natya Shastra text consists of about 6000 verses structured into 36 chapters.[19][22] The text, states Natalia Lidova, describes the theory of Tāṇḍava dance (Shiva), the theory of rasa, of bhāva, expression, gestures, acting techniques, basic steps, standing postures – all of which are part of Indian classical dances.[19][23] Dance and performance arts, states this ancient text,[24] are a form of expression of spiritual ideas, virtues and the essence of scriptures.[25]\r\n\r\nMore direct historical references to Bharatnatyam is found in the Tamil epics Silappatikaram (~2nd century CE[26]) and Manimegalai (~6th century).[5][8] The ancient text Silappatikaram, includes a story of a dancing girl named Madhavi; it describes the dance training regimen called Arangatrau Kathai of Madhavi in verses 113 through 159.[26] The carvings in Kanchipuram\'s Shiva temple that have been dated to 6th to 9th century CE suggest Bharatanatyam was a well developed performance art by about the mid 1st millennium CE.[5][8][27]\r\nLeft: 7th century Shiva in Karnataka;\r\nRight: Bharatanatyam pose\r\n\r\nA famous example of illustrative sculpture is in the southern gateway of the Chidambaram temple (~12th century) dedicated to Hindu god Shiva, where 108 poses of the Bharatnatyam, that are also described as karanas in the Natya Shastra, are carved in stone.[28][29]\r\n\r\nMany of the ancient Shiva sculptures in Hindu temples are same as the Bharata Natyam dance poses. For example, the Cave 1 of Badami cave temples, dated to 7th-century,[30] portrays the Tandava-dancing Shiva as Nataraja.[31][32][33] The image, 5 feet (1.5 m) tall, has 18 arms in a form that expresses the dance positions arranged in a geometric pattern.[33] The arms of Shiva express mudras (symbolic hand gestures),[34] that are found in Bharatanatyam.[5][35]\r\n\r\nBharatanatyam, state Allen Noble and Ashok Dutt, has been &quot;a major source of inspiration to the musicians, poets, painters, singers and sculptors&quot; in Indian history.[36]\r\nDevadasis, anti-dance movement, colonial ban and the decline\r\n\r\nSome colonial Indologists and modern authors have stated Bharatanatyam is a descendant of an ancient Devadasi (literally, servant girls of Deva temples) culture, suggesting historical origins to 300 BCE to 300 CE.[37] Modern scholarship has questioned this theory for lack of any direct textual or archeological evidence.[38][39] Historic sculpture and texts do describe and project dancing girls, as well as temple quarters dedicated to women, but they do not state them to be courtesans and prostitutes alleged by early colonial Indologists.[37] According to Davesh Soneji, a critical examination of evidence suggest that the courtesan dancing is a modern era phenomena, which began in late 16th or 17th century of the Nayaka period of Tamil Nadu.[37] According to James Lochtefeld, Bharatanatyam remained exclusive to Hindu temples through the 19th century, and it appeared on stage outside the temples only in the 20th century.[8]\r\nRukmini Devi Arundale helped revive Bharatanatyam, after all Hindu temple dancing was banned by the British colonial government in 1910.\r\n\r\nWith the arrival of colonial East India Company officials rule in the 18th century, and the establishment of British colonial rule in 19th, many classical Indian dance forms were ridiculed and discouraged, and these performance arts declined.[40] Christian missionaries and British officials presented &quot;nautch girls&quot; of north India (Kathak) and &quot;devadasis&quot; of south India (Bharatanatyam) as evidence of &quot;harlots, debased erotic culture, slavery to idols and priests&quot; tradition, and Christian missionaries demanded that this must be stopped, launching the &quot;anti-dance movement&quot; in 1892.[41][42][43] The anti-dance camp accused the dance form as a front for prostitution, while revivalists questioned the constructed histories by the colonial writers.[38][39]\r\n\r\nIn 1910, the Madras Presidency of the British Empire altogether banned temple dancing, and with it the Bharatanatyam tradition within Hindu temples.[11]\r\nPost colonial era: revival and rebirth\r\n\r\nThe 1910 ban triggered powerful protests against the stereotyping and dehumanization of temple dancers.[11] The Tamil people were concerned that a historic and rich dance tradition was being victimized under the excuse of social reform.[11][44] The classical art revivalists such as E. Krishna Iyer, a lawyer and someone who had learnt the Bharatanatyam dance, questioned the cultural discrimination and the assumed connection, asking why prostitution needs years of learning and training for performance', 'http://www.jwalarejimon.com/admin/images/slider/21.jpg, http://www.culturalindia.net/iliimages/Bharatanatyam-1_1.jpg', 'https://www.youtube.com/embed/SgiLOzFQh14', 'classical, bharatanatyam,  Bharathanatiyam', 'Done', '', 'https://te.wikipedia.org/wiki/భరతనాట్యం', NULL, NULL, NULL, NULL, 'telugu'),
(19, 'Bihu', '', 'బిహు', 'Folk', 'India', 'బిహూ నృత్యం (Bihu Dance) ఈశాన్య భారత దేశములో గల అస్సాం రాష్ట్రమునకు చెందిన జానపద నృత్య రీతి. ఈ వినోద నృత్యంలో నాట్యకారులు సంప్రదాయమైన అస్సామీ పట్టు, ముగా పట్టు దుస్తులు ధరిస్తారు. బిహూ పాటలకు అనుగుణంగా బిహూ నృత్యాన్ని చేస్తారు. బిహూ పాటలు అస్సామీ కొత్త సం', 'http://www.nelive.in/sites/default/files/12-04-16%20Jorhat-%20Bihu%20dance%20(1)_0.JPG, http://files.prokerala.com/gallery/pics/800/bihu-dancers-in-traditional-attire-performing-9743.jpg,http://www.bihufestival.org/img/Bihu-mobile-banner.jpg,http://www.vo', 'https://www.youtube.com/watch?v=_UVSMgaVjJE,https://www.youtube.com/watch?v=8qWgkOFaGqk', 'Bihu, Assam, Folk', 'In Progress', '', 'https://te.wikipedia.org/wiki/బిహూ_నృత్యం', NULL, NULL, NULL, NULL, 'telugu'),
(20, 'biirannalu ', '', 'బీరన్నలు', 'Folk', '', '', '', '', '', 'Submitted', '', 'http://10tv.in/tags/beeranna-bonalu', NULL, NULL, NULL, NULL, 'telugu'),
(24, 'buDabukkala vaaru', '', 'బుడుబుక్కల వారు', 'Folk', '', '', 'http://img.sakshi.net/images/cms/2015-01/81420921211_Unknown.jpg,', 'https://www.youtube.com/embed/OZACsTPgX1E,https://www.youtube.com/embed/NuRyRFUdQeY,https://www.youtube.com/embed/l32NTivJqeA,https://www.youtube.com/embed/NbE3oNI9Rjg', '', 'Selected', '', 'http://telugubhasha.in/saahithyam/janapadha_budabukkala.php', NULL, NULL, NULL, NULL, 'telugu'),
(25, 'burra katha', 'ఒగ్గు కథ,  బుర్ర కథ, జంగం కథ, తందాన కథ, తంబుర కథ, శారద కథ', 'బుర్ర కథ', 'Folk', 'AP, India', 'burra katha is from India', 'https://www.indianholiday.com/photo-gallery/andhra-pradesh/tourism--andhra/art-and-crafts/dances-of-andhra-pradesh/Burrakatha-2065.jpg,http://1.bp.blogspot.com/_Wsvv95vvWkI/S81bbfUwTfI/AAAAAAAAAD0/0e0Pcf81Ni4/s1600/Burra+Katha+Dancers+MedShot.jpg,\r\nhttps://i.ytimg.com/vi/AQU9IlTPl5w/0.jpg,\r\nhttps://upload.wikimedia.org/wikipedia/te/2/28/Burrakata_kalaakaarulu.JPG', 'https://www.youtube.com/embed/r3OrWpoAMLs', '', 'Done', '', 'https://en.wikipedia.org/wiki/Burra_katha, https://te.wikipedia.org/wiki/బుర్రకథ ,\r\nhttp://www.andhrabharati.com/vachana/vyAsamulu/buRRakatha.html,\r\nhttp://telugubhasha.in/saahithyam/janapadha_Burrkatha.php', NULL, NULL, NULL, NULL, 'telugu'),
(27, 'Capoeira', '', 'కాపోయిరా', 'Folk', 'Brazil', 'Capoeira (Portuguese pronunciation: [kapuˈejɾɐ]) is a Brazilian martial art that combines elements of dance,[1][2][3] acrobatics[4] and music.[5][6] It was developed in Brazil mainly by Angolans, at the beginning of the 16th century. It is known for its quick and complex maneuvers, predominantly using power, speed, and leverage across a wide variety of kicks, spins and techniques. The most widely accepted origin of the word capoeira comes from the Tupi words ka\'a (&quot;jungle&quot;) e pûer (&quot;it was&quot;)[citation needed], referring to the areas of low vegetation in the Brazilian interior where fugitive slaves would hide. A practitioner of the art is called a capoeirista (Portuguese pronunciation: [kapuejˈɾistɐ]). On 26th November 2014 capoeira was granted a special protected status as &quot;intangible cultural heritage&quot; by UNESCO.[7]', 'http://capoeira-connection.com/capoeira/wp-content/uploads/2011/10/capoeira-contemporanea.jpg', 'https://www.youtube.com/embed/Z8xxgFpK-NM', 'capoeira, folk, brazil', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(28, 'chekka bhajana ', 'chirutala bhajana', 'చెక్క భజన, చిరుతల భజన', 'Folk', '', 'NOTES: Same as చిరుతల రామాయణం (ఈ బ్రందాలు, చెక్క భజనతో, రామాయణం మాత్రమే చెబుతారు గనుక)', 'http://www.sssbpt.org/images/Hyd18Feb2012_01.jpg,https://shinylekhana.files.wordpress.com/2015/03/cvc_9236.jpg,http://www.nrityanjali.org/images/th_chek.jpg,https://shinylekhana.files.wordpress.com/2015/03/cvc_9213.jpg,\r\nhttps://shinylekhana.files.wordpress.com/2015/03/cvc_9226.jpg', 'https://www.youtube.com/embed/90TDM9DvfFs,\r\nhttps://www.youtube.com/embed/VQcAGEsFdo8,https://www.youtube.com/embed/VqTgkc_ngAA,https://www.youtube.com/embed/rpO7Js7vQDA', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/చెక్క_భజన', NULL, NULL, NULL, NULL, 'telugu'),
(29, 'cheMchu Bhaagavathulu', '', 'చెంచు భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', 'http://www.navatelangana.com/article/jaatara/174496', NULL, NULL, NULL, NULL, 'telugu'),
(30, 'cheMchu nRtyaalu', '', 'చెంచు నృత్యాలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(31, 'chaya naaTika', '', 'ఛాయ నాటిక', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(32, 'chiMdu bhaagavatulu', '', 'చిందు భాగవతులు', 'Folk', '', '', 'http://urmilamohan.com/blog/2015/08/bose/image8.jpg,\r\nhttp://www.navatelangana.com/mm/20151026//144588312811.jpg', 'https://www.youtube.com/embed/Ew8RIQMaGBc,\r\nhttps://www.youtube.com/embed/PMTcVmQmkb8,\r\nhttps://www.youtube.com/embed/UeXbflSHSEs', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/చిందు_భాగవతము ,\r\nhttp://m.navatelangana.com/article/jaatara/137301', NULL, NULL, NULL, NULL, 'telugu'),
(33, 'chiratala raamaayanaM', '', 'చిరతల రామాయణం', 'Folk', '', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Bajana_at_Hyd_book_fair.JPG/440px-Bajana_at_Hyd_book_fair.JPG, https://i.ytimg.com/vi/VkeNEgXXXhk/maxresdefault.jpg,\r\nhttps://upload.wikimedia.org/wikisource/te/thumb/c/c4/TeluguVariJanapadaKalarupalu.djvu/page512-3091px-TeluguVariJanapadaKalarupalu.djvu.jpg', 'https://www.youtube.com/embed/47fOKQZoGi8,\r\nhttps://www.youtube.com/embed/diOw4lfihTM,\r\nhttps://www.youtube.com/embed/eN-TGWjOJnE,', '', 'Submitted', '', 'http://www.navatelangana.com/article/jaatara/425138, https://te.wikipedia.org/wiki/చిరుతల_రామాయణం', NULL, NULL, NULL, NULL, 'telugu'),
(34, 'chitrakathaa vidhaanaM', '', 'చిత్రకధా విధానం', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(35, 'golla kalaapam', 'చోడిగాని కలాపం, chooDigaani kalaapaM', 'గొల్ల కలాపం', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikisource.org/wiki/తెలుగువారి_జానపద_కళారూపాలు/చూడచక్కని_చోడిగాని_కలాపం', NULL, NULL, NULL, NULL, 'telugu'),
(36, 'chuTTu kaamuDU', '', 'చుట్టుకాముడు', 'Folk', '', '', 'http://img.sakshi.net/images/cms/2016-07/81468955638_625x300.jpg', '', '', 'Submitted', '', 'http://www.sakshi.com/news/district/chuttukamudu-in-raghunadhapuram-364325, https://te.wikipedia.org/wiki/చుట్టకాముడు', NULL, NULL, NULL, NULL, 'telugu'),
(37, 'daadinamma veeshaM', '', 'దాదినమ్మ వేషం', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(38, 'Dakkali kathalu', '', 'డక్కలి కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(39, 'daMDaa gaanaM', '', 'దండా గానం', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/దండిగా_ప్రచారమైన_దండా_గానం', NULL, NULL, NULL, NULL, 'telugu'),
(40, 'Dappula kolaaTa nRtyaM', '', 'డప్పుల కోలాట నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/డప్పుల_నృత్యం', NULL, NULL, NULL, NULL, 'telugu'),
(41, 'Dappulavaaru', '', 'డప్పులవారు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(42, 'daasarulu', '', 'దాసరులు', 'Folk', '', '', '', '', '', 'Submitted', '', 'http://www.navatelangana.com/article/jaatara/460780', NULL, NULL, NULL, NULL, 'telugu'),
(43, 'deevara peTTe', '', 'దేవర పెట్టె', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(44, 'dommaraaTalu', '', 'దొమ్మరాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/దొమ్మరి_ఆటలు', NULL, NULL, NULL, NULL, 'telugu'),
(45, 'duulaanRtyaM', '', 'దూలానృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(46, 'erukala daasari', '', 'ఎరుకల దాసరి', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(47, 'erukala paaTalu', '', 'ఎరుకల పాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(48, 'erukala soodi', '', 'ఎరుకల సోది', 'Folk', '', '', 'https://c1.staticflickr.com/1/139/366082620_1e0021ef1e.jpg,https://c1.staticflickr.com/1/175/366082621_23e2cb557f_z.jpg?zz=1', 'https://www.youtube.com/embed/VPY7PzMnJ94', '', 'Done', '', 'https://te.wikipedia.org/wiki/సోది', NULL, NULL, NULL, NULL, 'telugu'),
(50, 'gaMgireddulavaaru', '', 'గంగిరెద్దులవారు', 'Folk', '', '', 'https://upload.wikimedia.org/wikipedia/te/thumb/6/68/Gangireddu_01.JPG/440px-Gangireddu_01.JPG, https://upload.wikimedia.org/wikipedia/te/thumb/1/1d/GANGIREDDU.jpg/500px-GANGIREDDU.jpg,\r\nhttps://c1.staticflickr.com/9/8212/8306719948_0385dc3053_b.jpg,\r\nhttps://c1.staticflickr.com/3/2593/4271298823_d9b71f19d7_b.jpg,\r\nhttp://formsofdevotion.org/wp-content/uploads/2015/11/1426489789_mohammed-osman.jpg,\r\nhttps://www.indianartideas.in/photo/201412031335550204223001417593955.jpg', 'https://www.youtube.com/embed/DwXZ14XzODE;\r\nhttps://www.youtube.com/embed/G44Z_vx4EBk;\r\nhttps://www.youtube.com/embed/y2owXpfo7vU;\r\nhttps://www.youtube.com/embed/ECEV1iDOwUI', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/గంగిరెద్దులాటలు  , \r\nhttp://telugubhasha.in/saahithyam/janapadha_gangireddu.php', NULL, NULL, NULL, NULL, 'telugu'),
(51, 'gaMTaa saayibulu', '', 'గంటా సాయబులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(52, 'gaMTi bhaagavatulu', '', 'గంటి భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(53, 'gaaraDii vidyalu', '', 'గారడీ విద్యలు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/గారడీ_విద్యలు', NULL, NULL, NULL, NULL, 'telugu'),
(54, 'garaga nRtyaM', '', 'గరగ నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/గరగ_నృత్యం , http://www.navatelangana.com/article/jaatara/270860', NULL, NULL, NULL, NULL, 'telugu'),
(55, 'ghaMTa nRtyaM', '', 'ఘంట నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(56, 'golla bhaagavatulu', '', 'గొల్ల భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(57, 'golla daasarulu', '', 'గొల్ల దాసరులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(58, 'golla suddulu', '', 'గొల్ల సుద్దులు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/గొల్లసుద్దులు', NULL, NULL, NULL, NULL, 'telugu'),
(59, 'goMDalavaaru', '', 'గొండలవారు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(60, 'gఊMDU nRtyaM', '', 'గోండు నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', 'http://www.visalaandhra.com/regional/article-20701', NULL, NULL, NULL, NULL, 'telugu'),
(61, 'gupppaDi', 'ulannaaru, ఉలన్నారు', 'గుప్పాడి ', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(62, 'guruvayyalu ', '', 'గురువయ్యలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(63, 'haribhajanalu', '', 'హరిభజనలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(64, 'harihaaripadaalu', '', 'హరిహారీపదాలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(65, 'hari kadha ', '', 'హరి కధ', 'Folk', '', '', 'http://www.thehansindia.com/assets/8244_harikatha.jpg,http://news.tirumala.org/wp-content/uploads/2014/08/Harikatha1.jpg,https://c1.staticflickr.com/1/66/174664443_99948d6fba_z.jpg?zz=1', 'https://www.youtube.com/embed/dVVvdyzLiTA, https://www.youtube.com/embed/adscsXtnnJ0,https://www.youtube.com/embed/qsnJpgmJizQ,https://www.youtube.com/embed/JO-aa4UT4WQ', '', 'Selected', '', 'http://www.andhrabharati.com/vachana/vyAsamulu/harikatha.html, https://te.wikipedia.org/wiki/హరికథ,\r\nhttp://telugubhasha.in/saahithyam/janapadha_Harikadha.php', NULL, NULL, NULL, NULL, 'telugu'),
(66, 'iidela nRtyaM', '', 'ఈదెల నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(67, 'jaDa koolaaTam', 'జడకొప్పు కోలాటం, జడగొప్పు కోలాటం, కోలాటం', 'జడ కోలాటం', 'Folk', '', 'Also see koolaTaM', 'http://www.idlebrain.com/images5/50days-mithunam5.jpg, \r\nhttps://i.ytimg.com/vi/sZ4DuOoZz00/hqdefault.jpg,\r\nhttps://static.wixstatic.com/media/b67558_5de5861b9bf64ae3b6f7067aa0fb1742.jpg_srz_400_338_85_22_0.50_1.20_0.00_jpg_srz,\r\nhttps://i.ytimg.com/vi/neCqCuB2WDw/maxresdefault.jpg', 'https://www.youtube.com/embed/-riKBKA095M, https://www.youtube.com/embed/a-yAfGwK8PQ', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/కోలాటం', NULL, NULL, NULL, NULL, 'telugu'),
(68, 'jakkula kadhalu ', '', 'జక్కుల కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(69, 'jaamBa puraaNaM', 'goosaMgi vEShaM, గోసంగి వేషం, డక్కలి, Dakkali', 'జాంబ పురాణం', 'Folk', '', 'జాంబ పురాణాన్ని చిందు భాగవతులు గోసంగి వేషం కట్టి సంవాద రూపంలో ప్రదర్శిస్తారు.', 'http://pustakam.net/wp-content/uploads/2014/05/jambapuranam-689x1024.jpg,\r\nhttps://upload.wikimedia.org/wikipedia/te/thumb/4/4e/1375921_653743761324333_1210989073_n.jpg/400px-1375921_653743761324333_1210989073_n.jpg,\r\nhttp://pustakam.net/wp-content/uploads/2016/06/AKP3-e1467118182401-300x472.jpg', 'https://www.youtube.com/embed/35UYBqhVB7E,\r\nhttps://www.youtube.com/embed/j4J9Ef9c29Q', '', 'Submitted', '', 'http://pustakam.net/?p=19183,\r\nhttps://te.wikipedia.org/wiki/కుల_పురాణాలు', NULL, NULL, NULL, NULL, 'telugu'),
(70, 'jamukula kadha ', 'జక్కుల కథ, బుడికి పాట, బుణికి పాట, బోనుల పాట, బోనుల కథ, బుడికి కథ, టమక్ టమా, బుడబుక్కల పాట', 'జముకుల కధ', 'Folk', '', '', 'https://i1.ytimg.com/vi/L41zrzjSdC0/hqdefault.jpg,\r\nhttps://i.ytimg.com/vi/k9xrGZ9Qpvg/hqdefault.jpg', 'https://www.youtube.com/embed/k9xrGZ9Qpvg', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/జముకుల_కథలు , http://kalingaseema.blogspot.in/search?q=జముకుల+కధ+', NULL, NULL, NULL, NULL, 'telugu'),
(71, 'jaMgaM kathalu', 'బుడిగే జంగాలు, బుడ్గి జంగాలు, బేడ జంగాలు', 'జంగం కధలు', 'Folk', '', '', 'https://upload.wikimedia.org/wikipedia/te/thumb/6/60/Jamgam_devara_1.JPG/300px-Jamgam_devara_1.JPG,\r\nhttps://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Jamgam_devara_two.JPG/440px-Jamgam_devara_two.JPG', 'https://www.youtube.com/embed/jKJ9DMJr3vs,\r\nhttps://www.youtube.com/embed/HWOgqqTQ_NE,\r\nhttps://www.youtube.com/embed/XdpFqYuvRGE', 'బుడిగ', 'Submitted', '', 'http://kalingaseema.blogspot.in/search?q=జంగం+కధలు ,\r\nhttps://te.wikipedia.org/wiki/బుడిగె_జంగాలు', NULL, NULL, NULL, NULL, 'telugu'),
(72, 'jaMtara maMtara peTTe', '', 'జంతర మంతర పెట్టె', 'Folk', 'బొమ్మల బండి', '', 'http://3.bp.blogspot.com/-UZsGyRHBf8Y/VGsFo6vLfRI/AAAAAAAAJww/1jZ0pQqSgnY/s1600/DSC_0072.JPG,\r\nhttp://c8.alamy.com/comp/B9B2E7/man-standing-with-a-bioscope-new-delhi-india-B9B2E7.jpg,\r\nhttps://media-cdn.tripadvisor.com/media/photo-s/07/66/4d/6e/surajkund-lake.jpg,', 'https://www.youtube.com/embed/_2O0IzXsxz0,\r\nhttps://www.youtube.com/embed/z0NFVCPzMhw,\r\nhttps://www.youtube.com/embed/45FlS-oIYNQ', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/జంతర_మంతర_పెట్టె', NULL, NULL, NULL, NULL, 'telugu'),
(73, 'jeegaMTa bhaagavatulu', '', 'జేగంట భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(74, 'kaaki paDagalu', '', 'కాకి పడగలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(75, 'kaMjara katha', '', 'కంజర కథ', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(76, 'karyaali', 'kavvaali, కవ్వాలి', 'కర్యాలి ', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(78, 'kathak ', '', 'కథక్', 'Classical', 'India', 'A dance of northern India, Kathak is often a dance of love. It is performed by both men and women. The movements include intricate footwork accented by bells worn around the ankles and stylized gestures adapted from normal body language. It was originated', 'https://www.vadaamalar.com/media/catalog/product/cache/1/thumbnail/600x/9df78eab33525d08d6e5fb8d27136e95/k/a/kathak_costume006.jpg', 'https://www.youtube.com/embed/1ZmCmQjoehw', 'kathak, classical, india', '', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(79, 'kathaakaLi', '', 'కథాకళి', 'Classical', 'India', 'Kathakali comes from southwestern India, around the state of Kerala. Like bharatanatyam, kathakali is a religious dance. It draws inspiration from the Ramayana and stories from Shaiva traditions. Kathakali is traditionally performed by boys and men, even', 'http://www.culturalindia.net/iliimages/Kathakali-1.jpg, https://www.keralatourism.org/images/artforms/large/kathakali20131111114431_15_2.jpg', 'https://www.youtube.com/embed/Tl3UKV1z9lM', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(80, 'kaaTi paapala vaaLLu', 'కాటి పాపలు, కాటి కాపరి,', 'కాటి పాపల వాళ్ళు', 'Folk', '', '', 'https://upload.wikimedia.org/wikipedia/commons/9/97/Katipapalu3.jpg, \r\nhttps://i.ytimg.com/vi/QHwXDfM2Dr0/hqdefault.jpg,\r\nhttps://upload.wikimedia.org/wikipedia/commons/b/bb/Katipapalu1.jpg,http://akamai.vidz.zeecdn.com/zeecinemalu/2016/11/hari-18.jpg', 'https://www.youtube.com/embed/9pOIEgwztj8', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/కాటిపాపల ,', NULL, NULL, NULL, NULL, 'telugu'),
(81, 'kinnera katha', '', 'కిన్నెర కథ', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(82, 'koola saMbaraM', '', 'కోల సంబరం', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(83, 'koolaaTa nRtyaM', '', 'కోలాట నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/కోలాటం  , http://telugubhasha.in/saahithyam/janapadha_kolatam.php', NULL, NULL, NULL, NULL, 'telugu'),
(84, 'koravaMji kathalu', '', 'కొరవంజి కథలు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/కురవంజి', NULL, NULL, NULL, NULL, 'telugu'),
(85, 'kOTakoMDa bhaagavatulu', '', 'కోటకొండ భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikisource.org/wiki/తెలుగువారి_జానపద_కళారూపాలు/కూచిపూడి_వారసులే_కోటకొండ_భాగవతులు', NULL, NULL, NULL, NULL, 'telugu'),
(86, 'kooya nRtyaM', '', 'కోయ నృత్యం', 'Folk', '', '', '', '', '', 'Selected', '', 'http://www.navatelangana.com/article/jaatara/538985', NULL, NULL, NULL, NULL, 'telugu'),
(87, 'kuppaM bhaagOtaM', 'tapasmaan, తపస్మాన్', 'కుప్పం భాగోతం ', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(88, 'lambaaDi nRtyaM', 'Tribal Dance', 'లంబాడి నృత్యం', 'Folk', '', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Lambadi_ei01-40.jpg/640px-Lambadi_ei01-40.jpg,\r\nhttps://4.bp.blogspot.com/-N8GgJcnTZVE/V8orny2AoGI/AAAAAAAACIk/mDgsJA4GcroaM0ZL8k1TkDwht5huQ_LPwCLcB/s1600/a72b09392e600e52e4784bce4942ba97.jpg,\r\nhttp://anubimb.com/wp-content/uploads/2009/12/lambadi-women.jpg,\r\nhttp://images.guidetrip.com/images/uploads/experiences/18459/2502431101_6d8e52ae02_b.jpg', 'https://www.youtube.com/watch?v=V1Ok-G5ed2g,\r\nhttps://www.youtube.com/watch?v=dpba3REAOLs', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(89, 'maala bhaagavatulu', '', 'మాలభాగావతులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(90, 'maala daasarlu', '', 'మాలదాసర్లు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(91, 'maala jaMgaalu', '', 'మాలజంగాలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(92, 'maMda hechchulu', 'మంచెంచులు, మంద హెచ్చు కధలు', 'మందహెచ్చులు', 'Folk', '', '', 'https://i.ytimg.com/vi/Km6VYwqWvd8/hqdefault.jpg,', 'https://www.youtube.com/embed/ZB9cREYH57g, https://www.youtube.com/embed/Km6VYwqWvd8', '', 'Submitted', '', 'https://www.ntnews.com/Editorial-News-in-Telugu/జానపద-పట్టుకుచ్చులు-మందెచ్చులు-1-7-489757.html ,\r\nhttp://kavithagalam.blogspot.com/2013/09/blog-post_1916.html', NULL, NULL, NULL, NULL, 'telugu'),
(93, 'marida pichchulu ', '', 'మరిదపిచ్చులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(94, 'muukaabhinayaM', '', 'మూకాభినయం', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(95, 'nakka jaMgaalu', '', 'నక్కజంగాలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(96, 'nakkala bhaagootaM', '', 'నక్కల భాగోతం', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(97, 'odissi', '', 'ఒడిస్సీ', 'Classical', 'India', 'Odissi is indigenous to Orissa in eastern India. It is predominantly a dance for women, with postures that replicate those found in temple sculptures. Based on archaeological findings, odissi is belived to be the oldest of the surviving Indian classical d', 'http://mycitylinks.in/mycitylive/wp-content/uploads/2016/05/Dona-Ganguly-Egypt-Odissi-Dance.jpg, http://www.ananyadancetheatre.org/wp-content/uploads/2013/01/Odissi-Dance.jpg', 'https://www.youtube.com/embed/52bscmW8x80', 'odissi, india, classical', '', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(98, 'oggu katha', '', 'ఒగ్గు కథ', 'Folk', '', 'QUESTION: are ఒగ్గు కథ &amp; ఒగ్గు డోలు same?', 'https://i.ytimg.com/vi/k6h_jTyC2f0/maxresdefault.jpg,\r\nhttp://10tv.in/sites/default/files/Screenshot%20from%202016-07-30%2021%3A40%3A52.png,', 'https://www.youtube.com/embed/k6h_jTyC2f0', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/ఒగ్గు_కథ ,\r\nhttps://en.wikipedia.org/wiki/Oggu_Katha', NULL, NULL, NULL, NULL, 'telugu'),
(99, 'pagaTi veeShagaaLLU', 'పైటేషాలు, bahuruupulu, బహురూపులు, బైరప్పలు, పగటి వేషం', 'పగటి వేషగాళ్ళు', 'Folk', '', '', 'https://upload.wikimedia.org/wikipedia/te/thumb/5/59/DSCN3667.JPG/500px-DSCN3667.JPG,http://www.trjks.in/artforms/pagativeshagallu.jpg,https://i.ytimg.com/vi/wfakZRSF4Z8/hqdefault.jpg,', 'https://www.youtube.com/embed/wfakZRSF4Z8,https://www.youtube.com/embed/6wyvVCOd_4c', '', 'Submitted', '', 'http://m.dailyhunt.in/news/india/telugu/navatelangana-epaper-navatel/bahurupulu-newsid-49163720,\r\nhttps://te.wikisource.org/wiki/తెలుగువారి_జానపద_కళారూపాలు/ప్రజలకు_నచ్చిన_పగటి_వేషాలు ,\r\nhttps://te.wikisource.org/wiki/తెలుగువారి_జానపద_కళారూపాలు/పగటి_వేషధారులు_-_కూచిపూడివారు , http://www.andhrabharati.com/vachana/vyAsamulu/tAnA06_cs_09.html, https://wn.com/pagati_vesham__folk_art_form_in_telugu,\r\nhttp://www.navatelangana.com/article/jaatara/211817', NULL, NULL, NULL, NULL, 'telugu'),
(100, 'paMbala vaaru', '', 'పంబల వారు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/పంబల_వారు', NULL, NULL, NULL, NULL, 'telugu'),
(101, 'paamula vaaDu', '', 'పాముల వాడు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/పాములాటలు.....మోడీ', NULL, NULL, NULL, NULL, 'telugu'),
(102, 'panasala vaaru', '', 'పనసల వారు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(103, 'paMDari bhajanalu', '', 'పండరి భజనలు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/పండరిభజనలు , https://te.wikisource.org/wiki/తెలుగువారి_జానపద_కళారూపాలు/పండరి_భజనలు', NULL, NULL, NULL, NULL, 'telugu'),
(104, 'paaMDavula kathalu', '', 'పాండవులు కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(105, 'paMdiri paaTa', '', 'పందిరి పాట', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(106, 'paTaala vaaru', '', 'పటాల వారు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(107, 'peeriNi nRtyaM', 'యోధుల నృత్యం, తాండవనృత్యం, పేరిణి తాండవనృత్యం', 'పేరిణి నృత్యం', 'Folk', '', '', 'http://arangham.com/infopics/purush/Perini%20Thandavam%20_photo-Vivekanandan.jpg,\r\nhttp://goheritagerun.com.s3-us-west-1.amazonaws.com/wp-content/uploads/2015/03/15084752/2009091150340302_206300g1.jpg,\r\nhttps://i.ytimg.com/vi/OHM51lS2vlc/maxresdefault.jpg,\r\nhttp://dc-cdn.s3-ap-southeast-1.amazonaws.com/dc-Cover-g6v2ep46keakb6dfmnn0pl6gi7-20161006020850.Medi.jpeg,\r\nhttp://www.andhrawishesh.com/media/k2/items/src/TS-Govt-Decides-Perini-as-S.jpg', 'https://www.youtube.com/embed/B3Ib4Xl_dE8,https://www.youtube.com/embed/QRqueoBwmwA,\r\nhttps://www.youtube.com/embed/NniI5GhjfMw,https://www.youtube.com/embed/HqDtfDuwENE,https://www.youtube.com/embed/JFS9S5xamjA', '', 'Selected', '', 'https://te.wikipedia.org/wiki/పేరిణి_నృత్యం , http://www.bhaarattoday.com/news/bhaarateeyam/telangana-s-own-dance-form-perini/4895.html,\r\nhttp://www.andhrajyothy.com/artical?SID=234928,http://naatelangaana.blogspot.com/2012/06/blog-post.html,\r\nhttp://www.navatelangana.com/article/maanavi/47691,http://www.telugudanam.co.in/samskruti/janapada_kalaa_rupalu/perini.php,\r\nhttp://himazwala.blogspot.com/2012/12/blog-post_25.html,\r\nhttps://te.wikisource.org/wiki/తెలుగువారి_జానపద_కళారూపాలు/పేరెన్నికగన్న_పేరిణి_తాండవ_నృత్యం', NULL, NULL, NULL, NULL, 'telugu'),
(108, 'phakiiru veeShaalu', 'మాయల ఫకీరు', 'ఫకీరు వేషాలు', 'Folk', '', '', 'http://2.bp.blogspot.com/-n5IDJ9EinY4/UQEZbNyeyxI/AAAAAAAABL4/pqBz0m41n6k/s1600/pahkeer+vesham.jpg', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/ఫకీరు_వేషాలు', NULL, NULL, NULL, NULL, 'telugu'),
(109, 'pichchukuMTla kadhalu', '', 'పిచ్చుకుంట్ల కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', 'http://telugubhasha.in/saahithyam/janapadha_piccikuntlavaaru.php', NULL, NULL, NULL, NULL, 'telugu'),
(110, 'piTTaladora', 'latkoorusaabu, లత్కోరుసాబు, buDDar khaan,  బుడ్డర్ ఖాన్, tupaaki raamuDu, తుపాకి రాముడు', 'పిట్టలదొర', 'Folk', '', '', 'https://i.ytimg.com/vi/gQF5Ob_ThkQ/0.jpg,http://2.bp.blogspot.com/-Is_kF-y0sy0/VDYoROsefYI/AAAAAAAAHKU/IplhRjSJoNk/s1600/Pittala%2BDora.tif, https://i.ytimg.com/vi/GQUDd81vHak/hqdefault.jpg,https://i.ytimg.com/vi/tnxVxbNP1Pw/hqdefault.jpg', 'https://www.youtube.com/embed/7mc7bv6azZE,https://www.youtube.com/embed/_beOrbmR30I,https://www.youtube.com/embed/BET2HowRQzI', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/తెలంగాణా_లత్కోర్_సాబ్ , https://www.youtube.com/watch?v=VGPi_HPpojY', NULL, NULL, NULL, NULL, 'telugu'),
(111, 'poDapOtula vaaru', '', 'పొడపోతుల వారు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/కాటమరాజు_కొమ్ము_కథలు', NULL, NULL, NULL, NULL, 'telugu'),
(112, 'puli naaTyaM', 'పెద్ద పులి నాట్యం', 'పులి నాట్యం', 'Folk', '', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Street_tiger_dance-andhrq.jpg/1024px-Street_tiger_dance-andhrq.jpg', 'https://www.youtube.com/embed/D1vwgBkXjBQ,\r\nhttps://www.youtube.com/embed/yKvd6otJzms/,\r\nhttps://www.youtube.com/embed/d6bU1a7Fcks', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/పులి_వేషం', NULL, NULL, NULL, NULL, 'telugu'),
(113, 'puusala balija kathalu', '', 'పూసలబలిజ కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(114, 'reela paaTalu', '', 'రేలపాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(115, 'relli jaTTulu', '', 'రెల్లిజట్టులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(116, 'ruMjalu', '', 'రుంజలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(117, 'saadhana Suurulu', '', 'సాధన శూరులు', 'Folk', '', '', '', 'https://www.youtube.com/embed/_EVuF18rJcQ', '', 'Submitted', '', 'http://www.navatelangana.com/article/jaatara/511549', NULL, NULL, NULL, NULL, 'telugu'),
(118, 'saarada katha', '', 'శారద కధ', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(119, 'sarikEmuggula soodi', '', 'సరికేముగ్గుల సోది', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(120, 'saataani padaalu', '', 'సాతాని పదాలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(121, 'taMdanaana kathalu', '', 'తందనాన కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(122, 'tappeTa guLLu', '', 'తప్పెట గుళ్ళు', 'Other', '', '', 'https://i.ytimg.com/vi/GsgVMfLVqAc/hqdefault.jpg,\r\nhttps://i.ytimg.com/vi/68QET7k1q2M/maxresdefault.jpg,\r\nhttp://www.thehindu.com/migration_catalog/article10477488.ece/ALTERNATES/LANDSCAPE_615/16VZMP_UTSAV1', 'https://www.youtube.com/watch?v=GsgVMfLVqAc,\r\nhttps://www.youtube.com/watch?v=68QET7k1q2M,\r\nhttps://www.youtube.com/watch?v=Zc2KhS6hs7o', '', 'Selected', '', 'https://te.wikipedia.org/wiki/తప్పెటగుళ్ళు', NULL, NULL, NULL, NULL, 'telugu'),
(123, 'tera chiirala pradarSana', '', 'తెర చీరల ప్రదర్శన', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(124, 'dhiMsaa nRtyaM', '', 'థింసా నృత్యం', 'Folk', '', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Araku_Tribal_Dancers.jpg/1920px-Araku_Tribal_Dancers.jpg,\r\nhttps://c1.staticflickr.com/3/2696/4250396457_4da4226750_z.jpg,\r\nhttp://www.andhrafolkarts.org/wp-content/uploads/2009/11/Dhimsa2.jpg,\r\nhttps://c1.staticflickr.com/9/8374/8560303662_eb57a586a7_b.jpg,\r\nhttps://c1.staticflickr.com/4/3933/15424654966_d72035d5d0_h.jpg', 'https://www.youtube.com/embed/Z0bHmDewfYE,\r\nhttps://www.youtube.com/embed/nmp4v74mRyo,\r\nhttps://www.youtube.com/embed/Avc57C0ZBBk,\r\nhttps://www.youtube.com/embed/iuHcjubgUNQ', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/దింసా_నృత్యం,\r\nhttps://en.wikipedia.org/wiki/Dhimsa', NULL, NULL, NULL, NULL, 'telugu'),
(125, 'tuurpu bhaagootaM', '', 'తూర్పు భాగోతం', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(126, 'urumula nRtyaM', 'Thunder Dance', 'ఉరుముల నృత్యం', 'Folk', '', 'చితికి జీర్ణమైపోయిన అనేక జానపద కళా రూపాల ఈనాడు మనకు కనబడకుండా కనుమరుగై పోయాయి. అలా కను మరుగైన కళారూపాలలో ఉరుముల నృత్యం ముఖ్యమైనది. తలకు అందంగా రుమాళ్ళు చుట్టుకుని మెడల్లో కాసుల దండలు ధరించి ఎఱ్ఱని, పచ్చనివీ శాలువలు కప్పుకుని, నిలువు అంగీలు ధరించి, పల్ల వేరు చెట్టు కర్రతో తయారు చేసిన ఉరుములకు చర్మపు మూతలు మూసి, కదర పుల్లలతో వాయించు కుంటూ దేవాలయ ప్రాంగణాల్లో, ఉరుముల నృత్యం చేస్తూ వుంటారు. ఉరుము అనే పేరును బట్టి వాయిద్య ధ్వని ఉరుమును పోలి వుండవచ్చును. అందు వల్ల వాటికి ఉరుములు అనే నామకరణం చేసి వుండవచ్చు.', 'https://scontent-ort2-1.xx.fbcdn.net/v/t1.0-9/545229_464710686922911_1235437945_n.jpg?oh=57834bdfd79e9d16ebcec533631b95c6&amp;oe=5995D7C3,https://scontent-ort2-1.xx.fbcdn.net/v/t1.0-9/13575_464711206922859_1418224701_n.jpg?oh=d3d357c70051dcb62191d0882726ecf4&amp;oe=5958F58B', 'https://www.youtube.com/embed/5mbl3mY_WFE,https://www.youtube.com/embed/BS6F6mDKlRo', '', 'Selected', '', 'https://te.wikipedia.org/wiki/ఉరుము_నృత్యము, https://te.wikisource.org/wiki/తెలుగువారి_జానపద_కళారూపాలు/ఉరుమును_మించిన_ఉరుముల_నృత్యం , http://www.webindia123.com/andhra/ART/urumulu.htm', NULL, NULL, NULL, NULL, 'telugu'),
(127, 'uyyaala paaTalu', '', 'ఉయ్యాల పాటలు', 'Folk', '', '', 'http://images.kinige.com/cover600/5700/BangaruBatukammaUyyalaPatalu600.jpg', '', '', 'Submitted', '', 'http://www.andhrajyothy.com/artical?SID=319513,', NULL, NULL, NULL, NULL, 'telugu'),
(128, 'vaishNava daasari paaTalu', '', 'వైష్ణవ దాసరిపాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', 'http://konamanini.blogspot.in/2012/01/blog-post_29.html', NULL, NULL, NULL, NULL, 'telugu'),
(129, 'vaalakaalu', '', 'వాలకాలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(130, 'viidhi bhaagavathulu', '', 'వీధి భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(131, 'viidhi naaTakaalu', 'Street Play, వీధి నాటకము', 'వీధి నాటకాలు', 'Folk', '', '', 'https://i.ytimg.com/vi/p_ttveAwzB4/hqdefault.jpg,https://i.ytimg.com/vi/6wMsi-o11KI/maxresdefault.jpg,', '', '', 'Submitted', '', 'http://telugubhasha.in/saahithyam/janapadha_veedhinatakam.php,\r\nhttp://api.navatelangana.com/Sopathi/81100', NULL, NULL, NULL, NULL, 'telugu'),
(132, 'viidhi puraaNaalu', '', 'వీధి పురాణాలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(133, 'viidhi daasarlu', '', 'వీధి దాసర్లు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(134, 'vilaasini naaTyaM', 'చిన్న మేళం', 'విలాసిని నాట్యం', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://en.wikipedia.org/wiki/Vilasini_Natyam', NULL, NULL, NULL, NULL, 'telugu'),
(135, 'vipra vinoodulu', '', 'విప్రవినోదులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(136, 'viira bhadra vinyaasaM', '', 'వీరభద్ర విన్యాసం', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/వీర_శైవుల_వీర_భద్ర_విన్యాసాలు', NULL, NULL, NULL, NULL, 'telugu'),
(137, 'viira khaDgaalu', '', 'వీరఖడ్గాలు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(138, 'viira muShTivaaru', '', 'వీరముష్టివారు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/వీరముష్టివారు ,\r\nhttp://apculturedept.com/artservlets/jsp/ArtsView/kadhalu/gotoUrlImages/veera%20mushti.pdf,\r\nhttp://www.navatelangana.com/article/jaatara/538986,', NULL, NULL, NULL, NULL, 'telugu'),
(139, 'viira naaTyaalu', '', 'వీరనాట్యాలు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/వీరనాట్యమే_వీరుల_కొలువు', NULL, NULL, NULL, NULL, 'telugu'),
(140, 'viira vidyaavaMtulu', '', 'వీరవిద్యావంతులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(141, 'yaksha gaanaM', '', 'యక్షగానం', 'Folk', '', '', 'http://files.prokerala.com/news/photos/imgs/800/artists-perform-yakshagana-organised-by-441510.jpg,http://1.bp.blogspot.com/-pDPB5bHbQm8/UPgM0hPkWyI/AAAAAAAAAIs/BXMwGR7Poco/s1600/208313-veera-vrushasena-yakshagana-play.jpg,https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/FullPagadeYakshagana.jpg/220px-FullPagadeYakshagana.jpg,https://upload.wikimedia.org/wikipedia/commons/8/8d/Kondadakuli.jpg,', 'https://www.youtube.com/embed/LErVC7NQipY,https://www.youtube.com/embed/CTSUBIqdzEM,https://www.youtube.com/embed/4wcf-RYVBlE', '', 'Submitted', '', 'http://www.andhrabharati.com/vachana/vyAsamulu/yaxagAnamu.html, https://en.wikipedia.org/wiki/Yakshagana,\r\nhttps://te.wikipedia.org/wiki/యక్షగానం', NULL, NULL, NULL, NULL, 'telugu'),
(142, 'yaanaadi bhaagavatulu', '', 'యానాది భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(143, 'koolaaTaM', 'Jada KolaTam, జడ కోలాటం, జడకొప్పు కోలాటం', 'కోలాటం', 'Folk', '', '', 'https://i.ytimg.com/vi/qDSW7Oi6iyY/maxresdefault.jpg, http://www.yohyoh.com/img_upload/server/php//files/54398fb913be590a7f31059500c22dbc5a08.jpeg, http://www.ourlaxminagar.org/gallery_pics/telangana_book/02.png', 'https://www.youtube.com/watch?v=Ng9pbl4mctI, \nhttps://www.youtube.com/watch?v=V0_ZViQvEPI,\nhttps://www.youtube.com/watch?v=CujKdQqL_ck,', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/కోలాటం ,', NULL, NULL, NULL, NULL, 'telugu');
INSERT INTO `dances` (`dance_id`, `dance_english_name`, `dance_alternate_name`, `dance_telugu_name`, `dance_category`, `dance_origin`, `dance_description`, `dance_image_reference`, `dance_video_reference`, `dance_key_words`, `dance_status`, `artist_images`, `links`, `malayalam_name`, `hindi_name`, `odish_name`, `bengal_name`, `native_disp_language`) VALUES
(144, 'DO NOT DELETE', 'నొత్', 'జనరల్ - డిలీట్ చేయవద్దు', 'Folk', '', 'http://yourshot.nationalgeographic.com/profile/662895/\r\nకోలాటం\r\nకొమ్మునృత్యం\r\nజముకు\r\nబొమ్మలకొలువు\r\nప్రభలు\r\nఅగటి, తుణాలిచిందులు, కరగలు లేక గరగలు, కరువనృత్యం, కావడిచిందు, కుగ్మా, కొయ్యకాళ్లు, కొలువులు, కోలాటం, గొబ్బి, చిరతలభజన, చెక్క్భజన, జంగంపాటలు, జడకోలాటం, జముకులు, డప్పు కోలాటం, తప్పెట గుండ్లు, వీరనాట్యం\r\nబుట్టబొమ్మలు\r\nబుర్ర కథ\r\nతండాలనృత్యం\r\nయక్షగానం\r\nతప్పెటగుళ్ళు\r\nజంగందేవరలు\r\nఎడ్లపందాలు\r\nపులివేషం\r\nహరిదాసులు\r\nగోరింటాకు\r\nముగ్గులు\r\nగుసాడీ\r\nథింసా\r\nడప్పు\r\nశరభనృత్యం\r\nచెమ్మచెక్క\r\nరుంజ\r\nగంగిరెద్దులు\r\nచెడుగుడు\r\nజంగందేవర\r\nచోడిగాడి కలాపం\r\nదేవదాసినృత్యం\r\nపకీరు వేషం\r\nడప్పరి నృత్యం\r\nపిట్టలదొర\r\nబుడబుక్కలవాడు\r\nగొంతెలమ్మ అశ్వనృత్యం\r\nలంబాడి గన్నెగాడు\r\nబుడిగే జంగాలు\r\nకనక తప్పెట్లు\r\nవాలకం నృత్యం\r\nచెంచునృత్యం\r\nఘటనృత్యం\r\nవిప్రవినోధం\r\nదేవతాకొలువులు\r\nదండగానం\r\nజిత్తుల గారడి\r\nఎరుకలసాని\r\nకొమ్మదాసరి\r\nఉరుముల నృత్యం\r\nచిందు భాగవతం\r\nభజన\r\nకాశీకావడి\r\nమందులవారి వేషాలు\r\nవీర శైవులు\r\nగొల్ల సుద్దులు\r\nవీరభద్ర విన్యాసం\r\nపగటి వేషాలు\r\n\r\nhttp://www.thehindu.com/lf/2002/03/19/stories/2002031904630200.htm,\r\n\r\nhttps://www.youtube.com/watch?v=dLRbFN4JRFI\r\n\r\nhttps://te.wikipedia.org/wiki/తెలుగు_సంస్కృతి\r\n\r\nజానపద గాయకులు - రుంజవారు, బీరన్నలవారు, వీరముష్టివారు, బవనీలవారు, జంగములు, పిచ్చుకగుంట్లవారు, దాసరులు, శారదకాండ్రు, మొదలైనవారు.వీరు అనేక విధములైన వాద్య విశేషములతో ఊరూరా తిరుగుతూ వాద్యాలను వినిపిస్తూ పాటలు పాడుతుంటారు. \r\n\r\nజానపద వాద్యవిశేషాలు:- వీరణములు, గుమ్మెట, ఒగ్గులు, కోలలు, శంఖము, శారద, అందేలు, కటివాద్యము, డప్పు, తప్పెట, తాళాలు, తంబుర, జమిడికలు, చిరుతలు, నాగస్వరము, గజ్జెలు, ఢిక్కి, పిల్లనగ్రోవి, కొమ్ముబూరలు, బుర్రలు, రుంజ మొదలయినవి. వీరు పాడే పాటల్లో, చెప్పే కథల్లో చారిత్రక, పౌరాణిక, పారమార్థిక ఇతివృత్తాలు ప్రధానాలు.\r\n\r\nజానపద కళారూపాలు ఎన్నో - మరెన్నో\r\n\r\nఒక్కొక్క కళను గురించి ఒక్కొక్క గ్రంధం రాయవచ్చు. కీలు బొమ్మలు, బుట్టబొమ్మలు, శారదగాండ్రు, మూకాభినయాలు, వీరభద్ర విన్యాసం, జముకుల కథలు, గారడీ ప్రదర్శనలు, డప్పుల కోలాటం, గరగ నృత్యం, పులివేషాలు, కాముని పున్నమి వినోదాలు, గొల్లసుద్దులు, వీరముష్టివారు, ఫకీరు వేషాలు, తుమ్మెదపాటలు, గోండుజాతి నృత్యాలు, విప్రవినోదులు, బతుకమ్మ, బొడ్డెమ్మ పండుగలు, సాధనాశూరులు, గంటె భాగవతులు, కాటి కాపటివాళ్ళు, బైండ్లవాళ్ళు, కోలాటనృత్యం, దొమ్మరాటలు, జంతరు పెట్టె, వీథిపురాణం, అశ్వనృత్యం - పిచ్చుకుంటల కథలు, హరిహరీపదాలు, ఘటనృత్యం, కాశీకావళ్ళు, బుడబుక్కలు - ఇలా ఒకటేమిటి - తెలుగు కళామతల్లి మణిహారాలుగా ఎన్నో వర్థిల్లాయి - వర్థిల్లుతున్నాయి ప్రతి కళకూ ఒక చరిత్ర - ఒక ప్రత్యేకత ఉంది. జానపద కళారూపాలు - ఇంకా ఎన్నో మరెన్నో దేశవ్యాప్తంగా ప్రజల మధ్య - ప్రజానందాన్ని అందిస్తూ - ప్రజాకళలుగా వర్థిల్లుతూనే ఉన్నాయి.', '', 'https://www.youtube.com/embed/dLRbFN4JRFI,\r\nhttps://www.youtube.com/embed/L41zrzjSdC0&amp;list=PLU6j6SJJ1t7oVBps29VXoUwN_-cSrs2dk', '', 'Submitted', '', 'https://www.ntnews.com/nipuna-education/తెలంగాణ-జానపద-కళారూపాలు-15-2-476996.aspx ,\r\nhttp://www.trjks.in/,http://www.maganti.org/andhrakalalu/videos/jogadhenu.pdf,\r\nhttps://www.youtube.com/watch?v=L41zrzjSdC0&amp;list=PLU6j6SJJ1t7oVBps29VXoUwN_-cSrs2dk, https://te.wikipedia.org/wiki/కుల_పురాణాలు ,\r\nhttp://www.thehindu.com/lf/2002/03/19/stories/2002031904630200.htm,http://shodhganga.inflibnet.ac.in/bitstream/10603/65194/8/08_chapter%202.pdf, http://kalingaseema.blogspot.com/2010/12/blog-post_19.html,\r\nhttps://www.youtube.com/watch?v=dLRbFN4JRFI, https://te.wikipedia.org/wiki/తెలుగు_సంస్కృతి ,\r\nhttp://shodhganga.inflibnet.ac.in/bitstream/10603/65194/7/07_chapter%201.pdf, https://te.wikipedia.org/wiki/ఆదిమ_వాసుల_గిరిజన_కళా_రూపాలు ,http://navarasabharitham.blogspot.com/2012/01/blog-post_13.html,http://www.sakshi.com/news/funday/crops-festival-makar-sankranti-202765;\r\nhttp://yourshot.nationalgeographic.com/profile/662895/', NULL, NULL, NULL, NULL, 'telugu'),
(145, 'palle suddulu', '', 'పల్లె సుద్దులు', 'Folk', '', '', '', 'https://www.youtube.com/embed/hIFyWykXk2w;\r\nhttps://www.youtube.com/wembed/x4u6KiSvK9s', '', 'Submitted', 'assets/artist_images/tana_6.PNG', 'http://www.navatelangana.com/article/khammam/502641', NULL, NULL, NULL, NULL, 'telugu'),
(146, 'saamu garaDi', 'కర్ర సాము, కత్తి సాము, karra saamu, katti saamu, Silambam, Silambattam, Silambattam, Chilambam', 'సాము గారడి', 'Folk', '', '', 'https://s-media-cache-ak0.pinimg.com/originals/03/13/bf/0313bfda94da528f6bd2e843886e1296.jpg,\r\nhttps://s-media-cache-ak0.pinimg.com/originals/85/f9/6b/85f96b00b570e498d0e71e1a808a4a83.jpg,\r\nhttps://s.yimg.com/ny/api/res/1.2/PEycVxriwvfYoSYXdtFJmw--/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9ODAwO2lsPXBsYW5l/http://media.zenfs.com/en_us/News/ap_webfeeds/636a0b14d966191b7a0f6a7067006662.jpg', 'https://www.youtube.com/embed/RtyQr9uNDRU,https://www.youtube.com/embed/v5exUZOhT2Q,https://www.youtube.com/embed/uwxOAc16fWA,https://www.youtube.com/embed/jcybAnS4LYQ,', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/సాము , https://te.wikipedia.org/wiki/కత్తిసాములు,_కర్ర_సాములు ,Silambam, Silambattam, Silambattam, Chilambam', NULL, NULL, NULL, NULL, 'telugu'),
(147, 'BABU TEST', 'trying out', 'బాబు టెస్ట్', 'Folk', 'Orissa', 'తెలుగునాట జానపద వినోదగాన ప్రక్రియలలో ప్రబోధానికీ, ప్రచారానికీ సాధనంగా ఈ నాటికీ విస్తృతంగా ఉపయోగపడే కళారూపం బుర్ర కథ. కథకుని చేతిప్రక్రియ ఇది. ప్రదర్శన సౌలభ్యాన్ని బట్టి, వీర గాథలు, త్యాగమూర్తుల కథలు బుర్ర కథల ఇతివృత్తాలుగా బాగా పేరు కొన్నాయి.ఈ ప్రక్రియ ప్రచార సాధనంగా ఎంతగానో ఉపకరిస్తోంది. కుటంబ నియంత్రణ, రాజకీయ ప్రచారము, ప్రజలను విజ్ఙానవంతులను చేయడము వంటి కార్యక్రమాలలో ఇది బాగా వాడబడింది.జంగంకథ, పంబలకథ, జముకులకథ, పిచ్చుకుంట్ల కథ, తరువాతవచ్చింది.డాలు, కత్తితో పాడే ప్రధాన కథకుడికి పిచ్చిగుంట్ల కథలో ఇద్దరు వంతలున్నట్లే బుర్రకథలోకూడా ఉంటారు.\r\nదీనికి మాన్యత కల్పించి పద్మశ్రీ బిరుదు సంపాదించుకున్నవారు షేక్ నాజర్. పేరునుబట్టి వీరు ఇస్లాం మతానికి చెందిన వారైనా చెప్పిన కథలలో ఎక్కువ భాగం హిందూ దేవీదేవతలకు చెందినవే. శ్రీకాకుళం పర్యటించినప్పుడు శ్రోతలు బొబ్బిలియుద్ధం కథ కోరారు. దానితో నాజర్ తానే కథారచనకూ నడుంబిగించాడు. అంతేకాదు సామ్యవాద దృక్పధం గల వీరిని 1940వ దశకంలో కమ్యూనిస్టు పార్టీ నెల జీతంమీద కథలు చెప్పించి పల్లెలలో తమ పార్టీ ప్రచారానికి ఉపయోగించుకున్నది.\r\nనాజర్ బొబ్బిలియుద్ధం, అల్లూరి సీతారామరాజు ప్రహ్లాద, క్రీస్తు, పల్నాటి యుద్ధం బెంగాల్ కరువు వంటి వస్తు వైవిధ్యంగల కథలను చెప్పి రక్తికట్టించారు. తెనాలిలోని బాలరత్న నాటక సమాజంలో ప్రారంభమైన నాజర్ కథాకథన ప్రస్థానం నాలుగు దశాబ్దాలు అవిచ్ఛిన్నంగా సాగింది.', 'http://1.bp.blogspot.com/_Wsvv95vvWkI/S81bbfUwTfI/AAAAAAAAAD0/0e0Pcf81Ni4/s1600/Burra+Katha+Dancers+MedShot.jpg,http://media.radiosai.org/journals/Portal/pd-articles/pdimages/28th_june/106_5116.jpg', 'https://www.youtube.com/embed/Vh8bkIKSCpY,https://www.youtube.com/embed/fg78lSiXeqo,https://www.youtube.com/embed/r3OrWpoAMLs', '', 'In Progress', 'assets/artist_images/tana_10.JPG, assets/artist_images/tana_7.PNG', 'https://en.wikipedia.org/wiki/Burra_katha, http://www.nrityanjali.org/th_bur.html', NULL, NULL, NULL, NULL, 'telugu'),
(148, 'batukamma', '', 'బతుకమ్మ', 'Folk', 'telangana', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/బతుకమ్మ , http://telugubhasha.in/saahithyam/janapadha_Batukamma.php', NULL, NULL, NULL, NULL, 'telugu'),
(149, 'toolu bommalaaTa', 'Leather Puppets, Shadow Puppets', 'తోలు బొమ్మలాట', 'Folk', '', '', 'https://c1.staticflickr.com/2/1376/5168099575_1efcc6dd65_b.jpg,\r\nhttp://www.exoticindia.com/books/tolu_bommalata_the_shadow_puppet_theatre_of_andhra_idk321.jpg,\r\nhttp://blog.gaatha.com/wp-content/uploads/2010/02/charmakari.jpg,\r\nhttps://s-media-cache-ak0.pinimg.com/236x/24/fa/a0/24faa007986069667230ce1979b27c71.jpg', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/తోలుబొమ్మలాట ,\r\nhttp://www.sakshi.com/news/family/today-is-the-day-of-the-world-pappetri-223599,\r\nhttps://scontent.xx.fbcdn.net/v/t1.0-9/1688302_730328190421093_8533719254081880913_n.jpg?oh=06a65beb599b3ecad619f675d4c32db2&amp;oe=598B1179', NULL, NULL, NULL, NULL, 'telugu'),
(150, 'tummeda paaTalu', '', 'తుమ్మెద పాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/తుమ్మెద_పాటలు', NULL, NULL, NULL, NULL, 'telugu'),
(151, 'kommula vaaru', 'కాటంరాజు కొమ్ము కథలు', 'కొమ్ముల వారు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/కాటమరాజు_కొమ్ము_కథలు', NULL, NULL, NULL, NULL, 'telugu'),
(152, 'komma daasari', '', 'కొమ్మ దాసరి', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikisource.org/wiki/తెలుగువారి_జానపద_కళారూపాలు/కొమ్మాయి_దాసుడే,_కొమ్మదాసరి', NULL, NULL, NULL, NULL, 'telugu'),
(153, 'dommari aaTalu', '', 'దొమ్మరి ఆటలు', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/దొమ్మరి_ఆటలు', NULL, NULL, NULL, NULL, 'telugu'),
(154, 'nemali nRtyam', 'peacock dance', 'నెమలి నృత్యం', 'Folk', '', '', '', 'https://www.youtube.com/embed/FZw_HJuNHCE', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(155, 'gussaadi dance', '', 'గుస్సాది నాట్యం', 'Folk', '', '', 'http://www.telanganafirst.in/wp-content/uploads/2015/08/GussadiDanceTELAN05aug2015.jpg,https://s-media-cache-ak0.pinimg.com/originals/bf/5e/2d/bf5e2dbd4a00109f68a4cdfd5dbdec74.jpg,http://telugustoday.com/wp-content/uploads/2015/08/Gussadai-dance-e1438788814865.jpg', 'https://www.youtube.com/embed/BALztBlBbQQ,https://www.youtube.com/embed/TthXWUQODRw', 'Tribal', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(156, 'prabhalu', '', 'ప్రభలు', 'Folk', '', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Prabha_17.jpg/500px-Prabha_17.jpg,\r\nhttps://upload.wikimedia.org/wikipedia/commons/c/c2/Prabha_27.jpg,\r\nhttps://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Prabha_04.jpg/540px-Prabha_04.jpg,\r\nhttps://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Prabha_12.jpg/396px-Prabha_12.jpg', 'https://www.youtube.com/embed/3iQtOAaLoDk', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/ప్రభల_సంస్కృతి ,', NULL, NULL, NULL, NULL, 'telugu'),
(157, 'kaaSi kaavaDi', '', 'కాశీ కావడి', 'Folk', '', '', 'https://lh5.googleusercontent.com/proxy/nh1OMqIW_o81y3vM7e28DbJWydzyR0Jepg8XNV6_jkgxL-QfN9Q26MNlkCME57MOXEbYvB0iFl3BbI8BnVum-BYeLIldTsp9qmCMtKcMnYHCI4nN4s3r-a42lMmc=w5000-h5000,\r\nhttp://2.bp.blogspot.com/-ZLBWknmvbyo/VDYoNuX67oI/AAAAAAAAHJk/KsbjMhETCFA/s1600/Kasi%2BKavadi.tif', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/కాశీ_కథలు_చెప్పే_కాశీ_కావడి', NULL, NULL, NULL, NULL, 'telugu'),
(158, 'buTTa bommalu', '', 'బుట్ట బొమ్మలు', 'Folk', '', '', 'http://anubimb.com/wp-content/uploads/2009/12/dasara-dolls.jpg,https://upload.wikimedia.org/wikipedia/te/c/ca/BUTTABOMMALU-2.jpg,http://www.andhrabulletin.in/AP_AB/images/Butta%20bommalu.gif,\r\nhttp://www.puppetindia.com/images/mP9.jpg', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/బుట్టబొమ్మలు ,\r\nhttp://www.andhrabulletin.in/AP_AB/andhra_jaanapadha_buttabommalu.php,\r\nhttp://www.puppetindia.com/misc3.htm', NULL, NULL, NULL, NULL, 'telugu'),
(159, 'oggu Dolu', '', 'ఒగ్గు డోలు', 'Folk', '', '', 'http://img.sakshi.net/images/cms/2016-08/81471109200_625x300.jpg,\r\nhttp://4.bp.blogspot.com/-_ExovfNtg9M/VdBE-BSVbUI/AAAAAAAABcg/sy0RS26lD1A/s1600/20150810_165700.jpg,https://i.ytimg.com/vi/KsVb-7Zx-GY/maxresdefault.jpg,http://4.bp.blogspot.com/-xnPeuHCARqw/VdBFCxcZMnI/AAAAAAAABdM/Lxpk_11lP6U/s1600/20150810_171620.jpg,http://2.bp.blogspot.com/-Kpcz7aRyPH0/VcNhCMqtQPI/AAAAAAAABMM/Ah-Ha_0r54M/s1600/20150803_180320.jpg,', 'https://www.youtube.com/embed/L8nqwNBFXtA, https://www.youtube.com/embed/dKt86Hp4rcc', '', 'Submitted', '', 'http://www.sakshi.com/news/district/drum-ghallu-380376', NULL, NULL, NULL, NULL, 'telugu'),
(160, 'daasari bhaagavathaM', '', 'దాసరి భాగవతం', 'Folk', '', '', '', 'https://www.youtube.com/embed/e_fMjtNc16s', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(161, 'gootroolooLLa bhaagavathaM', '', 'గోత్రోలోళ్ళ భాగవతం', 'Folk', '', '', '', 'https://www.youtube.com/embed/z4C5OhOJoRc', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(162, 'naayi brahma puranam', '', 'నాయీ బ్రహ్మ పురాణం', 'Folk', '', '', '', 'https://www.youtube.com/embed/1gFww8XLg5o', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(163, 'jaalari nRtyaM', '', 'జాలరి నృత్యము', 'Folk', '', '', '', 'https://www.youtube.com/watch?v=OI7lFBemUkk,', '', 'Submitted', '', 'http://andhrajalari.com,\r\nhttps://te.wikipedia.org/wiki/సంపత్_కుమార్', NULL, NULL, NULL, NULL, 'telugu'),
(164, '150_Testing', '', '150_టెస్టింగ్', 'Folk', '', '150_టెస్టింగ్\r\n\r\nDescription is here', 'http://cms.ysu.edu/sites/default/files/images/web-ysu/Testing_in_Progress.gif,\r\nhttp://www.sevenhills.org/uploads/child_care_resources/CCR-BrainBuildingLogo200.png', '', '', 'Done', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(165, 'Testing the spaces', '', 'టెస్టింగ్ స్పేసెస్', 'Folk', '', 'line one,\r\nline two will give two spaces after this line\r\n\r\nline three \r\nlive four', '', '', '', 'Done', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(166, 'testing delete', '', '', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(167, 'Testing Delete 2', '', '', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(168, 'siddI nrutyaM', '', 'సిద్దీ నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', 'https://te.wikipedia.org/wiki/సిద్దీ_నృత్యం', NULL, NULL, NULL, NULL, 'telugu'),
(169, 'dummy dance', '', 'దమ్మీ దాన్స్', 'Folk', '', '', '', '', '', 'Submitted', '', '', NULL, NULL, NULL, NULL, 'telugu'),
(170, 'Mohiniyattam', 'Mohiniattam', '', 'classical', 'Kerala', 'Mohiniattam or Mohiniyattam is an Indian classical dance form that evolved in the state of Kerala, India, and is counted among the two popular dance arts of the state, the other being Kathakali. Although its roots date back to the age-old Sanskrit Hindu text on performing arts called ‘Natya Shastra’, similar to other Indian classical dance forms, Mohiniattam adheres to the Lasya type that showcases a more graceful, gentle and feminine form of dancing. Mohiniattam derives its name from the word ‘Mohini’, a female avatar of Lord Vishnu. Conventionally a solo dance performed by female artists, it emotes a play through dancing and singing where the song is customarily in Manipravala which is a mix of Sanskrit and Malayalam language and the recitation may be either performed by the dancer herself or by a vocalist with the music style being Carnatic. \r\n\r\nThe theoretical foundation of this dance form like other major classical dance forms of India has its roots in sage Bharata Muni’s text called ‘Natya Shastra’, a Sanskrit Hindu text that deals with performing arts. The first complete version of ‘Natya Shastra’ is considered by some sources to have been completed between 200 BCE to 200 CE while some others mention the timeframe between 500 BCE and 500 CE. It breaks dance into two specific types, the first one being ‘nritta’ or pure dance that centres around finesse of hand movements and gestures, and the other being ‘nritya’ that features the expressive aspect of dance. ‘Natya Shastra’ elucidates several theories of Indian classical dances including on standing postures, basic steps, bhava, rasa, methods of acting and gestures as also two forms of dance – the Tandava dance of Lord Shiva that exhibits more vigour and vitality and the Lasya dance that is more delicate and graceful. The Lasya dance theme and structure is followed in Mohiniattam.\r\n\r\nMohiniattam evolved from the state of Kerala which also has an association with the old tradition of Lasya style of dancing. The temple sculptures of the state are the earliest manifestations of Mohiniattam or other dance forms similar to it. Mohiniattam poses are also palpable from the various feminine sculptures that adorn the 11th century Vishnu temple at Trikodithanam, and the Kidangur Subramanya temple. The Lasya theme was incorporated by Malayalam bards and playwrights, a fact evident from the text-based records starting from the 12th century. The 16th century book titled ‘Vyavaharamala’ written by scholar, poet, author and astrologer Mazhamangalam Narayanan Namboodiri is the first known book that mentions the term Mohiniyattam in connection with a payment due to a Mohiniyattam dancer. While discussing about various performing art forms of Kerala, renowned poet Kunchan Nambiar in his 17th century book ‘Gosha Yatra’ mentioned about Mohiniyattam. By that time this dance form had emerged as one of the classical art forms of the state. The 18th century Sanskrit treatise ‘Balarama Bharatam’ on natyam written by the king of Travancore Karthika Thirunal Bala Rama Varma (considered to be a significant secondary work on ‘Natya Shastra’) refers about ‘Mohino Natana’ among various other dance styles.', 'https://www.culturalindia.net/iliimages/Mohiniattam-1.jpg', 'https://www.youtube.com/watch?v=m_avP6toESU', NULL, NULL, '', 'https://www.culturalindia.net/indian-dance/classical/mohiniattam.html', 'മോഹിനിയാട്ടം', NULL, NULL, NULL, 'telugu'),
(171, 'Gambhira', '', '', 'folk', 'Bengal', 'One of the folk dances of West Bengal, it is a traditional and devotional form of dance. This dance is performed by the devout devotees of Goddess Shakthi. This dance has undergone various changes over time and this lead to the Muslim community to become a custodian of this dance.\r\n\r\nThis dance involves two main dancers surrounding a chorus of people. The two main dancers dance to the tune of the harmonium, flute, drum and the judi. The dancers express their emotions through their dialogues and their signature dialogues which are repeated by the chorus.', 'http://mythicalindia.com/wp-content/uploads/2016/05/pic1-1.jpg', 'https://www.youtube.com/watch?v=Qjob2jLDwhc', NULL, NULL, '', 'http://mythicalindia.com/features-page/5-popular-folk-dances-of-west-bengal/', NULL, NULL, NULL, 'Gambhira', 'telugu');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(2, 'ramu', '2c5280f16cfa61571602a788d525c0b27d5b5163'),
(3, 'babu', '38331fe6f80d82c118c1b893f901a6276b3f3999'),
(4, 'siva', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(6, 'sumangal', '5f4dcc3b5aa765d61d8327deb882cf99');

-- --------------------------------------------------------

--
-- Table structure for table `Resources`
--

CREATE TABLE `Resources` (
  `ID` int(11) NOT NULL,
  `RESOURCE_TYPE` varchar(40) NOT NULL,
  `RESOURCE_NAMES` varchar(40) NOT NULL,
  `RESOURCE_LOCATION` varchar(50) NOT NULL,
  `ISBN` varchar(40) NOT NULL,
  `PUBLICATION_DATE` date NOT NULL,
  `AUTHOR_NAME` varchar(60) NOT NULL,
  `PUBLICATION_COMPANY` varchar(40) NOT NULL,
  `AUTHOR2_NAME` varchar(60) NOT NULL,
  `AUTHOR3_NAME` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Resources`
--

INSERT INTO `Resources` (`ID`, `RESOURCE_TYPE`, `RESOURCE_NAMES`, `RESOURCE_LOCATION`, `ISBN`, `PUBLICATION_DATE`, `AUTHOR_NAME`, `PUBLICATION_COMPANY`, `AUTHOR2_NAME`, `AUTHOR3_NAME`) VALUES
(1, 'Book', 'Kathak nritya shiksha', '', '978-8190105798', '2016-12-05', 'Puru Dadheech', 'Test', 'Author2Name', 'Ajinkya'),
(3, 'Online', 'Marjaani - Indian Dance 2011', 'youtube.com', '', '0000-00-00', 'Thrisa Rao', '', '', ''),
(5, 'Magazine', 'Sruti Magazine', 'http://www.sruti.com/', '', '0000-00-00', '', ' The Sruti Foundation, ', '', ''),
(7, 'Book', 'American Dance: The Complete Illustrated', 'https://www.amazon.ca/American-Dance-Complete-Illu', '978-0760345993', '0000-00-00', ' Margaret Fuhrer', 'Voyageur Press', '', ''),
(9, 'Book', 'Test', '', '123456789', '2017-11-21', 'Jonh Skypia', 'Penguin Books', 'Rjo Dwani', 'Test'),
(10, 'Book', 'Test', '', '123456789', '2017-11-21', 'Jonh Skypia', 'Penguin Books', '', ''),
(11, 'Book', 'Test', '', '123456789', '2017-11-21', 'Jonh Skypia', 'Penguin Books', '', ''),
(12, 'Book', 'Test', '', '123456789', '2017-11-21', 'Jonh Skypia', 'Penguin Books', '', ''),
(13, 'Book', 'Test', '', '123456789', '2017-11-21', 'Jonh Skypia', 'Penguin Books', '', ''),
(14, 'Book', 'Test', '', '123456789', '2017-11-21', 'Jonh Skypia', 'Penguin Books', '', ''),
(15, 'Book', 'Test', '', '123456789', '2017-11-21', 'Jonh Skypia', 'Penguin Books', '', ''),
(16, 'Book', 'Test', '', '123456789', '2017-11-21', 'Jonh Skypia', 'Penguin Books', '', ''),
(17, 'Magazine', 'Night\r\n', '', '123456789', '2017-11-21', 'Jonh Skypia', 'Penguin Books', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `word_list`
--

CREATE TABLE `word_list` (
  `english_word` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `telugu_word` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hindi_word` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kannada_word` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `malayalam_word` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gujarathi_word` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `word_list`
--

INSERT INTO `word_list` (`english_word`, `telugu_word`, `hindi_word`, `kannada_word`, `malayalam_word`, `gujarathi_word`) VALUES
('acrobat', 'శ్రమజీవి', 'कलाबाज', 'acrobat_k', 'acrobat_m', ''),
('aeroplane', 'విమానంలో', 'विमान', 'plane_k', 'plane_m', 'plane_g'),
('air', 'ఎయిర్', 'वायु', 'air_k', 'air_m', 'air_g'),
('alligator', 'ఎలిగేటర్', 'मगर', 'alligator_k', '', ''),
('alphabets', 'వర్ణమాలలు', 'अक्षर', '', '', ''),
('anchor', 'లంగరు', 'लंगर', '', '', ''),
('Angle', 'కోణము', 'कोण', '', '', ''),
('animal', 'జంతువు', 'जानवर', 'animal_k', 'animal_m', 'animal_g'),
('sun', 'సూర్యుని', 'रवि', 'sun_k', 'sun_m', 'sun_g');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Artists`
--
ALTER TABLE `Artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dances`
--
ALTER TABLE `dances`
  ADD PRIMARY KEY (`dance_id`),
  ADD UNIQUE KEY `dance_id` (`dance_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `Resources`
--
ALTER TABLE `Resources`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `word_list`
--
ALTER TABLE `word_list`
  ADD PRIMARY KEY (`english_word`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dances`
--
ALTER TABLE `dances`
  MODIFY `dance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Resources`
--
ALTER TABLE `Resources`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
