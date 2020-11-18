-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2020 at 06:35 PM
-- Server version: 8.0.20
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rad7eu_yugioh`
--

-- --------------------------------------------------------

--
-- Table structure for table `Booster_Packs`
--

CREATE TABLE `Booster_Packs` (
  `BP_ID` int NOT NULL,
  `card_ID` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Booster_Packs`
--

INSERT INTO `Booster_Packs` (`BP_ID`, `card_ID`, `name`) VALUES
(0, 50913601, 'Spell Card Pack'),
(0, 77007920, 'Spell Card Pack'),
(0, 77027445, 'Spell Card Pack'),
(0, 82542267, 'Spell Card Pack'),
(0, 98252586, 'Spell Card Pack'),
(1, 4206964, 'Trap Card Pack'),
(1, 50045299, 'Trap Card Pack'),
(1, 83887306, 'Trap Card Pack'),
(2, 7089711, 'Monster Card Pack'),
(2, 33396948, 'Monster Card Pack'),
(2, 38142739, 'Monster Card Pack'),
(2, 56342351, 'Monster Card Pack'),
(2, 58528964, 'Monster Card Pack'),
(2, 85326399, 'Monster Card Pack');

-- --------------------------------------------------------

--
-- Table structure for table `Cards`
--

CREATE TABLE `Cards` (
  `card_ID` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Cards`
--

INSERT INTO `Cards` (`card_ID`, `name`) VALUES
(32864, 'The 13th Grave'),
(1435851, 'Dragon Treasure'),
(1557499, 'Silver Bow and Arrow'),
(1641882, 'Fusionist'),
(1784619, 'Uraby'),
(2863439, 'Fiend Reflection #2'),
(4206964, 'Trap Hole'),
(4614116, 'Dark Energy'),
(6368038, 'Gaia The Fierce Knight'),
(7089711, 'Hane-Hane'),
(7902349, 'Left Arm of the Forbidden One'),
(8124921, 'Right Leg of the Forbidden One'),
(9076207, 'Armed Ninja'),
(9159938, 'Dark Gray'),
(9293977, 'Metal Dragon'),
(10202894, 'Skull Red Bird'),
(11868825, 'Goblin\'s Secret Remedy'),
(12580477, 'Raigeki'),
(13039848, 'Giant Soldier of Stone'),
(15025844, 'Mystical Elf'),
(15052462, 'Violet Crystal'),
(15401633, 'Kagemusha of the Blue Flame'),
(16353197, 'Drooling Lizard'),
(17535588, 'Armored Starfish'),
(17881964, 'Darkfire Dragon'),
(18710707, 'The Furious Sea King'),
(20060230, 'Hard Armor'),
(22702055, 'Umi'),
(22910685, 'Green Phantom King'),
(23424603, 'Wasteland'),
(24094653, 'Polymerization'),
(25769732, 'Machine Conversion Factory'),
(28279543, 'Curse of Dragon'),
(29172562, 'Steel Ogre Grotto #1'),
(32274490, 'Skull Servant'),
(32452818, 'Beaver Warrior'),
(33064647, 'One-Eyed Shield Dragon'),
(33066139, 'Reaper of the Cards'),
(33178416, 'Misairuzame'),
(33396948, 'Exodia the Forbidden One'),
(34460851, 'Flame Manipulator'),
(36121917, 'Monster Egg'),
(36304921, 'Witty Phantom'),
(36607978, 'Mystical Moon'),
(37313348, 'Turtle Tiger'),
(37421579, 'Charubin the Fire Knight'),
(37820550, 'Electro-Whip'),
(38142739, 'Petit Angel'),
(38199696, 'Red Medicine'),
(39004808, 'Root Water'),
(39111158, 'Tri-Horned Dragon'),
(39774685, 'Vile Germs'),
(40374923, 'Mammoth Graveyard'),
(40826495, 'Dissolverock'),
(43500484, 'Darkworld Thorns'),
(44287299, 'Masaki the Legendary Swordsman'),
(44519536, 'Left Leg of the Forbidden One'),
(45042329, 'Tripwire Beast'),
(45231177, 'Flame Swordsman'),
(46009906, 'Beast Fangs'),
(46130346, 'Hinotama'),
(46986414, 'Dark Magician'),
(50045299, 'Dragon Capture Jar'),
(50913601, 'Mountain'),
(51267887, 'Raise Body Heat'),
(51482758, 'Remove Trap'),
(53129443, 'Dark Hole'),
(53153481, 'Armaill'),
(53293545, 'Firegrass'),
(53375573, 'Dark King of the Abyss'),
(54541900, 'Karbonala Warrior'),
(54652250, 'Man-Eater Bug'),
(55144522, 'Pot of Greed'),
(55291359, 'Succubus Knight'),
(55444629, 'Lesser Dragon'),
(56283725, 'Kumootoko'),
(56342351, 'M-Warrior #1'),
(57305373, 'Two-Mouth Darkruler'),
(58528964, 'Flame Ghost'),
(59197169, 'Yami'),
(61854111, 'Legendary Sword'),
(63102017, 'Stop Defense'),
(63308047, 'Terra the Terrible'),
(66788016, 'Fissure'),
(66889139, 'Gaia the Dragon Champion'),
(70681994, 'Dragoness the Wicked Knight'),
(70903634, 'Right Arm of the Forbidden One'),
(71407486, 'Fireyarou'),
(72302403, 'Swords of Revealing Light'),
(72842870, 'Tyhone'),
(73051941, 'Sand Stone'),
(73134082, 'Final Flame'),
(74677422, 'Red-Eyes Black Dragon'),
(75356564, 'Petit Dragon'),
(75376965, 'Enchanting Mermaid'),
(76103675, 'Sparks'),
(76184692, 'Hitotsu-Me Giant'),
(76211194, 'Meda Bat'),
(77007920, 'Laser Cannon Armor'),
(77027445, 'Power of Kaishin'),
(77827521, 'Trial of Nightmare'),
(80770678, 'Spirit of the Harp'),
(82542267, 'Gravedigger Ghoul'),
(83464209, 'Mystical Sheep #2'),
(83764718, 'Monster Reborn'),
(83887306, 'Two-Pronged Attack'),
(84686841, 'King Fog'),
(85309439, 'Ray & Temperature'),
(85326399, 'Spike Seadra'),
(85639257, 'Aqua Madoor'),
(85705804, 'Kurama'),
(86318356, 'Sogen'),
(87430998, 'Forest'),
(89091579, 'Basic Insect'),
(89631139, 'Blue-Eyes White Dragon'),
(90357090, 'Silver Fang'),
(90963488, 'Nemuriko'),
(91152256, 'Celtic Guardian'),
(91595718, 'Book of Secret Arts'),
(92731455, 'M-Warrior #2'),
(93553943, 'Man Eater'),
(94675535, 'Larvas'),
(95952802, 'Flower Wolf'),
(96851799, 'Hinotama Soul'),
(98252586, 'Follow Wind'),
(98818516, 'Frenzied Panda');

-- --------------------------------------------------------

--
-- Table structure for table `Card_image`
--

CREATE TABLE `Card_image` (
  `card_ID` int NOT NULL,
  `image_URL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Card_image`
--

INSERT INTO `Card_image` (`card_ID`, `image_URL`) VALUES
(32864, 'https://storage.googleapis.com/ygoprodeck.com/pics/32864.jpg'),
(1435851, 'https://storage.googleapis.com/ygoprodeck.com/pics/1435851.jpg'),
(1557499, 'https://storage.googleapis.com/ygoprodeck.com/pics/1557499.jpg'),
(1641882, 'https://storage.googleapis.com/ygoprodeck.com/pics/1641882.jpg'),
(1784619, 'https://storage.googleapis.com/ygoprodeck.com/pics/1784619.jpg'),
(2863439, 'https://storage.googleapis.com/ygoprodeck.com/pics/2863439.jpg'),
(4206964, 'https://storage.googleapis.com/ygoprodeck.com/pics/4206964.jpg'),
(4614116, 'https://storage.googleapis.com/ygoprodeck.com/pics/4614116.jpg'),
(6368038, 'https://storage.googleapis.com/ygoprodeck.com/pics/6368038.jpg'),
(7089711, 'https://storage.googleapis.com/ygoprodeck.com/pics/7089711.jpg'),
(7902349, 'https://storage.googleapis.com/ygoprodeck.com/pics/7902349.jpg'),
(8124921, 'https://storage.googleapis.com/ygoprodeck.com/pics/8124921.jpg'),
(9076207, 'https://storage.googleapis.com/ygoprodeck.com/pics/9076207.jpg'),
(9159938, 'https://storage.googleapis.com/ygoprodeck.com/pics/9159938.jpg'),
(9293977, 'https://storage.googleapis.com/ygoprodeck.com/pics/9293977.jpg'),
(10202894, 'https://storage.googleapis.com/ygoprodeck.com/pics/10202894.jpg'),
(11868825, 'https://storage.googleapis.com/ygoprodeck.com/pics/11868825.jpg'),
(12580477, 'https://storage.googleapis.com/ygoprodeck.com/pics/12580477.jpg'),
(13039848, 'https://storage.googleapis.com/ygoprodeck.com/pics/13039848.jpg'),
(15025844, 'https://storage.googleapis.com/ygoprodeck.com/pics/15025844.jpg'),
(15052462, 'https://storage.googleapis.com/ygoprodeck.com/pics/15052462.jpg'),
(15401633, 'https://storage.googleapis.com/ygoprodeck.com/pics/15401633.jpg'),
(16353197, 'https://storage.googleapis.com/ygoprodeck.com/pics/16353197.jpg'),
(17535588, 'https://storage.googleapis.com/ygoprodeck.com/pics/17535588.jpg'),
(17881964, 'https://storage.googleapis.com/ygoprodeck.com/pics/17881964.jpg'),
(18710707, 'https://storage.googleapis.com/ygoprodeck.com/pics/18710707.jpg'),
(20060230, 'https://storage.googleapis.com/ygoprodeck.com/pics/20060230.jpg'),
(22702055, 'https://storage.googleapis.com/ygoprodeck.com/pics/22702055.jpg'),
(22910685, 'https://storage.googleapis.com/ygoprodeck.com/pics/22910685.jpg'),
(23424603, 'https://storage.googleapis.com/ygoprodeck.com/pics/23424603.jpg'),
(24094653, 'https://storage.googleapis.com/ygoprodeck.com/pics/24094653.jpg'),
(25769732, 'https://storage.googleapis.com/ygoprodeck.com/pics/25769732.jpg'),
(28279543, 'https://storage.googleapis.com/ygoprodeck.com/pics/28279543.jpg'),
(29172562, 'https://storage.googleapis.com/ygoprodeck.com/pics/29172562.jpg'),
(32274490, 'https://storage.googleapis.com/ygoprodeck.com/pics/32274490.jpg'),
(32452818, 'https://storage.googleapis.com/ygoprodeck.com/pics/32452818.jpg'),
(33064647, 'https://storage.googleapis.com/ygoprodeck.com/pics/33064647.jpg'),
(33066139, 'https://storage.googleapis.com/ygoprodeck.com/pics/33066139.jpg'),
(33178416, 'https://storage.googleapis.com/ygoprodeck.com/pics/33178416.jpg'),
(33396948, 'https://storage.googleapis.com/ygoprodeck.com/pics/33396948.jpg'),
(34460851, 'https://storage.googleapis.com/ygoprodeck.com/pics/34460851.jpg'),
(36121917, 'https://storage.googleapis.com/ygoprodeck.com/pics/36121917.jpg'),
(36304921, 'https://storage.googleapis.com/ygoprodeck.com/pics/36304921.jpg'),
(36607978, 'https://storage.googleapis.com/ygoprodeck.com/pics/36607978.jpg'),
(37313348, 'https://storage.googleapis.com/ygoprodeck.com/pics/37313348.jpg'),
(37421579, 'https://storage.googleapis.com/ygoprodeck.com/pics/37421579.jpg'),
(37820550, 'https://storage.googleapis.com/ygoprodeck.com/pics/37820550.jpg'),
(38142739, 'https://storage.googleapis.com/ygoprodeck.com/pics/38142739.jpg'),
(38199696, 'https://storage.googleapis.com/ygoprodeck.com/pics/38199696.jpg'),
(39004808, 'https://storage.googleapis.com/ygoprodeck.com/pics/39004808.jpg'),
(39111158, 'https://storage.googleapis.com/ygoprodeck.com/pics/39111158.jpg'),
(39774685, 'https://storage.googleapis.com/ygoprodeck.com/pics/39774685.jpg'),
(40374923, 'https://storage.googleapis.com/ygoprodeck.com/pics/40374923.jpg'),
(40826495, 'https://storage.googleapis.com/ygoprodeck.com/pics/40826495.jpg'),
(43500484, 'https://storage.googleapis.com/ygoprodeck.com/pics/43500484.jpg'),
(44287299, 'https://storage.googleapis.com/ygoprodeck.com/pics/44287299.jpg'),
(44519536, 'https://storage.googleapis.com/ygoprodeck.com/pics/44519536.jpg'),
(45042329, 'https://storage.googleapis.com/ygoprodeck.com/pics/45042329.jpg'),
(45231177, 'https://storage.googleapis.com/ygoprodeck.com/pics/45231177.jpg'),
(46009906, 'https://storage.googleapis.com/ygoprodeck.com/pics/46009906.jpg'),
(46130346, 'https://storage.googleapis.com/ygoprodeck.com/pics/46130346.jpg'),
(46986414, 'https://storage.googleapis.com/ygoprodeck.com/pics/46986414.jpg'),
(50045299, 'https://storage.googleapis.com/ygoprodeck.com/pics/50045299.jpg'),
(50913601, 'https://storage.googleapis.com/ygoprodeck.com/pics/50913601.jpg'),
(51267887, 'https://storage.googleapis.com/ygoprodeck.com/pics/51267887.jpg'),
(51482758, 'https://storage.googleapis.com/ygoprodeck.com/pics/51482758.jpg'),
(53129443, 'https://storage.googleapis.com/ygoprodeck.com/pics/53129443.jpg'),
(53153481, 'https://storage.googleapis.com/ygoprodeck.com/pics/53153481.jpg'),
(53293545, 'https://storage.googleapis.com/ygoprodeck.com/pics/53293545.jpg'),
(53375573, 'https://storage.googleapis.com/ygoprodeck.com/pics/53375573.jpg'),
(54541900, 'https://storage.googleapis.com/ygoprodeck.com/pics/54541900.jpg'),
(54652250, 'https://storage.googleapis.com/ygoprodeck.com/pics/54652250.jpg'),
(55144522, 'https://storage.googleapis.com/ygoprodeck.com/pics/55144522.jpg'),
(55291359, 'https://storage.googleapis.com/ygoprodeck.com/pics/55291359.jpg'),
(55444629, 'https://storage.googleapis.com/ygoprodeck.com/pics/55444629.jpg'),
(56283725, 'https://storage.googleapis.com/ygoprodeck.com/pics/56283725.jpg'),
(56342351, 'https://storage.googleapis.com/ygoprodeck.com/pics/56342351.jpg'),
(57305373, 'https://storage.googleapis.com/ygoprodeck.com/pics/57305373.jpg'),
(58528964, 'https://storage.googleapis.com/ygoprodeck.com/pics/58528964.jpg'),
(59197169, 'https://storage.googleapis.com/ygoprodeck.com/pics/59197169.jpg'),
(61854111, 'https://storage.googleapis.com/ygoprodeck.com/pics/61854111.jpg'),
(63102017, 'https://storage.googleapis.com/ygoprodeck.com/pics/63102017.jpg'),
(63308047, 'https://storage.googleapis.com/ygoprodeck.com/pics/63308047.jpg'),
(66788016, 'https://storage.googleapis.com/ygoprodeck.com/pics/66788016.jpg'),
(66889139, 'https://storage.googleapis.com/ygoprodeck.com/pics/66889139.jpg'),
(70681994, 'https://storage.googleapis.com/ygoprodeck.com/pics/70681994.jpg'),
(70903634, 'https://storage.googleapis.com/ygoprodeck.com/pics/70903634.jpg'),
(71407486, 'https://storage.googleapis.com/ygoprodeck.com/pics/71407486.jpg'),
(72302403, 'https://storage.googleapis.com/ygoprodeck.com/pics/72302403.jpg'),
(72842870, 'https://storage.googleapis.com/ygoprodeck.com/pics/72842870.jpg'),
(73051941, 'https://storage.googleapis.com/ygoprodeck.com/pics/73051941.jpg'),
(73134082, 'https://storage.googleapis.com/ygoprodeck.com/pics/73134082.jpg'),
(74677422, 'https://storage.googleapis.com/ygoprodeck.com/pics/74677422.jpg'),
(75356564, 'https://storage.googleapis.com/ygoprodeck.com/pics/75356564.jpg'),
(75376965, 'https://storage.googleapis.com/ygoprodeck.com/pics/75376965.jpg'),
(76103675, 'https://storage.googleapis.com/ygoprodeck.com/pics/76103675.jpg'),
(76184692, 'https://storage.googleapis.com/ygoprodeck.com/pics/76184692.jpg'),
(76211194, 'https://storage.googleapis.com/ygoprodeck.com/pics/76211194.jpg'),
(77007920, 'https://storage.googleapis.com/ygoprodeck.com/pics/77007920.jpg'),
(77027445, 'https://storage.googleapis.com/ygoprodeck.com/pics/77027445.jpg'),
(77827521, 'https://storage.googleapis.com/ygoprodeck.com/pics/77827521.jpg'),
(80770678, 'https://storage.googleapis.com/ygoprodeck.com/pics/80770678.jpg'),
(82542267, 'https://storage.googleapis.com/ygoprodeck.com/pics/82542267.jpg'),
(83464209, 'https://storage.googleapis.com/ygoprodeck.com/pics/83464209.jpg'),
(83764718, 'https://storage.googleapis.com/ygoprodeck.com/pics/83764718.jpg'),
(83887306, 'https://storage.googleapis.com/ygoprodeck.com/pics/83887306.jpg'),
(84686841, 'https://storage.googleapis.com/ygoprodeck.com/pics/84686841.jpg'),
(85309439, 'https://storage.googleapis.com/ygoprodeck.com/pics/85309439.jpg'),
(85326399, 'https://storage.googleapis.com/ygoprodeck.com/pics/85326399.jpg'),
(85639257, 'https://storage.googleapis.com/ygoprodeck.com/pics/85639257.jpg'),
(85705804, 'https://storage.googleapis.com/ygoprodeck.com/pics/85705804.jpg'),
(86318356, 'https://storage.googleapis.com/ygoprodeck.com/pics/86318356.jpg'),
(87430998, 'https://storage.googleapis.com/ygoprodeck.com/pics/87430998.jpg'),
(89091579, 'https://storage.googleapis.com/ygoprodeck.com/pics/89091579.jpg'),
(89631139, 'https://storage.googleapis.com/ygoprodeck.com/pics/89631139.jpg'),
(90357090, 'https://storage.googleapis.com/ygoprodeck.com/pics/90357090.jpg'),
(90963488, 'https://storage.googleapis.com/ygoprodeck.com/pics/90963488.jpg'),
(91152256, 'https://storage.googleapis.com/ygoprodeck.com/pics/91152256.jpg'),
(91595718, 'https://storage.googleapis.com/ygoprodeck.com/pics/91595718.jpg'),
(92731455, 'https://storage.googleapis.com/ygoprodeck.com/pics/92731455.jpg'),
(93553943, 'https://storage.googleapis.com/ygoprodeck.com/pics/93553943.jpg'),
(94675535, 'https://storage.googleapis.com/ygoprodeck.com/pics/94675535.jpg'),
(95952802, 'https://storage.googleapis.com/ygoprodeck.com/pics/95952802.jpg'),
(96851799, 'https://storage.googleapis.com/ygoprodeck.com/pics/96851799.jpg'),
(98252586, 'https://storage.googleapis.com/ygoprodeck.com/pics/98252586.jpg'),
(98818516, 'https://storage.googleapis.com/ygoprodeck.com/pics/98818516.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Card_name`
--

CREATE TABLE `Card_name` (
  `card_ID` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `race` varchar(255) DEFAULT NULL,
  `card_desc` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Card_name`
--

INSERT INTO `Card_name` (`card_ID`, `name`, `type`, `race`, `card_desc`) VALUES
(32864, 'The 13th Grave', 'Normal Monster', 'Zombie', 'A zombie that suddenly appeared from plot #13 - an empty grave.'),
(1435851, 'Dragon Treasure', 'Spell Card', 'Equip', 'A Dragon-Type monster equipped with this card increases its ATK and DEF by 300 points.'),
(1557499, 'Silver Bow and Arrow', 'Spell Card', 'Equip', 'A Fairy-Type monster equipped with this card increases its ATK and DEF by 300 points.'),
(1641882, 'Fusionist', 'Fusion Monster', 'Beast', '\"Petit Angel\" + \"Mystical Sheep #2\"'),
(1784619, 'Uraby', 'Normal Monster', 'Dinosaur', 'Fast on its feet, this dinosaur rips enemies to shreds with its sharp claws.'),
(2863439, 'Fiend Reflection #2', 'Normal Monster', 'Winged Beast', 'A bird-beast that summons reinforcements with a hand mirror.'),
(4206964, 'Trap Hole', 'Trap Card', 'Normal', 'When your opponent Normal or Flip Summons 1 monster with 1000 or more ATK: Target that monster; destroy that target.'),
(4614116, 'Dark Energy', 'Spell Card', 'Equip', 'Increase the ATK and DEF of a Fiend-Type monster equipped with this card by 300 points.'),
(6368038, 'Gaia The Fierce Knight', 'Normal Monster', 'Warrior', 'A knight whose horse travels faster than the wind. His battle-charge is a force to be reckoned with.'),
(7089711, 'Hane-Hane', 'Flip Effect Monster', 'Beast', 'FLIP: Select 1 monster on the field and return it to its owner\'s hand.'),
(7902349, 'Left Arm of the Forbidden One', 'Normal Monster', 'Spellcaster', 'A forbidden left arm sealed by magic. Whosoever breaks this seal will know infinite power.'),
(8124921, 'Right Leg of the Forbidden One', 'Normal Monster', 'Spellcaster', 'A forbidden right leg sealed by magic. Whosoever breaks this seal will know infinite power.'),
(9076207, 'Armed Ninja', 'Flip Effect Monster', 'Warrior', 'FLIP: Target 1 Spell Card on the field; destroy that target. (If the target is Set, reveal it, and destroy it if it is a Spell Card. Otherwise, return it to its original position.)'),
(9159938, 'Dark Gray', 'Normal Monster', 'Beast', 'Entirely gray, this beast has rarely been seen by mortal eyes.'),
(9293977, 'Metal Dragon', 'Fusion Monster', 'Machine', '\"Steel Ogre Grotto #1\" + \"Lesser Dragon\"'),
(10202894, 'Skull Red Bird', 'Normal Monster', 'Winged Beast', 'This monster swoops down and attacks with a rain of knives stored in its wings.'),
(11868825, 'Goblin\'s Secret Remedy', 'Spell Card', 'Normal', 'Increase your Life Points by 600 points.'),
(12580477, 'Raigeki', 'Spell Card', 'Normal', 'Destroy all monsters your opponent controls.'),
(13039848, 'Giant Soldier of Stone', 'Normal Monster', 'Rock', 'A giant warrior made of stone. A punch from this creature has earth-shaking results.'),
(15025844, 'Mystical Elf', 'Normal Monster', 'Spellcaster', 'A delicate elf that lacks offense, but has a terrific defense backed by mystical power.'),
(15052462, 'Violet Crystal', 'Spell Card', 'Equip', '(This card is not treated as a \"Crystal\" card.) Equip only to a Zombie monster. It gains 300 ATK/DEF.'),
(15401633, 'Kagemusha of the Blue Flame', 'Normal Monster', 'Warrior', 'Serving as a double for the Ruler of the Blue Flame, he\'s a master swordsman that wields a fine blade.'),
(16353197, 'Drooling Lizard', 'Normal Monster', 'Reptile', 'A blood-sucking snake in human form that attacks any living being that passes nearby.'),
(17535588, 'Armored Starfish', 'Normal Monster', 'Aqua', 'A bluish starfish with a solid hide capable of fending off attacks.'),
(17881964, 'Darkfire Dragon', 'Fusion Monster', 'Dragon', '\"Firegrass\" + \"Petit Dragon\"'),
(18710707, 'The Furious Sea King', 'Normal Monster', 'Aqua', 'Grand King of the Seven Seas, he\'s able to summon massive tidal waves to drown the enemy.'),
(20060230, 'Hard Armor', 'Normal Monster', 'Warrior', 'A living suit of armor that attacks enemies with a bone-jarring tackle.'),
(22702055, 'Umi', 'Spell Card', 'Field', 'All Fish, Sea Serpent, Thunder, and Aqua monsters on the field gain 200 ATK/DEF, also all Machine and Pyro monsters on the field lose 200 ATK/DEF.'),
(22910685, 'Green Phantom King', 'Normal Monster', 'Plant', 'This youthful king of the forests lives in a green world, abundant with trees and wildlife.'),
(23424603, 'Wasteland', 'Spell Card', 'Field', 'All Dinosaur, Zombie, and Rock monsters on the field gain 200 ATK/DEF.'),
(24094653, 'Polymerization', 'Spell Card', 'Normal', 'Fusion Summon 1 Fusion Monster from your Extra Deck, using monsters from your hand or field as Fusion Material.'),
(25769732, 'Machine Conversion Factory', 'Spell Card', 'Equip', 'Equip only to a Machine monster. It gains 300 ATK/DEF.'),
(28279543, 'Curse of Dragon', 'Normal Monster', 'Dragon', 'A wicked dragon that taps into dark forces to execute a powerful attack.'),
(29172562, 'Steel Ogre Grotto #1', 'Normal Monster', 'Machine', 'A steel idol worshipped in the Land of Machines.'),
(32274490, 'Skull Servant', 'Normal Monster', 'Zombie', 'A skeletal ghost that isn\'t strong but can mean trouble in large numbers.'),
(32452818, 'Beaver Warrior', 'Normal Monster', 'Beast-Warrior', 'What this creature lacks in size it makes up for in defense when battling in the prairie.'),
(33064647, 'One-Eyed Shield Dragon', 'Normal Monster', 'Dragon', 'This dragon wears a shield not only for its own protection, but also for ramming its enemies.'),
(33066139, 'Reaper of the Cards', 'Flip Effect Monster', 'Fiend', 'FLIP: Select 1 Trap Card on the field and destroy it. If the selected card is Set, pick up and see the card. If it is a Trap Card, it is destroyed. If it is a Spell Card, return it to its original position.'),
(33178416, 'Misairuzame', 'Normal Monster', 'Fish', 'A missile-launching fish protected by deadly spikes.'),
(33396948, 'Exodia the Forbidden One', 'Effect Monster', 'Spellcaster', 'If you have \"Right Leg of the Forbidden One\", \"Left Leg of the Forbidden One\", \"Right Arm of the Forbidden One\" and \"Left Arm of the Forbidden One\" in addition to this card in your hand, you win the Duel.'),
(34460851, 'Flame Manipulator', 'Normal Monster', 'Spellcaster', 'This Spellcaster attacks enemies with fire-related spells such as \"Sea of Flames\" and \"Wall of Fire\".'),
(36121917, 'Monster Egg', 'Normal Monster', 'Warrior', 'A warrior hidden within an egg that attacks enemies by flinging eggshells.'),
(36304921, 'Witty Phantom', 'Normal Monster', 'Fiend', 'Dressed in a night-black tuxedo, this creature presides over the darkness.'),
(36607978, 'Mystical Moon', 'Spell Card', 'Equip', 'Equip only to a Beast-Warrior-Type monster. It gains 300 ATK and DEF.'),
(37313348, 'Turtle Tiger', 'Normal Monster', 'Aqua', 'A tiger encased in a protective shell that attacks with razor-sharp fangs.'),
(37421579, 'Charubin the Fire Knight', 'Fusion Monster', 'Pyro', '\"Monster Egg\" + \"Hinotama Soul\"'),
(37820550, 'Electro-Whip', 'Spell Card', 'Equip', 'Increase the ATK and DEF of a Thunder-Type monster equipped with this card by 300 points.'),
(38142739, 'Petit Angel', 'Normal Monster', 'Fairy', 'A quick-moving and tiny fairy that\'s very difficult to hit.'),
(38199696, 'Red Medicine', 'Spell Card', 'Normal', 'Increase your Life Points by 500 points.'),
(39004808, 'Root Water', 'Normal Monster', 'Fish', 'An amphibian capable of calling up a massive tidal wave from the dark seas to wipe out enemy monsters.'),
(39111158, 'Tri-Horned Dragon', 'Normal Monster', 'Dragon', 'An unworthy dragon with three sharp horns sprouting from its head.'),
(39774685, 'Vile Germs', 'Spell Card', 'Equip', 'A Plant-Type monster equipped with this card increases its ATK and DEF by 300 points.'),
(40374923, 'Mammoth Graveyard', 'Normal Monster', 'Dinosaur', 'A mammoth that protects the graves of its pack and is absolutely merciless when facing grave-robbers.'),
(40826495, 'Dissolverock', 'Normal Monster', 'Rock', 'A monster born in the lava pits, it generates intense heat that can melt away its enemies.'),
(43500484, 'Darkworld Thorns', 'Normal Monster', 'Plant', 'A thorny plant found in the darklands that wraps itself around any unwary traveler.'),
(44287299, 'Masaki the Legendary Swordsman', 'Normal Monster', 'Warrior', 'Legendary swordmaster Masaki is a veteran of over 100 battles.'),
(44519536, 'Left Leg of the Forbidden One', 'Normal Monster', 'Spellcaster', 'A forbidden left leg sealed by magic. Whosoever breaks this seal will know infinite power.'),
(45042329, 'Tripwire Beast', 'Normal Monster', 'Thunder', 'This creature attacks with electromagnetic waves.'),
(45231177, 'Flame Swordsman', 'Fusion Monster', 'Warrior', '\"Flame Manipulator\" + \"Masaki the Legendary Swordsman\"'),
(46009906, 'Beast Fangs', 'Spell Card', 'Equip', 'A Beast-Type monster equipped with this card increases its ATK and DEF by 300 points.'),
(46130346, 'Hinotama', 'Spell Card', 'Normal', 'Inflict 500 damage to your opponent.'),
(46986414, 'Dark Magician', 'Normal Monster', 'Spellcaster', 'The ultimate wizard in terms of attack and defense.'),
(50045299, 'Dragon Capture Jar', 'Trap Card', 'Continuous', 'Change all face-up Dragon-Type monsters on the field to Defense Position, also they cannot change their battle positions.'),
(50913601, 'Mountain', 'Spell Card', 'Field', 'All Dragon, Winged Beast, and Thunder monsters on the field gain 200 ATK/DEF.'),
(51267887, 'Raise Body Heat', 'Spell Card', 'Equip', 'Equip only to a Dinosaur monster. It gains 300 ATK/DEF.'),
(51482758, 'Remove Trap', 'Spell Card', 'Normal', 'Select 1 face-up Trap Card on the field and destroy it.'),
(53129443, 'Dark Hole', 'Spell Card', 'Normal', 'Destroy all monsters on the field.'),
(53153481, 'Armaill', 'Normal Monster', 'Warrior', 'A strange warrior who manipulates three deadly blades with both hands and his tail.'),
(53293545, 'Firegrass', 'Normal Monster', 'Plant', 'A fire-breathing plant found growing near volcanoes.'),
(53375573, 'Dark King of the Abyss', 'Normal Monster', 'Fiend', 'It\'s said that this King of the Netherworld once had the power to rule over the dark.'),
(54541900, 'Karbonala Warrior', 'Fusion Monster', 'Warrior', '\"M-Warrior #1\" + \"M-Warrior #2\"'),
(54652250, 'Man-Eater Bug', 'Flip Effect Monster', 'Insect', 'FLIP: Target 1 monster on the field; destroy it.'),
(55144522, 'Pot of Greed', 'Spell Card', 'Normal', 'Draw 2 cards.'),
(55291359, 'Succubus Knight', 'Normal Monster', 'Warrior', 'A warrior wizard adept in casting bone-chilling spells.'),
(55444629, 'Lesser Dragon', 'Normal Monster', 'Dragon', 'A minor dragon incapable of breathing fire.'),
(56283725, 'Kumootoko', 'Normal Monster', 'Insect', 'A massive, intelligent spider that traps enemies with webbing.'),
(56342351, 'M-Warrior #1', 'Normal Monster', 'Warrior', 'Specializing in combination attacks, this warrior uses magnetism to block an enemy\'s escape.'),
(57305373, 'Two-Mouth Darkruler', 'Normal Monster', 'Dinosaur', 'A dinosaur with two deadly jaws, it stores electricity in its horn and releases high voltage bolts from the mouth on its back.'),
(58528964, 'Flame Ghost', 'Fusion Monster', 'Zombie', '\"Skull Servant\" + \"Dissolverock\"'),
(59197169, 'Yami', 'Spell Card', 'Field', 'All Fiend and Spellcaster monsters on the field gain 200 ATK/DEF, also all Fairy monsters on the field lose 200 ATK/DEF.'),
(61854111, 'Legendary Sword', 'Spell Card', 'Equip', 'Equip only to a Warrior monster. It gains 300 ATK/DEF.'),
(63102017, 'Stop Defense', 'Spell Card', 'Normal', 'Select 1 Defense Position monster on your opponent\'s side of the field and change it to Attack Position.'),
(63308047, 'Terra the Terrible', 'Normal Monster', 'Fiend', 'Known as a swamp dweller, this creature is a minion of the dark forces.'),
(66788016, 'Fissure', 'Spell Card', 'Normal', 'Destroy the 1 face-up monster your opponent controls that has the lowest ATK (your choice, if tied).'),
(66889139, 'Gaia the Dragon Champion', 'Fusion Monster', 'Dragon', '\"Gaia The Fierce Knight\" + \"Curse of Dragon\"'),
(70681994, 'Dragoness the Wicked Knight', 'Fusion Monster', 'Warrior', '\"Armaill\" + \"One-Eyed Shield Dragon\"'),
(70903634, 'Right Arm of the Forbidden One', 'Normal Monster', 'Spellcaster', 'A forbidden right arm sealed by magic. Whosoever breaks this seal will know infinite power.'),
(71407486, 'Fireyarou', 'Normal Monster', 'Pyro', 'A malevolent creature wrapped in flames that attacks enemies with intense fire.'),
(72302403, 'Swords of Revealing Light', 'Spell Card', 'Normal', 'After this card\'s activation, it remains on the field, but you must destroy it during the End Phase of your opponent\'s 3rd turn. When this card is activated: If your opponent controls a face-down monster, flip all monsters they control face-up. While this card is face-up on the field, your opponent\'s monsters cannot declare an attack.'),
(72842870, 'Tyhone', 'Normal Monster', 'Winged Beast', 'Capable of firing cannonballs from its mouth for long-range attacks, this creature is particularly effective in mountain battles.'),
(73051941, 'Sand Stone', 'Normal Monster', 'Rock', 'Appears from underground and attacks with long, snake-like tentacles.'),
(73134082, 'Final Flame', 'Spell Card', 'Normal', 'Inflict 600 points of damage to your opponent\'s Life Points.'),
(74677422, 'Red-Eyes Black Dragon', 'Normal Monster', 'Dragon', 'A ferocious dragon with a deadly attack.'),
(75356564, 'Petit Dragon', 'Normal Monster', 'Dragon', 'A very small dragon known for its vicious attacks.'),
(75376965, 'Enchanting Mermaid', 'Normal Monster', 'Fish', 'A beautiful mermaid that lures voyagers to a watery grave.'),
(76103675, 'Sparks', 'Spell Card', 'Normal', 'Inflict 200 points of damage to your opponent\'s Life Points.'),
(76184692, 'Hitotsu-Me Giant', 'Normal Monster', 'Beast-Warrior', 'A one-eyed behemoth with thick, powerful arms made for delivering punishing blows.'),
(76211194, 'Meda Bat', 'Normal Monster', 'Fiend', 'An eyeball fiend created by a servant of the wicked, it uses \"Dark Blasts\" to blow away its enemies.'),
(77007920, 'Laser Cannon Armor', 'Spell Card', 'Equip', 'Equip only to an Insect monster. It gains 300 ATK/DEF.'),
(77027445, 'Power of Kaishin', 'Spell Card', 'Equip', 'Equip only to an Aqua monster. It gains 300 ATK/DEF.'),
(77827521, 'Trial of Nightmare', 'Normal Monster', 'Fiend', 'This fiend passes judgment on enemies that are locked in coffins.'),
(80770678, 'Spirit of the Harp', 'Normal Monster', 'Fairy', 'A spirit that soothes the soul with the music of its heavenly harp.'),
(82542267, 'Gravedigger Ghoul', 'Spell Card', 'Normal', 'Select up to 2 Monster Card(s) from your opponent\'s Graveyard. Remove the selected card(s) from play.'),
(83464209, 'Mystical Sheep #2', 'Normal Monster', 'Beast', 'A monstrous sheep with a long tail for hypnotizing enemies.'),
(83764718, 'Monster Reborn', 'Spell Card', 'Normal', 'Target 1 monster in either GY; Special Summon it.'),
(83887306, 'Two-Pronged Attack', 'Trap Card', 'Normal', 'Select and destroy 2 of your monsters and 1 of your opponent\'s monsters.'),
(84686841, 'King Fog', 'Normal Monster', 'Fiend', 'A fiend that dwells in a blinding curtain of smoke.'),
(85309439, 'Ray & Temperature', 'Normal Monster', 'Fairy', 'The Sun and the North Wind join hands to deliver a devastating combination of heat and gale-force winds.'),
(85326399, 'Spike Seadra', 'Normal Monster', 'Sea Serpent', 'Using the spikes sprouting from its body, this creature stabs its opponents and floods them with electricity.'),
(85639257, 'Aqua Madoor', 'Normal Monster', 'Spellcaster', 'A wizard of the waters that conjures a liquid wall to crush any enemies that oppose him.'),
(85705804, 'Kurama', 'Normal Monster', 'Winged Beast', 'A vicious bird that attacks from the skies with its whip-like tail.'),
(86318356, 'Sogen', 'Spell Card', 'Field', 'All Warrior and Beast-Warrior monsters on the field gain 200 ATK/DEF.'),
(87430998, 'Forest', 'Spell Card', 'Field', 'All Insect, Beast, Plant, and Beast-Warrior monsters on the field gain 200 ATK/DEF.'),
(89091579, 'Basic Insect', 'Normal Monster', 'Insect', 'Usually found traveling in swarms, this creature\'s ideal environment is the forest.'),
(89631139, 'Blue-Eyes White Dragon', 'Normal Monster', 'Dragon', 'This legendary dragon is a powerful engine of destruction. Virtually invincible, very few have faced this awesome creature and lived to tell the tale.'),
(90357090, 'Silver Fang', 'Normal Monster', 'Beast', 'A snow wolf that\'s beautiful to the eye, but absolutely vicious in battle.'),
(90963488, 'Nemuriko', 'Normal Monster', 'Spellcaster', 'A child-like creature that controls a sleep fiend to beckon enemies into eternal slumber.'),
(91152256, 'Celtic Guardian', 'Normal Monster', 'Warrior', 'An elf who learned to wield a sword, he baffles enemies with lightning-swift attacks.'),
(91595718, 'Book of Secret Arts', 'Spell Card', 'Equip', 'A Spellcaster-Type monster equipped with this card increases its ATK and DEF by 300 points.'),
(92731455, 'M-Warrior #2', 'Normal Monster', 'Warrior', 'Specializing in combination attacks, this warrior is equipped with a tough, magnetically coated armor.'),
(93553943, 'Man Eater', 'Normal Monster', 'Plant', 'Man-eating plant with poison feelers for attacking enemies.'),
(94675535, 'Larvas', 'Normal Monster', 'Beast', 'A fast-moving, bird-like creature that strangles opposing monsters with its long, thin arms.'),
(95952802, 'Flower Wolf', 'Fusion Monster', 'Beast', '\"Silver Fang\" + \"Darkworld Thorns\"'),
(96851799, 'Hinotama Soul', 'Normal Monster', 'Pyro', 'An intensely hot flame creature that rams anything standing in its way.'),
(98252586, 'Follow Wind', 'Spell Card', 'Equip', 'Increase the ATK and DEF of a Winged Beast-Type monster equipped with this card by 300 points.'),
(98818516, 'Frenzied Panda', 'Normal Monster', 'Beast', 'A savage beast that carries a big bamboo stick for beating down its enemies.');

-- --------------------------------------------------------

--
-- Table structure for table `Comments_card`
--

CREATE TABLE `Comments_card` (
  `card_ID` int NOT NULL,
  `comment_ID` int NOT NULL,
  `comment` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Comments_card`
--

INSERT INTO `Comments_card` (`card_ID`, `comment_ID`, `comment`) VALUES
(32864, 1, 'This is just the best card. It makes me happy.'),
(1435851, 2, 'While some my call this card good, I would go farther. I\'d say it\'s okay.'),
(1435851, 15, 'testing'),
(1435851, 16, 'test22'),
(1557499, 3, 'My grandma gave me this card when I was but a wee boy. I\'ve had it ever since'),
(1557499, 4, 'Oh my gosh, this card is just so adequate'),
(1557499, 17, 'popo'),
(8124921, 5, 'This card is alright in my book'),
(9076207, 6, 'Um, technically, all ninjas have arms.'),
(9159938, 7, 'I\'m more of a chartreuse boy myself but I can get behind some dark grey'),
(16353197, 8, 'Gross'),
(32274490, 10, 'What kind of dude serves a skull?'),
(32452818, 11, 'This is the best thing. Hands down. I love this.');

-- --------------------------------------------------------

--
-- Table structure for table `Comments_user`
--

CREATE TABLE `Comments_user` (
  `user_ID` int NOT NULL,
  `comment_ID` int NOT NULL,
  `comment` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Comments_user`
--

INSERT INTO `Comments_user` (`user_ID`, `comment_ID`, `comment`) VALUES
(1, 11, 'This is the best thing. Hands down. I love this.'),
(3, 2, 'While some my call this card good, I would go farther. I\'d say it\'s okay.'),
(3, 7, 'I\'m more of a chartreuse boy myself but I can get behind some dark grey'),
(3, 10, 'What kind of dude serves a skull?'),
(5, 1, 'This is just the best card. It makes me happy.'),
(6, 4, 'Oh my gosh, this card is just so adequate'),
(7, 8, 'Gross'),
(8, 3, 'My grandma gave me this card when I was but a wee boy. I\'ve had it ever since'),
(8, 5, 'This card is alright in my book'),
(8, 6, 'Um, technically, all ninjas have arms.'),
(80, 15, 'testing'),
(80, 16, 'test22'),
(80, 17, 'popo');

-- --------------------------------------------------------

--
-- Table structure for table `Decks`
--

CREATE TABLE `Decks` (
  `user_ID` int NOT NULL,
  `card_ID` int NOT NULL,
  `deck_ID` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Decks`
--

INSERT INTO `Decks` (`user_ID`, `card_ID`, `deck_ID`, `name`) VALUES
(1, 32864, 1, 'Bob'),
(1, 1435851, 1, 'Bob'),
(1, 1557499, 1, 'Bob'),
(1, 1641882, 1, 'Bob'),
(1, 1784619, 1, 'Bob'),
(1, 2863439, 1, 'Bob'),
(1, 4206964, 1, 'Bob'),
(1, 4614116, 1, 'Bob'),
(1, 6368038, 1, 'Bob'),
(1, 7089711, 1, 'Bob'),
(1, 7902349, 1, 'Bob'),
(1, 8124921, 1, 'Bob'),
(1, 9076207, 1, 'Bob'),
(24, 1435851, 2, 'Amazing'),
(24, 15052462, 2, 'Amazing'),
(24, 37820550, 2, 'Amazing'),
(28, 53129443, 3, 'haha'),
(28, 85639257, 3, 'haha'),
(77, 1557499, 5, 'r'),
(77, 53129443, 5, 'r'),
(77, 53375573, 5, 'r'),
(77, 1557499, 6, 't'),
(77, 9076207, 6, 't'),
(77, 87430998, 6, 't'),
(77, 1557499, 7, 'z'),
(80, 1435851, 8, 'Jack'),
(80, 1557499, 8, 'Jack'),
(77, 6368038, 9, 'f'),
(84, 32864, 10, 'Poop');

-- --------------------------------------------------------

--
-- Table structure for table `Fusion_Monster_parents`
--

CREATE TABLE `Fusion_Monster_parents` (
  `card_ID` int NOT NULL,
  `parent_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Fusion_Monster_parents`
--

INSERT INTO `Fusion_Monster_parents` (`card_ID`, `parent_ID`) VALUES
(66889139, 6368038),
(66889139, 28279543),
(9293977, 29172562),
(58528964, 32274490),
(70681994, 33064647),
(45231177, 34460851),
(37421579, 36121917),
(1641882, 38142739),
(58528964, 40826495),
(95952802, 43500484),
(45231177, 44287299),
(70681994, 53153481),
(17881964, 53293545),
(9293977, 55444629),
(54541900, 56342351),
(17881964, 75356564),
(1641882, 83464209),
(95952802, 90357090),
(54541900, 92731455),
(37421579, 96851799);

-- --------------------------------------------------------

--
-- Table structure for table `Monster`
--

CREATE TABLE `Monster` (
  `card_ID` int NOT NULL,
  `card_attribute` varchar(255) DEFAULT NULL,
  `level` int DEFAULT NULL,
  `atk` int DEFAULT NULL,
  `def` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Monster`
--

INSERT INTO `Monster` (`card_ID`, `card_attribute`, `level`, `atk`, `def`) VALUES
(32864, 'DARK', 3, 1200, 900),
(1641882, 'EARTH', 3, 900, 700),
(1784619, 'EARTH', 4, 1500, 800),
(2863439, 'LIGHT', 4, 1100, 1400),
(6368038, 'EARTH', 7, 2300, 2100),
(7089711, 'EARTH', 2, 450, 500),
(7902349, 'DARK', 1, 200, 300),
(8124921, 'DARK', 1, 200, 300),
(9076207, 'EARTH', 1, 300, 300),
(9159938, 'EARTH', 3, 800, 900),
(9293977, 'WIND', 6, 1850, 1700),
(10202894, 'WIND', 4, 1550, 1200),
(13039848, 'EARTH', 3, 1300, 2000),
(15025844, 'LIGHT', 4, 800, 2000),
(15401633, 'EARTH', 2, 800, 400),
(16353197, 'EARTH', 3, 900, 800),
(17535588, 'WATER', 4, 850, 1400),
(17881964, 'DARK', 4, 1500, 1250),
(18710707, 'WATER', 3, 800, 700),
(20060230, 'EARTH', 3, 300, 1200),
(22910685, 'EARTH', 3, 500, 1600),
(28279543, 'DARK', 5, 2000, 1500),
(29172562, 'EARTH', 5, 1400, 1800),
(32274490, 'DARK', 1, 300, 200),
(32452818, 'EARTH', 4, 1200, 1500),
(33064647, 'WIND', 3, 700, 1300),
(33066139, 'DARK', 5, 1380, 1930),
(33178416, 'WATER', 5, 1400, 1600),
(33396948, 'DARK', 3, 1000, 1000),
(34460851, 'FIRE', 3, 900, 1000),
(36121917, 'EARTH', 3, 600, 900),
(36304921, 'DARK', 4, 1400, 1300),
(37313348, 'WATER', 4, 1000, 1500),
(37421579, 'FIRE', 3, 1100, 800),
(38142739, 'LIGHT', 3, 600, 900),
(39004808, 'WATER', 3, 900, 800),
(39111158, 'DARK', 8, 2850, 2350),
(40374923, 'EARTH', 3, 1200, 800),
(40826495, 'EARTH', 3, 900, 1000),
(43500484, 'EARTH', 3, 1200, 900),
(44287299, 'EARTH', 4, 1100, 1100),
(44519536, 'DARK', 1, 200, 300),
(45042329, 'EARTH', 4, 1200, 1300),
(45231177, 'FIRE', 5, 1800, 1600),
(46986414, 'DARK', 7, 2500, 2100),
(53153481, 'EARTH', 3, 700, 1300),
(53293545, 'EARTH', 2, 700, 600),
(53375573, 'DARK', 3, 1200, 800),
(54541900, 'EARTH', 4, 1500, 1200),
(54652250, 'EARTH', 2, 450, 600),
(55291359, 'DARK', 5, 1650, 1300),
(55444629, 'WIND', 4, 1200, 1000),
(56283725, 'EARTH', 3, 700, 1400),
(56342351, 'EARTH', 3, 1000, 500),
(57305373, 'EARTH', 3, 900, 700),
(58528964, 'DARK', 3, 1000, 800),
(63308047, 'DARK', 4, 1200, 1300),
(66889139, 'WIND', 7, 2600, 2100),
(70681994, 'WIND', 3, 1200, 900),
(70903634, 'DARK', 1, 200, 300),
(71407486, 'FIRE', 4, 1300, 1000),
(72842870, 'WIND', 4, 1200, 1400),
(73051941, 'EARTH', 5, 1300, 1600),
(74677422, 'DARK', 7, 2400, 2000),
(75356564, 'WIND', 2, 600, 700),
(75376965, 'WATER', 3, 1200, 900),
(76184692, 'EARTH', 4, 1200, 1000),
(76211194, 'DARK', 2, 800, 400),
(77827521, 'DARK', 4, 1300, 900),
(80770678, 'LIGHT', 4, 800, 2000),
(83464209, 'EARTH', 3, 800, 1000),
(84686841, 'DARK', 3, 1000, 900),
(85309439, 'LIGHT', 3, 1000, 1000),
(85326399, 'WATER', 5, 1600, 1300),
(85639257, 'WATER', 4, 1200, 2000),
(85705804, 'WIND', 3, 800, 800),
(89091579, 'EARTH', 2, 500, 700),
(89631139, 'LIGHT', 8, 3000, 2500),
(90357090, 'EARTH', 3, 1200, 800),
(90963488, 'DARK', 3, 800, 700),
(91152256, 'EARTH', 4, 1400, 1200),
(92731455, 'EARTH', 3, 500, 1000),
(93553943, 'EARTH', 2, 800, 600),
(94675535, 'EARTH', 3, 800, 1000),
(95952802, 'EARTH', 5, 1800, 1400),
(96851799, 'FIRE', 2, 600, 500),
(98818516, 'EARTH', 4, 1200, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `user_ID` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `pswd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`user_ID`, `username`, `pswd`) VALUES
(1, 'Polywag', 'ketchup123'),
(2, 'Polywag', 'gotem123'),
(3, 'Polywag', 'SQLKing'),
(4, 'Polywag', 'notsobigboi123'),
(5, 'Polywag', 'n18349htf#(&'),
(6, 'Polywag', 'applepie976'),
(7, 'Polywag', 'sudo847'),
(8, 'Polywag', 'Popeyes>KFC'),
(9, 'Polywag', 'Kazakman'),
(10, 'Polywag', 'Honeymmmmm'),
(11, 'Polywag', 'DrPepper'),
(12, 'Polywag', '2929393'),
(13, 'Polywag', 'god'),
(14, 'Polywag', 'bad'),
(15, 'Polywag', 'CactusJack'),
(16, 'Polywag', 'You'),
(17, 'Polywag', 'Master'),
(18, 'Polywag', 'fusion19*'),
(19, 'Polywag', 'sugarCereal'),
(20, 'Polywag', 'ohno'),
(21, 'Polywag', 'honor123'),
(22, 'Polywag', 'Bold1294R0ck'),
(23, 'Polywag', 'e51cf80f41ced8c184652d534af6b72a'),
(24, 'Polywag', '9594eec95be70e7b1710f730fdda33d9'),
(25, 'Polywag', 'fcb342874e6eb31b2a96df8467b0eeae'),
(26, 'Polywag', '2987368e348db2aad68b86869f68c029'),
(27, 'Polywag', 'af4abb8de2579b191fc3f18c1bdc444c'),
(28, 'Polywag', 'bb29aa71b1afed116b69da614e42bec3'),
(29, 'Polywag', '76d0c8f89236d26778e4169429bb1075'),
(30, 'Polywag', 'e332a76c29654fcb7f6e6b31ced090c7'),
(72, 'Polywag', '5028563b50b2f000e291a825e95329e1'),
(73, 'Polywag', 'e12f39b6f3bc9d40b69e412d5a5da2de'),
(74, 'Polywag', '23942ae24a978f01b13313c788cce189'),
(75, 'Polywag', 'b9ee5d814e75405a1de3dc03ed9c3dfb'),
(76, 'Polywag', '26a929bf09460e68a23f709f76db3178'),
(77, 'Poop', '9594eec95be70e7b1710f730fdda33d9'),
(79, 'Numberwang', '464e07afc9e46359fb480839150595c5'),
(80, 'Jack', '40687c8206d15373954d8b27c6724f62'),
(82, 'Tuuts', '9594eec95be70e7b1710f730fdda33d9'),
(83, 'SmooplesPooples', 'df9db8bc63b19b3c7368a503e03c8b84'),
(84, 'Rowan', '9594eec95be70e7b1710f730fdda33d9');

--
-- Triggers `Users`
--
DELIMITER $$
CREATE TRIGGER `hashPassword` BEFORE INSERT ON `Users` FOR EACH ROW BEGIN
		SET new.pswd = MD5(new.pswd);
	END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `User_emails`
--

CREATE TABLE `User_emails` (
  `user_ID` int NOT NULL,
  `emails` varchar(255) NOT NULL
) ;

--
-- Dumping data for table `User_emails`
--

INSERT INTO `User_emails` (`user_ID`, `emails`) VALUES
(1, 'yemob57954@prekab.net'),
(2, 'Joemama@gmail.com'),
(3, 'AntwanPatton@gmail.com'),
(4, 'KFC@yahoo.com'),
(5, 'Randomguy@gmail.com'),
(6, 'CerealisBest@gmail.com'),
(7, 'JackDrummer@gmail.com'),
(8, 'ImHungry@gmail.com'),
(9, 'Borat@yahoo.com'),
(10, 'Bees@gmail.com'),
(11, 'zk935ib5@temporary-mail.net'),
(12, 'DrPepper@gmail.com'),
(13, 'qw1er@virginia.edu'),
(14, 'nf6jf@virginia.edu'),
(15, 'ko4wkcsr@temporary-mail.net'),
(16, 'Cantmakeaname@gmail.com'),
(17, 'BlueEyesWhiteDragon@gmail.com'),
(18, 'Exodia@gmail.com'),
(19, 'Cinammon_Toast_Crunch@gmail.com'),
(20, 'vj6ch@virginia.edu'),
(21, 'dhsdbh@gmail.com'),
(22, 'ab3cd@virginia.edu'),
(75, 'rad@rad.rad'),
(77, 'haha@gmail.com'),
(79, 'david@hotmail.com'),
(80, 'Jack@gmail.com'),
(82, 'rad@rad.rad'),
(83, 'shoo@sho.sh'),
(84, 'fake@fake.fak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Booster_Packs`
--
ALTER TABLE `Booster_Packs`
  ADD PRIMARY KEY (`BP_ID`,`card_ID`),
  ADD KEY `card_ID` (`card_ID`);

--
-- Indexes for table `Cards`
--
ALTER TABLE `Cards`
  ADD PRIMARY KEY (`card_ID`);

--
-- Indexes for table `Card_image`
--
ALTER TABLE `Card_image`
  ADD PRIMARY KEY (`card_ID`,`image_URL`);

--
-- Indexes for table `Card_name`
--
ALTER TABLE `Card_name`
  ADD PRIMARY KEY (`card_ID`,`name`);

--
-- Indexes for table `Comments_card`
--
ALTER TABLE `Comments_card`
  ADD PRIMARY KEY (`card_ID`,`comment_ID`),
  ADD UNIQUE KEY `comment_ID` (`comment_ID`);

--
-- Indexes for table `Comments_user`
--
ALTER TABLE `Comments_user`
  ADD PRIMARY KEY (`user_ID`,`comment_ID`),
  ADD UNIQUE KEY `comment_ID` (`comment_ID`);

--
-- Indexes for table `Decks`
--
ALTER TABLE `Decks`
  ADD PRIMARY KEY (`deck_ID`,`card_ID`,`user_ID`),
  ADD KEY `card_ID` (`card_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `Fusion_Monster_parents`
--
ALTER TABLE `Fusion_Monster_parents`
  ADD PRIMARY KEY (`card_ID`,`parent_ID`),
  ADD KEY `parent_ID` (`parent_ID`);

--
-- Indexes for table `Monster`
--
ALTER TABLE `Monster`
  ADD PRIMARY KEY (`card_ID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`user_ID`);

--
-- Indexes for table `User_emails`
--
ALTER TABLE `User_emails`
  ADD PRIMARY KEY (`user_ID`,`emails`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Comments_card`
--
ALTER TABLE `Comments_card`
  MODIFY `comment_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `user_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Booster_Packs`
--
ALTER TABLE `Booster_Packs`
  ADD CONSTRAINT `Booster_Packs_ibfk_1` FOREIGN KEY (`card_ID`) REFERENCES `Cards` (`card_ID`);

--
-- Constraints for table `Card_image`
--
ALTER TABLE `Card_image`
  ADD CONSTRAINT `Card_image_ibfk_1` FOREIGN KEY (`card_ID`) REFERENCES `Cards` (`card_ID`);

--
-- Constraints for table `Card_name`
--
ALTER TABLE `Card_name`
  ADD CONSTRAINT `Card_name_ibfk_1` FOREIGN KEY (`card_ID`) REFERENCES `Cards` (`card_ID`);

--
-- Constraints for table `Comments_card`
--
ALTER TABLE `Comments_card`
  ADD CONSTRAINT `Comments_card_ibfk_1` FOREIGN KEY (`card_ID`) REFERENCES `Cards` (`card_ID`);

--
-- Constraints for table `Comments_user`
--
ALTER TABLE `Comments_user`
  ADD CONSTRAINT `Comments_user_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `Users` (`user_ID`),
  ADD CONSTRAINT `Comments_user_ibfk_2` FOREIGN KEY (`comment_ID`) REFERENCES `Comments_card` (`comment_ID`);

--
-- Constraints for table `Decks`
--
ALTER TABLE `Decks`
  ADD CONSTRAINT `Decks_ibfk_1` FOREIGN KEY (`card_ID`) REFERENCES `Cards` (`card_ID`),
  ADD CONSTRAINT `Decks_ibfk_2` FOREIGN KEY (`user_ID`) REFERENCES `Users` (`user_ID`);

--
-- Constraints for table `Fusion_Monster_parents`
--
ALTER TABLE `Fusion_Monster_parents`
  ADD CONSTRAINT `Fusion_Monster_parents_ibfk_1` FOREIGN KEY (`card_ID`) REFERENCES `Cards` (`card_ID`),
  ADD CONSTRAINT `Fusion_Monster_parents_ibfk_2` FOREIGN KEY (`parent_ID`) REFERENCES `Cards` (`card_ID`);

--
-- Constraints for table `Monster`
--
ALTER TABLE `Monster`
  ADD CONSTRAINT `Monster_ibfk_1` FOREIGN KEY (`card_ID`) REFERENCES `Cards` (`card_ID`);

--
-- Constraints for table `User_emails`
--
ALTER TABLE `User_emails`
  ADD CONSTRAINT `User_emails_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `Users` (`user_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
