-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 08, 2023 at 07:30 PM
-- Server version: 5.7.24
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presidents_db`
--
CREATE DATABASE IF NOT EXISTS `presidents_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `presidents_db`;

-- --------------------------------------------------------

--
-- Table structure for table `presidents`
--

CREATE TABLE `presidents` (
  `presID` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `officeYears` varchar(32) DEFAULT NULL,
  `party` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `presidents`
--

INSERT INTO `presidents` (`presID`, `name`, `officeYears`, `party`) VALUES
(1, 'John Adams', '1797-1801', 'Federalist'),
(2, 'Thomas Jefferson', '1801-09', 'Democratic-Republican'),
(3, 'John Quincy Adams', '1825-29', 'Democratic-Republican'),
(4, 'Andrew Johnson', '1865-69', 'Democratic'),
(5, 'Chester Arthur', '1881-85', 'Republican'),
(6, 'Lyndon Johnson', '1963-69', 'Democratic'),
(7, 'James Buchanan', '1857-61', 'Democratic'),
(8, 'John F. Kennedy', '1961-63', 'Democratic'),
(9, 'George H.W. Bush', '1989-93', 'Republican'),
(10, 'Abraham Lincoln', '1861-65', 'Republican'),
(11, 'George W. Bush', '2001-2008', 'Republican'),
(12, 'James Madison', '1809-17', 'Democratic-Republican'),
(13, 'Jimmy Carter', '1977-81', 'Democratic'),
(14, 'William McKinley', '1897-1901', 'Republican'),
(15, 'Grover Cleveland', '1885-89; 1893-97', 'Democratic'),
(16, 'James Monroe', '1817-25', 'Democratic-Republican'),
(17, 'William J. Clinton', '1993-2001', 'Democratic'),
(18, 'Richard Nixon', '1969-74', 'Republican'),
(19, 'Calvin Coolidge', '1923-29', 'Republican'),
(20, 'Franklin Pierce', '1853-57', 'Democratic'),
(21, 'Dwight Eisenhower', '1953-61', 'Republican'),
(22, 'James Polk', '1845-49', 'Democratic'),
(23, 'Millard Fillmore', '1850-53', 'Whig'),
(24, 'Ronald Reagan', '1981-89', 'Republican'),
(25, 'Gerald Ford', '1974-77', 'Republican'),
(26, 'Franklin D. Roosevelt', '1933-45', 'Democratic'),
(27, 'James Garfield', '1881', 'Republican'),
(28, 'Theodore Roosevelt', '1901-09', 'Republican'),
(29, 'Ulysses S. Grant', '1869-77', 'Republican'),
(30, 'William H. Taft', '1909-13', 'Republican'),
(31, 'Warren Harding', '1921-23', 'Republican'),
(32, 'Zachary Taylor', '1849-50', 'Whig'),
(33, 'Benjamin Harrison', '1889-93', 'Republican'),
(35, 'Harry S Truman', '1945-53', 'Democratic'),
(36, 'William Henry Harrison', '1841', 'Whig'),
(37, 'John Tyler', '1841-45', 'Whig'),
(38, 'Rutherford B. Hayes', '1877-81', 'Republican'),
(39, 'Martin Van Buren', '1837-41', 'Democratic'),
(40, 'Herbert Hoover', '1929-33', 'Republican'),
(41, 'George Washington', '1789-97', 'Unaffiliated'),
(42, 'Andrew Jackson', '1829-37', 'Democratic'),
(43, 'Woodrow Wilson', '1913-21', 'Democratic'),
(44, 'Barack Obama', '2008-16', 'Democratic'),
(45, 'Donald Trump', '2016-2020', 'Republican'),
(46, 'Joseph Biden', '2021-present', 'Democratic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `presidents`
--
ALTER TABLE `presidents`
  ADD PRIMARY KEY (`presID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `presidents`
--
ALTER TABLE `presidents`
  MODIFY `presID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- Database: `registration_db`
--
CREATE DATABASE IF NOT EXISTS `registration_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `registration_db`;

-- --------------------------------------------------------

--
-- Table structure for table `table_campuses`
--

CREATE TABLE `table_campuses` (
  `campusID` int(10) UNSIGNED NOT NULL,
  `city` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_campuses`
--

INSERT INTO `table_campuses` (`campusID`, `city`, `phone`) VALUES
(3001, 'Kenosha', '262-652-5566'),
(3002, 'Racine', '262-634-4342'),
(3005, 'Milwaukee', '262-240-8852');

-- --------------------------------------------------------

--
-- Table structure for table `table_courses`
--

CREATE TABLE `table_courses` (
  `courseID` int(10) UNSIGNED NOT NULL,
  `courseAbb` varchar(8) NOT NULL,
  `courseNumber` int(10) UNSIGNED NOT NULL,
  `credits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_courses`
--

INSERT INTO `table_courses` (`courseID`, `courseAbb`, `courseNumber`, `credits`) VALUES
(5001, 'ENG', 101, 3),
(5004, 'MATH', 221, 5),
(5006, 'CSCI', 241, 5),
(5007, 'CHEM', 101, 5),
(5009, 'MATH', 105, 3),
(5011, 'ART', 105, 3),
(5013, 'SPAN', 101, 4),
(5015, 'BUS', 100, 3);

-- --------------------------------------------------------

--
-- Table structure for table `table_students`
--

CREATE TABLE `table_students` (
  `studentID` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(32) NOT NULL,
  `lastName` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_students`
--

INSERT INTO `table_students` (`studentID`, `firstName`, `lastName`) VALUES
(1001, 'Peter', 'Rasmusson'),
(1003, 'Martin', 'Hunt'),
(1004, 'Myla', 'Wallace'),
(1005, 'Allison', 'Nelson'),
(1008, 'Bryce', 'Perkins');

-- --------------------------------------------------------

--
-- Table structure for table `table_students_campuses`
--

CREATE TABLE `table_students_campuses` (
  `studentID` int(10) UNSIGNED NOT NULL,
  `campusID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_students_campuses`
--

INSERT INTO `table_students_campuses` (`studentID`, `campusID`) VALUES
(1001, 3001),
(1003, 3002),
(1004, 3001),
(1005, 3005),
(1008, 3002);

-- --------------------------------------------------------

--
-- Table structure for table `table_students_courses`
--

CREATE TABLE `table_students_courses` (
  `studentID` int(10) UNSIGNED NOT NULL,
  `courseID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_students_courses`
--

INSERT INTO `table_students_courses` (`studentID`, `courseID`) VALUES
(1001, 5001),
(1001, 5004),
(1001, 5006),
(1003, 5007),
(1003, 5009),
(1003, 5011),
(1004, 5006),
(1004, 5011),
(1005, 5013),
(1008, 5001),
(1008, 5015);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_campuses`
--
ALTER TABLE `table_campuses`
  ADD PRIMARY KEY (`campusID`);

--
-- Indexes for table `table_courses`
--
ALTER TABLE `table_courses`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `table_students`
--
ALTER TABLE `table_students`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `table_students_campuses`
--
ALTER TABLE `table_students_campuses`
  ADD PRIMARY KEY (`studentID`,`campusID`);

--
-- Indexes for table `table_students_courses`
--
ALTER TABLE `table_students_courses`
  ADD PRIMARY KEY (`studentID`,`courseID`);
--
-- Database: `volga_db`
--
CREATE DATABASE IF NOT EXISTS `volga_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `volga_db`;

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `authorId` int(10) UNSIGNED NOT NULL,
  `compositeName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`authorId`, `compositeName`) VALUES
(1, 'Ronald C. White Jr.'),
(2, 'Jay A. Parry'),
(3, 'Joseph J. Ellis'),
(4, 'Terry Teachout'),
(5, 'Robin Kelley'),
(6, 'Peter A Carlin'),
(7, 'William R. Drennan'),
(8, 'Andy Warhol'),
(9, 'Achim Borchardt-Hume'),
(10, 'William A. Turnage'),
(11, 'Walter Liedtke'),
(12, 'Justin Fox'),
(13, 'Matthew B. Crawford'),
(14, 'Roger Connors'),
(15, 'David Wessel'),
(16, 'Rosabeth Moss Kanter'),
(17, 'Steve Jenkins'),
(18, 'Amy Krouse Rosenthal'),
(19, 'Jacky Davis'),
(20, 'Tony Fucile'),
(21, 'Bill Watterson'),
(22, 'Charles Schulz'),
(23, 'Stan Sakai'),
(24, 'James Patterson'),
(25, 'Ed Brubaker'),
(26, 'Frederick P. Brooks'),
(27, 'David Flanagan'),
(28, 'David Sawyer McFarland'),
(29, 'Luke Welling'),
(30, 'Julia Child'),
(31, 'Francis Mallmann'),
(32, 'Robin Robertson'),
(33, 'Better Homes &amp; Gardens'),
(34, 'Alton Brown'),
(35, 'Tony Curtis'),
(36, 'Leonard Maltin'),
(37, 'Eric Siblin'),
(38, 'Gary Giddins'),
(39, 'Arnold Steinhardt'),
(40, 'David Bianculli'),
(41, 'Daniel H. Pink'),
(42, 'Chris Downie'),
(43, 'Shari Arison'),
(44, 'Brad Lamm'),
(45, 'Greg Grandin'),
(46, 'Richard Holmes'),
(47, 'Adrian Goldsworthy'),
(48, 'James Bradley'),
(49, 'Christopher Andrew'),
(50, 'Robert Ferguson'),
(51, 'Erin Bried'),
(52, 'John Greenlee'),
(53, 'Tom Fidgen'),
(54, 'Jim W. Wilson'),
(55, 'Arthur Conan Doyle'),
(56, 'JANE AUSTEN'),
(57, 'Jules Verne'),
(58, 'Kurt Vonnegut'),
(59, 'Joseph Heller'),
(60, 'Anthony Burgess'),
(61, 'J.D. Salinger'),
(62, 'China Mieville'),
(63, 'Steve Berry'),
(64, 'Sue Grafton'),
(65, 'Charlie Huston'),
(66, 'Orhan Pamuk'),
(67, 'Michael Crichton'),
(68, 'David Owen'),
(69, 'Jon L. Dunn'),
(70, 'Michele Borba Ed.D.'),
(71, 'Michael Lewis'),
(72, 'Meg Meeker'),
(73, 'Heidi Murkoff'),
(74, 'Foster Cline'),
(75, 'Merriam-Webster'),
(76, 'Frank Jacobs'),
(77, 'Guinness World Records'),
(78, 'Robert Spencer'),
(79, 'David E. S. Stein'),
(80, 'Rick Hanson Ph.D.'),
(81, 'Thich Nhat Hanh'),
(82, 'Nalini Singh'),
(83, 'Lisa Kleypas'),
(84, 'Kresley Cole'),
(85, 'Amanda Quick'),
(86, 'Melanie Mitchell'),
(87, 'Mark Levi'),
(88, 'Neil Gaiman'),
(89, 'Suzanne Collins'),
(90, 'Catherynne Valente'),
(91, 'Caitlin R. Kiernan'),
(92, 'David Anthony Durham'),
(93, 'Adam Roberts'),
(94, 'Jesse Bullington'),
(95, 'Orson Scott Card'),
(96, 'J.R.R. Tolkien'),
(97, 'Isaac Asimov'),
(98, 'Chris Santella'),
(99, 'Don Gulbrandsen'),
(100, 'Harry Katz'),
(101, 'Tom Haudricourt'),
(102, 'Kami Garcia'),
(103, 'Libba Bray'),
(104, 'Patrick Ness'),
(105, 'Kathy Arnold'),
(106, 'National Geographic'),
(107, 'Steven Somers'),
(108, 'Evan Spring');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `isbn` char(16) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `pages` smallint(6) DEFAULT NULL,
  `binding` enum('PAPERBACK','HARDCOVER','EBOOK') DEFAULT NULL,
  `pubDate` date DEFAULT NULL,
  `description` text,
  `imageFilename` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`isbn`, `title`, `price`, `pages`, `binding`, `pubDate`, `description`, `imageFilename`) VALUES
('0060598999', 'The Myth of the Rational Market: A History of Risk, Reward, and Delusion on Wall Street', 27.99, 400, 'HARDCOVER', '2009-06-01', '&lt;p&gt; Chronicling the rise and fall of the efficient market theory and the century-long making of the modern financial industry, Justin Fox\'s &lt;i&gt;The Myth of the Rational Market&lt;/i&gt; is as much an intellectual whodunit as a cultural history of the perils and possibilities of risk. The book brings to life the people and ideas that forged modern finance and investing, from the formative days of Wall Street through the Great Depression and into the financial calamity of today. It\'s a tale that features professors who made and lost fortunes, battled fiercely over ideas, beat the house in blackjack, wrote bestselling books, and played major roles on the world stage. It\'s also a tale of Wall Street\'s evolution, the power of the market to generate wealth and wreak havoc, and free market capitalism\'s war with itself. &lt;/p&gt; &lt;p&gt; The efficient market hypothesis&acirc;€”long part of academic folklore but codified in the 1960s at the University of Chicago&acirc;€”has evolved into a powerful myth. It has been the maker and loser of fortunes, the driver of trillions of dollars, the inspiration for index funds and vast new derivatives markets, and the guidepost for thousands of careers. The theory holds that the market is always right, and that the decisions of millions of rational investors, all acting on information to outsmart one another, always provide the best judge of a stock\'s value. That myth is crumbling. &lt;/p&gt; &lt;p&gt; Celebrated journalist and columnist Fox introduces a new wave of economists and scholars who no longer teach that investors are rational or that the markets are always right. Many of them now agree with Yale professor Robert Shiller that the efficient markets theory &Acirc;“represents one of the most remarkable errors in the history of economic thought.&Acirc;” Today the theory has given way to counterintuitive hypotheses about human behavior, psychological models of decision making, and the irrationality of the markets. Investors overreact, underreact, and make irrational decisions based on imperfect data. In his landmark treatment of the history of the world\'s markets, Fox uncovers the new ideas that may come to drive the market in the century ahead. &lt;/p&gt;', '0060598999.jpg'),
('0061625450', 'Baseball Americana: Treasures from the Library of Congress', 29.99, 256, 'HARDCOVER', '2009-10-01', '&lt;blockquote&gt; &lt;p&gt;A lavishly illustrated history of America\'s game, from the unparalleled collections of the Library of Congress&lt;/p&gt; &lt;/blockquote&gt; &lt;p&gt;Baseball, the sport that helped reunify the country in the years after the Civil War, remains the National Pastime. The Library of Congress houses the world\'s largest baseball collection, documenting the history of the game and providing a unique look at America since the late 1700s. Now &lt;i&gt;Baseball Americana&lt;/i&gt; presents the best of the best from that treasure trove. From baseball\'s biggest stars to street urchins, from its most newsworthy stories to sandlot and Little League games, the book examines baseball\'s hardscrabble origins, rich cultural heritage, and uniquely American character.&lt;/p&gt; &lt;p&gt;The more than 350 fabulous illustrations&acirc;€”many never before published&acirc;€”featured first-generation, vintage photographic and chromolithographic baseball cards; photographs of famous players and ballparks; and newspaper clippings, cartoons, New Deal photographs, and baseball advertisements. Packed with images that will surprise and thrill even the most expert collector, &lt;i&gt;Baseball Americana&lt;/i&gt; is a gift for every baseball fan. &lt;/p&gt;', '0061625450.jpg'),
('0061671738', 'Odd and the Frost Giants', 14.99, 128, 'HARDCOVER', '2009-11-01', '&lt;p&gt; In this inventive, short, yet perfectly formed novel inspired by traditional Norse mythology, Neil Gaiman takes readers on a wild and magical trip to the land of giants and gods and back. &lt;/p&gt; &lt;p&gt; In a village in ancient Norway lives a boy named Odd, and he\'s had some very bad luck: His father perished in a Viking expedition; a tree fell on and shattered his leg; the endless freezing winter is making villagers dangerously grumpy. &lt;/p&gt; &lt;p&gt; Out in the forest Odd encounters a bear, a fox, and an eagle&acirc;€”three creatures with a strange story to tell. &lt;/p&gt; &lt;p&gt; Now Odd&Acirc;&nbsp;is forced on a stranger journey than he had imagined&acirc;€”a journey to save Asgard, city of the gods, from the Frost Giants who have invaded it. &lt;/p&gt; &lt;p&gt; It\'s going to take a very special kind of twelve-year-old boy to outwit the Frost Giants, restore peace to the city of gods, and end the long winter. &lt;/p&gt; &lt;p&gt; Someone cheerful and infuriating and clever . . . &lt;/p&gt; &lt;p&gt; Someone just like Odd . &lt;/p&gt;', '0061671738.jpg'),
('0061929379', 'Pirate Latitudes: A Novel', 27.99, 320, 'HARDCOVER', '2009-12-01', '&lt;blockquote&gt; &lt;p&gt;From one of the best-loved authors of all time comes an irresistible adventure of swashbuckling pirates in the New World, a classic story of treasure and betrayal.&lt;/p&gt; &lt;/blockquote&gt; &lt;p&gt;The Caribbean, 1665. A remote colony of the English Crown, the island of Jamaica holds out against the vast supremacy of the Spanish empire. Port Royal, its capital, is a cutthroat town of taverns, grog shops, and bawdy houses. &lt;/p&gt; &lt;p&gt;In this steamy climate there\'s a living to be made, a living that can end swiftly by disease&acirc;€”or by dagger. For Captain Charles Hunter, gold in Spanish hands is gold for the taking, and the law of the land rests with those ruthless enough to make it. &lt;/p&gt; &lt;p&gt;Word in port is that the galleon &lt;i&gt;El Trinidad&lt;/i&gt;, fresh from New Spain, is awaiting repairs in a nearby harbor. Heavily fortified, the impregnable harbor is guarded by the bloodthirsty Cazalla, a favorite commander of the Spanish king himself. With backing from a powerful ally, Hunter assembles a crew of ruffians to infiltrate the enemy outpost and commandeer &lt;i&gt;El Trinidad&lt;/i&gt;, along with its fortune in Spanish gold. The raid is as perilous as the bloodiest tales of island legend, and Hunter will lose more than one man before he even sets foot on foreign shores, where dense jungle and the firepower of Spanish infantry stand between him and the treasure. . . .&lt;/p&gt; &lt;p&gt;&lt;i&gt;Pirate Latitudes&lt;/i&gt; is Michael Crichton at his best: a rollicking adventure tale pulsing with relentless action, crackling atmosphere, and heart-pounding suspense.&lt;/p&gt;', '0061929379.jpg'),
('0142005258', 'Strange Maps: An Atlas of Cartographic Curiosities', 30, 256, 'PAPERBACK', '2009-10-29', '&lt;B&gt;An intriguing collection of more than one hundred out-of-the-ordinary maps, blending art, history, and pop culture for a unique atlas of humanity&lt;/B&gt;&lt;BR&gt;&lt;BR&gt; Spanning many centuries, all continents, and the realms of outer space and the imagination, this collection of 138 unique graphics combines beautiful full-color illustrations with quirky statistics and smart social commentary. The result is a distinctive illustrated guide to the world. Categories of cartographic curiosities include: &acirc;€&cent; Literary Creations, featuring a map of Thomas More\'s &lt;I&gt;Utopia&lt;/I&gt; and the world of George Orwell\'s &lt;I&gt;1984&lt;/I&gt;&lt;BR&gt;&lt;BR&gt; &acirc;€&cent; Cartographic Misconceptions, such as a lavish seventeenthcentury map depicting California as an island&lt;BR&gt; &acirc;€&cent; Political Parody, containing the \"Jesusland map\" and other humorous takes on voter profiles&lt;BR&gt; &acirc;€&cent; Whatchamacallit, including a map of the area codes for regions where the rapper Ludacris sings about having \"hoes\"&lt;BR&gt; &acirc;€&cent; Obscure Proposals, capturing Thomas Jefferson\'s vision for dividing the Northwest Territory into ten states with names such as Polypotamia and Assenisipia&lt;BR&gt; &acirc;€&cent; Fantastic Maps, with a depiction of what the globe might look like if the sea and land were inverted&lt;BR&gt;&lt;BR&gt; The Strange Maps blog has been named by GeekDad Blog on Wired.com \"one of the more unusual and unique sites seen on the Web that doesn\'t sell anything or promote an agenda\" and it\'s currently ranked #423 on Technorati\'s Top 500 Blogs.&lt;BR&gt;&lt;BR&gt; Brimming with trivia, deadpan humor, and idiosyncratic lore, &lt;I&gt;Strange Maps&lt;/I&gt; is a fascinating tour of all things weird and wonderful in the world of cartography.', '0142005258.jpg'),
('0151010897', 'Pops: A Life of Louis Armstrong', 30, 496, 'HARDCOVER', '2009-12-02', '&lt;b&gt;Amazon Best Books of the Month, December 2009&lt;/b&gt;: Crafted with a musician\'s ear and an historian\'s eye, &lt;i&gt;Pops&lt;/i&gt; is a vibrant biography of the iconic Louis Armstrong that resonates with the same warmth as ol\' Satchmo&acirc;€™s distinctive voice. &lt;i&gt;Wall Street Journal&lt;/i&gt; critic Terry Teachout draws from a wealth of previously unavailable material &acirc;€“ including over 650 reels of Armstrong\'s own personal tape recordings &acirc;€“ to create an engaging profile that slips behind the jazz legend\'s megawatt smile. Teachout reveals that the beaming visage of \"Reverend Satchelmouth\" was not a mark of racial subservience, but a clear symbol of Louis\'s refusal to let anything cloud the joy he derived from blowing his horn. \"Faced with the terrible realities of the time and place into which he had been born,\" explains Teachout, \"he didn\'t repine, but returned love for hatred and sought salvation in work.\" Armstrong was hardly impervious to the injustices of his era, but in his mind, nothing was more sacred than the music. --&lt;i&gt;Dave Callanan&lt;/i&gt;  &lt;p/&gt;  &lt;b&gt;Product Description&lt;/b&gt;&lt;br/&gt;  Louis Armstrong was the greatest jazz musician of the twentieth century and a giant of modern American culture. He knocked the Beatles off the top of the charts, wrote the finest of all jazz autobiographies--without a collaborator--and created collages that have been compared to the art of Romare Bearden. The ranks of his admirers included   Johnny Cash, Jackson Pollock and Orson Welles. Offstage he was witty, introspective and unexpectedly complex, a beloved colleague with an explosive temper whose larger-than-life personality was tougher and more sharp-edged than his worshipping fans ever knew.&lt;/P&gt;    &lt;I&gt;Wall Street Journal&lt;/I&gt; arts columnist Terry Teachout has drawn on a cache of important new sources unavailable to previous Armstrong biographers, including hundreds of private recordings of backstage and after-hours conversations that Armstrong made throughout the second half of his life, to craft a sweeping new narrative biography of this towering figure that shares full, accurate versions of such storied events as Armstrong\'s decision to break up his big band and his quarrel with President Eisenhower for the first time. Certain to be the definitive word on Armstrong for our generation, &lt;I&gt;Pops&lt;/I&gt; paints a gripping portrait of the man, his world and   his music that will stand alongside Gary Giddins\' &lt;I&gt;Bing Crosby: A Pocketful of Dreams&lt;/I&gt; and Peter Guralnick\'s &lt;I&gt;Last Train to Memphis: The Rise of Elvis Presley&lt;/I&gt; as a classic biography of a major American musician.&lt;br/&gt;  &lt;br/&gt;  &lt;hr class=\"bucketDivider\" size=\"1\" /&gt;  &lt;br/&gt;  &lt;P&gt;  &lt;B class=h1&gt;Amazon Exclusive: A Letter from Terry Teachout, Author of &lt;i&gt;Pops: A Life of Louis Armstrong&lt;/i&gt;&lt;/B&gt;&lt;img align=\"right\" border=\"0\" src=\"http://g-ecx.images-amazon.com/images/G/01/books/hmh-ems/TerryTeachout.jpg\"/&gt;    &lt;/p&gt;  Dear Amazon Readers:&lt;p/&gt;    &lt;i&gt;Pops: A Life of Louis Armstrong&lt;/i&gt;, my new book, is the story of a great artist who was also a good man.&lt;p/&gt;    A genius who was born in the gutter--and became a celebrity known in every corner of the world.&lt;p/&gt;    A beloved entertainer who was more complex--and much tougher--than his fans ever imagined.&lt;p/&gt;    It\'s not the first Armstrong biography, but it\'s the first one to tell Satchmo\'s story accurately. I based it in part on hundreds of private, after-hours recordings made by Armstrong himself, candid tapes in which he tells the amazing tale of his ascent to stardom in blunt, plainspoken language. I\'m the first biographer to have had access   to those tapes.&lt;p/&gt;    Read &lt;i&gt;Pops&lt;/i&gt; and you\'ll learn the facts about his 1930 marijuana arrest, his life-threatening run-in with the gangsters of Chicago, his triumphant Broadway and Hollywood debuts, his complicated love life, and much, much more.&lt;p/&gt;    You\'ll also come away understanding exactly what it was that made him the most influential jazz musician of the twentieth century, an entertainer so irresistibly magnetic that he knocked the Beatles off the top of the charts four decades after he cut his first record.&lt;p/&gt;    If you\'ve ever thrilled to the sounds of \"West End Blues,\" \"Mack the Knife,\" \"Hello, Dolly!\" or \"What a Wonderful World,\" this is the book for you and yours. Give &lt;i&gt;Pops&lt;/i&gt; a read and find out all about the man from New Orleans who changed the face of American music.&lt;p/&gt;    Sincerely yours,&lt;p/&gt;  &lt;i&gt;Terry Teachout&lt;/i&gt;&lt;/p&gt;   &lt;p&gt;(Photo &Acirc;&copy; Ken Howard)&lt;/p&gt;  &lt;br/&gt;  &lt;hr class=\"bucketDivider\" size=\"1\" /&gt;  &lt;br/&gt;    &lt;P&gt;  &lt;B class=h1&gt;Amazon Exclusive: Terry Teachout\'s Top 10 Louis Armstrong Recordings&lt;/B&gt;        &lt;/p&gt;  In &lt;i&gt;Pops: A Life of Louis Armstrong&lt;/i&gt;, I tell the story of a beloved giant of jazz whose greathearted, larger-than-life personality shone through every record he made. Here are ten of my special favorites:&lt;p/&gt;    &lt;b&gt;1.&lt;/b&gt; \"I Gotta Right to Sing the Blues\" (1933). Of all &lt;a ref=\"http://www.amazon.com/Louis-Armstrong/e/B000APTKDS\"&gt;Louis Armstrong\'s records, this is the one I love best. Listen to how he floats atop   the beat in the last chorus--he sounds just like a tenor going for a high C.&lt;p/&gt;    &lt;b&gt;2.&lt;/b&gt; \"West End Blues\" (1928). The most celebrated of all Armstrong recordings and the quintessence of swing.\"&lt;p/&gt;    &lt;b&gt;3.&lt;/b&gt; \"Hotter Than That\" (1927). &acirc;€œI just played the way I sang,\" Pops said. His wordless vocal on this Hot Seven track proves it.&lt;p/&gt;    &lt;b&gt;4.&lt;/b&gt; \"Star Dust\" (1931). Further proof: listen to how he rewrites the lyrics to this familiar Hoagy Carmichael ballad.&lt;p/&gt;    &lt;b&gt;5.&lt;/b&gt; \"Darling Nelly Gray\" (1937). Satchmo transforms an old slave song, backed up by the suavely swinging Mills Brothers.&lt;p/&gt;    &lt;b&gt;6.&lt;/b&gt; \"Jeepers Creepers\" (1939). A charming souvenir of Armstrong\'s film career--he introduced this Johnny Mercer song in \"Going Places.\"&lt;p/&gt;    &lt;b&gt;7.&lt;/b&gt; \"Struttin\' with Some Barbecue\" (1938). A boiling-hot big-band remake of a classic 1927 Hot Five side in which the trumpeter improves on perfection.&lt;p/&gt;    &lt;b&gt;8.&lt;/b&gt; \"You Rascal, You\" (1950). Louis meets Louis in this raucous romp through an Armstrong standard, accompanied to high-spirited effect by &lt;a ref=\"http://www.amazon.com/Louis-Jordan-His-Tympani-Five/dp/B00005KFUG\"&gt;Louis Jordan\'s Tympany Five.&lt;p/&gt;    &lt;b&gt;9.&lt;/b&gt; \"New Orleans Function\" (1950). An old-time New Orleans jazz funeral recreated by the All Stars, with Earl Hines on piano and Jack Teagarden on trombone.&lt;p/&gt;    &lt;b&gt;10.&lt;/b&gt; \"Sleepy Time Down South\" (1941). Armstrong\'s theme song, an irreplaceable example of his rich and resplendent lyricism.&lt;p/&gt;&lt;br/&gt;  &lt;br/&gt;  &lt;hr class=\"bucketDivider\" size=\"1\" /&gt;  &lt;br/&gt;  ', '0151010897.jpg'),
('0195124413', 'Complexity: A Guided Tour', 29.95, 368, 'HARDCOVER', '2009-04-01', 'What enables individually simple insects like ants to act with such precision and purpose as a group? How do trillions of individual neurons produce something as extraordinarily complex as consciousness? What is it that guides self-organizing structures like the immune system, the World Wide Web, the global economy, and the human genome? These are just a few of the fascinating and elusive questions that the science of complexity seeks to answer. &lt;br&gt;  &lt;br&gt;        In this remarkably accessible and companionable book, leading complex systems scientist Melanie Mitchell provides an intimate, detailed tour of the sciences of complexity, a broad set of efforts that seek to explain how large-scale complex, organized, and adaptive behavior can emerge from simple interactions among myriad individuals. Comprehending such systems requires a wholly new approach, one that goes beyond traditional scientific reductionism and that re-maps long-standing disciplinary boundaries. Based on her work at the Santa Fe Institute and drawing on its interdisciplinary strategies, Mitchell brings clarity to the workings of complexity across a broad range of biological, technological, and social phenomena, seeking out the general principles or laws that apply to all of them. She explores as well the relationship between complexity and evolution, artificial intelligence, computation, genetics, information processing, and many other fields.&lt;br&gt;  &lt;br&gt;     Richly illustrated and vividly written, Complexity: A Guided Tour offers a comprehensive and eminently comprehensible overview of the ideas underlying complex systems science, the current research at the forefront of this field, and the prospects for the field\'s contribution to solving some of the most important scientific questions of our time.', '0195124413.jpg'),
('0195393287', 'Atlas of the World: Sixteenth Edition', 80, 448, 'HARDCOVER', '2009-10-01', 'The only world atlas updated annually, guaranteeing that users will find the most current geographic information, Oxford\'s Atlas of the World is the most authoritative resource on the market. The Sixteenth Edition remains the finest international reference source of its kind available. Including new census information, dozens of city maps, gorgeous satellite images of Earth, and a geographical glossary, this atlas offers exceptional value at a reasonable price. &lt;br&gt;          Full of crisp, clear cartography of urban areas and virtually uninhabited landscapes around the globe, the Atlas has maps of 69 cities and nearly 100 different regions at carefully selected scales that give a striking view of the Earth\'s surface. Opening with world statistics and a colorful, instructive 48-page Introduction to World Geography--beautifully illustrated with tables and graphs--this acclaimed resource provides details on such topics as climate, the greenhouse effect, plate tectonics, agriculture, population and migration, and global conflicts. As in years past, this edition includes the latest geographic information. The popular satellite image section has been refreshed with stunning new images of different regions and urban areas. A completely updated Gazetteer of Nations provides an invaluable A-Z reference of concise country profiles, including statistics on economies, politics, and historical profiles. &lt;br&gt;         Providing the finest global coverage available, the Atlas of the World is not only the best-selling volume of its size and price, but also the benchmark by which all other atlases are measured. &lt;br&gt;   &lt;br&gt;    Interior pages designed for heightened accuracy and ease of use&lt;br&gt;   &lt;br&gt;     Detailed city plans and country profiles make it the ultimate geographic reference   &lt;br&gt;   &lt;br&gt;  The Design&lt;br&gt;  Oxford\'s Atlas of the World is a sturdy, high-quality, large-format book that is filled with crisp cartography, spectacular satellite imagery, and a wealth of information on changing conditions around the planet. &lt;br&gt;  &lt;br&gt;  The Special Sections&lt;br&gt;  Oxford\'s Atlas of the World provides an extensive intro to World Geography, up-to-date information on current events of geographical significance, captioned satellite images of the Earth, facts and figures on every sovereign state, and detailed coverage of 69 major urban areas. &lt;br&gt;  &lt;br&gt;  The Quality of Information&lt;br&gt;  Oxford\'s Atlas of the World is the only world atlas that is updated annually, guaranteeing that users will find the most current geographic information. It is the most authoritative resource on the market and offers the most current global information available today through a combination of statistics, maps, and photographs.&lt;br&gt;  &lt;br&gt;  The History&lt;br&gt;  Oxford University Press is known around the world for excellence, tradition, and innovation. The Atlas of the World  is the best-selling volume of its size and price and the esteemed benchmark by which all other atlases are measured.&lt;br&gt;  &lt;br&gt;  The Price&lt;br&gt;  You receive a lavish, top-quality product at an excellent price that is comparable or lower than the main competitors.', '0195393287.jpg'),
('0201835959', 'The Mythical Man-Month: Essays on Software Engineering, Anniversary Edition (2nd Edition)', 39.99, 336, 'PAPERBACK', '1995-08-12', 'No book on software project management has been so influential and so timeless as The Mythical Man-Month. Now 20 years after the publication of his book, Frederick P. Brooks, Jr. (best known as the \"father of the IBM System 360\") revisits his original ideas and develops new thoughts and advice both for readers familiar with his work and for readers discovering it for the first time.', '0201835959.jpg'),
('0299222144', 'Death in a Prairie House: Frank Lloyd Wright and the Taliesin Murders', 16.95, 232, 'PAPERBACK', '2008-08-21', '&lt;DIV&gt;&lt;DIV&gt;The most pivotal and yet least understood event of Frank Lloyd Wright&acirc;€™s celebrated life involves the brutal murders in 1914 of seven adults and children dear to the architect and the destruction by fire of Taliesin, his landmark residence, near Spring Green, Wisconsin. Supplying both a gripping mystery story and a portrait of the artist in his prime, William Drennan wades through the myths surrounding Wright and the massacre, casting fresh light on the formulation of Wright&acirc;€™s architectural ideology and the cataclysmic effects that the Taliesin murders exerted on the fabled architect and on his subsequent designs.&lt;/div&gt; &lt;DIV&gt;&Acirc;&nbsp;&lt;/div&gt;&lt;/DIV&gt;', '0299222144.jpg'),
('0300137192', 'How Rome Fell: Death of a Superpower', 32.5, 560, 'HARDCOVER', '2009-05-12', '&lt;DIV&gt;&lt;DIV&gt;&lt;DIV&gt;&lt;P style=\"MARGIN: 0in 0in 0pt\"&gt;In AD 200, the Roman Empire seemed unassailable. Its vast territory accounted for most of the known world.&Acirc;&nbsp;By the end of the fifth century, Roman rule had vanished in western Europe and much of northern Africa, and only a shrunken Eastern Empire remained.&Acirc;&nbsp;What accounts for this improbable decline?&Acirc;&nbsp;Here, Adrian Goldsworthy applies the scholarship, perspective, and narrative skill that defined his monumental &lt;I&gt;Caesar&lt;/I&gt; to address perhaps the greatest of all historical questions&acirc;€”how Rome fell.&lt;/P&gt;&lt;P style=\"MARGIN: 0in 0in 0pt\"&gt;&Acirc;&nbsp;&lt;/P&gt;&lt;P style=\"MARGIN: 0in 0in 0pt\"&gt;It was a period of remarkable personalities, from the philosopher-emperor Marcus Aurelius to emperors like Diocletian, who portrayed themselves as tough, even brutal, soldiers.&Acirc;&nbsp;It was a time of revolutionary ideas, especially in religion, as Christianity went from persecuted sect to the religion of state and emperors.&Acirc;&nbsp;Goldsworthy pays particular attention to the willingness of Roman soldiers to fight and kill each other. Ultimately, this is the story of how an empire without a serious rival rotted from within, its rulers and institutions putting short-term ambition and personal survival over the wider good of the state.&lt;/P&gt;&lt;P style=\"MARGIN: 0in 0in 0pt\"&gt;&Acirc;&nbsp;&lt;/P&gt;&lt;P style=\"MARGIN: 0in 0in 0pt\"&gt;How Rome Fell is a brilliant successor to Goldsworthy\'s \"monumental\" (&lt;I&gt;The Atlantic&lt;/I&gt;) &lt;I&gt;Caesar&lt;/I&gt;.&lt;/P&gt;&lt;/DIV&gt;&lt;/DIV&gt;&lt;/DIV&gt; (20090607)', '0300137192.jpg'),
('0307263630', 'Defend the Realm: The Authorized History of MI5', 40, 1056, 'HARDCOVER', '2009-11-03', 'An unprecedented publishing event: to mark the centenary of its foundation, the British Security Service, MI5, has for the first time opened its archives to an independent historian. The book reveals the precise role of the Security Service in twentieth-century British history, from its foundation by Captain Kell of the British Army in October 1909, through two world wars, up to and including its present roles in counterespionage and counterterrorism. The book describes how MI5 has been managed, what its relationship has been with government, where it has triumphed, and where it has failed. In all of this no restriction has been placed on the judgments made by the author.&lt;br&gt;&lt;br&gt;&lt;i&gt;Defend the Realm &lt;/i&gt;also adds significantly to our knowledge of many celebrated events and notorious individuals and definitively lays to rest a number of persistent myths.&lt;i&gt; &lt;/i&gt;Above all, it shows the place of this previously extremely secretive organization within the United Kingdom. Few books could make such an immediate and extraordinary increase to our understanding of British history over the past century.', '0307263630.jpg'),
('0307382354', 'SuperCorp: How Vanguard Companies Create Innovation, Profits, Growth, and Social Good', 27.5, 336, 'HARDCOVER', '2009-08-25', 'Rosabeth Moss Kanter on the answer to the global crisis of business and American-style capitalism.&lt;br&gt; &lt;br&gt;Out of the ashes of conventional business models arises a set of companies using their power not only for profits and sustainable growth but also social good. &lt;br&gt;&lt;br&gt;If you think business corporations are doomed to be lumbering, bloated, and corrupt, think again. &lt;br&gt;&lt;br&gt;Based on an extraordinary three-year investigation, interviewing more than 350 key people at major companies around the world, Rosabeth Moss Kanter provides encouraging and astounding evidence that this assumption is completely outdated. The businesses that are agile, keeping ahead of the curve in terms of market changes and customer needs, are the businesses that are also progressive, socially responsible human communities.&lt;br&gt;&lt;br&gt;Take IBM. When the tsunami and earthquake struck Asia, IBM didn&acirc;€™t just cut a check for relief funds and call it a day. The company used its technological expertise and skilled people to create what government and relief agencies could not: information systems to effectively track relief supplies and reunite families. While IBM did this with no commercial motive, its employees&acirc;€™ desire to serve people suffering during these crises stimulated innovations that later benefited the company. &lt;br&gt;&lt;br&gt;Or Proctor &amp; Gamble. Despite a decade-long commitment to research and development of a water purification product, commercial prospects were unpromising. But because it was so consistent with P&amp;G&acirc;€™s statement of purpose, people within the company persevered. And when the tsunami struck, it was then able to deliver roughly a billion glasses of drinking water for the victims, earning plaudits from aid partners, the media, governments, and crucially, P&amp;G employees. &lt;br&gt;&lt;br&gt;&lt;i&gt;SuperCorp&lt;/i&gt; captures the zeitgeist of the emerging twenty-first-century business. For example: &lt;br&gt;&lt;br&gt;&acirc;€&cent; The strong potential synergy between financial performance and attention to community and social needs&lt;br&gt;&acirc;€&cent; The unique competitive advantage from embracing the values and expectations of a new generation of professionals&lt;br&gt;&acirc;€&cent; The growth opportunities that result from stressing values and supressing executive egos when seeking partners and integrating acquisitions&lt;br&gt;&lt;br&gt;&lt;i&gt;SuperCorp&lt;/i&gt; is a remarkable look at the business of the future and the management skills required to get there. IBM, Banco Real, P&amp;G, Cemex, Omron, and other companies reported on now move with the rapidity and creativity of much smaller enterprises. These companies are not perfect, but when people are empowered and values drive decisions, everything can come together in magical &acirc;€œRubik&acirc;€™s Cube moments&acirc;€ of deep satisfaction. Kanter&acirc;€™s compelling and inspiring stories show that people are more inclined to be creative when their company values innovation that helps the world.', '0307382354.jpg'),
('0307459683', 'In Fed We Trust: Ben Bernanke\'s War on the Great Panic', 26.99, 336, 'HARDCOVER', '2009-08-04', '&lt;b&gt;&acirc;€œWhatever it takes&acirc;€&lt;/b&gt;&lt;br&gt;&lt;br&gt;That was Federal Reserve Chairman Ben Bernanke&acirc;€™s vow as the worst financial panic in more than fifty years gripped the world and he struggled to avoid the once unthinkable: a repeat of the Great Depression. Brilliant but temperamentally cautious, Bernanke researched and wrote about the causes of the Depression during his career as an academic. Then when thrust into a role as one of the most important people in the world, he was compelled to boldness by circumstances he never anticipated.&lt;br&gt;&lt;br&gt;The president of the United States can respond instantly to a missile attack with America&acirc;€™s military might, but he cannot respond to a financial crisis with real money unless Congress acts. The Fed chairman can. Bernanke did. Under his leadership the Fed spearheaded the biggest government intervention in more than half a century and effectively became the fourth branch of government, with no direct accountability to the nation&acirc;€™s voters.&lt;br&gt;&lt;br&gt;Believing that the economic catastrophe of the 1930s was largely the fault of a sluggish and wrongheaded Federal Reserve, Bernanke was determined not to repeat that epic mistake. In this penetrating look inside the most powerful economic institution in the world, David Wessel illuminates its opaque and undemocratic inner workings, while revealing how the Bernanke Fed led the desperate effort to prevent the world&acirc;€™s financial engine from grinding to a halt.&lt;br&gt;&lt;br&gt;In piecing together the fullest, most authoritative, and alarming picture yet of this decisive moment in our nation&acirc;€™s history, &lt;i&gt;In Fed We Trust&lt;/i&gt; answers the most critical questions. Among them:&lt;br&gt;&lt;br&gt;&acirc;€&cent; What did Bernanke and his team at the Fed know&acirc;€“and what took them by surprise? Which of their actions stretched&acirc;€“or even ripped through&acirc;€“the Fed&acirc;€™s legal authority? Which chilling numbers and indicators made them feel they had no choice?&lt;br&gt;&lt;br&gt;&acirc;€&cent; What were they thinking at pivotal moments during the race to sell Bear Stearns, the unsuccessful quest to save Lehman Brothers, and the virtual nationalization of AIG, Fannie Mae, and Freddie Mac? What were they saying to one another when, as Bernanke put it to Wessel: &acirc;€œWe came very close to Depression 2.0&acirc;€?&lt;br&gt;&lt;br&gt;&acirc;€&cent; How well did Bernanke, former treasury secretary Hank Paulson, and then New York Fed president Tim Geithner perform under intense pressure? &lt;br&gt;&lt;br&gt;&acirc;€&cent; How did the crisis prompt a reappraisal of the once-impregnable reputation of Alan Greenspan? &lt;br&gt;&lt;br&gt;&lt;i&gt;In Fed We Trust&lt;/i&gt; is a breathtaking and singularly perceptive look at a historic episode in American and global economic history.', '0307459683.jpg'),
('0312351666', 'Smooth Talking Stranger', 24.95, 352, 'HARDCOVER', '2009-03-31', '&lt;DIV&gt;&lt;P&gt;Jack Travis leads the uncomplicated life of a millionaire Texas playboy.&Acirc;&nbsp; He makes no commitments, he loves many women, he lives for pleasure.&Acirc;&nbsp; But no one has ever truly touched his heart or soul.&Acirc;&nbsp; Until one day, a woman appears on his doorstep with fury on her face and a baby in her arms.&Acirc;&nbsp; It seems Jack is the father and this woman is the baby&acirc;€™s aunt. The real mother has abandoned the child to her more responsible sister.&Acirc;&nbsp; And now, Jack is being called upon to take responsibility for the first time in his life.&Acirc;&nbsp; With delicious romantic tension, characters so real they walk onto the page and into your heart, Lisa Kleypas delivers the kind of novel that makes you laugh, love; cry and cheer.&Acirc;&nbsp; &lt;/P&gt;&lt;/DIV&gt;', '0312351666.jpg'),
('0312590822', 'How to Change Someone You Love: Four Steps to Help You Help Them', 24.99, 276, 'HARDCOVER', '2009-12-22', '&lt;DIV&gt;A powerful, ground-breaking book that shows you, in concrete steps, how to stop a loved one from engaging in self destructive behavior.&lt;/DIV&gt;&lt;DIV&gt;&Acirc;&nbsp;&lt;/DIV&gt;&lt;DIV&gt;Stop your husband from drinking himself to death.&Acirc;&nbsp; Don\'t let your brother lose it all to gambling. Get your kid off drugs.&Acirc;&nbsp; Motivate your best friend to lose weight.&Acirc;&nbsp; Make your spendthrift brother-in-law stop maxing out his credit cards.&Acirc;&nbsp; Get your sister out of an abusive relationship.&Acirc;&nbsp; Erase anger in your co-worker.&Acirc;&nbsp; If you\'re tired of watching your spouse, child, relative, or best friend go downhill, dragging you with them, &lt;I&gt;How to Change Someone You Love&lt;/I&gt; will help you turn their lives around.&Acirc;&nbsp; You don\'t have to endure behavior that is unhealthy, abusive, possibly deadly, and that threatens to unravel relationships.&Acirc;&nbsp; You can change it.&Acirc;&nbsp; Many books will tell you that you can\'t change anyone.&Acirc;&nbsp; They advise you not to even try.&Acirc;&nbsp; The problem is, they ignore the tremendous power you actually have to change people.&Acirc;&nbsp; If most books about change are written for the addict or troubled person, &lt;I&gt;How to Change&lt;/I&gt; &lt;I&gt;Someone You Love&lt;/I&gt; reaches out to the loved ones who know that change is critical and urgent.&Acirc;&nbsp; &lt;I&gt;How to Change Someone You Love&lt;/I&gt; &lt;B&gt;is not just a self-help book; this is a help-you-act book&lt;/B&gt;.&Acirc;&nbsp; &lt;/DIV&gt;&lt;DIV&gt;&Acirc;&nbsp;&lt;/DIV&gt;&lt;DIV&gt;\"Brad Lamm&acirc;€™s step-by-step approach empowers families and friends to change their loved ones through compassionate, caring and continuing support.\"-- Dr. Mehmet Oz&lt;/DIV&gt;', '0312590822.jpg'),
('0316008958', 'The Imperial Cruise: A Secret History of Empire and War', 29.99, 400, 'HARDCOVER', '2009-11-24', 'In 1905 President Teddy Roosevelt dispatched Secretary of War William Howard Taft on the largest U.S. diplomatic mission in history to Hawaii, Japan, the Philippines, China, and Korea. Roosevelt\'s glamorous twenty-one year old daughter Alice served as mistress of the cruise, which included senators and congressmen. On this trip, Taft concluded secret agreements in Roosevelt\'s name.&lt;br&gt;&lt;br&gt;In 2005, a century later, James Bradley traveled in the wake of Roosevelt\'s mission and discovered what had transpired in Honolulu, Tokyo, Manila, Beijing and Seoul.&lt;br&gt;&lt;br&gt;In 1905, Roosevelt was bully-confident and made secret agreements that he though would secure America\'s westward push into the Pacific. Instead, he lit the long fuse on the Asian firecrackers that would singe America\'s hands for a century.', '0316008958.jpg'),
('0316018783', 'I, Alex Cross', 27.99, 400, 'HARDCOVER', '2009-11-16', '&lt;strong&gt;You can\'t run&lt;br&gt;&lt;br&gt;&lt;/strong&gt;Detective Alex Cross is pulled out of a family celebration and given the awful news that a beloved relative has been found brutally murdered. Alex vows to hunt down the killer, and soon learns that she was mixed up in one of Washington\'s wildest scenes. And she was not this killer\'s only victim.&lt;br&gt;&lt;br&gt;&lt;b&gt;You can\'t hide&lt;/b&gt;&lt;br&gt;&lt;br&gt;The hunt for her murderer leads Alex and his girlfriend, Detective Brianna Stone, to a place where every fantasy is possible, &lt;i&gt;if&lt;/i&gt; you have the credentials to get in. Alex and Bree are soon facing down some very important, very protected, very dangerous people in levels of society where only one thing is certain--they will do &lt;i&gt;anything&lt;/i&gt; to keep their secrets safe. &lt;b&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;b&gt;Alex Cross is your only hope to stay alive&lt;/b&gt;&lt;br&gt;&lt;br&gt;As Alex closes in on the killer, he discovers evidence that points to the unimaginable--a revelation that could rock the entire world. With the unstoppable action, unforeseeable twists, and edge-of-your-seat suspense that only a James Patterson thriller delivers, &lt;i&gt;I, Alex Cross&lt;/i&gt; is the master of suspense at his sharpest and best.', '0316018783.jpg'),
('0316042676', 'Beautiful Creatures', 17.99, 576, 'HARDCOVER', '2009-12-01', '&lt;em&gt;There were no surprises in &lt;ST1:PLACE w:st=\"on\"&gt;&lt;ST1:PLACENAME w:st=\"on\"&gt;Gatlin&lt;/ST1:PLACENAME&gt;&lt;ST1:PLACETYPE w:st=\"on\"&gt;County&lt;/ST1:PLACETYPE&gt;&lt;/ST1:PLACE&gt;.  &lt;br&gt;We were pretty much the epicenter of the middle of nowhere.&lt;/em&gt;&lt;br&gt;&lt;em&gt;At least, that\'s what I thought.&lt;/em&gt;&lt;br&gt;&lt;em&gt;Turns out, I couldn\'t have been more wrong.&lt;/em&gt;&lt;br&gt;&lt;em&gt;There was a curse.&lt;/em&gt;&lt;br&gt;&lt;em&gt;There was a girl.&lt;/em&gt;&lt;br&gt;&lt;em&gt;And in the end, there was a grave.&lt;/em&gt;&lt;br&gt;&lt;br&gt;Lena Duchannes is unlike anyone the small Southern town of &lt;ST1:CITY w:st=\"on\"&gt;&lt;ST1:PLACE w:st=\"on\"&gt;Gatlin&lt;/ST1:PLACE&gt;&lt;/ST1:CITY&gt; has ever seen, and she\'s struggling to conceal her power, and a curse that has haunted her family for generations. But even within the overgrown gardens, murky swamps and crumbling graveyards of the forgotten South, a secret cannot stay hidden forever.&lt;br&gt;&lt;br&gt;Ethan Wate, who has been counting the months until he can escape from Gatlin, is haunted by dreams of a beautiful girl he has never met. When &lt;ST1:PLACE w:st=\"on\"&gt;Lena&lt;/ST1:PLACE&gt; moves into the town\'s oldest and most infamous plantation, Ethan is inexplicably drawn to her and determined to uncover the connection between them.&lt;br&gt;&lt;br&gt;In a town with no surprises, one secret could change everything.', '0316042676.jpg'),
('0316049344', 'The Sad Tale of the Brothers Grossbart', 14.99, 464, 'PAPERBACK', '2009-11-16', 'Hegel and Manfried Grossbart may not consider themselves bad men - but death still stalks them through the dark woods of medieval Europe.  &lt;br&gt;&lt;br&gt;The year is 1364, and the brothers Grossbart have embarked on a na&Atilde;&macr;ve quest for fortune.  Descended from a long line of graverobbers, they are determined to follow their family\'s footsteps to the fabled crypts of Gyptland. To get there, they will have to brave dangerous and unknown lands and keep company with all manner of desperate travelers-merchants, priests, and scoundrels alike. For theirs is a world both familiar and distant; a world of living saints and livelier demons, of monsters and madmen. &lt;br&gt;&lt;br&gt;The Brothers Grossbart are about to discover that all legends have their truths, and worse fates than death await those who would take the red road of villainy.', '0316049344.jpg'),
('0316769177', 'The Catcher in the Rye', 13.99, 288, 'PAPERBACK', '2001-01-30', 'Ever since it was first published in 1951, this novel has been the coming-of-age story against which all others are judged. Read and cherished by generations, the story of Holden Caulfield is truly one of America\'s literary treasures.', '0316769177.jpg'),
('034547824X', 'Already Dead: A Novel', 14, 288, 'PAPERBACK', '2005-12-27', 'Those stories you hear? The ones about things that only come out at night? Things that feed on blood, feed on us? Got news for you: they&acirc;€™re true. Only it&acirc;€™s not like the movies or old man Stoker&acirc;€™s storybook. It&acirc;€™s worse. Especially if you happen to be one of them&lt;i&gt;. &lt;/i&gt;Just&lt;i&gt; &lt;/i&gt;ask Joe Pitt.&lt;i&gt;&lt;br&gt;&lt;/i&gt;&lt;br&gt;There&acirc;€™s a shambler on the loose. Some fool who got himself infected with a flesh-eating bacteria is lurching around, trying to munch on folks&acirc;€™ brains. Joe hates shamblers, but he&acirc;€™s still the one who has to deal with them. That&acirc;€™s just the kind of life he has. Except afterlife might be better word.&lt;br&gt;&lt;br&gt;From the Battery to the Bronx, and from river to river, Manhattan is crawling with Vampyres. Joe is one of them, and he&acirc;€™s not happy about it. Yeah, he gets to be stronger and faster than you, and he&acirc;€™s tough as nails and hard to kill. But spending his nights trying to score a pint of blood to feed the Vyrus that&acirc;€™s eating at him isn&acirc;€™t his idea of a good time. And Joe doesn&acirc;€™t make it any easier on himself. Going his own way, refusing to ally with the Clans that run the undead underside of Manhattan&acirc;€“it ain&acirc;€™t easy. It&acirc;€™s worse once he gets mixed up with the Coalition&acirc;€“the city&acirc;€™s most powerful Clan&acirc;€“and finds himself searching for a poor little rich girl who&acirc;€™s gone missing in Alphabet City.&lt;br&gt;&lt;br&gt;Now the Coalition and the girl&acirc;€™s high-society parents are breathing down his neck, anarchist Vampyres are pushing him around, and a crazy Vampyre cult is stalking him. No time to complain, though. Got to find that girl and kill that shambler before the whip comes down . . . and before the sun comes up.', '034547824X.jpg'),
('0345497511', 'The City &amp; The City', 26, 336, 'HARDCOVER', '2009-05-26', '&lt;i&gt;New York Times&lt;/i&gt; bestselling author China Mi&Atilde;&copy;ville delivers his most accomplished novel yet, an existential thriller set in a city unlike any other&acirc;€“real or imagined.&lt;br&gt;&lt;br&gt;When a murdered woman is found in the city of Beszel, somewhere at the edge of Europe, it looks to be a routine case for Inspector Tyador Borl&Atilde;&ordm; of the Extreme Crime Squad. But as he investigates, the evidence points to conspiracies far stranger and more deadly than anything he could have imagined.&lt;br&gt;&lt;br&gt;Borl&Atilde;&ordm; must travel from the decaying Beszel to the only metropolis on Earth as strange as his own. This is a border crossing like no other, a journey as psychic as it is physical, a shift in perception, a seeing of the unseen. His destination is Beszel&acirc;€™s equal, rival, and intimate neighbor, the rich and vibrant city of Ul Qoma. With Ul Qoman detective Qussim Dhatt, and struggling with his own transition, Borl&Atilde;&ordm; is enmeshed in a sordid underworld of rabid nationalists intent on destroying their neighboring city, and unificationists who dream of dissolving the two into one. As the detectives uncover the dead woman&acirc;€™s secrets, they begin to suspect a truth that could cost them and those they care about more than their lives. &lt;br&gt;&lt;br&gt;What stands against them are murderous powers in Beszel and in Ul Qoma: and, most terrifying of all, that which lies between these two cities.&lt;br&gt;&lt;br&gt;Casting shades of Kafka and Philip K. Dick, Raymond Chandler and 1984, &lt;b&gt;The City &amp; the City&lt;/b&gt; is a murder mystery taken to dazzling metaphysical and artistic heights.', '0345497511.jpg'),
('0345499395', 'Strong Fathers, Strong Daughters: 10 Secrets Every Father Should Know', 14.95, 288, 'PAPERBACK', '2007-08-28', 'In today&acirc;€™s increasingly complicated world, it&acirc;€™s often difficult for parents to connect with their daughters&acirc;€“and especially so for fathers. In this unique and invaluable guide, Dr. Meg Meeker, a pediatrician with more than twenty years&acirc;€™ experience counseling girls, reveals that a young woman&acirc;€™s relationship with her father is far more important than we&acirc;€™ve ever realized. To become a strong, confident woman, a daughter needs her father&acirc;€™s attention, protection, courage, and wisdom. Dr. Meeker shares the ten secrets every father needs to know in order to strengthen or rebuild bonds with his daughter and shape her life&acirc;€“and his own&acirc;€“for the better. Inside you&acirc;€™ll discover:&lt;br&gt;&lt;br&gt;&acirc;€&cent; the essential virtues of strong fathers&acirc;€“and how to develop them &lt;br&gt;&acirc;€&cent; the cues daughters take from their dads on everything from self-respect to drugs, alcohol, and sex&lt;br&gt;&acirc;€&cent; the truth about ground rules (girls do want them, despite their protests)&lt;br&gt;&acirc;€&cent; the importance of becoming a hero to your daughter&lt;br&gt;&acirc;€&cent; the biggest mistake a dad can make&acirc;€“and the ramifications&lt;br&gt;&acirc;€&cent; the fact that girls actually depend on their dads&acirc;€™ guidance into adulthood&lt;br&gt;&acirc;€&cent; steps fathers can follow to help daughters avoid disastrous decisions and mistakes&lt;br&gt;&acirc;€&cent; ways in which&lt;i&gt; &lt;/i&gt;a father&acirc;€™s faith&acirc;€“or lack thereof&acirc;€“will influence his daughter&lt;br&gt;&acirc;€&cent; essential communication strategies for different stages of a girl&acirc;€™s life&lt;br&gt;&acirc;€&cent; true stories of &acirc;€œprodigal daughters&acirc;€&acirc;€“and how their fathers helped to bring them back &lt;br&gt;&lt;br&gt;Dads, you are far more powerful than you think&acirc;€“and if you follow Dr. Meeker&acirc;€™s advice, the rewards will be unmatched.&lt;br&gt;&lt;br&gt;&acirc;€œReassuring and challenging . . . a helpful road map for concerned fathers [that] tackles difficult issues.&acirc;€&lt;br&gt;&lt;i&gt;&acirc;€“National Review&lt;/i&gt;&lt;br&gt;&lt;br&gt;&acirc;€œA touching, illuminating book that will prove valuable to all of us who are fortunate enough to have been blessed with daughters.&acirc;€&lt;br&gt;&acirc;€“Michael Medved, nationally syndicated radio talk-show host, author of &lt;i&gt;Right Turns&lt;/i&gt;&lt;br&gt;&lt;br&gt;&acirc;€œDr. Meeker&acirc;€™s conclusions are timely, relevant, and often deeply moving. No one interested in what girls experience growing up in our culture today&acirc;€“and the impact that parents, especially fathers, have on the experience&acirc;€“can afford to miss reading this book.&acirc;€&lt;br&gt;&acirc;€“Armand M. Nicholi, Jr., M.D., professor of psychiatry, Harvard Medical School', '0345499395.jpg'),
('0345505476', 'The Paris Vendetta: A Novel', 26, 432, 'HARDCOVER', '2009-12-01', 'When Napoleon Bonaparte died in exile in 1821, he took to the grave a powerful secret. As general and emperor, he had stolen immeasurable riches from palaces, national treasuries, and even the Knights of Malta and the Vatican. In his final days, his British captors hoped to learn where the loot lay hidden. But he told them nothing, and in his will he made no mention of the treasure. Or did he?&lt;br&gt;&lt;br&gt;Former Justice Department operative Cotton Malone isn\'t looking for trouble when it comes knocking at his Copenhagen bookshop. Actually, it breaks and enters in the form of an American Secret Service agent with a pair of assassins on his heels. Malone has his doubts about the anxious young man, but narrowly surviving a ferocious firefight convinces him to follow his unexpected new ally.&lt;br&gt;&lt;br&gt;Their first stop is the secluded estate of Malone\'s good friend, Henrik Thorvaldsen. The wily Danish tycoon has uncovered the insidious plans of the Paris Club, a cabal of multimillionaires bent on manipulating the global economy. Only by matching wits with a terrorist-for-hire, foiling a catastrophic attack, and plunging into a desperate hunt for Napoleon\'s legendary lost treasure can Malone hope to avert international financial anarchy.&lt;br&gt;&lt;br&gt;But Thorvaldsen\'s real objective is much more personal: to avenge the murder of his son by the larcenous aristocrat at the heart of the conspiracy. Thorvaldsen\'s vendetta places Malone in an impossible quandary&acirc;€”one that forces him to choose between friend and country, past and present. Starting in Denmark, moving to England, and ending up in the storied streets and cathedrals of Paris, Malone plays a breathless game of duplicity and death, all to claim a prize of untold value. But at what cost?', '0345505476.jpg');
INSERT INTO `tblbooks` (`isbn`, `title`, `price`, `pages`, `binding`, `pubDate`, `description`, `imageFilename`) VALUES
('0345518756', 'How to Sew a Button: And Other Nifty Things Your Grandmother Knew', 15, 304, 'PAPERBACK', '2009-12-15', '&acirc;€œWaste not, want not&acirc;€ with this guide to saving money, taking heart, and enjoying the simple pleasures of life.&lt;br&gt;&lt;br&gt;Nowadays, many of us &acirc;€œoutsource&acirc;€ basic tasks. Food is instant, ready-made, and processed with unhealthy additives. Dry cleaners press shirts, delivery guys bring pizza, gardeners tend flowers, and, yes, tailors sew on those pesky buttons. But life can be much simpler, sweeter, and richer&acirc;€“and a lot more fun, too! As your grandmother might say, now is not the time to be careless with your money, and it actually pays to learn how to do things yourself!&lt;br&gt;&lt;br&gt;Practical and empowering, &lt;b&gt;How to Sew a Button&lt;/b&gt; collects the treasured wisdom of nanas, bubbies, and grandmas from all across the country&acirc;€“as well as modern-day experts&acirc;€“and shares more than one hundred step-by-step essential tips for cooking, cleaning, gardening, and entertaining, including how to&lt;br&gt;&lt;br&gt;&acirc;€&cent; polish your image by shining your own shoes&lt;br&gt;&acirc;€&cent; grow your own vegetables (and stash your bounty for the winter)&lt;br&gt;&acirc;€&cent; sweeten your day by making your own jam&lt;br&gt;&acirc;€&cent; use baking soda and vinegar to clean your house without toxic chemicals&lt;br&gt;&acirc;€&cent; feel beautiful by perfecting your posture&lt;br&gt;&acirc;€&cent; roll your own piecrust and find a slice of heaven&lt;br&gt;&acirc;€&cent; fold a fitted sheet to crisp perfection&lt;br&gt;&acirc;€&cent; waltz without stepping on any toes&lt;br&gt;&lt;br&gt;Complete with helpful illustrations and brimming with nostalgic charm, &lt;b&gt;How to Sew a Button &lt;/b&gt;provides calm and comfort in uncertain times. By doing things yourself, with care and attention, you and your loved ones will feel the pleasing rewards of a job well done.', '0345518756.jpg'),
('0374527008', 'Indivisible by Four: A String Quartet in Pursuit of Harmony', 16, 320, 'PAPERBACK', '2000-06-15', 'The Guarneri Quartet is fabled for its unique longevity and high-spirited virtuosity. Here is its story from the inside--a story filled with drama, humor, danger, compassion, and, of course, glorious music.&lt;br&gt;&lt;br&gt;A player who studies and performs the exalted string-quartet repertoire has opted for a very special life. Arnold Steinhardt, tracing his own development as a student, orchestra player, and budding young soloist, gives a touching account of how he and his intrepid colleagues were converted to chamber music despite the daunting odds against success. And he reveals, as no one has before, the intensely difficult process by which--on the battlefield of daily three-hour rehearsals--four individualists master and then overcome the confining demands of ensemble playing. &lt;br&gt;', '0374527008.jpg'),
('0375406956', 'My Name Is Red', 26.95, 448, 'HARDCOVER', '2001-08-28', 'From one of the most important and acclaimed writers at work today, a thrilling new novel&acirc;€”part murder mystery, part love story&acirc;€”set amid the perils of religious repression in sixteenth-century Istanbul.&lt;br&gt;&lt;br&gt;When the Sultan commissions a great book to celebrate his royal self and his extensive dominion, he directs Enishte Effendi to assemble a cadre of the most acclaimed artists in the land. Their task: to illuminate the work in the European style. But because figurative art can be deemed an affront to Islam, this commission is a dangerous proposition indeed, and no one in the elite circle can know the full scope or nature of the project. &lt;br&gt;Panic erupts when one of the chosen miniaturists disappears, and the Sultan demands answers within three days. The only clue to the mystery&acirc;€”or crime?&acirc;€”lies in the half-finished illuminations themselves. Has an avenging angel discovered the blasphemous work? Or is a jealous contender for the hand of Enishte&acirc;€™s ravishing daughter, the incomparable Shekure, somehow to blame?&lt;br&gt;&lt;br&gt;Orhan Pamuk&acirc;€™s &lt;i&gt;My Name Is Red&lt;/i&gt; is at once a fantasy and a philosophical puzzle, a kaleidoscopic journey to the intersection of art, religion, love, sex, and power.', '0375406956.jpg'),
('0375422226', 'The Age of Wonder: How the Romantic Generation Discovered the Beauty and Terror of Science', 40, 576, 'HARDCOVER', '2009-07-14', 'A riveting history of the men and women whose discoveries and inventions at the end of the eighteenth century gave birth to the Romantic Age of Science. &lt;br&gt;&lt;br&gt;When young Joseph Banks stepped onto a Tahitian beach in 1769, he hoped to discover Paradise. Inspired by the scientific ferment sweeping through Britain, the botanist had sailed with Captain Cook on his first &lt;i&gt;Endeavour &lt;/i&gt;voyage in search of new worlds. Other voyages of discovery&acirc;€”astronomical, chemical, poetical, philosophical&acirc;€”swiftly follow in Richard Holmes&acirc;€™s original evocation of what truly emerges as an Age of Wonder. &lt;br&gt;&lt;br&gt;Brilliantly conceived as a relay of scientific stories, &lt;i&gt;The Age of Wonder&lt;/i&gt; investigates the earliest ideas of deep time and space, and the explorers of &acirc;€œdynamic science,&acirc;€ of an infinite, mysterious Nature waiting to be discovered. Three lives dominate the book: William Herschel and his sister Caroline, whose dedication to the study of the stars forever changed the public conception of the solar system, the Milky Way, and the meaning of the universe; and Humphry Davy, who, with only a grammar school education stunned the scientific community with his near-suicidal gas experiments that led to the invention of the miners&acirc;€™ lamp and established British chemistry as the leading professional science in Europe.  This age of exploration extended to great writers and poets as well as scientists, all creators relishing in moments of high exhilaration, boundary-pushing and discovery. &lt;br&gt;&lt;br&gt;Holmes&acirc;€™s extraordinary evocation of this age of wonder shows how great ideas and experiments&acirc;€”both successes and failures&acirc;€”were born of singular and often lonely dedication, and how religious faith and scientific truth collide.  He has written a book breathtaking in its originality, its storytelling energy, and  its intellectual significance.', '0375422226.jpg'),
('0375705244', 'Founding Brothers: The Revolutionary Generation', 15, 304, 'PAPERBACK', '2002-02-05', 'In this landmark work of history, the National Book Award&acirc;€”winning author of &lt;i&gt;American Sphinx &lt;/i&gt;explores how a group of greatly gifted but deeply flawed individuals&acirc;€“Hamilton, Burr, Jefferson, Franklin, Washington, Adams, and Madison&acirc;€“confronted the overwhelming challenges before them to set the course for our nation.&lt;br&gt;&lt;br&gt;The United States was more a fragile hope than a reality in 1790. During the decade that followed, the Founding Fathers&acirc;€“re-examined here as Founding Brothers&acirc;€“combined the ideals of the Declaration of Independence with the content of the Constitution to create the practical workings of our government. Through an analysis of six fascinating episodes&acirc;€“Hamilton and Burr&acirc;€™s deadly duel, Washington&acirc;€™s precedent-setting Farewell Address, Adams&acirc;€™ administration and political partnership with his wife, the debate about where to place the capital, Franklin&acirc;€™s attempt to force Congress to confront the issue of slavery and Madison&acirc;€™s attempts to block him, and Jefferson and Adams&acirc;€™ famous correspondence&acirc;€“&lt;b&gt;Founding Brothers&lt;/b&gt; brings to life the vital issues and personalities from the most important decade in our nation&acirc;€™s history.&lt;i&gt;&lt;br&gt;&lt;/i&gt;', '0375705244.jpg'),
('0385333846', 'Slaughterhouse-Five: A Novel', 15, 288, 'PAPERBACK', '1999-01-12', 'Launched in November, Dell\'s Kurt Vonnegut reissue program continues with one of the world\'s great anti-war books. Centering on the infamous firebombing of Dresden, Billy Pilgrim\'s odyssey through time reflects the mythic journey of our own fractured lives as we search for meaning in what we are afraid to know.', '0385333846.jpg'),
('0385523327', 'The Other Lands (Acacia, Book 2)', 28, 480, 'HARDCOVER', '2009-09-15', '&lt;b&gt;The thrilling new installment in the ambitious Acacia trilogy, praised by the &lt;i&gt;Washington&lt;/i&gt; &lt;i&gt;Post&lt;/i&gt; as &acirc;€œgripping and sophisticated.&acirc;€&lt;/b&gt;&lt;br&gt;&lt;br&gt;A few years have passed since the conquering of the Mein, and Queen Corinn is firmly in control of the Known World-perhaps too firmly. With plans to expand her empire, she sends her brother, Daniel, on an exploratory mission to the Other Lands. There Daniel discovers a lush, exotic mainland ruled by an alliance of tribes that poses a grave danger to the stability of the Known World. Is Queen Corinn strong enough to face this new challenge? Readers of this bold, imaginative sequel will not be disappointed in the answer.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;i&gt;From the Hardcover edition.&lt;/i&gt;', '0385523327.jpg'),
('0385733976', 'Going Bovine', 17.99, 496, 'HARDCOVER', '2009-09-22', '&lt;i&gt;Can Cameron find what he&acirc;€™s looking for?&lt;br&gt;&lt;br&gt;&lt;/i&gt;All 16-year-old Cameron wants is to get through high school&acirc;€”and life in general&acirc;€”with a minimum of effort. It&acirc;€™s not a lot to ask. But that&acirc;€™s before he&acirc;€™s given some bad news: he&acirc;€™s sick and he&acirc;€™s going to die. Which totally sucks. Hope arrives in the winged form of Dulcie, a loopy punk angel/possible hallucination with a bad sugar habit. She tells Cam there is a cure&acirc;€”if he&acirc;€™s willing to go in search of it. With the help of a death-obsessed, video-gaming dwarf and a yard gnome, Cam sets off on the mother of all road trips through a twisted America into the heart of what matters most.', '0385733976.jpg'),
('0393068617', 'Jazz', 39.95, 704, 'HARDCOVER', '2009-10-26', '&lt;strong&gt;The story of jazz for the general reader as it has never been told before, from the inside out: a comprehensive, eloquent, scrupulously researched page-turner.&lt;/strong&gt;  In this vivid history of jazz, a respected critic and a leading scholar capture the excitement of America&acirc;€™s unique music with intellectual bite, unprecedented insight, and the passion of unabashed fans. They explain what jazz is, where it came from, and who created it and why, all within the broader context of American life and culture. Emphasizing its African American roots, &lt;em&gt;Jazz&lt;/em&gt; traces the history of the music over the last hundred years. From ragtime and blues to the international craze for swing, from the heated protests of the avant-garde to the radical diversity of today&acirc;€™s artists, &lt;em&gt;Jazz&lt;/em&gt; describes the travails and triumphs of musical innovators struggling for work, respect, and cultural acceptance set against the backdrop of American history, commerce, and politics. With vibrant photographs by legendary jazz chronicler Herman Leonard, &lt;em&gt;Jazz&lt;/em&gt; is also an arresting visual history of a century of music. 38 photos.', '0393068617.jpg'),
('039306901X', 'Home Game: An Accidental Guide to Fatherhood', 23.95, 192, 'HARDCOVER', '2009-05-18', '&lt;strong&gt;A book that explores the difference between the idea of fatherhood and a man&acirc;€™s actual experience of it.&lt;/strong&gt;  When he became a father, Michael Lewis found  himself expected to feel things that he didn&acirc;€™t  feel, and to do things that he couldn&acirc;€™t see the  point of doing. At first this made him feel  guilty, until he realized that all around him  fathers were pretending to do one thing, to feel one way, when in fact they felt and did all sorts of things, then engaged in what amounted to an  extended cover-up.  &lt;br /&gt;  &lt;br /&gt;  Lewis decided to keep a written record of what actually happened  immediately after the birth of each of his three children. This book is that record. But it is  also something else: maybe the funniest, most  unsparing account of ordinary daily household  life ever recorded from the point of view of the man inside. The remarkable thing about this story isn&acirc;€™t that Lewis is so unusual. It&acirc;€™s that he is  so typical. The only wonder is that his wife has allowed him to publish it. 3 photos.', '039306901X.jpg'),
('0393312836', 'A Clockwork Orange', 13.95, 240, 'PAPERBACK', '0000-00-00', 'Anthony Burgess\'s modern classic of youthful violence and social redemption, reissued to include the controversial last chapter not previously published in this country, with a new introduction by the author.', '0393312836.jpg'),
('0399155805', 'The Perfect Poison (Arcane Society, Book 6)', 24.95, 352, 'HARDCOVER', '2009-04-21', '&lt;B&gt;Victorian London holds many secrets. But none are so closely guarded as those of the shadowy Arcane Society. In her suspenseful new novel, &lt;I&gt;New York Times&lt;/I&gt;-bestselling author Amanda Quick delves into this underworld of passion, greed, and powers that lie beyond this realm . . .&lt;/B&gt;&lt;BR&gt;&lt;BR&gt; P lagued by rumors that she poisoned her fianc&Atilde;&copy;, Lucinda Bromley manages to live on the fringes of polite society, tending her beloved plants-and occasionally consulting on a murder investigation. For the notorious botanist possesses a unique talent: She can detect almost any type of poison, especially ones that have their origins in the botanical kingdom.&lt;BR&gt;&lt;BR&gt; But the death of a lord has shaken Lucinda to her core. At the murder scene, she picks up traces of a poison containing a very rare species of fern. So rare, in fact, that only one specimen exists in all of England-and it was stolen from her conservatory just last month.&lt;BR&gt;&lt;BR&gt; To keep her name out of the inquest and to find the murderer, Lucinda hires fellow Arcane Society member Caleb Jones who runs a psychical investigation agency. A descendant of the founder of the Society, Jones is very skillful at protecting its secrets-and frighteningly good getting at the truth. Immediately, Lucinda senses both a raw power and an undeniable intensity in the imposing man.&lt;BR&gt;&lt;BR&gt; But as a nearly overwhelming desire blooms between Caleb and Lucinda, they are drawn into the dark heart of a deadly conspiracy that can be traced to the early days of the Arcane Society -and to a legacy of madness that could plunge Caleb into the depths of his own tortured soul. . . .', '0399155805.jpg'),
('039915597X', 'U is for Undertow (Kinsey Millhone Mystery)', 27.95, 416, 'HARDCOVER', '2009-12-01', 'C alling &lt;I&gt;T is for Trespass&lt;/I&gt; \"taut, terrifying, transfixing and terrific,\" USA Today went on to ask, \"What does it take to write twenty novels about the same character and manage to create a fresh, genre-bending novel every time?\" It\'s a question worth pondering. Through twenty excursions into the dark side of the human soul, Sue Grafton has never written the same book twice. And so it is with this, her twenty-first. Once again, she breaks genre formulas, giving us a twisting, complex, surprise-filled, and totally satisfying thriller.&lt;BR&gt;&lt;BR&gt; It\'s April, 1988, a month before Kinsey Millhone\'s thirty-eighth birthday, and she\'s alone in her office doing paperwork when a young man arrives unannounced. He has a preppy air about him and looks as if he\'d be carded if he tried to buy booze, but Michael Sutton is twenty-seven, an unemployed college dropout. Twenty-one years earlier, a four-year-old girl disappeared. A recent reference to her kidnapping has triggered a flood of memories. Sutton now believes he stumbled on her lonely burial when he was six years old. He wants Kinsey\'s help in locating the child\'s remains and finding the men who killed her. It\'s a long shot but he\'s willing to pay cash up front, and Kinsey agrees to give him one day. As her investigation unfolds, she discovers Michael Sutton has an uneasy relationship with the truth. In essence, he\'s the boy who cried wolf. Is his current story true or simply one more in a long line of fabrications?&lt;BR&gt;&lt;BR&gt; Grafton moves the narrative between the eighties and the sixties, changing points of view, building multiple subplots, and creating memorable characters. Gradually, we see how they all connect. But at the beating center of the novel is Kinsey Millhone, sharp-tongued, observant, a loner-\"a heroine,\" said &lt;I&gt;The New York Times Book Review&lt;/I&gt;, \"with foibles you can laugh at and faults you can forgive.\"', '039915597X.jpg'),
('0425226921', 'Angels\' Blood', 7.99, 368, 'PAPERBACK', '2009-03-03', '&lt;B&gt;FIRST IN THE GUILD HUNTER SERIES from &acirc;€œa major new talent&acirc;€ (&lt;I&gt;CHRISTINE FEEHAN&lt;/I&gt;).&lt;BR&gt;&lt;BR&gt; Nalini Singh introduces readers to a world of beauty and bloodlust, where angels hold sway over vampires.&lt;/B&gt;&lt;BR&gt;&lt;BR&gt; Vampire hunter Elena Deveraux is hired by the dangerously beautiful Archangel Raphael. But this time, it&acirc;€™s not a wayward vamp she has to track. It&acirc;€™s an archangel gone bad.&lt;BR&gt;&lt;BR&gt; The job will put Elena in the midst of a killing spree like no other&acirc;€”and pull her to the razor&acirc;€™s edge of passion. Even if the hunt doesn&acirc;€™t destroy her, succumbing to Raphael&acirc;€™s seductive touch just may. For when archangels play, mortals break.', '0425226921.jpg'),
('0439023483', 'The Hunger Games', 17.99, 384, 'HARDCOVER', '2008-09-14', 'Katniss is a 16-year-old girl living with her mother and younger sister in the poorest district of Panem, the remains of what used be the United States. Long ago the districts waged war on the Capitol and were defeated. As part of the surrender terms, each district agreed to send one boy and one girl to appear in an annual televised event called, \"The Hunger Games.\" The terrain, rules, and level of audience participation may change but one thing is constant: kill or be killed. When Kat\'s sister is chosen by lottery, Kat steps up to go in her place. &lt;br&gt;&lt;br&gt;', '0439023483.jpg'),
('0439023491', 'Catching Fire (The Second Book of the Hunger Games)', 17.99, 400, 'HARDCOVER', '2009-09-01', 'Against all odds, Katniss Everdeen has won the annual Hunger Games with fellow district tribute Peeta Mellark. But it was a victory won by defiance of the Capitol and their harsh rules. Katniss and Peeta should be happy. After all, they have just won for themselves and their families a life of safety and plenty. But there are rumors of rebellion among the subjects, and Katniss and Peeta, to their horror, are the faces of that rebellion. The Capitol is angry. The Capitol wants revenge.', '0439023491.jpg'),
('0446391387', 'The Andy Warhol Diaries', 29.99, 807, 'PAPERBACK', '1991-01-01', 'Now in trade paperback, the sensational national bestseller that turns the spotlight on one of the most influential and controversial figures of our time.', '0446391387.jpg'),
('0451462769', 'The Red Tree', 16, 400, 'PAPERBACK', '2009-08-04', 'Sarah Crowe left Atlanta, and the remnants of a tumultuous relationship, to live alone in an old house in rural Rhode Island. Within its walls she discovers an unfinished manuscript written by the house\'s former tenant-a parapsychologist obsessed with the ancient oak growing on a desolate corner of the property. And as the gnarled tree takes root in her imagination, Sarah risks her health and her sanity to unearth a revelation planted centuries ago...', '0451462769.jpg'),
('0452286204', 'Leonard Maltin\'s Classic Movie Guide', 22, 704, 'PAPERBACK', '2005-02-22', '  From Leonard Maltin, author of the bestselling annual &lt;I&gt;Movie Guide&lt;/I&gt;, comes this guide to   classic movies. &lt;I&gt;Leonard Maltin&acirc;€™s Classic Movie Guide&lt;/I&gt; includes more than 7,000 capsule   reviews of classic movies, including:  &lt;I&gt;The Birth of a Nation&lt;/I&gt; (1915), &lt;I&gt;Gone With the   Wind&lt;/I&gt; (1939), &lt;I&gt;The Philadelphia Story&lt;/I&gt; (1940), &lt;I&gt;High Noon&lt;/I&gt; (1952), and &lt;I&gt;Guess   Who&acirc;€™s Coming to Dinner&lt;/I&gt; (1967).  &lt;P&gt;  In addition, this unique volume also offers a star and director index, a full listing of classic movies   on DVD, and Leonard Maltin&acirc;€™s unique Top Ten lists. The result is an authoritative, dynamic guide   to the classics no film aficionado should be without.', '0452286204.jpg'),
('0470178418', 'Frommer\'s Iceland (Frommer\'s Complete)', 21.99, 376, 'PAPERBACK', '2008-07-08', 'Experience Iceland&acirc;€™s amazing diversity and many attractions the way the locals do with America&acirc;€™s #1 bestselling travel series. &lt;i&gt;Frommer&acirc;€™s Iceland&lt;/i&gt; is a complete guide to everything Iceland has to offer, from cosmopolitan city Reykjavik to outdoor activities like taking a dip in natural thermal pools. No matter what your age, desired activity level, or interests, this guide will show you exactly how you can enjoy Iceland. Utilize the outspoken opinions, exact prices, suggested itineraries, detailed map, off-the-beaten-path experiences, undiscovered gems and an easy-to-read two-color design for a customized adventure.', '0470178418.jpg'),
('0470423382', 'Frommer\'s 23 Great Drives in New England (Best Loved Driving Tours)', 18.99, 208, 'PAPERBACK', '2009-02-17', 'These full-color guides show travelers how to see the best of Europe and the&Acirc;&nbsp;U.S. by car.    &lt;p&gt;    &acirc;€&cent; More than 20 driving tours    &lt;p&gt;    &acirc;€&cent; More than 100 color photographs    &lt;p&gt;    &acirc;€&cent; Hotel recommendations    &lt;p&gt;    &acirc;€&cent; Detailed maps    &lt;p&gt;', '0470423382.jpg'),
('0470537213', 'The Making of Some Like It Hot: My Memories of Marilyn Monroe and the Classic American Movie', 25.95, 272, 'HARDCOVER', '2009-09-28', '&lt;P&gt;A Special Memoir for a Special Moment in Hollywood History . . .&lt;/P&gt; &lt;P&gt;Some Like It Hot occupies a unique place in American culture. This beloved  classic  &lt;P&gt;showcases five comic geniuses: Tony Curtis, Jack Lemmon, I. A. L. Diamond,  Billy Wilder,  &lt;P&gt;and Marilyn Monroe. It has been honored by the American Film Institute as the  \"Funniest Film of All Time\". It has contributed quotes, styles, and stories to  film lore.  &lt;P&gt;Yet the full story of its making has never been told-until now. &lt;/P&gt;', '0470537213.jpg'),
('055338256X', 'I, Robot (The Robot)', 14, 256, 'PAPERBACK', '2008-04-29', 'The three laws of Robotics:&lt;br&gt;1) A robot may not injure a human being or, through inaction, allow a human being to come to harm&lt;br&gt;2) A robot must obey orders givein to it by human beings except where such orders would conflict with the First Law.&lt;br&gt;3) A robot must protect its own existence as long as such protection does not conflict with the First or Second Law.&lt;br&gt;&lt;br&gt;With these three, simple directives, Isaac Asimov changed our perception of robots forever when he formulated the laws governing their behavior.  In &lt;b&gt;I, Robot&lt;/b&gt;, Asimov chronicles the development of the robot through a series of interlinked stories: from its primitive origins in the present to its ultimate perfection in the not-so-distant future--a  future in which humanity itself may be rendered obsolete.&lt;br&gt;&lt;br&gt;Here are stories of robots gone mad, of mind-read robots, and robots with a sense of humor.  Of robot politicians, and robots who secretly run the world--all told with the dramatic blend of science fact and science fiction that has become Asmiov\'s trademark.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;i&gt;From the Hardcover edition.&lt;/i&gt;', '055338256X.jpg'),
('0553385763', 'Palimpsest', 14, 384, 'PAPERBACK', '2009-02-24', '&lt;b&gt;In the Cities of Coin and Spice&lt;/b&gt; and &lt;b&gt;In the Night Garden&lt;/b&gt; introduced readers to the unique and intoxicating imagination of Catherynne M. Valente. Now she weaves a lyrically erotic spell of a place where the grotesque and the beautiful reside and the passport to our most secret fantasies begins with a stranger&acirc;€™s kiss.&acirc;€&brvbar;&lt;b&gt;&lt;br&gt;&lt;br&gt;&lt;/b&gt;Between life and death, dreaming and waking, at the train stop beyond the end of the world is the city of Palimpsest. To get there is a miracle, a mystery, a gift, and a curse&acirc;€”a voyage permitted only to those who&acirc;€™ve always believed there&acirc;€™s another world than the one that meets the eye. Those fated to make the passage are marked forever by a map of that wondrous city tattooed on their flesh after a single orgasmic night. To this kingdom of ghost trains, lion-priests, living kanji, and cream-filled canals come four travelers: Oleg, a New York locksmith; the beekeeper November; Ludovico, a binder of rare books; and a young Japanese woman named Sei. They&acirc;€™ve each lost something important&acirc;€”a wife, a lover, a sister, a direction in life&acirc;€”and what they will find in Palimpsest is more than they could ever imagine.', '0553385763.jpg'),
('0575083573', 'Yellow Blue Tibia', 16.95, 336, 'PAPERBACK', '2009-09-01', '&lt;DIV&gt;&lt;P style=\"MARGIN: 0in 0in 0pt; mso-layout-grid-align: none\"&gt;Russia, 1946. With the Nazis recently defeated, Stalin gathers half a dozen of the top Soviet science fiction authors in a dacha in the countryside. Convinced that the defeat of America is only a few years away&acirc;€”and equally convinced that the Soviet Union needs a massive external threat to hold it together&acirc;€”Stalin orders the writers to compose a massively detailed and highly believable story about an alien race poised to invade the earth. The little group of writers gets down to the task and spends months working until new orders come from Moscow to immediately halt the project. The scientists obey and live their lives until, in the aftermath of Chernobyl, the survivors gather again, because something strange has happened: the story they invented in 1946 is starting to come true.&lt;/P&gt;&lt;/DIV&gt;', '0575083573.jpg'),
('0596101996', 'JavaScript: The Definitive Guide', 49.99, 1018, 'PAPERBACK', '2006-08-17', '&lt;DIV&gt;&lt;p&gt;This Fifth Edition is completely revised and expanded to cover JavaScript as it is used in today\'s Web 2.0 applications. This book is both an example-driven programmer\'s guide and a keep-on-your-desk reference, with new chapters that explain everything you need to know to get the most out of JavaScript, including:&lt;/p&gt;&lt;br&gt; &lt;br&gt; &lt;ul&gt; &lt;li&gt;Scripted HTTP and Ajax&lt;/li&gt; &lt;li&gt;XML processing&lt;/li&gt; &lt;li&gt;Client-side graphics using the canvas tag&lt;/li&gt; &lt;li&gt;Namespaces in JavaScript--essential when writing complex programs&lt;/li&gt; &lt;li&gt;Classes, closures, persistence, Flash, and JavaScript embedded in Java applications&lt;/li&gt; &lt;/ul&gt;&lt;br&gt; &lt;br&gt; &lt;p&gt;Part I explains the core JavaScript language in detail. If you are new to JavaScript, it will teach you the language. If you are already a JavaScript programmer, Part I will sharpen your skills and deepen your understanding of the language. &lt;/p&gt;&lt;br&gt; &lt;br&gt; &lt;p&gt;Part II explains the scripting environment provided by web browsers, with a focus on DOM scripting with unobtrusive JavaScript. The broad and deep coverage of client-side JavaScript is illustrated with many sophisticated examples that demonstrate how to:&lt;/p&gt;&lt;br&gt; &lt;br&gt; &lt;ul&gt; &lt;li&gt;Generate a table of contents for an HTML document&lt;/li&gt; &lt;li&gt;Display DHTML animations&lt;/li&gt; &lt;li&gt;Automate form validation&lt;/li&gt; &lt;li&gt;Draw dynamic pie charts&lt;/li&gt; &lt;li&gt;Make HTML elements draggable&lt;/li&gt; &lt;li&gt;Define keyboard shortcuts for web applications&lt;/li&gt; &lt;li&gt;Create Ajax-enabled tool tips&lt;/li&gt; &lt;li&gt;Use XPath and XSLT on XML documents loaded with Ajax&lt;/li&gt; &lt;li&gt;And much more&lt;/li&gt; &lt;/ul&gt;&lt;br&gt; &lt;br&gt; &lt;p&gt;Part III is a complete reference for core JavaScript. It documents every class, object, constructor, method, function, property, and constant defined by JavaScript 1.5 and ECMAScript Version 3.&lt;/p&gt;&lt;br&gt; &lt;br&gt; &lt;p&gt;Part IV is a reference for client-side JavaScript, covering legacy web browser APIs, the standard Level 2 DOM API, and emerging standards such as the XMLHttpRequest object and the canvas tag.&lt;/p&gt;&lt;br&gt; &lt;br&gt; &lt;p&gt;More than 300,000 JavaScript programmers around the world have made  this their indispensable reference book for building JavaScript applications.&lt;/p&gt;&lt;br&gt; &lt;br&gt; &lt;p&gt;&lt;i&gt;\"A must-have reference for expert JavaScript programmers...well-organized and detailed.\"&lt;/i&gt; &lt;br&gt; -- Brendan Eich, creator of JavaScript&lt;/p&gt;&lt;/div&gt;', '0596101996.jpg'),
('0596802447', 'CSS: The Missing Manual', 34.99, 558, 'PAPERBACK', '2009-09-03', '&lt;DIV&gt;Cascading Style Sheets can turn humdrum websites into highly-functional, professional-looking destinations, but many designers merely treat CSS as window-dressing to spruce up their site\'s appearance. You can tap into the real power of this tool with &lt;I&gt;CSS: The Missing Manual&lt;/I&gt;. This second edition combines crystal-clear explanations, real-world examples, and dozens of step-by-step tutorials to show you how to design sites with CSS that work consistently across browsers. Witty and entertaining, this second edition gives you up-to-the-minute pro techniques. You\'ll learn how to: &lt;ul&gt; &lt;li&gt;Create HTML that\'s simpler, uses less code, is search-engine friendly, and works well with CSS&lt;/li&gt; &lt;li&gt;Style text by changing fonts, colors, font sizes, and adding borders&lt;/li&gt; &lt;li&gt;Turn simple HTML links into complex and attractive navigation bars -- complete with rollover effects&lt;/li&gt;  &lt;li&gt;Create effective photo galleries and special effects, including drop shadows&lt;/li&gt; &lt;li&gt;Get up to speed on CSS 3 properties that work in the latest browser versions&lt;/li&gt; &lt;li&gt;Build complex layouts using CSS, including multi-column designs&lt;/li&gt;  &lt;li&gt;Style web pages for printing&lt;/li&gt; &lt;/ul&gt;&lt;p&gt; With &lt;I&gt;CSS: The Missing Manual&lt;/I&gt;, Second Edition, you\'ll find all-new online tutorial pages, expanded CSS 3 coverage, and broad support for Firebox, Safari, and other major web browsers, including Internet Explorer 8. Learn how to use CSS effectively to build new websites, or refurbish old sites that are due for an upgrade.&lt;/div&gt;', '0596802447.jpg'),
('0618610189', 'Gourmet Today: More than 1000 All-New Recipes for the Contemporary Kitchen', 40, 1024, 'HARDCOVER', '2009-09-22', '&lt;b&gt;Product Description&lt;/b&gt;&lt;br/&gt;  In no other period of our country\'s history has the food scene changed so rapidly. Exciting new ingredients are available everywhere, expanding our culinary horizons. Even casual meals have globe-trotting flavors. We want memorable dishes, and we want them to be healthy for our families and our planet. And with our busy schedules, we want them on the table faster than ever. A new culinary world calls for a new cookbook. &lt;i&gt;Gourmet Today&lt;/i&gt; responds to our changing foodscape with more vegetarian recipes, more recipes for popular dishes from every corner of the world, more recipes for stunning meals ready in 30 minutes or less, more simple ways to prepare all the vegetables in the farmers\' market, advice on choosing sustainable fish, chicken, and beef, tips on throwing an easy cocktail party, more recipes for flavorful techniques like grilling, and more recipes for the new ingredients flooding our market.&lt;p/&gt;    Each of the over 1,000 recipes was selected by editor in chief Ruth Reichl, a best-selling author in her own right, who wrote the introductions to each chapter. Every recipe has been tested and cross-tested in the &lt;i&gt;Gourmet&lt;/i&gt; test kitchen so every cook, whether a first-timer or a veteran, gets impeccable results. With menus for holidays and other seasonal occasions, an authoritative glossary of ingredients (plus mail-order sources), and hundreds of sidebars on ingredients and handy techniques from the test kitchen, &lt;i&gt;Gourmet Today&lt;/i&gt; is the indispensable book   for today\'s cook.&lt;br/&gt;  &lt;br/&gt;  &lt;hr class=\"bucketDivider\" size=\"1\" /&gt;  &lt;br/&gt;  &lt;P&gt;  &lt;B class=h1&gt;Amazon Exclusive: A Letter from Ruth Reichl&lt;/B&gt;&lt;img align=\"right\" border=\"0\" src=\"http://g-ecx.images-amazon.com/images/G/01/books/hmh-ems/RuthReichl200.jpg\"/&gt;    &lt;/p&gt;    Dear Amazon Reader,&lt;p/&gt;   These days you hear a lot of gloom and doom about the state of American food. It\'s certainly true that if you want to focus on the negative, there\'s a lot to despair about. &lt;p/&gt;  On the other hand, the opposite is also true.  I wrote my first cookbook in 1971, and when I see the difference between what was available then and the food that now fills my supermarket, it makes me want to go dancing down the aisles.  &lt;p/&gt;  Back then things were so different that my editor insisted that I call for ground beef instead of lamb in a classic Greek moussaka; she said not many grocers actually sold lamb. She also worried about the recipe for handmade pasta (too esoteric) and a simple Chinese stir-fry of chicken (what on earth was a wok). She worried when I called for freshly grated Parmesan cheese (most people still used the stuff that came in the green can), fresh garlic (frowned upon in many places) and chiles (too hot, too hot, too hot).&lt;p/&gt;  What a difference a few years make!  The American supermarket has turned into an international bazaar, offering us all the best flavors of the world. Whether you want to cook the foods of Asia, the Americas, India or Europe, the ingredients are there. And that\'s only part of the good news; the other is that the era of mindless eating is over. Good cooks everywhere are now aware of the consequences of their choices, and when they walk through the aisles, they think about sustainability.&lt;p/&gt;  It\'s a wonderful time for people who care about food.  But it requires a new kind of cookbook, one that takes advantage of the great modern marketplace. &lt;i&gt;Gourmet&lt;/i&gt;\'s twelve test cooks spent five years exploring all the new ingredients available in the supermarkets--from frozen pizza dough to Thai chili pastes and eggroll wrappers--figuring out the best ways to use them. They haunted farmers markets too, so we could offer advice on cooking everything from ramps to celery root. They spent time in fish markets, snapping up new offerings like Arctic char and tilapia. Then they cooked each dish again and again and again, taking out unnecessary steps and ensuring that each was absolutely foolproof.  The result is more than a thousand recipes that are absolutely guaranteed to work.    I couldn\'t live without this book.  I love cooking from it.  I hope you will too. &lt;p/&gt;  Best wishes,&lt;p/&gt;  &lt;i&gt;Ruth Reichl&lt;/i&gt;&lt;p/&gt;  &lt;p&gt;(Photo &Acirc;&copy; Brigitte Lacombe)&lt;/p&gt;  &lt;br/&gt;  &lt;hr class=\"bucketDivider\" size=\"1\" /&gt;  &lt;br/&gt;  &lt;p&gt;       &lt;P&gt;  &lt;B class=h1&gt;Recipe Excerpts from &lt;i&gt;Gourmet Today&lt;/i&gt;&lt;/B&gt;  &lt;/p&gt;    &lt;p&gt;        &acirc;€&cent; Raspberry Lime Rickey  &lt;br/&gt;     &acirc;€&cent; Grilled Ceasar Salad  &lt;br/&gt;      &acirc;€&cent; Grilled Cumin Chicken Breasts with Avocado Salsa  &lt;br/&gt;    &acirc;€&cent; Chocolate Chunk Oatmeal Coconut Cookies        &lt;/P&gt;     ', '0618610189.jpg'),
('061896620X', 'Never Smile at a Monkey: And 17 Other Important Things to Remember', 16, 32, 'HARDCOVER', '2009-10-19', '&lt;b&gt;Product Description&lt;/b&gt;&lt;br/&gt;  When it comes to wild animals, everyone knows that there are certain things you just don\'t do. It\'s clearly a bad idea to tease a tiger, pull a python\'s tail, or bother a black widow spider. But do you know how dangerous it can be to pet a platypus, collect a cone shell, or touch a tang fish? Some creatures have developed unusual ways of protecting themselves or catching prey, and this can make them unexpectedly hazardous to your health. In this dynamic and fascinating picture book by Steve Jenkins, you\'ll find out what you should &lt;I&gt;never&lt;/I&gt; do if you encounter one of these surprisingly dangerous animals.&lt;BR&gt;  &lt;br/&gt;  &lt;hr class=\"bucketDivider\" size=\"1\" /&gt;  &lt;br/&gt;  &lt;p align=\"left\"&gt; &lt;span class=\"h1\"&gt;&lt;strong&gt;A Look Inside &lt;i&gt;Never Smile at a Monkey&lt;/i&gt;&lt;/strong&gt;&lt;/span&gt;  &lt;br&gt;&lt;b&gt;(Click on Images to Enlarge)&lt;/b&gt;  &lt;br&gt;  &lt;/p&gt;    &lt;p&gt;&lt;p&gt;&lt;table width=\"100%\" border=\"0\" cellspacing=\"1\"  cellpadding=\"1\"&gt;    &lt;tr align=\"center\" valign=\"top\" class=\"tiny\"&gt;   &lt;td width=\"33%\"&gt;    &lt;img src=\"http://g-ecx.images-amazon.com/images/G/01/books/hmh-ems/Intro_crop250.jpg\" border=\"0\"&gt;   &lt;/td&gt;    &lt;td width=\"33%\"&gt;   &lt;img src=\"http://g-ecx.images-amazon.com/images/G/01/books/hmh-ems/Platypus250.jpg\"  border=\"0\"&gt;  &lt;/td&gt;         &lt;td width=\"33%\"&gt;   &lt;img src=\"http://g-ecx.images-amazon.com/images/G/01/books/hmh-ems/Shell250.jpg\"  border=\"0\"&gt;  &lt;/td&gt;  &lt;/tr&gt;    &lt;tr align=\"center\" valign=\"top\" class=\"tiny\"&gt;    &lt;td width=\"33%\"&gt;Harmless looking creatures&lt;/td&gt;    &lt;td width=\"33%\"&gt;Never pet a platypus&lt;/td&gt;     &lt;td width=\"33%\"&gt;Never collect a cone shell&lt;/td&gt;   &lt;/tr&gt;          &lt;/table&gt;  &lt;br/&gt;  &lt;hr class=\"bucketDivider\" size=\"1\" /&gt;  &lt;br/&gt;  ', '061896620X.jpg'),
('0670020796', 'The Vikings: A History', 32.95, 464, 'HARDCOVER', '2009-11-25', '&lt;B&gt;A fascinating history of the Viking age and its complex culture and influence&lt;/B&gt;&lt;BR&gt;&lt;BR&gt; The emergence of the Viking age at the end of the eighth century ushered in a new era in the history of Europe, one in which the paganism of the conquering tribes of Norway, Sweden, and Denmark was swept aside by the Christian values of those they defeated. With the technological genius of their longships and their vigorous spirit, the Vikings ranged widely through Europe, introducing their distinct culture along with their much-vaunted maritime prowess.&lt;BR&gt;&lt;BR&gt; In this definitive history, Robert Ferguson presents the extraordinary story of the Nordic warriors and explorers who have long held our imagination. He sets the Viking age (c. 790-1100) within the context of European history and illuminates how this era of plunder and trade ultimately enhanced the development of political and cultural ideas in both Scandinavia and post-Roman Western Europe.&lt;BR&gt;&lt;BR&gt; Drawing on the latest research, &lt;I&gt;The Vikings&lt;/I&gt; at once acknowledges the terrible violence of conquest while expanding our view of the humane depth of Nordic accomplishments in the arts, commerce, government, and far-flung exploration from Constantinople to the New World.', '0670020796.jpg'),
('0672329166', 'PHP and MySQL Web Development (4th Edition)', 54.99, 1008, 'PAPERBACK', '2008-10-11', 'PHP and MySQL are popular open-source technologies that are ideal for quickly developing database-driven Web applications. PHP is a powerful scripting language designed to enable developers to create highly featured Web applications quickly, and MySQL is a fast, reliable database that integrates well with PHP and is suited for dynamic Internet-based applications. &lt;p style=\"margin: 0px;\"&gt;&Acirc;&nbsp;&lt;/p&gt; &lt;p style=\"margin: 0px;\"&gt;&lt;i&gt;PHP and MySQL Web Development&lt;/i&gt; shows how to use these tools together to produce effective, interactive Web applications. It clearly describes the basics of the PHP language, explains how to set up and work with a MySQL database, and then shows how to use PHP to interact with the database and the server. &lt;/p&gt; &lt;p style=\"margin: 0px;\"&gt;&Acirc;&nbsp;&lt;/p&gt; &lt;p style=\"margin: 0px;\"&gt;This practical, hands-on book includes numerous examples that demonstrate common tasks such as authenticating users, constructing a shopping cart, generating PDF documents and images dynamically, sending and managing email, facilitating user discussions, connecting to Web services using XML, and developing Web 2.0 applications with Ajax-based interactivity.&lt;/p&gt; &lt;p style=\"margin: 0px;\"&gt;&Acirc;&nbsp;&lt;/p&gt; &lt;p style=\"margin: 0px;\"&gt;The fourth edition of &lt;i&gt;PHP and MySQL Web Development&lt;/i&gt; has been thoroughly updated, revised, and expanded to cover developments in PHP 5 through version 5.3, such as namespaces and closures, as well as features introduced in MySQL 5.1.&lt;/p&gt;&lt;p style=\"margin: 0px;\"&gt;&Acirc;&nbsp;&lt;/p&gt;&lt;p style=\"margin: 0px;\"&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=\"margin: 0px;\"&gt;&Acirc;&nbsp;&lt;/p&gt;', '0672329166.jpg'),
('0679764410', 'American Sphinx: The Character of Thomas Jefferson', 16, 464, 'PAPERBACK', '1998-04-07', 'At different times Thomas Jefferson has been claimed by Southern secessionists and Northern abolitionists, New Deal liberals and neoconservatives  Now historian Joseph J. Ellis restores our most elusive national icon to human dimensions with insight, sympathy, and superb style, shrewdly sifting the facts from the legends and the rumors. From the drafting of the Declaration of Independence to his retirement in Monticello, Ellis unravels the contradictions of his character, giving us the slaveholding libertarian, the enemy of government power who exercised it audaciously as president; and the visionary who remained blind to his own inconsistencies.  A marvel of scholarship and a delight to read, &lt;b&gt;American Sphinx&lt;/b&gt; is a book whose appeal transcends history buffs and biography fans and provides an essential gloss on the Jeffersonian legacy.', '0679764410.gif'),
('0684831902', 'Thelonious Monk: The Life and Times of an American Original', 30, 608, 'HARDCOVER', '2009-10-06', '&lt;b&gt;\"The piano ain\'t got no wrong notes!\"&lt;/b&gt; So ranted Thelonious Sphere Monk, who proved his point every time he sat down at the keyboard. His angular melodies and dissonant harmonies shook the jazz world to its foundations, ushering in the birth of \"bebop\" and establishing Monk as one of America\'s greatest composers. Yet throughout much of his life, his musical contribution took a backseat to tales of his reputed behavior. Writers tended to obsess over Monk\'s hats or his proclivity to dance on stage. To his fans, he was the ultimate hipster; to his detractors, he was temperamental, eccentric, taciturn, or childlike. But these labels tell us little about the man or his music.&lt;P&gt;In the first book on Thelonious Monk based on exclusive access to the Monk family papers and private recordings, as well as on a decade of prodigious research, prize-winning historian Robin D. G. Kelley brings to light a startlingly different Thelonious Monk -- witty, intelligent, generous, politically engaged, brutally honest, and a devoted father and husband. Indeed, &lt;I&gt;Thelonious Monk&lt;/i&gt; is essentially a love story. It is a story of familial love, beginning with Monk\'s enslaved ancestors from whom Thelonious inherited an appreciation for community, freedom, and black traditions of sacred and secular song. It is about a doting mother who scrubbed floors to pay for piano lessons and encouraged her son to follow his dream. It is the story of romance, from Monk\'s initial heartbreaks to his lifelong commitment to his muse, the extraordinary Nellie Monk. And it is about his unique friendship with the Baroness Nica de Koenigswarter, a scion of the famous Rothschild family whose relationship with Monk and other jazz musicians has long been the subject of speculation and rumor. Nellie, Nica, and various friends and family sustained Monk during the long periods of joblessness, bipolar episodes, incarceration, health crises, and other tragic and difficult moments.&lt;P&gt;Above all, &lt;I&gt;Thelonious Monk&lt;/i&gt; is the gripping saga of an artist\'s struggle to \"make it\" without compromising his musical vision. It is a story that, like its subject, reflects the tidal ebbs and flows of American history in the twentieth century. Elegantly written and rich with humor and pathos, &lt;I&gt;Thelonious Monk&lt;/i&gt; is the definitive work on modern jazz\'s most original composer.', '0684831902.jpg'),
('0684833395', 'Catch-22', 16, 464, 'PAPERBACK', '1996-09-04', '&lt;P&gt; &lt;I&gt;Catch-22&lt;/I&gt; is like no other novel. It is one of the funniest books ever written, a keystone work in American literature, and even added a new term to the dictionary. &lt;P&gt; At the heart of &lt;I&gt;Catch-22&lt;/I&gt; resides the incomparable, malingering bombardier, Yossarian, a hero endlessly inventive in his schemes to save his skin from the horrible chances of war. His efforts are perfectly understandable because as he furiously scrambles, thousands of people he hasn\'t even met are trying to kill him. His problem is Colonel Cathcart, who keeps raising the number of missions the men must fly to complete their service. Yet if Yossarian makes any attempts to excuse himself from the perilous missions that he is committed to flying, he is trapped by the Great Loyalty Oath Crusade, the hilariously sinister bureaucratic rule from which the book takes its title: a man is considered insane if he willingly continues to fly dangerous combat missions, but if he makes the necessary formal request to be relieved of such missions, the very act of making the request proves that he is sane and therefore ineligible to be relieved. &lt;P&gt; &lt;I&gt;Catch-22&lt;/I&gt; is a microcosm of the twentieth-century world as it might look to some one dangerously sane -- a masterpiece of our time.', '0684833395.jpg'),
('0688107826', 'The Adventures of Sherlock Holmes (Books of Wonder)', 27.99, 352, 'HARDCOVER', '1992-09-21', '&lt;P&gt;The extraordinary adventures of the world-famous detective Sherlock Holmes, as faithfully recounted by his comrade, Dr. Watson, have captivated readers of all ages for over a century. The stories\' blend of heartpounding, fast-paced action and mind-boggling deductive reasoning is as riveting today as it was when first published.&lt;/P&gt;&lt;P&gt;This deluxe illustrated edition contains Sir Arthur Conan Doyle\'s first twelve stories and includes such famous cases as \"The Red-headed League,\" in which Holmes uncovers a well-concealed, devilishly clever criminal plot; \"The Adventure of the Blue Carbuncle,\" in which Holmes must trap a jewel thief--with astonishing results; \"The Adventure of the Speckled Band,\" in which Holmes and Watson find themselves dealing with treachery, violence, and deadly snakes; and nine more equally thrilling and puzzling mysteries.&lt;/P&gt;&lt;P&gt;Magnificently illustrated with twelve powerful watercolors by award-winning artist Barry Moser, &lt;I&gt;The Adventures of Sherlock Holmes&lt;/I&gt; features the complete text of the original collection of Doyle\'s short stories and is an ideal introduction to the fascinating world of this mesmerizing detective.&lt;/P&gt;', '0688107826.jpg'),
('0691140200', 'The Mathematical Mechanic: Using Physical Reasoning to Solve Problems', 19.95, 196, 'HARDCOVER', '2009-07-26', '&lt;p&gt;Everybody knows that mathematics is indispensable to physics--imagine where we\'d be today if Einstein and Newton didn\'t have the math to back up their ideas. But how many people realize that physics can be used to produce many astonishing and strikingly elegant solutions in mathematics? Mark Levi shows how in this delightful book, treating readers to a host of entertaining problems and mind-bending puzzlers that will amuse and inspire their inner physicist.&lt;/p&gt;&lt;p&gt; Levi turns math and physics upside down, revealing how physics can simplify proofs and lead to quicker solutions and new theorems, and how physical solutions can illustrate why results are true in ways lengthy mathematical calculations never can. Did you know it\'s possible to derive the Pythagorean theorem by spinning a fish tank filled with water? Or that soap film holds the key to determining the cheapest container for a given volume? Or that the line of best fit for a data set can be found using a mechanical contraption made from a rod and springs? Levi demonstrates how to use physical intuition to solve these and other fascinating math problems. More than half the problems can be tackled by anyone with precalculus and basic geometry, while the more challenging problems require some calculus. This one-of-a-kind book explains physics and math concepts where needed, and includes an informative appendix of physical principles.&lt;/p&gt;&lt;p&gt; &lt;i&gt;The Mathematical Mechanic&lt;/i&gt; will appeal to anyone interested in the little-known connections between mathematics and physics and how both endeavors relate to the world around us.&lt;/p&gt;', '0691140200.jpg');
INSERT INTO `tblbooks` (`isbn`, `title`, `price`, `pages`, `binding`, `pubDate`, `description`, `imageFilename`) VALUES
('0696225654', 'Better Homes and Gardens New Cook Book (Better Homes &amp; Gardens Plaid)', 19.95, 656, 'PAPERBACK', '2006-09-19', '&lt;ul&gt;      &lt;li&gt;Completely revised and updated with a fresh new design.      &lt;li&gt;More than 1,400 recipes&acirc;€”tested and perfected in the Better Homes and Gardens Test Kitchen--including 400+ quick and easy ones.      &lt;li&gt;All-new 20-Minute chapter, which includes more than 45 fast meal solutions.      &lt;li&gt;More recipes on your favorite topics: Cookies, Desserts, Grilling and Slow Cooker. Plus, the Grilling chapter now features recipes for the turkey fryer and more recipes for the smoke cooker.      &lt;li&gt;At-a-glance icons identify Easy, Fast, Low-Fat, Fat-Free, Whole Grain, Vegetarian, and Favorite recipes.      &lt;li&gt;Simple menu ideas featured in every main-dish chapter.      &lt;li&gt;Updated Cooking Basics chapter includes need-to-know kitchen survival advice including food safety, make-ahead cooking, must-have timesaving kitchen gadgets and emergency substitution charts.      &lt;li&gt;Essential need-to-know information now conveniently located at the front of each chapter for easy reference helps ensure cooking success.      &lt;li&gt;More than 800 full-color photos of finished dishes, how-to demonstrations and food IDs.      &lt;li&gt;Hundreds of hints and tips, plus easy-to-read cooking charts.      &lt;li&gt;&lt;b&gt;Bonus Material:&lt;/b&gt; Exclusive to cookbook buyers, an online menu component offers hundreds of menu ideas and more than 75 bonus recipes.      &lt;/ul&gt;', '0696225654.jpg'),
('0740748475', 'The Complete Calvin and Hobbes (Calvin &amp; Hobbes) (v. 1, 2, 3)', 150, 1440, 'HARDCOVER', '2005-10-04', '&lt;I&gt;New York Times&lt;/i&gt; best-seller!&lt;P&gt;Watterson\'s imaginative approach to his material and his inventive graphics have made &lt;I&gt;Calvin and Hobbes&lt;/i&gt; one of the few universally admired by other cartoonists.\" --Charles Solomon, &lt;I&gt;Los Angeles Times Book Review&lt;/i&gt;&lt;P&gt;&lt;I&gt;Calvin and Hobbes&lt;/i&gt; is unquestionably one of the most popular comic strips of all time. The imaginative world of a boy and his real-only-to-him tiger was first syndicated in 1985 and appeared in more than 2,400 newspapers when Bill Watterson retired on January 1, 1996. The entire body of &lt;I&gt;Calvin and Hobbes&lt;/i&gt; cartoons published in a truly noteworthy tribute to this singular cartoon in &lt;I&gt;The Complete Calvin and Hobbes&lt;/i&gt;. Composed of three hardcover, four-color volumes in a sturdy slipcase, this edition includes all &lt;I&gt;Calvin and Hobbes&lt;/i&gt; cartoons that ever appeared in syndication. This is the treasure that all &lt;I&gt;Calvin and Hobbes&lt;/i&gt; fans seek.', '0740748475.jpg'),
('0740785486', 'Celebrating Peanuts: 60 Years', 75, 544, 'HARDCOVER', '2009-11-15', 'Sixty years of &lt;I&gt;Peanuts&lt;/i&gt;, generations of fans, a gang of beloved characters, but only one creator: the legend, Charles M. Schulz.&lt;P&gt;Andrews McMeel is proud to showcase the exclusive &lt;I&gt;Celebrating Peanuts: 60 Years&lt;/i&gt;. It is packed with commentary from throughout Schulz\'s career, making this book not only a heartwarming tribute but also a true collector\'s item.&lt;P&gt;This special 60th anniversary tribute is arranged decade, to spotlight the highlights and development of this world favorite classic.', '0740785486.jpg'),
('075952968X', 'Maximum Ride: The Manga, Vol. 2', 10.99, 256, 'PAPERBACK', '2009-10-27', 'Having recovered Angel, Max and the flock head to New York City to pursue a lead regarding their true identities. But where the flock goes, erasers are sure to follow! Even more troubling, though, is the voice that\'s begun whispering in Max\'s head. Is it really her destiny to save the world?', '075952968X.jpg'),
('0760335052', 'Green Bay Packers: The Complete Illustrated History', 30, 208, 'HARDCOVER', '2008-06-15', '  Fully updated with a 2007 season recap and a tribute to the legendary career of Brett Favre.&lt;P&gt;Green Bay Packers: The Complete Illustrated History is a lavishly illustrated treatment of this iconic sports team. It includes more than 200 photographs, as well as chalkboard diagrams of the key moments and plays from the team\'s history. With detailed profiles and stats, the volume explores the players and teams that have defined the Packer legacy over more than eight decades.&lt;P&gt;This fully updated edition highlights the on-the-field triumphs of the division-championship season of 2007, chroncles the dramatic postseason victories and heartbreaking defeat, and features a special tribute to the career of the legendary Brett Favre--from his debut season in 1992 to his tearful retirement announcement in March of 2008. &lt;P&gt;It is a book that no Packer fan will want to be without.', '0760335052.jpg'),
('0761131841', 'What to Expect the First Year, Second Edition', 26.95, 704, 'HARDCOVER', '2003-11-01', 'America\'s bestselling guide to caring for a baby is now better than ever: announcing a two-years-in-the-making, cover-to-cover, line-by-line revision and update of the 6.9-million-copy &lt;i&gt;What to Expect the First Year&lt;/i&gt;, the bible for taking care of a newborn through the milestone of his or her first birthday&lt;br&gt;&lt;br&gt;The Second Edition incorporates the most recent developments in pediatric medicine. Every question and answer have been revisited, and in response to letters from readers, dozens of new Q&amp;As have been added. The book is more reader-friendly than ever, with updated cultural references, and the new material brings more in-depth coverage to issues such as newborn screening, home births and the resulting at-home newborn care, vitamins and vaccines, milk allergies, causes of colic, sleep problems, SIDS, returning to work, dealing with siblings, weaning, sippy cups, the expanded role of the father, and much more. An updated cover and all-new black-and-white line illustrations complement the fresher book with a fresher look.', '0761131841.jpg'),
('0763634409', 'Let\'s Do Nothing!', 16.99, 40, 'HARDCOVER', '2009-05-12', '&lt;b&gt;Don&acirc;€™t move! A master of animation explores the elusive art of doing nothing in this comical tale of two very active imaginations.&lt;/b&gt;&lt;br&gt;&lt;br&gt;Frankie and Sal have already played every sport and board game invented, baked and eaten batches of cookies, and painted a zillion pictures. What&acirc;€™s left to do? Nothing! Ten seconds of nothing! Can they do it? Can they act like stone statues in the park? Can they simply hold their breath and not blink an eye? With a wink to the reader and a command of visual humor, feature film animator Tony Fucile demonstrates the Zen-like art of doing nothing...oops! Couldn&acirc;€™t do it!', '0763634409.jpg'),
('0763644900', 'The Ask and the Answer: Chaos Walking: Book Two', 18.99, 528, 'HARDCOVER', '2009-09-08', '&lt;b&gt;Part two of the literary sci-fi thriller follows a boy and a girl who are caught in a warring town where thoughts can be heard &acirc;€” and secrets are never safe.&lt;/b&gt;&lt;br&gt;&lt;br&gt;Reaching the end of their tense and desperate flight in THE KNIFE OF NEVER LETTING GO, Todd and Viola did not find healing and hope in Haven. They found instead their worst enemy, Mayor Prentiss, waiting to welcome them to New Prentisstown. There they are forced into separate lives: Todd to prison, and Viola to a house of healing where her wounds are treated. Soon Viola is swept into the ruthless activities of the Answer, aimed at overthrowing the tyrannical government. Todd, meanwhile, faces impossible choices when forced to join the mayor&acirc;€™s oppressive new regime. In alternating narratives &acirc;€” Todd&acirc;€™s gritty and volatile; Viola&acirc;€™s calmer but equally stubborn &acirc;€” the two struggle to reconcile their own dubious actions with their deepest beliefs. Torn by confusion and compromise, suspicion and betrayal, can their trust in each other possibly survive?', '0763644900.jpg'),
('0764161512', '1001 Movies You Must See Before You Die: 5th Anniversary Edition', 35, 960, 'HARDCOVER', '2008-10-01', 'This special &lt;i&gt; Fifth Anniversary Edition &lt;/i&gt; of the acclaimed film reference guide is packed with virtually everything movie lovers need to know about the films they simply must see. Stephen Jay Schneider and his team of writers have brought the book up to date by including the most memorable movies released during the past five years. Among their new additions are &lt;i&gt; The Queen, The Lives of Others, Brokeback Mountain, &lt;/i&gt; and several more recent movies that have attracted worldwide attention. Covering more than a century of filmmaking and dating back to silent-era sensations such as Edwin S. Porter&acirc;€™s  &lt;i&gt; The Great Train Robbery &lt;/i&gt;  and Chaplin&acirc;€™s &lt;i&gt; The Gold Rush, &lt;/i&gt; this book describes musicals, dramas, screwball comedies, experimental &acirc;€œNew Wave&acirc;€ films from 1950s and &acirc;€™60s Italy and France, major films noir, classic westerns, action and adventure films, and even memorable documentaries. It lists each film&acirc;€™s director and cast, presents a plot summary and production notes, and cites interesting, often little-known facts relating to the film&acirc;€™s cast, storyline, and production. For students of cinema, discerning film buffs, DVD collectors, and readers who enjoy thumbing through and reminiscing over cherished screen moments, &lt;i&gt; 1001 Movies You Must See Before You Die &lt;/i&gt;  is the place to start reading. Filled with 800 movie still shots and actors&acirc;€™ photos. &lt;BR&gt; &lt;BR&gt;', '0764161512.jpg'),
('0765320045', 'Hidden Empire', 24.99, 336, 'HARDCOVER', '2009-12-22', '&lt;DIV&gt;&lt;DIV&gt;&lt;P&gt;The war of words between right and left collapsed into a shooting war, and raged between the high-technology weapons on each side, devastating cities and overrunning the countryside. &lt;BR&gt;&lt;BR&gt;At the close of &lt;I&gt;Empire&lt;/I&gt;, political scientist and government adviser Averell Torrent had maneuvered himself into the presidency of the United States.&Acirc;&nbsp; And now that he has complete power at home, he plans to expand American imperial power around the world.&lt;BR&gt;&lt;BR&gt;Opportunity comes quickly.&Acirc;&nbsp; There&acirc;€™s a deadly new plague in Africa, and it is devastating the countryside and cities.&Acirc;&nbsp; President Torrent declares American solidarity with the victims, but places all of Africa in quarantine until a vaccine is found or the disease burns itself out.&Acirc;&nbsp; And he sends Captain Bartholomew Coleman, Cole to his friends, to run the relief operations and protect the American scientists working on identifying the virus.&Acirc;&nbsp; If Cole and his team can avoid dying of the plague, or being cut down by the weapons of fearful African nations, they might do some good.&Acirc;&nbsp; Or they might be out of the way for good.&lt;/P&gt;&lt;/DIV&gt;&lt;/DIV&gt;', '0765320045.jpg'),
('0767903692', 'The Heart of the Buddha\'s Teaching', 14.95, 304, 'PAPERBACK', '1999-06-08', 'In &lt;b&gt;The Heart of the Buddha\'s Teaching&lt;/b&gt;, Thich Nhat Hanh introduces us to the core teachings of Buddhism and shows us that the Buddha\'s teachings are accessible and applicable to our daily lives. With poetry and clarity, Nhat Hanh imparts comforting wisdom about the nature of suffering and its role in creating compassion, love, and joy--all qualities of enlightenment. Covering such significant teachings as the Four Noble Truths, the Noble Eightfold Path, the Three Doors of Liberation, the Three Dharma Seals, and the Seven Factors of Awakening, &lt;b&gt;The Heart of the Buddha\'s Teaching&lt;/b&gt; is a radiant beacon on Buddhist thought for the initiated and uninitiated alike.', '0767903692.jpg'),
('0785138064', 'The Death of Captain America Omnibus', 64.99, 464, 'HARDCOVER', '2009-12-23', 'Leaping from the final pages of Civil War, this is the story that stunned readers, sent shockwaves through the entire Marvel Universe, and made news headlines worldwide! And the death of Captain America is only the beginning!  In the aftermath of the fabled hero\'s assassination, Agent 13, Bucky Barnes, the Falcon, Black Widow, and Iron Man come together again in a desperate attempt to keep his dream alive. But the collapse of Steve Rogers\' dream was merely the first step in the wicked machinations of the Red Skull, who is determined to see the death of America follow soon after the death of the Captain. As the Skull\'s master plan kicks into motion, and chaos begins to take hold of the United States, only one man stands in its way - but is he up to the task? Freed from the psychosis that transformed him into the relentless mercenary known as the Winter Soldier, Bucky Barnes is called on to live up to the dream in ways he never imagined. Eisner Award-winning writer Ed Brubaker refuses to let up on the action, suspense, and human drama in a tale that ties together all eras of the star-spangled warrior\'s history! Collects Captain America #25-42.', '0785138064.jpg'),
('0787988316', 'The Big Book of Parenting Solutions: 101 Answers to Your Everyday Challenges and Wildest Worries (Child Development)', 19.95, 736, 'PAPERBACK', '2009-09-08', '&lt;I&gt;Today&lt;/I&gt; show\'s Michele Borba\'s cures for difficult childhood  behaviors In this down-to-earth guide, parenting expert Michele Borba offers advice for  dealing with children\'s difficult behavior and hot button issues including  biting, temper tantrums, cheating, bad friends, inappropriate clothing, sex,  drugs, peer pressure, and much more. Written for parents of kids age 3-13, this  book offers easy-to-implement advice for the most important challenges parents  face with kids from toddlers to tweens. &lt;UL&gt; &lt;LI&gt;Includes immediate solutions to the most common childhood problems and  challenges &lt;LI&gt;Written by &lt;I&gt;Today Show\'s&lt;/I&gt; resident parenting expert Michele Borba &lt;LI&gt;Offers clear step-by-step guidance for solving difficult childhood behaviors  and family conflicts &lt;LI&gt;Contains a wealth of advice that is easy-to-follow and gets quick results &lt;LI&gt;Author has written outstanding parenting books including &lt;I&gt;Building Moral  Intelligence, No More Misbehavin\', Don\'t Give Me that Attitude&lt;/I&gt;, and  more&lt;/LI&gt;&lt;/UL&gt; &lt;P&gt;Each of the 101 issues includes clear questions, specific step-by-step  solutions, and advice that is age appropriate. &lt;/P&gt;', '0787988316.jpg'),
('0792253140', 'National Geographic Field Guide to the Birds of North America, Fifth Edition', 24, 504, 'PAPERBACK', '2006-11-07', 'Birding is the fastest growing wildlife-related activity in the U.S., and even conservative estimates put the current number of U.S. birders at 50 million. According to the &lt;i&gt;New York Times,&lt;/i&gt; some authorities predict that by 2050 there will be more than 100 million&acirc;€”and the &lt;i&gt;National Geographic Field Guide to the Birds of North America&lt;/i&gt; will be the essential reference for field identification and the cornerstone of any birder\'s library. This is the ultimate, indispensable bird field guide&acirc;€”comprehensive, authoritative, portable, sturdy, and easier than ever to use. &lt;br&gt;&lt;br&gt;Among the the new edition\'s key elements and practical improvements: Every North American species&acirc;€”more than 960, including a new section on accidental birds&acirc;€”classified according to the latest official American Ornithologists\' Union checklist 4,000 full-color illustrations by the foremost bird artists at work todayand newly updated range maps that draw on the latest data New durable cover for added protection against adverse weather, plus informative quick-reference flaps that double as placemarkers  New reader-friendly features like thumbtabs that make locating key sections faster and easier, and a quick-find index to direct users straight to the information they need.', '0792253140.jpg'),
('0803733399', 'Ladybug Girl and Bumblebee Boy', 16.99, 40, 'HARDCOVER', '2009-03-05', 'At the playground, Lulu asks her friend Sam if he wants to play with her. Sam likes Diggers, while Lulu thinks Monkeys is the best game. Sam suggests playing under the castle, but Lulu knows that the top is the most fun. They just can&Atilde;‚&acirc;€™t agree! And then Lulu asks, &Atilde;‚&acirc;€œHave you ever played Ladybug Girl?&Atilde;‚&acirc;€&lt;p&gt; As Ladybug Girl and Bumblebee Boy, Lulu and Sam save the playground from hairy monsters and big mean robots, and have their very own parade on the bouncy dinosaurs. They figure out that when they work together, they can create fun games that they both like to play.', '0803733399.jpg'),
('0805082360', 'Fordlandia: The Rise and Fall of Henry Ford\'s Forgotten Jungle City', 27.5, 432, 'HARDCOVER', '2009-06-09', '&lt;P&gt;&lt;B&gt;The stunning, never before told story of the quixotic attempt to recreate small-town America in the heart of the Amazon&lt;/B&gt;&lt;/P&gt;&lt;P&gt;In 1927, Henry Ford, the richest man in the world, bought a tract of land twice the size of Delaware in the Brazilian Amazon. His intention was to grow rubber, but the project rapidly evolved into a more ambitious bid to export America itself, along with its golf courses, ice-cream shops, bandstands, indoor plumbing, and Model Ts rolling down broad streets. &lt;/P&gt;&lt;P&gt;Fordlandia, as the settlement was called, quickly became the site of an epic clash. On one side was the car magnate, lean, austere, the man who reduced industrial production to its simplest motions; on the other, the Amazon, lush, extravagant, the most complex ecological system on the planet. Ford&acirc;€™s early success in imposing time clocks and square dances on the jungle soon collapsed, as indigenous workers, rejecting his midwestern Puritanism, turned the place into a ribald tropical boomtown. Fordlandia&acirc;€™s eventual demise as a rubber plantation foreshadowed the practices that today are laying waste to the rain forest. &lt;/P&gt;&lt;P&gt;More than a parable of one man&acirc;€™s arrogant attempt to force his will on the natural world, &lt;I&gt;Fordlandia&lt;/I&gt; depicts a desperate quest to salvage the bygone America that the Ford factory system did much to dispatch. As Greg Grandin shows in this gripping and mordantly observed history, Ford&acirc;€™s great delusion was not that the Amazon could be tamed but that the forces of capitalism, once released, might yet be contained. &lt;/P&gt;                             &lt;DIV&gt;&lt;P&gt;&lt;B&gt;Greg Grandin&lt;/B&gt; is the author of &lt;I&gt;Empire&acirc;€™s Workshop&lt;/I&gt;, &lt;I&gt;The Last Colonial Massacre&lt;/I&gt;, and the award-winning &lt;I&gt;The Blood of Guatemala&lt;/I&gt;. An associate professor of Latin American history at New York University, and a Guggenheim fellow, Grandin has served on the United Nations Truth Commission investigating the Guatemalan Civil War and has written for the &lt;I&gt;Los Angeles Times&lt;/I&gt;, &lt;I&gt;The Nation&lt;/I&gt;, &lt;I&gt;The New Statesman&lt;/I&gt;, and &lt;I&gt;The New York Times&lt;/I&gt;. &lt;/P&gt;&lt;/DIV&gt;                                  &lt;DIV&gt;&lt;DIV&gt;&lt;P&gt;&lt;B&gt;A National Book Award Finalist&lt;/B&gt;&lt;BR&gt;&lt;BR&gt;In 1927, Henry Ford, the richest man in the world, bought a tract of land twice the size of Delaware in the Brazilian Amazon. His intention was to grow rubber, but the project rapidly evolved into a more ambitious bid to export America itself, along with its golf courses, ice-cream shops, bandstands, indoor plumbing, and Model Ts rolling down broad streets. &lt;BR&gt;&lt;BR&gt;Fordlandia, as the settlement was called, quickly became the site of an epic clash. On one side was the car magnate, lean, austere, the man who reduced industrial production to its simplest motions; on the other, the Amazon, lush, extravagant, the most complex ecological system on the planet. Ford&acirc;€™s early success in imposing time clocks and square dances on the jungle soon collapsed, as indigenous workers, rejecting his midwestern Puritanism, turned the place into a ribald tropical boomtown. Fordlandia&acirc;€™s eventual demise as a rubber plantation foreshadowed the practices that today are laying waste to the rain forest. &lt;BR&gt;&lt;BR&gt;More than a parable of one man&acirc;€™s arrogant attempt to force his will on the natural world, &lt;I&gt;Fordlandia&lt;/I&gt; depicts a quixotic mission to recreate the small-town America that the Ford factory system did much to dispatch. As Greg Grandin shows in this mordantly observed history, Ford&acirc;€™s great delusion was not that the Amazon could be tamed but that the forces of capitalism, once released, might yet be contained. &lt;/P&gt;&lt;/DIV&gt;&lt;/DIV&gt;                                                                  &lt;DIV&gt;&lt;DIV&gt;&acirc;€œMagic happens when a gifted historian and master storyteller finds a treasure trove of untapped materials to exploit. And Greg Grandin&acirc;€™s book on Fordlandia is simply magical. Here is the truly epic tale of American adventurers dispatched by Henry Ford in 1928 to conquer and civilize the Amazon by constructing an industrial/agricultural utopia the size of Tennessee. Among the dozens of reasons I will be recommending &lt;I&gt;Fordlandia&lt;/I&gt; to friends, family, colleagues, and students is the scale and pace of the narrative, the remarkable cast of characters, the brilliantly detailed descriptions of the Brazilian jungle, and what may be the best portrait we have of Henry Ford in his final years as he struggles to recapture control of the mighty forces he has unleashed.&acirc;€&lt;B&gt;&acirc;€”David Nasaw, the Arthur M. Schlesinger, Jr. Professor of History at the CUNY Graduate Center and author of &lt;I&gt;Andrew Carnegie&lt;/I&gt;&lt;/B&gt;&lt;/DIV&gt;&lt;/DIV&gt;                                                                         &lt;DIV&gt;&lt;DIV&gt;&lt;DIV&gt;&lt;DIV&gt;&lt;P&gt;\"Henry Ford dreamed big as a matter of course, and in 1928 he decided to find and develop the ideal location to revive commercial-level rubber production in the depths of the Amazon rain forest. Greg Grandin tells the fascinating tale of Ford\'s campaign to transplant modern industrial methods that had succeeded for him in Detroit to the site he had selected along the Tapaj&Atilde;&sup3;s River, a branch of the Amazon. Brazil, of course, welcomed its illustrious benefactor with open arms (and, in many cases, open palms). But financial largesse and benevolent attitudes can mask less selfless motives in a donor\'s agenda. After all, latex was the sole component for his industry that Ford didn\'t control, and he had plans for changing that with his Brazilian venture. As part of his jungle dream, Ford also planned to build a town, Fordlandia, that would showcase all the virtues of the American 19th century small-town life of his youth. Imagining Brazilian plantation workers thriving under his personal ideal of high wages and healthy, moral living, he \'built Cape Cod-style shingled houses for his Brazilian workers and urged them to tend flower and vegetable gardens, and eat whole wheat bread and unpolished rice.\' Ballroom dancing and golf were leisure activities that he promoted. Nobody had the temerity to ask, \'In the middle of the Amazon rain forest? Are you deranged?\' Even if people had challenged him, Ford was so fixated on his idea that he probably would have ignored them. The Amazon (or, rather, his idea of the Amazon) represented a fresh start in an environment he considered uncorrupted by all that he saw blighting the American commercial landscape (like unions). Ford believed his will, capital and expertise could mold the world and was either ignorant of, or dismissed, \'the emotions of nationalism and deaf to the grievances of history.\' For starters, humidity, rainfall, dense forest and bugs proved to be severe challenges for managers used to less extreme conditions in the American Upper Midwest. Fretting endlessly over finding a factory whistle that would not rust in the jungle, they remained dangerously clueless about the culture they had invaded. As one local priest astutely observed, the Ford men \'never really figured out what country they were in.\' The inevitable came in December 1930, when a manager changed the way food was served to workers: he may have considered the change trivial, but the workers rioted and reduced Fordlandia to rubble. Today the site of Ford\'s dream town is a ghost city, decayed and overgrown, along the still-wild Tapaj&Atilde;&sup3;s.\"&acirc;€”&lt;B&gt;John McFarland, &lt;I&gt;Shelf Awareness&lt;/I&gt;&lt;/B&gt;&Acirc;&nbsp;&Acirc;&nbsp;&lt;BR&gt;&lt;BR&gt;&acirc;€œMagic happens when a gifted historian and master storyteller finds a treasure trove of untapped materials to exploit. And Greg Grandin&acirc;€™s book on Fordlandia is simply magical. Here is the truly epic tale of American adventurers dispatched by Henry Ford in 1928 to conquer and civilize the Amazon by constructing an industrial/agricultural utopia the size of Tennessee. Among the dozens of reasons I will be recommending &lt;I&gt;Fordlandia&lt;/I&gt; to friends, family, colleagues, and students is the scale and pace of the narrative, the remarkable cast of chara', '0805082360.jpg'),
('0807408832', 'The Torah: A Modern Commentary, Revised Edition', 60, 1604, 'HARDCOVER', '2005-02-28', 'Nearly twenty-five years after the groundbreaking publication of the first-ever English language liberal Torah commentary, we present The Torah: A Modern Commentary, Revised Edition. This volume features updated commentary and translations, including a gender-sensitive version of the JPS translation, with largely gender-neutral God language and a completely fresh translation of Genesis and of the haftarot by the late Rabbi Chaim Stern. In addition, the volume is reorganized by parashah and includes a helpful index and aliyot markers, improving upon the 1981 original.  As Rabbi David Ellenson, President of the Hebrew Union College-Jewish Institute of Religion, states, \"This book provide a dazzling compendium of sources both classical and modern, and a variety of voices that will enhance worship and study of everyone.\"', '0807408832.jpg'),
('0810983362', 'Vermeer: The Complete Paintings (The Classical Art Series)', 125, 208, 'HARDCOVER', '2008-11-01', '&lt;DIV&gt;&lt;P style=\"MARGIN: 0in -1.5in 0pt 0in; LINE-HEIGHT: 12pt; mso-pagination: none; tab-stops: 9.7pt; mso-layout-grid-align: none\"&gt;Since his rediscovery in the later half of the 19th century, Johannes Vermeer (1632&acirc;€“1675) has been one of the most admired and influential European painters. His extremely private life, his supposed use of a camera obscura, and the fact that his teacher remains unidentified have, until recently, encouraged a view of the &acirc;€œSphinx of Delft&acirc;€ as an isolated genius shrouded in an air of mystery. Walter Liedtke&acirc;€™s new monograph reveals Vermeer&acirc;€™s life to be well-documented and places his work in the context of the Delft school and of Delft society as a whole. Vermeer&acirc;€™s many admirers will relish Liedtke&acirc;€™s exploration of subtleties of meaning and refinements of technique and style. Alongside the most historical approach to Vermeer to date, the annotated color catalogue of Vermeer&acirc;€™s complete paintings reveals a master whose rare sensibility may be described but not explained.&lt;/P&gt;&lt;/DIV&gt;', '0810983362.jpg'),
('0811866556', 'Little Oink', 14.99, 36, 'HARDCOVER', '2009-04-01', 'From the creators of &lt;em&gt;Little Pea&lt;/em&gt; and &lt;em&gt;Little Hoot&lt;/em&gt; comes this tidy tale of a decidedly different pig. Little Oink is a neat little fellow. Clean clean clean that\'s all he wants to do. But Mama and Papa won\'t have it! They say in order to be a proper pig he has to learn to make a proper mess. \"Don\'t come out until your room is a pigsty \" says Papa Pig. \"I won\'t have any child of mine going out looking so neat and clean. It\'s just not acceptable \" says Mama Pig. Readers who hate to clean up will love this humorous twist on a universal dilemma.    ', '0811866556.jpg'),
('0821219103', 'Ansel Adams: Our National Parks', 21.99, 128, 'PAPERBACK', '1992-05-21', 'In the century since the establishment of the world\'s first national park at Yellowstone, no individual has been a more ardent champion of the \"national park idea\" than Ansel Adams. Over a span of six decades, beginning in 1916, Adams photographed America\'s great national parks, making thousands of pictures, some of them among the most memorable images of the natural scene ever created.       &lt;P&gt;In this book, a selection of Adams\' legendary photographs of over forty national parks and monuments is presented, along with a sampling of his impassioned letters, speeches, and writings (all long out of print of never before published) about the critical issues facing the park system. These insightful, and sometimes controversial, writings by one of the great environmental thinkers of the twentieth century are as relevant today as when they were written. Top-quality reproduction in a reasonably priced paperback add to the appeal of this fascinating presentation of one of the most important themes in Ansel Adams\' life and work.', '0821219103.jpg'),
('0842348921', 'Life Application Study Bible NIV', 39.99, 2528, 'HARDCOVER', '1997-06-16', 'The NIV edition of today\'s #1selling study Bible has been updated and expanded. Over 300 new Life Application notes, nearly 350 note revisions, 16 new personality profiles, updated charts, and a Christian Worker\'s Resource have been added. The &lt;I&gt;Life Application Study Bible&lt;/I&gt; not only explains difficult passages and provides valuable background on Bible life and times but also shows how God\'s Word speaks to every circumstance and situation of life. &lt;P&gt;&lt;B&gt;Features:&lt;/B&gt; &lt;BR&gt;&lt;UL&gt;&lt;LI&gt;Over 300 new Life Application notes and significant revisions to nearly 350 others. &lt;LI&gt;16 new Personality Profiles. &lt;LI&gt;Most charts revised to clarify meaning and importance, plus eight allnew charts. &lt;LI&gt;New information on the intertestamental period. &lt;LI&gt;Christian Worker\'s Resourcea special supplement to enhance the reader\'s ministry  effectiveness.&lt;/UL&gt;', '0842348921.jpg'),
('0877798087', 'Merriam-Webster\'s Collegiate Dictionary, 11th Edition (Red Kivar Binding with Jacket)', 23.95, 1664, 'HARDCOVER', '0000-00-00', 'This hardcover version of Merriam-Webster\'s Collegiate Dictionary, Eleventh Edition, is jacketed, has a navy kivar binding, and is plain-edged (no thumb indexing).  For this new edition, America\'s largest staff of lexicographers made more than 100,000 changes and added more than 10,000 new words and senses, such as \'convergence\', \'Frankenfood\', \'phat\', \'psyops, and \'vermiculture\'.  The Eleventh Edition also features over 40,000 usage examples - more than ever before - which clarify confused or disputed terms.  Additionally, thousands of phrases and idioms help distinguish vocabulary for language learners.  Special sections include A Handbook of Style, An Essay on the English Language, and Signs and Symbols.  Over 55 million copies of Merriam-Webster\'s Collegiate Dictionary have been sold, spanning a time period of over 100 years.', '0877798087.jpg'),
('0880800143', 'The Real George Washington (American Classic Series)', 24.95, 928, 'PAPERBACK', '1991-12-01', '&lt;P&gt;&lt;b&gt;The Real George Washington: The True Story of America s Most Indispensable Man&lt;/b&gt;&lt;/p&gt;&lt;P&gt; There is properly no history; only biography, wrote Ralph Waldo Emerson. If that is true of the general run of mankind, it is particularly true of George Washington. The story of his life is the story of the founding of America. His was the dominant personality in three of the most critical events in that founding: the Revolutionary War, the Constitutional Convention, and the first national administration. Had he not served as America s leader in those three events, all three would likely have failed. And America as we know it today would not exist.&lt;/p&gt;&lt;P&gt;Why, after two centuries, does George Washington remain one of the most beloved figures in our history? &lt;i&gt;The Real George Washington&lt;/i&gt; answers that question by giving us a close look at this man who became the father of our country and the first American President. But rather than focus on the interpretations of historians, the books tells much of his exciting story in his own words. The second part of this 928-page book brings together the most important and insightful passages from Washington s writings, conveniently arranged by subject. Published by National Center for Constitutional Studies, a non-profit organization.&lt;/p&gt;&lt;P&gt;&lt;b&gt;Learn for yourself why GLENN BECK, award-winning radio and Cable TV host has been encouraging people to read &lt;i&gt;The Real George Washington &lt;/i&gt;!&lt;/b&gt;&lt;/p&gt;', '0880800143.jpg'),
('0881928712', 'The American Meadow Garden: Creating a Natural Alternative to the Traditional Lawn', 34.95, 280, 'HARDCOVER', '2009-11-21', '&lt;p&gt;If there\'s one lesson every homeowner must learn, it\'s this: The traditional lawn is a huge, time consuming, synthetic-chemical sucking mistake. The time has come to look for new ways to create friendly, livable spaces around our homes. In &lt;i&gt;The American Meadow Garden&lt;/i&gt;, ornamental grass expert John Greenlee creates a new model for homeowners and gardeners. &lt;/p&gt;    &lt;p&gt;For Greenlee, a meadow isn\'t a random assortment of messy, anonymous grasses. Rather, it is a shimmering mini-ecosystem, in which regionally appropriate grasses combine with colorful perennials to form a rich tapestry that is friendly to all life -- with minimal input of water, time, and other scarce resources. Kids and pets can play in complete safety, and birds and butterflies flock there. A prairie style planting is a place you &lt;i&gt;want&lt;/i&gt; to be. &lt;br&gt;&lt;/p&gt;&lt;p&gt;With decades of experience as a nurseryman and designer, John Greenlee is the perfect guide. He details all the practicalities of site preparation, plant selection, and maintenance; particularly valuable are his explanations of how ornamental grasses perform in different climates and areas. Gorgeous photography by Saxon Holt visually illustrates the message with stunning examples of meadow gardens from across the country. &lt;/p&gt;    &lt;p&gt;We\'ve reached a stage where we can no longer follow past practices unthinkingly, particularly when those practices are wasteful and harmful to the environment. It\'s time to get rid of the old-fashioned lawn and embrace a sane and healthy future: the American meadow garden. &lt;/p&gt;', '0881928712.jpg'),
('0975876996', 'Where Have You Gone \'82 Brewers?', 19.95, 176, 'HARDCOVER', '2007-08-01', 'The 1982 Milwaukee Brewers, affectionately dubbed Harvey s Wallbangers after legendary manager Harvey Kuenn, carved a permanent niche in the hearts of Milwaukee Brewers fans with their captivating march to the 1982 World Series. Led by future Hall-of-Famers Robin Yount, Paul Molitor and Rollie Fingers, this close-knit, blue-collar team captured the very essence of the city, a major reason why those players remain so popular 25 years after that glorious summer. Where are the 82 Brewers today? Many remain in baseball but others found different paths to take in retirement. Their stories are as varied as their personalities and the unique roles they served on that championship club. In the first-ever compilation of interviews with each player on the roster, we learn what moments remain vivid from that season, and how the experience affected their lives for years to come. Told in their own words, Where Have You Gone, 82 Brewers? recalls many of the anecdotes and memories from the 82 season that have never before been printed. Some, no doubt, have been embellished over time. But isn t that the fun of it?', '0975876996.jpg'),
('1400064996', 'A. Lincoln: A Biography', 35, 816, 'HARDCOVER', '2009-01-13', 'Everyone wants to define the man who signed his name &acirc;€œA. Lincoln.&acirc;€ In his lifetime and ever since, friend and foe have taken it upon themselves to characterize Lincoln according to their own label or libel. In this magnificent book, Ronald C. White, Jr., offers a fresh and compelling definition of Lincoln as a man of integrity&acirc;€“what today&acirc;€™s commentators would call &acirc;€œauthenticity&acirc;€&acirc;€“whose moral compass holds the key to understanding his life.&lt;br&gt;&lt;br&gt;Through meticulous research of the newly completed Lincoln Legal Papers, as well as of recently discovered letters and photographs, White provides a portrait of Lincoln&acirc;€™s personal, political, and moral evolution. White shows us Lincoln as a man who would leave a trail of thoughts in his wake, jotting ideas on scraps of paper and filing them in his top hat or the bottom drawer of his desk; a country lawyer who asked questions in order to figure out his own thinking on an issue, as much as to argue the case; a hands-on commander in chief who, as soldiers and sailors watched in amazement, commandeered a boat and ordered an attack on Confederate shore batteries at the tip of the Virginia peninsula; a man who struggled with the immorality of slavery and as president acted publicly and privately to outlaw it forever; and finally, a president involved in a religious odyssey who wrote, for his own eyes only, a profound meditation on &acirc;€œthe will of God&acirc;€ in the Civil War that would become the basis of his finest address.&lt;br&gt;&lt;br&gt;Most enlightening, the Abraham Lincoln who comes into focus in this stellar narrative is a person of intellectual curiosity, comfortable with ambiguity, unafraid to &acirc;€œthink anew and act anew.&acirc;€ &lt;br&gt;&lt;br&gt;A transcendent, sweeping, passionately written biography that greatly expands our knowledge and understanding of its subject, &lt;i&gt;A. Lincoln &lt;/i&gt;will engage a whole new generation of Americans.  It is poised to shed a profound light on our greatest president just as America commemorates the bicentennial of his birth.&lt;br&gt;&lt;u&gt;&lt;br&gt;&lt;/u&gt;', '1400064996.jpg'),
('1401926452', 'The Spark: The 28-Day Breakthrough Plan for Losing Weight, Getting Fit, and Transforming Your Life', 24.95, 272, 'HARDCOVER', '2009-12-29', '&lt;DIV&gt;&lt;p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt; text-indent: 0.25in\"&gt;A revolution is taking place! Millions of people are discovering a new way of thinking about their weight, their health, and their lives. They are taking part in a visionary approach to weight loss that combines goal setting, nutrition, exercise, motivation, and community that has a proven track record of ten million pounds lost.&lt;/p&gt; &lt;p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt; text-indent: 0.2in\"&gt;From the experts who created SparkPeople.com, one of the most successful online weight-loss programs to date, comes &lt;I&gt;The Spark, &lt;/i&gt;a ground-breaking book that focuses on what you &lt;I&gt;can&lt;/i&gt; do, instead of what you &lt;I&gt;can&acirc;€™t&lt;/i&gt; do. &lt;I&gt;The Spark&lt;/i&gt; is about transforming your life and your idea of what dieting means.&lt;/p&gt; &lt;p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt; text-indent: 0.2in\"&gt;With dozens of photos&acirc;€”including stunning before-and-after shots and easy-to-follow exercise images&acirc;€”this book distills the best of SparkPeople&acirc;€™s medically accepted nutrition and fitness plan and infuses it with a program of personal empowerment. In this book, you&acirc;€™ll discover:&lt;/p&gt; &lt;p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt 0.5in; text-indent: -0.25in; tab-stops: .5in; mso-list: l0 level1 lfo1\"&gt;&Acirc;&middot;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; Secrets of Success&acirc;€”the best habits of SparkPeople&acirc;€™s most successful&lt;B&gt;&lt;I&gt; &lt;/i&gt;&lt;/b&gt;members&lt;B&gt;&lt;I&gt;&lt;/i&gt;&lt;/b&gt;&lt;/p&gt; &lt;p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt 0.5in; text-indent: -0.25in; tab-stops: .5in; mso-list: l0 level1 lfo1\"&gt;&Acirc;&middot;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; A 28-day program that brings together the most effective practices from SparkPeople into an&lt;B&gt;&lt;I&gt; &lt;/i&gt;&lt;/b&gt;innovative 4-stage plan, available only in this book&lt;B&gt;&lt;I&gt;&lt;/i&gt;&lt;/b&gt;&lt;/p&gt; &lt;p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt 0.5in; text-indent: -0.25in; tab-stops: .5in; mso-list: l0 level1 lfo1\"&gt;&Acirc;&middot;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; Dozens of success stories that show the power of this transformational program &lt;B&gt;&lt;I&gt;&lt;/i&gt;&lt;/b&gt;&lt;/p&gt; &lt;I&gt;The Spark&lt;/i&gt; delivers inspirational health and weight-loss advice that will surely spark countless lives.&lt;/DIV&gt;', '1401926452.jpg'),
('1406554308', 'Twenty Thousand Leagues Under the Sea (Dodo Press)', 24.99, 316, 'PAPERBACK', '2007-08-24', 'Jules Gabriel Verne (1828-1905) was a French author who pioneered the science-fiction genre. He is best known for novels such as Journey to the Centre of the Earth (1864), Twenty Thousand Leagues Under the Sea (1870), and Around the World in Eighty Days (1873). Verne wrote about space, air and underwater travel before air travel and practical submarines were invented, and before practical means of space travel had been devised. He is the third most translated author in the world, according to Index Translationum. Some of his books have been made into films. Verne, along with Hugo Gernsback and H. G. Wells, is often popularly referred to as the \"Father of Science Fiction\". Amongst his other works are From the Earth to the Moon (1867), Five Weeks in a Balloon (1869), The Fur Country; or, Seventy Degrees North Latitude (1873), The Blockade Runners (1874), The Field of Ice (1875), The Mysterious Island (1875), Facing the Flag (1879), and An Antarctic Mystery (1899).', '1406554308.jpg'),
('1416562095', 'Paul McCartney: A Life', 26, 384, 'HARDCOVER', '2009-11-03', 'More than a rock star, more than a celebrity, Paul McCartney is a cultural touchstone. As one half of the legendary Lennon-McCartney songwriting duo, he helped transform popular music, moving from the simplistic pop of \"Love Me Do\" to the avant-garde symphonics of \"A Day in the Life\" to generation-binding anthems such as \"Hey, Jude\" and \"Let It Be.\" Along the way the Beatles ascended from the dank basements of working-class Liverpool to heights of fame and wealth no previous entertainer could ever have imagined.&lt;P&gt;McCartney\'s own ambitions fueled much of the group\'s progress. But even as he steered himself from childhood tragedy to his meeting with John Lennon to the gestation of the Beatles and their rise to international acclaim, the same appetites that drove the group to its greatest creative and commercial heights also served to tear the band members apart.&lt;P&gt;Still, McCartney\'s career didn\'t end with the Beatles\' breakup. Nor, for that matter, did the bonds between the Beatles. And in this definitive biography, Peter Ames Carlin examines McCartney\'s entire life, casting new light not just on the Beatles era, but also on his years with Wings and his thirty-year relationship with his first wife, Linda McCartney. He takes us on a journey through a tumultuous couple of decades in which Paul struck out on his own as a solo artist, reached the top of the charts with a new band, and once again drew hundreds of thousands of screaming fans to his concerts. Carlin presents McCartney as a musical visionary, capable of crafting pop gems such as \"Band on the Run\" and \"Maybe I\'m Amazed.\" But he also reveals a layered and often conflicted figure, as haunted by his legacy -- and particularly his relationshipwith John Lennon -- as he was inspired by it.&lt;P&gt;Built on years of research and fresh, revealing interviews with friends, bandmates, and collaborators spanning McCartney\'s entire life, Carlin\'s lively biography captures the many facets of Paul McCartney and paints a vivid portrait of one of our era\'s living legends.', '1416562095.jpg'),
('1416580867', 'Letters of Vincent van Gogh', 15, 352, 'PAPERBACK', '2008-11-18', '&lt;b&gt;&lt;big&gt;&lt;p align=\"center\"&gt;A literary classic, &lt;I&gt;The Letters of Vincent van Gogh Captures&lt;/i&gt; the voice of one of the most beloved and important artists of all time.&lt;/big&gt;&lt;/b&gt;&lt;P&gt;Though Vincent van Gogh is often thought of as a mad genius, in &lt;I&gt;The Letters of Vincent van Gogh&lt;/i&gt; the thoughtful, effervescent, and sensitive man is revealed to readers through his own voice.&lt;P&gt;This collection of letters, arranged in chronological order and written to Vincent\'s closest confidant, his brother and art dealer, Theo, provide a riveting narrative of van Gogh\'s life. The letters expose Vincent\'s creative process; his joy and inspiration derived from literature, Japanese art, and nature; as well as his many romantic disappointments and constant poverty. Also documented are Vincent\'s close relationships with fellow artists, especially Paul Gauguin. Van Gogh\'s tender and often ebullient letters provide a sharp contrast to the devastating and frequently violent mental breakdowns that plagued and eventually destroyed him.&lt;P&gt;Collected and edited by art historian Mark Roskill, this volume also includes a chronology, a short memoir by van Gogh\'s sister-in-law that fills in many of the blanks of Vincent\'s early years, and reproductions of selected artwork discussed in van Gogh\'s letters.&lt;P&gt;An epistolary classic, &lt;I&gt;The Letters of Vincent van Gogh&lt;/i&gt; is not just an important historical collection but also a captivating treasure.', '1416580867.jpg'),
('1416580948', 'Kiss Of A Demon King (Immortals After Dark, Book 7)', 7.99, 432, '', '2009-01-20', 'From &lt;I&gt;New York Times&lt;/i&gt; bestselling author Kresley Cole comes this spellbinding story of a demon king trapped by an enchantress for her wanton purposes -- and the scorching aftermath that follows when he turns the tables and claims her as his captive.&lt;P&gt;&lt;b&gt;HIS OBSESSION...&lt;/b&gt;&lt;P&gt;Sabine, Sorceress of Illusions: the evil beauty who surrenders her body, but not her heart.&lt;P&gt;&lt;b&gt;HER DOWNFALL...&lt;/b&gt;&lt;P&gt;Rydstrom Woede: the ruthless warrior who vows to keep her at all costs.&lt;P&gt;&lt;b&gt;THEY WERE NEVER SUPPOSED TO WANT EACH OTHER THIS MUCH...&lt;/b&gt;&lt;P&gt;With each smoldering encounter, their shared hunger only increases. If they can defeat the sinister enemy that stands between them, will Sabine make the ultimate sacrifice for her demon? Or will the proud king lay down his crown and arms to save his sorceress?', '1416580948.jpg'),
('1426201257', 'Journeys of a Lifetime: 500 of the World\'s Greatest Trips', 40, 400, 'HARDCOVER', '2007-10-16', 'No one knows the world like National Geographic&acirc;€”and in this lavish volume, we reveal our picks for the world\'s most fabulous journeys, along with helpful information for readers who want to try them out. &lt;br&gt;&lt;br&gt;Compiled from the favorite trips of National Geographic\'s travel writers, &lt;i&gt;Journeys of a Lifetime&lt;/i&gt; spans the globe to highlight the best of the world\'s most famous and lesser known sojourns. It presents an incredible diversity of possibilities, from ocean cruises around Antarctica to horse treks in the Andes. Every continent and every possible form of transport is covered. &lt;br&gt;&lt;br&gt;A timely resource for the burgeoning ranks of active travelers who crave adventurous and far-flung trips, &lt;i&gt;Journeys of a Lifetime&lt;/i&gt; provides scores of creative ideas: trekking the heights of Mt. Kilimanjaro in Tanzania... mountain biking in Transylvania... driving through the scenic highlands of Scotland... or rolling through the outback on Australia\'s famous Ghan train... and dozens of other intriguing options all over the world. &lt;br&gt;&lt;br&gt;&lt;i&gt;Journeys of a Lifetime&lt;/i&gt; also features 22 fun Top 10 lists in all sorts of categories. What are the world\'s top 10 elevator rides, bridges to walk across, trolley rides, ancient highways, or underground walking adventures? Readers will love evaluating and debating the selections. &lt;br&gt;&lt;br&gt;Each chapter showcases stunning photography, full-color maps, evocative text, and expert advice&acirc;€”including how to get there, when to visit, and how to make the most of the journey&acirc;€”all packaged in a luxurious oversize volume to treasure for years to come.', '1426201257.jpg');
INSERT INTO `tblbooks` (`isbn`, `title`, `price`, `pages`, `binding`, `pubDate`, `description`, `imageFilename`) VALUES
('1433805618', 'Publication Manual of the American Psychological Association, Sixth Edition', 28.95, 272, 'PAPERBACK', '0000-00-00', 'The Publication Manual of the American Psychological Association\" is the style manual of choice for writers, editors, students, and educators in the social and behavioral sciences. It provides invaluable guidance on all aspects of the writing process, from the ethics of authorship to the word choice that best reduces bias in language. Well-known for its authoritative and easy-to-use reference and citation system, the Publication Manual also offers guidance on choosing the headings, tables, figures, and tone that will result in strong, simple, and elegant scientific communication. The sixth edition offers new and expanded instruction on publication ethics, statistics, journal article reporting standards, electronic reference formats, and the construction of tables and figures. The sixth edition has been revised and updated to include: new ethics guidance on such topics as determining authorship and terms of collaboration, duplicate publication, plagiarism and self-plagiarism, disguising of participants, validity of instrumentation, and making data available to others for verification; new journal article reporting standards to help readers report empirical research with clarity and precision; simplified APA heading style to make it more conducive to electronic publication; updated guidelines for reducing bias in language to reflect current practices and preferences, including a new section on presenting historical language that is inappropriate by present standards; new guidelines for reporting inferential statistics and a significantly revised table of statistical abbreviations; and, new instruction on using supplemental files containing lengthy data sets and other media. This book includes significantly expanded content on the electronic presentation of data to help readers understand the purpose of each kind of display and choose the best match for communicating the results of the investigation, with new examples for a variety of data displays, including electro physiological and biological data. It offers consolidated information on all aspects of reference citations, with an expanded discussion of electronic sources emphasizing the role of the digital object identifier (DOI) as a reliable way to locate information. It features expanded discussion of the publication process, including the function and process of peer review. It contains a discussion of ethical, legal, and policy requirements in publication; and guidelines on working with the publisher while the article is in press. Key to this edition of the Publication Manual is an updated and expanded Web presence. Look up additional supplemental material keyed to this book. This book lets you test your knowledge of APA Style with a free tutorial on style basics. It lets you learn about the changes in the sixth edition with a free tutorial reviewing key revisions. Sign up for an on-line course to enrich and enhance your understanding of APA Style. Read the APA Style blog and share your comments on writing and referencing. Consult frequently asked questions to sharpen your understanding of APA Style. This title lets you examine additional resources on such topics as ethics, statistics, and writing. It lets you familiarize yourself with submission standards for APA books and journals.  ', '1433805618.jpg'),
('1436335205', 'Those Crazy Germans! A Lighthearted Guide to Germany', 15.99, 108, 'PAPERBACK', '2008-07-14', '&lt;b&gt;Those Crazy Germans!&lt;/b&gt; gives you the inside scoop on the people and the culture so you can get the most out of your trip to Germany. Go beyond the stereotypes and get in touch with the Germans you never knew existed. Filled with practical travel tips and cultural insights, you\'ll travel Germany like a pro.\" &lt;P&gt;* Do you want to learn the history of a town or city without knowing anything more than its name?&lt;br&gt; * Do you want to know the tricks to navigating Germany\'s Autobahns and railways so you travel like a native?&lt;br&gt; * Do you want to know Germans\' secrets for relaxation that you can easily and affordably enjoy as well?&lt;br&gt; * Do you want to learn about German beers and wines so you can order like a connoisseur? &lt;P&gt;&lt;b&gt;Those Crazy Germans!&lt;/b&gt; takes you where the other travel guides don\'t go. Through a combination of observations, tips and historical &amp; cultural insights all written in a relaxed and cheerful style, this book takes you behind the scenes and introduces you to the Germany that the Germans know. Perfect for reading on the plane or train, &lt;b&gt;Those Crazy Germans!&lt;/b&gt; is the fun way to get to know Germany. &lt;P&gt;* Learn how hundreds of years of traditions manifest themselves in modern day Germany.&lt;br&gt; * Learn the customs and quirks of German restaurants and hotels.&lt;br&gt; * Learn the insiders\' tips to Oktoberfest, Karneval and hundreds of other festivals so that you too can party like a native.&lt;br&gt; * Learn about Germany\'s unusual do\'s and don\'ts.&lt;br&gt; * Learn how to see towns and cities the way the Germans see them. &lt;P&gt;Most travel guides give you the necessary \"go here, see this\", \"eat here, stay there\" details, but are short on insight and cultural knowledge. &lt;b&gt;Those Crazy Germans!&lt;/b&gt; bridges the gap by providing the essential and often unknown cultural insights and perspective that lets you truly experience the people and the country.', '1436335205.jpg'),
('1439101167', 'Dangerously Funny: The Uncensored Story of \"The Smothers Brothers Comedy Hour\"', 24.99, 400, 'HARDCOVER', '2009-12-01', '&lt;b&gt;A behind-the-scenes look at the rise and fall of &lt;I&gt;The Smothers Brothers Comedy Hour&lt;/i&gt; -- the provocative, politically charged program that shocked the censors, outraged the White House, and forever changed the face of television. &lt;/b&gt;&lt;P&gt;Decades before &lt;I&gt;The Daily Show&lt;/i&gt;, &lt;I&gt;The Smothers Brothers Comedy Hour&lt;/i&gt; proved there was a place on television for no-holds-barred political comedy with a decidedly antiauthoritarian point of view. In this explosive, revealing history of the show, veteran entertainment journalist David Bianculli tells the fascinating story of its three-year network run -- and the cultural impact that\'s still being felt today. &lt;P&gt;Before it was suddenly removed from the CBS lineup (reportedly under pressure from the Nixon administration), &lt;I&gt;The Smothers Brothers Comedy Hour&lt;/i&gt; was a ratings powerhouse. It helped launch the careers of comedy legends such as Steve Martin and Rob Reiner, featured groundbreaking musical acts like the Beatles and the Who, and served as a cultural touchstone for the antiwar movement of the late 1960s. &lt;P&gt;Drawing on extensive original interviews with Tom and Dick Smothers and dozens of other key players -- as well as more than a decade\'s worth of original research --&lt;I&gt; Dangerously Funny&lt;/i&gt; brings readers behind the scenes for all the battles over censorship, mind-blowing musical performances, and unforgettable sketches that defined the show and its era. &lt;P&gt;David Bianculli delves deep into this riveting story, to find out what &lt;I&gt;really&lt;/i&gt; happened and to reveal why this show remains so significant to this day.', '1439101167.jpg'),
('1558322566', 'Fresh from the Vegetarian Slow Cooker: 200 Recipes for Healthy and Hearty One-Pot Meals That Are Ready When You Are', 14.95, 288, 'PAPERBACK', '0000-00-00', 'By now the remarkable convenience of the slow cooker is no secret. It keeps the kitchen cool on warm days and is inexpensive and durable. The perfect appliance for vegetarian and healthy cooking, the slow cooker offers a foolproof way to cook beans, grains, and numerous vegetables. &lt;i&gt;Fresh from the Vegetarian Slow Cooker&lt;/i&gt; delivers recipes for simple, delicious, hearty fare without relying on canned soup for flavor. With chapters on appetizers, soups, stews, breakfasts, desserts, and more, this is the book for anyone looking for healthy meal alternatives.', '1558322566.jpg'),
('1558708952', 'Made by Hand: Furniture Projects from the Unplugged Woodshop', 29.99, 160, 'HARDCOVER', '2009-12-04', '\"Made By Hand\" is the definitive book of how to build woodworking projects using hand tools. While there are a number of books on hand tools for woodworkers that provide information about hand tools and their individual uses, no one has put these tools to use on a project. In that regard, this book is unique and will fit in perfectly with the rapidly expanding category of hand-tool woodworking. The six projects and companion DVD offer excellent views of the hand tools in use, and the critical body positioning necessary.', '1558708952.jpg'),
('1572246952', 'Buddha\'s Brain: The Practical Neuroscience of Happiness, Love, and Wisdom', 17.95, 200, 'PAPERBACK', '2009-11-01', 'Jesus, Moses, the Buddha, and other great teachers were born with brains built essentially like anyone else s. Then they used their minds to change their brains in ways that changed history.&lt;br&gt;&lt;P&gt;With the new breakthroughs in neuroscience, combined with the insights from thousands of years of contemplative practice, you, too, can shape your own brain for greater happiness, love, and wisdom.&lt;br&gt;&lt;P&gt;&lt;b&gt;Buddha\'s Brain&lt;/b&gt; joins the forces of modern science with ancient teachings to show readers how to have greater emotional balance in turbulent times, as well as healthier relationships, more effective actions, and a deeper religious or spiritual practice.&lt;br&gt;&lt;P&gt;Well-referenced and grounded in science, the book is full of practical tools and skills readers can use in daily life to tap the unused potential of the brain and rewire it over time for greater peace and well-being.&lt;br&gt;&lt;P&gt;If you can change your brain, you can change your life.&lt;br&gt;&lt;P&gt;\"Numerous writings in recent years have exacerbated the traditional rift between science and religion; however, there has been a refreshing parallel movement in the opposite direction. Neuroscientists have become increasingly interested in using first person introspective inquiries if the mind to complement their third person western scientific investigations of the brain. Buddhist contemplative practices are particularly amenable to such collaboration, inviting efforts to find neurobiological explanations for Buddhist philosophy. Stripped of religious baggage, &lt;b&gt;Buddha s Brain&lt;/b&gt; clearly describes how modern concepts of evolutionary and cognitive neurobiology support core Buddhist teachings and practice. This book should have great appeal for those seeking a secular spiritual path, while also raising many testable hypotheses for interested neuroscientists.\"&lt;br&gt;&lt;P&gt; Jerome Engel, Jr., MD, PhD&lt;br&gt;&lt;P&gt; Jonathan Sinay Distinguished Professor of Neurology,&lt;br&gt;Neurobiology, and Psychiatry and Biobehavioral Sciences&lt;br&gt;Director, UCLA Seizure Disorder Center&lt;br&gt;&lt;P&gt; David Geffen, School of Medicine at UCLA', '1572246952.jpg'),
('1576839540', 'Parenting With Love And Logic (Updated and Expanded Edition)', 24.99, 272, 'HARDCOVER', '2006-04-19', '&lt;DIV&gt;This parenting book shows you how to raise self-confident, motivated children who are ready for the real world. Learn how to parent effectively while teaching your children responsibility, and you\'ll establish healthy control without anger, threats, nagging, or power struggles. Indexed for easy reference.&lt;br&gt;&lt;/div&gt;', '1576839540.jpg'),
('1579653545', 'Seven Fires: Grilling the Argentine Way', 35, 278, 'HARDCOVER', '2009-05-12', 'A trailblazing chef reinvents the art of cooking over fire.&lt;br&gt;&lt;br&gt;Gloriously inspired recipes push the boundaries of live-fired cuisine in this primal yet sophisticated cookbook introducing the incendiary dishes of South America\'s biggest culinary star. Chef Francis Mallmann&acirc;€”born in Patagonia and trained in France\'s top restaurants&acirc;€”abandoned the fussy fine dining scene for the more elemental experience of cooking with fire. But his fans followed, including the world\'s top food journalists and celebrities, such as Francis Ford Coppola, Madonna, and Ralph Lauren, traveling to Argentina and Uruguay to experience the dashing chef\'s astonishing&acirc;€”and delicious&acirc;€”wood-fired feats. &lt;br&gt;&lt;br&gt;The seven fires of the title refer to a series of grilling techniques that have been singularly adapted for the home cook. So you can cook Signature Mallmann dishes&acirc;€”like Whole Boneless Ribeye with Chimichuri; Salt-Crusted Striped Bass; Whole Roasted Andean Pumpkin with Mint and Goat Cheese Salad; and desserts such as Dulce de Leche Pancakes&acirc;€”indoors or out in any season. Evocative photographs showcase both the recipes and the exquisite beauty of Mallmann\'s home turf in Patagonia, Buenos Aires, and rural Uruguay. &lt;i&gt;Seven Fires &lt;/i&gt;is a must for any griller ready to explore food\'s next frontier.&lt;br&gt;', '1579653545.jpg'),
('1580114717', 'Homegrown Vegetables, Fruits &amp; Herbs: A Bountiful, Healthful Garden for Lean Times', 16.95, 192, 'PAPERBACK', '2009-12-07', '&lt;DIV&gt;&lt;DIV&gt;Like the Victory gardens of World War II, food gardens planted&Acirc;&nbsp;in sunny back or side yards during these economically challening times can provide families with nourishing, delicious food at a fraction of the cost to buy it at a supermarket. What\'s more,&Acirc;&nbsp;families know that the food&Acirc;&nbsp;they grow themselves, with minimal or natural pesticides and minimal or no synthetic fertilizers, is safe from the many &lt;I&gt;E. coli, Salmonella&lt;/I&gt;,&Acirc;&nbsp;and other \"tainted-food scares\" of recent years. &lt;I&gt;&lt;B&gt;Homegrown Vegetables, Fruits &amp; Herbs: A Bountiful, Healthful&Acirc;&nbsp;Garden for Lean Times&lt;/B&gt;&lt;/I&gt;&Acirc;&nbsp;will help aspiring gardeners avoid disappoint or faillure with their first food gardens and help families who are already growing food crops to grow more and reduce their food costs!&lt;/DIV&gt;&lt;/DIV&gt;', '1580114717.jpg'),
('1584792965', 'Alton Brown\'s Gear for Your Kitchen', 27.5, 256, 'HARDCOVER', '2003-10-01', 'Dedicated viewers of Alton Brown\'s acclaimed Food Network show &lt;I&gt;Good Eats&lt;/I&gt; know of his penchant for using unusual equipment. He has smoked a salmon in a cardboard box, roasted prime rib in a flowerpot, and used a C-clamp as a nutcracker.     &lt;P&gt;Brown isn\'t interested in novelty, he\'s just devoted to using the best-and simplest-tool for the job. &lt;I&gt;Alton Brown\'s Gear For Your Kitchen&lt;/I&gt; offers honest, practical advice on what\'s needed and what isn\'t, what works and what doesn\'t. His advice: You only need three knives, but they are a lifetime investment. And don\'t bother with that famous countertop grill-it doesn\'t get hot enough to properly sear.    &lt;P&gt;In his signature science-guy style, Brown begins with advice on kitchen layout and organization, then gets to the lowdown on these cooking elements: Big Things with Plugs; Pots and Pans; Sharp Things; The Tool Box; Small Things with Plugs; Storage and Containment; and Safety and Sanitation. Along the way he delves deep into kitchen science and appliance history and legend. Included are 25 brand-new recipes that employ featured gear.    &lt;P&gt;&lt;I&gt;Alton Brown\'s Gear For Your Kitchen&lt;/I&gt; is essential for all of his fans-and anyone who wants a good guide to great kitchen gear.', '1584792965.jpg'),
('1584797932', 'Fifty More Places to Play Golf Before You Die: Golf Experts Share the World\'s Greatest Destinations (Fifty Places Series)', 24.95, 224, 'HARDCOVER', '2009-09-01', '&lt;DIV&gt;&lt;DIV&gt;&lt;DIV&gt;&lt;I&gt;Fifty More Places to Play Golf Before You Die&lt;/I&gt; is the sixth of Chris Santella&acirc;€™s popular &acirc;€œFifty Places&acirc;€ books (more than 250,000 copies in print), and the first to return to golf&acirc;€”the series&acirc;€™ most popular subject.&Acirc;&nbsp;In this new book Santella interviews 50 luminaries in the golf world about their favorite courses and experiences.&Acirc;&nbsp;Experts range from seasoned touring professionals (Amy Alcott, Fred Funk) to journalists and photographers (James Dodson, Brian Morgan) to golf course architects (Robert von Hagge, Bob Harrison) to travel specialists (Gordon Dalgleish, Mike Lardner).&Acirc;&nbsp;&lt;/DIV&gt;&lt;DIV&gt;Old Country favorites like Royal Dornoch and Machrihanish in Scotland are featured, but so are venues far off the linksters&acirc;€™ beaten path, like Nirwana, Bali, where the course runs beside rice paddies in the shadow of ancient temples, and China&acirc;€™s Jade Dragon Snow Mountain, where players tee off at 10,000 feet, at the base of the Himalayas.&Acirc;&nbsp;More than 40 spectacular photos capture the allure of these unforgettable golf destinations.&lt;BR&gt;&lt;/DIV&gt;&lt;/DIV&gt;&lt;/DIV&gt;', '1584797932.jpg'),
('1591842581', 'How Did That Happen?: Holding People Accountable for Results the Positive, Principled Way', 26.95, 272, 'HARDCOVER', '2009-08-11', '&lt;B&gt;A simple, proven approach to improve accountability and your company\'s bottom line.&lt;/B&gt;&lt;BR&gt;&lt;BR&gt; The economy crashes, the government misfires, businesses fail, leaders don\'t lead, managers don\'t manage, and the people we count on for the results that affect our own performance don\'t follow through, leaving us asking, \"How did that happen?\" &lt;BR&gt;&lt;BR&gt; All the surprises caused by a lack of personal accountability plague almost every organization today, from the political arena to every large and small business. How Did That Happen? offers a proven way to eliminate these nasty surprises, gain an unbeatable competitive edge, and enhance performance by holding others accountable the positive, principled way. &lt;BR&gt;&lt;BR&gt; As the experts on workplace accountability and authors of The Oz Principle, the classic book on personal accountability, Roger Connors and Tom Smith now tackle the next crucial step everyone can take, whether as a manager, supervisor, CEO, or individual performer: creating greater accountability in all the people on whom you depend. &lt;BR&gt;&lt;BR&gt; Connors and Smith have spent decades implementing their approach to creating greater accountability in some of the world\'s most admired companies. Through hundreds of successful client applications, they have proven that organizational accountability can be the single most important factor in ensuring a company\'s success.  Now, they present the Accountability Sequence, a systematic and sensible approach that includes two essential components: The Outer Ring, which reveals how to establish expectations and positive accountability connections with everyone in the Expectations Chain. The Inner Ring, which shows how to manage unmet expectations when people fail to deliver and thereby reverse the misfortune of missed results. &lt;BR&gt;&lt;BR&gt; Using case studies, practical models, and self-assessments, the authors make it possible for anyone to install accountability as a central part of their daily work, their team\'s efforts, or an overall corporate culture-and, in turn, increase profits and generate better results.', '1591842581.jpg'),
('1594202230', 'Shop Class as Soulcraft: An Inquiry Into the Value of Work', 25.95, 256, 'HARDCOVER', '2009-05-28', '&lt;B&gt;A philosopher / mechanic destroys the pretensions of the high- prestige workplace and makes an irresistible case for working with one\'s hands&lt;/B&gt;&lt;BR&gt;&lt;BR&gt; &lt;I&gt;Shop Class as Soulcraft&lt;/I&gt; brings alive an experience that was once quite common, but now seems to be receding from society-the experience of making and fixing things with our hands. Those of us who sit in an office often feel a lack of connection to the material world, a sense of loss, and find it difficult to say exactly what we do all day. For anyone who felt hustled off to college, then to the cubicle, against their own inclinations and natural bents, &lt;I&gt;Shop Class as Soulcraft&lt;/I&gt; seeks to restore the honor of the manual trades as a life worth choosing. &lt;BR&gt;&lt;BR&gt; On both economic and psychological grounds, Crawford questions the educational imperative of turning everyone into a \"knowledge worker,\" based on a misguided separation of thinking from doing, the work of the hand from that of the mind.  Crawford shows us how such a partition, which began a century ago with the assembly line, degrades work for those on both sides of the divide. &lt;BR&gt;&lt;BR&gt; But Crawford offers good news as well: the manual trades are very different from the assembly line, and from dumbed-down white collar work as well.  They require careful thinking and are punctuated by moments of genuine pleasure.  Based on his own experience as an electrician and mechanic, Crawford makes a case for the intrinsic satisfactions and cognitive challenges of manual work.  The work of builders and mechanics is secure; it cannot be outsourced, and it cannot be made obsolete.  Such work ties us to the local communities in which we live, and instills the pride that comes from doing work that is genuinely useful. A wholly original debut, &lt;I&gt;Shop Class as Soulcraft&lt;/I&gt; offers a passionate call for self-reliance and a moving reflection on how we can live concretely in an ever more abstract world.', '1594202230.jpg'),
('1594488827', 'Green Metropolis: Why Living Smaller, Living Closer, and Driving Less are the Keys to Sustainability', 25.95, 368, 'HARDCOVER', '2009-09-17', '&lt;B&gt;A challenging, controversial, and highly readable look at our lives, our world, and our future.&lt;/B&gt;&lt;BR&gt;&lt;BR&gt; In this remarkable challenge to conventional thinking about the environment, David Owen argues that the greenest community in the United States is not Portland, Oregon, or Snowmass, Colorado, but New York, New York.&lt;BR&gt;&lt;BR&gt; Most Americans think of crowded cities as ecological nightmares, as wastelands of concrete and garbage and diesel fumes and traffic jams. Yet residents of compact urban centers, Owen shows, individually consume less oil, electricity, and water than other Americans. They live in smaller spaces, discard less trash, and, most important of all, spend far less time in automobiles. Residents of Manhattan- the most densely populated place in North America -rank first in public-transit use and last in percapita greenhouse-gas production, and they consume gasoline at a rate that the country as a whole hasn\'t matched since the mid-1920s, when the most widely owned car in the United States was the Ford Model T. They are also among the only people in the United States for whom walking is still an important means of daily transportation.&lt;BR&gt;&lt;BR&gt; These achievements are not accidents. Spreading people thinly across the countryside may make them feel green, but it doesn\'t reduce the damage they do to the environment. In fact, it increases the damage, while also making the problems they cause harder to see and to address. Owen contends that the environmental problem we face, at the current stage of our assault on the world\'s nonrenewable resources, is not how to make teeming cities more like the pristine countryside. The problem is how to make other settled places more like Manhattan, whose residents presently come closer than any other Americans to meeting environmental goals that all of us, eventually, will have to come to terms with.', '1594488827.jpg'),
('1594488843', 'Drive: The Surprising Truth About What Motivates Us', 26.95, 256, 'HARDCOVER', '2009-12-29', 'Forget everything you thought you knew about how to motivate people--at work, at school, at home. It\'s wrong. As Daniel H. Pink explains in his new and paradigm-shattering book &lt;I&gt;Drive: The Surprising Truth About What Motivates Us&lt;/I&gt;, the secret to high performance and satisfaction in today\'s world is the deeply human need to direct our own lives, to learn and create new things, and to do better by ourselves and our world. &lt;BR&gt;&lt;BR&gt; Drawing on four decades of scientific research on human motivation, Pink exposes the mismatch between what science knows and what business does--and how that affects every aspect of our lives. He demonstrates that while the old-fashioned carrot-and-stick approach worked successfully in the 20th century, it\'s precisely the &lt;I&gt;wrong&lt;/I&gt; way to motivate people for today\'s challenges. In &lt;I&gt;Drive&lt;/I&gt;, he reveals the three elements of true motivation: &lt;BR&gt;&lt;BR&gt; *&lt;B&gt;Autonomy&lt;/B&gt;- the desire to direct our own lives &lt;BR&gt; *&lt;B&gt;Mastery&lt;/B&gt;- the urge to get better and better at something that matters &lt;BR&gt; *&lt;B&gt;Purpose&lt;/B&gt;- the yearning to do what we do in the service of something larger than ourselves &lt;BR&gt;&lt;BR&gt; Along the way, he takes us to companies that are enlisting new approaches to motivation and introduces us to the scientists and entrepreneurs who are pointing a bold way forward. &lt;BR&gt;&lt;BR&gt; &lt;I&gt;Drive&lt;/I&gt; is bursting with big ideas-- the rare book that will change how you think and transform how you live.', '1594488843.jpg'),
('159582362X', 'Usagi Yojimbo: Yokai', 14.95, 64, 'HARDCOVER', '2009-12-02', 'Yokai are the monsters, demons, and spirits of Japanese folklore, such as the shape-changing kitsune, the obakeneko demon cats, and the evil oni ogres. Usagi faces all these and more when a desperate woman begs for his help in finding her kidnapped daughter. Tracing the abducted girl deep into the forest, Usagi finds it haunted by creatures of Japanese legend and discovers that they are amassing for a great raid on the countryside! Fortunately, Usagi is joined by Sasuke the Demon Queller, who is also fighting to prevent the invasion, but things aren\'t always as they seem, especially when dealing with the supernatural!', '159582362X.jpg'),
('1596981040', 'The Complete Infidel\'s Guide to the Koran', 19.95, 260, 'PAPERBACK', '2009-09-21', 'Written in an extremely accessible style by bestselling author Robert Spencer, \"The Complete Infidel\'s Guide to the Koran\" is a fact-based but light-hearted look at the key elements, values, and beliefs in the Koran.', '1596981040.jpg'),
('1607477254', 'Birth: When the Spiritual and the Material Come Together', 21.95, 192, 'HARDCOVER', '2009-11-17', '&lt;DIV&gt; &lt;p&gt;Shari Arison is one of the most&Acirc;&nbsp;influential women in the world.&Acirc;&nbsp;She is the leader of a successful business empire and one of the largest private philanthropic foundations in Israel. From growing up with her father, Ted Arison, the founder of Carnival Cruise Lines, to her acquisition of the chairmanship position of the Arison Group, Arison possesses a unique perspective on both business and spiritual growth.&lt;/p&gt; &lt;p&gt;In &lt;I&gt;Birth: When The Spiritual and The Material Come Together&lt;/I&gt;, Arison provides her vision for creating a new reality for the future, generated from a marriage of the spiritual and the material.&Acirc;&nbsp;She currently sees the world collapsing into a mess of personal and corporate greed - a world rampant with financial corruption, environmental negligence and decaying social values. In &lt;I&gt;Birth&lt;/I&gt;, she presents a compelling message that every person in the world is capable of contributing to change. Arison\'s account chronicles her own journeys, both spiritually and in business, that led to the repositioning of the Arison Group as an enterprise focused on balancing profit with a strong commitment&Acirc;&nbsp;to sustainability and philanthropy. She passionately advocates mutual responsibility, intimately outlining how one must first turn within him or herself and attain inner peace to work toward the larger picture of world accord. With Arison\'s plan for the future, every person can convert crisis into opportunity.&lt;/p&gt; &lt;p&gt;&lt;I&gt;Birth&lt;/I&gt; illuminates the convergence of the spiritual and the material and presents valuable insights on their crucial connection.&Acirc;&nbsp;Arison powerfully maps out a model that will enable individuals and corporations to incite change and ultimately give birth to a brighter future.&lt;/p&gt; &lt;p&gt;&Acirc;&nbsp;\"I believe that Shari Arison can play a crucial role in our achieving world peace, and BIRTH is an important first step in that journey. Her book teaches us that it is through inner peace that we can create larger, global change. BIRTH connects the material to the spiritual, and provides a blueprint&acirc;€”for both businesses and individuals alike&acirc;€”of a new world about to be born.\"&lt;/p&gt; &lt;p&gt;&acirc;€”Brian L. Weiss, M.D., author of &lt;I&gt;Many Lives, Many Masters&lt;/I&gt;&lt;/p&gt; &lt;/div&gt; &lt;p&gt;&lt;B&gt;From Publishers Weekly:&lt;/B&gt;&lt;/p&gt; &lt;p&gt;Just in time to replace the now-defunct (or at least diminished) greed-is-good ethos on Wall Street, Israel&acirc;€™s wealthiest daughter, Carnival Cruise Lines CEO and major philanthropist, Arison, presents a spiritual approach to successfully running a vast business and effectively giving back. Raised in Israel and Miami, Fla., the thrice-married mother of four and head of the Arison Group (with controlling interests in Israel&acirc;€™s largest bank, among other investments) has an experienced, authoritative voice that benefits from her candid bravura, unafraid to divulge the messages she claims to have received from &acirc;€œup above&acirc;€ through dreams and the wishes of others. In simple language, she also recalls many painful and difficult chapters in her life, as well as lessons from her study of the world&acirc;€™s religions. Her journey has left her with a rather secular devotion to self-knowledge and authenticity, what she believes are the keys to maintaining order and principle among chaos. Arison&acirc;€™s proposal is that business should be driven by core values&acirc;€”integrity, purity, vision, and vitality&acirc;€”rather than financial gain. Though her own enterprises are given an outsized role, Arison proves that new age ideas and generosity can exist harmoniously with pragmatic leadership strategies. &lt;/p&gt;', '1607477254.jpg'),
('1848373104', 'Pride and Prejudice (Arcturus Paperback Classics)', 5.99, 352, 'PAPERBACK', '2009-06-29', '&lt;DIV&gt;Next to the exhortation at the beginning of Moby-Dick, \"Call me Ishmael,\" the first sentence of Jane Austen\'s Pride and Prejudice must be among the most quoted in literature. And certainly what Melville did for whaling Austen does for marriage--tracing the intricacies (not to mention the economics) of 19th-century British mating rituals with a sure hand and an unblinking eye. As usual, Austen trains her sights on a country village and a few families--in this case, the Bennets, the Philips, and the Lucases. Into their midst comes Mr. Bingley, a single man of good fortune, and his friend, Mr. Darcy, who is even richer. Mrs. Bennet, who married above her station, sees their arrival as an opportunity to marry off at least one of her five daughters.&lt;/div&gt;', '1848373104.jpg'),
('1854377884', 'Rothko', 60, 256, 'HARDCOVER', '2009-03-01', '&lt;DIV&gt;A leading figure in the Abstract Expressionist movement, Mark Rothko (1903-1970) is widely seen as one of the greatest painters of the 20th century. His paintings are famous for the intense, emotional responses they elicit from viewers. Shortly before his death, Rothko donated nine large-scale works to Tate on the condition that they would always hang together in their own space, separate from the work of other artists. This is how the Rothko Room, one of the highlights of Tate\'s collection, was born. These paintings form part of a larger series known as The Seagram Murals, which were originally intended for the Four Seasons restaurant in New York, a commission from which Rothko famously withdrew. Now, in this landmark reassessment, The Seagram Murals are reunited and cast in a new light by leading international critics including Bryony Fer, David Anfam, and Morgan Thomas. With revealing new research, this groundbreaking book challenges the mythology surrounding Rothko and his work.&lt;BR&gt;&lt;/DIV&gt;', '1854377884.jpg'),
('1904994504', 'Guinness World Records 2010', 28.95, 288, 'HARDCOVER', '2009-09-15', '  Guinness World Records 2010 continues to build on the intriguing, informative, inspiring and instructional records and superlatives that have made Guinness World Records one of the most famous brands and an annual best-seller around the world.  Over 100 million copies have sold since the first edition was published in 1955.  Nearly 4 million copies are sold every year in more than 100 countries and in 25 languages.      &lt;P&gt;What\'s new in GWR10?...    &lt;P&gt;- Free downloadable content, including videos, photographs, screensavers and interviews  - 100% new photographs and fully updated records  - Brilliant new \"steampunk\" graphic novel design  - New sections and record threads celebrating the first decade of the 21st century  - Top 50 Records of the Decade  - Record of the Day - one for every day of the year  - Unbreakable Records (those that will seemingly never be broken)  - Lasts (records such as the last living survivor of the Titanic disaster, or the last known dodo)  - The Name\'s Bond (celebrating the James Bond phenomenon)  - Culture Shock (unusual rituals and festivals around the globe)  - Gold (the commodity that never loses its luster)  - Updated gazetteer sections covering records in all major regions of the world  - Fully updated regular sections, including Space, Planet Earth, The Animal Planet, The Body, Human Achievements, Engineering and Technology, The Modern World, Arts and the Media and, of course, Sports.', '1904994504.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooksauthorsxref`
--

CREATE TABLE `tblbooksauthorsxref` (
  `isbn` char(16) NOT NULL,
  `authorId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblbooksauthorsxref`
--

INSERT INTO `tblbooksauthorsxref` (`isbn`, `authorId`) VALUES
('1400064996', 1),
('0880800143', 2),
('0375705244', 3),
('0679764410', 3),
('0151010897', 4),
('0684831902', 5),
('1416562095', 6),
('0299222144', 7),
('0446391387', 8),
('1854377884', 9),
('0821219103', 10),
('0810983362', 11),
('0060598999', 12),
('1594202230', 13),
('1591842581', 14),
('0307459683', 15),
('0307382354', 16),
('061896620X', 17),
('0811866556', 18),
('0803733399', 19),
('0763634409', 20),
('0740748475', 21),
('0740785486', 22),
('159582362X', 23),
('0316018783', 24),
('075952968X', 24),
('0785138064', 25),
('0201835959', 26),
('0596101996', 27),
('0596802447', 28),
('0672329166', 29),
('1579653545', 31),
('1558322566', 32),
('0696225654', 33),
('1584792965', 34),
('0470537213', 35),
('0452286204', 36),
('0393068617', 38),
('0374527008', 39),
('1439101167', 40),
('1594488843', 41),
('1401926452', 42),
('1607477254', 43),
('0312590822', 44),
('0805082360', 45),
('0375422226', 46),
('0300137192', 47),
('0316008958', 48),
('0307263630', 49),
('0670020796', 50),
('0345518756', 51),
('0881928712', 52),
('1558708952', 53),
('1580114717', 54),
('0688107826', 55),
('1848373104', 56),
('1406554308', 57),
('0385333846', 58),
('0684833395', 59),
('0393312836', 60),
('0316769177', 61),
('0345497511', 62),
('0345505476', 63),
('039915597X', 64),
('034547824X', 65),
('0375406956', 66),
('0061929379', 67),
('1594488827', 68),
('0792253140', 69),
('0787988316', 70),
('039306901X', 71),
('0345499395', 72),
('0761131841', 73),
('1576839540', 74),
('0877798087', 75),
('0142005258', 76),
('1904994504', 77),
('1596981040', 78),
('0807408832', 79),
('1572246952', 80),
('0767903692', 81),
('0425226921', 82),
('0312351666', 83),
('1416580948', 84),
('0399155805', 85),
('0195124413', 86),
('0691140200', 87),
('0061671738', 88),
('0439023483', 89),
('0439023491', 89),
('0553385763', 90),
('0451462769', 91),
('0385523327', 92),
('0575083573', 93),
('0316049344', 94),
('0765320045', 95),
('055338256X', 97),
('1584797932', 98),
('0760335052', 99),
('0061625450', 100),
('0975876996', 101),
('0316042676', 102),
('0385733976', 103),
('0763644900', 104),
('0470423382', 105),
('1426201257', 106),
('1436335205', 107),
('0470178418', 108);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooksgenresxref`
--

CREATE TABLE `tblbooksgenresxref` (
  `isbn` char(16) NOT NULL,
  `genreId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblbooksgenresxref`
--

INSERT INTO `tblbooksgenresxref` (`isbn`, `genreId`) VALUES
('0446391387', 1),
('0810983362', 1),
('0821219103', 1),
('1416580867', 1),
('1854377884', 1),
('0151010897', 2),
('0374527008', 2),
('039306901X', 2),
('0679764410', 2),
('0684831902', 2),
('0880800143', 2),
('1400064996', 2),
('1416562095', 2),
('0060598999', 3),
('0307382354', 3),
('0307459683', 3),
('1591842581', 3),
('0061671738', 4),
('0439023483', 4),
('061896620X', 4),
('0688107826', 4),
('0763634409', 4),
('0803733399', 4),
('0811866556', 4),
('159582362X', 4),
('0201835959', 5),
('0596101996', 5),
('0596802447', 5),
('0672329166', 5),
('0618610189', 6),
('0696225654', 6),
('1558322566', 6),
('1579653545', 6),
('1584792965', 6),
('0300137192', 9),
('0316008958', 9),
('0375705244', 9),
('0670020796', 9),
('0805082360', 9),
('0312590822', 10),
('1401926452', 10),
('1572246952', 10),
('1594488843', 10),
('1607477254', 10),
('0316049344', 17),
('0316769177', 17),
('0345505476', 17),
('0375406956', 17),
('0385333846', 17),
('0393312836', 17),
('0451462769', 17),
('0575083573', 17),
('0684833395', 17),
('1406554308', 17),
('1848373104', 17),
('0061929379', 18),
('0316018783', 18),
('034547824X', 18),
('039915597X', 18),
('0345499395', 20),
('0761131841', 20),
('0787988316', 20),
('1576839540', 20),
('0195393287', 21),
('0877798087', 21),
('1433805618', 21),
('1904994504', 21),
('0767903692', 22),
('0807408832', 22),
('0842348921', 22),
('1596981040', 22),
('0312351666', 23),
('0399155805', 23),
('0425226921', 23),
('1416580948', 23),
('0345497511', 25),
('0385523327', 25),
('055338256X', 25),
('0553385763', 25),
('0765320045', 25),
('0061625450', 26),
('0760335052', 26),
('0975876996', 26),
('1584797932', 26),
('0470178418', 27),
('0470423382', 27),
('1426201257', 27),
('1436335205', 27),
('0316042676', 28),
('0385733976', 28),
('0439023491', 28),
('0763644900', 28),
('0345518756', 48),
('0881928712', 48),
('1558708952', 48),
('1580114717', 48),
('0299222144', 53),
('0307263630', 53),
('1594202230', 53),
('1594488827', 53),
('0142005258', 75),
('0195124413', 75),
('0375422226', 75),
('0691140200', 75),
('0792253140', 75),
('0393068617', 86),
('0452286204', 86),
('0470537213', 86),
('0764161512', 86),
('1439101167', 86),
('0740748475', 4366),
('0740785486', 4366),
('075952968X', 4366),
('0785138064', 4366);

-- --------------------------------------------------------

--
-- Table structure for table `tblbookspublishersxref`
--

CREATE TABLE `tblbookspublishersxref` (
  `isbn` char(16) NOT NULL,
  `publisherId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblbookspublishersxref`
--

INSERT INTO `tblbookspublishersxref` (`isbn`, `publisherId`) VALUES
('1400064996', 1),
('0880800143', 2),
('0375705244', 3),
('0679764410', 3),
('0151010897', 4),
('0618610189', 4),
('0684831902', 5),
('1416562095', 6),
('1416580867', 6),
('1439101167', 6),
('0299222144', 7),
('0446391387', 8),
('1854377884', 9),
('0821219103', 10),
('0810983362', 11),
('0060598999', 12),
('1594202230', 13),
('1591842581', 14),
('0307382354', 15),
('0307459683', 15),
('061896620X', 16),
('0811866556', 17),
('0803733399', 18),
('0763634409', 19),
('0763644900', 19),
('0740748475', 20),
('0740785486', 20),
('159582362X', 21),
('075952968X', 22),
('0785138064', 23),
('0201835959', 24),
('0672329166', 24),
('0596101996', 25),
('0596802447', 25),
('0307263630', 26),
('0375406956', 26),
('1579653545', 27),
('1558322566', 28),
('0470537213', 29),
('0696225654', 29),
('1584792965', 30),
('0764161512', 31),
('0452286204', 32),
('0393068617', 34),
('039306901X', 34),
('0393312836', 34),
('0374527008', 35),
('1594488827', 36),
('1594488843', 36),
('1401926452', 37),
('1607477254', 38),
('0312351666', 39),
('0312590822', 39),
('0805082360', 40),
('0375422226', 41),
('0300137192', 42),
('0316008958', 43),
('0316018783', 43),
('0670020796', 44),
('0345499395', 45),
('0345505476', 45),
('0345518756', 45),
('0881928712', 46),
('1558708952', 47),
('1580114717', 48),
('0061671738', 49),
('0688107826', 49),
('1848373104', 50),
('1406554308', 51),
('0385333846', 52),
('0684833395', 53),
('0316769177', 54),
('034547824X', 55),
('0345497511', 55),
('0399155805', 56),
('039915597X', 56),
('0061929379', 57),
('0792253140', 58),
('1426201257', 58),
('0787988316', 59),
('0761131841', 60),
('1576839540', 61),
('0195124413', 62),
('0195393287', 62),
('0877798087', 63),
('0142005258', 64),
('1904994504', 66),
('1433805618', 67),
('1596981040', 68),
('0842348921', 69),
('0807408832', 70),
('1572246952', 71),
('0767903692', 72),
('0425226921', 73),
('1416580948', 74),
('0691140200', 75),
('0439023483', 76),
('0439023491', 76),
('055338256X', 77),
('0553385763', 77),
('0451462769', 78),
('0385523327', 79),
('0575083573', 80),
('0316049344', 81),
('0765320045', 82),
('1584797932', 84),
('0760335052', 85),
('0061625450', 86),
('0975876996', 87),
('0316042676', 88),
('0385733976', 89),
('0470178418', 90),
('0470423382', 90),
('1436335205', 91);

-- --------------------------------------------------------

--
-- Table structure for table `tbldemographics`
--

CREATE TABLE `tbldemographics` (
  `userId` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(32) NOT NULL,
  `lastName` varchar(32) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(35) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` varchar(9) NOT NULL,
  `cardType` enum('amex','visa','mastercard','discover') DEFAULT NULL,
  `cardNumber` varchar(16) DEFAULT NULL,
  `cardholderName` varchar(64) DEFAULT NULL,
  `cardExpiry` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbldemographics`
--

INSERT INTO `tbldemographics` (`userId`, `firstName`, `lastName`, `address1`, `address2`, `city`, `state`, `zip`, `cardType`, `cardNumber`, `cardholderName`, `cardExpiry`) VALUES
(1, 'Serena', 'Zapata', '1319 98th ave', '', 'Kenosha', 'WI', '53144', 'visa', '123456789012345', 'Serena Zapata', '2024-12-31'),
(2, 'Jasper', 'David', '4103 79th St', '', 'Kenosha', 'WI', '53142', 'mastercard', '1234567891012123', 'Jasper David', '2031-12-31'),
(3, 'Bruh', 'Momnent', '1357 s 9th st', '', 'Kenosha', 'WV', '53142', 'discover', '098765432109876', 'Bruh Momnent', '2025-04-30'),
(5, 'Gaius', 'VanBaelsar', 'Castrum Meridanum', '', 'Bluefog', 'NM', '12345', 'visa', '1337133713371337', 'Gaius Van Baelsar', '2029-10-31'),
(6, 'Serena', 'Zaoata', '1319 98th ave', '', 'Kenosha', 'WI', '53144', 'discover', '123456789012345', 'Serena Zapata', '2031-06-30'),
(7, 'Kyle', 'Shavacodoo', '12345 S Bruh St', '', 'Kenosha', 'WI', '53142', 'discover', '102938475610293', 'Kyle Shavacodoo', '2030-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `tblgenres`
--

CREATE TABLE `tblgenres` (
  `genreId` int(10) UNSIGNED NOT NULL,
  `genreName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgenres`
--

INSERT INTO `tblgenres` (`genreId`, `genreName`) VALUES
(1, 'Arts & Photography'),
(2, 'Biographies & Memoirs'),
(3, 'Business & Investing'),
(4, 'Children\'s Books'),
(5, 'Computers & Internet'),
(6, 'Cooking, Food & Wine'),
(9, 'History'),
(10, 'Health, Mind & Body'),
(17, 'Literature & Fiction'),
(18, 'Mystery & Thrillers'),
(20, 'Parenting & Families'),
(21, 'Reference'),
(22, 'Religion & Spirituality'),
(23, 'Romance'),
(25, 'Science Fiction & Fantasy'),
(26, 'Sports'),
(27, 'Travel'),
(28, 'Teens'),
(48, 'Home & Garden'),
(53, 'Nonfiction'),
(75, 'Science'),
(86, 'Entertainment'),
(4366, 'Comics & Graphic Novels');

-- --------------------------------------------------------

--
-- Table structure for table `tblpublishers`
--

CREATE TABLE `tblpublishers` (
  `publisherId` int(10) UNSIGNED NOT NULL,
  `fullName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpublishers`
--

INSERT INTO `tblpublishers` (`publisherId`, `fullName`) VALUES
(1, 'Random House'),
(2, 'National Center for Constitutional Studies'),
(3, 'Vintage'),
(4, 'Houghton Mifflin Harcourt'),
(5, 'Free Press'),
(6, 'Touchstone'),
(7, 'University of Wisconsin Press'),
(8, 'Grand Central Publishing'),
(9, 'Tate Publishing'),
(10, 'Ansel Adams'),
(11, 'Abrams'),
(12, 'HarperBusiness'),
(13, 'Penguin Press HC, The'),
(14, 'Portfolio Hardcover'),
(15, 'Crown Business'),
(16, 'Houghton Mifflin Books for Children'),
(17, 'Chronicle Books'),
(18, 'Dial'),
(19, 'Candlewick'),
(20, 'Andrews McMeel Publishing'),
(21, 'Dark Horse'),
(22, 'Yen Press'),
(23, 'Marvel Comics'),
(24, 'Addison-Wesley Professional'),
(25, 'O\'Reilly Media'),
(26, 'Knopf'),
(27, 'Artisan'),
(28, 'Harvard Common Press'),
(29, 'Wiley'),
(30, 'Stewart, Tabori and Chang'),
(31, 'Barron\'s Educational Series'),
(32, 'Plume'),
(33, 'Atlantic Monthly Press'),
(34, 'W. W. Norton &amp; Company'),
(35, 'Farrar, Straus and Giroux'),
(36, 'Riverhead Hardcover'),
(37, 'Hay House'),
(38, 'Phoenix Books'),
(39, 'St. Martin\'s Press'),
(40, 'Metropolitan Books'),
(41, 'Pantheon'),
(42, 'Yale University Press'),
(43, 'Little, Brown and Company'),
(44, 'Viking Adult'),
(45, 'Ballantine Books'),
(46, 'Timber Press'),
(47, 'Popular Woodworking Books'),
(48, 'Creative Homeowner'),
(49, 'HarperCollins'),
(50, 'Book Sales, Inc.'),
(51, 'Dodo Press'),
(52, 'Dial Press Trade Paperback'),
(53, 'Simon &amp; Schuster'),
(54, 'Back Bay Books'),
(55, 'Del Rey'),
(56, 'Putnam Adult'),
(57, 'Harper'),
(58, 'National Geographic'),
(59, 'Jossey-Bass'),
(60, 'Workman Publishing Company'),
(61, 'NavPress Publishing'),
(62, 'Oxford University Press, USA'),
(63, 'Merriam-Webster'),
(64, 'Studio'),
(65, 'Rand McNally &amp; Company'),
(66, 'Guinness World Records'),
(67, 'American Psychological Association (APA)'),
(68, 'Regnery Press'),
(69, 'Tyndale House Publishers, Inc.'),
(70, 'Union for Reform Judaism'),
(71, 'New Harbinger'),
(72, 'Broadway'),
(73, 'Berkley'),
(74, 'Pocket'),
(75, 'Princeton University Press'),
(76, 'Scholastic Press'),
(77, 'Spectra'),
(78, 'Roc Trade'),
(79, 'Doubleday'),
(80, 'Gollancz'),
(81, 'Orbit'),
(82, 'Tor Books'),
(83, 'Houghton Mifflin'),
(84, 'Stewart, Tabori &amp; Chang'),
(85, 'Voyageur Press'),
(86, 'Smithsonian'),
(87, 'KCI Sports Publishing'),
(88, 'Little, Brown Books for Young Readers'),
(89, 'Delacorte Books for Young Readers'),
(90, 'Frommers'),
(91, 'Xlibris Corporation');

-- --------------------------------------------------------

--
-- Table structure for table `tblreviews`
--

CREATE TABLE `tblreviews` (
  `isbn` char(16) NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `stars` tinyint(1) UNSIGNED NOT NULL,
  `reviewText` varchar(2000) DEFAULT NULL,
  `timePosted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblreviews`
--

INSERT INTO `tblreviews` (`isbn`, `userId`, `stars`, `reviewText`, `timePosted`) VALUES
('0061929379', 7, 5, 'What in Davy Jones’ locker did ye just bark at me, ye scurvy bilgerat? I’ll have ye know I be the meanest cutthroat on the seven seas, and I’ve led numerous raids on fishing villages, and taken over 300 ships. I be trained in hit-and-run pillaging and be the deadliest with a pistol of all the captains on the high seas. Ye be nothing to me but another source o’ swag. I’ll have yer guts for garters and keel haul ye like never been done before, hear me true. You think ye can hide behind your newfangled computing device? Think twice on that, scallywag. As we parley I be contacting my secret network o’ pirates across the sea and yer port is being tracked right now so ye better prepare for the typhoon, weevil. The kind o’ monsoon that’ll wipe ye off the map. You’re sharkbait, fool. I can sail anywhere, in any waters, and can kill ye in o’er seven hundred ways, and that be just with me hook and fist. Not only do I be top o’ the line with a cutlass, but I have an entire pirate fleet at my beck and call and I’ll damned sure use it all to wipe yer arse off o’ the world, ye dog. If only ye had had the foresight to know what devilish wrath your jibe was about to incur, ye might have belayed the comment. But ye couldn’t, ye didn’t, and now ye’ll pay the ultimate toll, you buffoon. I’ll shit fury all over ye and ye’ll drown in the depths o’ it. You’re fish food now, lad.', '2023-05-08 16:54:00'),
('0316042676', 1, 3, 'it was ok.', '2023-05-05 20:15:30'),
('0316042676', 2, 5, 'WAOWWW', '2023-05-05 20:15:30'),
('0316042676', 3, 2, 'eihhh', '2023-05-08 16:27:22'),
('0316042676', 5, 5, 'Tell me. For whom do you fight?\r\n\r\nHmph! How very glib. And do you believe in Eorzea? Eorzea&#039;s unity is forged of falsehoods. Its city-states are built on deceit. And its faith is an instrument of deception.\r\n\r\nIt is naught but a cobweb of lies. To believe in Eorzea is to believe in nothing. In Eorzea, the beast tribes often summon gods to fight in their stead--though your comrades only rarely respond in kind. Which is strange, is it not?\r\n\r\nAre the &quot;Twelve&quot; otherwise engaged? I was given to understand they were your protectors. If you truly believe them your guardians, why do you not repeat the trick that served you so well at Carteneau, and call them down? They will answer--so long as you lavish them with crystals and gorge them on aether. Your gods are no different than those of the beasts--eikons every one. Accept but this, and you will see how Eorzea&#039;s faith is bleeding the land dry.\r\n\r\nNor is this unknown to your masters. Which prompts the question: Why do they cling to these false deities? What drives even men of learning--even the great Louisoix--to grovel at their feet? The answer? Your masters lack the strength to do otherwise! For the world of man to mean anything, man must own the world. To this end, he hath fought ever to raise himself through conflict--to grow rich through conquest. And when the dust of battle settles, is it ever the strong who dictate the fate of the weak.\r\n\r\nKnowing this, but a single path is open to the impotent ruler--that of false worship. A path which leads to enervation and death. Only a man of power can rightly steer the course of civilization. And in this land of creeping mendacity, that one truth will prove its salvation.\r\n\r\nCome, champion of Eorzea, face me! Your defeat shall serve as proof of my readiness to rule! It is only right that I should take your realm. For none among you has the power to stop me!', '2023-05-08 16:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `userId` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`userId`, `email`, `password`) VALUES
(5, 'gaius@garlemald.com', '$2y$10$gb6RVxjYudjaB2FF5Jfr9.Ki9he0MTLnZ0Efo7RWAuuAs85gIMIRS'),
(7, 'im@thecombinationpizzahutandtacobell.com', '$2y$10$bD1.bR2Us/eayjjPaXeZqu82nehCQUh5YHCwEvwfzKLBrsCOll5om'),
(3, 'itsyaboisneaks@gmail.com', '$2y$10$sxEiN.KYlHq1L.qfDdjvceuDJrO4xjt/dTKqag8EV.qxE7ohasbvW'),
(2, 'jasperdavid99@gmail.com', '$2y$10$pr3uHtiMuIzA2bYxtEDYP.J6lNkiKD0OxSOseBwAl.yXuEeHW.IeO'),
(1, 'zapat005@rangers.uwp.edu', '$2y$10$EN5u0bW4dievCOLBnO8D.e9H2vbl5T6qoN7SI6CrGycRtHVCjlT/a'),
(6, 'zapata@uwp.edu', '$2y$10$9x3GGyY5s6eGWFvJyiS8uuEvVyjH3u.m7rUVwLVHDtVhtblBZ3Qli');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`authorId`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `tblbooksauthorsxref`
--
ALTER TABLE `tblbooksauthorsxref`
  ADD PRIMARY KEY (`isbn`,`authorId`),
  ADD KEY `authorId` (`authorId`);

--
-- Indexes for table `tblbooksgenresxref`
--
ALTER TABLE `tblbooksgenresxref`
  ADD PRIMARY KEY (`isbn`,`genreId`),
  ADD KEY `genreId` (`genreId`);

--
-- Indexes for table `tblbookspublishersxref`
--
ALTER TABLE `tblbookspublishersxref`
  ADD PRIMARY KEY (`isbn`,`publisherId`),
  ADD KEY `publisherId` (`publisherId`);

--
-- Indexes for table `tbldemographics`
--
ALTER TABLE `tbldemographics`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tblgenres`
--
ALTER TABLE `tblgenres`
  ADD PRIMARY KEY (`genreId`);

--
-- Indexes for table `tblpublishers`
--
ALTER TABLE `tblpublishers`
  ADD PRIMARY KEY (`publisherId`);

--
-- Indexes for table `tblreviews`
--
ALTER TABLE `tblreviews`
  ADD PRIMARY KEY (`isbn`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `AK_userId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `authorId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tblpublishers`
--
ALTER TABLE `tblpublishers`
  MODIFY `publisherId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `userId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblbooksauthorsxref`
--
ALTER TABLE `tblbooksauthorsxref`
  ADD CONSTRAINT `tblbooksauthorsxref_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `tblbooks` (`isbn`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblbooksauthorsxref_ibfk_2` FOREIGN KEY (`authorId`) REFERENCES `tblauthors` (`authorId`) ON DELETE CASCADE;

--
-- Constraints for table `tblbooksgenresxref`
--
ALTER TABLE `tblbooksgenresxref`
  ADD CONSTRAINT `tblbooksgenresxref_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `tblbooks` (`isbn`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblbooksgenresxref_ibfk_2` FOREIGN KEY (`genreId`) REFERENCES `tblgenres` (`genreId`) ON DELETE CASCADE;

--
-- Constraints for table `tblbookspublishersxref`
--
ALTER TABLE `tblbookspublishersxref`
  ADD CONSTRAINT `tblbookspublishersxref_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `tblbooks` (`isbn`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblbookspublishersxref_ibfk_2` FOREIGN KEY (`publisherId`) REFERENCES `tblpublishers` (`publisherId`) ON DELETE CASCADE;

--
-- Constraints for table `tbldemographics`
--
ALTER TABLE `tbldemographics`
  ADD CONSTRAINT `tbldemographics_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `tblusers` (`userId`) ON DELETE CASCADE;

--
-- Constraints for table `tblreviews`
--
ALTER TABLE `tblreviews`
  ADD CONSTRAINT `tblreviews_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `tblusers` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblreviews_ibfk_2` FOREIGN KEY (`isbn`) REFERENCES `tblbooks` (`isbn`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
