-- MySQL dump 10.13  Distrib 8.0.24, for Linux (x86_64)
--
-- Host: localhost    Database: cosmetic
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brandid` varchar(10) NOT NULL,
  `brandname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`brandid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES ('B01','CHANEL'),('B02','DIOR'),('B03','NARS');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `colorid` varchar(10) NOT NULL,
  `colorname` varchar(50) DEFAULT NULL,
  `codecolor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`colorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES ('C01','Orenge Red','#f94d4f'),('C02','Peach','#e1b0a9'),('C03','Playful Pink','#f6747e'),('C04','Sweet Pink','#f19eb3'),('C05','Plum','#a04e60'),('C06','Warm Brown','#8e7066'),('C07','Bronze','#b1816d'),('C08','Luminous Gold','#ca9964'),('C09','Khaki','#82806c'),('C10','Navy','#847e94'),('C11','Nude Pink','#f5aba9'),('C12','Rosy','#dd7a75'),('C13','Smoky','#787a77'),('C14','Fuchsia','#c41556'),('C15','Osee Satin','#dd7381'),('C16','Rouge Orenge','#f26c48'),('C17','Velvet','#c0534f'),('C18','Hot Pink','#e11543'),('C19','Party Red','#fd262c'),('C20','Diamond','#f4f2f0'),('C21','Nude Orenge','#df8670'),('C22','Hot Orenge','#f07775'),('C23','Silver Gold','#c0b794'),('C24','Red Brown','#944440'),('C25','Chance','#c07367'),('C26','Zenith','#d64c56'),('C27','Coco','#ea483d'),('C28','Pimpante','#ff8474'),('C29','Pirate','#a12f33'),('C30','Rose Gold','#de9a97'),('C31','Deep Sea','#5a6194'),('C32','Nude Pink Gold','#e9a590'),('C33','Red Plum','#b05b73'),('C34','Flavor Pink','#f64382'),('C35','Orenge Peach','#fd4f4f');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `productimage` varchar(200) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `launch_date` date DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `brand_brandid` varchar(10) NOT NULL,
  PRIMARY KEY (`productid`),
  KEY `product_brand_fk` (`brand_brandid`),
  CONSTRAINT `product_brand_fk` FOREIGN KEY (`brand_brandid`) REFERENCES `brand` (`brandid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('CB01','Palette essentielle','CB01_Rosy.jpg',2550.00,'2020-06-23','A palette for the face with 3 values ??in one. Both the value of concealing, highlighting and coloring for a bright and glowing complexion. A face palette with a variety of features. Along with a design inspired by the \"Coco Crush\" jewelry collection that includes blush, concealer and highlighter. For a bright and glowing result that lasts all day','B01'),('CB02','Palette essentielle','CB02_NudePink.jpg',2550.00,'2020-06-23','PALETTE ESSENTIELLE HIGHLIGHT CREAM FOR SUMMER. Two in one value of a cream highlighter for the face and to add color with just the tip of the brush. The perfect match of three colors for easy makeup application at any time of the day. Both highlighter creams that fill light-prone areas of the face. With a bright red to highlight the cheekbones or as a lip tint. So your skin looks vibrant again and your face looks radiant. Sparkling, brimming with beauty','B01'),('CB03','Joues contraste','CB03_NudeOrenge.jpg',2000.00,'2019-05-15','This blush that will become an indispensable item will brighten up your complexion. Helps to contour the face with a healthy glow effect. This color-and-luminous blush accentuates the cheekbones and makes the face look brighter. Its fine powdery texture makes it easy to apply on the skin. The cartridge is designed to be easily carried anywhere, so you can easily add color on your face anytime.','B01'),('CE01','Les 4 ombres','CE01_NudeOrenge.jpg',2550.00,'2019-11-18','A new two-tone palette inspired by flowers. The river and the coming of spring reflect the beauty and simplicity of nature. This four-tone, two-tone eyeshadow palette is decorated with camellia motifs with a wide range of satin and sparkling effects. This formula offers a soft texture designed for ease of use. A beautiful, consistent color.','B01'),('CE02','Les 4 ombres','CE02_SilverGold.jpg',2450.00,'2016-06-21','Four shades of eyeshadow That provides a modern perspective for creative beauty. The latest recipe adaptation, the team baked gentle and easy to color with more intense colors. The perfect combination of colors Provides a radiant and smooth glow all day long. Makeup shades deliver results such as Matt satin surfaces reflect light and sparkle with metallic','B01'),('CE03','Ombre premiere top coat','CE03_Peach.jpg',1400.00,'2020-12-16','Lucia Pica changes the rules of beauty with LA COLLECTION NOIR ET BLANC DE CHANEL, CHANEL s latest global creative make-up and designer. Introducing endless shades of black and white, Lucia Pica has partnered with Makeup Creation Studio to create a limited edition eyeshadow.','B01'),('CL01','Rouge coco bloom','CL01_Zenith.jpg',1450.00,'2016-06-10','And a new luster was born: intense, plump, and long-lasting, ROUGE COCO BLOOM is the lipstick that exudes a luster of beauty.CHANEL Research has created the first lip color to replenish moisture and plumpness. And long-lasting with a striking luster In a patented product formula.','B01'),('CL02','Rouge coco','CL02_Coco.jpg',1450.00,'2020-02-29','ROUGE COCO, the signature lipstick of CHANEL. Revamped to provide smoothness, comfort, radiance and all-day hydration. Inspired by Mademoiselle Chanel s close friends group, who briefly call her Coco, ROUGE COCOs 24 new shades include Arthur, Adrienne, Roussy, Dimitri, and more.','B01'),('CL03','Rouge allure ink','CL03_OrengeRed.jpg',1450.00,'2019-02-14','ROUGE ALLURE INK matte liquid lipstick For colors that stand out and shine With light and dark texture Immediately absorbed into the lips for a light touch. For long-lasting color results (over 8 hours *), an alluring challenge that doesnt look out of sight.','B01'),('DB01','Dior Forever Natural Bronze','DB01_peach.jpg',1700.00,'2020-05-12','Dior Forever Natural Bronze powder bronzer recreates in a single step the sun caress on the skin for a complexion that is radiant with vitality.','B02'),('DB02','Rouge Blush','DB02_Peach.jpg',1750.00,'2001-03-10','Rouge Blush is the only* blush that gives cheeks intense, ultra-pigmented colour while ensuring long-wear makeup. The iconic shades of the Rouge Blush powder are inspired by the emblematic Rouge Dior lipstick. Colour intensity is buildable to suit your desires for a soft or bold finish. Rouge Blush is available in several finishes: matte, iridescent or satiny.','B02'),('DB03','Dior Backstage Rosy Glow','DB03_Plum.jpg',1800.00,'2019-11-28','Rosy Glow universal blush is the Dior makeup artists secret weapon to create the appearance of naturally rosy cheeks, for a fresh effect, as if brightened from the inside.','B02'),('DE01','5 COULEURS COUTURE','DE01_Bronze.jpg',1700.00,'2000-04-10','The iconic 5 Couleurs eyeshadow palette has been reinvented to become 5 Couleurs Couture.Each eyeshadow palette  Denim, Black Bow, Rouge Trafalgar and Mitzah  corresponds to an iconic piece of the Dior wardrobe, offering a nuanced array of intense shades that are easy to use and combine.','B02'),('DE02','5 COULEURS COUTURE - SUMMER DUNE','DE02_NudePink.jpg',1800.00,'2016-06-16','From intense bronze tones to sparkling gold, the eyeshadow shades explore a new approach to color that plays with the warm and golden shimmer of the sun, for natural and luminous eye makeup.','B02'),('DE03','5 COULEURS DESIGNER','DE03_Rosy.jpg',1800.00,'2021-04-26','Born of Backstage expertise, inspired by professional techniques and textures, 5 COULEURS DESIGNER features an easy, 5-step makeup lesson (base, 2 shadows, highlighter and liner) to bring out the eyes with flawless sculpting and colour gradation.','B02'),('DL01','Rouge Dior','DL01_fuchcia.jpg',1750.00,'1997-02-20','Rouge Dior is the Dior lipstick with couture colors. True floral lip care, it is enriched with red peony and pomegranate flower extracts of natural origin. Rouge Dior dresses the lips in 75 bold colors with satin, matte, metallic or velvet finishes. Long-wear lipstick that ensures 16 hours of comfort* on the lips.','B02'),('DL02','Rouge Dior The Refill','DL02_OseeSatin.jpg',1800.00,'1997-02-23','The new Rouge Dior refill brings an eco-designed format to the iconic lipstick. Once the stick is finished, any of the 75 couture colors may be chosen to endlessly switch it up with a new shade.','B02'),('DL03','Rouge Dior Forever Liquid','DL03_HotPink.jpg',1700.00,'1999-03-10','Rouge Dior Forever Liquid is the 1st ultra-pigmented, transfer-proof liquid Dior lipstick, with vibrant, ultra-matte colors that withstand contact. With striking color, the liquid lipstick wont settle into lip lines, fade, budge, or feather, even on fabric and masks.','B02'),('NB01','Nars Blush','NB01_NudePink.jpg',1500.00,'2019-02-17','The ultimate authority in blush, nars offers the industrys most iconic shades for cheeks.','B03'),('NB02','Air matte blush','NB02_RoseGold.jpg',1000.00,'2021-04-14','A unique mousse blush that transforms into a velvety powder for a weightless, cloud-like wash of cheek color.','B03'),('NB03','The multiple','NB03_NudePink.jpg',1100.00,'2019-09-19','Franois nars iconic innovation, its the original multi-purpose stick for eyes, cheeks, lips and body. ','B03'),('NE01','Summer solstice eyeshadow palette','NE01_RoseGold.jpg',1000.00,'2019-03-13','A limited-edition eyeshadow palette featuring nine rich bronze and golden tones.','B03'),('NE02','Uninhibited eyeshadow palette','NE02_LuminousGold.jpg',1550.00,'2019-03-13','A limited-edition eyeshadow palette featuring nine high-pigment shades in matte, shimmering, and metallic finishes.','B03'),('NE03','The orgasm bundle','NE03_RedPlum.jpg',2500.00,'2021-01-01','The bestsellers you crave. Get them together and save. Experience the thrill with 15% off a custom Orgasm trio. $94 value.','B03'),('NL01','Nars Lipstick','NL01_OrengePeach.jpg',850.00,'2019-06-21','A new lineup of lipstick in matte, satin, and sheer finishes. innovative new formula delivers instant color vibrancy and conditions lips for a hydrated feel.','B03'),('NL02','The iconic lip bundle','NL02_NudePink.jpg',850.00,'2019-08-11','The bestsellers you crave. Get them together and save. Line and define with 15% off your custom lip duo. $50 value.','B03'),('NL03','Audacious lipstick','NL03_PartyRed.jpg',900.00,'2020-04-02','Lipstick so shamelessly seductive in touch and texture the sensation is audacious. glides on like satin with single-stroke coverage in a spectrum of shades.','B03');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_color`
--

DROP TABLE IF EXISTS `product_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_color` (
  `colorid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  PRIMARY KEY (`colorid`,`productid`),
  KEY `relation_1_product_fk` (`productid`),
  CONSTRAINT `relation_1_color_fk` FOREIGN KEY (`colorid`) REFERENCES `color` (`colorid`),
  CONSTRAINT `relation_1_product_fk` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_color`
--

LOCK TABLES `product_color` WRITE;
/*!40000 ALTER TABLE `product_color` DISABLE KEYS */;
INSERT INTO `product_color` VALUES ('C12','CB01'),('C17','CB01'),('C08','CB02'),('C11','CB02'),('C21','CB03'),('C22','CB03'),('C13','CE01'),('C21','CE01'),('C20','CE02'),('C23','CE02'),('C02','CE03'),('C24','CE03'),('C25','CL01'),('C26','CL01'),('C25','CL02'),('C27','CL02'),('C01','CL03'),('C28','CL03'),('C29','CL03'),('C01','DB01'),('C02','DB01'),('C03','DB01'),('C02','DB02'),('C04','DB02'),('C05','DB03'),('C06','DB03'),('C07','DE01'),('C08','DE01'),('C09','DE02'),('C10','DE02'),('C11','DE02'),('C12','DE03'),('C13','DE03'),('C01','DL01'),('C14','DL01'),('C15','DL02'),('C16','DL02'),('C17','DL02'),('C18','DL03'),('C19','DL03'),('C11','NB01'),('C19','NB01'),('C25','NB01'),('C12','NB02'),('C30','NB02'),('C11','NB03'),('C22','NB03'),('C29','NE01'),('C30','NE01'),('C08','NE02'),('C31','NE02'),('C32','NE03'),('C33','NE03'),('C25','NL01'),('C34','NL01'),('C35','NL01'),('C05','NL02'),('C11','NL02'),('C11','NL03'),('C19','NL03');
/*!40000 ALTER TABLE `product_color` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-05 16:32:56
create user 'powerpuffgirl'@'172.30.0.4' identified by 'powerpuffgirl1234';
grant select,insert,update,delete on cosmetic.* to 'powerpuffgirl'@'172.30.0.4';

