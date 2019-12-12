-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2017 at 01:14 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ics325sp1713`
--

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
  `links` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dances`
--

INSERT INTO `dances` (`dance_id`, `dance_english_name`, `dance_alternate_name`, `dance_telugu_name`, `dance_category`, `dance_origin`, `dance_description`, `dance_image_reference`, `dance_video_reference`, `dance_key_words`, `dance_status`, `artist_images`, `links`) VALUES
(1, 'B-Boying', 'Breakdance', 'బ్రేక్ డాన్సు', 'Folk', 'USA', 'B-boying or breaking, also called breakdancing, is a style of street dance that originated primarily among Puerto Rican and African American youth, many former members of the Black Spades, the Young Spades, and the Baby Spades, during the mid 1970s.[1] Th', 'https://upload.wikimedia.org/wikipedia/commons/0/01/Breakdance.jpg, http://ttldancespringfieldmo.com/resources/Tagged_Class_Photos/Hip_Hop/BreakDance%20B%20Boy%20Springfield%20mo.jpg', 'https://www.youtube.com/embed/2oRysW2mm4A, https://www.youtube.com/embed/44kKLeDKIIc', 'breakdance, bboy, modern, other, usa', 'Submitted', 'assets/artist_images/artist_images.png', 'https://en.wikipedia.org/wiki/B-boying,\r\nhttps://simple.wikipedia.org/wiki/Breakdance,\r\nhttp://www.dictionary.com/browse/break-dancing,\r\nhttp://www.wikihow.com/Breakdance'),
(2, 'Kabuki', '歌舞伎', 'కబుకి', 'Other', 'Japan', '1603–1629: Female kabuki\r\nThe earliest portrait of Izumo no Okuni, the founder of kabuki (1600s)\r\n\r\nThe history of kabuki began in 1603 when Izumo no Okuni, possibly a miko of Izumo-taisha, began performing a new style of dance drama in the dry riverbeds of Kyoto. It originated in the 17th century.[2] Japan was under the control of the Tokugawa shogunate, enforced by Tokugawa Ieyasu.[3] The name of the Edo period derives from the relocation of the Tokugawa regime from its former home in Kyoto to the city of Edo, present-day Tokyo. Female performers played both men and women in comic playlets about ordinary life. The style was immediately popular, and Okuni was asked to perform before the Imperial Court. In the wake of such success, rival troupes quickly formed, and kabuki was born as ensemble dance and drama performed by women—a form very different from its modern incarnation. Much of its appeal in this era was due to the ribald, suggestive themes featured by many troupes; this appeal was further augmented by the fact that the performers were often also available for prostitution.[1] For this reason, kabuki was also called &quot;遊女歌舞妓&quot; (prostitute-singing and dancing performer) during this period.\r\n\r\nKabuki became a common form of entertainment in the ukiyo, or Yoshiwara,[4] the registered red-light district in Edo. A diverse crowd gathered under one roof, something that happened nowhere else in the city. Kabuki theaters were a place to see and be seen as they featured the latest fashion trends and current events. The stage provided good entertainment with exciting new music, patterns, clothing, and famous actors. Performances went from morning until sunset. The teahouses surrounding or connected to the theater provided meals, refreshments, and good company. The area around the theatres was lush with shops selling kabuki souvenirs. Kabuki, in a sense, initiated pop culture in Japan.\r\n\r\nThe shogunate was never partial to kabuki and all the mischief it brought, particularly the variety of the social classes which mixed at kabuki performances. Women’s kabuki, called onna-kabuki, was banned in 1629 for being too erotic.[5] Following onna-kabuki, young boys performed in wakashū-kabuki, but since they too were eligible for prostitution, the shogun government soon banned wakashū-kabuki as well.[5] Kabuki switched to adult male actors, called yaro-kabuki, in the mid-1600s.[6] Male actors played both female and male characters. The theatre remained popular, and remained a focus of urban lifestyle until modern times. Although kabuki was performed all over ukiyo and other portions for the country, the Nakamura-za, Ichimura-za and Kawarazaki-za theatres became the top theatres in ukiyo, where some of the most successful kabuki performances were and still are held.[3]\r\n1629–1673: Transition to yarō-kabuki\r\n\r\nThe modern all-male kabuki, known as yarō-kabuki (young man kabuki), was established during these decades. After women were banned from performing, cross-dressed male actors, known as onnagata (&quot;female-role&quot;) or oyama, took over. Young (adolescent) men were preferred for women''s roles due to their less masculine appearance and the higher pitch of their voices compared to adult men. In addition, wakashū (adolescent male) roles, played by young men often selected for attractiveness, became common, and were often presented in an erotic context.[7] Along with the change in the performer''s gender came a change in the emphasis of the performance: increased stress was placed on drama rather than dance. Performances were equally ribald, and the male actors too were available for prostitution (to both female and male customers). Audiences frequently became rowdy, and brawls occasionally broke out, sometimes over the favors of a particularly handsome young actor, leading the shogunate to ban first onnagata and then wakashū roles. Both bans were rescinded by 1652.[8]\r\n1673–1841: Golden age\r\nOniji Ōtani III (Nakazō Nakamura II) as Edobee in the May 1794 production of Koi Nyōbo Somewake Tazuna\r\nThe two Kabuki actors Bando Zenji and Sawamura Yodogoro; 1794, fifth month by Sharaku\r\n\r\nDuring the Genroku era, kabuki thrived. The structure of a kabuki play was formalized during this period, as were many elements of style. Conventional character types were established. Kabuki theater and ningyō jōruri, the elaborate form of puppet theater that later came to be known as bunraku, became closely associated with each other, and each has since influenced the other''s development. The famous playwright Chikamatsu Monzaemon, one of the first professional kabuki playwrights, produced several influential works, though the piece usually acknowledged as his most significant, Sonezaki Shinjū (The Love Suicides at Sonezaki), was originally written for bunraku. Like many bunraku plays, it was adapted for kabuki, and it spawned many imitators—in fact, it and similar plays reportedly caused so many real-life &quot;copycat&quot; suicides', 'http://jpninfo.com/wp-content/uploads/2015/08/kabuki-dance-3.jpg', 'https://www.youtube.com/embed/67-bgSFJiKc', 'japan, kabuki, classical', 'Done', 'assets/artist_images/delete.png', ''),
(3, 'Bharatanatyam', 'Bharathanatiyam', 'భరతనాట్యం', 'Folk', 'India', 'The theoretical foundations of Bharatanatyam are found in Natya Shastra, the ancient Hindu text of performance arts.[5][17][18]\r\n\r\nNatya Shastra is attributed to the ancient scholar Bharata Muni, and its first complete compilation is dated to between 200 BCE and 200 CE,[19][20] but estimates vary between 500 BCE and 500 CE.[21] The most studied version of the Natya Shastra text consists of about 6000 verses structured into 36 chapters.[19][22] The text, states Natalia Lidova, describes the theory of Tāṇḍava dance (Shiva), the theory of rasa, of bhāva, expression, gestures, acting techniques, basic steps, standing postures – all of which are part of Indian classical dances.[19][23] Dance and performance arts, states this ancient text,[24] are a form of expression of spiritual ideas, virtues and the essence of scriptures.[25]\r\n\r\nMore direct historical references to Bharatnatyam is found in the Tamil epics Silappatikaram (~2nd century CE[26]) and Manimegalai (~6th century).[5][8] The ancient text Silappatikaram, includes a story of a dancing girl named Madhavi; it describes the dance training regimen called Arangatrau Kathai of Madhavi in verses 113 through 159.[26] The carvings in Kanchipuram''s Shiva temple that have been dated to 6th to 9th century CE suggest Bharatanatyam was a well developed performance art by about the mid 1st millennium CE.[5][8][27]\r\nLeft: 7th century Shiva in Karnataka;\r\nRight: Bharatanatyam pose\r\n\r\nA famous example of illustrative sculpture is in the southern gateway of the Chidambaram temple (~12th century) dedicated to Hindu god Shiva, where 108 poses of the Bharatnatyam, that are also described as karanas in the Natya Shastra, are carved in stone.[28][29]\r\n\r\nMany of the ancient Shiva sculptures in Hindu temples are same as the Bharata Natyam dance poses. For example, the Cave 1 of Badami cave temples, dated to 7th-century,[30] portrays the Tandava-dancing Shiva as Nataraja.[31][32][33] The image, 5 feet (1.5 m) tall, has 18 arms in a form that expresses the dance positions arranged in a geometric pattern.[33] The arms of Shiva express mudras (symbolic hand gestures),[34] that are found in Bharatanatyam.[5][35]\r\n\r\nBharatanatyam, state Allen Noble and Ashok Dutt, has been &quot;a major source of inspiration to the musicians, poets, painters, singers and sculptors&quot; in Indian history.[36]\r\nDevadasis, anti-dance movement, colonial ban and the decline\r\n\r\nSome colonial Indologists and modern authors have stated Bharatanatyam is a descendant of an ancient Devadasi (literally, servant girls of Deva temples) culture, suggesting historical origins to 300 BCE to 300 CE.[37] Modern scholarship has questioned this theory for lack of any direct textual or archeological evidence.[38][39] Historic sculpture and texts do describe and project dancing girls, as well as temple quarters dedicated to women, but they do not state them to be courtesans and prostitutes alleged by early colonial Indologists.[37] According to Davesh Soneji, a critical examination of evidence suggest that the courtesan dancing is a modern era phenomena, which began in late 16th or 17th century of the Nayaka period of Tamil Nadu.[37] According to James Lochtefeld, Bharatanatyam remained exclusive to Hindu temples through the 19th century, and it appeared on stage outside the temples only in the 20th century.[8]\r\nRukmini Devi Arundale helped revive Bharatanatyam, after all Hindu temple dancing was banned by the British colonial government in 1910.\r\n\r\nWith the arrival of colonial East India Company officials rule in the 18th century, and the establishment of British colonial rule in 19th, many classical Indian dance forms were ridiculed and discouraged, and these performance arts declined.[40] Christian missionaries and British officials presented &quot;nautch girls&quot; of north India (Kathak) and &quot;devadasis&quot; of south India (Bharatanatyam) as evidence of &quot;harlots, debased erotic culture, slavery to idols and priests&quot; tradition, and Christian missionaries demanded that this must be stopped, launching the &quot;anti-dance movement&quot; in 1892.[41][42][43] The anti-dance camp accused the dance form as a front for prostitution, while revivalists questioned the constructed histories by the colonial writers.[38][39]\r\n\r\nIn 1910, the Madras Presidency of the British Empire altogether banned temple dancing, and with it the Bharatanatyam tradition within Hindu temples.[11]\r\nPost colonial era: revival and rebirth\r\n\r\nThe 1910 ban triggered powerful protests against the stereotyping and dehumanization of temple dancers.[11] The Tamil people were concerned that a historic and rich dance tradition was being victimized under the excuse of social reform.[11][44] The classical art revivalists such as E. Krishna Iyer, a lawyer and someone who had learnt the Bharatanatyam dance, questioned the cultural discrimination and the assumed connection, asking why prostitution needs years of learning and training for performance', 'http://www.jwalarejimon.com/admin/images/slider/21.jpg, http://www.culturalindia.net/iliimages/Bharatanatyam-1_1.jpg', 'https://www.youtube.com/embed/SgiLOzFQh14', 'classical, bharatanatyam,  Bharathanatiyam', 'Selected', '', ''),
(4, 'Kathakali', '', 'కథాకళి', 'Classical', 'India', 'Kathakali comes from southwestern India, around the state of Kerala. Like bharatanatyam, kathakali is a religious dance. It draws inspiration from the Ramayana and stories from Shaiva traditions. Kathakali is traditionally performed by boys and men, even', 'http://www.culturalindia.net/iliimages/Kathakali-1.jpg, https://www.keralatourism.org/images/artforms/large/kathakali20131111114431_15_2.jpg', 'https://www.youtube.com/embed/Tl3UKV1z9lM', '', 'Submitted', '', ''),
(5, 'Kathak', '', 'కథక్', 'Classical', 'India', 'A dance of northern India, Kathak is often a dance of love. It is performed by both men and women. The movements include intricate footwork accented by bells worn around the ankles and stylized gestures adapted from normal body language. It was originated', 'https://www.vadaamalar.com/media/catalog/product/cache/1/thumbnail/600x/9df78eab33525d08d6e5fb8d27136e95/k/a/kathak_costume006.jpg', 'https://www.youtube.com/embed/1ZmCmQjoehw', 'kathak, classical, india', '', '', ''),
(6, 'Burra Katha', 'ఒగ్గు కథ,  బుర్ర కథ, జంగం కథ, తందాన కథ, తంబుర కథ, శారద కథ', 'బుర్ర కథ', 'Classical', 'India', 'burra katha is from India', 'http://1.bp.blogspot.com/_Wsvv95vvWkI/S81bbfUwTfI/AAAAAAAAAD0/0e0Pcf81Ni4/s1600/Burra+Katha+Dancers+MedShot.jpg,\r\nhttps://i.ytimg.com/vi/AQU9IlTPl5w/0.jpg,\r\nhttps://te.wikipedia.org/wiki/%E0%B0%A6%E0%B0%B8%E0%B1%8D%E0%B0%A4%E0%B1%8D%E0%B0%B0%E0%B0%82:Burrakata_kalaakaarulu.JPG', 'https://www.youtube.com/watch?v=r3OrWpoAMLs', '', 'Selected', '', 'https://en.wikipedia.org/wiki/Burra_katha, https://te.wikipedia.org/wiki/బుర్రకథ ,'),
(9, 'Odissi', '', 'ఒడిస్సీ', 'Classical', 'India', 'Odissi is indigenous to Orissa in eastern India. It is predominantly a dance for women, with postures that replicate those found in temple sculptures. Based on archaeological findings, odissi is belived to be the oldest of the surviving Indian classical d', 'http://mycitylinks.in/mycitylive/wp-content/uploads/2016/05/Dona-Ganguly-Egypt-Odissi-Dance.jpg, http://www.ananyadancetheatre.org/wp-content/uploads/2013/01/Odissi-Dance.jpg', 'https://www.youtube.com/embed/52bscmW8x80', 'odissi, india, classical', '', '', ''),
(16, 'Bihu', '', 'బిహు', 'Folk', 'India', 'బిహూ నృత్యం (Bihu Dance) ఈశాన్య భారత దేశములో గల అస్సాం రాష్ట్రమునకు చెందిన జానపద నృత్య రీతి. ఈ వినోద నృత్యంలో నాట్యకారులు సంప్రదాయమైన అస్సామీ పట్టు, ముగా పట్టు దుస్తులు ధరిస్తారు. బిహూ పాటలకు అనుగుణంగా బిహూ నృత్యాన్ని చేస్తారు. బిహూ పాటలు అస్సామీ కొత్త సం', 'http://www.nelive.in/sites/default/files/12-04-16%20Jorhat-%20Bihu%20dance%20(1)_0.JPG, http://files.prokerala.com/gallery/pics/800/bihu-dancers-in-traditional-attire-performing-9743.jpg,http://www.bihufestival.org/img/Bihu-mobile-banner.jpg,http://www.vo', 'https://www.youtube.com/watch?v=_UVSMgaVjJE,https://www.youtube.com/watch?v=8qWgkOFaGqk', 'Bihu, Assam, Folk', 'In Progress', '', ''),
(18, 'allā ke nāṁ pāṭalu ', '', 'అల్లా కె నాం పాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(19, 'Flamenco', '', 'ఫ్లేమెన్కో', 'Folk', 'Spain', 'Flamenco (Spanish pronunciation: [flaˈmeŋko]), in its strictest sense, is a professionalized art-form based on the various folkloric music traditions of Southern Spain. In a wider sense, it refers to these musical traditions and more modern musical styles which have themselves been deeply influenced by and become blurred with the development of flamenco over the past two centuries. It includes cante (singing), toque (guitar playing), baile (dance), jaleo (vocalizations), palmas (handclapping) and pitos (finger snapping).[1]\r\n\r\nThe oldest record of flamenco dates to 1774 in the book Las Cartas Marruecas by José Cadalso.[2] The genre originated in the music and dance styles of Andalusia.[3] Flamenco has been influenced by and become associated with the Romani people in Spain, however, unlike Romani music in Eastern Europe, its origin and style is uniquely Andalusian.[4][5]\r\n\r\nIn recent years, flamenco has become popular all over the world and is taught in many non-Hispanic countries, especially the United States and Japan. In Japan, there are more flamenco academies than there are in Spain.[6][7] On November 16, 2010, UNESCO declared flamenco one of the Masterpieces of the Oral and Intangible Heritage of Humanity.[8]', 'https://d1ez3020z2uu9b.cloudfront.net/imagecache/blog-photos/2227.jpg', 'https://www.youtube.com/embed/XNhfV_53W7A', 'flamenco, spain, folk', 'Submitted', '', ''),
(20, 'Lion Dance', 'Dragon Dance', 'సింహం నృత్య', 'Traditional', 'China', 'There has been an old tradition in China of dancers wearing masks to resemble animals or mythical beasts since antiquity, and performances described in ancient texts such as Shujing where wild beasts and phoenix danced may have been masked dances.[1][2] In Qin Dynasty sources, dancers performing exorcism rituals were described as wearing bearskin mask,[1] and it was also mentioned in Han Dynasty texts that &quot;mime people&quot; (象人) performed as fish, dragons, and phoenixes.[3][4] However, lion is not native to China, and the Lion Dance therefore has been suggested to have originated outside of China from countries such as India or Persia,[5][6] and introduced via Cental Asia.[7] According to ethnomusicologist Laurence Picken, the Chinese word for lion itself, shi (獅, written as 師 in the early periods), may have been derived from the Persian word šer.[8] The earliest use of the word shizi meaning lion first appeared in Han Dynasty texts and had strong association with Central Asia (an even earlier but obsolete term for lion was suanni (狻麑 or 狻猊)), and lions were presented to the Han court by emissaries from Central Asia and the Parthian Empire.[9] Detailed descriptions of Lion Dance appeared during the Tang Dynasty and it was already recognized by writers and poets then as a foreign dance, however, Lion dance may have been recorded in China as early as the third century AD where &quot;lion acts&quot; were referred to by a Three Kingdoms scholar Meng Kang (孟康) in a commentary on Hanshu.[10][11][12] In the early periods it had association with Buddhism: it was recorded in a Northern Wei text, Description of Buddhist Temples in Luoyang (洛陽伽藍記), that a parade for a statue of Buddha of a temple was led by a lion to drive away evil spirits.[11][13][14] Japanese illustration of a Lion Dance that some argued represents the Tang Dynasty lion dance described by Bai Juyi.[15] The original painting is dated to the Heian period. There were different versions of the dance in the Tang Dynasty. In the Tang court, the lion dance was called the Great Peace Music (太平樂, Taiping yue) or the Lion Dance of the Five Directions (五方師子舞) where five large lions of different colours and expressing different moods were each led and manipulated on rope by two persons, and accompanied by 140 singers.[11][16] In a later account, the 5 lions were described as each over 3 metres tall and each had 12 &quot;lion lads&quot;, who may tease the lions with red whisks.[11][17][18] Another version of the lion dance was described by the Tang poet Bai Juyi in his poem &quot;Western Liang Arts&quot; (西凉伎), where the dance was performed by two hu (胡, meaning here non-Han people from Central Asia) dancers who wore a lion costume made of a wooden head, a silk tail and furry body, with eyes gilded with gold and teeth plated with silver as well as ears that moved, a form that resembles today''s Lion Dance.[11][19][20] By the eighth century, this lion dance had reached Japan. During the Song Dynasty the lion dance was commonly performed in festivals and it was known as the Northern Lion during the Southern Song. The Southern Lion is a later development in the south of China originating in the Guangdong province. There are a number of myths associated with the origin of the Southern Lion: one story relates that the dance originated as a celebration in a village where a mythical monster called Nian was successfully driven away;[7][21] another has it that the Qianlong Emperor dreamt of an auspicious animal while on a tour of Southern China, and ordered that the image of the animal be recreated and used during festivals. However it is likely that the Southern Lion of Guangzhou is an adaptation of the Northern Lion to local myths and characteristics, perhaps during the Ming Dynasty.[22][23]', 'http://shimworld.files.wordpress.com/2008/01/ccms-liondance-013.jpg, http://www.lansugarden.org/content/CI_events/287/lion-dance-cny__page-header.jpg', 'https://www.youtube.com/embed/n-0DJzxUdTE, https://www.youtube.com/embed/hJusyaRAq1I', 'china, dragon dance, lion dance, traditional', 'Submitted', '', ''),
(23, 'Khon', '', 'ఖోన్', 'Traditional', 'Thailand', 'Khon is a Thai traditional dance which combines many arts. There was no exactly evidence that proves which era but it is mentioned in Thai literature “Lilit Phra Lo” which was written in King Naraii Maharaj era[3] that there was a show called “Khon” in that era.[4][5] The origin of Khon can be proved by the origin of the word “Khon”. The origin of the word “Khon” is not known. But, there are four possibilities. First, Khon in Benguela Kalinin appears in the words &quot;Kora&quot; or &quot;Khon&quot; which is the name of one of the music instrument made of Hindi leather. Its appearance and shape are similar to the drum. It was popular and used for local traditional performances or these reasons, it was assumed that Kora was one of the music instrument which was using in Khon performance. Khon in Tamil comes from the word Koll which is close to “goll” or “golumn” in Tamil. Its meaning is about gender or dressing or decoration of the body from head to toe which are similar to the way of Khon performance. Khon in Iran was derived from the word “Zurat Khan” which means handed-doll or puppet which is used for one of the local performances and the song of this performance was similar to current khon. Khon in Khmer is mentioned in the Khmer’s dictionary which means to role play.[6]', 'https://s-media-cache-ak0.pinimg.com/564x/cf/9e/30/cf9e30af23f7896a9e7fd35108427a25.jpg, http://www.thaitextilesociety.org/data/shop07_2437.jpg', 'https://www.youtube.com/embed/-OWBs48qUuA', 'thailand, khon, traditional', 'Submitted', '', ''),
(24, 'Capoeira', '', 'కాపోయిరా', 'Folk', 'Brazil', 'Capoeira (Portuguese pronunciation: [kapuˈejɾɐ]) is a Brazilian martial art that combines elements of dance,[1][2][3] acrobatics[4] and music.[5][6] It was developed in Brazil mainly by Angolans, at the beginning of the 16th century. It is known for its quick and complex maneuvers, predominantly using power, speed, and leverage across a wide variety of kicks, spins and techniques. The most widely accepted origin of the word capoeira comes from the Tupi words ka''a (&quot;jungle&quot;) e pûer (&quot;it was&quot;)[citation needed], referring to the areas of low vegetation in the Brazilian interior where fugitive slaves would hide. A practitioner of the art is called a capoeirista (Portuguese pronunciation: [kapuejˈɾistɐ]). On 26th November 2014 capoeira was granted a special protected status as &quot;intangible cultural heritage&quot; by UNESCO.[7]', 'http://capoeira-connection.com/capoeira/wp-content/uploads/2011/10/capoeira-contemporanea.jpg', 'https://www.youtube.com/embed/Z8xxgFpK-NM', 'capoeira, folk, brazil', 'Submitted', '', ''),
(25, 'testtesttest', '', '', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(26, 'testestesttest', '', '', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(27, 'TestCase4', 'టెస్ట్ కేస్ 4', 'టెస్ట్ కేస్ 4', 'Folk', 'India', 'The arts is a vast subdivision of culture, composed of many creative endeavors and disciplines. It is a broader term than &quot;art&quot;, which, as a description of a field, usually means only the visual arts. The arts encompass the visual arts, the literary arts and the performing arts – music, theatre, dance and film, among others. This list is by no means comprehensive, but only meant to introduce the concept of the arts. For all intents and purposes, the history of the arts begins with the history of art. The arts might have origins in early human evolutionary prehistory.\r\nAncient Greek art saw the veneration of the animal form and the development of equivalent skills to show musculature, poise, beauty and anatomically correct proportions. Ancient Roman art depicted gods as idealized humans, shown with characteristic distinguishing features (e.g. Jupiter''s thunderbolt). In Byzantine and Gothic art of the Middle Ages, the dominance of the church insisted on the expression of biblical and not material truths. Eastern art has generally worked in a style akin to Western medieval art, namely a concentration on surface patterning and local colour (meaning the plain colour of an object, such as basic red for a red robe, rather than the modulations of that colour brought about by light, shade and reflection). A characteristic of this style is that the local colour is often defined by an outline (a contemporary equivalent is the cartoon). This is evident in, for example, the art of India, Tibet and Japan. Religious Islamic art forbids iconography, and expresses religious ideas through geometry instead. The physical and rational certainties depicted by the 19th-century Enlightenment were shattered not only by new discoveries of relativity by Einstein and of unseen psychology by Freud, but also by unprecedented technological development. Paradoxically the expressions of new technologies were greatly influenced by the ancient tribal arts of Africa and Oceania, through the works of Paul Gauguin and the Post-Impressionists, Pablo Picasso and the Cubists, as well as the Futurists and others.\r\nMore about The arts...\r\nView new selections below (purge)\r\nedit  \r\nFeatured article', '', '', '', 'Submitted', '', ''),
(28, 'Polka', '', 'పోల్కా', 'Classical', 'Czech Republic', 'The polka is originally a Czech dance and genre of dance music familiar throughout Europe and the Americas. It originated in the middle of the 19th century in Bohemia, now part of the Czech Republic. Polka remains a popular folk music genre in many European countries, and is performed by folk artists in the Czech Republic, Germany, Austria, Poland, Croatia, Slovenia, Switzerland, and to a lesser extent in Latvia, Lithuania, the Netherlands, Hungary, Italy, Ukraine, Romania, Belarus, Russia, and Slovakia. Local varieties of this dance are also found in the Nordic countries, the United Kingdom, Ireland, Latin America and the United States.', '', '', 'polka, folk, czech republic', 'Selected', 'assets/artist_images/polka.jpg', 'https://en.wikipedia.org/wiki/Polka'),
(29, 'Seungmu', '', '', 'Folk', '', '', '', '', '', 'Submitted', 'assets/artist_images/seungmu.jpg', ''),
(30, 'Alāvu gītālavāru', '', 'అలావు గీతాలవారు', 'Folk', '', '', '', '', '', 'Submitted', 'assets/artist_images/edit.png', ''),
(31, 'aśva nr̥tyaṁ', '', 'అశ్వ నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(32, 'allā kenāṁ pāṭalu ', '', 'అల్లా కెనాం పాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(33, 'āsādi kadhalu ', '', 'ఆసాది కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(34, 'urumula nr̥tyaṁ ', '', 'ఉరుముల నృత్యం', 'Classical', '', 'చితికి జీర్ణమైపోయిన అనేక జానపద కళా రూపాల ఈనాడు మనకు కనబడకుండా కనుమరుగై పోయాయి. అలా కను మరుగైన కళారూపాలలో ఉరుముల నృత్యం ముఖ్యమైనది. తలకు అందంగా రుమాళ్ళు చుట్టుకుని మెడల్లో కాసుల దండలు ధరించి ఎఱ్ఱని, పచ్చనివీ శాలువలు కప్పుకుని, నిలువు అంగీలు ధరించి, పల్ల వేరు చెట్టు కర్రతో తయారు చేసిన ఉరుములకు చర్మపు మూతలు మూసి, కదర పుల్లలతో వాయించు కుంటూ దేవాలయ ప్రాంగణాల్లో, ఉరుముల నృత్యం చేస్తూ వుంటారు. ఉరుము అనే పేరును బట్టి వాయిద్య ధ్వని ఉరుమును పోలి వుండవచ్చును. అందు వల్ల వాటికి ఉరుములు అనే నామకరణం చేసి వుండవచ్చు.', '', 'https://www.youtube.com/watch?v=BS6F6mDKlRo', '', 'Selected', '', 'https://te.wikipedia.org/wiki/ఉరుము_నృత్యము, https://te.wikisource.org/wiki/తెలుగువారి_జానపద_కళారూపాలు/ఉరుమును_మించిన_ఉరుముల_నృత్యం ,'),
(35, 'uyyāla pāṭalu ', '', 'ఉయ్యాల పాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(36, 'erukala pāṭalu ', '', 'ఎరుకల పాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(37, 'erukala dāsari ', '', 'ఎరుకల దాసరి', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(38, 'erukala sōdi ', '', 'ఎరుకల సోది', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(39, 'kāki paḍagalu ', '', 'కాకి పడగలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(40, 'kāśī kāvaḷḷu ', '', 'కాశీ కావళ్ళు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(41, 'kāṭi pāpala vāḷḷu ', '', 'కాటి పాపల వాళ్ళు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(42, 'koravan̄ji kathalu ', '', 'కొరవంజి కథలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(43, 'kōṭakoṇḍa bhāgavatulu', '', 'కోటకొండ భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(44, 'kōla sambaraṁ ', '', 'కోల సంబరం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(45, 'kōlāṭa nr̥tyaṁ ', '', 'కోలాట నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(46, 'kōya nr̥tyaṁ ', '', 'కోయ నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(47, 'garaga nr̥tyaṁ ', '', 'గరగ నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(48, 'gaṅgireddulavāru ', '', 'గంగిరెద్దులవారు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(49, 'gaṇṭā sāyabulu ', '', 'గంటా సాయబులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(50, 'gaṇṭi bhāgavatulu ', '', 'గంటి భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(51, 'gāraḍī vidyalu ', '', 'గారడీ విద్యలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(52, 'guruvayyalu ', '', 'గురువయ్యలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(53, 'gollasuddulu ', '', 'గొల్లసుద్దులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(54, 'golla dāsarulu ', '', 'గొల్ల దాసరులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(55, 'golla bhāgavatulu ', '', 'గొల్ల భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(56, 'golla kalāpaṁ (cōḍigāni kalāpaṁ)', '', 'గొల్ల కలాపం (చోడిగాని కలాపం)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(57, 'goṇḍalavāru ', '', 'గొండలవారు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(58, 'gōṇḍu nr̥tyaṁ ', '', 'గోండు నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(59, 'ghaṇṭa nr̥tyaṁ ', '', 'ఘంట నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(60, 'cuṭṭukāmuḍu ', '', 'చుట్టుకాముడు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(61, 'chāya nāṭika ', '', 'ఛాయ నాటిక', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(62, 'cindu bhāgavatulu ', '', 'చిందు భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(63, 'ciratala rāmāyaṇaṁ ', '', 'చిరతల రామాయణం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(64, 'citrakadhā vidhānaṁ', '', 'చిత్రకధా విధానం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(65, 'cen̄cu bhāgavatulu ', '', 'చెంచు భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(66, 'cen̄cu nr̥tyālu ', '', 'చెంచు నృత్యాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(67, 'cekka bhajana ', '', 'చెక్క భజన', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(68, 'cōḍigāni kalāpaṁ (golla kalāpaṁ)', '', 'చోడిగాని కలాపం (గొల్ల కలాపం)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(69, 'jaḍa kōlāṭaṁ ', '', 'జడ కోలాటం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(70, 'jamukula kadha ', '', 'జముకుల కధ', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(71, 'jakkula kadhalu ', '', 'జక్కుల కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(72, 'jaṅgaṁ kadhalu', '', 'జంగం కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(73, 'jantar peṭṭe ', '', 'జంతర్ పెట్టె', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(74, 'jēgaṇṭa bhāgavatulu ', '', 'జేగంట భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(75, 'ḍappulavāru ', '', 'డప్పులవారు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(76, 'ḍakkali kadhalu ', '', 'డక్కలి కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(77, 'ḍappula kōlāṭa nr̥tyaṁ ', '', 'డప్పుల కోలాట నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(78, 'tandanāna kadhalu ', '', 'తందనాన కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(79, 'tappeṭa guḷḷu ', '', 'తప్పెట గుళ్ళు', 'Other', '', '', 'https://i.ytimg.com/vi/GsgVMfLVqAc/hqdefault.jpg,\r\nhttps://i.ytimg.com/vi/68QET7k1q2M/maxresdefault.jpg,\r\nhttp://www.thehindu.com/migration_catalog/article10477488.ece/ALTERNATES/LANDSCAPE_615/16VZMP_UTSAV1', 'https://www.youtube.com/watch?v=GsgVMfLVqAc,\r\nhttps://www.youtube.com/watch?v=68QET7k1q2M,\r\nhttps://www.youtube.com/watch?v=Zc2KhS6hs7o', '', 'Selected', '', ''),
(80, 'tera cīrala pradarśana ', '', 'తెర చీరల ప్రదర్శన', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(81, 'tūrpu bhāgōtaṁ ', '', 'తూర్పు భాగోతం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(82, 'daṇḍā gānaṁ ', '', 'దండా గానం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(83, 'dādinam ma vēṣaṁ', '', 'దాదినమ్మ వేషం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(84, 'dāsarulu ', '', 'దాసరులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(85, 'dēvara peṭṭe ', '', 'దేవర పెట్టె', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(86, 'dom marāṭalu', '', 'దొమ్మరాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(87, 'thinsā nr̥tyaṁ ', '', 'థింసా నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(88, 'dūlānr̥tyaṁ ', '', 'దూలానృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(89, 'nakkala bhāgōtaṁ ', '', 'నక్కల భాగోతం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(90, 'nakkajaṅgālu', '', 'నక్కజంగాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(91, 'panasala vāru', '', 'పనసల వారు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(92, 'paṭāla vāru', '', 'పటాల వారు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(93, 'paṇḍari bhajanalu', '', 'పండరి భజనలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(94, 'pambala vāru ', '', 'పంబల వారు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(95, 'pandiri pāṭa', '', 'పందిరి పాట', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(96, 'poḍapōtula vāru', '', 'పొడపోతుల వారు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(97, 'pāṇḍavulu kadhalu ', '', 'పాండవులు కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(98, 'pāmula vāḍu', '', 'పాముల వాడు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(99, 'piccukuṇṭla kadhalu ', '', 'పిచ్చుకుంట్ల కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(100, 'piṭṭaladora (latkōrusābu)', '', 'పిట్టలదొర (లత్కోరుసాబు)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(101, 'puli nāṭyaṁ ', '', 'పులి నాట్యం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(102, 'pūsalabalija kadhalu', '', 'పూసలబలిజ కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(103, 'phakīru vēṣālu ', '', 'ఫకీరు వేషాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(104, 'bayakāni kadha ', '', 'బయకాని కధ', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(105, 'bayanīḷḷu (baiṇḍlavāru)', '', 'బయనీళ్ళు (బైండ్లవారు)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(106, 'bahurūpulu (cairuppalu)', '', 'బహురూపులు (చైరుప్పలు)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(107, 'bālapantulu ', '', 'బాలపంతులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(108, 'bīrannalu ', '', 'బీరన్నలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(109, 'buḍiki kadha (cōnula kadha)', '', 'బుడికి కధ (చోనుల కధ)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(110, 'buḍigē jaṅgālu ', '', 'బుడిగే జంగాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(111, 'burra kadhalu ', '', 'బుర్ర కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(112, 'buḍubukkala vāru ', '', 'బుడుబుక్కల వారు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(113, 'bōnulakadha (buḍiki kadha)', '', 'బోనులకధ (బుడికి కధ)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(114, 'baṭrājulu', '', 'బట్రాజులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(115, 'bairāgi tatvālu ', '', 'బైరాగి తత్వాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(116, 'caiṭhō bhajana ', '', 'చైఠో భజన', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(117, 'maridapicculu ', '', 'మరిదపిచ్చులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(118, 'mandaheccu (man̄cen̄culu) kadhalu ', '', 'మందహెచ్చు (మంచెంచులు) కధలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(119, 'mālajaṅgālu ', '', 'మాలజంగాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(120, 'māladāsarlu ', '', 'మాలదాసర్లు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(121, 'mālabhāgāvatulu ', '', 'మాలభాగావతులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(122, 'mūkābhinayaṁ ', '', 'మూకాభినయం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(123, 'yakṣagānaṁ ', '', 'యక్షగానం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(124, 'yānādi bhāgavatulu ', '', 'యానాది భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(125, 'run̄jalu ', '', 'రుంజలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(126, 'rellijaṭṭulu ', '', 'రెల్లిజట్టులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(127, 'rēlapāṭalu ', '', 'రేలపాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(128, 'latkōrusābu (piṭṭaladora)', '', 'లత్కోరుసాబు (పిట్టలదొర)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(129, 'lambāḍi nr̥tyaṁ ', '', 'లంబాడి నృత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(130, 'vaiṣṇava dāsaripāṭalu ', '', 'వైష్ణవ దాసరిపాటలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(131, 'vālakālu ', '', 'వాలకాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(132, 'vipravinōdulu ', '', 'విప్రవినోదులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(133, 'vīramuṣṭivāru ', '', 'వీరముష్టివారు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(134, 'vīrakhaḍgālu', '', 'వీరఖడ్గాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(135, 'vīrabhadra vin yāsaṁ', '', 'వీరభద్ర విన్యాసం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(136, 'vīravidyāvantulu ', '', 'వీరవిద్యావంతులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(137, 'vīranāṭyālu', '', 'వీరనాట్యాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(138, 'vīdhipurāṇālu ', '', 'వీధిపురాణాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(139, 'vīḍidāsarlu ', '', 'వీడిదాసర్లు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(140, 'vīdhināṭakālu', '', 'వీధినాటకాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(141, 'vīdhi bhāgavatulu ', '', 'వీధి భాగవతులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(142, 'śārada kadha', '', 'శారద కధ', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(143, 'sarikēmuggula sōdi ', '', 'సరికేముగ్గుల సోది', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(144, 'sātāni padālu', '', 'సాతాని పదాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(145, 'sādhanāśūrulu', '', 'సాధనాశూరులు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(146, 'harikadha ', '', 'హరికధ', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(147, 'haribhajanalu', '', 'హరిభజనలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(148, 'harihārīpadālu', '', 'హరిహారీపదాలు', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(149, 'bayalāṭa (bayalu nāṭakaṁ)', '', 'బయలాట  (బయలు నాటకం)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(150, 'kuppaṁ bhāgōtaṁ (tapasmān) ', '', 'కుప్పం భాగోతం (తపస్మాన్)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(151, 'guppāḍi (ulannāru)', '', 'గుప్పాడి (ఉలన్నారు)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(152, 'īdela nrutyaṁ', '', 'ఈదెల న్రుత్యం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(153, 'kinnera katha', '', 'కిన్నెర కథ', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(154, 'oggu katha', '', 'ఒగ్గు కథ', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(155, 'pēriṇi ', '', 'పేరిణి', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(156, 'jāmba purāṇaṁ (gōsaṅgi vēṣaṁ)', '', 'జాంబ పురాణం (గోసంగి వేషం)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(157, 'kan̄jara katha ', '', 'కంజర కథ', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(158, 'karyāli (kavvāli)', '', 'కర్యాలి (కవ్వాలి)', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(159, 'pagaṭi vēṣaṁ', '', 'పగటి వేషం', 'Folk', '', '', '', '', '', 'Submitted', '', ''),
(160, 'vilāsini nāṭyaṁ (cinna mēḷaṁ)', '', 'విలాసిని నాట్యం (చిన్న మేళం)', 'Folk', '', '', '', '', '', 'Submitted', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dances`
--
ALTER TABLE `dances`
  ADD PRIMARY KEY (`dance_id`),
  ADD UNIQUE KEY `dance_id` (`dance_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dances`
--
ALTER TABLE `dances`
  MODIFY `dance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
