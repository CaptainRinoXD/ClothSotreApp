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
INSERT INTO `employees` VALUES (1,'Đinh Đại Nhân',20,10000000,'dainhan03@gmail.com','CEO'),(2,'Nguyễn Văn Quyền',20,4200000,'quyen2003@gmail.com','NV'),(3,'Võ Thị Trang',20,6200000,'vothitrang03@outlook.com','HR'),(9,'Nguyễn Tuấn Duy',20,5200000,'tuanduy2003@gmail.com','NV'),(10,'Trương Thịnh Phát',20,15000000,'thinhphat2003@gmail.com','QL'),(16,'Đinh Minh Hà',9,50000000,'minhha@gmail.com','QL'),(17,'Bùi Ngọc Khánh',21,50000000,'ngockhanh@gmail.com','CFO'),(20,'Lê Quỳnh Ngân',30,15000000,'quynhngan09@gmail.com','HR'),(21,'Vĩnh Ánh Thơ',25,25000000,'anhtho@outlook.com.vn','HR');
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
INSERT INTO `product` VALUES (1,'AoBaL','Áo ba lỗ addidas',100,_binary '�\��\�\0JFIF\0\0`\0`\0\0�\�\0C\0\n\n\n\r\r�\�\0C		\r\r��\0\0�\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�\�[Z�\0�{\�\��M�\�^bי\�x*�\�mi~\�\�;-�S�ɵ�<�W\�\�\\��\�Y~*|\�w�\�xST��\r���\��\rdC��^\"7�)c��k^2��\��UI� G�mX���Q�����\Z�oD3��k�\�\�jט\'85r{��\0	E�S�\�5����t�\�\�Wd6<lD���U�\�a rO����\�^\�w@�\�\���[K�:��al9\r(\�\�W{\�ؾ˩X�\�J��������%S\�ҋ35\�6����\�@	{\�Dd\�ʽP��\��M�j�co�\���b�|M�\�u����_��\"�\��\Z�վ\�h�[\'ҳ�\�\�\�\�2�\�\\o�\�\'\�\�\�]g���k*�-/&z\�J�e�/��S\Z��evwD���\�p~\�\'=�ZVځ�\�d�n����V$m\�\�\"��]	&�\�=�\�6�N�b�\�\�6�k��I��\"�+�\�\�+go\Z�\�UqY_��\�\�\�al�\�\�v|���\�7���\�\�.;\��]ޓb��\�B\�\�nF\�kɡ\�\�F�DY\����\'�zg�t+\�[���\�%���\�\�8\�zf�Y�m�T�\�Tb�G�\�Eoqh\�\�?x�\�޾��coq�\�AQ�I2\�BA�k\�}G�|\�4{�I�j�\'�E�\�m��Ia\n�<a�dֵ\"ާ\�\�j{:1���\�M!��\�h�I>�\�B+\��2��\0\��A�_\�\�kԒ1�\�\�|�el\��dP��l8ǡ�����\�M��Zu\"�њ\�F�\r�ڭ�ֳ42?,��Ҽ�^��\�\�g�,2�T0\�Z�\�\���c\��?\�9��Y�f\�H\�@+\�~4�wm��T\n�9F�\�J\�nf�S\�\\�m\�Թ\�K�7�m�rW+[�^-�l\��Q�\\g\�k�&��j\�u6&\�a�|�\�\�v~�B\\\�#?\"柮C�B^�8�}Z\�\�� �~\�+F��o�W̗W�\�\�\�dև�u�[+�\�G05��>t\�*�\�\�C:�\���?Դ���ڣ��\�?\��}k�\�uH��\�rNj��t\�\�]\�\���\�}\�Jm\�\��q\�\�\�F/��/�u\��Ab\�;}+�o�ڕ���J�Nk��G�H>#M��̴ v9�{|\�ZBO��J7��\���*a��\��\�\�\�Ip\�zY��ƞ\�\r�qXz\�\�d�\\\�2�h��/�|��\����\�X{\\\0�sQ\�HYz\�+}�Io\�h7|�)���r\�%kd�6�C�\�/�~&�\'��\���\�\�m�\�w5K\�]i]x!��jMv\�d\�\�l\�I\Z�\�^�=��u\�i\�/�:?��x\�<X_%WY�kOxmln6�c5\��k���\�vR^|�w�\�k\�~(|9�=\�ó�\�,�)�q\r\���\�\�f~k�T]S�\�\��\�\��4���Տ��ٺ�\�+���\\T|+�\�-\�f<�\�5\�>	�������y\'q5\\�\�T�R���\�S\�\�v6�SG�m9\�i��kZ)�o���=k�kd\�-c�	�RX�<U\�.\�]Tx߃�aMǩ�\�<G$���c���������\�\�J\�\�E�u��X�����\�d�Jʷ�.\���\��\�\�X�\����\��\0\�\�Tִ\�p3\�L��\�3�LX\\Y�R�ӡS��|�\�p+տg=�[\�P\\8\�v�d>�\�\\�\�s��)D\0[PZޜt�>\"5910�{�\0_�\�~\�a�P��#\�\�݈8\�\�^\��\�\�\�E���\�\��\�\�\�\�R\'\���	��\�A�e��kmggl����\�q��}\�\Z�\�\�ڽGח��m6��o�\�ϕ/0��_�>�\Zg�4\�a\�8~��\�X\�p�v\�\�Ο\Z^\\�[\��}ۥ\�Z�X\�&��v���	$\0;�]R\�|\�%\�T �6Z�ނ�!�\�\�.\�P\��u\�<\���\�m�5�\'\��}Y\�\�\�	IS�=��(�_!x�\�F�\�CV�����D\��#\���a9A�z�b\�\n\�/k\�\�\����jӗ�+�\�g\�W.G\�8���\�j�\�\�2���\0kOh�Ӵ\�\�X\�P|\�l��\�ֺ?�wSx�B�պ�kg�������\�\�\�ھ�6\�\��\�\�Mm#\��\0��ĞD=�\�k�yzm��Ms>\0Qo���\0�s����\�˯\'I�\��W׾\�ݰ2�\0a��8?\rj\rk��85\�|Bb\�\n��\0���\�O����?\�+м`\�\�q���\�\�\n9&�/�E)s`�\��9�����\�r\�N>�\���y\n�lXW�J��YJ��\"�O���ٕ�	\�լ�s\�\�c]\'\�\�خ�4\�\�:\�-\�F�c��w�\�\�\�\�6A\� c�,\��c�`\�è\�k=�q\�=9�\�#I/�1\�Gj֝NUfy\�W<T\�V��\�\��\�\���Xş� �\�\�-p� �\����\�\��{W\�\�:#��5y\�T�g	⋯���\�L�Ӄ]\�S����8�6�\�\��^Ev��\�\\.~^j\��S9p�\�*C\�p�8�\�Ԉ\�\rU�����p6\�`V��-\�z�b:\�e��\�L�ėi�EzTvG\�\���)Kc\�ٜе \�\�\�J�\�\��x�\�����0�q_~\�3n�R�=e\r�W\��\0�\0\�|\���+FI\�W-*|\�\��Y�RR\�c\�o�6����}.Q�[܁\��\0�_c�D]\'T�\�ͅ\�W�H2����\�|\��@\�6�~;%�WQ�}@\�T�\�П|U\�MCB�mZ�\�\��ln\��\�]2�\�RDT\��҅u�?:�Y�V��1H�o)tc�\�x�=v\�^i�:\�(q\"��\����}�_xAk��\�^\�\�\� )<08${⼯\�<q��B�\�\�TH�\�7\\cZK\�W\�}%o\�(�\�\�nq�]I\��Y\�f��G�F1\�V��\�Y�3�Y�01\�2�e�\0\Z���I\�\�\�z�\�EI;�\��\0\�4��\�ޠ��؈϶+\��\0j)#���{\�\�(�~\�~\�~*M5��\�\�\�as\�\�w\�x�I�\'\�\�0*\�߈\�S\���\�\�I�\�gM�{�\�\�]\�SxS\��ww2�\�j��,c\�\�^��K\�|\����Qɟ\���,\��O⇄\�Q���3e譢Ep��Z\�~%|+\�-|.5+\�?Ѵ�]\�ݏ\�X��\�䒗�È\�FPsr�3��>T�7\�_�\�\�=J͖\�\��[U3�\�\��L�\��/\��YX4�|�\�\��}�]�\�\�z�\�\�cQ�f�κz�6pc\n\�\�]�\��S\�\n��\�}\�1X\�\�p�\�_N\�G9鞵\�\�\�\�ҽ��|��\�\�=�%��\��?�>D��+\�[^�O��\�MJq�-\�\��\�v����a�<e`ڋ\�<\�\r�ϖ@\�k\�?ko�֚OǸu/=��kl�I:��\�\�\�G\�;�?��P]+�jwJ&|�1<\�ڽ�aҏ2��\�\�>k��\�\�ݓ\�_��\�~\�6�]�\�_xd#\�۹�E��\�WѾ����}j��-�K\��蓢�\�g~\�Z��\�\�ڋX�Y������\�ȹ\\7aY�>��t\�~\����o�cf\��<lk\�\�a\�km\�\�{�v*�\�I%�+�>\�Z\����\�O�7\�ڀ�O��j��t�t�\��Q;y1JȻ�xVW\��\�ya�����\�D\�\�8\�\�q\�1Y��\�k֬uC\r��s�I\�ΌT�\�x�\�ֽ?C?h\���A�E�h�=G\Z5��\��\��\Z�49u�!�\��\"_\���V�\�z\Z����?�$l\�\�;{rq^C�N]#\�ڵ�.\�Ļ\��f�N\�\�s\�\�4\�R;?̷\�I�\\\0Ĵ�+ѡ����e�\��K�,\�9�G�L�d`��\�\'\�\�f>\�<�\����s\�\"\��\0�e�H�q%�lA�+\�5��7R��ȯB\�o�΋l\�\�\�����Q�9}Nj�}NO\�S�\��ֿ\�}HI֤�\�r�s~,rڇ�T�άt�r�	>F��y�c\�x�c�\�{^\�e㨿x��1Z_�*|Y\��K�\�PN��Z�\�\���MY>���7\�ך��]6\�\�]\�{R�p1�\�w#\�\�(\�Ƨ&�:\�6\�\�x�\���$ߴ�����O�^�W\�\��j\�\�ŉ���\�|o\�U8\�;�M\�?�%��o��m}rNՌ�\�}+\���\��eߋ|{�Mw\�\��Gm3�X\� `ׯ;��s��\�k��6�\0h��u��/�t먵8e\�\�\'bā\�&��\�qc�\�\�ڇ�t�G\���1�\�\�}E�\��\�/�\r�ŧK��X&�|~\�\�\�z���6M\�\�u\�o����_\�2�nވ�a8\�\�E^\�3\�\r���]\�^\�]�\�N�����޼\�\�\�\�\�$���[�Q��\nx�<\�*/ڇ�o���i�\�ڸ\�`��M�<��\�\������\�ƾ��\�\�\��sf͒�Q\�Y\�\�ʝ�{\�c\�\�sjnr{%��\�z\�\�\�=z\�]2�@\���lr��\�:ׅo|1�Ie�DQ�\�$\�\�\��\�{��#\�\��\r���\\@~�+�$Wg�x/L��f�I�\�9��+W�~Wg�\0}d1�\�U\�˹�~�yy�ދ�	�\�\�)Q\"�\�b�\��K��\�|a{\�+�\��������7�π\���˧\�~�\�L�1\�>�\�?�\�+S_\nj;-\�\�d\�\�q��)5���l�\�\�U(J�-n���7\�\�mB\�[�L\�\\�ǻ��s\�4S\�^�\�\�f\�[\�]J݈�~5\�ąP�0`Tra��t��ݧ\��O�\�\�\�\�~�oKh\"\�\0\�k�K���\��?_i\��]����\�1�\�|w��o��s4�7\�]. �i�/\�W9L\���r�(\�t�\�|�l�\�i\�\�=�\�|	�;\�ڶ�|n/D��X`\�\��\0g=�2�\�oC4�l\�{��<i�b\�\�w\�[\�\�i��RJ��\�<Uo\�W�_�\�}֡\�]r\�\�\�e�+����Fݽ�^�\�ϒ�/��\�\��d���\�S\�?d�S��\0\�Ya�����\�U��m�\rƟ<Wt�\�jL\��.\��_ٿB�\��_���n��	\�\�\�\����\0\Z��ڿ\�<\'�N\�-ߟ¼΢�iBl}�A΍:�Z\��?9�\�<�\�.����\�\�\�y~�\06B�ԏRq�\���ݳ�&�)&3n���&�~J�h���.\\-:~W!c�8�D����Kt\���J�fnH\�]^�3���\�\�@#�4��(\�\�k\���A�X\0NA�\�\�>�\�x\�F�\�6e�+��pn�\�i,\�#\�g�d�\�\n���\�(k^�Π�\�͟Ʉ�\0�s\��7~�.�\r\�\�k�t8M7G�X�H\� 8\\�{\�s\�w���Oo^\ro�.=�\"�۵\rl\��2>�3\�\��\n�U\�v:��LquR��\�<�m\�9\'�I5\���\�\�\�<\�\�+����9�\�\�K�$,p$^>�\�R7�\�`q\n�*7\��\0\�\�5\�M!\\:�S�\�X6\�B+��\�_Z)\�a����=S\���k�9�C�޲|\'\�\���\�j\�\�J�A�s~դ\�\�#\�p��\�\�\�zG5��BV�\�\�{5�?vDbd�;��;��n\���c\�Pyiu0eW\�9����\'���o\�\��\�,{Fq\�\�_+��\�\�\�\�i�*��F\'�T�@�wҾ���� [x\�\�.��\�S�ͽݹ\�ч��)N\�3��\08¸b\Z�\��\��į��/�|c�\�e�\�<�\������yLv�rG�Ҏ#V\�&\�\�s�k\�?�(��\�\�|}o\�[H�K\���}\�:�\���\0�1\�b��\�\�\\,bG��+\�(\�U��{\�|Elg����\�\��[��\�3x\�T�\�\�P_jw\�Zǲ%��a@��?\��>%c>�\�\�ͲY\�\�|�9�\��\�{�GW�G\�a�\�ǤĮfy�\�Ҿ\��+�H�\�\�ma�mT\�\�\�kp��\�\�\�Ұ\�R\�\'-%�\�-eK\nP�S���\�s�\�>��\�4�ĚD,�L\�\�6��+������\'�-�@��\��t�קk\��\�H�Ն\�Ex6�\����xOD�D\�\"�O��\�@G;G�|\�K_��ϲ\�Ԕ��~�\�\�tmx�E��\�\��&���\�Q�~U�e�6\�\�R[�{y�l\�9aa\�\�O��d\�4�\�ut�&����\"�8��\0þ�B\�\�\�\�\�z�\�R����\�r�sDs^յy!�{\�լ\�,\�e\�^\�?�\�]䞕��xV\�Ro2HLSDН�?W�\�6��XL\�O��\�rէ?6\�$�D�\�\�j:#xY�\�a[I\�\�\��qW&\���A�g-�\�K<����=\ri\n��\�F3\�\�	-�?�^ �^��\�Z>�}�x:\�i>\�?�Oɞz�~-|e��᫯\�/=��\�G�#ll}+\�+JѬM���mo\��RǼ~L@G\�j�+�\�U:#��\��ݞ�#�\'Z�V�&��iQ[jw\�\�\�\�c�\��\0֮\���׆��Y�v\Ze򗞤\�}�����kOħM\���O6E�+\����S�G\�\�\�\�<���v��ƭ\�,D#\�9\�a\�aTµ<Ay��XB�+\�\�Xz��8\�\�G\�N�yt\�hE��Etz<\�tX�\�\�k��Oݮz�ۂ\�\�~�\\gm\�8�\n�hkKX\��\��\�|\�{H]CV9�\�T��?\Z\�(��B�\�\�pk͵OM\��q9\�(E_E�[\���\�m;|�ISq^}Oc+�\n.P�\�6�{�x�K��T\�޷5,-\�>�\�TS\�.\�N�0\�}kP֮�\�\�Kv.0	^�\0\�\��b㇋�ٻ�u\'\��.�$�\�w\r��\�U9ߓPGpfdfDch_Jݭ,|O;U\"\�\�y\�\r�\�̼�\���Z�]�C@R͙ 8?J\�V\�\�9�\�=LuE:�몹b9��\�(\�:תxR�=WO6ҝ\�\���=\"��/�6�~�3\�\�I�j\�\r\n�\0W�w�\��>$�\�\Z\�\�Wrb\�v\�n�\�\�\�\�t};E\�\�Zӣ�4�\0���s\�G�|	fS\\�I\�;.\�!�ר\"����>0-\�M/Rp�\�+n���kZ5\��|E�����և\�=��+\�w:N�Ios@OU\�\�_�_Oֿf\�hS�\�xjy1\�6TFOJ�R#U\�\�D\��D�+����g\��7�<[\�\�\��Mܗ\�ܰV���wq���~�2V�\��k�N�n����j�+�\�ϳ���,-�u�+����\��\�\�n�\�)t��\�u+\�)\\\�\�`W�|;��<\�}%c:lz��$j..n��\�\�=+\��[km&\�;[XR\�X\�P�V8�\�\�EӧVi�\����\�U�\�]L�\�K\�J=�Ҡ\�M�\�G�\�<;\��\�t�!�]׷�\�\�}\��5\�\���\n�j�n\�\�/u4����k��!9g=I�5*\�9�\�ZB��i�]˱e\'\"�\�r�=\�F\�DԻ����W�N+6dݚ\�p*��u#�3X>Vc\�\�hwf�d�vj/�\�MѬe\��\�\�Td\�\�\���>\'|^�O�}\�\�V�Q\�\�\�\��e�>\�w�ظ�3*:�#WͿ	�?�4�\�	�R�\0s\����g\�݄�ﹾ�\�>��^�e\�q\�\�Z\�5f��z���5��.�C�\'ć>�\�ry\�͎�];EcF\�\"�`͌ڮ\�B\n\��W���#�����4�%M\�泑\�S�,\�\��E8u5\�:�\�V�����Nkmn1\�K�+f\�};R8=�=\�W��\�-n�t��\�4a\�v\�s޼Vզ�\�G�N͌WQo\�\� Hʇ*1�ֹ\�\rt>�	�%J\�\��� \�\�\�ۭ�aX�nI&�j���\�ӚΎ\�s!5�����F�**_#�\�\����2��{U\�\�!��A\�29lO \�UI�<˧e�\�k�\�ר�c\�l�{\�}@��r0q�[Y<\�9�g�ηu\�+N�-O\�Si\�\�\�\ZK�4q\\���Ǹ�e\�\��k�-��~�OZ��\�\�	�Pya^�\�\�K�\�[\�\�U���\r9A?y�f\�{:�\�\�}\��\�,zݨҵg�=\�_&$8&�mX�=sҾb�φ�\�:L\Z��2\�k�\�y��\�W�xT\�/lc�\�l����lbG\�\�\�\rN�\�\�\�G\��GQn���x�;Z���z�B<ʓV4-�v5z�Ta�W#\�V��\�Q\�V�\�@�8Ǯ+��O�j\�Ƈq&�fm.ຒF7�?+»e�*�Qn�s{��R))�\�c���{T����4é]�wj�}q���0�(Գ3\09�\�W!\�\�	\��\�\�-+\�mg�H�\�4g\��`ihi~��\�/O���� jݣG\�\"B���?�\�T^3�<m\�\�<?�.\�;����z��K�\r�D\�aX$t�`�!\�LW�hq|\'�\�bA�\�#i\\�POj\Z\�\��hIB.�E��>1���m>%j��r��F\�W�BŚIVj\�<u\�\��w�5�`�\�k��}3\�q\�vFJ\�zh}\�2�0\�\�\�ٷf�\�\�˵\�\�=|�\�շ6=N*\�$�o�\����\n\�\�\�\�j4�/E��NkWO�c����<֖�ۙi/I\�g�ZkZu�O\n0x�9�7\�4Y\�u�;cr���e睤\�6s��\�h\�\Z*\�^I&і9�+�7\��\�p�\�Ҍ\�\��Bv�F�\�r\n\�>�g6�\�/ʫՍ\\\�g�V��9 m5>�p�6��a�k�M\�\��Ɲ,d\�W�\�[��\�b���Ux\�Xowܑq�\�#��gvS���6dޤ~U��\�h\�EN=ZE\�\�e\��[Q�\�Y^�)��� \n�s���\�	׃�PeBv�S-X\��\rGoD�\�\�ٔ��i�=����̈2�\�r+oC\�<\�Q�V��*W�\����\� մ\�`��1\Z��\�\�3qqp=\�\��\0�,|mb�f\�bky8en���\�\\h> ���.h�09�+\�_��\��=k�\�fkq\�exx����Q\�|�e\ro/���\�z՘\�qYzw\�٤w\�\�4\���7V\�kR��rd���:�@4�j\�\�4�\n\� 5��A�\�\�ur\�8\"R\�ǰCM񎗩٥\�79��A�c=΁�4���荱�\Z7��\'��/�U��\�Μl���6/5�+\�{I\�\��TL�3\�z�Mq:�X��_k�.��\�e�%�z �>�\��r�Ej��jI�\�\�r�����2I�q��_me�W\�\�ug\�\�x�\\o\�鰌��պF������\0m��P��=.|\�-;!\�\�\�?�GƋo���8$Q�J\�\Z�Fk�K\�Z\�Ƶ}wu#Iqpř���p�\�\�c\rIן3�ba��M�\\�5^\�L&}�	\�ܱ���\�\�9=O���\0vIf\�I\�\�\�S�I��6�k\�\�@?Jf���\�w\�?�U��(�\\u���_\�]�`�\��BY\�	\�:ZZl��\�sZ\�˰��\�w�\�\Z��*u9\�\��\�\�Ͱ���\�\��Cz�^E�\��\�\�LD��\�G\�^�it�oa\�\�\�\�W>�\0-�\�E#\�mr	uKh��U�����Eƭ\�\�x-ϰ�R\�\�kۨ\�9=Gj�\r�Ŏ���Mĩ��\�\rz��\��\�~G�V�6��h�\'����\�a�\�\�G��Ξ3�I\0�rX��\n�\�/\Z��4��?<�ysԚ�ZM\�Ӟ�5pS�6�\�bp�\�ET���v�J	p\�	U�r|S\�\�f�ЭU��\�\�U欬\�49溬|�V���W�e\0���6�����n*\�-\�\�\�\n\�\�2�\�y�=)3����R{�\'��\�(�\�\Z�O�?g�c\�(\�ľ�rBΞ���b\�_-��ȭ\�-H,\'-�\\\�E\�\�^���~\��O\�\�\'\�\�\�������CS�颸~U|������H-\����ky*G�}\�����׏��#r�:�\0el}�[�Z�\�k\�\�M�ǻ�\�4�jʶ�Ip\�؃���j�\�d\�0\�w\�2,�0\�+�Q\�i\r�b8��#U@\�0g��1��\n�\���X\�\�U\�Q��x;k2ݭ�6\�M�\�Hd�\����\�\�m7\�\�q{}2��&8\�\�ix\�\�Zg�tY�J\�a�5$yc\�+�\�\�\�\�G\�g�����\�\�lEx U��\�\�\�iʤ��\'\�\�mC\�Z\���㰁\��Jz^Oy|q�+ּA�\�\�I�X��Fl�\0t�8�ׄWI�\�{I1N\�\�Jڜ9\�1\�\�+TWS��@\�\�\�\�*�\�W�\�\�=�q�/���\�\�Q���{�\ZO7V�^�6Mb�̈́�\�\�:��y�Qi�\�K�+��\"����\�-Y�{Ǳ��.\�̫)7#і\�a\�Z\�k+�ٱ��޷z�9E�Sgq\��Kʼ���Xf��o�O�܊�\�×>L\�{\�\�\��\�\ZM�c\�\\}뒬u���^#\�ql�N\�\r?OF�v\�\�\����k�\�ށ��&��Q[\��[�>W-�q0�\�E~�q�|�,\�\�2\�׎\\�k�I\�\�Eqa�>\�?���גR-�Ʌ1�(�C�����h釗�U�\0�gr�sE/s���\�4�\0���\�\�Y\\;[�\'�P9�_ \�n7ls]������Hedu9V�E�O\Z�\�\�~6x�f��{\���e-�k\�\�\�\�\�z|sM�;v�\n(��\�\�\��\�[\�Y�9��(���/�\nZ(��A�j�\�+Y]z��(��3����\�\�ͦ\�]c\�XcʯZ\�-m㳷H\�]��(���G�CJj\��eh�\��\�\�#��c\�\��\����:�\�q\�W]\�X�\���\�o���\�S\�({�\�84Q\\s?F\�\���dj�wl?�j�o1mJrz\�\�\�{8�\0r��(\�Z�݅I�H\�1\�Wtz?\�G\�\�\�\�+�E�\�`\�mos$p��T\���m\��\�',150000,300000,'2024-04-01'),(3,'AoBaL','Áo ba lỗ nike',50,_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0\n\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z ,$)%6%).0333\Z\"9>92=,2302)\")224<2222224442222222422222224222222222222222222222��\0\0\�\0\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0E\0\0	\0\0\0\0!1AQaq�\"2����R�\�Br�\�#3b��\���S��\��Ccs�\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0/\0\0\0\0\0\0\0!1AQaq��\"2R���B��\��\�\0\0\0?\0��{�\�\�I\�}\���\�\�_x\�=�\�\Z\Z\0[\�0\�ox\�H�S	_u��\r/�9�\�a�\0:��\�^>�\��۔\0!�\�ob�\�,\��\�f\�Gw� \��a=邻^�\0q��\�qti}\�,��-��|#�A\�\��M�\�i�#�a�\0\�r����򊏋\�\��O37w��u\�\�S\Z	\�*J�5�\0&�\��LBK��\������=\"Hq*3W\�\�\�\�xy\"�R��`���]l5�\�F\�V\��\0h�)$\�\�Ziق#w���H0Q�<��\�G�8B8^��Fg����#��*A�\02�\�\0\�\04�xM\��s5\�q\�\0j@Ժ�\�Ȯ}�]yr\�	ql1�4��O(GC�\�lx�\�HJm�;\�y��\�\0Ҵ�V�\�\�\�\ni/cZ$h\"\�ԲMU#��\�j$T`v��\�=q,�SL�e�h��Æp\��L\���kN����f⠋� \�\\\\\�kY�-Y�z���z� ��wK\�!\�\�(FC_-Y�\�\�\�ftY\�\�\��\0\�\�F\�燬N�X\�#�x�M�峔e\�8�\ZZ-_�<0��\�m6guJ���\�31ke\�蘷m�\�8.^5�k�o�\�\�\�\�La\�x�j\�\'e\�\�n#2�Mڮ,[�r�u��c�!�\�\�\r\��@\�Q\� \nu�E	\�*p���klLT�҂�=��9)>�\�ql7D�$\rX�`\�T\r��׌*�x)P\��آ\����fW\�(�ښ*�Fb\�.M�V�6u��:�OS-@f3/]9�#���e\�L�\�\�K�\�]\�^\� 3�Pgݠ���C.>\�%\�f�@XI�\�\��Ɇ\�q��SwU��N��T�\�n��\�q4k%\�t�\�\�d��.���h�\�\�\�J�]q-\�\n\r,c+��D�;k\��Y�N3��3�&Y�\�C�,x`���\�FPF��\�r٢XP\����ha8\�*}54}�T\�5�u+\�{�\�F�O{�$�h���z�,l���+5m\��b�2<\�\�\�\�e\�I\�\��!�І�\�<���\�D֥k�4�Λk�3��#��+\�P\�	���M�QEZ3��\�	9\rMi�>8�\�Xr�\ZɬtH\�\�t\0Y\�\�.`�a�mq����\�T\�\�T\�ul7�n��-z\�3:\�v�ݹ]��P\�X\�~�8Y\�\�~0덱\�#�-��,�\\�@&_�#\�e�َEY�L\�I\�\�bSǕc��>�\�\n>�\��\�R\�_\�P\�>���\�}��Y�壝`W���\�]�c��\�+�VI�\�\��\�[\�փ�\�c)\�(�l֧,\�L\�^\�$�\�#�x\�O8Eq\�-%.�V�X7\"<��(4�\�aeb���G(YKAwX�\�ad\�4�a\�]f\�4���8o��0&l\�e����\��X�\"\�s\��ihSj��\�Bo\n�5r\�*\�\�2\�bt��˄B$U��\nAzU)��cLY����p��U�H�LD\�Z��聃%o>(���\Z��\�c�\�8S\�E����3朦י\�\���K��\�y�E\0��8\��Mb\�F\"�t�j\�@<=`&9\Z\�I\�O��ɥ�$IQH\�Xq�(t��A@�\��,QKz�~Qm\�\�����T��\�\�w�Ts>�\�\�?�!\'P��ӑ��,n�قukz�8aJ�\0��-��f��:Q���FWLu�W\Zx�|\�3\0	\�5A*l\�Ox��\�-\�%�\�\�pa��Fu<\�������D\�Ä\�^?H�0������FwؕϽS�/\�bN\�Qo?@Z��\�\�\Z̷�\��I\�XQ�[\�!\���3�����|,\n��P���\0wί~q\��Q��->[�j�^�=z\���w��/���\����0\n��\���|�Lq�U[/cJ�؆�x�\�&\n�m���\�`�E\�q#߄:@��qCXK�\r܃B)�\�\'l�w\�D�j�X�,�\�O8m�FK�z\�\�1�6�L�\�*|bn9Vq���I,�\�6�$\�\�\�@�.\'�δXl���9��,v�0�f�\�f�9��\�b�:Q;k�I�v1$v�9[.�\�\��03\�pw�\���<\�m\�\�L�+�\��\�\�H�DJu�\�8�2\�p\�$J�%\�xV�x�Dyɰ\�\�\\�\�P\�4�K!\"�a˟�c�D�n�t\�L�b[Y��\�K7�u����b\�Lt�J%,��0�\�YU8�c�a�2/�/\"̖̪\�x	�Gf��Y.�=��Em�F͖/4�S\�Z<�Ƅ��;Q��d��\�;;�N�\rh�`��\�#QdbTW|\"�B\�C�$e�B%ѯ\�Q)\�\Z؃�\�_\�\0�\�C0\�U$�#@��~�*4d�I�����dq�IM\�>��Q\��:�x�5\��iэ��DI��\�+�혢JM�A`Sm(�\��^`��t�q\�j\�\"�\�u��\�`M!\��\��\\�#L\"\�{[b$�\�+\�z��:�\\aXXŽ���R�	X\�Xh0\�9�z�:\�r\�\r�!@�ҫږ��\�r��=4�YM���\�?�*K\�e\�\�+���i�ՆMZ�7k�8[\����+\�o�>�bD�.\�A�3\�\�\�\��&a��\�^\�\"\�\�\Z�\�R�\�w\�\�\Z��!�T\�\��}#�nGB����i9�\�*�@j0a\\Wa�0$CM�\�+K&Q\n�l˕uָԓRq&%Z4\�\�3(���\�\\p�O\0b�b7XF�#�0�\Z�VV�Ƭ\�I9W~(�$Dm,,�\��\0ʈ5�I�\�FY�\�����6\n�1iea.��%�\�£�8S\�8�%Чu�\�Ț�<��,M*\0�E\0\0H5�Չ��0\�S\�?8�dZG\'\�\�$4V�YN9\�R8,iJ�%ĘtU\�0�?����,e-\0�g�7�\������\�6eĉhi��\�u��\0|U\�&4֛<\�^�u�\���\�\�nT̜N2����*P\�Ho\�ΝN�WX�\��\0�k�\���\0�B\\kYp�gRWzHe��\�]�f;C\�.�f\���C�7�9��\�\�a��:�.�\�O�r�>3\�ŗD���\�I�	N�\�\�tRG0G�U97��\�\����/\"l�2ўa�<\�\��7d�W�\�W�#lj�OA�JysK�2k�K��#Uh9\�ΐI�\�|�(��B�J��\�\�W\�A\�#mэ6D�\�\�vaN\�8\n����\�mYS��$�Win\�\�؞����\�^X\�\�Y\�QFl\�\09��\�&~\�Y�\� ��\\[�\������-\�lӘ�JBZP\�K�A�H\�%�k��c\�#6dj�r�ѓ�5|Cg\�Z���5:�5\��\0Ĩ�NO}W�SN\�2#���\�\�\�]��H\�$KRݡ\�\�{C��d����:�\nWf?��ZP\�&�c�u�\"\�JS�\"�f�Wa\�X\�f(�U�\��V�Ps\�:\�vFbm:Fl\�\�x\nf{ ��\�\���\�j�0��vd�0cz�\�q\\�C.Il�\���\�Z0�&\'hK\'\�W\n����r\�!\�f�S/c��t��MP���`\�\ZM\�IA��\�*T\�\�3�A��>��и\�^-�F1�\�|�\�r\�\�~�\nD�\�u2\02�Ks@e����#\�I̴J�L��\�Y\�*+1I3\Z�	\�-\rw(��\�F�2�	Jh�jЃ�\�U^c5\�=9*\�~\\\�uY�+P�Z]!��\0P�\�\ZQ�\�(\�wV^I\�U�4\�{}14x��α\�+q��DuZ�*jq��WZ,SRΈ%̽1\�\�\\j�J��E0Ŧ���\�)\�Z%~5\�8�k\�m�^=hs�o0)\�bjx�E\�\�o[���*P���6�3-�d=\\��M;&\�3&�~)�\�1���[�\0$�Z�\�\�k\�2�\"\"�\��@��.\�ڿ�E\�\�sR\�5�v}\�\�i�]\�Y(\�\�ݑ<�\�ww\�F\�\�k!vYj\��bj\0$\�M��\�\�t��\�\�䤱�Mj�]ڊWwk��\�^�KJ4�ַ�*q\��Ctke\�\n\0P\0\0\0\0\r��;�\�9^N]\�\���\�+7eإ�tu�\�\�։�ϊ��\�}\�\�8G,dT�:��w��]��\�g!$\�\�Ce\�C�q\�=3��<=�F�\�7Oͬ\��<\�?H\�\�4�\��\�\"V�L�#�\�\"�}\�:�45�>q\�\�^�\��q^wO����Di\�kQ��^A\"*,/��\�\r&a��\'\�:S;\�Jn���v����\�\�]��\nX�\'@�a�M�h�O�\n\�,\�M�@��TP\r\\aF�g�(J���BP7R\08�j��=j*�^j\�<>�X}�k��f\�Uw�}(\�\�r�p\�?��5\�Ջvz�!Q��zC�E\��\�8�i�m�P��G\�]�!\���X\�,z�\0I4Z��rU���1\"��5�ٸFfG\���\�д܆�\�N�a\�B1��^L�V���H\�,\Z2l\�*[>\�;�\�1�s1\�z?�Vyd�4�\0�W>dƎL��*�U\0\0�\�G�t����C\n�\0ɘ\�\�TZ=�*��6\�Nq��\�\�$�UQ��\0B\rLc�5�uk�\�W�\�Z�8\�d%!@��1\\�\�\�:\�X\�A\\CC\�\�Q��\�Z:�a]\�c�$ƷNY\�\�-w��6\�\Z�\�\�X\�#�S\�{�m\�\"J��Hu�>�i��s=5\�)��\�����\�nDy@\�>\�\�_x�c�ń\r��\�.ţ\�\�\�a.P4.G{hA����yV\�=��*Z~Ӟ\�q�W�ASN��z�Z�\�5:��Zw\�f\�w0Ev�=`�4~��]/.b\�b)S�{KC�N�\�t�G��\��\�\�UpRq?	����&~\�hN�\�JE�\0G�ޖWZ&\�ֱ�I��a�\�b\\�\\��y\�|}b��͡$�Z�a(\�,���1�}!\�\�1�*ƠM��r��\�UxCƸ[�!,D\�6\�q�\�,��\r\n+�-!@ZBT\��\�`\�!5��@ن�XK�\�IP�\0k�B�;i#di�$\� \�\0\�(%L5\�\�\�^\Z��\0�:G�s4-\�P\��\�\��j�E\�]_\�\�\�\�9Yt\Z&\�>X\�7��	\�\�\�Xz�\�#�w\�s7�p�v@�7�G@/�\�\0\�Y\�M���EJ)r�\�\n�İ0b)�pמ:�5�M�QUT��\�k�\�6��Í\"\"\�f��\�\�V�	j�X��Q2QM�]/&\��6\r.h2\�-Ƀm\�\�\�ԑi\�\�(��\��}K�\�i=\"�.�N�\�k*d�j\�_k����\�\�-tg�T\�3ZVm�5��8U^�g\�5�*�\�Y ܖ�=8!s\�0\�H�\�T��\�a\�K_\�\��k{;��>D�\�\��lԠ\�\�\�S�\�\"Vlҁ�,Pw\�g\�\"\�IZ-�)�wcOgv�����\�{2<`\�;a\�\�0�>1�NWw5�:QO[\�qXi�^�\�%�A0a�NB]aC�3��d\�T\��B��U��F0;� \0�+J�\�8\�*�,9h�\�\�{\�\� \�h\�%�B\�	��OG\�Ez\��\�Gy����\�5�\�F_yD9г�\�\�b���j�~�:\\\�xE4\�f�iU\\\�\�<\�\�J\�\���\�3\�,xyeRD\\՛)�\�N\�\�Kq�xxBD|�f��cO�ڦM�D�\�}\�\n�\�b\�Bb\0ʕ\�T��\Z�ӉV����,\��ʜ��0sJ�\�n�涹\�2c�fv$�\�Iv\0`X�q�6�Stz�BtGW)�M�:L\�-\�J2LQI���K�Q�`e�&9\�z\��eH����\�K\�Y�^�	[ϸR2֫_Y0��QEQ�Qk\�3��&�\�\�t©^�{*u��\�@;\�\"�0\��fr\�>U��B�\r^Q8�\�y�b*!�\�\����#7���mD9�c����e\�[��\�\�\�pU����ٴkE\�&Ԍ��0\�\�d\ZfQ[\ZDV?�\�	\�nC,Bu{\�\0\�:\�!A\n�\Z\�0\�\�!\�P�T�� �\�T\�\�\�jba\�\�>��\\�@ͻ#�~U���\�Z�+�)eM��{��ZaȜ8���T:]wBL�\��\�P��\�he7wvA��V\�p�bu�us��T\�T	\�v\�=b\�*y\�Ie�\�\�\�K�.^7�l\�\"���d��vC�T�˱Ʌ\�\Zb	\��D\'v�0�͉4\�SZ\r\�\�\�P� �#\'��\�Y�5\�ktF:.Y\�\�\�M#�]c�NT{\".t�&WtD\�y�:KKk�.N���è�\���\�(1Q� jzCmɕ*\�)@�����\�\0\�\�\�\r�3�~��\�䖖f��k\�̉Z����j�^Q��Ogv�ٱ$�\�\�\�\�6AЁ\�rf\��Էzk���\��\'�i��4�\�Lo�wm?�lΟITE��0S�0)U\�B��\��Z�R\�Nk2ۻ1���*�l��6�ٯ\��\��:�\�\�6������\�QxR�5\�A۾1:R\���\�+p�\�SZm^G-\�C�\�#U]1�hʛ\�\Z��ͬ�_�σ\0}k1�轢�Y5:��>��X�\��J\\�K�\�\�BW�9��R�15�\'\�\�\�a��S�q\�:�uc�\�Xl�V\Z\�6@ڃ3W�\�\�,HS�	\np{\�k\r7<����3�zƂ\�8bOuA>��,s&�\�p\\=\�\��%\\L천\�?8�i�ؚ�+��1@�i4�\�c-\�;���DdH\��Ҳ\���q3�\�Xh\�4�\��r\�O\�$\n\�p*l<Np\�ׄl�����^��GC�Gp�ɲ��j�\r\�j�������u��g�\�:�4�\�\�<�&�[5��s\�\'N7�\�	z+R.�F5\'3�F�\�^\�J��4:&\�\�\�K�ؗ,*�\�KO�u4\�1<jp�;I2$\�/C8-Y�\�l�&�S`�\�Il�$\�+,�\��ڑ��D`���5�\'8K>��2bɴJi3�����ȗ1{-�\�vExQ\�֭\�\�b�ncI\��]�&\�2娛-Bv���(��\�т�\�1\�^�\�<\�\�\�\�6I�\�\n|A�GK�RL�\rt4\����\���ctӋ�\��	\�0���Xdb�#Nڏ�o�\�OA�&`Yқ���]��n<�&S�Z�\�6y��a�\0Á�~9O\�����hy�����$\�\��&j9�0��\�ٕ\�y\�C�\�=\�\�pAS\�\�Ñ+\�\'�^1!V��\06U`؎�mnk�e��\���#�C�\�oc4�\ZV1\�Hf\�@�\�xΑH0\Z\�\�J��ͱh�_3NQ�{\��\�\\�	uz�����L�=\�VO}dť��S[\�atkτhӃ�� ��\�\�jkZ0]k�vF\0��A�\�|B��gK��q:�e�`�\�dW�J�X��a#�,\\3Ύ���\0ͮ��.�X̛)\�\�^r��5\�ӊV\\�\�`�%O��\�\�dΰ�2\�$\�ɤ�{]�o\�I\�Ys,s,\�D\�a2T\�\�\��6�y�1\�\�\����\�\�i\�Z�\�-D�c\�\�а\�uԊ�G~$\�:+\�i��$\�l\�h�]�E7�>hįv�\�]���\0;�\�i��\�K3���2\�!�ǩ��4r˕~�\�y�\��ހ�\�\�PIU\�T�i[t�\�J�$ɗ��6U`�\�̘i@.�x\�čb2։�dǙJ^bFx.J9(�K\�zG��\�;�z����\��\��m\"!wCTy���\�J=�,��\�~��dK��W���\�4}��]�^D�1�Ʃ桛�D�giX���\Z\�ɚ$- ݡW��\�!\\\�c\�Tg�Ͱ���\�*}�H�\�<F��(���\�<�\��:�\n\�\�u���\�%\�1�I�i�\��M����8e0��1��N�x��f\�\���N:\�1/o\\���E��HK�\�a]�\�s\�+\�+\����u�%�X\�f�.���R\��\�p\�\�C��Z�\�.-\�\�\�=a\�,7:�b�\��Y\�er9̒I5;\�\��\�M�J1\�,{\�;]��$\�\�b\��\n�\��-�Ԯ\0n\�\�j1�b�\��W2`�47�roa�\"\�\�ЉL\�VV�@R���{�\�\��~�\�\�\�U���ç\����NVҕ\�VU����*\�6֋�\�\�\�ϻ\��\�y��M�UMM\0jb\�T����tNȟ����=\�\�\�^�V�\���U)\�\�>X�\�z9;��\�&&��A;<!\��!>\'?�Nøk�0�b\�2�ә��\��\0-F\�]��o\�2�����7\��\�#�]��~��] �aLh��\��3��P\�Z�\�\�\�>�\\��\09_X\�N[�e�;:���O\�ʒ\�\�\�KN�Z`\"���fL,;�\�WkA%l�2e\\�疬B�\�.B\�\0I�Z�V�cso\�\�G��:l\��f*ܗx�I�_-p��cPsnq��\�u�Q\n�4\�j����\�k\��xr��\�\�ۅ\�~\�)��\0X��iMB\�1A7L���vI\�Q��K\��࠺\�\��\�T4�\�+�O��\�D�c�g�g�b���	#�\��f9\n�\0#?o�\�\�f8\n���\Z\�󇵘�<���(周{\���2�x���`\�y�%��\'5�\�\0B�$���WB�m�6���\04�\'\�\Zt��O%�\r#��|-�|\�>\�\�\�v=�Ǚ��\0�\00\�\�\r\�%�cd��}ǫ짔L��\�0�2 C2\����X\04�\\���7\�\��$�I\�\�\\p5\�\"\ZpN�I?A[ov\r\�!Z	\��\���T<@�[�t�fO�4V�h-1\�\�\n�\",���܇�\�\\����h\�7�X�d%V��{:a��=+\Z�p�N2��W3\�VI�\�sw3�\�Zζ�t۵\����{\�k��jw\�w�\�ԍ_��nݑ���~\Zoy�$�^\"h/vٵY�!2W�pϬ?	Ȑ=�\�\�\r�\�w�&�SI\��HU��\�M��\��\�/ck�\0\ZJ%�)��\�\�\�GF.:�R\��bxʝ�\0H�\�',100000,1000000,'2024-01-04'),(4,'AoBaL','Áo ba lỗ pumma',50,NULL,100000,1000000,'2024-01-04'),(5,'AoBaL','Áo ba lỗ pumma',50,NULL,100000,1000000,'2024-01-05'),(6,'AoBaL','Áo ba lỗ pumma',50,NULL,100000,1000000,'2024-01-05');
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
INSERT INTO `product_type` VALUES ('AoBaL','Áo ba lỗ');
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
