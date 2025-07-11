CREATE DATABASE  IF NOT EXISTS `joinme` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `joinme`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: joinme
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `course_tbl`
--

DROP TABLE IF EXISTS `course_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_tbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `body` tinytext NOT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `imgpath` varchar(200) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_tbl`
--

LOCK TABLES `course_tbl` WRITE;
/*!40000 ALTER TABLE `course_tbl` DISABLE KEYS */;
INSERT INTO `course_tbl` VALUES (1,'서울숲','서울 성동구 뚝섬로 273','산책, 피크닉, 벚꽃 · 가을 단풍 명소','2025-06-12 08:58:27','/seoul/seoul1.jpg'),(2,'한강공원 여의도지구','서울 영등포구 여의도동 68-1','자전거·치맥·야경 데이트 인기','2025-06-12 08:58:27','/seoul/seoul2.jpg'),(3,'북촌한옥마을','서울 종로구 북촌로 37','전통 한옥길 산책 + 사진 촬영 인기','2025-06-12 08:58:27','/seoul/seoul3.jpg'),(4,'창경궁·창덕궁','서울 종로구 창경궁로 185','고궁 산책 + 문화재 감상','2025-06-12 08:58:27','/seoul/seoul4.jpg'),(5,'은평한옥마을','서울 은평구 진관1로 50','전통+현대 조화 산책·카페·한옥 체험','2025-06-12 08:58:27','/seoul/seoul5.jpg'),(6,'남산서울타워','서울 용산구 남산공원길 105','서울 야경 명소, 전망대, 데이트 코스 필수','2025-06-12 08:58:27','/seoul/seoul6.jpg'),(7,'서울로 7017','서울 중구 퇴계로 18길 20','도심 속 도보 산책로, 식물과 조형물, 카페','2025-06-12 08:58:27','/seoul/seoul7.jpg'),(8,'올림픽공원','서울 송파구 올림픽로 424','넓은 공원 산책, 조각공원, 자전거 데이트','2025-06-12 08:58:27','/seoul/seoul8.jpg'),(9,'광장시장','서울 종로구 창경궁로 88','전통시장 음식, 길거리 먹거리 데이트','2025-06-12 08:58:27','/seoul/seoul9.jpg'),(10,'압구정 로데오거리','서울 강남구 압구정로 46길','쇼핑, 카페, 트렌디한 데이트 장소','2025-06-12 08:58:27','/seoul/seoul10.jpg'),(11,'더드림핑크뮬리파크','경기 남양주시 와부읍 경강로926번길 30','핑크뮬리 포토존 + 감성 나들이','2025-06-12 08:58:27','/gyeonggi/gyeonggi1.jpg'),(12,'파주 프로방스 마을','경기 파주시 탄현면 새오리로 35','알록달록한 프랑스풍 건물들과 유럽 느낌의 골목, 인생샷 촬영 명소. 레스토랑, 카페, 갤러리 등 감성적인 데이트 코스','2025-06-12 08:58:27','/gyeonggi/gyeonggi2.jpg'),(13,'두물머리','경기 양평군 양수리 두물머리','한강 팔당 호수생태길 산책·정원 데이트','2025-06-12 08:58:27','/gyeonggi/gyeonggi3.jpg'),(14,'화성행궁','경기 수원시 팔달구 정조로 825','역사+산책+감성 핫플','2025-06-12 08:58:27','/gyeonggi/gyeonggi4.jpg'),(15,'자라섬 꽃 축제','경기 가평군 가평읍 자라섬로 30','봄철 튤립·꽃 포토존','2025-06-12 08:58:27','/gyeonggi/gyeonggi5.jpg'),(16,'아침고요수목원','경기 가평군 상면 수목원로 432','계절별 꽃과 자연 산책, 사진 명소','2025-06-12 08:58:27','/gyeonggi/gyeonggi6.jpg'),(17,'헤이리 예술마을','경기 파주시 탄현면 헤이리마을길 59','미술관, 카페, 갤러리, 문화 예술 데이트','2025-06-12 08:58:27','/gyeonggi/gyeonggi7.jpg'),(18,'용인 에버랜드','경기 용인시 처인구 포곡읍 에버랜드로 199','놀이공원, 꽃축제, 동물원','2025-06-12 08:58:27','/gyeonggi/gyeonggi8.jpg'),(19,'광교호수공원','경기 수원시 영통구 하동 1020','호수 산책, 카페, 자전거 데이트','2025-06-12 08:58:27','/gyeonggi/gyeonggi9.jpg'),(20,'세미원','경기 양평군 양서면 양수로 93','연꽃·수련 테마의 자연생태정원. 정갈한 정원과 연못 산책로, 전통미와 자연이 어우러진 힐링형 데이트','2025-06-12 08:58:27','/gyeonggi/gyeonggi10.jpg'),(21,'대전 시민천문대','대전 유성구 과학로 213-48','망원경·밤하늘 관측 로맨틱','2025-06-12 08:58:27','/daejeon/daejeon1.jpg'),(22,'엑스포 수상공원','대전 서구 둔산대로 169','보트·산책·꽃 포토존','2025-06-12 08:58:27','/daejeon/daejeon2.jpg'),(23,'대전 아쿠아리움','대전 중구 보문로 88','해양 생물 감상·조명 데이트','2025-06-12 08:58:27','/daejeon/daejeon3.jpg'),(24,'둔산동 공방 체험존','대전 서구 둔산남로 210-1','수공예·감성 체험 데이트','2025-06-12 08:58:27','/daejeon/daejeon4.jpg'),(25,'궁동 카페 거리','대전 유성구 궁동','감성 카페 거리 산책','2025-06-12 08:58:27','/daejeon/daejeon5.jpg'),(26,'한밭수목원','대전 중구 대덕대로 169','도심 속 자연, 꽃과 나무 산책','2025-06-12 08:58:27','/daejeon/daejeon6.jpg'),(27,'대전엑스포과학공원','대전광역시 유성구 대덕대로 480','과학 체험, 넓은 공원 산책','2025-06-12 08:58:27','/daejeon/daejeon7.jpg'),(28,'오월드 동물원','대전 중구 대종로 480','동물원, 놀이공원','2025-06-12 08:58:27','/daejeon/daejeon8.jpg'),(29,'계룡산 국립공원','대전 근처 계룡시, 논산시 일부 포함','등산, 자연 산책','2025-06-12 08:58:27','/daejeon/daejeon9.jpg'),(30,'유성 온천지구','대전 유성구 온천로','온천 체험, 힐링 데이트','2025-06-12 08:58:27','/daejeon/daejeon10.jpg'),(31,'근대골목 문화거리','대구 중구 북성로 일대','벽화·카페·역사 산책','2025-06-12 08:58:27','/daegu/daegu1.jpg'),(32,'범어아트스트리트','대구 수성구 동대구로 342','지하보도형 갤러리. 예술 작품과 감각적인 조명 연출로 도심 속 이색 데이트. 계절별 전시도 운영','2025-06-12 08:58:27','/daegu/daegu2.jpg'),(33,'미술체험관','대구 수성구 미술관로 40','유화·도자기·체험 프로그램','2025-06-12 08:58:27','/daegu/daegu3.jpg'),(34,'달성공원','대구 중구 달성공원로 35','무료 동물원·산책+피크닉','2025-06-12 08:58:27','/daegu/daegu4.jpg'),(35,'아양아트센터','대구 동구 아양로 78','전시·문화공간 데이트','2025-06-12 08:58:27','/daegu/daegu5.jpg'),(36,'이월드','대구 달서구 두류공원로 200','놀이공원, 야경 명소','2025-06-12 08:58:27','/daegu/daegu6.jpg'),(37,'수성못','대구 수성구 수성못길 53','호수 산책, 카페 거리','2025-06-12 08:58:27','/daegu/daegu7.jpg'),(38,'앞산공원','대구 남구 앞산순환로','등산, 야경, 케이블카','2025-06-12 08:58:27','/daegu/daegu8.jpg'),(39,'동성로','대구 중구 동성로','쇼핑과 음식, 젊은층 데이트 장소','2025-06-12 08:58:27','/daegu/daegu9.jpg'),(40,'팔공산','대구 동구 팔공산로','산행, 자연 경관','2025-06-12 08:58:27','/daegu/daegu10.jpg'),(41,'송도 해상케이블카','부산 서구 송도해변로 171','바다·야경 케이블카','2025-06-12 08:58:27','/busan/busan1.jpg'),(42,'흰여울문화마을','부산 영도구 흰여울길','감성 골목·바다 전망 산책','2025-06-12 08:58:27','/busan/busan2.jpg'),(43,'이기대 해안산책로','부산 남구 용호동 산 197-5','해안 절벽 따라 걷는 트레킹 코스. 탁 트인 바다 전망과 울창한 숲길이 어우러진 힐링 산책 데이트 명소.','2025-06-12 08:58:27','/busan/busan3.jpg'),(44,'보수동 책방골목','부산 중구 대청로 67번길','골목 골동품 & 책방 분위기','2025-06-12 08:58:27','/busan/busan4.jpg'),(45,'송정 해수욕장','부산 해운대구 송정동','데이트 해변+파도소리 힐링','2025-06-12 08:58:27','/busan/busan5.jpg'),(46,'광안리 해수욕장','부산 수영구 광안해변로 219','바닷가 산책, 야경 명소','2025-06-12 08:58:27','/busan/busan6.jpg'),(47,'해운대 해수욕장','부산 해운대구 해운대해변로 264','바다, 카페, 축제','2025-06-12 08:58:27','/busan/busan7.jpg'),(48,'부산 영화의 전당','부산 해운대구 수영강변대로 120','영화관, 문화 공간','2025-06-12 08:58:27','/busan/busan8.jpg'),(49,'감천문화마을','부산 사하구 감내2로 203','벽화마을, 사진 명소','2025-06-12 08:58:27','/busan/busan9.jpg'),(50,'태종대','부산 영도구 동삼동 산 34-4','절경 산책, 등대, 바다 전망','2025-06-12 08:58:27','/busan/busan10.jpg'),(51,'설악산 국립공원','강원 속초시 설악산로','산악 트레킹+단풍·자연','2025-06-12 08:58:27','/gangwon/gangwon1.jpg'),(52,'강촌 레일파크','강원특별자치도 춘천시 신동면 김유정로 1383','레일바이크 + 강변 데이트','2025-06-12 08:58:27','/gangwon/gangwon2.jpg'),(53,'낙산사','강원 양양군 강현면 낙산사로 100','해변 절경 + 사찰 힐링','2025-06-12 08:58:27','/gangwon/gangwon3.jpg'),(54,'영금정','강원 속초시 영금정로','바다 + 해돋이 포토 존','2025-06-12 08:58:27','/gangwon/gangwon4.jpg'),(55,'동강자연휴양림','강원 정선군 신동읍 고성리 산17','별+숲속 힐링·캠핑','2025-06-12 08:58:27','/gangwon/gangwon5.jpg'),(56,'속초 해변 및 중앙시장','강원 속초시 중앙로','바닷가, 맛집, 시장 데이트','2025-06-12 08:58:27','/gangwon/gangwon6.jpg'),(57,'강릉 경포대','강원 강릉시 경포로 365','해변, 산책, 카페','2025-06-12 08:58:27','/gangwon/gangwon7.jpg'),(58,'춘천 남이섬','강원 춘천시 남산면 남이섬길 1','섬 산책, 자연 경관','2025-06-12 08:58:27','/gangwon/gangwon8.jpg'),(59,'홍천 비발디파크','강원 홍천군 서면 한치골길 262','리조트, 스키, 사계절 데이트','2025-06-12 08:58:27','/gangwon/gangwon9.jpg'),(60,'평창 오대산 국립공원','강원 평창군 진부면 오대산로','등산, 자연 힐링','2025-06-12 08:58:27','/gangwon/gangwon10.jpg');
/*!40000 ALTER TABLE `course_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date_tbl`
--

DROP TABLE IF EXISTS `date_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date_tbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `date_sender` varchar(45) NOT NULL,
  `date_receiver` varchar(45) NOT NULL,
  `course_id` int NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  PRIMARY KEY (`num`),
  KEY `fk_date_sender` (`date_sender`),
  KEY `fk_date_receiver` (`date_receiver`),
  KEY `fk_course` (`course_id`),
  CONSTRAINT `fk_course` FOREIGN KEY (`course_id`) REFERENCES `course_tbl` (`num`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_date_receiver` FOREIGN KEY (`date_receiver`) REFERENCES `user_tbl` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_date_sender` FOREIGN KEY (`date_sender`) REFERENCES `user_tbl` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date_tbl`
--

LOCK TABLES `date_tbl` WRITE;
/*!40000 ALTER TABLE `date_tbl` DISABLE KEYS */;
INSERT INTO `date_tbl` VALUES (3,'aaa','ddw',39,'2025-06-17 03:53:00','2025-06-17 03:53:21');
/*!40000 ALTER TABLE `date_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hate_tbl`
--

DROP TABLE IF EXISTS `hate_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hate_tbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `hater` varchar(40) NOT NULL,
  `hated` varchar(40) NOT NULL,
  `hate_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`),
  KEY `hater_user_idx` (`hater`),
  KEY `hated_user_idx` (`hated`),
  CONSTRAINT `hated_user` FOREIGN KEY (`hated`) REFERENCES `user_tbl` (`username`),
  CONSTRAINT `hater_user` FOREIGN KEY (`hater`) REFERENCES `user_tbl` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hate_tbl`
--

LOCK TABLES `hate_tbl` WRITE;
/*!40000 ALTER TABLE `hate_tbl` DISABLE KEYS */;
INSERT INTO `hate_tbl` VALUES (1,'eee','iii','2025-06-13 08:49:59'),(2,'ggg','iii','2025-06-13 09:00:34'),(3,'hhh','iii','2025-06-13 09:00:46'),(4,'xxx','iii','2025-06-13 09:00:55'),(6,'fff','mmm','2025-06-13 09:08:19'),(7,'eee','uuu','2025-06-16 03:05:26'),(8,'eee','vvw','2025-06-17 11:59:41'),(9,'aaa','vvw','2025-06-17 12:00:09'),(10,'bbb','vvw','2025-06-17 12:00:09'),(11,'ccc','vvw','2025-06-17 12:00:09'),(12,'ddd','vvw','2025-06-17 12:00:09'),(13,'aaa','pqq','2025-06-17 12:02:21'),(14,'bbb','pqq','2025-06-17 12:02:21'),(15,'ccc','pqq','2025-06-17 12:02:21'),(16,'hhh','pqq','2025-06-17 12:02:21'),(17,'iii','pqq','2025-06-17 12:02:21'),(18,'vvv','lmm','2025-06-17 12:03:27'),(19,'ccc','lmm','2025-06-17 12:03:27'),(20,'sss','lmm','2025-06-17 12:03:27'),(21,'eee','lmm','2025-06-17 12:03:27'),(22,'aaa','lmm','2025-06-17 12:03:27'),(23,'aaa','fff','2025-06-17 03:36:10'),(24,'aaa','jkk','2025-06-17 03:36:14'),(25,'aaa','hhh','2025-06-17 03:36:34'),(26,'aaa','hhh','2025-06-17 03:37:41'),(27,'aaa','jjj','2025-06-17 03:37:52'),(28,'aaa','jjj','2025-06-17 03:38:01'),(29,'aaa','pqq','2025-06-17 03:39:07'),(30,'sss','hhh','2025-06-17 03:39:15'),(31,'fff','uuu','2025-06-17 03:39:23'),(32,'aaa','eee','2025-06-17 03:40:34'),(33,'aaa','eee','2025-06-17 03:41:25'),(34,'aaa','hhh','2025-06-17 03:42:04'),(35,'aaa','nnn','2025-06-17 03:50:17'),(36,'aaa','xxy','2025-06-17 03:50:28'),(37,'aaa','jjj','2025-06-17 03:52:02');
/*!40000 ALTER TABLE `hate_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hideuser_tbl`
--

DROP TABLE IF EXISTS `hideuser_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hideuser_tbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `hide_time` datetime NOT NULL,
  `usernickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`num`),
  KEY `username_idx` (`username`),
  CONSTRAINT `fk_hideuser_username` FOREIGN KEY (`username`) REFERENCES `user_tbl` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hideuser_tbl`
--

LOCK TABLES `hideuser_tbl` WRITE;
/*!40000 ALTER TABLE `hideuser_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `hideuser_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_tbl`
--

DROP TABLE IF EXISTS `image_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_tbl`
--

LOCK TABLES `image_tbl` WRITE;
/*!40000 ALTER TABLE `image_tbl` DISABLE KEYS */;
INSERT INTO `image_tbl` VALUES (1,'http://localhost:8080/images/9487f3e0-633a-49bd-a949-9e36722c1b8c_man13.png'),(2,'http://localhost:8080/images/8a33e711-755f-41aa-9636-1600840d2bf1_women13.png'),(3,'http://localhost:8080/images/3debb420-2402-4586-b9b9-c12a9bf1f110_man14.png'),(4,'http://localhost:8080/images/8e5d16e2-4553-4516-988e-b504c641b889_women14.png'),(5,'http://localhost:8080/images/7a7d63bb-5e68-4bec-9836-cc870fdc8a30_man15.png'),(6,'http://localhost:8080/images/2943e7a1-7336-44bc-a93f-3881ece4948d_women15.png'),(7,'http://localhost:8080/images/fac2d1c9-63fc-4a55-9c0c-c8052dd68d72_man16.png'),(8,'http://localhost:8080/images/1822ca07-db4f-471b-abe3-285a4202765b_women16.png'),(9,'http://localhost:8080/images/38e61394-3b88-44f3-99c8-72765fe6f498_man17.png'),(10,'http://localhost:8080/images/44431910-5e26-4f18-9dbe-40a5ba67f867_women17.png'),(11,'http://localhost:8080/images/6fca9ea2-7e49-40b8-9b4a-4bb043a07fda_man18.png'),(12,'http://localhost:8080/images/9c18190f-d6f4-46db-9fbe-791e1158592d_women18.png'),(13,'http://localhost:8080/images/5cb2c66f-83ec-48b9-a682-916e1cae7922_man19.png'),(14,'http://localhost:8080/images/ee70cecf-3d8b-41d4-8799-065c3b20711e_women19.png'),(15,'http://localhost:8080/images/668cca3b-4498-4d02-a272-9964b2245a70_man20.png'),(16,'http://localhost:8080/images/40a302fb-64a7-4c1e-9102-c09ec15dc43b_women20.png'),(17,'http://localhost:8080/images/91ee411f-1d6e-41c4-ba69-7fe57094d183_man21.png'),(18,'http://localhost:8080/images/3f8f8fb2-022a-4ed7-810d-30343000994d_women21.png'),(19,'http://localhost:8080/images/bfb07137-64d2-47ca-b58f-aad7ab99bb87_man22.png'),(20,'http://localhost:8080/images/8f47f50c-3b27-4aa9-83b7-bea319219378_women22.png'),(21,'http://localhost:8080/images/70f63a43-cf3d-418a-b2be-be113ff58ca1_man23.png'),(22,'http://localhost:8080/images/0020a35d-c453-4c9f-985f-a2647c86dbc6_women23.png'),(23,'http://localhost:8080/images/5e33f704-3c1e-418a-a2b6-b66cbc18f128_man24.png'),(24,'http://localhost:8080/images/e8eb3c53-6144-486a-9e73-499b56d4944f_women24.png'),(25,'http://localhost:8080/images/ed77c1d4-91e8-4cde-af7f-493e6fe0792b_man25.png'),(26,'http://localhost:8080/images/00394208-1f7f-442b-83a6-8830002cf4f4_women25.png'),(27,'http://localhost:8080/images/3848a489-0a06-40a6-9d19-a0b24035c67e_jh.jpg');
/*!40000 ALTER TABLE `image_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_tbl`
--

DROP TABLE IF EXISTS `like_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_tbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `liker` varchar(40) NOT NULL,
  `liked` varchar(40) NOT NULL,
  `like_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`),
  KEY `username_idx` (`liker`),
  KEY `liked_user_idx` (`liked`),
  CONSTRAINT `liked_user` FOREIGN KEY (`liked`) REFERENCES `user_tbl` (`username`),
  CONSTRAINT `liker_user` FOREIGN KEY (`liker`) REFERENCES `user_tbl` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_tbl`
--

LOCK TABLES `like_tbl` WRITE;
/*!40000 ALTER TABLE `like_tbl` DISABLE KEYS */;
INSERT INTO `like_tbl` VALUES (1,'fff','ccc','2025-06-12 06:37:37'),(2,'ggg','ccc','2025-06-12 06:37:57'),(3,'ccc','fff','2025-06-12 06:38:34'),(4,'ddd','fff','2025-06-12 06:38:39'),(5,'iii','fff','2025-06-12 06:38:52'),(6,'nnn','mmm','2025-06-12 06:39:04'),(7,'nnn','ccc','2025-06-12 06:39:11'),(8,'uuu','nnn','2025-06-12 06:39:22'),(9,'ddd','nnn','2025-06-12 06:39:25'),(10,'ddd','xxx','2025-06-12 06:39:43'),(11,'www','xxx','2025-06-12 06:39:46'),(12,'rrr','sss','2025-06-12 06:39:52'),(13,'sss','rrr','2025-06-12 06:39:57'),(14,'mmm','nnn','2025-06-12 06:40:03'),(15,'qqq','nnn','2025-06-12 06:40:08'),(16,'qqq','rrr','2025-06-12 06:40:10'),(17,'qqq','vvv','2025-06-12 06:40:20'),(18,'ccc','vvv','2025-06-12 06:40:23'),(19,'vvv','ccc','2025-06-12 06:40:28'),(20,'ccc','ggg','2025-06-12 06:45:50'),(21,'xxx','ddd','2025-06-13 00:52:12'),(22,'xxx','www','2025-06-13 00:52:28'),(23,'eee','ccc','2025-06-13 08:50:15'),(24,'bbb','eee','2025-06-13 08:50:51'),(25,'bbb','ggg','2025-06-13 08:50:53'),(26,'bbb','jjj','2025-06-13 08:50:54'),(27,'fff','ddd','2025-06-13 08:51:04'),(28,'fff','iii','2025-06-13 08:51:06'),(31,'eee','ooo','2025-06-16 03:05:23'),(32,'eee','bbb','2025-06-16 03:05:32'),(33,'ddd','ggg','2025-06-16 07:29:03'),(34,'kkk','ggg','2025-06-16 07:36:36'),(35,'kkk','lll','2025-06-16 07:36:38'),(36,'kkk','ttt','2025-06-16 07:36:40'),(37,'kkk','vvv','2025-06-16 07:36:41'),(38,'kkk','jjj','2025-06-16 07:36:42'),(39,'rrr','qqq','2025-06-16 07:36:51'),(40,'uuu','fff','2025-06-16 07:37:11'),(41,'uuu','ppp','2025-06-16 07:37:13'),(42,'uuu','ttt','2025-06-16 07:37:15'),(43,'uuu','xxx','2025-06-16 07:37:16'),(44,'lll','kkk','2025-06-16 07:37:32'),(45,'hhh','mmm','2025-06-16 07:37:44'),(46,'hhh','qqq','2025-06-16 07:37:45'),(47,'hhh','sss','2025-06-16 07:37:46'),(48,'vvv','qqq','2025-06-16 07:37:56'),(49,'vvv','kkk','2025-06-16 07:37:57'),(50,'ccc','nnn','2025-06-16 07:38:21'),(51,'ccc','eee','2025-06-16 07:38:23'),(52,'ggg','bbb','2025-06-16 07:42:19'),(53,'ggg','ddd','2025-06-16 07:42:20'),(54,'ggg','kkk','2025-06-16 07:42:22'),(60,'jjj','aaa','2025-06-17 03:05:55'),(65,'pqq','aaa','2025-06-17 03:08:13'),(66,'lll','aaa','2025-06-17 03:08:28'),(77,'aaa','hhi','2025-06-17 03:51:43'),(78,'ddw','aaa','2025-06-17 03:55:16'),(79,'aaa','ddw','2025-06-17 03:57:07');
/*!40000 ALTER TABLE `like_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_tbl`
--

DROP TABLE IF EXISTS `login_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_tbl` (
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_tbl`
--

LOCK TABLES `login_tbl` WRITE;
/*!40000 ALTER TABLE `login_tbl` DISABLE KEYS */;
INSERT INTO `login_tbl` VALUES ('aaa','$2a$10$V2q8a3nlekAB2OzPwi5MtOsBuPZXf95/iXrxBsBPg/pn5V4wSNW16','ROLE_USER','12341234'),('aaz','$2a$10$u/VSI9IZGV1XLLbP/cPZOeMGbBQrlR8N/lPlvf/dQH1NbP.uLMxHy','ROLE_USER','01012345678'),('admin','$2a$10$1QUuoFQE3LZvSjvcuyedou269.LCapFmr/W0AsmmqMYEYt9LYPmz.','ROLE_ADMIN','01099605629'),('bbb','$2a$10$4wwLYaYSFG9EwdRgr6L1A.Ww89Pwws4wPCJxePHH.JkfUN6N/XaLW','ROLE_USER','12345678'),('bbx','$2a$10$aQm5UOICvUvjmwXW/CfJdOD0ikl2sENr2sOWXEunmv4EKMhrVacme','ROLE_USER','01023456789'),('ccc','$2a$10$wCiAfyricRoMgb1VUJjXNuoLenSLBV.NJXuA12slQGP5mqtB2DjYe','ROLE_USER','12345555'),('ccv','$2a$10$lXY1Pmq0FVKXWhN3R8a8oOSDuLjFQRrRlz7A1t/sHjQdFbz1wf712','ROLE_USER','01034567890'),('ddd','$2a$10$Rih7za/X4WAK3gzSyRVasOoclrmxj/gfs2RhkqlBcOk20tgGVeE3u','ROLE_USER','1234111111'),('ddw','$2a$10$IuR4QtEvbs.ruCQmGB/60ub2OLiCOlz9YAdj2C1qG0pBeDPRHKgSO','ROLE_USER','01045678901'),('eee','$2a$10$9OKHBR2SqeqYbFZ4vbunbOmszBOOQNQrzUpnFlxxHz/vAlfERELx6','ROLE_USER','111144444'),('eef','$2a$10$sX2K4Th5gCjpBlR5eEZSJ.3d5UPnQWnLAZ5FTEUGOHK0/OK9VoX4a','ROLE_USER','01056789012'),('fff','$2a$10$AdfjeUUFkyhPHC1LVCPiv.zdWyiL/Qsknykfr0YBvmQl9MywbHMlS','ROLE_USER','123331111'),('fgh','$2a$10$57Y.hHSNnp0bsyT4o314c.Ul.2dkXVHltiznSer2KCok162vhQzZ2','ROLE_USER','01067890123'),('ggg','$2a$10$AUreI/J2dYOYyk8NspD59e24j/QrIJmfb9wXYXWbW7UrHNAVJWT/e','ROLE_USER','123455555'),('ggi','$2a$10$a/zgy5Pz0P0u7F/lfCOvkuYA3K/Nl519TdR80JOFGgMrsR5IRMWqO','ROLE_USER','01078901234'),('hhh','$2a$10$dBdkyA3emyNE30cNi1NOcuZL.qMgZ9BB9gmAAAIsnbWng3swXywd.','ROLE_USER','13515135135'),('hhi','$2a$10$M.f6fWMBG//ajaaIeVwh1OP6.QyNEE7HFp7sM0tMuc4w0E4coET4a','ROLE_USER','01089012345'),('iii','$2a$10$64IbJKc3lLPMsYTsjX3c1evsnP5xXJeAEtH6oHcsj6fuqOjm9/r.6','ROLE_USER','01044669933'),('ijj','$2a$10$HTkh.zIhDCwdHp9oS4y7heab7Nkxsrd53hGfRI0GQ3wsFkCkV9dzO','ROLE_USER','01090123456'),('jjj','$2a$10$7Kqaoyrq9/7kkVEKyJKcTOUHp5/C2CSrU84sym47HZA6163qswBXy','ROLE_USER','01010022656'),('jkk','$2a$10$2EXVIw6Ij2fbAfgxt7QXH.Y5LLuV5d9nPcJyHFAMdA7hu/34/8jwa','ROLE_USER','01001234567'),('junhong','$2a$10$J59gEd8z4bY9cXwNKBdxeO6kqVOMPZCj5G6kpLCyFH1UXcSDq7Ki2','ROLE_USER','01012345678'),('kkk','$2a$10$iFwG4QjHJ1DLNxVGsPV9rOJAVlqUoUz.jzKPF/PxyrY9Y2PBt6gYq','ROLE_USER','01065568891'),('kll','$2a$10$E3Ggas4r64Lxi9nfyQksbOBcV2Wl/wgmKRvNz2vVGsZb99/grzRMW','ROLE_USER','01013579246'),('lll','$2a$10$AJfZUycu3UGilvQfqBn6A.W6jYjERtl0Gj4HWX8nAi1dtYDXhnMp6','ROLE_USER','01056594875'),('lmm','$2a$10$tZZUE.NIjxSrfsPNucNCTOBQ4B.9xVS4U504c.eRDl2g5Je9Roova','ROLE_USER','01024681357'),('mmm','$2a$10$i1otkZvEkO6MUgIvIMWr8uQoCAi5sbPGZDL0DgnYpM1XxYvwYgJQa','ROLE_USER','01034659216'),('mnn','$2a$10$wqN5HHZih0R282CL5z3ijOIHz1Wt/gPOxzrY8BXsxH8P/48xVawtK','ROLE_USER','01035792468'),('nnn','$2a$10$RmeqDufS749Copgnjomru.A0NNX07VCecGrPII2O4NKyiaBrBzdke','ROLE_USER','01065326695'),('nno','$2a$10$SF0LucmMCqLzcdgVtns4K.iOLPiS2oGx4vLgp0klJzyaMtuLr.GW2','ROLE_USER','01046813579'),('ooo','$2a$10$hisb/RnCKbejlohr9ZVEr.B.6VrWCOHyDXTKolRUfzZRy2e5HebI2','ROLE_USER','01056551121'),('opp','$2a$10$JZBZqu3wzAbKIo564nHKhOuHoqQtR5L0JLpvbZa1ih1WBitNhItVW','ROLE_USER','01057924680'),('ppp','$2a$10$h5Cct8Cv.5m4wbcU2UOsauTKNekeTNbBvvJ9VUKsNJkS/0vDyanqy','ROLE_USER','01044445512'),('pqq','$2a$10$aExMhoP69dbB8KGXCrq5XeYo1ygseD0RX7tUyifRKNG83oofp6k3S','ROLE_USER','01068035791'),('qqq','$2a$10$rwn4j9aaW1Tu3uFkdHOEdOhRFx7Zcfyzc0aVKyMCWviCTL8vVzIHa','ROLE_USER','01065663326'),('qrr','$2a$10$DZ486uC5.Uz91Mej.8.wLu6Oc4vLWojuNfIQioQuFdoSrrCj3J62O','ROLE_USER','01079146802'),('rrr','$2a$10$yT/bqPt/UL/zcoZwTfY5I.vaihWW9Thr3U21JWNmgLBZD0s3yO/NO','ROLE_USER','01084455965'),('rss','$2a$10$sdQ08VXpTNAdR/UTqHe.tOfmtczpE4WwREQkLoDTUBd6HC4Zb6Wye','ROLE_USER','01080257913'),('sss','$2a$10$VwGMR1ma3ttU9jEd3CeHtO1LHle03mrWxy/QgOWe7vCWG5BvKixje','ROLE_USER','0105562354'),('stt','$2a$10$z/i45g2VgHoBwQU92tBNeuDIkFeXHfn0YvKWNxHqudxh3Bz6QD3fO','ROLE_USER','01091368024'),('ttt','$2a$10$28StBchEgNZMJjrQDtLMN.RlvPdeW2CVoNrVsv36M2LOy7CxMt.tu','ROLE_USER','010659633321'),('ttu','$2a$10$rW56EpIyaFsJuhRvjcvxV.cQAp8405QFL1.Agg5siKj/wBxRr9Y8y','ROLE_USER','01002479135'),('uuu','$2a$10$picchsHNp49vwv7q5ZLkMOzPS7BzJA1OWLgoX5IDCj7MKgjPL.WBW','ROLE_USER','01032326511'),('uuv','$2a$10$jvLKlvKvna2JIRpXGrSAPeEad09qjKtZxEz9rO1e7HqRGSSFEtsI2','ROLE_USER','01013580246'),('vvv','$2a$10$L9vQ7grLfk1MGnjHfIq3zeQAP7oUDF9.WOB0xI0ZypGE7uJ1X9cA6','ROLE_USER','01056652315'),('vvw','$2a$10$8Ae3fqZGOUD./t8ZOQ592uH0q1lBAagE0ZSI679AqFbYhIiOW1qkq','ROLE_USER','01024691357'),('www','$2a$10$HPNXevvS2IrhWPnCThqOMOElfPYKkSSImrYt4MuafjKRajZ0XgEIK','ROLE_USER','0165943254'),('wwx','$2a$10$EOzmA7pWSN1FIeMtGA2fYO78/MlQIuxqozjaQYzf.1ARWPwbP3Bou','ROLE_USER','01035702468'),('xxx','$2a$10$WiDW5AhBDu.qs5d//HPnk.nPeT/4aQhZW2LAe2B7gJU.3b0aLE4O.','ROLE_USER','01065953256'),('xxy','$2a$10$bYmC6aNT68i6Ac4O5YoC0ONO5iH2H6KWnNnhuIDmea/.XOMDeG5C.','ROLE_USER','01046813579'),('yyy','$2a$10$1YDbMuTH9PYMExwOqYw5gOe5/hUxhWlNogUH4Qsse4KJ2u7WK1ZIC','ROLE_USER','01057924680'),('zzz','$2a$10$aJuGvGujpMYjHyIgPq4oyumkxupzVD3zHU4rp5/g01Gd12jlUQm5m','ROLE_USER','01068035791');
/*!40000 ALTER TABLE `login_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_tbl`
--

DROP TABLE IF EXISTS `match_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match_tbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `match_male` varchar(40) NOT NULL,
  `match_female` varchar(40) NOT NULL,
  `match_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`),
  KEY `male_idx` (`match_male`),
  KEY `match_female_foreignkey_idx` (`match_female`),
  CONSTRAINT `match_female_foreignkey` FOREIGN KEY (`match_female`) REFERENCES `user_tbl` (`username`),
  CONSTRAINT `match_male_foreignkey` FOREIGN KEY (`match_male`) REFERENCES `user_tbl` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_tbl`
--

LOCK TABLES `match_tbl` WRITE;
/*!40000 ALTER TABLE `match_tbl` DISABLE KEYS */;
INSERT INTO `match_tbl` VALUES (1,'ccc','fff','2025-06-12 06:38:34'),(2,'sss','rrr','2025-06-12 06:39:57'),(3,'mmm','nnn','2025-06-12 06:40:03'),(4,'ccc','vvv','2025-06-12 06:40:28'),(5,'ccc','ggg','2025-06-12 06:45:50'),(6,'ddd','xxx','2025-06-13 00:52:12'),(7,'www','xxx','2025-06-13 00:52:28'),(8,'ddd','fff','2025-06-13 08:51:04'),(9,'iii','fff','2025-06-13 08:51:06'),(10,'bbb','eee','2025-06-16 03:05:32'),(11,'qqq','rrr','2025-06-16 07:36:51'),(12,'kkk','lll','2025-06-16 07:37:32'),(13,'qqq','vvv','2025-06-16 07:37:56'),(14,'kkk','vvv','2025-06-16 07:37:57'),(15,'ccc','nnn','2025-06-16 07:38:21'),(16,'ccc','eee','2025-06-16 07:38:23'),(17,'bbb','ggg','2025-06-16 07:42:19'),(18,'ddd','ggg','2025-06-16 07:42:20'),(19,'kkk','ggg','2025-06-16 07:42:22'),(25,'aaa','ddw','2025-06-17 03:57:07');
/*!40000 ALTER TABLE `match_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_tbl`
--

DROP TABLE IF EXISTS `message_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_sender` (`sender`),
  KEY `fk_receiver` (`receiver`),
  CONSTRAINT `fk_receiver` FOREIGN KEY (`receiver`) REFERENCES `user_tbl` (`username`),
  CONSTRAINT `fk_sender` FOREIGN KEY (`sender`) REFERENCES `user_tbl` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_tbl`
--

LOCK TABLES `message_tbl` WRITE;
/*!40000 ALTER TABLE `message_tbl` DISABLE KEYS */;
INSERT INTO `message_tbl` VALUES (20,'aaa','ddw','안녕하세요','2025-06-17 03:53:14.081124',0),(21,'aaa','ddw','이떄 어때요?','2025-06-17 03:53:28.811784',0),(22,'ddw','aaa','싫어용','2025-06-17 03:54:45.291755',0);
/*!40000 ALTER TABLE `message_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tbl`
--

DROP TABLE IF EXISTS `user_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tbl` (
  `username` varchar(40) NOT NULL,
  `usernickname` varchar(100) NOT NULL,
  `sexuality` varchar(10) NOT NULL,
  `age` int NOT NULL,
  `height` int NOT NULL,
  `weight` int NOT NULL,
  `interest` varchar(200) DEFAULT NULL,
  `address` varchar(45) NOT NULL,
  `introduction` tinytext,
  `mbti` varchar(10) DEFAULT NULL,
  `profileimg` tinytext,
  `liked` int DEFAULT '0',
  PRIMARY KEY (`username`),
  CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `login_tbl` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tbl`
--

LOCK TABLES `user_tbl` WRITE;
/*!40000 ALTER TABLE `user_tbl` DISABLE KEYS */;
INSERT INTO `user_tbl` VALUES ('aaa','김짱돌','남성',18,190,89,'여행가기','대구 중구','안녕 난 여행을 좋아해 그렇게 생기지 않았니','ESFP','/man1.png',NULL),('aaz','윤민수','남성',31,184,64,'등산','서울 마포구','안녕하세요! 등산하고 정산에서 코드짜는걸 좋아해요.','INTP','/man13.png',NULL),('bbb','김곰돌','남성',35,170,100,'애니메이션','부산 사하구','애니다이스키후아후아타임','ISTJ','/man2.png',NULL),('bbx','정윤아','여성',38,155,54,'등산','서울 마포구','지압 자갈 같이 밟을래요?','INTJ','/women13.png',NULL),('ccc','김깡패','남성',23,160,90,'음악감상','대전 유성구','가오빼라','ENTP','/man3.png',NULL),('ccv','정현우','남성',35,169,72,'게임','경기 성남시','롤 같이 하실분 누구를위한마스터계정#0000 친추','ESFP','/man14.png',NULL),('ddd','김미남','남성',35,175,70,'요리','서울 마포구','요섹남','ENFP','/man4.png',NULL),('ddw','이지아','여성',25,163,46,'게임','경기 성남시','공포겜 같이 하러 피시방 가요!','ISFP','/women14.png',NULL),('eee','김장군','여성',21,180,80,'음악감상','서울 송파구','음악 좋아합니다','ISTJ','/women1.png',NULL),('eef','강승우','남성',34,174,77,'독서','부산 해운대구','책 읽고 연체 하는게 제 힐링이에요.','ESFJ','/man15.png',NULL),('fff','김여정','여성',34,170,50,'혁명','북한 평양시','김정은 와이프 닮음','ISFJ','/women2.png',NULL),('fgh','정지아','여성',37,159,50,'독서','부산 해운대구','조용한 공간에서 책 읽는 게 제 힐링이에요.','ESTP','/women15.png',NULL),('ggg','김단발','여성',25,155,45,'격투기','부산 해운대구','안녕 ','ESFJ','/women3.png',NULL),('ggi','정성민','남성',38,168,68,'음악감상','대구 중구','뮤직이즈 마이 라이푸','ISTP','/man16.png',NULL),('hhh','김표독','여성',37,165,53,'sns','강원도 춘천시','하..','INTJ','/women4.png',NULL),('hhi','강소연','여성',20,155,56,'음악감상','대구 중구','하루의 시작과 끝엔 늘 음악이 함께해요.','ENFP','/women16.png',NULL),('iii','최범죄','남성',21,182,88,'혁명','경기 수원시','혁명하러 왔습네다','INTJ','/man5.png',NULL),('ijj','임현우','남성',33,184,72,'사진','강원 춘천시','예쁜 풍경과 순간을 사진에 담는 걸 좋아해요.','ESTP','/man17.png',NULL),('jjj','김서연','여성',27,150,40,'애니메이션','경기 수원시','라프텔 보면서 가벼운 만남','INTP','/women5.png',NULL),('jkk','이수빈','여성',29,157,50,'사진','강원 춘천시','순간을 담은 사진 좋아해요.','ENFJ','/women17.png',NULL),('junhong','김준홍','남성',27,175,70,'혁명','경기도 안산시','ㅎㅇ','ISTP','/man18.png',NULL),('kkk','김도현','남성',28,170,75,'게임','제주 제주시','게임은 그냥 취미 그 이상이에요, 팀플 잘하는 타입입니다!','ENTJ','/man6.png',NULL),('kll','정태윤','남성',38,183,75,'먹방','인천 연수구','한쿡 음식에 콴심이 마나요우','ESFP','/man19.png',NULL),('lll','이지아','여성',26,170,45,'드라마 감상','경기 안양시','\nDrama is my daily comfort, filming my life is my hobby','ENTP','/women6.png',NULL),('lmm','강지민','여성',34,160,120,'먹방','인천 연수구','햄버거 소믈리에 에요','ENFP','/women18.png',NULL),('mmm','이준서','남성',30,168,50,'패션','경기 안양시','스타일링하는 게 제 힐링이에요, 옷 잘 입는 사람 좋아해요 :)','ENFJ','/man7.png',NULL),('mnn','최현우','남성',23,180,83,'요리','서울 송파구','요리에 마술을~','INTP','/man20.png',NULL),('nnn','박하은','여성',27,164,44,'여행','대전 유성구','한 달에 한 번은 어디든 떠나요, 여행이 삶의 활력이에요','INFJ','/women7.png',NULL),('nno','강하늘','여성',34,164,43,'요리','서울 송파구','맛있는 걸 함께 만들어 먹는 시간이 좋아요.','ESTP','/women19.png',NULL),('ooo','이준서','남성',33,177,80,'사진 촬영','경기 성남시','세상을 바꾸는 상상을 자주 해요, 생각 많은 타입이에요','INFJ','/man8.png',NULL),('opp','정태림','남성',32,188,88,'댄스','대전 유성구','음악만 들리면 영혼과 민소매가 먼저 반응해요!','ESFJ','/man21.png',NULL),('ppp','정수빈','여성',33,155,50,'사진 촬영','경기 성남시','카메라만 들면 집중력이 폭발해요, 예쁜 순간을 남기는 걸 좋아해요!','INFP','/women8.png',NULL),('pqq','강하은닉','여성',21,151,50,'밀리터리 장비수집','대전 유성구','النازيون على حق','ISFJ','/women20.png',NULL),('qqq','정하늘','남성',29,180,80,'격투기','북한 평양시','격투기 영상보다가 직접 배우게 됐어요, 운동으로 성격도 유해졌답니다','ENFJ','/man9.png',NULL),('qrr','최강윤','남성',26,168,88,'헬스','경기 고양시','프로틴 추천 받습니다','ENFP','/man22.png',NULL),('rrr','최예린','여성',30,160,55,'패션','서울 마포구','옷이나 콜라보 보면 못 참아요, 소소한 것에 진심이에요','INFP','/women9.png',NULL),('rss','이다인','여성',35,161,54,'헬스','경기 고양시','매일 런닝 할 사람이 같이 있으면 좋겠어요','ISFP','/women21.png',NULL),('sss','최민재','남성',31,182,90,'운동','서울 송파구','운동으로 스트레스 푸는 게 제일 좋아요, 요즘은 헬스에 빠졌어요!','ESTJ','/man10.png',NULL),('stt','조우진','남성',23,186,74,'여행','전북 전주시','여행 좋아 합니더','ENTJ','/man23.png',NULL),('ttt','윤하나','여성',22,162,50,'게임','대구 중구','게임에서 위로받는 걸 좋아해요, 그래서 듀오할사람?','ISFP','/women10.png',NULL),('ttu','한윤아','여성',30,166,55,'여행','전북 전주시','여행 같이 떠나실분~?^^','ISTP','/women22.png',NULL),('uuu','윤태윤','남성',27,170,70,'드라마 감상','부산 해운대구','이어폰 끼고 하루를 시작해요, 드라마는 제 감정상자에요','ISTP','/man11.png',NULL),('uuv','김현우','남성',28,177,98,'밀리터리 장비수집','충남 천안시','Navy SEALs are the strongest in the world!','ISFP','/man24.png',NULL),('vvv','조민서','여성',29,160,55,'운동','부산 사하구','덤벨을 던지는 게 좋아요, 남들 눈치 안 보는 스타일이에요','ESFP','/women11.png',NULL),('vvw','한수빈','여성',26,156,86,'댄스','충남 천안시','벨리댄스를 배우고 있어요! 그리고 바스크치즈 케이크 먹고 싶어요!','ENTJ','/women23.png',NULL),('www','조건우','남성',36,180,78,'SNS','강원 춘천시','SNS로 일상 기록하는 거 좋아해요, 요즘은 브이로그도 도전 중이에요!','ENFJ','/man12.png',NULL),('wwx','박민수','남성',20,178,76,'애니메이션','제주 제주시','청춘돼지는 바니걸 꿈을 꾸지 않는다 라는 내용을 아시는 사람?','ISFJ','/man25.png',NULL),('xxx','한다인','여성',28,155,50,'요리','제주 제주시','요리는 제 사랑 표현이에요, 새로운 레시피에 도전하는 걸 좋아해요!','ESTJ','/women12.png',NULL),('xxy','강예린','여성',24,155,53,'애니메이션','제주 제주시','바이올렛 에버가든 볼래요?','ISTP','/women24.png',NULL),('yyy','윤현우','남성',27,178,64,'자전거','경북 포항시','바람 가르며 달릴 때 기분 최고예요! 자전거 탈때마다 다시 군인으로 돌아간거 같아요','INFP','/man26.png',NULL),('zzz','강하늘','여성',36,171,54,'자전거','경북 포항시','따릉이 말고 일렉바이크 말고 삼천리','INTP','/women25.png',NULL);
/*!40000 ALTER TABLE `user_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-11 17:50:11
