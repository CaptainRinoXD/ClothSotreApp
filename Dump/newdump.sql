-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: cloth_store
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `costumer`
--

DROP TABLE IF EXISTS `costumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costumer` (
  `CID` int NOT NULL AUTO_INCREMENT,
  `Cname` varchar(45) NOT NULL,
  `Caddress` varchar(45) DEFAULT NULL,
  `Cnumber` varchar(45) NOT NULL,
  PRIMARY KEY (`CID`),
  UNIQUE KEY `Cnumber_UNIQUE` (`Cnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costumer`
--

LOCK TABLES `costumer` WRITE;
/*!40000 ALTER TABLE `costumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `costumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `salary` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Äinh Äáº¡i NhÃ¢n',20,10000000,'dainhan03@gmail.com','CEO'),(2,'Nguyá»…n VÄƒn Quyá»n',20,4200000,'quyen2003@gmail.com','NV'),(3,'VÃµ Thá»‹ Trang',20,6200000,'vothitrang03@outlook.com','HR'),(9,'Nguyá»…n Tuáº¥n Duy',20,5200000,'tuanduy2003@gmail.com','NV'),(10,'TrÆ°Æ¡ng Thá»‹nh PhÃ¡t',20,15000000,'thinhphat2003@gmail.com','QL'),(16,'Äinh Minh HÃ ',9,50000000,'minhha@gmail.com','QL'),(17,'BÃ¹i Ngá»c KhÃ¡nh',21,50000000,'ngockhanh@gmail.com','CFO'),(20,'LÃª Quá»³nh NgÃ¢n',30,15000000,'quynhngan09@gmail.com','HR'),(21,'VÄ©nh Ãnh ThÆ¡',25,25000000,'anhtho@outlook.com.vn','NV');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `TypeID` char(5) NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  `ProductQuanity` int NOT NULL,
  `ProductImage` blob,
  `ImpPrice` int NOT NULL,
  `ExpPrice` int NOT NULL,
  `ImpDate` date NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `TypeID_idx` (`TypeID`),
  CONSTRAINT `TypeID` FOREIGN KEY (`TypeID`) REFERENCES `product_type` (`TypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'AoBaL','Ão ba lá»— addidas',100,_binary 'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿ\Û\0C\0\n\n\n\r\rÿ\Û\0C		\r\rÿÀ\0\0”\0û\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ô\Í[Zÿ\0„{\á\í­š²Mò‘\í^b×™\êx*÷\Ämi~\Ù\ä;-•SõÉµÁ<ûW\Å\Ê\\­Ÿ\×Y~*|\Ïw©\ÙxSTúô\r«†\Éü\rdC©ù^\"7ü)cœýk^2À\àûUI¦ G´mXô£…Q›—•Š—\Z¡oD3÷²k\Ö\î·j×˜\'85r{ñÿ\0	E¶SŠ\ç5‹“ý±t¹\ä\äWd6<lD–¾¦Uô\åa rOºø´ô\Ð^\Îw@¬\Ç\Ôõ®[K´:–¹al9\r(\Ï\ÐW{\ãØ¾Ë©X•\áJ•ü«¯¥–%S\ÇÒ‹35\Ë6½û‘ò\â@	{\ÆDd\ÛÊ½Pƒš\ÖðMªjŽco˜\ÆÁ¿b³|Mû\í«u…ˆ£¿_š¾\"“\ëªù\Z¾Õ¾\Õh¨[\'Ò³µ\Ì\Ú\È\ä2¶\á\\ï„µo±\Ï\'\å\Î\Ó]gŠ—÷k*ò²-/&z\êJµeº/ø³S\Z†evwD¸À\Ëp~\Ï\'=±ZVÚ¸\Ðd´n°¾õúV$m\æ\È\"þó]	&§\Ú=Ÿ\Ã6þNƒb˜\é\Ö6µköI±\"‰+¨\Ñ\á+go\ZŒ\áUqY_£û\å\ä\åal \Õ\Ãv|®«ú\×7©¤\Ý\Ñ.;\àñ]Þ“bº‡\ÂB\å\ÔnF\êkÉ¡\Ö\ÏF¹DY\Øü¨£\'¥zgt+\í[À­ý\Ë%´„¿\Ù\ã8\Îzf‹Y¦m™Tú\ÄTböG¢\ÞEoqh\ì\ê?x¹\çÞ¾ºøcoq§\êAQ¤I2\ìBAùk\ä}GŠ|\Ú4{ŠIÀjý\'øE§\ÅmðûIa\n£<aŽdÖµ\"Þ§\Ì\ãj{:1³¹ò\ÅM!µž\Þh¥I>ò\îB+\Ìü2ù\0\ÝòžAö_\í\áµkÔ’1˜\Æ\ãµ|el\ÚŒdP¸Šl8Ç¡®ºžõ»\ÖMŠµZu\"÷Ñš\ÚF½\r¬Ú­¼Ö³42?,«‘Ò¼‡^µþ\Ì\×g«,2’T0\ÇZú\ç\à÷„c\×ü?\â9¤‰Y–f\ØH\Ï@+\Ã~4øwm°»T\nð9FÀ\ÇJ\å£nfŸS\â\\±m\ëÔ¹\àK“7‡mòrW+[ó^-¼l\íÀQ“\\g\Ãk“&ƒôj\èu6&\Æaœ|µ\ç\Ëv~¿B\\\Ô#?\"æŸ®C©B^À8¬}Z\ë\ìþ ±~\Ó+F˜®oÀWÌ—W–\Î\Ù\ÃdÖ‡Œu±[+¦\äG05÷¬>t\è*¿\Ö\çC:¥\Ä†¯?Ô´ö±¾Ú£÷™\Î?\ç¢ú}k¯\ÓuHõ÷\ÆrNj¿ˆt\ß\í]\é\Äñü\È}\ëJm\Å\êªq\Ä\Ó\æF/‚ü/Šu\ë›ùAb\Þ;}+¨o„Ú•«–ñJ¯NkŸøGªH>#M¬£Ì´ v9¥{|\îZBO·ò¯J7–§\âù´*añ•\Øð\ê\í¨\ÝIp\ßzY—Æž\Ó\r¼qXz\Ô\Ûd¶\\\ã2­h´Ÿ/­|”õ\Ôþ‹§\âºX{\\\0ûsQ\ÜHYz\×+}ªIo\â‹h7|’)®‘›r\Õ%kdª6—C€\Ô/Œ~&µ\'²\ãõª\Ú\ëmñ\àw5K\Æ]i]x!ýjMv\ád\Õ\Òl\àI\Z·\é^=‘ñu\åi\Ê/£:?…úx\Ô<X_%WYñkOxmln6ð²c5\Ïük¶ñü\ÖvR^|wòƒ\îk\Ö~(|9ñ=\çÃ³ª\Ý,ð)óq\r\Íøš\é\Çf~k˜T]S‹\Ø\àþ\Ü\íñ4ðŸºñúÕ‰–Ùºó\Ï+‘ƒ\\T|+½\â-\äªf<©\Ç5\è¿>	¾¡® —¼y\'q5\\ª\íTñR¥‹Œ\ßS\æ\Ûv6÷SGœm9\ßiº²kZ)·oõ±Ž=kˆkd\Ö-có	ˆRX÷<U\í.\â]Txßƒ”aMÇ©õ\Ø<G$ýœöc™´¯ƒÀ©¤\Ó\ÔJ\Ó\ÞEþu«¯X«¨º‡˜\ÜdJÊ·ù.\àº\ãù\Õ\ÅXó±\ÉÁ¸³\èÿ\0\é\çTÖ´\ëp3\æL‹ú\×3ûLX\\YüR¿Ó¡S´€|ø\ê¼p+Õ¿g=û[\ÅP\\8\Ìv¨d>™\í\\¿\ísµ¾)D\0[PZÞœt“>\"5910{ÿ\0_\ä~\Ña›P»…#\Þ\âÝˆ8\É\é^\Éð\î\Å\ßE¶…\Ï\Èü\Ó\Æ\Ï\êR\'\É©…	þñ®\ÓAñe¾kmgglúŽ¤ø\ÄqŒ€}\ë\ZŽ\î\ÈÚ½G×—ùžm6›öoŠ\ÆÏ•/0ú“_¤>°\Zg†4\Ëa\Ò8~•ù\ïªX\ëpüv\Ñ\ÍÎŸ\Z^\\˜[\ç}Û¥\êZóX\Ç&¢övªµ	$\0;“]R\è|\Æ%\ÊT »6ZñÞ‚¾!ð\Ý\í³.\âP\ãò¯†u\Í<\ØøŠ\Ém–5’\'\î·¥}Y\ã\Ú\Â	ISñ=¢¸(¤_!x¯\âF›\âCVñ“þ•¥D\çý#\Ãµ¤a9A«z–b\Õ\n\Ê/k\ß\Ò\Èú£öjÓ—þ+¹\Øg\íW.G\Ó8¯øù\ájº\í¾\Þ2¨«ÿ\0kOh¾Ó´\Æ\ëX\ÔP|\él›°\ÇÖº?ŠwSx¯BþÕº°kgˆ©‰ºŽõ\Ê\ã\ìÚ¾÷6\Â\Öö\Ø\ÉMm#\åÿ\0…²ÄžD=›\Òk“yzmÁøMs>\0Qoý¡ÿ\0–s²þµ¥\âË¯\'I˜\çŒW×¾\ÏÝ°2ÿ\0a‹ò8?\rj\rk¯‡85\Ô|Bb\Ú\n°ÿ\0ž‚¼\ïOºòõ›?\Æ+Ð¼`\ë\ÃqˆÁ‘\Ù\×\n9&—/¼E)s`ª\Åô9Ÿø‘ô©\Är\ÄN>•\é¶÷‰y\n¼lXW‰J­…YJ²œ\"ºOø™´Ù•“	\ãžÕ¬¡s\Î\Âc]\'\ì\ç±Ø®4\Ï\é:\Ì-\åF®c›¶wõ\ë\Ù\ä\Ë6A\È cò¯,\ß­c„`\ÈÃ¨\ìk=üq\â=9¾\Ì#I/”1\êGjÖNUfy\îW<T\ãV†·\Ü\àõ\Û\Ïø™XÅŸ½ ­\Â\ß-pž ¾\â‹žù®\Ø\Éò{W\Î\Î:#õŠ5y\êTòg	â‹¯³ø¦\ÊLýÓƒ]\ÄSù†‚8¯6ñ«\Ä\Ñ¡^Evž¼\Ú\\.~^j\Ú÷S9pµ\Ú*C\æp¾8—\ÌÔˆ\Æ\rUµò§”—p6\Ø`VŸ-\Äz‘b:\ÖeŠ·\ØLªÄ—iüEzTvG\Ç\æ»¯)Kc\èŸÙœÐµ \ç\ã\ÏJû\ß\Âðx£\á¶¯òð0üq_~\Ì3n‡R‡=e\rúW\Þÿ\0ÿ\0\Ó|\å²ü‰+FI\éW-*|\Ï\ÈóYµRR\íc\ào…6ðŽøú}.Q²[Ü\í»ÿ\0¯_cüD]\'Tð\ÍÍ…\ÑW’H2ª¼œ‘\Å|\Ûû@\è6¿~;%üWQ‹}@\ËTû\×ÐŸ|U\áMCB†mZò\î\×÷ln\Ðó\í]2‹\çRDT\ÄóÒ…uº?:¼Y¥V¼¶1H­o)tcÁ\Æx­=v\Ü^iö:\Ì(q\"„¹\èþ¿}û_xAk¸µ\ï^\Ú\Ü\Ç )<08${â¼¯\á<qø‹Bº\Ó\îTH‘\æ7\\cZK\ÝW\î}%o\Ö(ª\Ñ\Ýnq°]I\äùY\Ìf¡‰GšF1\ÜVþ·\áYü3¨Y01\Ì2öeÿ\0\Z£ýžI\È\à\Ôzò¬\ëEI;£\ìÿ\0\Ù4¼ð\ÕÞ ­¹ØˆÏ¶+\Ëÿ\0j)#¼ø¥{\Ï\Í(¤~\Ð~\Å~*M5õ­\å\Â\îas\ã\Ôw\Çx Iñ\'\ã¥\Ô0*\Ýßˆ\ÝS\Ïõ­\à\ãI³\ågMý{™\ì•\Í]\ÂSxS\àüww2²\Üj’™,c\å\í^¯ð—K\Ð|\à—ñµQÉŸ\Ýùƒ,\Ç«Oâ‡„\ÛQñ‡¼3eè­¢Ep£€Z\ê~%|+\Ó-|.5+\É?Ñ´‹]\âÝ\ÈX¦¸\Õä’—©Ãˆ\ÅFPsr·3û’>Tñ7\Å_Œ\í\ã=JÍ–\Ú\Þô[U3Ÿ\á\ÃüLø\ëñ/\â­óYX4ú|’\Ö\ÔÁ}ñ]‡\Ã\ï†z‡\Ä\ÍcQñf¤Îºz–6pc\n\Ø\é]\ì‹ñS\Ã\nø¹\â}\Æ1X\Û\ËpÀ\Ù_N\ØG9éžµ\ë\á\à¦\ÜÒ½­ý|›\Æ\â=Ÿ%¬¬\ßü?›>D¸ø+\â[^‹O¾‚\âMJq¸-\Ë\Øõ\Åvþðˆað¿‹<e`Ú‹\Ä<\É\r¸Ï–@\èk\Ù?koŽÖšOÇ¸u/=¼«kl°I:µ‰\â¼\ç\àG\í;À?øP]+ûjwJ&|º1<\ãÚ½¹aÒ2Žª\Ï\ï>k‹ª\ä\æÝ“\æ_¿\Æ~\êž6ø]«\ß_xd#\ÜÛ¹ûE´±\äŒWÑ¾ýµ¬¼}jº‹-—K\Ôþè“¢–\Åg~\ÌZµ§\Ä\ïÚ‹X”Y­¦ª«»\ÚÈ¹\\7aYþ>ýšt\ß~\Óú¶‡o“cf\Òù<lk\Î\Åa\ékm\×\ê{ùv*¬\çI%«+ø>\éZ\Öü¶†\á™Oµ7\ÇÚ€Oòó’j—„t¸tŸ\êöQ;y1JÈ»ŽxVW\Ä\ßya²µóõ¾\ìD\à\ê8\å°\îq\é1Y•\èkÖ¬uC\r†“s°I\åÎŒT÷\Åxò·\ÍÖ½?C?h\Òô°A¸E¨h¬=G\Z5—‘\Ýø\ãÁ\Z49u­!ø\Æù\"_\ãõ¯Vò\Ûz\Z÷­ñü?­$l\Ù\å;{rq^CñN]#\ÆÚµ².\ØÄ»\Ó„fµN\ê\Ïs\æ\å4\íR;?Ì·\áŸI¥\\\0Ä´‚+Ñ¡¼²º‰eó\ç¯K¯,\ç9¯G©Lˆd`£ \Í\'\Ò\Ãf>\Î<²\Õ§‰®s\â\"\äÿ\0«e¯H†q%¬lAý+\É5»7R¹öÈ¯B\Ðo…Î‹l\à\ç\äÁ¯¢÷Q÷9}Njõ}NO\ÆS·\àœÖ¿\Ã}HIÖ¤ü\Èrµs~,rÚ‡­TðÎ¬trþ	>F«Œy¡c\Îxc\ç{^\Çeã¨¿x¯Ž1Z_ü*|Y\á¤K™\íPN¿‡Z‡\Å\Ñý§MY>õ±û7\ë×šˆµ]6\Î\Ô]\É{RŒp1Š\è¥w#\É\â(\ÉÆ§&ö:\Ù6\à\ßx’\îÀ¶$ß´¡¯ªµOˆ^øW\æ—\âýj\ê\ÖÅ‰¹·Ž\Ö|o\ÏU8\æ¿;üM\â?ü%øo¤‘m}rNÕŒý\Ò}+\Ôþü\Õüeß‹|{©Mw\å\ÂóGm3’X\ã `×¯;”¯sðü\Çk­·6ÿ\0hŒüu¤Á/„të¨µ8e\Ï\Ú\'bÄ\ß&¢ð¯\í…qc \Ø\éÚ‡‡týG\ìª¤š1–\Ç\Í}Eð\à\Ã/ü\r›Å§K¥X&ó¢|~\í\×\Âzö©ñ6M\ã³\Óu\áoö‰ú _\Û2”nÞˆña8\Ï\ØE^\é3\é\röŽø]\â¨^\Û]ðº\é²N»öüª“Þ¼\Ã\Â\Â\Ó\Â$·±º[­Q¬\nxÁ<\î*/Ú‡öo±ø©i\éÚ¸\Õ`¼ˆM•<š\Ù\Ðþ¶½ð†\×Æ¾¼–\î\î\ÑósfÍ’ŒQ\íY\Õ\ÂÊ£{\ßc\Ó\Ësjnr{%£û\ìz\îµ\à\Û=z\Þ]2ñ@\Ýþ¦lr‡±\â:×…o|1¨Ie¨DQ”\á$\Ç\Ê\ã±ô\Ã{óñ#\Â\×ñ\rº•˜\\@~ø+Á$Wg«x/Lñ¥‡öf¥I‚\â9±ó+W—~Wgÿ\0}d1ƒ\ÓU\ÛË¹ò~‹yy Þ‹»	š\Ú\à)Q\"ž\Äb½\ÇöKð\Û|a{\â+¬\Éœ„‰¼‡©¯7ñÏ€\îü®Ë§\Ü~ú\ÊL½1\Û>õ\ë?³\Ä+S_\nj;-\í\ïd\ß\Ìq¹»)5¬“”l‹\Å\ÔU(J¥-n¨¼7\á\ämB\ã[¹L\Ý\\œÇ»øµs\ß4S\Æ^\Ã\Úf\ä[\é”]JÝˆ˜~5\èÄ…Pª0`Tra¹§tø«Ý§\ØóOø\Û\Ã\Ö\Ú~“oKh\"\Ø\0\ÝkóKöƒð­\ï†þ?_i\ê­š]ññŽõú\Þ1ö\Ä|w¯’oƒs4š7\Ä]. òió/\ÛW9L\àšõrù(\Ætû\ì|þl¥\íi\×\éª=Ÿ\Þ|	ñ;\ÃÚ¶|n/D¬žX`\Ü\Óÿ\0g=‰2¾\ÒoC4­l\ï{¯»<iðb\Ã\âw\Â[\ë\Öi¤µRJŒœ\ã<Uo\ÙWö_‹\á}Ö¡\â]r\Þ\ã\Ée‹+€ŠúFÝ½¤^\ê¼Ï’†/šœ\è\Õ÷d“³ò\×S\Ä?dýSðÿ\0\íYa¦¢±‚û\ÏU¯µmþ\rÆŸ<Wt€\ÜjL\âôŒ.\ëšó_Ù¿Bð\Ô¼_«ýµnõù	\Û\Ç\Ê\Ãõ÷ÿ\0\Z÷ˆÚ¿\Ø<\'­N\ç-ßŸÂ¼Î¢iBl}–AÎ:“Z\Ûó?9¬\î<¯\ë.ü·“ù\×\â‹\Óy~ÿ\06BšÔRq©\Þþ±Ý³õ&¹)&3n•º¹&¾~Jòhþ‰¥.\\-:~W!c·8¯Dð÷üKt\Ìö»JófnH\í]^‹3Áµ°\Â\é@#·4¤(\Î\Êk\È÷AX\0NA¼\ã\ã>Ÿ\äx\ãF’\Ò6eü+¹øpnõ\íi,\ï#\Ýgód¸\Ï\n£“š\â¾(k^ñÎ ‘\âÍŸÉ„ÿ\0°s\Åò7~‡.ñ\r\Å\íkút8M7G“XžH\á 8\\€{\Ôs\éw¶²´Oo^\roø.=¾\"™Ûµ\rl\êö2>£3\à\ãù\n¹U\åv:°ùLquRö•\Ú<òm\Ò9\'’I5\Ùøó\Î\Ò\ä‹<\Æ\Ý+‚¸“¯9­\Ï\êK¥$,p$^>µ\ËR7‰\ì`q\nž*7\ë ÿ\0\Ç\á5\ÏM!\\:õSš\è¼X6\ßB+›û\Ù_Z)\ìa¿µš=S\Âú‚kš9‚CóÞ²|\'\â\éþø\ìj\Ç\æJ¹A­s~Õ¤\Ó\ï#\Ãpö®\Ã\Ä\ÚzG5¦·BV\Õ\Ý{5½?vDbdñ¸;¯Š;ú­n\Äô­c\ÄPyiu0eW\è9¯¾¾ü\'ºø€o\Ù\íô\Ã,{Fq\Ç\á_+ø·\á\í\Ç\Äiþ*ðòF\'µT@½wÒ¾üýþ [x\×\á.œ¬\ßS²Í½Ý¹\áÑ‡Š÷)N\ë™3ùÿ\08Â¸b\Z’\Ðü\Ùñ‡Ä¯üñ/Š|c©\Íe¥\Í<\íù“Œ­yLv·rGöÒŽ#V\Ü&\é\Îsk\ì?ø(¿À\Ö\Ò|}o\ã[HšK\ì…Œ}\Ò:š\âõÿ\0†1\ëbºð\í³\Ý\\,bGŒ¶+\è(\ÒUšŠ{\ê|Elg°‡´–\é\Ùù[ú¹\á3x\ÃTñ\Å\ÔP_jw\ÓZÇ²%‘‹a@¯²?\àŸ>%c>¯\á\ëÍ²Y\Ý\å|¶9±\Ïó§\ì{ðGWñG\Æa©\é³Ç¤Ä®fy…\éÒ¾\Çø+ðHð\ï\Åma´mT\Û\ß\é·kpö¹\à\Ä\ÃÒ°\ÅR\ç¥\'-%Ž\Ì-eK\nP³S‹Š¿\çs¬\×>ƒ\Þ4“ÄšD,úL\ì\íªŽ6ž®+¯ñŸ£¾‹\'Š-®@µò¼\ïñœtú×§k\ë²\ÛH¡Õ†\ÞEx6©\á©ø°xODžD\Ò\"”O¨ü\Ù@G;G¥|\ÕK_™üÏ²\ÃÔ”’ƒ~\È\ætmx«E¹¼\Ö\ãó&¿•¦\ÃQ„~U“eð6\Ú\ïR[»{y®l\à9aa\×\ÝO¨¯d\Ö4´\Õut½&–ð€\"Ž8®ÿ\0Ã¾‹B\Ó\Ö\×\ç\à»zš\åR–ºž‹\Är¯sDs^Õµy!°{\ÔÕ¬\Ç,\Çe\Ì^\Î?‹\ë]äž•‹ªxV\ÃRo2HLSDÐ®?W´\ë6±µXL\ÒO·£\ÊrÕ§?6\ç›$·D®\Ü\Õj:#xY\Äa[I\í\ç\îùqW&\È“©A¡g-µ\ÌK<¯Œ‚=\ri\nŽ›\æF3\Ã\Ç	-ð?ÂŸ^ ð^·ª\éZ>—}­x:\Úi>\Ç?’OÉžz‰~-|eø•á«¯\ì/=žš\ÊG™#ll}+\ê+JÑ¬M¥žŸmo\ê‰ùRÇ¼~L@G\çjð+±\æU:#ŽŸ\áúÝžû#ø\'ZðV&«ªiQ[jw\Ì\Â\ê\âcû\ãÿ\0Ö®\ßö‰×†™ð·Y“v\Zeò—ž¤\×}¸¯À¯žkOÄ§M\Ñ¹šO6Eö+\Ïö’©SšG\Ô\Ñ\Â\Â<” ­v‘ñÆ­\Ù,D#\ï9\Åa\ÜaTÂµ<Ayö­XB‡+\ç\ëXzŒ†8\Ø\ÓG\éN¤yt\ÙhEžýEtz<\ÛtX¿\ë\ék•ŽOÝ®zšÛ‚\ë\ì~†\\gm\Ð8ú\n™hkKX\Éù\ã¨ø\É|\à»{H]CV9\ÇT‡¦?\Z\çž(¯­Bý\è\ØpkÍµOM\â£q9\ä(E_E[\Þñ’\Ëm;|‡î±®ISq^}Oc+¯\n.P—\Ú6ô{¦x™KŸ’T\ÚÞ·5,-\äƒ>Ÿ\ÈTS\Â.\áNª0\ì}kPÖ®¾\Ö\âKv.0	^‡\0\Ö\Ô÷bã‡‹ŠÙ»žu\'\Þõ.—$–\Öw\rò£ƒ\íœU9ß“PGpfdfDch_JÝ­,|O;U\"\Ö\çy\ã\r¯\äÌ¼†\Êù³Z²]C@RÍ™ 8?J\ÅV\Ý\È9¬\à´=LuE:œëª¹b9¼\Ë(\è:×ªxRú=WO6Ò\Ê\Ã¼¥=\"µ¼/®6—~3\á\åI«j\ç\r\nÿ\0W©wð³\é>$“\Â\Z\ã\èWrb\Úv\ÝnŸ\î\×\Ú\ßt};E\Ô\ÓZÓ£û4—\0…‹…s\êG­|	fS\\±I\â;.\á!‘×¨\"¾šýž>0-\ÐM/Rp³\ä+nõõükZ5\Ñó|E•ªö”Ö‡\Ö=ð®ñ+\Âw:N±Ios@OU\È\í_ø_OÖ¿f\ïˆhSª\Þxjy1\Ò6TFOJûR#U\Ð\î­D\Í™D™+‘ŒŠùg\Å³7ˆ<[\á¨\í\çñMÜ—\ÐÜ°V™¸òwqøõ¯~†2V“\Ðük”N³nŸ‰¿jø+\ìÏ³ý¬©,-uü+‹ý“õ\Ïø\Ë\ãn¿\ã)t¹ \Ðu+\í)\\\à\ä`W¤|;ý›<\à}%c:lz–¡$j..n†ý\Ç\ã=+\Øô[km&\Ö;[XR\ÞX\ãP V8Œ\Ç\ÚEÓ§Viƒ\áõ…š\ÄU•\ä´]L¹\âK\íJ=£Ò \ÞMò‰\àGž\æ³<;\à•\Ðt‰!†]×·½\Å\Ë}\éõ5\Ð\Æû¿\n·jòn\å¹\í/u4Šºkƒ!9g=I­5*\Ý9¬\ÍZB°¦iš]Ë±e\'\"€\år=\ÍF\ÅDÔ»‰¤ ”WN+6dÝš\×p*”‘u#¥3X>Vc\É\æ hwfµdƒvj/³\ÖMÑ¬e\É\Ø\áTd\×\Ä\ßµ‰>\'|^—O³}\Ê\ÈV„Q\Ô\×\Õ\ßüe>\êw¬Ø¸’3*:–#WÍ¿	ü?„4\ë	Rÿ\0s\Æª©§g\ÙÝ„©ï¹¾‡\Ï>ðü^ñŽ©e\Ýq\ï\ÇZ\á5fù‚zšõ‹5¿Š.žC™\'Ä‡>õ\ä·ry\×ÍŽ‹];EcF\î„\"÷`ÍŒÚ®\ê—B\n\ÚüWþ•#õ©õ•ó4%M\Îæ³‘\ìS¿,\í\ÛõE8u5\Ü:¯\ÔV½­÷™÷Nkmn1\ÅK£+f\Ú};R8=ø=\ÏWð‰\Ê-n¿tžõ\Ö4a\Ûv\ÐsÞ¼VÕ¦·\ÍGŽNÍŒWQo\ã\Ø HÊ‡*1»Ö¹\å\rt>›	™%J\Ý\Ô­¹ \à\æ«\ÛÛ­«aX±nI&¬j‹þ†\çÓšÎŽ\ës!5µ®™ò«F–**_#¥\Ñ\î¼»2•ü{U\æ\Û!ŒðA\Å29lO \äUI®<Ë§e©\Ük¹\ê×¨ùc\äl«{\Õ}@²ùr0qš[Y<\Ä9©gÎ·u\ïŽ+N§-O\ÞSi\ï\Ã\ï\ZK§4q\\Ÿ—ûÇ¸¯e\Ò\îµký-ˆ¸~›OZù³\Ã\Ò	¢Pya^\à\ïK¢\Ü[\Ä\ïµUý\r9A?y•f\é{:Ž\é\ì}\×ð\ã,zÝ¨Òµgû=\ì_&$8&½mX·=sÒ¾bðÏ†ô\ïŠ:L\Z¾‹2\Úkö\àyˆ§\ØW½xT\Ô/lc´\Õl¤µ¾€lbG\Ê\Ø\î\rN‡\Æ\â\éÂ•G\ËóGQn¬»²x­;Z®–õzñB<Ê“V4-ûv5z‘TaƒW#\àV¨ò\äQ\×V…\Ì@³8Ç®+œøO«j\ÚÆ‡q&³fm.àº’F7¨?+Â»e§*…Qn¤s{¶ŠR))™\Ücõ¨œ{T…¹¦·4Ã©]—wj«}q¬·0Ž(Ô³3\09«\ÄW!\ã\Ï	\Ýø\Ú\Ú-+\ímg¦HÀ\Ý4g\ç‘¸`ihi~ˆñ\Ý/Oºý ¾ jÝ£G\à­\"B°«ð·?‹\ÜT^3<m\ã\è<?¦.\Û;•¼¾ŠzµK‡\rƒD\ÑaX$tò`‚!\ÏLW hq|\'ð®¡\âbAö\Ù#i\\¿POj\Z\ç\ÐôhIB.¯E·›>1ý m>%jöªr¶¤F\ÐWŠBÅšIVj\ë<u\â\Æñwˆ5­`\ßk™œ}3\Åq\êvFJ\Òzh}\î2ö0\æ\Þ\ÃÙ·f¯\ë\ÇËµ\Ò\ã=|¬\â²Õ·6=N*\ïŒ$òoô\èóÀ€\n\É\ë¡\î\Ój4§/Eø”NkWO“c©µŒ§<Ö–žÛ™i/I\ëg¦ZkZušO\n0x²9¯7\Õ4Y\ìuˆ;cr«½ðeç¤\Ø6s°˜\Íh\ê\Z*\Ü^I&Ñ–9ý+‰7\Ñõ\Õp°\ÅÒŒ\Ò\ÔùBvûFž\är\n\Ö>“g6 \à/Ê«Õ\\\ÐgûV—·9 m5>›p–6Œ¤a²k¾M\Â\éŸÆ,d\éW¨\í[‹»\Ëb§ªœUx\äXowÜ‘qø\Ó#•¤gvSµµ6dÞ¤~U•Ž\Ïh\êEN=ZE\Ö\åe\ì[Q·\åY^Ž)´û± \nñsšµ§\Ý	×ƒœPeBvŒS-X\Éö\rGoD“\æ\ÛÙ”º‡iü=«‰¼‹Ìˆ2ð\èr+oC\Ô<\ÈQó†V™§*Wƒ\Ø÷Ÿ€\Þ Õ´\í`®•1\Z¿\Ï\ä3qqp=\ë\îÿ\0‡,|mb§f\Ôbky8enõù—\á\\h> ²¿µ.h˜09ý+\ï_‡Ÿ\Ù¼=k®\é“fkq\áexxù‡¨¢Q\ì|¾e\ro/¼÷¨\âzÕ˜\ÐqYzw\ÐÙ¤w\Ò\Ç4\ËÁ‘7V\ÌkR‘órd‘Ž•:µ@4õj\Ò\Ç4‹\n\Õ 5Ÿ©A¥\Ù\Íur\â8\"R\ÎÇ°CMñŽ—©Ù¥\Ì79‰¹A§c=Î4š­öè±¸\Z7•ƒ\'Š®/òšU„“\ãÎœlŒ³6/5›+\Ë{Iî¢Š\æ\ãýTLÀ3\ã®z²Mq:XøŽ_k“.¡ª\ãe¿%²z õ>µ\Ù¥r¹Ej¡ªjI¤\Ø\ËrÀ¶Áª2Iôqš¨_me†W\Ð\Òug\á¿\Þx“\\o\ëé°Œý–ÕºF½‰÷¯˜ÿ\0mŒ£P›þ=.|\Ç-;!\ãŽ\Õ\ï?´GÆ‹o†¾š8$Q™J\Ç\ZžFkóK\ÄZ\åÆµ}wu#IqpÅ™˜úšp¿\Ä\Ïc\rI×Ÿ3øbaùžMˆ\\õ5^\âL&}ª	\æÜ±®Š‹\Æ\Û9=O¾¢ÿ\0vIf\ÆI\â\í\çSüI»û6¯k\Ç\Ü@?Jf’ò\Üw\Þ?Uø“(›\\u…À©_\×]¸`¤\Ö÷BY\Ü	\ã:ZZlŸ¼\ÅsZ\ÏË°ö­\Ëwò®\è\ZœŽ*u9\á\Ëð\â\ãÍ°žó‡\è\É‘Czó^Eð\Öó\Ë\ÕLDü²\ÆG\ã^³it«oa\È\ç\Ô\ÒW>ÿ\0-©\ÍE#\âmr	uKh½¹Uõ÷«–šEÆ­\ä\Âx-Ï°®R\Þ\ÖkÛ¨\ã·9=Gjô\r¥ÅŽ¥ö‘MÄ©µ¤\ì\rz˜…\Éð\î~G’V–6’h»\'¥ºùõ\èaŠ\Æ\×G°‹Îž3ºI\0®rXü¹\n¸\Ã/\Zô»4–›?<›ysÔšóZM\×Óž¿5pS—6‡\Ûbp“\ÃET©¼ºv±J	p\ê	Ur|S\ä‘\íf§Ð­U™Š\á\ÇUæ¬¬\Ë49æº¬|ó³¼Vû›–W¢e\0œ÷«6’›Œõn*\ç-\Ó\Ç\Î\n\Ö\Ü2¥\Ôyý=)3¢œ½¤R{\'ö–\Ï(û\à\Z÷O€?gøc\â(\ÌÄ¾™rBÎžžõób\Ý_-ú©È­\Ë-H,\'-À\\\ÕE\ë©\É^Š¬¥~\ÂøO\Å\Ö\'\Ò\í\ïôû„¸·‘CSšé¢¸~U|ý õ‡·H-\î–»¾ky*Gµ}\Éð³ö”ð×¢Š#r¶:\0el}[‹Z£\âk\á\åM¾Ç»†\Ï4õjÊ¶¿Ip\ËØƒš¹Àjƒ\Íd\×0\Åw\Ã2,‘0\Ã+ƒQ\Ãi\r¬b8¡#U@\ï0g»¨1®…\nŸ\ÝŠX\é\éU\ÙQ›šx;k2Ý­¡6\êMõ\áHd´\Ñ™¸®\â‡\Äm7\á\îq{}2«…&8\É\åix\ã\ÇZgtYõJ\áaŠ5$yc\è+ó\ë\â·\Ä\íG\ãgŠ¤™¡\Ñ\álEx U¥¥\Þ\Æ\ÔiÊ¤¬Ž\'\ã\ÄmC\ÇZ\äúã°\ÜùJz^Oy|q€+Ö¼A£\Û\ßI§X²¨Fl÷\0t¯8ñ×„WIŽ\ê{I1N\Æ\ßJÚœ9\×1\ë\Ë+TWSœŽ@\æ\Ä\Ó\ï¤*÷\ÍW³\à\Æ=q™/‚°–\ç\ÙQº¤—{¾\ZO7Vµ^¿6MbøÍ„ú\í\Ö:î®ŸÁšy›Qi³\ÄKý+’ñ\"˜õ©‰\ç-Y©{Ç±Œ.\êÌ«)7#Ñ–\Ýa\ÉZ\ç®k+ŠÙ±¸óÞ·zŸ9Eò¹Sgq\àýKÊ¼µœ»Xf½´o˜O¸ÜŠù\ÏÃ—>L\Ï{\î\í\Ú‰\ã\ZM°c\È\\}ë’¬u¹õù^#\ÜqlùN\Ô\r?OF€v\ê\Ý\ë¯ðý¬k£\ÛÞþ&ûôQ[\Öø[ó>W-÷q0Š\ÙE~‡qª|¶,\ã\ï2\ä×Ž\\±k©I\ë¸\ÑEqaö>\ë?ø©ú×’R-ŸÉ…1š(¯C¡ùü¿Œhé‡—·Uÿ\0õgrðsE/s²Ÿð\Ñ4ÿ\0¼€±\ëŒ\ÒY\\;[°\'µP9ü_ \Ón7ls]¿‡õ‹»’Hedu9V‘E¬O\Z®\Ç\Ô~6x­f¶µ{\åž¶e-ýk\ì\ï\ê\Ó\êz|sM´;vŒ\n(©ž\ç\Ë\â¹\Ð[\ÈY¹9«Ž(¢‘À/ñ\nZ(¬™Ažjµ\ä†+Y]zª’(¢3ó¯öŒñ\æ³\â¿Í¦\ß]c\íXcÊ¯Z\ç-mã³·H\â]«Š(«¯²GµCJj\Æˆehõ\Í©\ç\Ï#ô®c\â\ï®õ\è˜ü¢:\êq\ÍW]\áX¯\ãÀó\Ëoõƒý\ÑS\Û({§\Ï84Q\\s?F\Ã\í½ðdj¶wl?ýjóo1mJrzî¢Š\å‡\Ä\Ï{8ÿ\0r£ó(\ÞZ’Ý…I¦H\Æ1\ÍWtz?\âG\Ð\Ú\Ó\ä+¨Eƒ\Ô`\×mos$pª«T\Èô°m\êÿ\Ù',150000,300000,'2024-04-01'),(3,'AoBaL','Ão ba lá»— nike',50,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0\n\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z ,$)%6%).0333\Z\"9>92=,2302)\")224<2222224442222222422222224222222222222222222222ÿÀ\0\0\î\0\Ô\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0E\0\0	\0\0\0\0!1AQaq\"2‘¡±ðRÁ\ÑBr’\á#3b‚²\Âñ¢Sƒ“\ÒòCcsÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0/\0\0\0\0\0\0\0!1AQaq‘\"2R¡±ðBÁñ\Ñÿ\Ú\0\0\0?\0ž¤{¯\Ò\âI\ß}\ëùÀ\ë»\Ö_x\Ã=û\Æ\Z\Z\0[\Þ0\Öox\ÃH÷S	_u€½\r/¾9½\×a¬\0:öø\Ó^>õ\ÂÀÛ”\0!¦\Èob¾\Ì,\îý\Åf\ØGwñ \Òôa=é‚»^ÿ\0q Š\Õqti}\Í,’¥-‘Ÿ|#½A\Ç\Ï¹Mš\Úiü#ûaÿ\0\èrµõ¿‹òŠ‹\á\×‚O37w‡œu\Ê\êS\Z	\Ú*J©5š\0& \áøLBK§ý\Üú†„ø=\"Hq*3W\Ö\Ý\ì\Äxy\"µR‘Á`³”£]l5Œ\èF\ÑV\Ãÿ\0h½)$\â\îˆZiÙ‚#w¨Ž÷H0Q<˜ü\áG”8B8^°ô…Fg”©»•#™¨*AÀ\02ö\Ò\0\ì\04«xM\äÀs5\âq\Ç\0j@Ôºó\ÃÈ®}£]yr\á	ql1ñ¦4þñO(GCˆ\Èlxœ\ÌHJm‡;\æyŸ\Õ\0Ò´ÁV‘\Ñ\Ñ\Ð\ni/cZ$h\"\ÚÔ²MU#¼„\àj$T`vˆ°\Ò=q,™SL…eºh¸•Ã†p\ë¹L\ïî¡±kNœ‘¿fâ ‹´ \ï\\\\\èkY™-Y©z‚´¦zð¬ ¤ðwK\Ü!\ë\ï(FC_-Yñ€\ß\ã\ëftY\Ë\Ð\Íÿ\0\È\áF\ê“ç‡¬N³X\å#‹xüM‰å³”e\â8µ\ZZ-_‘<0ò–ú\Öm6guJ­€\ä31ke\Ðè˜·m·\ä8.^5‹k§o‡\Ô\Ã\Ó\ÝLa\âx¥j\Ú\'e\Ù\én#2£MÚ®,[÷r¤u¨c¯!¬\ï\á\r\Òö@\ÓQ\Û \nuE	\Ü*p‰²¥klLT¨Ò‚±=ô¹9)>\ëŒql7D¹$\rX`\ÓT\röš×Œ*¡x)P\ÌúØ¢\é¯©”fW\í(¦Úš*øFb\Ñ.M V€6u‰½:˜OS-@f3/]9ƒ#»µŒe\ßLö\Ï\ì¥K«\Â]\ã^\Ö 3³PgÝ Ž—„C.>\í²Ž%\Þf¯@XI’\ê\æõÉ†\íq¢•SwU¯ŒNŸ¢T‹\Èn‘˜\Íq4k%\è«t©\Ò\Údª„.ÀŠ—h \Ý\ì\çJ]q-\Ó\n\r,c+‰D²;k\íðY§N3‚º3‰&Yº\ëC«,x`òò•À\ÉFPFºŠ\ÆrÙ¢XP\ëÀ›Œha8\Ä*}54}úT\Ã5¬u+\Ë{®\×FÁO{ $hÀƒ¼zŒ,l¦šº+5m\È”b£2<\Ô\Ó\Ì\áe\ÙI\Ï\ëþ!³Ð†ª\î<»­ž\êDÖ¥k‰4¡Î›k»3Ÿ„#¬÷+\ÐP\â	òõ‚M™QEZ3Ž³\Î	9\rMiŽ>8ü\àXr…\ZÉ¬tH\ê\Ät\0Y\é\æ‘.`Ÿaœmq–¡®š\æT\Ò\èT\àul7–nšƒ-z\É3:\Êv‚Ý¹] “P\ÏX\Ï~¨8Y\Æ\Ï~0ë±\Ý#¶-®Œ,ý\\Á@&_©#\áeˆÙŽEY±L\ÅI\Ç\ÍbSÇ•cº¾>ø\Â\n>ñ\Ûþ\èR\Ç_\ÊP\í>¾¢«\Þ}ð§Y—å£`WˆÀü\â]˜c€÷\Â+´VI‘\È\Ðü\Ì[\ØÖƒ†\Ãc)\ä­(ölÖ§,\ÑL\æ^\Ö$˜\é˜#‡x\ÂO8Eq\ä-%.ðVøX7\"<±¯(4¥\Öaeb¦¸ŒG(YKAwXô\Ôad\î€4§a\Ù]f\Ñ4š‚†8o°0&l\âeŠš§’\ïýX\"\Ís\ÎúihSj–¥\ÊBo\n’5r\Æ*\Þ\Û2\ïbt¹£Ë„B$U¯\nAzU)ªcLYŠ€­p• U‚H­LD\ÐZõ™èƒ%o>(‚—³\Zû¹\æc¬\Ã8S\ÃE½’¿û3æœ¦×™\è\Ý³²KŠŒ\Ëy•E\0½–8\Ü»Mb\ÂF\"tªj\å@<=`&9\Z\ÕI\ÊO«¿É¥•$IQH\çXq‡(tñ‹A@Œ\Çõ,QKzŒ~Qm\Ò\í‘÷û¾‘T©¿\Ó\éw‹Ts>¬\Ï\Å?©!\'PŒõÓ‘ÀÁ,n‹Ù‚ukz8aJÿ\0Ÿ¤-ûf¸:Q¼ÀñFWLu¤W\Zxþ|\Ï3\0	\æ5A*l\ÝOx˜ˆ\â-\Ç%ž\Î\â³pa†¬Fu<\É£¡”Ž…’D\êÃ„\Î^?H…0õóú»¹…FwØ•Ï½SŠ/\ÞbN\ÍQo?@Z¥Ž\â\Ì\ZÌ·©\ÊÁI\åXQ¤[\Ü!\Óüý3­¡ºÀ«|,\n·ƒPÁ• \0wÎ¯~q\Õ÷Qõƒ->[Àjô€^Ž=z\Åûžw¾‚/¬úý\êŠ°¿0\nŸù\Åü­|½LqüU[/cJ‡Ø†¯xÀ\í&\nƒmŒ\â`–E\ì˜q#ß„:@ „qCXKŠ\rÜƒB)ó\á\'l…w\ÃDºjòX³,ª\â„O8mƒFK“z\à\í1«6³L\Ü*|bn9Vqº¦ªI,©\è6À$\â\Ä\ê@¤.\'ŒÎ´Xl… —9ð‡,v®0ùf˜\Óf³9·•\äb“:Q;k½Iñv1$vœ9[.¿\Þ\Èþ03\Ùpw\Ãú€<\âm\Ý\ÐL¼+†\ÃÀ\å\çHºDJu½\á°82\íp\Æ$J£%\íxV¹xøDyÉ°\ç\ë\\·\ÃP\æ4ƒK!\" aËŸc¡D°nt\ÒL™b[Yº¥\íK7ªu³£¾¬b\ÃLtúJ%,õ™0Œ\ÙYU8‚c¸a¾2/ /\"Ì–Ìª\Ëx	ªGf•¯Y.òŒ=«¸Em§FÍ–/4²S\ãZ<¿Æ„¯œ;Q ôºdù\æ;;³N \rh `¢€\à#QdbTW|\"ƒB\ÙC¹$eóB%Ñ¯\ÆQ)\Â\ZØƒ©\Ù_\ê\0±\ÐC0\ìU$ý#@™ž~¢*4dªI®¹†¼‡dq‹IM\Ú>õþQ\Åñ:Šx‰5\éðiÑ ‚DI«\Ú+ˆí˜¢JM»A`Sm(”\ë¹^`µ¦t®q\Æj\ÐÂ‡\"¡\àuÁ•\ï`M!\Öø\Û­\\„#L\"\Ä{[b$ \Æ+\Òz–«:ƒ\\aXXÅ½€œ¹R‚	X\äXh0\Ù9ŸzŒ:\Òr\ã\r”!@¢Ò«Ú–úý\çr÷ô‹=4´YM°²ø\â?¦*K\Çe\Â\å›+™˜…i±Õ†MZ‚7kò§8[\ÑÁ¢ù+\Äo­>ð¯­bDÀ.\âA¥3\å\Ï\Ã\Æ¬&a®£\Ä^\Ü\"\Â\í\Z¤\ÔR˜\âw\Ó\Î\Z÷¶!»T\Ô\çÀ}#¡nGB¹™²i9²\È*ù@j0a\\Wa…0$CM½\Ã+K&Q\nölË•uÖ¸Ô“Rq&%Z4\Õ\î3(¤†¨\Ì\\p®O\0b²b7XF¢#ˆ0¢\ZVV˜Æ¬\ìI9W~(¶$Dm,,µ\Õˆ\0Êˆ5ŠIš\áFY¶\åŸ€½6\nð1iea.ˆÀ%©\ÞÂ£–8S\ë8†%Ð§u»\ÛÈš…<òò,M*\0ÁE\0\0H5ŒÕ‰ˆª0\ÄS\ä?8™dZG\'\Ü\Ó$4VüYN9\ÅR8,iJ·%Ä˜tU\Ä0?¶õ–‘,e-\0þg£7•\Ï‰¦¦™²\ì6eÄ‰hiªü\Ãu€ÿ\0|U\Û&4Ö›<\ä^§uò\Å‚Ÿ\Ã\ÑnTÌœN2“²Œ*P\äHo\äŽÎNœWX¯\Ûÿ\0¦k\äüÿ\0‚B\\kYp•gRWzHe÷\æ]üf;C\é.¡f\Î³œC¬7¦9°¦\Ò\Çaˆª:».ù\ÏOúr±>3\íÅ—D¬£õ\ÔIŠ	N°\Ð\êtRG0GŒU97­–\Ý\ì»’°/\"l™2ÑžaŸ<\Ö\åö7d¤W¾\ÌW#lj´OA¥JysK»2k´K·†#Uh9\êŒÎI¶\ë|Á(Š¥B’J€²\È\ÔW\í’A\Þ#mÑ6D·\ë\ævaN\Û8\n¶º–òŒ\ÜmYS¢­$›Win\ï\ÓØžš¼¶º\î^X\Ù\êŠY\ÙQFl\Ä\09˜š\Ü&~\íY—\ã ¢»\\[ˆ\ßú„š½´-\ÝlÓ˜‡JBZP\éKŠA·H\ë%ºk£Žc\æ#6dj­r˜Ñ“¼5|Cg\ÏZ¨©5:Á5\Æÿ\0Ä¨·NO}W©SN\ë2#„Ž»\Î\á\å]þ¿H\èŠ$KRÝ¡\ç\Í{Cû¢d¦¼¡Ž:‡\nWf?˜€ZP\Ý&™c¿uŽ\"\ÃJS\"•f¸Wa\ÃX\è’f(®U÷\ìóŽ‚V˜Ps\Î:\èvFbm:Fl\Ä\íx\nf{ …©\Ì\Òñö\Íj›0¤¶vd¼0cz”\Çq\\µC.Il™\åŒ§\âZ0ü&\'hK\'\í³W\nµªšŒr\Ì!\äf™S/c®t„¹MPªø¼`\ß\ZM\äIA™¡\Ë*T\Ó\Ê3A¶¼>±¢Ð¸\É^-ýF1¸\Ú|”\×r\Î\î~\nD‰\Òu2\02ŽKs@e©¨¤œ#\ÎIÌ´J¶L”®\áŠY\å*+1I3\ZŠ	\í-\rw(‹¿\ÒF•2¤	JhójÐƒ¿\ãU^c5\Ð=9*\Ï~\\\ÓuYƒ+P‘Z]!©–\0Pñ\Ü\ZQ \ë(\æwV^I\êU«4\ä£{}14xý”Î±\ç†+q¯„DuZ­*jqø„WZ,SRÎˆ%Ì½1\Ù\Ø\\j…J¤ E0Å¦Ÿô±\Ò)\ÄZ%~5\Ã8‰k\ém’^=hs±o0)\âbjxüE\í\Êo[õöø*Püºû63-²d=\\ ¨M;&\à3&œ~)…\Ç1­¥[­\0$«Z‚\Ð\Ûk\á2þ\"\"ò\ßú@Â’¤ž.\ßÚ¿ùE\ë¶\ësR\ì5ªv}\ã³\ïió]\åY(\Æ\ÚÝ‘<«\íww\ìF\è\îšk!vYj\åÀbj\0$\áM¤\Õ\Ùtý¶\Ö\Ùä¤±“Mj•]ÚŠWwk€‚\è^„KJ4óÖ·À*q\ÖþCtke\Ë\n\0P\0\0\0\0\r€£;Œ\Ã9^N]\Þ\Äô©\Í+7eØ¥°tu„\É\îÖ‰£ÏŠ©þ\É}\å\Â8G,dT­:Žòwþô]ŠŽ\Ãg!$\Ã\ÜCe\ÄC…q\Í=3´£<=ùF\Æ7OÍ¬\ê²<\Î?H\Ô\á4ó\â•\Ù\"VƒLö#™\â\"¾}\Ò:ó45þ>q\Ì\×^Ÿ\Ëøq^wO”»ýøDi\èkQ¸ó^A\"*,/±\Ñ\r&a‘ð\'\Î:S;\ÖJnô¶–v¡¼¿\Í\ß]’»\nX…\'@Àaò¬M´h¹Oš\n\í,\âMž@–·TP\r\\aF…g¿(JþùBP7R\08Šjõ‹=j*ý^j\Õ<>‘X}ûk ¤f\ÍUw´}(\Ï\âr„p\ï?·©5\ÜÕ‹vz’!Q©¼zC’E\Ýð˜\Æ8¦ižmúPõ™G\ì™]ž!\Ú÷‘X\Ç,zÿ\0I4Z¥…rU”’Ž1\"¹‚5©Ù¸FfG\èõ‰\ÆÐ´Ü†¿\×N‰a\ãB1›³^L£VŒœ›H\Æ,\Z2l\æ»*[>\Ò;£\ï1Às1\èz?¡Vyd½4ÿ\0øW>dÆŽL  *¨U\0\0€\ÜG„t¤®û½C\nÿ\0É˜\Í\ÐTZ=¡ïŸ*ù›6\åNq¯³\Ù\Õ$µUQ’¨\0B\rLc©5ñuk»\ÎWò\èZ…8\Ãd%!@ŽŽ1\\\è\åŽ:\âX\æ„A\\CC\ì†\ÜQ¶¹\âZ:„a]\ï±c™$Æ·NY\Ì\É-w µ6\Ð\Z\Æ\ËX\é¸#–S\ë{±m\Ý\"J°÷Huþ>i—¬s=5\ß)½\î¦÷ºŸ¬\ÏnDy@\Þ>\Ï\å_xýc Å„\r¦\î±.Å£\Ì\Î\Ña.P4.G{hAö‹yV\ë=Ÿ³*Z~Óž\ÛqúW”ASN›³zöZ¿\Ñ5:šºZw\èf\Ów0Ev‚=`©4~±ª]/.b\Òb)S­{KCµN¯\ÌtƒGþ®\êò\Ï\ìŸUpRq?	÷˜‚–&~\ÖhNž\èJEÿ\0G¦Þ–WZ&\ÇÖ±›I‚‘a¡\íb\\Á\\›²y\ä|}b¿¡Í¡$·Z¯a(\Ï,‘©¬1—}!\Ä\Â1Ž*Æ M†œr„¼\ÃUxCÆ¸[»!,D\Ñ6\Çq—\È,£©\r\n+„-!@ZBT\ã¼À\Ú`\Ô!5÷ö@Ù†³XK¤\çIP–\0k¸B•;i#di $\ä \Ô\0\Û(%L5\É\Ð\Æ^\Z¢ÿ\0¤:G­s4-\ÃP\ç¨\Ñ\Öðj§E\Ê]_\è\Ï\Ä\Í9Yt\Z&\î>X\ã7œ¼	\æ\Æ\ÉXz±\Ô#¨w\Äs7Œpšv@’7úG@/˜\è\0\ÙY\äMµ²ˆEJ)r¦\â\nžÄ°0b)•p×ž:‹5–MœQUT‘‹\Úk£\í6³‰Ã\"\"\Ûf¤¿\Ù\ÙV€	j³X¨ÀQ2QMð–]/&\Óû6\r.h2\æ-Éƒm\Ê\à\ãÔ‘i\á\Õ(¼º\Éõ}K¯\Ìi=\"º.„N“\è©k*dùj\Ô_k¢À¥\ë\Ê-tg¸T\Ò3ZVmû5˜ª8U^žg\Â5*Ÿ\ÕY Ü–ð»ª=8!s\Ê0\ÚHþ\ÆT¿‰\Úa\à K_\Â\à¹ñk{;’©>D“\Ú\êÀlÔ \Ë\Î\äS÷\å\"VlÒ™,Pw\Óg\Ä\"\ÕIZ-ö)¥wcOgvº ÷®‹\ß{2<`\Ô;a\ê\Ê0…>1ÀNWw5:QO[\ÂqÂ‘Xi‡^„\ë%ÀA0ašNB]aCˆ3‰d\çT\×÷BƒÀU„ˆF0;û \0”+JŒ\Ì8\ê‚*œ,9hŸ\Í\Ì{\Ù\Þ \×h\Â%ôB\Ú	¼ªOG\ÈEz\Ì÷\ìGy…š•µ\Ù5¦\ÐF_yD9Ð³¦\Ä\ÓbÀÀ¦j~”:\\\ïxE4\åf¼iU\\\É\Ë<\Æ\ÓJ\Ò\ëµ ¨\Ø3\Æ,xyeRD\\Õ›)¥\ëN\è\è£Kq§xxBD|¹fˆºcO²Ú¦M²D€\í}\å»\n¬\Æb\ÎBb\0Ê•\ÄTŒ©\ZÓ‰V›’­À,\ËÀÊœ£»0sJ\æ£n‘æ¶¹\Í2c±fv$\îIv\0`X’qº6šStz·BtGW)˜M—:L\á-\å†J2LQIŽÀƒK´Qž`e®&9\Úz\ÐóeH¾°š÷\ÎK\ØYˆ^Ÿ	[Ï¸R2Ö«_Y0°¨QEQ±Qk\Ç3¼˜&œ\Ò\ætÂ©^­{*u°©\æ@;\è»\"¤0\ÈÁfr\ê>UŠBÁ\r^Q8­\ÌyŒb*!‚\ß\ë’º³#7ˆÁ€mD9ŠÂ‰c‡‹¢²e\î[¿„\Ó\å\ÄpU¡’¤£Ù´kE\Ý&ÔŒŽ0\Ë\çd\ZfQ[\ZDV?¬\Ý	\ÖnC,Bu{\á\0\ã:\ä!A\n–\Z\Ì0\Í\Ø!\ÝP…T€ ¤\çT\Â\Ð\Çjba\Ä\Å>žµ\\–@Í»#ž~U‰ðô\ÝZŠ+«)eM™»{™“ZaÈœ8½ð†T:]wBL™\ïòŽ\îPŠŠ\Ùhe7wvA´¬V\Úpœbu¢usŠ›T\ê¸T	\Ïv\ì=b\Å*y\ä‘Ie\Ã\Û\ÐK•.^7l\ì\"šŽd¼vC´T®Ë±É…\Ê\Zb	\çÀD\'v™0±Í‰4\ÙSZ\r\Ø\Å\ÑP  û#\'”©\ÙY™5\êktF:.Y\Æ\é\äM#¢]c¢NT{\".t¿&WtD\Íy‹:KKk“.N–ôýÃ¨¼\Ø÷\Å(1Qž jzCmÉ•*\ê)@Š©‚¤¼\è\0\Ö\ä\ã¸\r•3ô~ˆ³\Øä––f’k\ÊÌ‰Z›Š—j^QŠ´Ogv˜Ù±$ó\Õ\Æ\ì\è6AÐ\ìrf\ÍýÔ·zk‹ø‰\Ñý\'¶i¤•4 \ïLo…wm?œlÎŸITE¥€0S0)U\ÅB›³\ÕöZ“R\ÃNk2Û»1¶„›*l§–6‘Ù¯\Þ•\ç—:£\ß\Ê6òô”¹À¤\ÅQxR£5\ÔAÛ¾1:R\Åú¼\æ–+p‹\ÉSZm^G-\ÄC¨\â#U]1µhÊ›\Õ\ZŽÍ¬¶_…Ïƒ\0}k1’è½¢“Y5:ù®>…£X‘\ÉñJ\\¼Kó\×\ä¹BW‚9²ˆRŽ15òˆ\'\ä\ä\ÐaµŽS„q\Ð:üuc‚\ÃXl€V\Z\Ó6@Úƒ3W©\Â\ì,HS½	\np{\Ñk\r7<¼À¿¯3ùzÆ‚\Û8bOuA>”¶,s&±\Ðp\\=\æ\æú%\\Lì²œ\Ó?8‡i®Øšô+§‘1@i4ü\â°c-\î;£‰ùDdH\ÔÁÒ²\Ìú”q3»\ÊXh\É4¬\Ãör\ÞO\Ò$\n\ëp*l<Np\È×„lŒš“¼‚^Ž†GC¬Gpó´¤É²Á˜jó\r\é‡j©¤µ¦¥­Àu˜‹g“\Ö: 4©\Ä\ì<€&þ[5ª‘s\Ñ\'N7Á\ê‘	z+R.­F5\'3ºF¸\ä^\ÚJµõ4:&\Ä\Ó\ØK•Ø—,*–\ÌKO…u4\Â1<jp ;I2$\É/C8-Y©\Úl±&±S`µ\ÌIl’$\È+,•\ÄþÚ‘˜™D`µ¨©5®\'8K>Ÿ•2bÉ´Ji3¤ÁƒœÈ—1{-ˆ\ËvExQ\å¦Ö­\î\Ùb¥ncI\é²]&\Ñ2å¨›-Bv€˜ª(¬ž\ÕÑ‚µ\â1\×^Ÿ\é<\Û\Æ\Î\ç6I•\â\n|AGK¦RL´\rt4\Å¼±¦\ê§”ctÓ‹ò“\à–	\ã0—§Xdb–#NÚ“o¯\ßOAú&`YÒ›ø€ü]Ÿœn<ñ&S«Z±\è6y€a“\0ÃŒ~9O\êŒüšøôhyˆ³’¦±$\Â\ÛÀ&j9ˆ0ˆ³\ÍÙ•\Ûy\ØC‚\Ø=\á\âpAS\å\ÌÃ‘+\Þ\'†^1!V‚€\06U`ØŽ¶mnk¸eùÁ\Ã€·#®Cô\ãoc4–\ZV1\ïHf\Ý@ƒ\íxÎ‘H0\Z\â\ËJ½ùÍ±h¿_3NQ{\Ùð\ê\\ª	uzü™•¥šL=\ÌVO}dÅ¥¥„S[\æatkÏ„hÓƒ”’ œ²\Æ\äjkZ0]køvF\0Š‘A\Ã|B”‘gKŠ›q:¹eô`¶\èdW›JýX…ªa#„,\\3ÎŽŽŽ€\0Í®øô.XÌ›)\ê\Ñ^r°«5\ÐÓŠV\\²\Ù`„%Oö‚\Ñ\ÂdÎ°¡2\å•$\ÙÉ¤´{]ƒo\éI\ÊYs,s,\ÓD\Äa2T\Ê\Ñ\ßŒ6y…1\î\Ó\ä«¡‰\Ò\Úi\æZž\Ñ-D‡c\Ú\ØÐ°\ïuÔŠG~$\ì:+\Òiö$\Úl\ïh”]­E7¥>hÄ¯v™\Þ] ¦ÿ\0;³\ÈiŽ²\ÑK3ª£2\Ç!ùÇ©þ4rË•~ü\äyª\ÈòÞ€–\×\ÔPIU\ÄTŒi[t\ØJ²$É—¦€6U`²\ØÌ˜i@.x\êÄb2Ö‰¦dÇ™J^bFx.J9(”K\ÓzG®œ\Î;¡z´û•¼\Íü\ìò¢m\"!wCTyºŽ”\ÛJ=Á,û¯\å~½dK® Wð’”\Â4}š¶]^D˜1—Æ©æ¡›³D¸giX¹Ž†\Z\æ‘Éš$- Ý¡W„ò\â!\\\Þc\ïTg´Í°»…–\Ä*} H¼\Ç<F¬‡(·…Á\Ï<«\Ýö:ª\n\ì\ÑuÁ²¨\ã%\Ì1ŽI³iû\ÇüMõƒþ¹8e0ø¦1 øNx¸öf\Ä\æŒõ—N:\á1/o\\ÀùE½›HK›\Ýa]‡\às\å+\à+\Ñû£§uª%…X\Ëf¢.‘µ‰R\Ùö\Òp\Æ\íC®‘Zº\Ë.-\Ä\å\à=a\Ø,7:´bö\ÝúY\å‹er9Ì’I5;\É\ÌÀ\çM¤J1\Ñ,{\Æ;]Œ²$\Ù\Ûb\ãþ\n¼\Èó-ªÔ®\0n\Ö\ê±j1­b\Ñò¦¿W2`–47”roaþ\"\Ö\ËÐ‰L\×VVÁ@R¼«{Ž\Ã\Òú~«\Û\Ú\äUôµýÃ§\èýªNVÒ•\ÇVU¨ðƒ„*\ã6Ö‹Ÿ\Ù\â\ÖÏ»\ÈñŽ“\Ðyª—M¥UMM\0jb\ÄT¿©¹£tNÈŸ½¶Šñ–§=\ä\í\Ì^…V—\ßðŠU)\æ•\Ü>X¿\èz9;ö»\Ü&&ñöA;<!\Ãý!>\'?õNÃ¸kò0Áb\Ñ2ûÓ™ù¹\Ùÿ\0-F\ß]«o\Ñ2û²™ø«7\Ãñ¶\ï#·]¾³~š²] ¿aLh±‡\êû3–§P\ÖZ±\Ð\Å\é>\\ÿ\09_X\èN[üeò;:ü£ðO\ÑÊ’\ì\î“\åKN±Z`\"¡º¢fL,;”\ÅWkA%l›2e\\´ç–¬B´\Æ.B\×\0IÁZ„V›cso\Ñ\çG¬“:l\Éòf*Ü—x…I¤_-p›¤cPsnqœ±\Íu³Q\nƒ4\Ìj‘ˆ¡¡\Äk\Ë¾xr©•\í\ØÛ…\Ë~\àº)£ÿ\0Xž¬iMB\é1A7L²µŠvI\ÇQ»·K\Óöà º\Þ\ëŠ\àT4®\Ê+“O‰ñ\ÈD­c—g“g’bŒÁ¨	#²\Ó‘f9\nŠ\0#?oŸ\Ö\Íf8\nÀ\Z\Ôó‡µ˜‰<¨«—(î‰²å‘¨{\ç”ƒ2·xÁ—¼`\Öy“%š£\'5ñ\Õ\0B•$’’³WB§m‚6’Ÿÿ\04ø\'\Ò\Zt”ó˜O%ù\r#³ˆ|-Á|\Ï>\ï\ä\Öv=¢Ç™ò¨\0ÿ\00\âµ\Ù\r\Æ%Œcd†·}Ç«ì§”L€¬\Þ0­2 C2\Â¬…¿X\04»\\Á“µ7\ã\ë®$œI\Ä\×\\p5\Õ\"\ZpNñI?A[ov\r\Ú!Z	\×˜\áž‡T<@–[†t°fO¹4V÷h-1\Ê\ë\n–\",“ ’Ü‡³\Ú\\ñ¼ôŒ©h\Ì7ŸX—d%V ‘{:a‘º=+\Zôpò’N2²óW3\ëVI´\ãsw3¡\ëZÎ¶ŽtÛµ\ßø†­{\àk¡´jw\íwò\ÉÔ_“¯nÝ‘‹Ž‹~\Zoyü$Š^\"h/vÙµYš!2W˜pÏ¬?	È=˜\á\Ò\r\Ëw²&ªSI\Õ¨HU„‹\ÞMû‰\âŸø\Å/ckÿ\0\ZJ%‰)üƒ\Ê\æ\ÊGF.:ÁR\íûbxÊÿ\0Hÿ\Ù',100000,1000000,'2024-01-04'),(4,'AoBaL','Ão ba lá»— pumma',50,_binary 'ÿ\Øÿ\à\0JFIF\0\0x\0x\0\0ÿ\á\0hExif\0\0MM\0*\0\0\0\0\Z\0\0\0\0\0\0\0>\0\0\0\0\0\0\0F(\0\0\0\0\0\0\01\0\0\0\0\0\0\0N\0\0\0\0\0Ôµ\0\0\è\0Ôµ\0\0\èpaint.net 5.0.12\0\0ÿ\Û\0C\0\n\n\n\r\rÿ\Û\0C		\r\rÿÀ\0M\0ú\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ù;\ÄY,¹?\ë½\Ù4\Íy³ö?ú\íÿ\0²šùèžœ’\ìc[\Þ\"+\Î3\Ï5%™ð\çÞº\ßÁsu˜ñ\É\ÇÖžG5HŽ|•<œ\çÖŸsŒ\ã¹4\\aiÊ¶I\ï\Ü\Ò\Ù÷ã¹©\Ñ-ºþ\äò\Çñ4¶û¶ð+9;hC\èEXý\ç§\éSvKs\ÍXBþ”¹˜X‹\ÉQ\Î\ÑøóV78\è£™\\m_\áý*l\ÉýÁùQ\ÌÀƒrú~•.\×þ\è§\Ì\Â\Ä,ªyŸZ›ks4\î\Çb¶\Õ\Ç#?Zt·QB\ÛX©\î/\'òj3–É•v!d\ÜO\å»y>\å£À\ÈZ\Ú4k+)S¿A›G¥9¼ö9X\âC\îIþ•¯\Õ\ëv²}†4yúS¶\Þöû?\ä\Ô}^·`öR\ìDc­J\Æ\éz\Ãÿ\0º\ä1K\êõ»\Ù>\Ä,«ô§5\ÑFý\í¬‘\ï˜~•›£QoK¦û\Âÿ\0‘V\"š;…>S+\ã®\ÓÒ±i\ÇtG+\ìVmŸÅ–úóV\Ú6?ÁSqò”ÿ\0w\èjÏ’ý“4s”¯òz\Z±\ä·u\Å>v;y‹Gž?\n£\Û\ÕsK™Š\ÞEr\ËëŠŸ\ËÝ£˜Vò+noÎ¬yCû´\\-\äW,=MXò\×û´\\-\äU\ë\ÜÕ¯-Oj.ò*¶ýjÏ–¾”\\-\äU\ã\×Y0§\\Syx\Ï_Ö¬y*;\n\ÞD\Þõ)„/j\Ä…K\äJ\Z\èµÿ\0®ÿ\0û)¥\×\Çü{ÿ\0\×qÿ\0 \Zq6‘kóx€wXÿ\0\ÈÁø\×Wüºf=N‰³“R•\Ë\ZÀ\Ñ\\\Þ(÷©&P\×\n?\Ú4\Æ:\Íqž=j[T\á¿\Z\ÎCyÇŒ\Z\Äo­¥Ä½»S\ÃÖ‡+\Ñù‰þ\Õs\ßð•¡\é\ãý\Ü\Ñ\ì¤Cº>8jÁ*N?rÿ\0÷\Ïÿ\0^—²Ÿa\Ý#ÿ\0hVBøš\Ç\È\ß÷\Ïÿ\0^—²Ÿ`\Ð\Ö(¿\ÞqY¯I¨–Ž\Î=€p\Ó0\á~ž¦¶Ž¬ºrý\Õ\ä6¬|’J\Ã\å‰ycþU·µHÛ’\Ìr\Î\Ç,\ÇÔšï§[É*ˆÂ—7X3J\ÑF\å”müÛ½[¯Bzq\èo\ZqC ·HW¢ ÿ\0dT¢¶QŠØ®TqKO•*¯µ\niˆZ(`u¢€\r¹ö¢˜¦³†V\ÜS::ðßOP\ãh\Ñ.)îŠƒ\í6ý\\\Ï©8aþ5n¹e„§.–3t`\ÆC\"L¥£— ¹üGj†ko\Þy±1ŽP>ð\è}ˆ\ï\\5rþ]`\Ì%E­™a\ãjªúôp?•5¼¾h!FA÷¼\éQ©\r\Ñ\Î\â\Ñ19ý\ã~µMüCkY\Ïü³\å—c6\Òe¿%?\ç¡ü«=¼HŸó\é7ýóO’]‚\ë¡xÆ¿ß¬öñgþ]\'ÿ\0¾h\ä—`/l\ßâ³ˆô´›þø£’]€\Ð\Ú?½Yÿ\0ð\'{I¿\ïŠ|’\ì+£C\Ë_\ïV{x\ç\Òoû\âŸ$»\åöUéº³ˆý\ãþø4rK°\\½´z¨n)ÿ\0—I¿\ïƒG$»tªúš¢\Ú\Ð=-e?ðG$»K»W\Ô\Õ\ífÿ\0ŸI¿\ï“G$»…\Ïs\äúoÿ\0²\Z]{þX\×oý‘¨RFN’›¼L£¶¥O F\Å\\ô?¥tMÚ™Š\Þ\ÆûF|\çúÔ“3}kô6zlTŸ‹\ä\æ–ú6ˆGLÿ\0Z¡­ó\å\É\Çf«p\î\îùVRR‰dò\0¦\\‚„x£™•b%3Àðh[Oœ\ïP?Ý©\æy#N\Ü`\ß#ü*¦±{-Š,K:‰d\ä¶Ê½\ÍoJœª½j ¾Ô®f™­-\ä¨\âY•FGû+\Ç_~\ÕBy\ã	kx=½ý«Ú¥„Œu–\çDi¤]·!ŒG\n«\ÑGjl1-¼ac] Wj‘Ò’\èXª—’7–#FÄ’ úzš«X·¸\n\ÅyE;Cz\ã­-¼kjŠ0ª0(`Ô”\0\í\Ô\Ú\0Ž\ês;€\Ëd(üN*+\Æ\Ü\Öëž²Œþ\Ð\"\ÞsL\Üi’™»Þ˜¦f€#†V2JŽ>\é\È>\ÄqP\ÊLwÑ·ðº•üG#ú\Ò\å01\"˜&’–€G\"0Ä‘·—2ý\Çôÿ\0\ëS‚©\ÉÀ¨•8\ÉY¢e!ðj77Ÿ\Þ6\å8eÀ\à\ÕF\Ú\\, üŒB\Éô\ì^6#\n\á¬N:”ùU\Ñm®n¾\ß÷È©þn\ìµ\åß¡P\ÝOýöð\Zµø­!>\Ó69‘¿*´\ÄzŠ/\äIS\íÿ\0\Ïf…X!O¥ò¿\Û\'\í;c\éS|¾\Ôs\n\ÄnŸþ{·\åRVô¥p#ûd\ßóÙ¿*w–¾¢‹Œo\Ú\å\í1…)‰ÿ\0®‹Ú§ÿ\0ž\íOò\×\Óõ¢\àWñc\ìøÿ\0ž\ãÿ\0@jˆ—÷–\Øÿ\0Ÿÿ\0 5iMØ¹+š\Ë\â‡ÿ\0wúS´÷x©‡û?Òº*?Ý˜Cø‡C·÷ŒMM·\æ<w®{šØ§r»§Cþ\ÕI:ÿ\0¥Æ¾\æ©1—¬\Æ7~5-’ü\Äc\'¡²‘[\Ê|¬\áV\"Z1“Û±©¸\ÊÓ´–ñ<²L\"–cŽ€Vw‰$ò¬Ô±|\Òs\Æ\Ñ\Ûñ5\ÕB‹¬ô-FûÖ¾f©#_\\®<Ã¹\áíš–kÈ­p¬\ß;p±¨\Ë ¯¢§J4Ö‡Dbù[Ì¸Š!þû}ÿ\0^µ>\é-\â¯Z[I\"\Ï6\ÆRyØ½yT¤¡«5Z•?JõŠ¾\Ñ<\áu6ø¸ºŸ™e;™QA$)\ì:TB¼j;#Ekž5$\Ã\í\Î~\ì+±~§“ý*~kKua†™ü\Æür\Çù\n×­ˆ¹\Ñÿ\0d\Ý[\éš„ªÈ‡<³.3Ç§5\Ýxš\Å`³ð•\Ç\Í»\êîµ´z¸ô(Š\Óà¿ˆ\ï.#UŠ‘\\\\;\áy\Æ:\äWÑ±ª\Ç;(\Æ}1^s\Æ\Ô-Dð{_‚76V÷\×:\Õ\äp\Û\Û\ÆÎ‚\Ø\ä¾s’8\é5°ü?Õ¤B	’!#ý¢]<EZ“³erŸ%\ÝN\ß\ÛVQ\0vùrH\ß^\0þfŸ\"ÿ\0§G/l²ÁA?úz—\Ö\Ç;Ü»º£\ÝZhY.ñQƒš\0“Ì¨÷{Ò°j·\"\Ú\Õg#\"7V?BpÐ‹›9¢a¹]pA¢Z\"e±\ÑhúÞµc{qfžw\ÙUd’%\Ér¤\ã w\Åu?\0o$·ñ„v\ïò´–\ïuÁþ•\ÉV£¦®µ50_Áz\ÜzLÚ“\é³\Åg¤‘vœ\àu\Å}Q}h—¶s\ÛÈ¡\ÒX\Ùn˜\"¹£‹n\×Fœ§Ç’\éó]\é·3Æ…\á	#\á\Ü\é]o„\áXgñF“.0öS(Š6\ÈþF»¹É’<ò¾\Ð7I?Ñ…A¾KF\ÇE9Sþ\é\íúŠ§k^FNÖ±³§Ê­f«\"³I\È\ÇH\ïWõ\ëøGüKsm™-nbK¸z+\Çò…|þ\"—,¹¢qN<¬¨\ÒG\Óiü©Z\âOù\àk‹¦†L‰¤Lý\ÓùS‹9\ë-I#2D?…¿*sgû„Sžd>‡ò¥-Ÿ\á4ì€¤‡ý¯ÊœIþ\áü©\Ù\îFdŒw#ð¥?\î0¥d\Zó!õ4­\îÑ j\'™÷š“+ý\ÓK@,ø™~kú\î?ô§ø‘ymÿ\0_ÿ\0@j˜5›\á\Å\Ý\â\×\ìŸ\åOð\Úÿ\0\Å[\'û‡ùWUO\áœ\Ës§\Ï\ãRÄ›•¿\Þþ‚¹®u4f\Ý_BG÷È©ncÿ\0LŒzITŒ\Ë\Úoz\0•-Š\îiGû-üª\nHÍVµÛƒw\Z˜$TQ\è:x‡|–H\à\rÅ·Zò\ÆEõ\î¤ú†­w³•C1*ŒgS\ÍR“T³\Ò\íw\0s¯^N–+\èpô\Õ8£H´‹ñC”RI\Õö’\ÎÜ±®ZMrmbòT\ì…\äQµ{Œ÷®\Í\Ëö‘½uøfdñdR0\æ\Þ\Õ\ä9\ìNõ5\Æ\é:\åæŽ·B\ÎcÚ¢òde\ë·9À=«žµQY¶\ç¢þ\ÒÚ–\çÓ¬\Õø»‘\î\Ä(¯&ñ¡s¨}˜\\\ÜIp\Û\ÕJÅˆQ\Î9úR£G\ÙuÔ¹OK\"²0mb8‡	9Ç¡$ú\n¡g<§Z\ÔeDÞª\n\ç\r\ÆO\Ñ\Ë\ÍsK›C×¼e\âK9<i£\Ï¢{=:+x\Ù×‘• ¶>•\æö÷ð\Íò+€\ã¬m\ÃÂ¡RJ<¬Û™Z\Èõˆ\ß¦ñ\"¶Ÿ¤™-t\ÓÄ’ooa^_º¦8zQ\Õ\"”š;»ïˆ‡TønºÏ˜×±Ê%<†NpO¨\éøWXŠ¸Ñ„_2\Ü|ò$l4ùù\Ì\×? Eþ•¥}jcðŸ‡\æþô÷øñ\'úV0—5[3nfQ]\Û\Z\\( w\nnM ¸Ûƒˆ$=>SLºoôy>˜¬\ç¤Yz–“¯\Âñ{\Ñ˜BÅ„a±ñƒüÉª>=_\'\ÅgŒ	-!o\Än\ÐW%\Z\ÑjBƒ=b\Ú\Í\ïmôé£´aþÅd?\ì\ÔWƒ\\]Gj›\åuE÷«ú­.ˆ\Û\Ú3ªo[\Ã\âýBþ\"M­\Ã\Î\Ç%\\68üEqñ\Ï5\Ó,˜1E\Ô)\ê\ß_A[¨$¬ ¸\Â\Ç{žpÿ\0Oþµ-\Ç\Ì\×\Ã\Ö!üš‡†z/ˆ5¨®§ð\åÀ}\Í\rš\Û\Ë\ÏC\Îü…s²¬sX\Â&\ÆLE±\×Çˆ¤¥M™\ÔI\Ä\è\ÛQƒŸ™1T\áÑ¹ý\Ý\Ç\àõ\àò\Ó8’e“}g\æþUU´\r!“n‡üQ\Ë\ã³\'7ö9ªG\Ãz?cwÿ\0}ŠžXwbÔµö¸ýj‹xwJõº\ÇûÂ£Ü›2é¼„ÿ\0¬\æðþ—\Û\í˜§h†¥æ¸ƒþz\n¡ýƒ¦Ÿh?ˆ£\Ü\î\Zö.}¢\è\â¨ÿ\0`i\ßôð?N\Ð\î}‹\Þ|?\ßZ¡ÿ\0ý‡­\Ç\æ(\å‡q\Û\È\Ùñ\'Þ¶ÿ\0¯ÿ\0 5\'‹Ôµ?ô\Ü\è-\\´\ÝÎ™¢‡†ùñtŸ\î\åI\á<·‹$ÿ\0®mü«¶§ðŽX\ëR\Çab»\Öc\×\ßÒ¥\Ò\Ø4w8þûÿ\0!\\2}Ž½\nb1%\ïNŒj{u?noÆ­KC;`¿½—ý\Óüª]&<\ÝI»¸\Ç\éI²\Ò1u_—C¼>\n@\ÄsþÉ©µ-0\Ýh÷Æ¹‘\áe=ðk¢¹¥³<E!ùW\Ì&FÀ\å69e‘F\Ø\Âý\ã_PºNæ·‡akþ‹¹\à*Çƒa\íIY\Ø±c\êkH•\Ù\Ù-6®Ç¨T\Ô\Ö\Ú\×_\èioþi-Oý5ô4š\"F~‚w\ß\êŒyý\èþTš\É}ªd€ \äþ4\Óz³JóO·¾P\'ˆ9£¡\íZ6:m\î©Í•œ÷CûÑ®þú<TóÁn\Í\\£\Ô\ÂþÈ¸·\â\Öþe’_œvQø>\é}\æ¡a`¸\ÉO5Àú:\Í\â)#+Ç¡\Æ2kPýÖµ˜ö\Ü\n×¢C\á=\ÛOkË­V\ê\áoù#1©\ÏA\ÐúŽõLMöl\å\î\ãñL\Þ	Ñžx4\Ø,¢Ÿ(ñ»¼‡!‡#\0¾µ\ì:n‹¢\ßh‘ij©sg\Z†òY\Ë\Îy\ï\Ô×ŸJ^kûž)n¯\é+¿\Ð(¯|³ð~j?s¥Ú¦:%sù\Öÿ\0_òš\ë\Øðf¼·¬ñ¯Õ…}ý“l½-aö\Ì…O\×\Ó\Ú#¼º#\çe¾µ~“\Æ~šú3û>\äAýð(úÿ\0÷Cš]\rµÆ¥$\Ö¸–dEgR\Ê9@#Šú\è\ÛÙ¨v@£=R<Ÿ\ÐT\Ë\Z\äš\å¹­©\àþ=\Ó|Oÿ\0	¯ö¦¡bªm\ÈCg_”7C¸žk\Ôoõ]3WÔž\Ö}&k\ä·@Lf[i=†\ïjš8…OtB·Vx½ž‹¼¾tŒ÷7ÿ\0[1\ÉA\ÐW¨Ã£øKQ{†RX$m°\ÈVHF\î\ã=8®…ŒTU\Ñ\çÇ§\Ý]|3Žö\Õnt}A¼·X\î“r°öa\ÈüÖ«I\îÊ¹\æWM¨7û?ñ©µ-2\ïIÔ¤\Ò\ï\áò\ï\ZE•ü²Y\n„7\áÞ·Œ”\Õ\â\Z2Y”-ª\î.\ß\ÃT—ºñQ[øl%±\Óyc’¹¤YX\àù5òRø™\Ä\Öþ«ùRùŸõCZ@B\ÞFzÊ¤f~Ð­1•ƒ\ØÒ´’ž­G\ÌŠ\Ã\è)Y¥n<¥ \áö¤o7þy­\02H\àÚš\Í6Õ© ò\áþò\Ñû\ßùæ¿•\0ñvÿ\0*Ð±ŸøsŸº\Ô\ÏFñ\ÅiºMß¿\èGû-Eo7¥Š>cÿ\0	4\çþ™µE\á’\ÃÄ“\à\ã÷Mý+¾¢~\Ìå†’¹\Û\èt¹\'Ÿÿ\0¦ø]„–r0\î\î•pMr\êuGr\Äuñ\Ç÷yûyúš›Šú\Ø~ž1{/¦qŠ}ª•¼”\ï\nw¾†L+\Ãs…Ì¢\ä\"¤l\ØÇµ7X»Û¢_®\Æ\ËF\Ê×Šé¦œ¤ˆ‘\æZ†žò\Ý\éöv\Ñfy‘QF2\Äâº¯\nF$ø¢F\Ã;#ðF5ô•%\ì\é©TŠ\æH&ð\\ž\Õ\Þ\Ú[µº’KxÝ¶¦Ð„“‘×ž•\Ôøÿ\0÷ž.ºôX£_ÐšxiÊª¼Žºt\ãœ©6Š\í:lU¼…\åƒ÷{LŠÁ”7N\rZ‘¶\Å!ôSü«9Ë•\\R\Ø\ë¼\à½D\ÐW\ÄZ\ã\Ã\æ\\(šF¹lC\çTûzó^÷yû2\è^:øoc£k7WI\'‘±\ÍlB˜$\Ô=OZù\É\âTªZR²99^\é\\ù\ëXøù\à.KX¦¹ºeR(\"*‡Ž;ŒŠ÷_ŒŸt…?²¯Š´\Í\Â\Ú\ßOò\Úñ¢S<¤\Ùñœž{\ÕÒ•*²²l†\ê¨\Þ\Èù¿þŸ…t­lt\í>\é\ß\Ê–XU:Œ1\ëõ¯8ðn†ºæ­¥i‚X\í…Ó¬fg\è¹\çóô÷\Åz\Ë^L\Æ5\'\'dwú·\í«n–z\r\ÃZ\ÄC2\Í ]\Ø(\ã<\Ï\å\\ÿ\0Ä¿Á\àŸ>—o;\Ý@`Y’cp\ÎF>•¬pT¤®˜\ä\ê\Ãs\èƒ\×þ\"ñµÆ“y®hq\é>Ö¢/§\ê\Ör‹„/\Ú)z\'œg¸\Ç\\gö¸’_†~ ³“-ok¬°‰O n‰X\ãñ$þ5óø»R—\"C \ç7«=š\ß\áž y·wA…¯@P;+\Èö³\îz6±Å¯Âh\Ï?Y+µ?J^\ÒK¨X\â\ßáŽ‡9ŠVõ\Ð\×e\"ñBª\ï«ür³ø\á›mg\Å6‹e\á_	ØºCkky\"\ËwtKmWÇ3Ò»ø(Ü°ü?ðµ¢1\\\ë J¿\Þ\Û°\Ï\â+\ÝÀ¿n\í$r\â#8+\Üù^Œ;·Y.mÉ™Ì¬\ÞJ\î\ÉþBºŸ„ž\ÒüY©^Å­3\Ãp„	|½\ç8\'=ð?{\Ò\ÃÒ¦¯(œ\Ðö³øY\ËIñ¯\ÅÖºlV.–i!Y¼“º\\œ\Çwñw\â±|u¦\Åc6¥[´rº\Ä\ÍÕ1\0\ç¾ELð”¹9\Ò3©\í!»=²_Š^-ø{uc\ÄÏ¡X] òo!m¬\Êx\í»>\ÕõÆƒ\á{ˆŸü+a\âe½‚}6\ÎY¢*£\ÕF}³_;R­8»8›Rö²2‘òŽ.RûÄs&	­\à‘ŒnV\\©üA®Ÿ\ãô\Ãñ_WŠ$X\ãH\í\ÕUF\01¦+\ÙÁ»\Âç¤¢÷‘\çý\Ò)fùcc]U¾)ü\'H—\í\0H:z\ÕeTeˆþUò2Z³\Î-5\ÄCþZ/\çT%·Goº@ô\ÅO(\0\ê\ë\ÃYŸe…{Iô\Í.P4v¨\íY\â8—ø$üI£”­€j®\èñ÷\ZŸ(1ü*›2u\Ú\â—(ªžôÿ\0jŽP-U?2?ö¨\å\Âê–¥¥iÑ¿\Ýj\Å²[@nf”y¿vB\å[Ú¦Œ¼\Íjúùzõ\Ëu\Ä/ý)tŸ\\ƒ\Ï\î›úW¡\'\î\Ü\æŽ\çg\à“»J ÿ\0yÿ\0¥?\ÂQ¬v…Q^}]Î¨4ÿ\0øÿ\0÷ˆýi4ü}ºOf?Î“øC©<g÷\×Cºôü©Ð©ó®\Øz\åD]¬ic\Íõ-GUk6†[r°I\"#I°\ã‡z\×ñH\Ö6\ÑkL™\\ñ\Ç?Ò½\\2R©±”V¶¹\ÏxQOø›¦O#auŒ±\í¹HþdW3®»®±;£l‘XaØ€0kÜ«zvFs~úgªøÕ¿\â®Ô³\Î<°?\ï\\ü>\">(–]A\Ð\Ç,›Eÿ\0iP)?BEF\Z.³;\éË›b\Æi».lX´‡\í\Ã\ÞI?6ú\Õ\ïG\çxGˆŽ$¾OýüZÂ¼­M´D¶?A­!òm¢Lcj*þB§‡\î\â¾¾f\îLv8oŠ:\nø\Û\Â ð}\ÅÂ¬šÝ”±[,pœ\Ævý\çl‘\Ø\çŠ\í5\r6=J\Ö[y\Õ%]¬cb­b:V\Ôjº.\è$¹•\ÍøNò\Æ\âojV?a\×l\Ãw\ã•#£\ÝOb:\×è†¹\à\Är¬º–‘iw2®\Ñ4‘þð/¦\á\Î+\é\èg‘§J2§O‘ÝŸx«Ã‡D\ÓdšX\Ö\ì>B¤hY\Ýñ€ u$ñŒW\Þ:?\Ã/\rhwqe£Z\Å2ý\Ùw÷³ƒô­¥ŸÃ•¨\ÃSY¥%¢\Ô\á?e…÷_~\ØZ\êI\åk\Z„¨^F\Ýcg\Æ\Ô>\ê¡A÷¯cU\Û\ï_\'^»¯>yÑ£\ZHr®)kˆ\Ø(  T6·\"ò2\á$Œ*VT*\Ügž‡½\0x\ß\íUð¾\ï\âg\Ã6M6´jºU\Êjð÷/\ßA\îS8÷¯hh\ë³\rŠ–\Z\\È™ÇœüñÒ¼.5˜w\Ê\Ë¦0³!§ÐƒÈ¯¾¯¼\'£\êŽ\ïK³¹p1ºh\æE}Tsø\ézc‚\å\Ò\Ç\ç\å\Ï\Â]S\â\'ˆ´ÿ\0\ØDd¦Y//×ˆ­mË³7@H\à¤ûf¿B\ìô;L6Ö[\ÂFqFO\Ô\\¸œ\é×,ac*”ý¦›#@µ1Hbˆ]Z\Ú\ÙD¶qY¶\Ó\"€T g‘\ïõ\Ñ\É…@U\nª0\0\è|\Ü\ä\äµ.\äI.‡\Ä?¤2ü]ñ&…\â_ü‚•\Ç.~.x¤ŽŸhŒ\ä¯®Á+RF\ìó\Ë\Æ\Ùi)ôRiºƒm±œú)®Ê¿3Ÿ\Â\Ëk\âI0?\â_-_]B\ïh\Ãvþè¯•—*•¬y~eñ§þ\\&\í÷\ß\ãý\ÑKN\Ã\Ô\ÌoMž,$ÿ\0¾sW\ÛP»\ÉÄ‡þù{½€\Ì>$œt\Ó\æ?…h›ë®¾k~T{½†gÿ\0\ÂE)\é\ÓþUp\Þ\ÜrL§ò£\Ý\ìIž\Þ!œô\Ó\æÿ\0?…[kË–ÿ\0–§ò£\Ý\ì#=¼G:õÓ¦ýÂ¯ýª\ãþz“õZ=€\Îÿ\0„ŽoúMùð«ÿ\0j¸ÿ\0ž§ò\íÀ\\ñ€;mò\Ûø\ëTž.?º²ÿ\0®ÿ\0û+W\r\Ù\ÕWSAÿ\0\å\é\î cü¨\Ð\ä5|?\é\Üÿ\0J\îwöv8\Ö\ç_\á¦\Ûÿ\0®gùŠ‡CcõÖ¹g¹\Ó\"þšÙ¼˜ÿ\0´S\Ó\åÿ\0H˜ž>sP\îM»fK\Ìú\n¯n\Û\Ú\ì³\ÅM¶5L\åõõ\ÊYþa\'þù?\ãPkR3]Z©<fþU\î`#\ï6(ny¾¬Åµ“\êæ ¼›u\ì¾\ì\Çõ¯jG-Oˆ\ê|\"\â^\ßõ\Ðÿ\0J_ü\Úkÿ\0\×Vª‰×†\Ø\ß•EY\Ø\Í\Ï¦\ïh+\ë¨[ÿ\0\èÅ¦xZCo\âm\Za\Ö;\Ø_þùp¥rb©39\ì~„@t·vñL§+\"5ñnØ¹EE\ÆRQ@À+\ÄWW:\\i¨\Äû­\í²\×0\Ñwaþ\Òõ÷(¹\Ø\ÝXK\ã\r:h\Ã\Ú<ÚŠ°\Èk8Z@G\Ô~´r°7k\×\ÄWWñAý‹¨\Å™ÿ\0I•P\"ýF\í\Ãò¢\Í¹E \n(\0¢©0!¸û½3UõK¡ik4\Ìp±¡cø\n\Ñk¢)üZ¾þ\ÒøŸ\â©@ûiAöQWúV¿x5k\×Ã‰/\æ;\ÏñW\Ùat¦†`\êŸò¸\Ç]†Ÿ©)û\rÀÿ\0`\×\\þr\'ðšk$›\å)‹,žZªF|¤¾\'s\ËØ“Í—û¢¢ó¦þè¥ \Åi\ä\Ïú±QùòwAšV$s]H½cžkq˜\è\å>\Ôý\â\âž\\c\î·Ö•„@\×¼U/‡ô]§ÿ\0¦X©ÊKA•¼\áýÊ±\Å0&ñ[\îŽ\Ïþ»ÿ\0ŽµA\â†\Ý˜ÿ\0¦\ßû+W=wciÈ§\á\å\r¯^\Ð\ÂG\ê)\Þ\Zÿ\0ôÿ\0õ\Ì\×l´…\Ì#¬¬tºii³üz«\él|\É3\Ï\Ì\Øÿ\0¾«šF±z–´\èÁšo÷\ÍI¥ü\Ípé¡©f‰\Z:j\â\âPy\É–lIOµOR‘\Â\ê’Ô°	ù!\'ŸsT\î\î\"š\ê\í\âc XpN1\Ï5ôxd\ØEœºøŸ\\ŸÖš¿\ë\Éÿ\0dW¤\Õ\ÎI\ë#³ðwü‚\ßþ»5/ƒÿ\0\ä\ßõÙ©\Ä\í\Ã\ìt\nÂª\ÝLa¸µ\çÜ©üŽ?•Sg]\Í\Í\ámõ­5Ý‚ ºŒnc\Ç,õ®k\ÅM]¬AÜœŽ?ˆW5xûXr£9\ì}÷ð\Ã\Ä÷M6\ãÎ¶û™<”?\á_+üø\âö\×–:¤\ë£	Ì‡	:ô\Ú\Çû\ßÎ¾R¶¥=lg\Z‰\è}Æ­X\Þñ¶¿b—0|dò§\Ð×f·7ó7)ªùu Š\0dÐ¬ð¼nGH>†ŸM6€«¦\Ø\r:\Æ\Þ\Ô6ô‚5[\è1V¨¸\\“u ™$›hdm¢¹¿x\ßIð>‡>©­^\Çee\å˜ü\Î{*Ž¤ŸAZÆœ¥²¹GûCüD‡À^½œ¸û]\Èòm\ã\Ï,Æ¾0ø\Íñjó\â\ç‹$¾o2\ßK·\ÌvVl~\âÿ\0y¿\Ú?§Jöp\Ø9]Jf­\é?\Âe\ÛH\r#\ï‘\å‘Ù½IbI§ø_\Øñÿ\0¾\ßÎ¾‚*\ËB©;\ÇRî ¿è“€:£*’\ï›I¿\Ü5Rw‹E\Ï\á,\ÇyH=…E\rÅ»F˜•@þ.k\å§ñ6yI|‘ž:T¿d•—rA$‹Ý‘sŠ€±\ÙÁ\èy¨u\Ú\Â\ÇCŸ\ãU(\Ü,>~\Ñ+E\Üø\È\\õúV\Z\ÜL¸­\Ôc­m\ìÝ®Y½%œ\Ðð\ê\éþð­»=rE´C2\ã–k{°¹WsŸ1·÷t\\\éW¼6\Äs\Ýr*\ÅÊº3œu\ïš\Ü}\Z\Îqû‹­­\èÜŠ/\Ü\\¬\çò\ßß­ŸøG[þ{\Ä\Z9r³\'ÄòYúmŸüt\Ô> “w\Ù@\ç÷¿û)§I!ÍŽð\Ë\í\éÁ?òÍ¿¥Q\Ñ\äÙ¯·ûH\Õ\ÓV>\á”4—1\Òis‘ýw°ÿ\0ÇS\Ñd?¼c\É\Ïó5„‘·S{Lùc—Ÿ\ãj4üy2¼\Õ\Í--\Ù\Íû\É?\Ïj†\Ìng§úUGrŽ#Zò\ãmJH£X—\Ê\0…<g“ú\Õ}y‚ZjD­³ô¾Ÿ­ü1l\à“ýsaýhOõ\Ò~Ê».pI\ës¶ð†²\Ûþº·ô£\Â\'þ%¯ÿ\0]Oôª‰\è\áö-\ë\Í\å[\Û\Ëÿ\0<\çCùœRx•whÓž\êU¿\")\ÈÞ¦‘¸x¤Ä–CØ²Ÿ\ÔT:¼¿hð\É|\ämSúŠ\Íle7\î\\\äò\ZfS\È\Û\Óñ¨›‹œ\çø­fy·g«|3øù\â?‡\×\0y§R²F\åL\ß8_@\ÝÇ±¯0·,\ÌÊ ±-€\0\É\'\\µ0\Ôgñ#XÖ”zŸ¡_ÿ\0i/ü@hmEúéš£qö;\Ã\å–?\ì“Áü\ë\ã\'\áˆµ[º–ôøkl1\0g!Gõ\Åy•0TW\Â\Í\Ö!õG\éDs	\0 \ä„W\Î~Ôµ\rO¶:f§sj¾R\ï2/º?²?,W•*:\ØêŒ¹•Ï¤·+\ÇôÏ‹ZÍŠ\Ô4\ë}IGüµ´%\Ïü²?Z\Ë\ÙÈ³\Øk\Ó~1xz\éqw<úL\Ýã¾…\ß@ýh\ä}P®wÙ®RO‰>Š#kú{/û7\n\Ì~€“øQ\Ê3©.×“\ë¿¥¹I!Ð¬Êœ\à^_)õXúŸ\Ç^É±«™¨j–ºm´—S\Çmcs\Ë+U\ä\×\Å^:ð—Š>\'´Úï‹¦ºC#¬.Se¼`1\0LñÔƒ]´ðj_¬sÎ¼#¡\éÿ\0?lmAYlü+öõð\Êý©ò¶¨}s\Õÿ\0=\ë\ã\ïhþ\Ô\r–¥‘:ò0r®=T÷\êQÀ\Ð^f//²‹¾0øƒ¯üC\Ô\Zû_\Ôå¿”91\Æ\ß,Q{\"ó÷®f9õ\'õ¯F4¡…Ò©)n\Ç\ÆO\ïûT\È[0\ç¹$Ö„\\\í¼&\âN?\ë£ÿ\0:Á\í$új\ÕHôp\îñ±³p7A =\nŸ\åO?t\ç¦)2\ÕXÅ†\Þ\Î\Ú5h\áý\ëG÷‰\é\ÇZ¿‚5;\Ý=g\ã‘dL€­ó\éŠðe(\ÝÝž[ºc4Í¤È­2\Æ\ë\Î¨.›6—4v\Ò\ÆÈ±¯F\ë7H®fŽÑ¼Hú…¿\ï,\æua÷Z\"A•W\Ðõ\Ëß±\Ç\nJ\ÓB\"üÀZ\çqQ\èZwÝ™z;\Þ\ÈòZ\Ú]@ü³h›o\á\ÅoMu®LÄˆn}±\éBœÐ¹Q\Ì\Ã\á=zD]´¡{eÀþµÑµÆ¬«óY]1õ\ÚÂŸ´Ÿ‘<±ó0\Ó\Â^$NL\ïH¿\ãZI©·[+¯\Å\ZŸ4ü…h•¡ðö¶¿~(‡ý¶QýjI!Õ¤\\%¬\ÉõCG4º\Ø-þ\ÃÖ¿»ýþ\ãQÿ\0g\ë_ó\Îoóø\Ò\æ}Ð­?Z9[c\ß\Íÿ\0\ÙM3T;’\ßþºÿ\0ì¦¦&E£\Ûù\Ú\äœ\í\ÛþkÃ¿ò¸?ôÉ¿¥uM¾Tg÷‡\ã;¤\ç¥K¢ü—ö±ú\×$\åÍ±©­b\Ûc›ýö¥±ÿ\0S?û\íX=MQb\ÍNIsý(·q.ç€¡\èj£º(ó=vCý3Ì²“ùµC\âRc\Ñ\íPðX‚*ú\Ú1\å‚ô‹¹\ÊCþ²Cþ\Ö?J ù·ŸW5¶‡;O¶tù÷e?\ÈS<\Ð\îW¸—?ø\è§\Ð\Ã\ìk\ê\Ñùš]ÒŽ¾[*³*ù‘:Ÿ\âUHë–¨\æa›\Îð|Ãº}9Èª:l„i:¹\ê#\Ü??¥fqóhÑ’\Äý¡?\Ý?\ÌR°ý\ìg\ê);W¡\Ôü,&ø£#€TO»qŒG\ê+Cá†µøH´½v6m.¥Y\'\Ü\\© u +Š´½\Ý	\Öö>‘\Ô4©oc—Èºkg‘\n6Fõ ‚9¿=±Z±(+^[w::hcÙ®±¦AEµôQ Mñ¹Ž3ƒ‘\ÛÖ·+7ËŒ\å¦wö\Äð¨ó´Û¤?ô\Ì,Ÿ\ÈÖ‘/\ÛHËƒ\Å—[¬wK2(v­\\|§ œô4\ëœ.»f@å¢”§\Ê\ÏÖŽE\Ð~\ÚD/¨\Ù\Ã!š=6\á\æþüv„7\çŠÖ§Èƒ\ÛK±\ÏYøŠ÷[i\ÏNko)öHo›k)ÿ\0qry\ëÖ´-Y[[¾\n1¶8ó\î~o\éG\"Ž¨m7¡OKð\ëXÂ‹uw%é‹*5$“£¯^\ä\Ö\ãt\àóL\ËVxW\í*,\Ú\"mf\É[w°+\Ç\çZ<«ø\ç]Œi¢¶„°™Ê–g$\à`u\Â÷õ¯J„’Z°–\Ú¿-¸\'\Ó4—\Ñ)Ô£¯\È\Êzƒœü\ë¸\Èt@¬j\\\nwj.€\ì|\Z\âV\ãþš·ô¦x7þAòÿ\0\×VþB©–\á:\Z;S:û–¼=\ã‹k(\Ò\Î\åd\Ë%˜\È\ëSh~³\Õ4÷y\ã\Ü\âW=\ë\æq‘¦§©\æ\ËI©g¹kµ€g”nÿ\0K\n¤1¤Kò\0/\á\\\Óf+žw¦M&—¨<k/“4r}\ã\é\ëùVß‹<5ôÿ\0n±k¿Ÿ˜Š\ëN2Va\Ì>\ÇV»¾’EMrKw\ÎF\äÊ‘\\Ág´‘[i\r\ÉR¾ˆ¦é®…ß¹\Û-¶¨\Ã\']‚Aî¦¸\éõ÷K©%·	yùW\ã\ÜTû9t4|ÎºK=A—vöòóýkÿ\0„\ÊóŒy.ÚŽg2yâŽ†K{¸[[Œ{\ì5\Ê\Ýx’\â\àü\ë\n‘ý\ØñW\ì\å\Ô^\Ò\'K\ä\Ý\Ðz?û\â¹\í\Ù=þø£Ù¾ÿ\0½¤K\×\Ü\ÇývþKx2°\×o\èi@$;EG¬O\Û÷d~¢¢Ó¿\ä6Gl\Z\è—\ÂB\Ü\è\í“É¸\Î?Š¬…\Û\'½pš¢KW\Ûž\ìMB®±\ÚH\ìv¢‚\Ì}\0¤£wd;Ø¥®ê‰§\èw,[\æùj£©\Ï\é\\]õó\ê—\á\Æÿ\0«Sü+þ&½j7¤¤s\Ë\Êô*\ë2M«4jª †>F\îXþ©ø¯j\Í$Œ\'^R1&\Ò&·„´So \ä©^µ¹Ucg\Üw€\æi¡¼\r\Ô:ž˜\íNð¬g\Õ5\ÇF\n\Ãõ§\ÒÂ¶\Ñ\ÔÐ´\Ù\ët±Ã²µ®§>ÿ\0˜˜úò)þ&C±+/‘_ñÁ”»ž]V\à\ît\Ð|ñ]\å¬SGŒe€`²\\\Ã#\ÙH\ï_Cø>\ã\í\ÞÒ®7gÌµ‰ÿ\0€Šó%^Wh\åJ\è¡ká—²ðl\ZN›,pK*¨\ì7)a‚sõ#­u°µµñ\ßO\äi/ó>?\ÕH{g²±\ï\Øýk’Sw»4QV)iú\Äs?‘:KÀ>h$\ïî§£q^¿\â\ï„z~¯§ÿ\0 Ä«*Ž\"rv¿\ã\ÔzË™©æ™®oY\Óõ¯\êQX\Ù\\³\Ì	2Z\ê ²¢\É\Þ>oaÖ¨Œ°õ®j/\\«Ê·:d¦8¸’\â\Ù\ÖHÁ\î9Á\ã\é@;’?·l?\ë”\Çÿ\0AªK¨Gu¬YÊ‰0A€³\Â\Ê9+\Èö4\ÆoU;\ÍF;U\Ø\É,²c!!B\Äÿ\0Ÿz`A§ÿ\0\ÈCT—û\Ó*\ß(?Æ°mY¦–\n\éu3:J\Ë\æ1\Î¯÷CqÓš7\ÑjZ\Ô\ZxTm\Ò\Ï\'\Û\Ä2\î}‡§¹\àVVƒ\áy\ï..~\ÇnÉ¬Z¡–[\å¼\Øù9b„\àŒv=)SGA\Ño\î\ZúöX™ç”¬’\ÇÜ°(=ýÏ½{“X\Ã\á\ß\rÅ§\é%´uò\à‘\×qfe\æFÿ\0eFIü/i\Êi\Ë\Üø÷Cø¢ø‚;«ýC\í¢Yo\'eT›b\íóÚ¾¤·ø\'5ŒqC©#².Ñº\"÷\ëV±[29O™o¿g\r\ãÅ­\åõ³\ã«H~¢½§\\\Ð\î´;Çµ»cŽCCPkH×÷f|·k\á·ð­þ¥¦I8¸0\\$·p*\ãñ®Æ‘ù~2\Õ\ÇM\Ò#~hµ\ë\Ñ|Ñ»=\n•Y­Ò†®†Ž•¾¦4\ÚÖ¥§\Ý\\Am{$\ï\ÜB÷=ET\Õ5)}\ÕO\é\\’£	;´xø†\ã3B\Ç\Æ\Z­”›¤˜_G\Þ9Àð`8¬z\É\á\é?²qûFzŽƒ®C¬47ŒRX\ÝK\Ä\ç\æCœ\àú\ç^s£ê¢\êQ^ Þ«Ä‘\ç×¸þµ\ç\ÖÁ4¯L\Úm¹\èwÚ³ÿ\0i^Ì»b2\n€Rk\Z9\röù¢`cb\'¸Àÿ\0\Z\àQkFo\Ír\éÔ¦lù>øÿ\0\n¨Ð¶Þ¢¯•uB-m\\\Ç\ÂÈ£\×¿\áY¬Œ;Š|¨Rj“H\Ù/“ô\áTü–þ÷\éN\ÈDÿ\0\ÚRô\áU¼–õ•—t¿\ê?\ë·ô5kS±{Xcc7˜¾`\à®;õœZf²(i\ãþ\'%aI¥¶\íhU®™|&ks³lo\r\ê(‘²Ñök€\Õç‰¯\Z-`C†¸r§ý\Ðr ük\ÄF\ëR`)Ø v\'“ý+\Ö\Â\á\ïï³–µKhŠ\ÔW¶Ž!7Á8ô¨\î\"2.W\ïGÖ¨	€\ÍT°\Ô#¼\ÈY‚§µK•€\×\ÑT.¤\ç»Güÿ\0^%¶\ê‘ÿ\0´Œ?•(ÉžŽZ\Ø\è=©kS\Ú9[þú\Ön\Ä2\çW|Yld\ÓD€d\Ä\á¿>ó¢\×8ñ\æG\Òÿ\0³þ‹\'‹<\' \Û\Æ\ÅQ Ä²\ã;B’\ã[?±6½¤\Ï\à	ôÕ¼‰õ«{‰<\ëRØ‘b,J0Á¨\ï_7ˆ¼f\Î\nk£=œ|\'\Ðd€\Ç,3Jmm\Ò\n\ìRAŠ\å»:”UŽ:®<\ZÁ4’\ßx}F\áòóYŒð¯ý\è\Ç÷º¯|ŽF¾­­<—GN\Ób[«\ìfF“ýT\0ô2S\ÙG&§}\Éô8\ïxn\Ë\Ä\Þ Ô®7)u\Òcx.#9\ß!\ÏGJ]CG¿ð‚ÿ\0Ä\ÛXº¼re\Ò,q•<;\Ä\åˆpr\Ô\æµRh™$yf¥ðöûCm\Z\Úh…\å’[›†’0YY°¸,>¬O=\ë\×|7¯\Ø\ê-µ\Ó\ã\ß\ä\Z[$\Ú}\Ðxð\ê#¸8?0\È8\ëU\Î\Ö\är£\É\ÄXcÚ½\ãQð‹ª3<–‚)[ø\á;?—¹\Ó+”ð†‡\"½¢\ß\á^‹o0‘üù€\éòþ‚Že\Ð9Y\ãöþ¾ñuÍ½¬<l$L\Ü*°\äú\çô\ßaðþœÒ¿•ge\0\Ü\ÇUEÝ‡Ë¦\çœ\é:nŸ\á›]7Rl[Áw¦H·r1\ÉgH\ç\ï\0W\Òô4ñ\ÕòYx†\Ê\æ\ËK´“\í\ZE¤Žck­‘;9¹Pò	\ç¢\æWRßo5\'È½ñnœ¶^p[K9¢›\ÍX\"\ÎeF\Ç|O#8\\ð3\×C/Ù®›E\ÕUn-\îU…´³a¼õ\Ç\Íz¸˜\ìj]™~§H:\n\æ\ì\ï$ð\í\äZmË´–2|¶wrTÿ\0\Ï\'>¿\Ý=À\Ç^±\Ê\ÊZ™¿tq¨h?j@<\Û?ŸŽ»{ÿ\0x§\í!ñ\êi¬u\nø:u{•V\Z®¨§ä´‹£*·w\í\íõ®š4¤\Ù2qŽ\ìð¯\ê¶Ú¿Œ5™-eY¢ŽeˆºŒ„\\þ¼~\Èx]\î(\ZÁR»\Ï\Ì\à¯\Þ>\æ½\êK•XÚ„¹¶7Y©µ\Ñ\äv=ŽXÿ\0‘>¨?™§k€-ô\'¦\è\Ø~¢²–ç—Œ^ò)\î	¬\ÝRý­\Ù#‹Fõ\íRy¶/\Ç •w)‘©Ž5Q\Øb-“\Ã\íe¶[\î=U¿ýF²ô;³\êÉž’)Cõ\ê+\Î\Ä\Ò_6„Î¹”„\â¢{¶¼ýÎ‹\Ú\Õ]\è3ø\Ña–*¯\Û?\ÙýiX4-\ãÞªý­}¿:5\Ñ¨¿¸P‘¼uüj¾£y}un±­‡\Î6\ï0m\ÇåšˆÒ’\èt4ÊšOü†¤\'øWŠf“\r\ÄZƒ\Ér<°\Ë÷›]>éö:ù§#1#j%sšÆ¤«§\\\á¾fMƒ§Š\Â\\¾]Nkš\Í!\ë#ü\ÎhQ´`W\ÒÒ,<ù;±h­H\n(ý_O\ÕÑ–O›üE_Ö­ü\ë2\àe£;‡¯½g$¶•:\É}h\ëÑ³ü«/\Ã7;¤¶R~\ä£B)D\ì\ÃüGx´-n{\Å}Ru§\Ü\Ä:²>¸«T\Å(óD\Ìøo$ö~n§§\ÝM¤j\ÖsƒS‰þX÷(ù$”\ã¯ ô5‰¢\ß\\ø_ºû4¾\\‰\ÇL†\\ô#¸ ô®:”Ôž¨ð\ê^2>\ÑøoûH?ˆ/x›\È\Ð<P\äG\ã\à[\\üIžã¤\àž‡­|\×c}§øŠ\ØZIm\É\Ó\Ýñów6òºOüón=+†XX?!Æ³G\èc\áIUv>bG\Ìó;`{³\nø\ãÀŸüG\à	­Rg›\Å^°$›ƒ¶\îÍºs\Ï\0œ•ç¨®)a\ç3UZ=O¯\í\Ô\è:]Þ©¨b}FQ¾]¾½%öÀ÷$\×\'à¯Š^ø¹}f4«ð\Éf¿iš\Îq\å\Ì$è€©\ê\Ìr8\é\\\î2Ž\è\Õ4õGI\Ãû\rRµj¶\ë.¯6K¸Ü¬Ðž\Ëƒ•\Ð\0}û\×Y\nža\Ø\çb‡\Ä\ZF‘”×­½q\Êþ8\Úÿ\0ø\ï\ã]8eô¨\æ—q¨^}ƒÌƒM‘\î˜\á`šE@¾\ìÀž>™­O–Ža\ês–þ¸\Ô.!¾\×\'K¹£ù¢³ˆoz€yfÿ\0hþ\0WF\Î1ŠjB±—­\écRµ6ò\î¡o6\Þn\é \è~‡¡Á¨¼K\â}3ÂºTú–«{”#/,Íô§Ú­]\ì4Š\r5·‰ô&!­&±/ =¬\É\Ü\ÄA\î¡¯‘þ(|Z¿ø™©\\\r-\ît/\\ª\ÇÆ¨Tñ…ûzc\ït\ÅuC)J¤#¹½ñ{\ã\åçŒ´û\ß	h­VñƒU\Ö\É\ÄeU±˜Hþ÷\\ŽA\àz\Õ5‹}(\ím\áŒ\\Bsºñ[\ï?üô—ß¢ö¯Bž\Õ#šU¤ôZ!\×÷Vž±Ž‡+þ²I‡\Í+ùo8ÿ\0\ÐSñ5\Ç\ÜO%\Ô\Ï,²4’1,\Ì\Ç$ŸZ\ì1¸ÿ\0\nLò]jfF.\í(fcÜiž\Çö–¤¾»ó«[ž†\rÝ»=7um\Ðô\âbx‹%»ú 5_Æ’yv°=X®~¢²‘\ç\âö¹\ÌY³_jŠç¢’ß—J›\Ãñÿ\0¯—ö\nƒ\Çf\Å>7Hz,ŠO\Ó5ÿ\0\ê\\ƒ\È¨©ðX¸\îv\ÒFŠ½\ê\ÔKh\ÈPIQ\Î=«\Äj\Î\ÇRØ†Rª{\Ô/p‰©­\"ûŠ¤—rµùT>m07ZN>\ãþCüjVû\Ãó­¹r\Å)ö›ò«MüKùŠ\\ÁÊŽ{_b,v\ÙKH¼œc®iþ()ö{pózg=u\ÐÕœX¥\î#4¬k\ÔG†%À( a¹H<‚0ii£–´Õ–&\à‰UQÒ«FmµH\'+Ÿ¨?\áScZo–Iž–8¤VÝƒZ£\éV\Ãè ¥\ærº\Ì_gño\ÑgŒô\îEhxš\×\Ìû\Îpa“ý\Öþx¨—‘\æ\â©\Ý]šE¬\"ýÎ‡OñL‘È†÷Í™\ãŽò\ÛsÑ¿ˆ{6kir ¹\Þ[\Ã\ã&¥g#\Ås$jZNRh\Ï÷¤„G¹J\â!šKyVH¤h¤S•t$øŠ‰A™÷>ð?\í-\â¯	\Ú\Å½\nø³GC´j¤	\ÐµØŸ÷‚ýk\Ä,ü^\Ír%¾G3µÙ°Šob\Üm£\n\å–\Z2\èk\Z²‰÷/ƒ?høÙ–=b+[\Æÿ\0—K\ï\Ü\Éøgƒø\Zø²EÓµ\Ðdaoz\îr^-®A÷¾Gü1\\\ïŒ\ÛÛ¾¨ýû|^_™\æ®\Ìgv\î1õ¯\Î\Ä\Ñ\çùak­v\â\ß86i‘\äzd·–½GÔŸrþ±\ÇÖ¿?i-Â“I¦\èiÿ\0	.¿÷V\ÖÕ³g\ÖG°\ç\é_\"\Ýjš\\[6\Û{v9:u‹\ä¶;K7ô¼p‘Žúñ‘\Òx«\Åz\Ç\Ä\ra¯¼G}©=«[5mš}ˆÿ\0hÿ\0{“\ë^o©k\ê[‚Co\ÛÂ»cAô\î}\Ï5\×\Z1Ž\È\Âsovkk>(ý\ä‰a#<¬6I|Ëµ¶ÿ\0r5ÿ\0–iô\ä\×4Æ¶Q±—0\Ê)‡0”P¡~\ëXºôh¿\"it\Ü. ç¹€\ÔU#¿ý\ã¤V Ž†¡µ}öÑ¶„V\ÝYX\æü\\†M2J\ÌOåº¬k+\æ\éè½Œ¤\èU”ŽLN°24Tòôø\Ï]ÿ\09üjK-¤J¨_Ê¤ñ\å­\ÔÜŠDü§Œ\Ñ×ŠOTTMû d±·#¡Aüª¶“)þÍ‡\'¢×5\ï3ª:¢\ÓFGðšcL½Qb\ì¾Æ˜d£”vi¤É£”V:\ãgkxÿ\0*ôQ¤\ÚIÿ\0,#ñ\Åq}j=c\ÛG±\ç/i÷~U\èÍ¤Û«ŽÏ®\ášZ`ö\Ñ\ìxÇ‹­\Ò;kVX‘›øF?„\×kñCIK\n‰\Ö(Ô­\Ä|¨\äd\ãú\×n\Î\Ç*jTô<¦Šú\rY\á¡¦ó\ëLaE0\n(7\Ä™t\çuûñ\ãð\ëW\æ]Ð¸\Æ~Sü¨.;£~ö\á£\Ñ\Þe<¬a\Ç\èj¾w‡öõ-oÿ\0²\ÕüdùS6\"25a\Üf³ô\ÍÆ“lù\çn\áA¬]\Ë:Œ?h±š>\år?j\Ãt¤\Ç5x\Ø\æc!‘Xw¦*´lñž\n¹_À?JÅŸ9R.³%¤^”Œ‡I@¦\Ð½©¹ e†\Ô.º˜CŽP\Ê\Û,â³µ\Z\â\0«\É\rœŒ\Ðe¥`Ër*µ»[Ãµ±’s€z{Pdæš\03IÚ7\'Ö€©\r\0Ib\Ó\Ûþ¸7ó\Û/øü”ú[·óKs\ÐÁ\îÍ­5·XÀ\Ø\Í·iV\íþÀ­º¤uFv¥ÿ\00Ÿúl™¤¿?ñ/µ÷Ÿ\çY6sb¸e\Û|¯2ú>G\ÐóI¸%\Ñÿ\0i8ü\rI\â–)\îYˆZ=h\Ö\ÃNÆŽ“6,ù\ç¡÷5&Žƒû6ž\ÙýkÊŸ\Ä\ÏV‚\\¨”Â‹\Ñ\äü\êvZ\ÌÛ•¸\Ï\ß|}jF 9Q	µO\ïKÿ\0}Ô™ 9Q\è±ü@A\n’mc’®$goPk“\êôû7Öª\×ü,ñ¸)¼Wo¾­O°}j¡½\ã.­\áÛ‹}˜Vdaø05\Êj É§Î¹\ãi#ð\æº0ôaNwCöò’\Ô\ÄÉ¡e×šú±˜QLŠ\0( \0ô\ÅÍ,†\Ñ\âvWô\Å3C`\Új þe?™ ÷(Ëš\n\Ä~›v—³?\ê\ÛÖªxF@“]ÃŸº\ß\È\â‹M\êtO9Y£ˆŽŸ¦*+¾$¶qü/ƒø‚*\äõ¹‘|<½Ju\ì\Ø\ÌcúTš\Ò\í¾…únŒ¯\äúõ”\';•ó\ïL¨<\â@Þ´Ìš\0“uGº€$\ÝQ\î 	7S7P·S2h\Ý:\Ós@4™ Š\0MÔ\è\Ö\í¶[¶\ì¶\çù\Ôa¼»]Eÿ\0\é˜_\çT·=6\Ì\Ù\Ò\Ë\Ñm\É\è#\ÍEô=üž?*×¡\éC\á)\êV@÷9ÿ\0\Çúôš\Î–±\àBO\è+.§)û¶3.>Y =·ü\Å6ñ¶\Äû®§õ¦y%¥4±ÕŒVmªO \Í2\ãýLŸîš‰K•6>¶=&\ÇÁ_xsNš\Ý+³¡`G\Ø\äýMvúd&\ÏI¶‹)\È\nøú˜™©»3Ó¥¤Q\åWZ9²™¡ž.E\êW«_i6šõ²™ fq\Ò>¾µ¬q‹fŽ¸Û©\ä§ÀO1/\åZú¶q¥\ÈDªvg†\Ç\×\Z‘–ÆŠ(\ÅþÎ‹þx­ZÀ­G\Ë\Â,‡ñ¥H}zÔŸ&5·7z~\Ú\0†H÷\ÆTŒ‚1S\è\rTtw\Z9[õ(QÁü*Y#òn®#\ì$$~<ÿ\0Zö)»£d%°ÂŠ\0( Š\0½\áöùn£þ\ì¹üÀÿ\0\ë\Ô:;ˆõ	“?\ë#\rpqýE«„•ýÒ§‡˜Ã¯]\Ç\ê\Î?ñ\ì\Ól›\Èñ\\«ý\éõ \Õ]N\ÇI©I\åÚ—î®­úŠMQwi·8\ë°âƒ¨§¯øö~\Ûñùþµ;[Ä–·u‘ü\êYËŠ4ng)¦\î>µŒ÷º™º‡\î¦n4\0ý\Ô\Í\Ô\0ý\Õb(M\Õ\Z±õ 	Tgš\0u6€Ñš\0)®\ÛTœñ@\ÜI.ðÿ\0~EQùTOŒ)Ï›p\Ç\ëŽ*\Ñ\èQV†§B\Ãn›k\ê\Å\á\Ôþ‚•”‹xó…KŸ\ËúÖ—G¥M\Ú(\Ì\Ô\äjR`ý\ÅýÂ«,¿h’Y¿ç£’>ò¬\Ï\'.i^ói/°\Ï\ëKuÿ\0\í\ïú\Ðq–c\ïM\\¯Àž\Þµ][CŒ‰&Dü\Ø\n\Ñð•»^xŸL\â\'eŸ\å\\xšŠ›*1\æ™\îø€\0 p3IlŠ9õð¼\×Õž\Ôcd=\Ë`p@ï¶”ãŒŸcI\êU˜\ë\Ë;{«wŽH\ÖHÏµ6_õ9\íšœvf‘¹\É?€\í\ÙØ‰J‚r:WQµ½\Zº>±W¹gŽ+eA\'šg˜+\èO’$\ß\íQò@#ñ n&\Ûrz\Ð;u0u%Û¨\Ç ?ˆ\ãúŠ›Z_’q€­·ð?ý|W¡BvÑšD¥Ez[š5\ä\Èñ\n†!\ÔS\0¢€òuYAÀ,c?ˆÿ\0)²(eÁ\äPÍ©Tt\år&ù|XN:\È?ô\ZÅ½¸¸±Õ–T\È@<\Îj9»jº\æ\æ=ûþ<\ç\ì7ò®.__\Í\ÆR0\ÇCþ4¹ŽŸ­R\îtš\Ô\ËˆŽùdúõ\Æ^kwº„¥.>TP£Š9Œj\âa(\Ù\ZË«[;€²\à´1\\\Ý+žcµîŽº;„‘~V\îk“I\Z6Ü¬Tû\ZB;0zW9±<\\1ó¿Z\0\èüÁ\éY\ë‘7\ßF_§4~ó|¸N¸\àgj6ò‰T{7™ù„©ElaI©þ\Ù	2(Z\0Ÿq¬‹p}\ØW\'û\Í@\Z\Í2Æ¤³m\Ô\×-5Ä—\r—r\Ô¯u­\"q\Î}{V\0Ou}5À%\Ü\í\ë´t¨)\\{QüúM¹\é\å«\Ä\æ¹\Îr\æ\È\èw)¦uF²J\È\ì5­Y-`¼(\êgsä¢ƒ’=Oó®8(\\‘\Ôõ=\Í;š<N–/\éw\Ío\"F\Ç÷G¥R^£¿4\Î\î\ît\×£¹lÃšeºù“\ì£`þ´\Ä[š­\0u¿\áx\Â6aþ®n=ð?Æ ðÑ³\Ö\'\"P?5\âfMû5uPøjh†ã¹Ž\àx\"ªéš”Z”H\æAÁ^ÿ\0Zù)\'\Ïiv-†ùŠ\àE\"oB\Êü\ïV|\×.Ã¿Ô¨BO\';sÒ’6‹\Í;\×st\Í;”<—\í5/“\èF>´)\áû\Ça\\ÿ\0ü%§þ}þû5ö¾\Â}’\åfÿ\0>µ\Ïÿ\0\ÂZ\ßó\èŸ÷Ù£\ØO°ùY\Ð\î8\ÆkŸÿ\0„¹±²/ýöhö\ìeÿ\0\\4:Ã½òÿ\0}\n\ÆÔµ\Ï\íkV¶{uXƒ•c\Øæ¶§NQwh,\Ë0\È&…¼ª÷\Â\ÚˆE»h\ÆK\Zô}¢4-\Þd\Â\ÛGÎ¿2ýEW: n°û\è\Òs@Y·¹[ˆU\ÇB?*¡op¶»öÇ•c»n\î”s 5{f¨ÿ\0kÿ\0,ýöh\ç@\\“ ªGT\rÏ?\ï£KŸ¯¦$…ýA_\ëS^²_*fÓž\ÒrLZ\Ñû>ÿ\0}T\n\æuhý†Fÿ\0¾¨™Õ£ö}þú .gV\Øaôoûê€¹Z?a‡Ñ¿\ïª\æuhý†Fÿ\0¾¨™Ù«\í§\Â\Ã0üh™û‡­\Ó\á^\Íù\Ð3\ëG\ì0ú7ýõ@\\Î­°\Ã\è\ß÷\Õs:´~\Ã£\ßT\Ì\ê\Ñû>ÿ\0}P3«G\ì0ú7ýõ@\\Î­°\Ã\èß43\ã¼@[<~Õ©oo½\Â\Ì±^€µ;§o“\Z¨9À\äú\Ô?\Úþxû\è\Õ]g\Ì]\Ûs\Ï\\U8\ï2\ÄÅ¹˜\ä\Çò£™\ÕxQöµ\ãŸU_\Ó?Ö°ôÿ\0ÿ\0e,ª¶« •ƒ\ÎxÀ\ÅyXª3ª\ïtQ©|G¥Yjol\ê\è\ÅNAÁ¯\Äþ\\#?ö\Ð×›,\ri/„\ìXŠk[ž\ã¤\ëI¨Ç‡ùe\êFxü+\Å!øqjá£±H\ä~ð\×$òº\í{±üQ¼q”º³\ß~Eù‰À=Mx\Çü/Û¥]‡F±ÁýósúV?\Ù8¿\åüQ^\Ãÿ\07\à\Ïg\Ü=+\Åÿ\0\á\\\Ð\ßþÿ\0·øQý“‹þ_\Å\ëø\æüÿ\Ù',100000,1000000,'2024-01-04'),(5,'AoBaL','Ão ba lá»— pumma',50,NULL,100000,1000000,'2024-01-05'),(6,'AoBaL','Ão ba lá»— pumma',50,NULL,100000,1000000,'2024-01-05');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `TypeID` char(5) NOT NULL,
  `TypeName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TypeID`),
  UNIQUE KEY `TypeID_UNIQUE` (`TypeID`),
  UNIQUE KEY `TypeName_UNIQUE` (`TypeName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES ('AoBaL','Ão ba lá»—'),('AoBra','Ão lÃ³t ngá»±c ná»¯'),('QuLot','Quáº§n LÃ³t nam');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bill`
--

DROP TABLE IF EXISTS `tbl_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bill` (
  `Bill_ID` int NOT NULL AUTO_INCREMENT,
  `EmID` int NOT NULL,
  `CID` int NOT NULL,
  `ExportDate` date NOT NULL,
  PRIMARY KEY (`Bill_ID`),
  KEY `CID_idx` (`CID`),
  KEY `EmID_idx` (`EmID`),
  CONSTRAINT `CID` FOREIGN KEY (`CID`) REFERENCES `costumer` (`CID`),
  CONSTRAINT `EmID` FOREIGN KEY (`EmID`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bill`
--

LOCK TABLES `tbl_bill` WRITE;
/*!40000 ALTER TABLE `tbl_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detail_bill`
--

DROP TABLE IF EXISTS `tbl_detail_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_detail_bill` (
  `Bill_ID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Bill_Quantity` int NOT NULL,
  `Bill_Sale` decimal(4,3) DEFAULT NULL,
  PRIMARY KEY (`Bill_ID`,`ProductID`),
  KEY `ProductID_idx` (`ProductID`),
  CONSTRAINT `Bill_ID` FOREIGN KEY (`Bill_ID`) REFERENCES `tbl_bill` (`Bill_ID`),
  CONSTRAINT `ProductID` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detail_bill`
--

LOCK TABLES `tbl_detail_bill` WRITE;
/*!40000 ALTER TABLE `tbl_detail_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detail_bill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-08  0:12:03
