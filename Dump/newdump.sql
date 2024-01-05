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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Äinh Äáº¡i NhÃ¢n',20,10000000,'dainhan03@gmail.com','CEO'),(2,'Nguyá»…n VÄƒn Quyá»n',20,4200000,'quyen2003@gmail.com','NV'),(3,'VÃµ Thá»‹ Trang',20,6200000,'vothitrang03@outlook.com','HR'),(9,'Nguyá»…n Tuáº¥n Duy',20,5200000,'tuanduy2003@gmail.com','NV'),(10,'TrÆ°Æ¡ng Thá»‹nh PhÃ¡t',20,15000000,'thinhphat2003@gmail.com','QL'),(16,'Äinh Minh HÃ ',9,50000000,'minhha@gmail.com','QL'),(17,'BÃ¹i Ngá»c KhÃ¡nh',21,50000000,'ngockhanh@gmail.com','CFO'),(20,'LÃª Quá»³nh NgÃ¢n',30,15000000,'quynhngan09@gmail.com','HR'),(21,'VÄ©nh Ãnh ThÆ¡',25,25000000,'anhtho@outlook.com.vn','HR');
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
INSERT INTO `product` VALUES (1,'AoBaL','Ão ba lá»— addidas',100,_binary 'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿ\Û\0C\0\n\n\n\r\rÿ\Û\0C		\r\rÿÀ\0\0”\0û\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ô\Í[Zÿ\0„{\á\í­š²Mò‘\í^b×™\êx*÷\Ämi~\Ù\ä;-•SõÉµÁ<ûW\Å\Ê\\­Ÿ\×Y~*|\Ïw©\ÙxSTúô\r«†\Éü\rdC©ù^\"7ü)cœık^2À\àûUI¦ G´mXô£…Q›—•Š—\Z¡oD3÷²k\Ö\î·j×˜\'85r{ñÿ\0	E¶SŠ\ç5‹“ı±t¹\ä\äWd6<lD–¾¦Uô\åa rOºø´ô\Ğ^\Îw@¬\Ç\Ôõ®[K´:–¹al9\r(\Ï\ĞW{\ãØ¾Ë©X•\áJ•ü«¯¥–%S\ÇÒ‹35\Ë6½û‘ò\â@	{\ÆDd\ÛÊ½Pƒš\ÖğMªjco˜\ÆÁ¿b³|Mû\í«u…ˆ£¿_š¾\"“\ëªù\Z¾Õ¾\Õh¨[\'Ò³µ\Ì\Ú\È\ä2¶\á\\ï„µo±\Ï\'\å\Î\Ó]gŠ—÷k*ò²-/&z\êJµeº/ø³S\Z†evwD¸À\Ëp~\Ï\'=±ZVÚ¸\Ğd´n°¾õúV$m\æ\È\"şó]	&§\Ú=Ÿ\Ã6şNƒb˜\é\Ö6µköI±\"‰+¨\Ñ\á+go\ZŒ\áUqY_£û\å\ä\åal \Õ\Ãv|®«ú\×7©¤\İ\Ñ.;\àñ]Ş“bº‡\ÂB\å\ÔnF\êkÉ¡\Ö\ÏF¹DY\Øü¨£\'¥zgt+\í[À­ı\Ë%´„¿\Ù\ã8\Îzf‹Y¦m™Tú\ÄTböG¢\ŞEoqh\ì\ê?x¹\çŞ¾ºøcoq§\êAQ¤I2\ìBAùk\ä}GŠ|\Ú4{ŠIÀjı\'øE§\ÅmğûIa\n£<adÖµ\"Ş§\Ì\ãj{:1³¹ò\ÅM!µ\Şh¥I>ò\îB+\Ìü2ù\0\İòAö_\í\áµkÔ’1˜\Æ\ãµ|el\ÚŒdP¸Šl8Ç¡®ºõ»\ÖMŠµZu\"÷Ñš\ÚF½\r¬Ú­¼Ö³42?,«‘Ò¼‡^µş\Ì\×g«,2’T0\ÇZú\ç\à÷„c\×ü?\â9¤‰Y–f\ØH\Ï@+\Ã~4øwm°»T\nğ9FÀ\ÇJ\å£nfŸS\â\\±m\ëÔ¹\àK“7‡mòrW+[ó^-¼l\íÀQ“\\g\Ãk“&ƒôj\èu6&\Æaœ|µ\ç\Ëv~¿B\\\Ô#?\"æŸ®C©B^À8¬}Z\ë\ìş ±~\Ó+F˜®oÀWÌ—W–\Î\Ù\ÃdÖ‡Œu±[+¦\äG05÷¬>t\è*¿\Ö\çC:¥\Ä†¯?Ô´ö±¾Ú£÷™\Î?\ç¢ú}k¯\ÓuHõ÷\ÆrNj¿ˆt\ß\í]\é\Äñü\È}\ëJm\Å\êªq\Ä\Ó\æF/‚ü/Šu\ë›ùAb\Ş;}+¨o„Ú•«–ñJ¯NkŸøGªH>#M¬£Ì´ v9¥{|\îZBO·ò¯J7–§\âù´*añ•\Øğ\ê\í¨\İIp\ßzY—Æ\Ó\r¼qXz\Ô\Ûd¶\\\ã2­h´Ÿ/­|”õ\Ôş‹§\âºX{\\\0ûsQ\ÜHYz\×+}ªIo\â‹h7|’)®‘›r\Õ%kdª6—C€\Ô/Œ~&µ\'²\ãõª\Ú\ëmñ\àw5K\Æ]i]x!ıjMv\ád\Õ\Òl\àI\Z·\é^=‘ñu\åi\Ê/£:?…úx\Ô<X_%WYñkOxmln6ğ²c5\Ïük¶ñü\ÖvR^|wòƒ\îk\Ö~(|9ñ=\çÃ³ª\İ,ğ)óq\r\Íøš\é\Çf~k˜T]S‹\Ø\àş\Ü\íñ4ğŸºñúÕ‰–Ùºó\Ï+‘ƒ\\T|+½\â-\äªf<©\Ç5\è¿>	¾¡® —¼y\'q5\\ª\íTñR¥‹Œ\ßS\æ\Ûv6÷SGœm9\ßiº²kZ)·oõ±=kˆkd\Ö-có	ˆRX÷<U\í.\â]Txßƒ”aMÇ©õ\Ø<G$ıœöc™´¯ƒÀ©¤\Ó\ÔJ\Ó\ŞEşu«¯X«¨º‡˜\ÜdJÊ·ù.\àº\ãù\Õ\ÅXó±\ÉÁ¸³\èÿ\0\é\çTÖ´\ëp3\æL‹ú\×3ûLX\\YüR¿Ó¡S´€|ø\ê¼p+Õ¿g=û[\ÅP\\8\Ìv¨d>™\í\\¿\ísµ¾)D\0[PZŞœt“>\"5910{ÿ\0_\ä~\Ña›P»…#\Ş\âİˆ8\É\é^\Éğ\î\Å\ßE¶…\Ï\Èü\Ó\Æ\Ï\êR\'\É©…	şñ®\ÓAñe¾kmgglú¤ø\ÄqŒ€}\ë\Z\î\ÈÚ½G×—ùm6›öoŠ\ÆÏ•/0ú“_¤>°\Zg†4\Ëa\Ò8~•ù\ïªX\ëpüv\Ñ\ÍÎŸ\Z^\\˜[\ç}Û¥\êZóX\Ç&¢övªµ	$\0;“]R\è|\Æ%\ÊT »6ZñŞ‚¾!ğ\İ\í³.\âP\ãò¯†u\Í<\ØøŠ\Ém–5’\'\î·¥}Y\ã\Ú\Â	ISñ=¢¸(¤_!x¯\âF›\âCVñ“ş•¥D\çı#\Ãµ¤a9A«z–b\Õ\n\Ê/k\ß\Ò\Èú£öjÓ—ş+¹\Øg\íW.G\Ó8¯øù\ájº\í¾\Ş2¨«ÿ\0kOh¾Ó´\Æ\ëX\ÔP|\él›°\ÇÖº?ŠwSx¯BşÕº°kgˆ©‰ºõ\Ê\ã\ìÚ¾÷6\Â\Öö\Ø\ÉMm#\åÿ\0…²ÄD=›\Òk“yzmÁøMs>\0Qoı¡ÿ\0–s²şµ¥\âË¯\'I˜\çŒW×¾\Ïİ°2ÿ\0a‹ò8?\rj\rk¯‡85\Ô|Bb\Ú\n°ÿ\0‚¼\ïOºòõ›?\Æ+Ğ¼`\ë\ÃqˆÁ‘\Ù\×\n9&—/¼E)s`ª\Åô9Ÿø‘ô©\Är\ÄN>•\é¶÷‰y\n¼lXW‰J­…YJ²œ\"ºOø™´Ù•“	\ãÕ¬¡s\Î\Âc]\'\ì\ç±Ø®4\Ï\é:\Ì-\åF®c›¶wõ\ë\Ù\ä\Ë6A\È cò¯,\ß­c„`\ÈÃ¨\ìk=üq\â=9¾\Ì#I/”1\êGjÖNUfy\îW<T\ãV†·\Ü\àõ\Û\Ïø™XÅŸ½ ­\Â\ß-p ¾\â‹ù®\Ø\Éò{W\Î\Î:#õŠ5y\êTòg	â‹¯³ø¦\ÊLıÓƒ]\ÄSù†‚8¯6ñ«\Ä\Ñ¡^Ev¼\Ú\\.~^j\Ú÷S9pµ\Ú*C\æp¾8—\ÌÔˆ\Æ\rUµò§”—p6\Ø`VŸ-\Äz‘b:\ÖeŠ·\ØLªÄ—iüEzTvG\Ç\æ»¯)Kc\èŸÙœĞµ \ç\ã\ÏJû\ß\Âğx£\á¶¯òğ0üq_~\Ì3n‡R‡=e\rúW\Şÿ\0ÿ\0\Ó|\å²ü‰+FI\éW-*|\Ï\ÈóYµRR\íc\ào…6ğøú}.Q²[Ü\í»ÿ\0¯_cüD]\'Tğ\ÍÍ…\ÑW’H2ª¼œ‘\Å|\Ûû@\è6¿~;%üWQ‹}@\ËTû\×ĞŸ|U\áMCB†mZò\î\×÷ln\Ğó\í]2‹\çRDT\ÄóÒ…uº?:¼Y¥V¼¶1H­o)tcÁ\Æx­=v\Ü^iö:\Ì(q\"„¹\èş¿}û_xAk¸µ\ï^\Ú\Ü\Ç )<08${â¼¯\á<qø‹Bº\Ó\îTH‘\æ7\\cZK\İW\î}%o\Ö(ª\Ñ\İnq°]I\äùY\Ìf¡‰GšF1\ÜVş·\áYü3¨Y01\Ì2öeÿ\0\Z£ıI\È\à\Ôzò¬\ëEI;£\ìÿ\0\Ù4¼ğ\ÕŞ ­¹ØˆÏ¶+\Ëÿ\0j)#¼ø¥{\Ï\Í(¤~\Ğ~\Å~*M5õ­\å\Â\îas\ã\Ôw\Çx Iñ\'\ã¥\Ô0*\İßˆ\İS\Ïõ­\à\ãI³\ågMı{™\ì•\Í]\ÂSxS\àüww2²\Üj’™,c\å\í^¯ğ—K\Ğ|\à—ñµQÉŸ\İùƒ,\Ç«Oâ‡„\ÛQñ‡¼3eè­¢Ep£€Z\ê~%|+\Ó-|.5+\É?Ñ´‹]\âİ\ÈX¦¸\Õä’—©Ãˆ\ÅFPsr·3û’>Tñ7\Å_Œ\í\ã=JÍ–\Ú\Şô[U3Ÿ\á\ÃüLø\ëñ/\â­óYX4ú|’\Ö\ÔÁ}ñ]‡\Ã\ï†z‡\Ä\ÍcQñf¤Îºz–6pc\n\Ø\é]\ì‹ñS\Ã\nø¹\â}\Æ1X\Û\ËpÀ\Ù_N\ØG9éµ\ë\á\à¦\ÜÒ½­ı|›\Æ\â=Ÿ%¬¬\ßü?›>D¸ø+\â[^‹O¾‚\âMJq¸-\Ë\Øõ\Åvşğˆağ¿‹<e`Ú‹\Ä<\É\r¸Ï–@\èk\Ù?koÖšOÇ¸u/=¼«kl°I:µ‰\â¼\ç\àG\í;À?øP]+ûjwJ&|º1<\ãÚ½¹aÒ2ª\Ï\ï>k‹ª\ä\æİ“\æ_¿\Æ~\ê6ø]«\ß_xd#\ÜÛ¹ûE´±\äŒWÑ¾ıµ¬¼}jº‹-—K\Ôşè“¢–\Åg~\ÌZµ§\Ä\ïÚ‹X”Y­¦ª«»\ÚÈ¹\\7aYş>ıšt\ß~\Óú¶‡o“cf\Òù<lk\Î\Åa\ékm\×\ê{ùv*¬\çI%«+ø>\éZ\Öü¶†\á™Oµ7\ÇÚ€Oòó’j—„t¸tŸ\êöQ;y1JÈ»xVW\Ä\ßya²µóõ¾\ìD\à\ê8\å°\îq\é1Y•\èkÖ¬uC\r†“s°I\åÎŒT÷\Åxò·\ÍÖ½?C?h\Òô°A¸E¨h¬=G\Z5—‘\İø\ãÁ\Z49u­!ø\Æù\"_\ãõ¯Vò\Ûz\Z÷­ñü?­$l\Ù\å;{rq^CñN]#\ÆÚµ².\ØÄ»\Ó„fµN\ê\Ïs\æ\å4\íR;?Ì·\áŸI¥\\\0Ä´‚+Ñ¡¼²º‰eó\ç¯K¯,\ç9¯G©Lˆd`£ \Í\'\Ò\Ãf>\Î<²\Õ§‰®s\â\"\äÿ\0«e¯H†q%¬lAı+\É5»7R¹öÈ¯B\Ğo…Î‹l\à\ç\äÁ¯¢÷Q÷9}Njõ}NO\ÆS·\àœÖ¿\Ã}HIÖ¤ü\Èrµs~,rÚ‡­TğÎ¬trş	>F«Œy¡c\Îxc\ç{^\Çeã¨¿x¯1Z_ü*|Y\á¤K™\íPN¿‡Z‡\Å\Ñı§MY>õ±û7\ë×šˆµ]6\Î\Ô]\É{RŒp1Š\è¥w#\É\â(\ÉÆ§&ö:\Ù6\à\ßx’\îÀ¶$ß´¡¯ªµOˆ^øW\æ—\âıj\ê\ÖÅ‰¹·\Ö|o\ÏU8\æ¿;üM\â?ü%øo¤‘m}rNÕŒı\Ò}+\Ôşü\Õüeß‹|{©Mw\å\ÂóGm3’X\ã `×¯;”¯sğü\Çk­·6ÿ\0hŒüu¤Á/„të¨µ8e\Ï\Ú\'bÄ\ß&¢ğ¯\í…qc \Ø\éÚ‡‡tıG\ìª¤š1–\Ç\Í}Eğ\à\Ã/ü\r›Å§K¥X&ó¢|~\í\×\Âzö©ñ6M\ã³\Óu\áoö‰ú _\Û2”nŞˆña8\Ï\ØE^\é3\é\röø]\â¨^\Û]ğº\é²N»öüª“Ş¼\Ã\Â\Â\Ó\Â$·±º[­Q¬\nxÁ<\î*/Ú‡öo±ø©i\éÚ¸\Õ`¼ˆM•<š\Ù\Ğş¶½ğ†\×Æ¾¼–\î\î\ÑósfÍ’ŒQ\íY\Õ\ÂÊ£{\ßc\Ó\Ësjnr{%£û\ìz\îµ\à\Û=z\Ş]2ñ@\İş¦lr‡±\â:×…o|1¨Ie¨DQ”\á$\Ç\Ê\ã±ô\Ã{óñ#\Â\×ñ\rº•˜\\@~ø+Á$Wg«x/Lñ¥‡öf¥I‚\â9±ó+W—~Wgÿ\0}d1ƒ\ÓU\ÛË¹ò~‹yy Ş‹»	š\Ú\à)Q\"\Äb½\ÇöKğ\Û|a{\â+¬\Éœ„‰¼‡©¯7ñÏ€\îü®Ë§\Ü~ú\ÊL½1\Û>õ\ë?³\Ä+S_\nj;-\í\ïd\ß\Ìq¹»)5¬“”l‹\Å\ÔU(J¥-n¨¼7\á\ämB\ã[¹L\İ\\œÇ»øµs\ß4S\Æ^\Ã\Úf\ä[\é”]Jİˆ˜~5\èÄ…Pª0`Tra¹§tø«İ§\ØóOø\Û\Ã\Ö\Ú~“oKh\"\Ø\0\İkóKöƒğ­\ï†ş?_i\ê­š]ññõú\Ş1ö\Ä|w¯’oƒs4š7\Ä]. òió/\ÛW9L\àšõrù(\Ætû\ì|şl¥\íi\×\éª=Ÿ\Ş|	ñ;\ÃÚ¶|n/D¬X`\Ü\Óÿ\0g=‰2¾\ÒoC4­l\ï{¯»<iğb\Ã\âw\Â[\ë\Öi¤µRJŒœ\ã<Uo\ÙWö_‹\á}Ö¡\â]r\Ş\ã\Ée‹+€ŠúFİ½¤^\ê¼Ï’†/šœ\è\Õ÷d“³ò\×S\Ä?dıSğÿ\0\íYa¦¢±‚û\ÏU¯µmş\rÆŸ<Wt€\ÜjL\âôŒ.\ëšó_Ù¿Bğ\Ô¼_«ıµnõù	\Û\Ç\Ê\Ãõ÷ÿ\0\Z÷ˆÚ¿\Ø<\'­N\ç-ßŸÂ¼Î¢iBl}–AÎ:“Z\Ûó?9¬\î<¯\ë.ü·“ù\×\â‹\Óy~ÿ\06BšÔRq©\Şş±İ³õ&¹)&3n•º¹&¾~Jòhş‰¥.\\-:~W!c·8¯Dğ÷üKt\Ìö»JófnH\í]^‹3Áµ°\Â\é@#·4¤(\Î\Êk\È÷AX\0NA¼\ã\ã>Ÿ\äx\ãF’\Ò6eü+¹øpnõ\íi,\ï#\İgód¸\Ï\n£“š\â¾(k^ñÎ ‘\âÍŸÉ„ÿ\0°s\Åò7~‡.ñ\r\Å\íkút8M7G“XH\á 8\\€{\Ôs\éw¶²´Oo^\roø.=¾\"™Ûµ\rl\êö2>£3\à\ãù\n¹U\åv:°ùLquRö•\Ú<òm\Ò9\'’I5\Ùøó\Î\Ò\ä‹<\Æ\İ+‚¸“¯9­\Ï\êK¥$,p$^>µ\ËR7‰\ì`q\n*7\ë ÿ\0\Ç\á5\ÏM!\\:õSš\è¼X6\ßB+›û\Ù_Z)\ìa¿µš=S\Âú‚kš9‚CóŞ²|\'\â\éşø\ìj\Ç\æJ¹A­s~Õ¤\Ó\ï#\Ãpö®\Ã\Ä\ÚzG5¦·BV\Õ\İ{5½?vDbdñ¸;¯Š;ú­n\Äô­c\ÄPyiu0eW\è9¯¾¾ü\'ºø€o\Ù\íô\Ã,{Fq\Ç\á_+ø·\á\í\Ç\Äiş*ğòF\'µT@½wÒ¾üış [x\×\á.œ¬\ßS²Í½İ¹\áÑ‡Š÷)N\ë™3ùÿ\08Â¸b\Z’\Ğü\Ùñ‡Ä¯üñ/Š|c©\Íe¥\Í<\íù“Œ­yLv·rGöÒ#V\Ü&\é\Îsk\ì?ø(¿À\Ö\Ò|}o\ã[HšK\ì…Œ}\Ò:š\âõÿ\0†1\ëbºğ\í³\İ\\,bGŒ¶+\è(\ÒUšŠ{\ê|Elg°‡´–\é\Ùù[ú¹\á3x\ÃTñ\Å\ÔP_jw\ÓZÇ²%‘‹a@¯²?\àŸ>%c>¯\á\ëÍ²Y\İ\å|¶9±\Ïó§\ì{ğGWñG\Æa©\é³Ç¤Ä®fy…\éÒ¾\Çø+ğHğ\ï\Åma´mT\Û\ß\é·kpö¹\à\Ä\ÃÒ°\ÅR\ç¥\'-%\Ì-eK\nP³S‹Š¿\çs¬\×>ƒ\Ş4“ÄšD,úL\ì\íª6®+¯ñŸ£¾‹\'Š-®@µò¼\ïñœtú×§k\ë²\ÛH¡Õ†\ŞEx6©\á©ø°xODD\Ò\"”O¨ü\Ù@G;G¥|\ÕK_™üÏ²\ÃÔ”’ƒ~\È\ætmx«E¹¼\Ö\ãó&¿•¦\ÃQ„~U“eğ6\Ú\ïR[»{y®l\à9aa\×\İO¨¯d\Ö4´\Õut½&–ğ€\"8®ÿ\0Ã¾‹B\Ó\Ö\×\ç\à»zš\åR–º‹\Är¯sDs^Õµy!°{\ÔÕ¬\Ç,\Çe\Ì^\Î?‹\ë]ä•‹ªxV\ÃRo2HLSDĞ®?W´\ë6±µXL\ÒO·£\ÊrÕ§?6\ç›$·D®\Ü\Õj:#xY\Äa[I\í\ç\îùqW&\È“©A¡g-µ\ÌK<¯Œ‚=\ri\n›\æF3\Ã\Ç	-ğ?ÂŸ^ ğ^·ª\éZ>—}­x:\Úi>\Ç?’OÉz‰~-|eø•á«¯\ì/=š\ÊG™#ll}+\ê+JÑ¬M¥Ÿmo\ê‰ùRÇ¼~L@G\çjğ+±\æU:#Ÿ\áúİû#ø\'ZğV&«ªiQ[jw\Ì\Â\ê\âcû\ãÿ\0Ö®\ßö‰×†™ğ·Y“v\Zeò—¤\×}¸¯À¯kOÄ§M\Ñ¹šO6Eö+\Ïö’©SšG\Ô\Ñ\Â\Â<” ­v‘ñÆ­\Ù,D#\ï9\Åa\ÜaTÂµ<Ayö­XB‡+\ç\ëXzŒ†8\Ø\ÓG\éN¤yt\ÙhEıEtz<\ÛtX¿\ë\ék•Oİ®zšÛ‚\ë\ì~†\\gm\Ğ8ú\n™hkKX\Éù\ã¨ø\É|\à»{H]CV9\ÇT‡¦?\Z\ç(¯­Bı\è\ØpkÍµOM\â£q9\ä(E_E[\Şñ’\Ëm;|‡î±®ISq^}Oc+¯\n.P—\Ú6ô{¦x™KŸ’T\ÚŞ·5,-\äƒ>Ÿ\ÈTS\Â.\áNª0\ì}kPÖ®¾\Ö\âKv.0	^‡\0\Ö\Ô÷bã‡‹ŠÙ»u\'\Şõ.—$–\Öw\rò£ƒ\íœU9ß“PGpfdfDch_Jİ­,|O;U\"\Ö\çy\ã\r¯\äÌ¼†\Êù³Z²]C@RÍ™ 8?J\ÅV\İ\È9¬\à´=LuE:œëª¹b9¼\Ë(\è:×ªxRú=WO6Ò\Ê\Ã¼¥=\"µ¼/®6—~3\á\åI«j\ç\r\nÿ\0W©wğ³\é>$“\Â\Z\ã\èWrb\Úv\İnŸ\î\×\Ú\ßt};E\Ô\ÓZÓ£û4—\0…‹…s\êG­|	fS\\±I\â;.\á!‘×¨\"¾šı>0-\ĞM/Rp³\ä+nõõükZ5\Ñó|E•ªö”Ö‡\Ö=ğ®ñ+\Âw:N±Ios@OU\È\í_ø_OÖ¿f\ïˆhSª\Şxjy1\Ò6TFOJûR#U\Ğ\î­D\Í™D™+‘ŒŠùg\Å³7ˆ<[\á¨\í\çñMÜ—\ĞÜ°V™¸òwqøõ¯~†2V“\Ğük”N³nŸ‰¿jø+\ìÏ³ı¬©,-uü+‹ı“õ\Ïø\Ë\ãn¿\ã)t¹ \Ğu+\í)\\\à\ä`W¤|;ı›<\à}%c:lz–¡$j..n†ı\Ç\ã=+\Øô[km&\Ö;[XR\ŞX\ãP V8Œ\Ç\ÚEÓ§Viƒ\áõ…š\ÄU•\ä´]L¹\âK\íJ=£Ò \ŞMò‰\àG\æ³<;\à•\Ğt‰!†]×·½\Å\Ë}\éõ5\Ğ\Æû¿\n·jòn\å¹\í/u4Šºkƒ!9g=I­5*\İ9¬\ÍZB°¦iš]Ë±e\'\"€\år=\ÍF\ÅDÔ»‰¤ ”WN+6dİš\×p*”‘u#¥3X>Vc\É\æ hwfµdƒvj/³\ÖMÑ¬e\É\Ø\áTd\×\Ä\ßµ‰>\'|^—O³}\Ê\ÈV„Q\Ô\×\Õ\ßüe>\êw¬Ø¸’3*:–#WÍ¿	ü?„4\ë	Rÿ\0s\Æª©§g\Ùİ„©ï¹¾‡\Ï>ğü^ñ©e\İq\ï\ÇZ\á5fù‚zšõ‹5¿Š.C™\'Ä‡>õ\ä·ry\×Í‹];EcF\î„\"÷`ÍŒÚ®\ê—B\n\ÚüWş•#õ©õ•ó4%M\Îæ³‘\ìS¿,\í\ÛõE8u5\Ü:¯\ÔV½­÷™÷Nkmn1\ÅK£+f\Ú};R8=ø=\ÏWğ‰\Ê-n¿tõ\Ö4a\Ûv\ĞsŞ¼VÕ¦·\ÍGNÍŒWQo\ã\Ø HÊ‡*1»Ö¹\å\rt>›	™%J\İ\Ô­¹ \à\æ«\ÛÛ­«aX±nI&¬j‹ş†\çÓšÎ\ës!5µ®™ò«F–**_#¥\Ñ\î¼»2•ü{U\æ\Û!ŒğA\Å29lO \äUI®<Ë§e©\Ük¹\ê×¨ùc\äl«{\Õ}@²ùr0qš[Y<\Ä9©gÎ·u\ï+N§-O\ŞSi\ï\Ã\ï\ZK§4q\\Ÿ—ûÇ¸¯e\Ò\îµkı-ˆ¸~›OZù³\Ã\Ò	¢Pya^\à\ïK¢\Ü[\Ä\ïµUı\r9A?y•f\é{:\é\ì}\×ğ\ã,zİ¨Òµgû=\ì_&$8&½mX·=sÒ¾bğÏ†ô\ïŠ:L\Z¾‹2\Úkö\àyˆ§\ØW½xT\Ô/lc´\Õl¤µ¾€lbG\Ê\Ø\î\rN‡\Æ\â\éÂ•G\ËóGQn¬»²x­;Z®–õzñB<Ê“V4-ûv5z‘TaƒW#\àV¨ò\äQ\×V…\Ì@³8Ç®+œøO«j\ÚÆ‡q&³fm.àº’F7¨?+Â»e§*…Qn¤s{¶ŠR))™\Ücõ¨œ{T…¹¦·4Ã©]—wj«}q¬·0(Ô³3\09«\ÄW!\ã\Ï	\İø\Ú\Ú-+\ímg¦HÀ\İ4g\ç‘¸`ihi~ˆñ\İ/Oºı ¾ jİ£G\à­\"B°«ğ·?‹\ÜT^3<m\ã\è<?¦.\Û;•¼¾ŠzµK‡\rƒD\ÑaX$tò`‚!\ÏLW hq|\'ğ®¡\âbAö\Ù#i\\¿POj\Z\ç\ĞôhIB.¯E·›>1ı m>%jöªr¶¤F\ĞWŠBÅšIVj\ë<u\â\Æñwˆ5­`\ßk™œ}3\Åq\êvFJ\Òzh}\î2ö0\æ\Ş\ÃÙ·f¯\ë\ÇËµ\Ò\ã=|¬\â²Õ·6=N*\ïŒ$òoô\èóÀ€\n\É\ë¡\î\Ój4§/Eø”NkWO“c©µŒ§<Ö–Û™i/I\ëg¦ZkZušO\n0x²9¯7\Õ4Y\ìuˆ;cr«½ğeç¤\Ø6s°˜\Íh\ê\Z*\Ü^I&Ñ–9ı+‰7\Ñõ\Õp°\ÅÒŒ\Ò\ÔùBvûF\är\n\Ö>“g6 \à/Ê«Õ\\\ĞgûV—·9 m5>›p–6Œ¤a²k¾M\Â\éŸÆ,d\éW¨\í[‹»\Ëb§ªœUx\äXowÜ‘qø\Ó#•¤gvSµµ6dŞ¤~U•\Ïh\êEN=ZE\Ö\åe\ì[Q·\åY^)´û± \nñsšµ§\İ	×ƒœPeBvŒS-X\Éö\rGoD“\æ\ÛÙ”º‡iü=«‰¼‹Ìˆ2ğ\èr+oC\Ô<\ÈQó†V™§*Wƒ\Ø÷Ÿ€\Ş Õ´\í`®•1\Z¿\Ï\ä3qqp=\ë\îÿ\0‡,|mb§f\Ôbky8enõù—\á\\h> ²¿µ.h˜09ı+\ï_‡Ÿ\Ù¼=k®\é“fkq\áexxù‡¨¢Q\ì|¾e\ro/¼÷¨\âzÕ˜\ĞqYzw\ĞÙ¤w\Ò\Ç4\ËÁ‘7V\ÌkR‘órd‘•:µ@4õj\Ò\Ç4‹\n\Õ 5Ÿ©A¥\Ù\Íur\â8\"R\ÎÇ°CMñ—©Ù¥\Ì79‰¹A§c=Î4š­öè±¸\Z7•ƒ\'Š®/òšU„“\ãÎœlŒ³6/5›+\Ë{Iî¢Š\æ\ãıTLÀ3\ã®z²Mq:Xø_k“.¡ª\ãe¿%²z õ>µ\Ù¥r¹Ej¡ªjI¤\Ø\ËrÀ¶Áª2Iôqš¨_me†W\Ğ\Òug\á¿\Şx“\\o\ëé°Œı–ÕºF½‰÷¯˜ÿ\0mŒ£P›ş=.|\Ç-;!\ã\Õ\ï?´GÆ‹o†¾š8$Q™J\Ç\ZFkóK\ÄZ\åÆµ}wu#IqpÅ™˜úšp¿\Ä\Ïc\rI×Ÿ3øbaùMˆ\\õ5^\âL&}ª	\æÜ±®Š‹\Æ\Û9=O¾¢ÿ\0vIf\ÆI\â\í\çSüI»û6¯k\Ç\Ü@?Jf’ò\Üw\Ş?Uø“(›\\u…À©_\×]¸`¤\Ö÷BY\Ü	\ã:ZZlŸ¼\ÅsZ\ÏË°ö­\Ëwò®\è\Zœ*u9\á\Ëğ\â\ãÍ°ó‡\è\É‘Czó^Eğ\Öó\Ë\ÕLDü²\ÆG\ã^³it«oa\È\ç\Ô\ÒW>ÿ\0-©\ÍE#\âmr	uKh½¹Uõ÷«–šEÆ­\ä\Âx-Ï°®R\Ş\ÖkÛ¨\ã·9=Gjô\r¥Å¥ö‘MÄ©µ¤\ì\rz˜…\Éğ\î~G’V–6’h»\'¥ºùõ\èaŠ\Æ\×G°‹Î3ºI\0®rXü¹\n¸\Ã/\Zô»4–›?<›ysÔšóZM\×Ó¿5pS—6‡\Ûbp“\ÃET©¼ºv±J	p\ê	Ur|S\ä‘\íf§Ğ­U™Š\á\ÇUæ¬¬\Ë49æº¬|ó³¼Vû›–W¢e\0œ÷«6’›Œõn*\ç-\Ó\Ç\Î\n\Ö\Ü2¥\Ôyı=)3¢œ½¤R{\'ö–\Ï(û\à\Z÷O€?gøc\â(\ÌÄ¾™rBÎõób\İ_-ú©È­\Ë-H,\'-À\\\ÕE\ë©\É^Š¬¥~\ÂøO\Å\Ö\'\Ò\í\ïôû„¸·‘CSšé¢¸~U|ı õ‡·H-\î–»¾ky*Gµ}\Éğ³ö”ğ×¢Š#r¶:\0el}[‹Z£\âk\á\åM¾Ç»†\Ï4õjÊ¶¿Ip\ËØƒš¹Àjƒ\Íd\×0\Åw\Ã2,‘0\Ã+ƒQ\Ãi\r¬b8¡#U@\ï0g»¨1®…\nŸ\İŠX\é\éU\ÙQ›šx;k2İ­¡6\êMõ\áHd´\Ñ™¸®\â‡\Äm7\á\îq{}2«…&8\É\åix\ã\ÇZgtYõJ\áaŠ5$yc\è+ó\ë\â·\Ä\íG\ãgŠ¤™¡\Ñ\álEx U¥¥\Ş\Æ\ÔiÊ¤¬\'\ã\ÄmC\ÇZ\äúã°\ÜùJz^Oy|q€+Ö¼A£\Û\ßI§X²¨Fl÷\0t¯8ñ×„WI\ê{I1N\Æ\ßJÚœ9\×1\ë\Ë+TWSœ@\æ\Ä\Ó\ï¤*÷\ÍW³\à\Æ=q™/‚°–\ç\ÙQº¤—{¾\ZO7Vµ^¿6MbøÍ„ú\í\Ö:î®ŸÁšy›Qi³\ÄKı+’ñ\"˜õ©‰\ç-Y©{Ç±Œ.\êÌ«)7#Ñ–\İa\ÉZ\ç®k+ŠÙ±¸óŞ·zŸ9Eò¹Sgq\àıKÊ¼µœ»Xf½´o˜O¸ÜŠù\ÏÃ—>L\Ï{\î\í\Ú‰\ã\ZM°c\È\\}ë’¬u¹õù^#\ÜqlùN\Ô\r?OF€v\ê\İ\ë¯ğı¬k£\ÛŞş&ûôQ[\Öø[ó>W-÷q0Š\ÙE~‡qª|¶,\ã\ï2\ä×\\±k©I\ë¸\ÑEqaö>\ë?ø©ú×’R-ŸÉ…1š(¯C¡ùü¿Œhé‡—·Uÿ\0õgrğsE/s²Ÿğ\Ñ4ÿ\0¼€±\ëŒ\ÒY\\;[°\'µP9ü_ \Ón7ls]¿‡õ‹»’Hedu9V‘E¬O\Z®\Ç\Ô~6x­f¶µ{\å¶e-ık\ì\ï\ê\Ó\êz|sM´;vŒ\n(©\ç\Ë\â¹\Ğ[\ÈY¹9«(¢‘À/ñ\nZ(¬™Ajµ\ä†+Y]zª’(¢3ó¯öŒñ\æ³\â¿Í¦\ß]c\íXcÊ¯Z\ç-mã³·H\â]«Š(«¯²GµCJj\Æˆehõ\Í©\ç\Ï#ô®c\â\ï®õ\è˜ü¢:\êq\ÍW]\áX¯\ãÀó\Ëoõƒı\ÑS\Û({§\Ï84Q\\s?F\Ã\í½ğdj¶wl?ıjóo1mJrzî¢Š\å‡\Ä\Ï{8ÿ\0r£ó(\ŞZ’İ…I¦H\Æ1\ÍWtz?\âG\Ğ\Ú\Ó\ä+¨Eƒ\Ô`\×mos$pª«T\Èô°m\êÿ\Ù',150000,300000,'2024-04-01'),(3,'AoBaL','Ão ba lá»— nike',50,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0\n\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z ,$)%6%).0333\Z\"9>92=,2302)\")224<2222224442222222422222224222222222222222222222ÿÀ\0\0\î\0\Ô\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0E\0\0	\0\0\0\0!1AQaq\"2‘¡±ğRÁ\ÑBr’\á#3b‚²\Âñ¢Sƒ“\ÒòCcsÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0/\0\0\0\0\0\0\0!1AQaq‘\"2R¡±ğBÁñ\Ñÿ\Ú\0\0\0?\0¤{¯\Ò\âI\ß}\ëùÀ\ë»\Ö_x\Ã=û\Æ\Z\Z\0[\Ş0\Öox\ÃH÷S	_u€½\r/¾9½\×a¬\0:öø\Ó^>õ\ÂÀÛ”\0!¦\Èob¾\Ì,\îı\Åf\ØGwñ \Òôa=é‚»^ÿ\0q Š\Õqti}\Í,’¥-‘Ÿ|#½A\Ç\Ï¹Mš\Úiü#ûaÿ\0\èrµõ¿‹òŠ‹\á\×‚O37w‡œu\Ê\êS\Z	\Ú*J©5š\0& \áøLBK§ı\Üú†„ø=\"Hq*3W\Ö\İ\ì\Äxy\"µR‘Á`³”£]l5Œ\èF\ÑV\Ãÿ\0h½)$\â\îˆZiÙ‚#w¨÷H0Q<˜ü\áG”8B8^°ô…Fg”©»•#™¨*AÀ\02ö\Ò\0\ì\04«xM\äÀs5\âq\Ç\0j@Ôºó\ÃÈ®}£]yr\á	ql1ñ¦4şñO(GCˆ\Èlxœ\ÌHJm‡;\æyŸ\Õ\0Ò´ÁV‘\Ñ\Ñ\Ğ\ni/cZ$h\"\ÚÔ²MU#¼„\àj$T`vˆ°\Ò=q,™SL…eºh¸•Ã†p\ë¹L\ïî¡±kNœ‘¿fâ ‹´ \ï\\\\\èkY™-Y©z‚´¦zğ¬ ¤ğwK\Ü!\ë\ï(FC_-Yñ€\ß\ã\ëftY\Ë\Ğ\Íÿ\0\È\áF\ê“ç‡¬N³X\å#‹xüM‰å³”e\â8µ\ZZ-_‘<0ò–ú\Öm6guJ­€\ä31ke\Ğè˜·m·\ä8.^5‹k§o‡\Ô\Ã\Ó\İLa\âx¥j\Ú\'e\Ù\én#2£MÚ®,[÷r¤u¨c¯!¬\ï\á\r\Òö@\ÓQ\Û \nuE	\Ü*p‰²¥klLT¨Ò‚±=ô¹9)>\ëŒql7D¹$\rX`\ÓT\röš×Œ*¡x)P\ÌúØ¢\é¯©”fW\í(¦Úš*øFb\Ñ.M V€6u‰½:˜OS-@f3/]9ƒ#»µŒe\ßLö\Ï\ì¥K«\Â]\ã^\Ö 3³Pgİ —„C.>\í²%\Şf¯@XI’\ê\æõÉ†\íq¢•SwU¯ŒNŸ¢T‹\Èn‘˜\Íq4k%\è«t©\Ò\Údª„.ÀŠ—h \İ\ì\çJ]q-\Ó\n\r,c+‰D²;k\íğY§N3‚º3‰&Yº\ëC«,x`òò•À\ÉFPFºŠ\ÆrÙ¢XP\ëÀ›Œha8\Ä*}54}úT\Ã5¬u+\Ë{®\×FÁO{ $hÀƒ¼zŒ,l¦šº+5m\È”b£2<\Ô\Ó\Ì\áe\ÙI\Ï\ëş!³Ğ†ª\î<»­\êDÖ¥k‰4¡Î›k»3Ÿ„#¬÷+\ĞP\â	òõ‚M™QEZ3³\Î	9\rMi>8ü\àXr…\ZÉ¬tH\ê\Ät\0Y\é\æ‘.`Ÿaœmq–¡®š\æT\Ò\èT\àul7–nšƒ-z\É3:\Êv‚İ¹] “P\ÏX\Ï~¨8Y\Æ\Ï~0ë±\İ#¶-®Œ,ı\\Á@&_©#\áeˆÙEY±L\ÅI\Ç\ÍbSÇ•cº¾>ø\Â\n>ñ\Ûş\èR\Ç_\ÊP\í>¾¢«\Ş}ğ§Y—å£`WˆÀü\â]˜c€÷\Â+´VI‘\È\Ğü\Ì[\ØÖƒ†\Ãc)\ä­(ölÖ§,\ÑL\æ^\Ö$˜\é˜#‡x\ÂO8Eq\ä-%.ğVøX7\"<±¯(4¥\Öaeb¦¸ŒG(YKAwXô\Ôad\î€4§a\Ù]f\Ñ4š‚†8o°0&l\âeŠš§’\ïıX\"\Ís\ÎúihSj–¥\ÊBo\n’5r\Æ*\Ş\Û2\ïbt¹£Ë„B$U¯\nAzU)ªcLYŠ€­p• U‚H­LD\ĞZõ™èƒ%o>(‚—³\Zû¹\æc¬\Ã8S\ÃE½’¿û3æœ¦×™\è\İ³²KŠŒ\Ëy•E\0½–8\Ü»Mb\ÂF\"tªj\å@<=`&9\Z\ÕI\ÊO«¿É¥•$IQH\çXq‡(tñ‹A@Œ\Çõ,QKzŒ~Qm\Ò\í‘÷û¾‘T©¿\Ó\éw‹Ts>¬\Ï\Å?©!\'PŒõÓ‘ÀÁ,n‹Ù‚ukz8aJÿ\0Ÿ¤-ûf¸:Q¼ÀñFWLu¤W\Zxş|\Ï3\0	\æ5A*l\İOx˜ˆ\â-\Ç%\Î\â³pa†¬Fu<\É£¡”…’D\êÃ„\Î^?H…0õóú»¹…FwØ•Ï½SŠ/\ŞbN\ÍQo?@Z¥\â\Ì\ZÌ·©\ÊÁI\åXQ¤[\Ü!\Óüı3­¡ºÀ«|,\n·ƒPÁ• \0wÎ¯~q\Õ÷Qõƒ->[Àjô€^=z\Åûw¾‚/¬úı\êŠ°¿0\nŸù\Åü­|½LqüU[/cJ‡Ø†¯xÀ\í&\nƒmŒ\â`–E\ì˜q#ß„:@ „qCXKŠ\rÜƒB)ó\á\'l…w\ÃDºjòX³,ª\â„O8mƒFK“z\à\í1«6³L\Ü*|bn9Vqº¦ªI,©\è6À$\â\Ä\ê@¤.\'ŒÎ´Xl… —9ğ‡,v®0ùf˜\Óf³9·•\äb“:Q;k½Iñv1$vœ9[.¿\Ş\Èş03\Ùpw\Ãú€<\âm\İ\ĞL¼+†\ÃÀ\å\çHºDJu½\á°82\íp\Æ$J£%\íxV¹xøDyÉ°\ç\ë\\·\ÃP\æ4ƒK!\" aËŸc¡D°nt\ÒL™b[Yº¥\íK7ªu³£¾¬b\ÃLtúJ%,õ™0Œ\ÙYU8‚c¸a¾2/ /\"Ì–Ìª\Ëx	ªGf•¯Y.òŒ=«¸Em§FÍ–/4²S\ãZ<¿Æ„¯œ;Q ôºdù\æ;;³N \rh `¢€\à#QdbTW|\"ƒB\ÙC¹$eóB%Ñ¯\ÆQ)\Â\ZØƒ©\Ù_\ê\0±\ĞC0\ìU$ı#@™~¢*4dªI®¹†¼‡dq‹IM\Ú>õşQ\Åñ:Šx‰5\éğiÑ ‚DI«\Ú+ˆí˜¢JM»A`Sm(”\ë¹^`µ¦t®q\Æj\ĞÂ‡\"¡\àuÁ•\ï`M!\Öø\Û­\\„#L\"\Ä{[b$ \Æ+\Òz–«:ƒ\\aXXÅ½€œ¹R‚	X\äXh0\Ù9ŸzŒ:\Òr\ã\r”!@¢Ò«Ú–úı\çr÷ô‹=4´YM°²ø\â?¦*K\Çe\Â\å›+™˜…i±Õ†MZ‚7kò§8[\ÑÁ¢ù+\Äo­>ğ¯­bDÀ.\âA¥3\å\Ï\Ã\Æ¬&a®£\Ä^\Ü\"\Â\í\Z¤\ÔR˜\âw\Ó\Î\Z÷¶!»T\Ô\çÀ}#¡nGB¹™²i9²\È*ù@j0a\\Wa…0$CM½\Ã+K&Q\nölË•uÖ¸Ô“Rq&%Z4\Õ\î3(¤†¨\Ì\\p®O\0b²b7XF¢#ˆ0¢\ZVV˜Æ¬\ìI9W~(¶$Dm,,µ\Õˆ\0Êˆ5ŠIš\áFY¶\åŸ€½6\nğ1iea.ˆÀ%©\ŞÂ£–8S\ë8†%Ğ§u»\ÛÈš…<òò,M*\0ÁE\0\0H5ŒÕ‰ˆª0\ÄS\ä?8™dZG\'\Ü\Ó$4VüYN9\ÅR8,iJ·%Ä˜tU\Ä0?¶õ–‘,e-\0şg£7•\Ï‰¦¦™²\ì6eÄ‰hiªü\Ãu€ÿ\0|U\Û&4Ö›<\ä^§uò\Å‚Ÿ\Ã\ÑnTÌœN2“²Œ*P\äHo\äÎNœWX¯\Ûÿ\0¦k\äüÿ\0‚B\\kYp•gRWzHe÷\æ]üf;C\é.¡f\Î³œC¬7¦9°¦\Ò\Çaˆª:».ù\ÏOúr±>3\íÅ—D¬£õ\ÔIŠ	N°\Ğ\êtRG0GŒU97­–\İ\ì»’°/\"l™2ÑaŸ<\Ö\åö7d¤W¾\ÌW#lj´OA¥JysK»2k´K·†#Uh9\êŒÎI¶\ë|Á(Š¥B’J€²\È\ÔW\í’A\Ş#mÑ6D·\ë\ævaN\Û8\n¶º–òŒ\ÜmYS¢­$›Win\ï\ÓØš¼¶º\î^X\Ù\êŠY\ÙQFl\Ä\09˜š\Ü&~\íY—\ã ¢»\\[ˆ\ßú„š½´-\İlÓ˜‡JBZP\éKŠA·H\ë%ºk£c\æ#6dj­r˜Ñ“¼5|Cg\ÏZ¨©5:Á5\Æÿ\0Ä¨·NO}W©SN\ë2#„»\Î\á\å]ş¿H\èŠ$KRİ¡\ç\Í{Cû¢d¦¼¡:‡\nWf?˜€ZP\İ&™c¿u\"\ÃJS\"•f¸Wa\ÃX\è’f(®U÷\ìó‚V˜Ps\Î:\èvFbm:Fl\Ä\íx\nf{ …©\Ì\Òñö\Íj›0¤¶vd¼0cz”\Çq\\µC.Il™\åŒ§\âZ0ü&\'hK\'\í³W\nµªšŒr\Ì!\äf™S/c®t„¹MPªø¼`\ß\ZM\äIA™¡\Ë*T\Ó\Ê3A¶¼>±¢Ğ¸\É^-ıF1¸\Ú|”\×r\Î\î~\nD‰\Òu2\02Ks@e©¨¤œ#\ÎIÌ´J¶L”®\áŠY\å*+1I3\ZŠ	\í-\rw(‹¿\ÒF•2¤	JhójĞƒ¿\ãU^c5\Ğ=9*\Ï~\\\ÓuYƒ+P‘Z]!©–\0Pñ\Ü\ZQ \ë(\æwV^I\êU«4\ä£{}14xı”Î±\ç†+q¯„DuZ­*jqø„WZ,SRÎˆ%Ì½1\Ù\Ø\\j…J¤ E0Å¦Ÿô±\Ò)\ÄZ%~5\Ã8‰k\ém’^=hs±o0)\âbjxüE\í\Êo[õöø*Püºû63-²d=\\ ¨M;&\à3&œ~)…\Ç1­¥[­\0$«Z‚\Ğ\Ûk\á2ş\"\"ò\ßú@Â’¤.\ßÚ¿ùE\ë¶\ësR\ì5ªv}\ã³\ïió]\åY(\Æ\Úİ‘<«\íww\ìF\è\îšk!vYj\åÀbj\0$\áM¤\Õ\Ùtı¶\Ö\Ùä¤±“Mj•]ÚŠWwk€‚\è^„KJ4óÖ·À*q\ÖşCtke\Ë\n\0P\0\0\0\0\r€£;Œ\Ã9^N]\Ş\Äô©\Í+7eØ¥°tu„\É\îÖ‰£ÏŠ©ş\É}\å\Â8G,dT­:òwşô]Š\Ãg!$\Ã\ÜCe\ÄC…q\Í=3´£<=ùF\Æ7OÍ¬\ê²<\Î?H\Ô\á4ó\â•\Ù\"VƒLö#™\â\"¾}\Ò:ó45ş>q\Ì\×^Ÿ\Ëøq^wO”»ıøDi\èkQ¸ó^A\"*,/±\Ñ\r&a‘ğ\'\Î:S;\ÖJnô¶–v¡¼¿\Í\ß]’»\nX…\'@Àaò¬M´h¹Oš\n\í,\âM@–·TP\r\\aF…g¿(JşùBP7R\08Šjõ‹=j*ı^j\Õ<>‘X}ûk ¤f\ÍUw´}(\Ï\âr„p\ï?·©5\ÜÕ‹vz’!Q©¼zC’E\İğ˜\Æ8¦imúPõ™G\ì™]!\Ú÷‘X\Ç,zÿ\0I4Z¥…rU”’1\"¹‚5©Ù¸FfG\èõ‰\ÆĞ´Ü†¿\×N‰a\ãB1›³^L£VŒœ›H\Æ,\Z2l\æ»*[>\Ò;£\ï1Às1\èz?¡Vyd½4ÿ\0øW>dÆL  *¨U\0\0€\ÜG„t¤®û½C\nÿ\0É˜\Í\ĞTZ=¡ïŸ*ù›6\åNq¯³\Ù\Õ$µUQ’¨\0B\rLc©5ñuk»\ÎWò\èZ…8\Ãd%!@1\\\è\å:\âX\æ„A\\CC\ì†\ÜQ¶¹\âZ:„a]\ï±c™$Æ·NY\Ì\É-w µ6\Ğ\Z\Æ\ËX\é¸#–S\ë{±m\İ\"J°÷Huş>i—¬s=5\ß)½\î¦÷ºŸ¬\ÏnDy@\Ş>\Ï\å_xıc Å„\r¦\î±.Å£\Ì\Î\Ña.P4.G{hAö‹yV\ë=Ÿ³*Z~Ó\ÛqúW”ASN›³zöZ¿\Ñ5:šºZw\èf\Ów0Ev‚=`©4~±ª]/.b\Òb)S­{KCµN¯\ÌtƒGş®\êò\Ï\ìŸUpRq?	÷˜‚–&~\ÖhN\èJEÿ\0G¦Ş–WZ&\ÇÖ±›I‚‘a¡\íb\\Á\\›²y\ä|}b¿¡Í¡$·Z¯a(\Ï,‘©¬1—}!\Ä\Â1*Æ M†œr„¼\ÃUxCÆ¸[»!,D\Ñ6\Çq—\È,£©\r\n+„-!@ZBT\ã¼À\Ú`\Ô!5÷ö@Ù†³XK¤\çIP–\0k¸B•;i#di $\ä \Ô\0\Û(%L5\É\Ğ\Æ^\Z¢ÿ\0¤:G­s4-\ÃP\ç¨\Ñ\Öğj§E\Ê]_\è\Ï\Ä\Í9Yt\Z&\î>X\ã7œ¼	\æ\Æ\ÉXz±\Ô#¨w\Äs7Œpšv@’7úG@/˜\è\0\ÙY\äMµ²ˆEJ)r¦\â\nÄ°0b)•p×:‹5–MœQUT‘‹\Úk£\í6³‰Ã\"\"\Ûf¤¿\Ù\ÙV€	j³X¨ÀQ2QMğ–]/&\Óû6\r.h2\æ-Éƒm\Ê\à\ãÔ‘i\á\Õ(¼º\Éõ}K¯\Ìi=\"º.„N“\è©k*dùj\Ô_k¢À¥\ë\Ê-tg¸T\Ò3ZVmû5˜ª8U^g\Â5*Ÿ\ÕY Ü–ğ»ª=8!s\Ê0\ÚHş\ÆT¿‰\Úa\à K_\Â\à¹ñk{;’©>D“\Ú\êÀlÔ \Ë\Î\äS÷\å\"VlÒ™,Pw\Óg\Ä\"\ÕIZ-ö)¥wcOgvº ÷®‹\ß{2<`\Ô;a\ê\Ê0…>1ÀNWw5:QO[\ÂqÂ‘Xi‡^„\ë%ÀA0ašNB]aCˆ3‰d\çT\×÷BƒÀU„ˆF0;û \0”+JŒ\Ì8\ê‚*œ,9hŸ\Í\Ì{\Ù\Ş \×h\Â%ôB\Ú	¼ªOG\ÈEz\Ì÷\ìGy…š•µ\Ù5¦\ĞF_yD9Ğ³¦\Ä\ÓbÀÀ¦j~”:\\\ïxE4\åf¼iU\\\É\Ë<\Æ\ÓJ\Ò\ëµ ¨\Ø3\Æ,xyeRD\\Õ›)¥\ëN\è\è£Kq§xxBD|¹fˆºcO²Ú¦M²D€\í}\å»\n¬\Æb\ÎBb\0Ê•\ÄTŒ©\ZÓ‰V›’­À,\ËÀÊœ£»0sJ\æ£n‘æ¶¹\Í2c±fv$\îIv\0`X’qº6šStz·BtGW)˜M—:L\á-\å†J2LQIÀƒK´Q`e®&9\Úz\ĞóeH¾°š÷\ÎK\ØYˆ^Ÿ	[Ï¸R2Ö«_Y0°¨QEQ±Qk\Ç3¼˜&œ\Ò\ætÂ©^­{*u°©\æ@;\è»\"¤0\ÈÁfr\ê>UŠBÁ\r^Q8­\ÌyŒb*!‚\ß\ë’º³#7ˆÁ€mD9ŠÂ‰c‡‹¢²e\î[¿„\Ó\å\ÄpU¡’¤£Ù´kE\İ&ÔŒ0\Ë\çd\ZfQ[\ZDV?¬\İ	\ÖnC,Bu{\á\0\ã:\ä!A\n–\Z\Ì0\Í\Ø!\İP…T€ ¤\çT\Â\Ğ\Çjba\Ä\Å>µ\\–@Í»#~U‰ğô\İZŠ+«)eM™»{™“ZaÈœ8½ğ†T:]wBL™\ïò\îPŠŠ\Ùhe7wvA´¬V\Úpœbu¢usŠ›T\ê¸T	\Ïv\ì=b\Å*y\ä‘Ie\Ã\Û\ĞK•.^7l\ì\"šd¼vC´T®Ë±É…\Ê\Zb	\çÀD\'v™0±Í‰4\ÙSZ\r\Ø\Å\ÑP  û#\'”©\ÙY™5\êktF:.Y\Æ\é\äM#¢]c¢NT{\".t¿&WtD\Íy‹:KKk“.N–ôıÃ¨¼\Ø÷\Å(1Q jzCmÉ•*\ê)@Š©‚¤¼\è\0\Ö\ä\ã¸\r•3ô~ˆ³\Øä––f’k\ÊÌ‰Z›Š—j^QŠ´Ogv˜Ù±$ó\Õ\Æ\ì\è6AĞ\ìrf\ÍıÔ·zk‹ø‰\Ñı\'¶i¤•4 \ïLo…wm?œlÎŸITE¥€0S0)U\ÅB›³\ÕöZ“R\ÃNk2Û»1¶„›*l§–6‘Ù¯\Ş•\ç—:£\ß\Ê6òô”¹À¤\ÅQxR£5\ÔAÛ¾1:R\Åú¼\æ–+p‹\ÉSZm^G-\ÄC¨\â#U]1µhÊ›\Õ\ZÍ¬¶_…Ïƒ\0}k1’è½¢“Y5:ù®>…£X‘\ÉñJ\\¼Kó\×\ä¹BW‚9²ˆR15òˆ\'\ä\ä\ĞaµS„q\Ğ:üuc‚\ÃXl€V\Z\Ó6@Úƒ3W©\Â\ì,HS½	\np{\Ñk\r7<¼À¿¯3ùzÆ‚\Û8bOuA>”¶,s&±\Ğp\\=\æ\æú%\\Lì²œ\Ó?8‡i®Øšô+§‘1@i4ü\â°c-\î;£‰ùDdH\ÔÁÒ²\Ìú”q3»\ÊXh\É4¬\Ãör\ŞO\Ò$\n\ëp*l<Np\È×„lŒš“¼‚^†GC¬Gpó´¤É²Á˜jó\r\é‡j©¤µ¦¥­Àu˜‹g“\Ö: 4©\Ä\ì<€&ş[5ª‘s\Ñ\'N7Á\ê‘	z+R.­F5\'3ºF¸\ä^\ÚJµõ4:&\Ä\Ó\ØK•Ø—,*–\ÌKO…u4\Â1<jp ;I2$\É/C8-Y©\Úl±&±S`µ\ÌIl’$\È+,•\ÄşÚ‘˜™D`µ¨©5®\'8K>Ÿ•2bÉ´Ji3¤ÁƒœÈ—1{-ˆ\ËvExQ\å¦Ö­\î\Ùb¥ncI\é²]&\Ñ2å¨›-Bv€˜ª(¬\ÕÑ‚µ\â1\×^Ÿ\é<\Û\Æ\Î\ç6I•\â\n|AGK¦RL´\rt4\Å¼±¦\ê§”ctÓ‹ò“\à–	\ã0—§Xdb–#NÚ“o¯\ßOAú&`YÒ›ø€ü]Ÿœn<ñ&S«Z±\è6y€a“\0ÃŒ~9O\êŒüšøôhyˆ³’¦±$\Â\ÛÀ&j9ˆ0ˆ³\ÍÙ•\Ûy\ØC‚\Ø=\á\âpAS\å\ÌÃ‘+\Ş\'†^1!V‚€\06U`Ø¶mnk¸eùÁ\Ã€·#®Cô\ãoc4–\ZV1\ïHf\İ@ƒ\íxÎ‘H0\Z\â\ËJ½ùÍ±h¿_3NQ{\Ùğ\ê\\ª	uzü™•¥šL=\ÌVO}dÅ¥¥„S[\æatkÏ„hÓƒ”’ œ²\Æ\äjkZ0]køvF\0Š‘A\Ã|B”‘gKŠ›q:¹eô`¶\èdW›JıX…ªa#„,\\3Î€\0Í®øô.XÌ›)\ê\Ñ^r°«5\ĞÓŠV\\²\Ù`„%Oö‚\Ñ\ÂdÎ°¡2\å•$\ÙÉ¤´{]ƒo\éI\ÊYs,s,\ÓD\Äa2T\Ê\Ñ\ßŒ6y…1\î\Ó\ä«¡‰\Ò\Úi\æZ\Ñ-D‡c\Ú\ØĞ°\ïuÔŠG~$\ì:+\Òiö$\Úl\ïh”]­E7¥>hÄ¯v™\Ş] ¦ÿ\0;³\Èi²\ÑK3ª£2\Ç!ùÇ©ş4rË•~ü\äyª\ÈòŞ€–\×\ÔPIU\ÄTŒi[t\ØJ²$É—¦€6U`²\ØÌ˜i@.x\êÄb2Ö‰¦dÇ™J^bFx.J9(”K\ÓzG®œ\Î;¡z´û•¼\Íü\ìò¢m\"!wCTyº”\ÛJ=Á,û¯\å~½dK® Wğ’”\Â4}š¶]^D˜1—Æ©æ¡›³D¸giX¹†\Z\æ‘Éš$- İ¡W„ò\â!\\\Şc\ïTg´Í°»…–\Ä*} H¼\Ç<F¬‡(·…Á\Ï<«\İö:ª\n\ì\ÑuÁ²¨\ã%\Ì1I³iû\ÇüMõƒş¹8e0ø¦1 øNx¸öf\Ä\æŒõ—N:\á1/o\\ÀùE½›HK›\İa]‡\às\å+\à+\Ñû£§uª%…X\Ëf¢.‘µ‰R\Ùö\Òp\Æ\íC®‘Zº\Ë.-\Ä\å\à=a\Ø,7:´bö\İúY\å‹er9Ì’I5;\É\ÌÀ\çM¤J1\Ñ,{\Æ;]Œ²$\Ù\Ûb\ãş\n¼\Èó-ªÔ®\0n\Ö\ê±j1­b\Ñò¦¿W2`–47”roaş\"\Ö\ËĞ‰L\×VVÁ@R¼«{\Ã\Òú~«\Û\Ú\äUôµıÃ§\èıªNVÒ•\ÇVU¨ğƒ„*\ã6Ö‹Ÿ\Ù\â\ÖÏ»\Èñ“\Ğyª—M¥UMM\0jb\ÄT¿©¹£tNÈŸ½¶Šñ–§=\ä\í\Ì^…V—\ßğŠU)\æ•\Ü>X¿\èz9;ö»\Ü&&ñöA;<!\Ãı!>\'?õNÃ¸kò0Áb\Ñ2ûÓ™ù¹\Ùÿ\0-F\ß]«o\Ñ2û²™ø«7\Ãñ¶\ï#·]¾³~š²] ¿aLh±‡\êû3–§P\ÖZ±\Ğ\Å\é>\\ÿ\09_X\èN[üeò;:ü£ğO\ÑÊ’\ì\î“\åKN±Z`\"¡º¢fL,;”\ÅWkA%l›2e\\´ç–¬B´\Æ.B\×\0IÁZ„V›cso\Ñ\çG¬“:l\Éòf*Ü—x…I¤_-p›¤cPsnqœ±\Íu³Q\nƒ4\Ìj‘ˆ¡¡\Äk\Ë¾xr©•\í\ØÛ…\Ë~\àº)£ÿ\0X¬iMB\é1A7L²µŠvI\ÇQ»·K\Óöà º\Ş\ëŠ\àT4®\Ê+“O‰ñ\ÈD­c—g“g’bŒÁ¨	#²\Ó‘f9\nŠ\0#?oŸ\Ö\Íf8\nÀ\Z\Ôó‡µ˜‰<¨«—(î‰²å‘¨{\ç”ƒ2·xÁ—¼`\Öy“%š£\'5ñ\Õ\0B•$’’³WB§m‚6’Ÿÿ\04ø\'\Ò\Zt”ó˜O%ù\r#³ˆ|-Á|\Ï>\ï\ä\Öv=¢Ç™ò¨\0ÿ\00\âµ\Ù\r\Æ%Œcd†·}Ç«ì§”L€¬\Ş0­2 C2\Â¬…¿X\04»\\Á“µ7\ã\ë®$œI\Ä\×\\p5\Õ\"\ZpNñI?A[ov\r\Ú!Z	\×˜\á‡T<@–[†t°fO¹4V÷h-1\Ê\ë\n–\",“ ’Ü‡³\Ú\\ñ¼ôŒ©h\Ì7ŸX—d%V ‘{:a‘º=+\Zôpò’N2²óW3\ëVI´\ãsw3¡\ëZÎ¶tÛµ\ßø†­{\àk¡´jw\íwò\ÉÔ_“¯nİ‘‹‹~\Zoyü$Š^\"h/vÙµYš!2W˜pÏ¬?	È=˜\á\Ò\r\Ëw²&ªSI\Õ¨HU„‹\ŞMû‰\âŸø\Å/ckÿ\0\ZJ%‰)üƒ\Ê\æ\ÊGF.:ÁR\íûbxÊÿ\0Hÿ\Ù',100000,1000000,'2024-01-04'),(4,'AoBaL','Ão ba lá»— pumma',50,NULL,100000,1000000,'2024-01-04'),(5,'AoBaL','Ão ba lá»— pumma',50,NULL,100000,1000000,'2024-01-05'),(6,'AoBaL','Ão ba lá»— pumma',50,NULL,100000,1000000,'2024-01-05');
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
INSERT INTO `product_type` VALUES ('AoBaL','Ão ba lá»—');
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

-- Dump completed on 2024-01-06  0:56:45
