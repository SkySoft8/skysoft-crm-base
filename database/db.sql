-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: basecrm
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('10209b5d-ee72-f284-8186-678644d0b804','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','SecurityGroups','module',89,0),('102a4663-639e-efdb-f4b5-6786443a7d00','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOS_Contracts','module',90,0),('103943be-0fd6-7919-0fe0-678644a99b7b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','EmailMarketing','module',90,0),('11a7821f-2564-1501-b9bd-678644d45ecd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','EmailMarketing','module',90,0),('11aced96-2a7c-8378-851b-678644528cf6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOS_Contracts','module',90,0),('11ce30ea-763a-0974-b0cf-6786443eb683','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','SecurityGroups','module',90,0),('130dc6e8-3080-675c-5100-6786442e3cd2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','EmailMarketing','module',90,0),('131f0c09-9f39-f73b-cf86-678644ca6cf2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOS_Contracts','module',90,0),('135605f1-e6f1-a664-f900-67864470967c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','SecurityGroups','module',90,0),('13740ba2-f22f-e835-6494-6786449815f2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Emails','module',90,0),('137b3aa7-154d-f8b7-c1ef-6786447629b3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Project','module',89,0),('1484b9e2-23e4-acaf-f60e-678644127e41','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','EmailMarketing','module',90,0),('1487507a-df41-412f-96ea-678644ddf8ea','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOS_Contracts','module',90,0),('14ff3397-1b93-2030-a698-67864474c0f7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','SecurityGroups','module',90,0),('15460b97-9ecf-b88d-0dfa-678644d38eaf','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Project','module',90,0),('15f8891c-0bed-706a-6278-678644be48e3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOP_Case_Updates','module',89,0),('15fd23d3-0d0b-a97a-833c-67864471776e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','EmailMarketing','module',90,0),('168cfa47-86a3-c6f5-5cfd-6786447248fe','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','SecurityGroups','module',90,0),('16c75c51-c26f-a3eb-af7f-678644a7b56e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Project','module',90,0),('1773f0a8-0193-f3e4-5504-678644769b72','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','EmailMarketing','module',90,0),('1799a16e-2a19-e25f-ed31-678644606225','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOP_Case_Updates','module',90,0),('1805b624-d559-3f71-6fb1-6786446c8fae','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','SecurityGroups','module',90,0),('1831e5f8-843f-475d-be24-678644a3bca8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Project','module',90,0),('1907b155-c0d3-668a-55d9-67864468a8ff','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOP_Case_Updates','module',90,0),('197581be-a423-a480-61c4-678644aba250','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','SecurityGroups','module',90,0),('19921563-c084-eb9e-38d5-6786449f6a9c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Project','module',90,0),('1a7728d4-ff6e-3d57-5e47-67864476b8ee','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOP_Case_Updates','module',90,0),('1ae3b8d4-88d6-f96b-2227-678644b2a708','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','SecurityGroups','module',90,0),('1af8119a-4452-e0c5-3260-6786441029f9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Project','module',90,0),('1bc3380c-f258-994b-612e-6786445bfeba','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','EAPM','module',89,0),('1bf1ccde-0c92-2e52-ca4d-678644dd18f9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOP_Case_Updates','module',90,0),('1c68fc75-971c-ef60-2e05-678644984935','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Project','module',90,0),('1d5697c0-e7a0-3c2a-5c26-6786448f5a29','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','EAPM','module',90,0),('1d67fe3b-8c4f-ef3a-a74b-678644ae1d6c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOP_Case_Updates','module',90,0),('1dd29e26-3051-cab0-1b57-67864420676d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Project','module',90,0),('1e0116b0-c3ee-ac54-2bb2-6786449d479b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Documents','module',89,0),('1eb77108-ec55-4059-8e5f-67864490c226','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','EAPM','module',90,0),('1edfa9dd-6ce5-d8ab-4aa1-6786443165e9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOP_Case_Updates','module',90,0),('1fa4a52a-e071-9acb-3cdb-67864488f8e3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Documents','module',90,0),('20256407-1fb4-14b5-6501-6786447d801d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','EAPM','module',90,0),('202e3a09-9dc0-79c1-3cb2-678644f2dbcb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','jjwg_Maps','module',89,0),('205149d3-beee-5b2f-240a-678644eda994','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOP_Case_Updates','module',90,0),('21286653-e0f0-7376-d8d9-6786445b66cd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Documents','module',90,0),('21d26e9f-0373-4bc9-9dc6-678644a960c8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','jjwg_Maps','module',90,0),('21d91c6a-79e0-1a85-afc8-678644af815d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','EAPM','module',90,0),('21e1021d-993d-4e32-9e94-67864421a179','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOK_KnowledgeBase','module',89,0),('229a8850-0944-397c-c220-6786443afc3e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Documents','module',90,0),('2311e5f9-1d88-bb2e-393f-6786443b9621','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Leads','module',89,0),('235fd35d-6ad9-06f7-2f78-6786441550c4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','EAPM','module',90,0),('2362a018-c0ed-f2c8-6fb8-678644c225dc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','jjwg_Maps','module',90,0),('23891480-ff46-5c7b-e7de-67864474a694','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOK_KnowledgeBase','module',90,0),('24064f38-2866-a691-34f4-6786448917d9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Documents','module',90,0),('2446d688-0e21-4b70-deab-67864460b413','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','SurveyResponses','module',89,0),('24dd9c22-65a2-f066-86b9-678644c0f34b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','EAPM','module',90,0),('24f69fc9-e139-304c-fffa-678644dc71f2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','jjwg_Maps','module',90,0),('250003a4-20a4-53f3-6003-678644206b2c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOK_KnowledgeBase','module',90,0),('25416555-cb44-4407-4e3b-678644ece3bc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Leads','module',90,0),('25738709-5c5e-bae5-bf53-678644ed4fab','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Documents','module',90,0),('2615cd95-7642-4a6f-4234-6786445da8a4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','SurveyResponses','module',90,0),('26548b35-65c2-9685-54de-678644b9e694','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','EAPM','module',90,0),('266b34e6-c63d-4295-7ccc-67864486b598','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOK_KnowledgeBase','module',90,0),('26743825-e603-a1da-c3de-6786446e28a3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','jjwg_Maps','module',90,0),('26ddabf9-3142-8d00-cbea-6786441c395b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Leads','module',90,0),('270a9a2d-e55a-a7a4-28ce-6786448131c3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Documents','module',90,0),('27a1819a-e849-3a5b-8361-678644cc1f8f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','SurveyResponses','module',90,0),('27dc8ae2-6a55-4539-c739-678644872dc4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOK_KnowledgeBase','module',90,0),('280b3b63-26ad-217f-7245-678644804183','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','jjwg_Maps','module',90,0),('28521e5d-235b-9313-662c-678644f411db','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Leads','module',90,0),('288509bb-ab16-f4bf-c399-678644306d11','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Documents','module',90,0),('29302266-da8f-c9ee-ca4c-678644cf53ae','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','SurveyResponses','module',90,0),('294ba4c4-ba1d-2579-2301-67864497421a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOK_KnowledgeBase','module',90,0),('298e77cc-bb1d-5338-545f-6786448b87a1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','jjwg_Maps','module',90,0),('29da0a4b-1b34-58c8-4f50-678644ee5af2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Leads','module',90,0),('2a2aed84-b717-4035-a6fb-6786447ba2f7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Opportunities','module',89,0),('2aae6b98-76ea-cea4-d1e7-678644a8a909','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','SurveyResponses','module',90,0),('2ae0d18c-fa94-52d5-51b7-6786446c7d0d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOK_KnowledgeBase','module',90,0),('2b146800-5037-7b14-f722-67864423ff99','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','jjwg_Maps','module',90,0),('2b382010-0928-27ee-c476-678644cef48c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Leads','module',90,0),('2b560515-ca7c-4e9a-add4-6786447d840d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Emails','module',90,0),('2bbf0746-22b3-a029-8dc8-678644a84d05','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Opportunities','module',90,0),('2c248f4a-2d44-adcf-d16c-6786448e9084','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','SurveyResponses','module',90,0),('2c5420a5-1d7a-83d5-168d-678644a0b831','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOK_KnowledgeBase','module',90,0),('2c95c204-cb11-7e9e-ebfe-678644cddea1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Leads','module',90,0),('2cbeeceb-3d00-5b82-e067-678644601bda','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Meetings','module',89,0),('2d52df0a-9217-ad13-5873-678644aaedc4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Opportunities','module',90,0),('2d9ed0e6-5070-eddd-9665-678644966f09','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','SurveyResponses','module',90,0),('2e0eaca1-6941-589a-6a8f-678644553ec9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Leads','module',90,0),('2e4c99ea-e472-5ddb-e62c-678644bed669','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Meetings','module',90,0),('2ed4afd2-9a82-19a4-f145-67864451bd7d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Opportunities','module',90,0),('2f097045-f57b-c551-b197-67864499f505','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','SurveyResponses','module',90,0),('2fbd9c00-e898-9367-d801-678644ea99d0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Meetings','module',90,0),('3039b46b-61a7-fc5c-352e-678644b68dea','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Opportunities','module',90,0),('312148c7-9dc2-1fde-97d2-678644a8d72a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Meetings','module',90,0),('31a3715e-2390-d24a-d8d8-678644720721','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Opportunities','module',90,0),('328c609e-55b9-20d5-bf4b-678644b6b2d8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Meetings','module',90,0),('330ae2b5-5c3b-ad57-b781-6786440d3292','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Opportunities','module',90,0),('340e98b4-5252-6526-fa0b-67864423ed82','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Meetings','module',90,0),('34918caf-387d-f205-4ffa-67864455e3e3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Opportunities','module',90,0),('357e1bc2-4721-f310-095a-678644b51810','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Meetings','module',90,0),('36e83883-7012-f00a-8f4e-6786441eff5c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Meetings','module',90,0),('3bcecf8a-f4ae-3a93-ef13-67864439c7ec','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOS_Invoices','module',89,0),('3cf97575-b89b-99d4-9caa-67864463b2c8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','ProjectTask','module',89,0),('3d883e82-d91e-d05d-56a3-678644067a5d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOS_Invoices','module',90,0),('3e7fa7c6-4175-0543-c937-678644d2be6c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','ProjectTask','module',90,0),('3f008403-987d-aeb8-03d4-6786447ec078','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOS_Invoices','module',90,0),('3f526803-3869-04de-92d7-678644c37d72','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','OutboundEmailAccounts','module',89,0),('3ff6ef71-b907-6b4f-f9e9-678644237102','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','ProjectTask','module',90,0),('40909ec6-ec58-5eef-efcd-678644eae05c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOS_Invoices','module',90,0),('40f8c904-ff32-c0ad-22f3-6786441e330b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','OutboundEmailAccounts','module',90,0),('41550cd4-9022-0514-8d24-678644514cd5','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','ProjectTask','module',90,0),('41f30098-6017-8477-9315-6786445ce5be','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Emails','module',90,0),('41f89a7d-20a8-618d-5703-678644759659','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOS_Invoices','module',90,0),('428aaa78-0995-59e0-7f1b-678644ee62ae','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','OutboundEmailAccounts','module',90,0),('42af5d15-a55e-ff1a-aba6-678644c93851','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','ProjectTask','module',90,0),('4385df4b-21c7-6910-34f3-67864478100a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOS_Invoices','module',90,0),('4403cbfd-de45-a516-4772-678644f3dbe3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','OutboundEmailAccounts','module',90,0),('440e6604-c2a9-b8e7-3e70-678644e02612','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','ProjectTask','module',90,0),('44fe8efd-53fc-77f8-6ed9-678644aeaa0a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOS_Invoices','module',90,0),('45754602-8965-f136-40c0-678644d718e0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','ProjectTask','module',90,0),('457b4e46-2d3f-6181-8049-67864460d928','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','OutboundEmailAccounts','module',90,0),('469a7b0f-2f6b-dffa-f338-678644b9a416','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOS_Invoices','module',90,0),('46ddd0e9-d248-39cd-a131-678644268622','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','ProjectTask','module',90,0),('46e7f03a-0570-d034-1986-678644f33026','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','OutboundEmailAccounts','module',90,0),('4854eae7-6f41-039f-90b9-678644b18dd6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','OutboundEmailAccounts','module',90,0),('4a0866fc-46bb-c219-4115-67864462e1d1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','OutboundEmailAccounts','module',90,0),('5072d1f7-e1c5-5538-9590-678644a5402f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','jjwg_Markers','module',89,0),('5192873f-9016-9f7d-5069-678644aad0e8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOR_Reports','module',89,0),('51df1c1d-bb12-2539-d018-67864499e969','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOS_Quotes','module',89,0),('523aae00-7e5e-f0df-6bae-678644b4d66e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','jjwg_Markers','module',90,0),('533f1b88-2b29-c8d2-14fa-678644e3c5d7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOR_Reports','module',90,0),('536afd0f-c624-84ba-5a34-678644b7626a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Surveys','module',89,0),('5375cf50-6b60-e2c8-ad2c-6786447937c3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOS_Quotes','module',90,0),('53be5f34-4513-73a3-386b-67864414485e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','jjwg_Markers','module',90,0),('54d63818-2449-5468-29aa-67864431b10b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOR_Reports','module',90,0),('54e80ee1-e535-d97a-33b8-678644ae21de','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOS_Quotes','module',90,0),('550b03e6-cad8-f3f0-baf9-67864422735d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Surveys','module',90,0),('55303849-d5f5-2dca-9a14-678644dbfcad','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','jjwg_Markers','module',90,0),('56500711-b97d-7568-38e2-678644dabef3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOS_Quotes','module',90,0),('569e16ca-4746-ef5e-b231-67864452c994','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Surveys','module',90,0),('56a2f794-b240-5727-faa3-678644c984e8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOR_Reports','module',90,0),('56c02d17-9d59-10f2-2506-678644bcc94c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','jjwg_Markers','module',90,0),('57bea2f5-9406-4dec-521f-678644af17fb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Tasks','module',89,0),('57cdbfda-54da-9255-a94e-6786444888f2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOS_Quotes','module',90,0),('58266a33-5d9e-b4f6-ff2a-678644859956','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Surveys','module',90,0),('582893e2-0895-301b-5185-678644107b4e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','jjwg_Markers','module',90,0),('582e67c1-7d10-40f4-6b83-6786440f9dfe','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOR_Reports','module',90,0),('5944319e-cd26-5ecb-612e-67864445d2f6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOS_Quotes','module',90,0),('5962f3c4-1c7c-9a4e-dbe1-67864434551b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Tasks','module',90,0),('599c8652-349f-efbf-e5aa-678644007396','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','jjwg_Markers','module',90,0),('599d01f7-943d-9fa8-e1e2-678644c9f04c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Surveys','module',90,0),('59c80f9d-b006-9aee-3b80-678644cb7134','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOR_Reports','module',90,0),('5ac0eeba-7c66-68c0-c350-67864414e1f2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOS_Quotes','module',90,0),('5b00c00d-81c6-4b1c-6924-678644800843','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Tasks','module',90,0),('5b120cfd-928c-cafc-16ae-678644e4d14f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','jjwg_Markers','module',90,0),('5b2e9c1f-4939-29c3-2cfc-678644bf00b9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Surveys','module',90,0),('5b3ceceb-52af-5ff3-14dd-678644f065ba','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOR_Reports','module',90,0),('5c3afb72-bf96-132b-9a91-67864481880b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOS_Quotes','module',90,0),('5c810a4e-d831-f35a-e37e-678644694d42','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Tasks','module',90,0),('5c9ead8c-a1b9-ebab-f047-6786445796a0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Surveys','module',90,0),('5cbe7c15-e514-8ffb-5069-678644f35a82','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOR_Reports','module',90,0),('5df7c5ad-d42c-c8b2-efb3-678644227cfa','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Tasks','module',90,0),('5e21c8a3-9c5e-1d98-5107-67864423cb93','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Surveys','module',90,0),('5f61828b-231b-b0d6-44af-678644b328e7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Tasks','module',90,0),('60c8d289-2ce9-9ff7-566b-67864496f1dc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Tasks','module',90,0),('623aa5e6-1be3-18b1-96c5-678644907e68','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Tasks','module',90,0),('6378efd2-d89f-2c44-9d6a-6786442db074','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','EmailTemplates','module',89,0),('652c2d1d-c450-4bb9-7714-678644a29000','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','EmailTemplates','module',90,0),('666b2dd9-f5b9-cda3-de5b-6786440dfa52','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Cases','module',89,0),('66bfc61a-269b-b1b0-e842-678644b385fd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','EmailTemplates','module',90,0),('67a31118-f551-6475-5ef4-678644c7ff72','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','InboundEmail','module',89,0),('67f2ae3b-425e-1d67-cffb-678644302369','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Cases','module',90,0),('68434ad6-dd2f-71c8-3f49-678644adae87','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','EmailTemplates','module',90,0),('6965470d-e41e-9163-c4d2-678644ff29cf','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Cases','module',90,0),('696709dd-97b3-e098-e69e-678644c5b794','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','InboundEmail','module',90,0),('69c193e3-8345-14d3-7786-6786445ab944','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','EmailTemplates','module',90,0),('6acd5088-6b99-4ec2-d2db-678644b137c1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Cases','module',90,0),('6adca0eb-aa57-0bd2-3400-678644e497b0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','InboundEmail','module',90,0),('6b45ce51-5839-1829-7d73-678644e46f67','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','EmailTemplates','module',90,0),('6b49ea01-0691-1316-2f23-678644917106','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOS_PDF_Templates','module',89,0),('6c3b0cc5-1ba4-5e7a-8348-6786446457fb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Cases','module',90,0),('6c57b910-cb6c-33cd-bbe4-678644b7a6fa','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','InboundEmail','module',90,0),('6cc1de51-f26c-90b8-4015-678644f895ce','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','EmailTemplates','module',90,0),('6cf34adb-f4be-be6c-72cc-67864484fc38','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOS_PDF_Templates','module',90,0),('6da1baea-de3d-7a44-96d6-67864469a529','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','ExternalOAuthConnection','module',89,0),('6db41c15-2316-3865-d855-678644e155cc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Cases','module',90,0),('6dca600f-333c-0ef5-83f1-678644f59efe','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','InboundEmail','module',90,0),('6e486ad3-e169-1a19-3533-678644774ea4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','EmailTemplates','module',90,0),('6e7b1b58-0735-aeef-7884-678644cfd29e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOS_PDF_Templates','module',90,0),('6f2dc331-c5d7-2263-da92-67864415c8b9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Cases','module',90,0),('6f4573de-fd40-79ad-7166-6786447f1554','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','InboundEmail','module',90,0),('6f4cf947-5f85-e654-f525-67864401ccab','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','ExternalOAuthConnection','module',90,0),('6feb85c8-9955-e7c3-7543-678644b335d6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOS_PDF_Templates','module',90,0),('709f9db6-f099-8c19-3b80-678644e0fe91','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Cases','module',90,0),('70c81f67-4782-375c-9853-678644366439','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','InboundEmail','module',90,0),('70c9580e-d490-82e7-4833-678644557d5c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','ExternalOAuthConnection','module',90,0),('7156ad13-ff04-a298-cfca-678644dcaa1c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOS_PDF_Templates','module',90,0),('7233226c-012e-7030-9872-678644d1a6c5','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','InboundEmail','module',90,0),('72580917-0567-7328-3163-678644030f66','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','ExternalOAuthConnection','module',90,0),('7269c54d-7571-199c-5fd8-6786448a35b6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Campaigns','module',89,0),('72d409f9-1832-c760-1869-678644edd2a3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOS_PDF_Templates','module',90,0),('739d678b-0cc4-2715-e9bf-6786448d3cb1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AM_ProjectTemplates','module',89,0),('73dfccc9-c567-bd4a-3609-678644ecdda8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','ExternalOAuthConnection','module',90,0),('73ff4b6e-1f88-a059-5f68-6786448b24a1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Campaigns','module',90,0),('744e9f3d-e5e5-a754-9512-67864480d428','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOS_PDF_Templates','module',90,0),('753979a8-f3fa-edbb-604c-678644d93c46','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AM_ProjectTemplates','module',90,0),('75583d30-46c9-b307-6813-6786445b1e4f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','ExternalOAuthConnection','module',90,0),('7586897e-b729-9eb2-08bf-6786449228ca','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Campaigns','module',90,0),('75c5d4ce-37c4-e971-e716-67864425c765','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOS_PDF_Templates','module',90,0),('76b60482-1fb0-5c2b-2207-6786447244da','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AM_ProjectTemplates','module',90,0),('76ca98d7-766f-2850-13b1-678644674674','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','ExternalOAuthConnection','module',90,0),('7706b863-f564-805f-03e0-6786449bcf2f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Campaigns','module',90,0),('783810b8-5756-8a19-7649-678644e36aaf','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AM_ProjectTemplates','module',90,0),('783cd91f-2574-405c-d93a-6786445d499b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','ExternalOAuthConnection','module',90,0),('78839c31-44c2-67ae-1649-678644e55e5f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Campaigns','module',90,0),('79c2cdc4-3057-9023-c287-678644ce6439','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AM_ProjectTemplates','module',90,0),('79f1ea30-be4b-25ff-b4ba-678644da4239','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Campaigns','module',90,0),('7b448f64-503e-ba9a-1e8a-67864461816b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AM_ProjectTemplates','module',90,0),('7b65e47d-656f-5b04-c3a1-6786441bd4a6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Campaigns','module',90,0),('7cba1251-10a2-28f6-fb88-678644cb5968','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AM_ProjectTemplates','module',90,0),('7cf57bd4-8cb6-87e9-8244-6786443566d8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Campaigns','module',90,0),('7e398b54-21a6-2721-1733-6786442ed628','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AM_ProjectTemplates','module',90,0),('7e867371-1327-3ca2-d7cd-678644f330d6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','jjwg_Areas','module',89,0),('7fb2fabe-e5b3-c19f-045b-6786443ba229','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','FP_events','module',89,0),('802cf709-2daa-b840-3707-6786447f41bd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','jjwg_Areas','module',90,0),('815620cb-3d6a-e4e0-7fa4-6786443700fc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','FP_events','module',90,0),('81a7b605-7594-13ab-ebab-67864451e22f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','jjwg_Areas','module',90,0),('82a05889-f872-1203-4f8d-678644de6a36','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','SurveyQuestionResponses','module',89,0),('82ddf5c8-c766-80c5-2c08-678644ad3128','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','FP_events','module',90,0),('832ac2a9-ebe8-fcc0-c9df-67864485798d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','jjwg_Areas','module',90,0),('844ab1d0-464c-3200-7fc5-6786449b61bf','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','FP_events','module',90,0),('84625701-fe6f-d470-8721-6786440f8e1e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','SurveyQuestionResponses','module',90,0),('84a07691-ea6f-6028-fe6d-678644519559','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','jjwg_Areas','module',90,0),('85b3a897-c4f7-2b52-3f92-6786447a63e7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','FP_events','module',90,0),('85f930d4-c7a5-bd99-f06b-678644134b03','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','SurveyQuestionResponses','module',90,0),('860fa687-dcba-1a74-eb8f-6786444eff99','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','jjwg_Areas','module',90,0),('8728e798-c0da-8c27-dbaf-678644d0f9f9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','FP_events','module',90,0),('877b4aee-f3b0-e457-561c-678644618f21','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','jjwg_Areas','module',90,0),('87860bb0-0f00-9525-6556-678644b6af9c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','SurveyQuestionResponses','module',90,0),('88a2bda9-66f8-6f41-315c-678644067b56','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','FP_events','module',90,0),('88eec6e1-f3d5-ff63-1146-6786447f4c93','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','jjwg_Areas','module',90,0),('890052b7-8cd5-e424-6095-678644576df1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','SurveyQuestionResponses','module',90,0),('8a2d9fdf-cd3e-e29d-ff54-67864433a8fb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','FP_events','module',90,0),('8a7ff652-0648-ee1e-2841-678644d31505','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','SurveyQuestionResponses','module',90,0),('8bfd5624-ed6e-0069-3102-67864459a7ab','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','SurveyQuestionResponses','module',90,0),('8d7c19b7-f718-ebc2-f4cd-678644307d37','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','SurveyQuestionResponses','module',90,0),('8ef63f77-0684-fcd3-ac87-678644f42c6a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Notes','module',89,0),('91a125c2-8c24-918f-65e8-678644ea8ba4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Notes','module',90,0),('942d653e-b612-4c36-5391-678644ed9ff6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Notes','module',90,0),('95a47207-a56b-a02e-61b3-678644ad669c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','ExternalOAuthProvider','module',89,0),('95b97000-a7bb-9c5b-dc28-67864406a476','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Notes','module',90,0),('97362fbe-6958-0e0b-a948-678644407513','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Notes','module',90,0),('9756f39a-0240-d215-6209-67864431c9e1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','ExternalOAuthProvider','module',90,0),('990540b1-3b12-1a19-3cce-6786445f041c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','ExternalOAuthProvider','module',90,0),('99ba6ccb-38bd-0e45-cb03-67864464aba9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Notes','module',90,0),('9a037c13-54cd-9e8e-29f6-6786446f7b42','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOS_Product_Categories','module',89,0),('9a570f79-3247-2ce5-aacf-678644aab63a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOS_Contracts','module',89,0),('9aa78adb-bed0-8179-bd03-6786446868ef','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','ExternalOAuthProvider','module',90,0),('9b4f18f8-e91c-5f77-de6b-678644c8111b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Notes','module',90,0),('9b647f8e-733b-6002-f729-678644ac8861','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Bugs','module',89,0),('9bb19648-c631-f722-eea4-678644d39dcc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOS_Product_Categories','module',90,0),('9c2474f5-4cd2-b779-c6d7-6786448c324a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','ExternalOAuthProvider','module',90,0),('9ce741c8-3a03-a370-6476-67864485cec1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Notes','module',90,0),('9cf453af-3229-a954-6020-67864430a3cf','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Bugs','module',90,0),('9d5ce66b-585c-4a65-9189-6786448ffd3e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOS_Product_Categories','module',90,0),('9da12da5-8e17-2b14-75f3-67864450787f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','ExternalOAuthProvider','module',90,0),('9e8e9adb-c6d9-3ba1-1dde-678644be6887','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Bugs','module',90,0),('9ed13268-f70f-8b42-4aca-67864470ce4f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOS_Product_Categories','module',90,0),('9f2155df-548d-6179-3e0d-678644212c9b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','ExternalOAuthProvider','module',90,0),('a0035c59-42fc-68ab-1e36-678644fcb638','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOW_WorkFlow','module',89,0),('a003941d-9f7d-8f9e-8665-678644901db4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Bugs','module',90,0),('a0551714-6127-12dd-3e77-6786447a68d9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOS_Product_Categories','module',90,0),('a0b270d6-da7d-96a3-8d33-678644701329','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','ExternalOAuthProvider','module',90,0),('a16f5d4e-12a0-ee9d-ae0f-678644fa3dc3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Bugs','module',90,0),('a188ea69-a80a-492c-04ba-678644bb4d6c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Contacts','module',89,0),('a19d92bd-ade3-c268-e6c7-67864482e069','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOW_WorkFlow','module',90,0),('a1a1f635-34a2-27ce-71fd-678644494739','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AM_TaskTemplates','module',89,0),('a1eb487c-16a5-e746-48e8-67864441c62d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOS_Product_Categories','module',90,0),('a2cdf36d-1efc-49fe-52b9-678644fd21a3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Bugs','module',90,0),('a30fe8fd-b1c8-3cf0-3649-6786441cbe18','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOW_WorkFlow','module',90,0),('a328d968-dec6-eba7-3b9b-678644ad5f48','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Contacts','module',90,0),('a33e93be-4f55-a225-286a-678644b1ecbd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AM_TaskTemplates','module',90,0),('a392f492-f119-c0bc-9329-6786445c7eed','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOS_Product_Categories','module',90,0),('a432c2e5-5eba-94b7-9478-67864425db49','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Bugs','module',90,0),('a4989e9c-522e-85ba-1cf8-67864421bb55','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOW_WorkFlow','module',90,0),('a4a28c56-78b2-0534-1fa5-67864427a3c2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Contacts','module',90,0),('a4b6b0e7-7941-c02f-1d69-678644e235b9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AM_TaskTemplates','module',90,0),('a5258b87-aa05-aa0c-de0b-678644cc330f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOS_Product_Categories','module',90,0),('a5a40cb8-fb6d-5aac-ebca-678644a7820f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Bugs','module',90,0),('a5ff5f89-818f-67b9-3c0c-678644179da5','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOW_WorkFlow','module',90,0),('a62d0642-f91d-8f60-b206-678644c12a49','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AM_TaskTemplates','module',90,0),('a62e3c3f-5199-bc33-9987-678644874ef5','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Contacts','module',90,0),('a74daa83-369d-77bd-38d5-678644d62ab9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','ProspectLists','module',89,0),('a77b307c-afcb-54ed-e84b-678644face12','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOW_WorkFlow','module',90,0),('a79c891a-e940-ac55-0097-6786449b1041','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AM_TaskTemplates','module',90,0),('a7b9eda3-6e2e-eeeb-7f7d-678644fc849b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Contacts','module',90,0),('a8ee6d29-2047-c373-42b5-678644dfd6d6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','ProspectLists','module',90,0),('a8fe0e58-6726-7542-38b9-678644af4893','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOW_WorkFlow','module',90,0),('a9192784-b61e-7d49-fd37-678644b17820','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AM_TaskTemplates','module',90,0),('a92b2831-cd9b-ab8e-e413-678644014ca1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Contacts','module',90,0),('aa36477f-9133-9fad-39fe-67864406d620','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','jjwg_Address_Cache','module',89,0),('aa4f6243-ee6e-0c22-f048-678644af5c33','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','ProspectLists','module',90,0),('aa87acf7-356c-3c34-5732-678644f26228','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOW_WorkFlow','module',90,0),('aa9741be-f5fd-6e02-f0c3-678644d62186','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AM_TaskTemplates','module',90,0),('aaa45a3f-9f1e-fa23-ecbb-678644d18d35','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Contacts','module',90,0),('abb93ab1-c809-74fe-7f34-678644c673b4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','ProspectLists','module',90,0),('abdc7880-4e3a-ad35-c03c-678644bca371','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','jjwg_Address_Cache','module',90,0),('ac20d907-34d6-38dc-a616-678644071be7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Contacts','module',90,0),('ac28a331-d915-10b5-6ac6-678644c86169','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AM_TaskTemplates','module',90,0),('ad437682-ec22-6216-ff60-678644daa606','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','ProspectLists','module',90,0),('ad6ee04c-d193-e442-9201-678644f7660c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','jjwg_Address_Cache','module',90,0),('aeb25096-c588-9b15-1a7b-67864408930c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','ProspectLists','module',90,0),('aedff2f0-46ae-7003-0a87-678644b0da47','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','FP_Event_Locations','module',89,0),('aee5f7a8-0635-f53a-a491-678644920a5b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','jjwg_Address_Cache','module',90,0),('b0193ace-4155-e50a-1ddb-6786449a56cb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','ProspectLists','module',90,0),('b0570fa0-f0a0-c751-539a-678644a2e5fb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','jjwg_Address_Cache','module',90,0),('b06b998b-7164-6657-6f7a-678644bc2b80','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','FP_Event_Locations','module',90,0),('b0731412-008e-0c8b-d397-678644a93840','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','SurveyQuestions','module',89,0),('b1a18fb3-38b6-2016-d0cf-678644261b25','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','ProspectLists','module',90,0),('b1d633dc-a489-3d18-1a1e-678644dbb2f0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','FP_Event_Locations','module',90,0),('b207eeba-4c63-04ac-9849-6786440a69a3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','jjwg_Address_Cache','module',90,0),('b20c42a9-6b91-8187-986a-678644504e1a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','SurveyQuestions','module',90,0),('b3481cea-7503-ea2f-1006-678644c19107','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','FP_Event_Locations','module',90,0),('b3749e42-e2e3-afd3-dd7e-6786444a0e51','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','jjwg_Address_Cache','module',90,0),('b392dd42-7386-5af1-e134-6786445580e4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','SurveyQuestions','module',90,0),('b4b7fbed-9ee2-50bc-fa76-678644493dcd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','FP_Event_Locations','module',90,0),('b4f35ace-d280-9861-8ec1-678644956649','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','jjwg_Address_Cache','module',90,0),('b524aedb-bcd2-c8e2-6a71-678644b433a3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','SurveyQuestions','module',90,0),('b57d0398-bc82-726b-70c6-6786449d20a9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOS_Contracts','module',90,0),('b63629fa-15b4-df60-4958-678644c2eb70','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','FP_Event_Locations','module',90,0),('b6b7f3b3-9c4d-42dd-2e2d-6786441dc291','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','SurveyQuestions','module',90,0),('b79c8720-3aa0-6871-f081-678644edff34','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','FP_Event_Locations','module',90,0),('b8352e72-2cb0-e944-f206-6786448a44ae','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','SurveyQuestions','module',90,0),('b9066348-3b7e-7bca-4609-678644a9b319','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','FP_Event_Locations','module',90,0),('b9c41e61-f03b-af83-f102-678644bf7324','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','SurveyQuestions','module',90,0),('bb6088e3-b849-3508-831d-678644b6c734','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','SurveyQuestions','module',90,0),('bc08fc84-1ec9-0a29-3cdd-6786443855ea','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','TemplateSectionLine','module',89,0),('bdb5a1e2-e968-5cad-14d0-6786446e3868','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','TemplateSectionLine','module',90,0),('bec6fec8-4a55-03c1-9732-678644ebaf50','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Calls','module',89,0),('bf28823f-aeac-9a69-c59b-678644a8031d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','TemplateSectionLine','module',90,0),('c0552890-446b-29f9-3500-67864439956d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Calls','module',90,0),('c0a00dd4-fe8a-6e6a-e1f4-67864488c213','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','TemplateSectionLine','module',90,0),('c1ea5b1c-32fa-5899-4146-678644ef6d93','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Calls','module',90,0),('c23bd88d-7352-1857-a910-678644644be3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','TemplateSectionLine','module',90,0),('c357b65a-4cb6-f608-3192-67864498aa3d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Calls','module',90,0),('c3bf1b27-2226-9313-821b-678644e900dd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','TemplateSectionLine','module',90,0),('c4c0a957-2896-7713-92a7-6786442c8e80','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Calls','module',90,0),('c546392b-a461-2de7-448f-6786448ab83e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','TemplateSectionLine','module',90,0),('c6325b8e-f95c-6c0f-2f8f-678644b09ae1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Calls','module',90,0),('c6c41517-7c7f-1b44-414d-678644fc8c5f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','TemplateSectionLine','module',90,0),('c7a8b52e-8cdb-9b5b-8a85-6786448b3cba','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Calls','module',90,0),('c9260084-cd75-e19e-1168-6786440fceab','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Calls','module',90,0),('cc5aeb1a-8fc7-22b3-f9a6-67864426d708','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOS_Products','module',89,0),('cd1f8a83-6dd2-10a3-9c91-67864427d193','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Users','module',89,0),('ce0153ab-fdba-d93f-6cd0-678644615630','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOS_Products','module',90,0),('ceb3044c-1b88-8b83-e036-6786440772b0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Users','module',90,0),('cec70716-93e7-fa23-201f-678644ac45cb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOS_Contracts','module',90,0),('cf82342d-1d0b-436c-9036-678644a436cc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOS_Products','module',90,0),('d028031c-f8c7-71ca-295b-6786449eab4a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Users','module',90,0),('d0d011c0-f4cf-5f8d-8d9e-678644d0a869','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOW_Processed','module',89,0),('d0feac51-fbff-497f-8c7a-678644edd670','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOS_Products','module',90,0),('d1976cde-b244-2f49-7699-6786444099eb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Users','module',90,0),('d2706be6-d35a-2209-9320-6786447624c8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOS_Products','module',90,0),('d27e2000-2c95-e61c-dca7-678644c99c1c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOW_Processed','module',90,0),('d2b1070c-eccf-39eb-c665-67864441f75f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','EmailMarketing','module',89,0),('d311539b-c53a-c401-5e63-678644090be8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Users','module',90,0),('d3c2ece6-0c85-b3d8-8b14-678644aff855','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Prospects','module',89,0),('d3e16566-624d-3acd-60cb-678644b7cecc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOS_Products','module',90,0),('d40cdf2e-4a2a-b735-6f0b-678644fda3fd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOW_Processed','module',90,0),('d4952964-158a-a5fc-7596-6786444c4327','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Users','module',90,0),('d55f349f-21ef-ee97-7082-678644676a07','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Prospects','module',90,0),('d5641667-e814-1fb5-3ab0-67864479c627','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOS_Products','module',90,0),('d589fad9-edc3-ee6c-56b8-678644615f1a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOW_Processed','module',90,0),('d5b04fe9-258d-84a0-4323-6786441e143d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOR_Scheduled_Reports','module',89,0),('d6099838-b6f4-348f-e761-6786448ffe04','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Users','module',90,0),('d6a7fab2-0804-b9b9-a4e6-678644a7710e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Calls_Reschedule','module',89,0),('d6e78a68-6b44-9aad-6e64-678644cbb398','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Prospects','module',90,0),('d6ef5530-5a7a-8edc-a034-678644ad850c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOS_Products','module',90,0),('d7137db1-e375-3dab-3d8a-6786441e2ac9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOW_Processed','module',90,0),('d7348280-de99-dc40-e9c1-678644f1c7ba','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOR_Scheduled_Reports','module',90,0),('d7758521-48af-fcfe-6466-678644a9cead','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Users','module',90,0),('d7d61035-b08e-fbfa-2790-678644c6acc7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Alerts','module',89,0),('d859b467-8cb8-370e-3e73-6786442df008','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Calls_Reschedule','module',90,0),('d88401bb-69f0-d23c-169a-678644cdd803','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Prospects','module',90,0),('d8a1069e-3929-6c0a-c183-6786445d46b2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOW_Processed','module',90,0),('d8c36331-f41b-165b-2915-678644da2fea','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOR_Scheduled_Reports','module',90,0),('d96b0ef4-7e83-3adb-afaa-678644e0cb03','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Alerts','module',90,0),('d9e6e3cc-a88f-77d1-3d9b-6786440c09a7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Calls_Reschedule','module',90,0),('da0f7a10-24ac-04d2-be2a-678644051031','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOW_Processed','module',90,0),('da15933d-be50-be7b-85e2-67864466911c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Prospects','module',90,0),('da415eb1-07a7-41d1-d1d3-678644fbcd3f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOR_Scheduled_Reports','module',90,0),('dafc0a2b-40c3-5591-2a1a-678644276374','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Alerts','module',90,0),('db72d410-51f5-ad63-220b-678644ed850e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Calls_Reschedule','module',90,0),('db880f62-edc4-1805-7fae-678644312a94','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOW_Processed','module',90,0),('dbaba7b6-2eb8-d194-d411-6786443efea2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Prospects','module',90,0),('dbbd32f3-de8d-a33f-bc09-678644fc0c92','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOR_Scheduled_Reports','module',90,0),('dc668fa6-743d-ca1f-5274-678644ddf95e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOP_Case_Events','module',89,0),('dc75c940-4915-fea5-c3df-67864459c5e6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Alerts','module',90,0),('dcfcb2b8-ae75-9323-2a9d-6786445d49f3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Calls_Reschedule','module',90,0),('dd10db3e-e5f5-3634-c074-678644eddf74','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Prospects','module',90,0),('dd495b04-b499-7083-6ae1-6786447d9b70','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOR_Scheduled_Reports','module',90,0),('ddf32d67-128c-9a43-acc2-67864401916a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Alerts','module',90,0),('ddfacbd5-a77b-5069-c4d1-67864499842e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOP_Case_Events','module',90,0),('de753e58-a590-1be6-2792-678644688a8b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Prospects','module',90,0),('de8fb969-d067-5976-8d9f-678644bce23b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Calls_Reschedule','module',90,0),('decaaa08-9672-516c-9b73-678644fb4b43','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOR_Scheduled_Reports','module',90,0),('df638806-23fd-3acc-536f-6786444ba845','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOP_Case_Events','module',90,0),('df6a8328-2121-be7b-f146-678644d17ba0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Alerts','module',90,0),('e08205a9-017a-256b-39de-678644b6a9fd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Calls_Reschedule','module',90,0),('e0a02f70-b3e2-8f59-8892-678644e7c8e8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOR_Scheduled_Reports','module',90,0),('e0c01083-d03c-aa51-aa35-678644f13b2d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','SurveyQuestionOptions','module',89,0),('e0e61aab-dd3e-a700-2a75-6786447f4fc4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Alerts','module',90,0),('e0e7096f-24c9-6adf-93f1-678644888465','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOP_Case_Events','module',90,0),('e22ec895-a751-8dbb-4f33-6786445bab62','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Calls_Reschedule','module',90,0),('e260d5ce-7dbb-e331-f638-678644134f6b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOP_Case_Events','module',90,0),('e26379c7-5e95-6d81-eeab-678644715262','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','SurveyQuestionOptions','module',90,0),('e276c64a-0df2-67e1-e72a-67864441d181','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Alerts','module',90,0),('e3d7d35a-517a-3b12-db23-678644d77812','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOP_Case_Events','module',90,0),('e3ec961d-38d0-0b49-d8a9-6786441beb1d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','SurveyQuestionOptions','module',90,0),('e47aa177-0ebe-968e-063d-6786445669b6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Accounts','module',89,0),('e53d243a-1911-d722-68d0-6786443fc170','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOP_Case_Events','module',90,0),('e58977d5-e437-81e6-df68-678644c9cc70','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','SurveyQuestionOptions','module',90,0),('e60843b7-3889-77b2-2281-67864423f231','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Accounts','module',90,0),('e6a2ee0b-4b84-8de2-f8bc-678644b655e8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOP_Case_Events','module',90,0),('e70e88bd-63a2-836d-cf49-6786444c091d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','SurveyQuestionOptions','module',90,0),('e7e94e73-b09c-0d1f-4c77-6786446c40b5','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Accounts','module',90,0),('e856da02-5294-d7ba-ec61-678644884fe0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOK_Knowledge_Base_Categories','module',89,0),('e88e2bb7-f3bf-3c9f-a038-6786448d2991','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','SurveyQuestionOptions','module',90,0),('e91e08f1-c24a-d7e5-128b-6786449bd26b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOS_Contracts','module',90,0),('e967fe85-8e5f-6da4-22c1-678644fb5f42','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Accounts','module',90,0),('e9fa098a-d045-9806-8c3c-6786440ac6fa','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOK_Knowledge_Base_Categories','module',90,0),('ea2d6192-3a6b-197d-6f98-6786440ef54e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','SurveyQuestionOptions','module',90,0),('ead61e40-d955-4f6d-f8bd-678644e24db6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Accounts','module',90,0),('eb6c3552-6782-bab4-15bc-67864475e424','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOK_Knowledge_Base_Categories','module',90,0),('ebaba765-310e-54cc-6719-6786441cb19c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','SurveyQuestionOptions','module',90,0),('ebe608f5-3b2c-6c53-ca5a-6786444589a5','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','EmailMarketing','module',90,0),('ec3c1da5-7777-06f4-26a1-678644fbfdc8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Accounts','module',90,0),('ece4496e-6f37-7d83-d3ea-6786441340f9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOK_Knowledge_Base_Categories','module',90,0),('ed9b1820-b8ad-2ad0-9a58-678644c93629','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Accounts','module',90,0),('ede4722e-b2a0-862f-08e5-6786449df86a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Emails','module',89,0),('ee589bc6-6266-a294-2322-6786449083bb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOK_Knowledge_Base_Categories','module',90,0),('ef006b0f-c851-a113-d962-6786448d3608','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Accounts','module',90,0),('ef7702b4-f2ac-4864-ae8e-678644a48fc1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Emails','module',90,0),('f00954f1-b2e7-81a9-8102-67864433a16d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOK_Knowledge_Base_Categories','module',90,0),('f0e211c9-7f27-8c04-869c-6786447d52ea','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Emails','module',90,0),('f18c3f46-16d0-3d34-7bb3-6786443f1bbf','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOK_Knowledge_Base_Categories','module',90,0),('f2619a5b-0f92-d80b-6799-678644a0ebfd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Emails','module',90,0),('f2f42730-e728-73f8-498d-6786443b1236','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOK_Knowledge_Base_Categories','module',90,0),('f3dae34c-6b24-101f-c6dc-678644e59296','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Emails','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
INSERT INTO `acl_roles` VALUES ('78eee375-0419-4592-6f37-685ccb3451a7','2025-06-26 04:25:02','2025-06-26 04:25:02','1','1','test.php','',0),('e85b0bae-3a7f-926c-61c2-685cc5e244fe','2025-06-26 03:59:48','2025-06-26 03:59:48','1','1','сотрудники','ааа',0);
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
INSERT INTO `acl_roles_actions` VALUES ('105f19a1-c409-b829-21c3-685cc60f090e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a003941d-9f7d-8f9e-8665-678644901db4',0,'2025-06-26 04:36:51',0),('10e1366d-36ec-9c8d-d914-685cc64e60b0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5f61828b-231b-b0d6-44af-678644b328e7',0,'2025-06-26 04:36:51',0),('10e2890b-a739-bcaf-b83d-685cc65ff5e9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6b45ce51-5839-1829-7d73-678644e46f67',0,'2025-06-26 04:36:51',0),('11d7d237-6893-a919-c81a-685cc6752c33','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a432c2e5-5eba-94b7-9478-67864425db49',0,'2025-06-26 04:36:51',0),('1269b0c5-d125-0f67-bc26-685cc62a5f95','e85b0bae-3a7f-926c-61c2-685cc5e244fe','66bfc61a-269b-b1b0-e842-678644b385fd',0,'2025-06-26 04:36:51',0),('13497f85-70f6-1d83-959e-685cc62ba3f2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a2cdf36d-1efc-49fe-52b9-678644fd21a3',0,'2025-06-26 04:36:51',0),('1389cd2e-c9fe-4467-555c-685cc653349a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6e486ad3-e169-1a19-3533-678644774ea4',0,'2025-06-26 04:36:51',0),('13d20d0c-17cb-eb88-f699-685cc61aba29','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5b00c00d-81c6-4b1c-6924-678644800843',0,'2025-06-26 04:36:51',0),('14ca3182-cbcb-a181-8f63-685cc6a9a56a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9e8e9adb-c6d9-3ba1-1dde-678644be6887',0,'2025-06-26 04:36:51',0),('15015d84-7a0f-fe7d-5087-685cc6477523','e85b0bae-3a7f-926c-61c2-685cc5e244fe','652c2d1d-c450-4bb9-7714-678644a29000',0,'2025-06-26 04:36:51',0),('1601cbec-d70c-79bc-586a-685cc61f6693','e85b0bae-3a7f-926c-61c2-685cc5e244fe','623aa5e6-1be3-18b1-96c5-678644907e68',0,'2025-06-26 04:36:51',0),('164929de-6fd3-63ba-8cd9-685cc659da00','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a5a40cb8-fb6d-5aac-ebca-678644a7820f',0,'2025-06-26 04:36:51',0),('167d122e-a5b5-538f-535b-685cc6d0d2c9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a1a1f635-34a2-27ce-71fd-678644494739',-98,'2025-06-26 04:36:51',0),('17b184ff-2a15-4bf7-3ba8-685cc6b66c68','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9cf453af-3229-a954-6020-67864430a3cf',0,'2025-06-26 04:36:51',0),('17ce04e3-bc39-cecc-3a03-685cc606bb71','e85b0bae-3a7f-926c-61c2-685cc5e244fe','c0a00dd4-fe8a-6e6a-e1f4-67864488c213',0,'2025-06-26 04:36:51',0),('17f480bc-f8c9-6dc6-cad7-685cc61047c8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a79c891a-e940-ac55-0097-6786449b1041',0,'2025-06-26 04:36:51',0),('18e824e2-37a0-79ec-a3a9-685cc6cd3107','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5962f3c4-1c7c-9a4e-dbe1-67864434551b',0,'2025-06-26 04:36:51',0),('1972cfa3-8965-f34e-6ae7-685cc645116b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a62d0642-f91d-8f60-b206-678644c12a49',0,'2025-06-26 04:36:51',0),('19a635ea-3a18-0891-4c0d-685cc6862665','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e0c01083-d03c-aa51-aa35-678644f13b2d',-98,'2025-06-26 04:36:51',0),('1b1a9e26-175c-bbd6-8727-685cc6d7dab2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e70e88bd-63a2-836d-cf49-6786444c091d',0,'2025-06-26 04:36:51',0),('1b213198-c9ae-76a5-fdb1-685cc6cf0748','e85b0bae-3a7f-926c-61c2-685cc5e244fe','8ef63f77-0684-fcd3-ac87-678644f42c6a',-98,'2025-06-26 04:36:51',0),('1b2276e0-3f77-7a11-87d5-685cc64f284c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','aa9741be-f5fd-6e02-f0c3-678644d62186',0,'2025-06-26 04:36:51',0),('1c901187-101d-3501-73f4-685cc605be88','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e58977d5-e437-81e6-df68-678644c9cc70',0,'2025-06-26 04:36:51',0),('1c97ae05-5263-6897-08a6-685cc6da11e0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a9192784-b61e-7d49-fd37-678644b17820',0,'2025-06-26 04:36:51',0),('1e0712d6-2cb4-ef0f-d295-685cc6584cc7','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ea2d6192-3a6b-197d-6f98-6786440ef54e',0,'2025-06-26 04:36:51',0),('1e15e6e5-1a7e-957a-9195-685cc646cc4d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a4b6b0e7-7941-c02f-1d69-678644e235b9',0,'2025-06-26 04:36:51',0),('1e4dfe8c-17d2-48f1-969e-685cc6e43bce','e85b0bae-3a7f-926c-61c2-685cc5e244fe','97362fbe-6958-0e0b-a948-678644407513',0,'2025-06-26 04:36:51',0),('1f7906e1-ddf3-eda0-a045-685cc60f744b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','dbbd32f3-de8d-a33f-bc09-678644fc0c92',0,'2025-06-26 04:36:51',0),('1f7fc9d9-139d-0b28-1b60-685cc6a35048','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ac28a331-d915-10b5-6ac6-678644c86169',0,'2025-06-26 04:36:51',0),('1f8890e5-d8ff-cfc6-7f25-685cc6d78ef1','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e88e2bb7-f3bf-3c9f-a038-6786448d2991',0,'2025-06-26 04:36:51',0),('20f762fb-cc71-fb8f-88bd-685cc65fadb0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a33e93be-4f55-a225-286a-678644b1ecbd',0,'2025-06-26 04:36:51',0),('20fe1f7e-c79f-1f47-5860-685cc68fd171','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e3ec961d-38d0-0b49-d8a9-6786441beb1d',0,'2025-06-26 04:36:51',0),('21724486-2872-3809-44a2-685cc6a03ad0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','95b97000-a7bb-9c5b-dc28-67864406a476',0,'2025-06-26 04:36:51',0),('2239bc9d-9c1c-65a7-5138-685cc673f5d3','e85b0bae-3a7f-926c-61c2-685cc5e244fe','739d678b-0cc4-2715-e9bf-6786448d3cb1',-98,'2025-06-26 04:36:51',0),('22715628-41bb-4f08-5270-685cc67051d1','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ebaba765-310e-54cc-6719-6786441cb19c',0,'2025-06-26 04:36:51',0),('23ec6dd6-2eb0-1602-35d8-685cc67dc4dd','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e26379c7-5e95-6d81-eeab-678644715262',0,'2025-06-26 04:36:51',0),('24642fd3-c891-0795-b6fd-685cc64ad9dd','e85b0bae-3a7f-926c-61c2-685cc5e244fe','79c2cdc4-3057-9023-c287-678644ce6439',0,'2025-06-26 04:36:51',0),('249fc726-ad93-9286-27e5-685cc6585473','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9b4f18f8-e91c-5f77-de6b-678644c8111b',0,'2025-06-26 04:36:51',0),('25998404-9749-b4f2-b729-685cc6eca641','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2311e5f9-1d88-bb2e-393f-6786443b9621',-98,'2025-06-26 04:36:51',0),('25d82de2-fd91-0d38-aeaf-685cc6c954d2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','783810b8-5756-8a19-7649-678644e36aaf',0,'2025-06-26 04:36:51',0),('2718c46c-cf2c-ea9b-d4ae-685cc61c51a8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','29da0a4b-1b34-58c8-4f50-678644ee5af2',0,'2025-06-26 04:36:51',0),('27320477-a949-6a30-31fc-685cc6c96760','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1fa4a52a-e071-9acb-3cdb-67864488f8e3',0,'2025-06-26 04:36:51',0),('27639668-2be9-7f2d-ddc8-685cc6980a4b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','7cba1251-10a2-28f6-fb88-678644cb5968',0,'2025-06-26 04:36:51',0),('2793de0a-77f9-6e91-b1e3-685cc61dc56c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','99ba6ccb-38bd-0e45-cb03-67864464aba9',0,'2025-06-26 04:36:51',0),('288f0816-d07b-627a-fc15-685cc68421c5','e85b0bae-3a7f-926c-61c2-685cc5e244fe','28521e5d-235b-9313-662c-678644f411db',0,'2025-06-26 04:36:51',0),('28cf8cae-df72-a275-16a8-685cc6bbfa79','e85b0bae-3a7f-926c-61c2-685cc5e244fe','7b448f64-503e-ba9a-1e8a-67864461816b',0,'2025-06-26 04:36:51',0),('2a02963a-e363-cdb2-d5a0-685cc61b837c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2c95c204-cb11-7e9e-ebfe-678644cddea1',0,'2025-06-26 04:36:51',0),('2a41dfca-9e89-a3c6-26bb-685cc6747a11','e85b0bae-3a7f-926c-61c2-685cc5e244fe','76b60482-1fb0-5c2b-2207-6786447244da',0,'2025-06-26 04:36:51',0),('2a8a0f1d-97da-f0d0-f5c1-685cc6e9cc21','e85b0bae-3a7f-926c-61c2-685cc5e244fe','942d653e-b612-4c36-5391-678644ed9ff6',0,'2025-06-26 04:36:51',0),('2b774c38-94a6-166c-a3ff-685cc6fc6f81','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2b382010-0928-27ee-c476-678644cef48c',0,'2025-06-26 04:36:51',0),('2bb51e3b-44e3-dd81-d4d9-685cc699a399','e85b0bae-3a7f-926c-61c2-685cc5e244fe','7e398b54-21a6-2721-1733-6786442ed628',0,'2025-06-26 04:36:51',0),('2ceca66a-362d-9736-742e-685cc626c253','e85b0bae-3a7f-926c-61c2-685cc5e244fe','26ddabf9-3142-8d00-cbea-6786441c395b',0,'2025-06-26 04:36:51',0),('2d2cb6ac-8deb-6011-15c7-685cc64656bb','e85b0bae-3a7f-926c-61c2-685cc5e244fe','753979a8-f3fa-edbb-604c-678644d93c46',0,'2025-06-26 04:36:51',0),('2d6b1f0d-1edf-3518-8896-685cc68d873b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9ce741c8-3a03-a370-6476-67864485cec1',0,'2025-06-26 04:36:51',0),('2f20f2ca-72c3-450e-2176-685cc63691e5','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2e0eaca1-6941-589a-6a8f-678644553ec9',0,'2025-06-26 04:36:51',0),('2f470645-e67d-c7bc-f1be-685cc6571e3d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','c546392b-a461-2de7-448f-6786448ab83e',0,'2025-06-26 04:36:51',0),('305714c5-63d0-45d7-07c5-685cc69e7ba4','e85b0bae-3a7f-926c-61c2-685cc5e244fe','91a125c2-8c24-918f-65e8-678644ea8ba4',0,'2025-06-26 04:36:51',0),('30db43da-e392-b22a-4369-685cc678d24a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','25416555-cb44-4407-4e3b-678644ece3bc',0,'2025-06-26 04:36:51',0),('325bd0f6-c687-55d9-cd57-685cc6c9a1bb','e85b0bae-3a7f-926c-61c2-685cc5e244fe','51df1c1d-bb12-2539-d018-67864499e969',-98,'2025-06-26 04:36:51',0),('32ec04ae-38ec-5994-0403-685cc611982c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','da415eb1-07a7-41d1-d1d3-678644fbcd3f',0,'2025-06-26 04:36:51',0),('334e94bd-2333-00d4-1979-685cc620f34b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','bec6fec8-4a55-03c1-9732-678644ebaf50',-98,'2025-06-26 04:36:51',0),('33d5e858-ceb2-f4de-2ffa-685cc6829848','e85b0bae-3a7f-926c-61c2-685cc5e244fe','57cdbfda-54da-9255-a94e-6786444888f2',0,'2025-06-26 04:36:51',0),('3602e11c-e73e-5084-aab8-685cc6724825','e85b0bae-3a7f-926c-61c2-685cc5e244fe','56500711-b97d-7568-38e2-678644dabef3',0,'2025-06-26 04:36:51',0),('3738efee-ff6e-9706-7734-685cc6d29061','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5ac0eeba-7c66-68c0-c350-67864414e1f2',0,'2025-06-26 04:36:51',0),('37702de5-68c0-816a-fc07-685cc67e65cd','e85b0bae-3a7f-926c-61c2-685cc5e244fe','c4c0a957-2896-7713-92a7-6786442c8e80',0,'2025-06-26 04:36:51',0),('387309dc-1c7c-3200-01d4-685cc61345c0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5944319e-cd26-5ecb-612e-67864445d2f6',0,'2025-06-26 04:36:51',0),('38e3b1f4-5f0b-bd61-cbde-685cc63a25c9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','c357b65a-4cb6-f608-3192-67864498aa3d',0,'2025-06-26 04:36:51',0),('39aedd5e-3bf6-90b3-c6b2-685cc62f6a8a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','54e80ee1-e535-d97a-33b8-678644ae21de',0,'2025-06-26 04:36:51',0),('3a5e49cd-a4a3-1258-14bf-685cc6b3f5e8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','c7a8b52e-8cdb-9b5b-8a85-6786448b3cba',0,'2025-06-26 04:36:51',0),('3b193d79-2750-c181-a026-685cc607b9c8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5c3afb72-bf96-132b-9a91-67864481880b',0,'2025-06-26 04:36:51',0),('3bd8f179-1254-7bb2-8b42-685cc61dded8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','c6325b8e-f95c-6c0f-2f8f-678644b09ae1',0,'2025-06-26 04:36:51',0),('3cd28b6a-8d4c-b9b8-5873-685cc625981b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5375cf50-6b60-e2c8-ad2c-6786447937c3',0,'2025-06-26 04:36:51',0),('3d4ca66d-0453-1b2f-cac6-685cc66ee434','e85b0bae-3a7f-926c-61c2-685cc5e244fe','c1ea5b1c-32fa-5899-4146-678644ef6d93',0,'2025-06-26 04:36:51',0),('3e5b3f9e-5504-ca61-ea25-685cc6badf90','e85b0bae-3a7f-926c-61c2-685cc5e244fe','3cf97575-b89b-99d4-9caa-67864463b2c8',89,'2025-06-26 04:36:51',0),('3e9e09e1-e171-aae6-13b5-685cc68ea0da','e85b0bae-3a7f-926c-61c2-685cc5e244fe','57bea2f5-9406-4dec-521f-678644af17fb',-98,'2025-06-26 04:36:51',0),('3ec1015c-7176-5dab-dea0-685cc6cdb68a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','c9260084-cd75-e19e-1168-6786440fceab',0,'2025-06-26 04:36:51',0),('3ffe891a-df0d-309e-c332-685cc669edab','e85b0bae-3a7f-926c-61c2-685cc5e244fe','42af5d15-a55e-ff1a-aba6-678644c93851',0,'2025-06-26 04:36:51',0),('4036def9-a0d4-83b8-067b-685cc69da228','e85b0bae-3a7f-926c-61c2-685cc5e244fe','c0552890-446b-29f9-3500-67864439956d',0,'2025-06-26 04:36:51',0),('417d3ed2-fc66-eaf5-aede-685cc6037365','e85b0bae-3a7f-926c-61c2-685cc5e244fe','41550cd4-9022-0514-8d24-678644514cd5',0,'2025-06-26 04:36:51',0),('41a9aea6-e3a2-efc4-3716-685cc60af297','e85b0bae-3a7f-926c-61c2-685cc5e244fe','202e3a09-9dc0-79c1-3cb2-678644f2dbcb',-98,'2025-06-26 04:36:51',0),('43020de2-cee6-08bd-90e4-685cc6a70c53','e85b0bae-3a7f-926c-61c2-685cc5e244fe','45754602-8965-f136-40c0-678644d718e0',0,'2025-06-26 04:36:51',0),('432988de-bb8e-d3c1-7ea4-685cc6bbf064','e85b0bae-3a7f-926c-61c2-685cc5e244fe','26743825-e603-a1da-c3de-6786446e28a3',0,'2025-06-26 04:36:51',0),('4464a708-3e10-26df-ae19-685cc6853114','e85b0bae-3a7f-926c-61c2-685cc5e244fe','440e6604-c2a9-b8e7-3e70-678644e02612',0,'2025-06-26 04:36:51',0),('44a44581-b0ff-1e75-c0ba-685cc6d37cc6','e85b0bae-3a7f-926c-61c2-685cc5e244fe','24f69fc9-e139-304c-fffa-678644dc71f2',0,'2025-06-26 04:36:51',0),('4618649b-34ba-8507-4393-685cc61f3cb0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','298e77cc-bb1d-5338-545f-6786448b87a1',0,'2025-06-26 04:36:51',0),('4645b094-e35b-3baa-e21d-685cc64fd74f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','3ff6ef71-b907-6b4f-f9e9-678644237102',0,'2025-06-26 04:36:51',0),('474506fc-6297-998f-7f6c-685cc6db8cf5','e85b0bae-3a7f-926c-61c2-685cc5e244fe','c3bf1b27-2226-9313-821b-678644e900dd',0,'2025-06-26 04:36:51',0),('478ac3ce-4e9d-1b60-ac92-685cc64f9d52','e85b0bae-3a7f-926c-61c2-685cc5e244fe','280b3b63-26ad-217f-7245-678644804183',0,'2025-06-26 04:36:51',0),('484eefbe-03d0-e52b-6e66-685cc6b48707','e85b0bae-3a7f-926c-61c2-685cc5e244fe','46ddd0e9-d248-39cd-a131-678644268622',0,'2025-06-26 04:36:51',0),('49d323eb-8b96-9f4b-5b27-685cc6fb442f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','3e7fa7c6-4175-0543-c937-678644d2be6c',0,'2025-06-26 04:36:51',0),('4a43434d-74bd-a557-1277-685cc685616c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2362a018-c0ed-f2c8-6fb8-678644c225dc',0,'2025-06-26 04:36:51',0),('4a810f86-e78b-bd65-fd75-685cc6efe08d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','decaaa08-9672-516c-9b73-678644fb4b43',0,'2025-06-26 04:36:51',0),('4b367347-df3c-29b9-c783-685cc601025c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','137b3aa7-154d-f8b7-c1ef-6786447629b3',89,'2025-06-26 04:36:51',0),('4b7b1f0a-118c-80a7-b86d-685cc64c3e85','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2b146800-5037-7b14-f722-67864423ff99',0,'2025-06-26 04:36:51',0),('4caadba0-2cef-ef9b-95c4-685cc6d929ab','e85b0bae-3a7f-926c-61c2-685cc5e244fe','19921563-c084-eb9e-38d5-6786449f6a9c',0,'2025-06-26 04:36:51',0),('4cb0eb21-92d2-73aa-4f46-685cc66ce225','e85b0bae-3a7f-926c-61c2-685cc5e244fe','21d26e9f-0373-4bc9-9dc6-678644a960c8',0,'2025-06-26 04:36:51',0),('4df9efb5-5d41-f150-0e0b-685cc65bd09b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e856da02-5294-d7ba-ec61-678644884fe0',-98,'2025-06-26 04:36:51',0),('4ee65b45-85d7-002e-69f1-685cc6c12638','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1831e5f8-843f-475d-be24-678644a3bca8',0,'2025-06-26 04:36:51',0),('4feeb74c-8899-5876-afd2-685cc6177d22','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ee589bc6-6266-a294-2322-6786449083bb',0,'2025-06-26 04:36:51',0),('503ec672-e87d-8a23-ff72-685cc6a163d2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','access',-98,'2025-06-26 04:36:51',0),('5057c23c-ed0d-ab32-dc13-685cc669ab95','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1c68fc75-971c-ef60-2e05-678644984935',0,'2025-06-26 04:36:51',0),('514d4b44-4ebb-980b-55da-685cc62eb5c4','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ece4496e-6f37-7d83-d3ea-6786441340f9',0,'2025-06-26 04:36:51',0),('51cb4dc9-adf8-ee37-bc63-685cc6114fbf','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1af8119a-4452-e0c5-3260-6786441029f9',0,'2025-06-26 04:36:51',0),('51cbc0c4-39b1-33ed-2c93-685cc64e8805','e85b0bae-3a7f-926c-61c2-685cc5e244fe','delete',0,'2025-06-26 04:36:51',0),('5321b9f4-c482-7cae-71d8-685cc6abe7bb','e85b0bae-3a7f-926c-61c2-685cc5e244fe','f18c3f46-16d0-3d34-7bb3-6786443f1bbf',0,'2025-06-26 04:36:51',0),('53419722-cdd9-f3b6-6191-685cc69677d9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','16c75c51-c26f-a3eb-af7f-678644a7b56e',0,'2025-06-26 04:36:51',0),('53c8d7f8-8fa3-a99c-1835-685cc6ab5c60','e85b0bae-3a7f-926c-61c2-685cc5e244fe','edit',0,'2025-06-26 04:36:51',0),('54c0c62d-6067-9fea-6001-685cc61808f6','e85b0bae-3a7f-926c-61c2-685cc5e244fe','f00954f1-b2e7-81a9-8102-67864433a16d',0,'2025-06-26 04:36:51',0),('54c255c9-76d3-f46a-a4d0-685cc606c6cf','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1dd29e26-3051-cab0-1b57-67864420676d',0,'2025-06-26 04:36:51',0),('55b03779-0f15-6e0f-3367-685cc6e24667','e85b0bae-3a7f-926c-61c2-685cc5e244fe','export',0,'2025-06-26 04:36:51',0),('563bba68-2837-bc5e-ddc3-685cc6ba7c46','e85b0bae-3a7f-926c-61c2-685cc5e244fe','eb6c3552-6782-bab4-15bc-67864475e424',0,'2025-06-26 04:36:51',0),('5641089c-f0bb-5ce6-d984-685cc6f4afc7','e85b0bae-3a7f-926c-61c2-685cc5e244fe','15460b97-9ecf-b88d-0dfa-678644d38eaf',0,'2025-06-26 04:36:51',0),('576d2012-ee4d-efa6-cae0-685cc6c0d4b7','e85b0bae-3a7f-926c-61c2-685cc5e244fe','import',0,'2025-06-26 04:36:51',0),('576f44ae-79e0-2273-be21-685cc69f2d3c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a0035c59-42fc-68ab-1e36-678644fcb638',-98,'2025-06-26 04:36:51',0),('57ec9bdb-1d9a-4a33-fcf2-685cc68d7e25','e85b0bae-3a7f-926c-61c2-685cc5e244fe','f2f42730-e728-73f8-498d-6786443b1236',0,'2025-06-26 04:36:51',0),('58e065b0-0066-964b-de60-685cc66d8fe0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a5ff5f89-818f-67b9-3c0c-678644179da5',0,'2025-06-26 04:36:51',0),('592ea52a-eb4e-e48f-5cd4-685cc6e8267d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','list',0,'2025-06-26 04:36:51',0),('59611a16-e827-6978-9c71-685cc6392c15','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e9fa098a-d045-9806-8c3c-6786440ac6fa',0,'2025-06-26 04:36:51',0),('5a57f01c-160b-5038-1569-685cc60b76ac','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a4989e9c-522e-85ba-1cf8-67864421bb55',0,'2025-06-26 04:36:51',0),('5ad29f1d-8160-243e-0a74-685cc6de21ff','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9a037c13-54cd-9e8e-29f6-6786446f7b42',-98,'2025-06-26 04:36:51',0),('5ad3f3ab-7cb4-e269-c173-685cc680fe79','e85b0bae-3a7f-926c-61c2-685cc5e244fe','massupdate',0,'2025-06-26 04:36:51',0),('5bdec860-c4e2-e7e1-595f-685cc69974b4','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a8fe0e58-6726-7542-38b9-678644af4893',0,'2025-06-26 04:36:51',0),('5c493b18-6c47-a915-4e6e-685cc684dea4','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a0551714-6127-12dd-3e77-6786447a68d9',0,'2025-06-26 04:36:51',0),('5c82f6c9-7d17-1e57-f5ad-685cc63f665f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','view',0,'2025-06-26 04:36:51',0),('5dbcf49d-f8e5-6531-d87a-685cc6c0935b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9ed13268-f70f-8b42-4aca-67864470ce4f',0,'2025-06-26 04:36:51',0),('5dc386bb-0db2-1035-3154-685cc6b69015','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a77b307c-afcb-54ed-e84b-678644face12',0,'2025-06-26 04:36:51',0),('5e04e55b-4d14-6a80-9f71-685cc66e7130','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ede4722e-b2a0-862f-08e5-6786449df86a',-98,'2025-06-26 04:36:51',0),('5f33df92-ac1c-4a41-2d47-685cc6f71620','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a392f492-f119-c0bc-9329-6786445c7eed',0,'2025-06-26 04:36:51',0),('5f37bf62-38ac-61bb-9e88-685cc63063f5','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a30fe8fd-b1c8-3cf0-3649-6786441cbe18',0,'2025-06-26 04:36:51',0),('5f774cf0-42c6-660b-7522-685cc6cc5084','e85b0bae-3a7f-926c-61c2-685cc5e244fe','f3dae34c-6b24-101f-c6dc-678644e59296',-99,'2025-06-26 04:36:51',0),('60adcc99-dcfe-fc4b-b397-685cc6a20de8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','aa87acf7-356c-3c34-5732-678644f26228',0,'2025-06-26 04:36:51',0),('60c44f32-540e-a833-50a4-685cc60ec040','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a1eb487c-16a5-e746-48e8-67864441c62d',0,'2025-06-26 04:36:51',0),('60e91529-fd6d-afaa-b856-685cc6ca9f58','e85b0bae-3a7f-926c-61c2-685cc5e244fe','f2619a5b-0f92-d80b-6799-678644a0ebfd',-99,'2025-06-26 04:36:51',0),('622e6876-b665-b7fe-5163-685cc671750e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9d5ce66b-585c-4a65-9189-6786448ffd3e',0,'2025-06-26 04:36:51',0),('6231e907-9186-d9a2-7970-685cc686785d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a19d92bd-ade3-c268-e6c7-67864482e069',0,'2025-06-26 04:36:51',0),('625f29e7-fa91-4826-4d36-685cc6ff3f9e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2b560515-ca7c-4e9a-add4-6786447d840d',-99,'2025-06-26 04:36:51',0),('63a7e089-7fb0-3065-bb13-685cc6f9805f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d2b1070c-eccf-39eb-c665-67864441f75f',-98,'2025-06-26 04:36:51',0),('63dbb5f3-6806-f539-c9e5-685cc6d03469','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a5258b87-aa05-aa0c-de0b-678644cc330f',0,'2025-06-26 04:36:51',0),('63df8e61-9544-03fb-65d6-685cc6b47d67','e85b0bae-3a7f-926c-61c2-685cc5e244fe','13740ba2-f22f-e835-6494-6786449815f2',-99,'2025-06-26 04:36:51',0),('6515bc11-3617-dde3-c944-685cc6a18daf','e85b0bae-3a7f-926c-61c2-685cc5e244fe','130dc6e8-3080-675c-5100-6786442e3cd2',0,'2025-06-26 04:36:51',0),('6551a436-2b2a-a113-4db6-685cc618094e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9bb19648-c631-f722-eea4-678644d39dcc',0,'2025-06-26 04:36:51',0),('6557fd34-5f5e-0276-8728-685cc6438b94','e85b0bae-3a7f-926c-61c2-685cc5e244fe','f0e211c9-7f27-8c04-869c-6786447d52ea',-99,'2025-06-26 04:36:51',0),('668bfc0a-987f-31b8-1aca-685cc6430e6b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','11a7821f-2564-1501-b9bd-678644d45ecd',0,'2025-06-26 04:36:51',0),('668d04de-d05d-9397-0929-685cc6dddb46','e85b0bae-3a7f-926c-61c2-685cc5e244fe','41f30098-6017-8477-9315-6786445ce5be',-99,'2025-06-26 04:36:51',0),('66c803fa-4c50-8b93-3737-685cc648e870','e85b0bae-3a7f-926c-61c2-685cc5e244fe','aa36477f-9133-9fad-39fe-67864406d620',-98,'2025-06-26 04:36:51',0),('6801ef5d-3e41-f938-2f76-685cc667dd40','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ef7702b4-f2ac-4864-ae8e-678644a48fc1',-99,'2025-06-26 04:36:51',0),('680346c3-59d0-4ef9-62a5-685cc6d348b8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','15fd23d3-0d0b-a97a-833c-67864471776e',0,'2025-06-26 04:36:51',0),('683e6f75-de43-9622-b2d7-685cc607ce48','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b0570fa0-f0a0-c751-539a-678644a2e5fb',0,'2025-06-26 04:36:51',0),('69387cf5-1436-92ea-0ad7-685cc6b7b6d2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1484b9e2-23e4-acaf-f60e-678644127e41',0,'2025-06-26 04:36:51',0),('6940d7c5-4ad3-1cfa-24be-685cc67ecfa0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6b49ea01-0691-1316-2f23-678644917106',-98,'2025-06-26 04:36:51',0),('69bddea6-561f-6975-1019-685cc6f604d0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','aee5f7a8-0635-f53a-a491-678644920a5b',0,'2025-06-26 04:36:51',0),('6ab0f159-727c-af83-6321-685cc6c49044','e85b0bae-3a7f-926c-61c2-685cc5e244fe','7156ad13-ff04-a298-cfca-678644dcaa1c',-99,'2025-06-26 04:36:51',0),('6ab1f7f2-ea2c-0fc0-4358-685cc6e54cf2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','103943be-0fd6-7919-0fe0-678644a99b7b',0,'2025-06-26 04:36:51',0),('6b32e1ec-3895-07b7-0894-685cc61f8f5e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b3749e42-e2e3-afd3-dd7e-6786444a0e51',0,'2025-06-26 04:36:51',0),('6bea9613-6959-f873-398b-685cc6a7d0d9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1773f0a8-0193-f3e4-5504-678644769b72',0,'2025-06-26 04:36:51',0),('6c270717-6611-8269-2fea-685cc6019192','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6feb85c8-9955-e7c3-7543-678644b335d6',-99,'2025-06-26 04:36:51',0),('6ca87d51-9b90-24f2-70fb-685cc6cb31f9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b207eeba-4c63-04ac-9849-6786440a69a3',0,'2025-06-26 04:36:51',0),('6d5c0521-81be-59d5-0a1f-685cc67dfc35','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5df7c5ad-d42c-c8b2-efb3-678644227cfa',0,'2025-06-26 04:36:51',0),('6da4e020-d7db-cd22-fd81-685cc64f4649','e85b0bae-3a7f-926c-61c2-685cc5e244fe','744e9f3d-e5e5-a754-9512-67864480d428',-99,'2025-06-26 04:36:51',0),('6de40729-043c-7957-d371-685cc6d852b0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','bf28823f-aeac-9a69-c59b-678644a8031d',0,'2025-06-26 04:36:51',0),('6e1f3448-b344-c5de-4dd1-685cc6d8f0b9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ebe608f5-3b2c-6c53-ca5a-6786444589a5',0,'2025-06-26 04:36:51',0),('6e27a360-48a9-2758-47ab-685cc6a7a850','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ad6ee04c-d193-e442-9201-678644f7660c',0,'2025-06-26 04:36:51',0),('6f16b165-248f-0a31-6315-685cc66df99c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','72d409f9-1832-c760-1869-678644edd2a3',-99,'2025-06-26 04:36:51',0),('6f5106a7-1e45-0bc8-502f-685cc6beba36','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b4f35ace-d280-9861-8ec1-678644956649',0,'2025-06-26 04:36:51',0),('6f9544e9-13e0-a6cd-7fc8-685cc63501d8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','82a05889-f872-1203-4f8d-678644de6a36',-98,'2025-06-26 04:36:51',0),('708da07f-5f13-46bc-762b-685cc6ccda43','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6e7b1b58-0735-aeef-7884-678644cfd29e',-99,'2025-06-26 04:36:51',0),('70c9a15a-7b59-d15a-fb76-685cc64c7551','e85b0bae-3a7f-926c-61c2-685cc5e244fe','abdc7880-4e3a-ad35-c03c-678644bca371',0,'2025-06-26 04:36:51',0),('71098c01-781e-12bd-c635-685cc6d58ddc','e85b0bae-3a7f-926c-61c2-685cc5e244fe','890052b7-8cd5-e424-6095-678644576df1',0,'2025-06-26 04:36:51',0),('71bf0a6d-1439-b6af-bd96-685cc629eb6e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','dd495b04-b499-7083-6ae1-6786447d9b70',0,'2025-06-26 04:36:51',0),('721010d3-3ae5-02b6-4ff8-685cc6fab809','e85b0bae-3a7f-926c-61c2-685cc5e244fe','75c5d4ce-37c4-e971-e716-67864425c765',-99,'2025-06-26 04:36:51',0),('724dda0a-537e-4de1-8201-685cc6611100','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a188ea69-a80a-492c-04ba-678644bb4d6c',-98,'2025-06-26 04:36:51',0),('728c4d90-cf04-abab-cb32-685cc6d4323a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','87860bb0-0f00-9525-6556-678644b6af9c',0,'2025-06-26 04:36:51',0),('737b87b5-a71f-7b17-97a3-685cc64a33ef','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6cf34adb-f4be-be6c-72cc-67864484fc38',-99,'2025-06-26 04:36:51',0),('73be188e-8c6a-4947-3cce-685cc6535132','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a7b9eda3-6e2e-eeeb-7f7d-678644fc849b',0,'2025-06-26 04:36:51',0),('740586f7-caae-57ed-d382-685cc6ae254d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','8bfd5624-ed6e-0069-3102-67864459a7ab',0,'2025-06-26 04:36:51',0),('74f95a28-667a-03c2-beab-685cc67e0403','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d3c2ece6-0c85-b3d8-8b14-678644aff855',-98,'2025-06-26 04:36:51',0),('7538c843-8124-741b-39ca-685cc6fa30b0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a62e3c3f-5199-bc33-9987-678644874ef5',0,'2025-06-26 04:36:51',0),('7573262e-0e1f-539c-942e-685cc6f9f8a3','e85b0bae-3a7f-926c-61c2-685cc5e244fe','8a7ff652-0648-ee1e-2841-678644d31505',0,'2025-06-26 04:36:51',0),('766efc20-b34d-8e98-eca5-685cc6494761','e85b0bae-3a7f-926c-61c2-685cc5e244fe','da15933d-be50-be7b-85e2-67864466911c',-99,'2025-06-26 04:36:51',0),('76a9e470-cbc2-66aa-0093-685cc6fa84a4','e85b0bae-3a7f-926c-61c2-685cc5e244fe','aaa45a3f-9f1e-fa23-ecbb-678644d18d35',0,'2025-06-26 04:36:51',0),('76e95eeb-9f8e-e1e7-d835-685cc6996c54','e85b0bae-3a7f-926c-61c2-685cc5e244fe','85f930d4-c7a5-bd99-f06b-678644134b03',0,'2025-06-26 04:36:51',0),('77dfc542-787d-ffb4-9d09-685cc63e71cc','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a92b2831-cd9b-ab8e-e413-678644014ca1',0,'2025-06-26 04:36:51',0),('77e32bf3-528e-2401-f381-685cc664b189','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d88401bb-69f0-d23c-169a-678644cdd803',-99,'2025-06-26 04:36:51',0),('786974f4-32e1-5662-93c6-685cc60bff72','e85b0bae-3a7f-926c-61c2-685cc5e244fe','8d7c19b7-f718-ebc2-f4cd-678644307d37',0,'2025-06-26 04:36:51',0),('7959b6eb-d7dc-f758-70e7-685cc615f5a8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','dd10db3e-e5f5-3634-c074-678644eddf74',-99,'2025-06-26 04:36:51',0),('79d44d4d-d0dd-22a5-57a7-685cc6b57bff','e85b0bae-3a7f-926c-61c2-685cc5e244fe','84625701-fe6f-d470-8721-6786440f8e1e',0,'2025-06-26 04:36:51',0),('79e2ad61-edd7-35a8-7990-685cc6ca8767','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a4a28c56-78b2-0534-1fa5-67864427a3c2',0,'2025-06-26 04:36:51',0),('7acd2270-ed50-357d-6761-685cc61d4c03','e85b0bae-3a7f-926c-61c2-685cc5e244fe','dbaba7b6-2eb8-d194-d411-6786443efea2',-99,'2025-06-26 04:36:51',0),('7b49c924-59c2-1b2a-9e46-685cc6364ba3','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2446d688-0e21-4b70-deab-67864460b413',-98,'2025-06-26 04:36:51',0),('7b4e524b-bf54-a2a8-83c7-685cc6d7cf81','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ac20d907-34d6-38dc-a616-678644071be7',0,'2025-06-26 04:36:51',0),('7c443d64-3498-f95f-1b39-685cc63f53e1','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d6e78a68-6b44-9aad-6e64-678644cbb398',-99,'2025-06-26 04:36:51',0),('7cc2b955-1822-1357-67a1-685cc6360f67','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a328d968-dec6-eba7-3b9b-678644ad5f48',0,'2025-06-26 04:36:51',0),('7cc52b8f-ce0e-e26d-4705-685cc61046fe','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2aae6b98-76ea-cea4-d1e7-678644a8a909',0,'2025-06-26 04:36:51',0),('7dce2dc7-b261-ffea-13b9-685cc62b6a1f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','de753e58-a590-1be6-2792-678644688a8b',-99,'2025-06-26 04:36:51',0),('7e3bffe3-3a83-7a32-e992-685cc6c23b68','e85b0bae-3a7f-926c-61c2-685cc5e244fe','29302266-da8f-c9ee-ca4c-678644cf53ae',0,'2025-06-26 04:36:51',0),('7e41601b-10c6-45ad-685b-685cc61e502c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e47aa177-0ebe-968e-063d-6786445669b6',-98,'2025-06-26 04:36:51',0),('7f00574d-f340-8d50-67f7-685cc6f901d3','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d55f349f-21ef-ee97-7082-678644676a07',-99,'2025-06-26 04:36:51',0),('7fb5977e-d308-8705-9dfa-685cc6278a7e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2d9ed0e6-5070-eddd-9665-678644966f09',0,'2025-06-26 04:36:51',0),('7fed5d3f-a07a-8d9a-e87c-685cc6effe6d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ead61e40-d955-4f6d-f8bd-678644e24db6',0,'2025-06-26 04:36:51',0),('8039f001-639b-967a-b72f-685cc6e9281d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','21e1021d-993d-4e32-9e94-67864421a179',-98,'2025-06-26 04:36:51',0),('81000efc-f5fd-93cf-8f62-685cc61abb87','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d5b04fe9-258d-84a0-4323-6786441e143d',-98,'2025-06-26 04:36:51',0),('81302177-7ab8-305c-31e7-685cc62d365d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2c248f4a-2d44-adcf-d16c-6786448e9084',0,'2025-06-26 04:36:51',0),('816d57ff-1e7e-b142-0605-685cc6810d77','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e967fe85-8e5f-6da4-22c1-678644fb5f42',0,'2025-06-26 04:36:51',0),('816e5ab8-7bf1-d9d0-6586-685cc6bd1aaf','e85b0bae-3a7f-926c-61c2-685cc5e244fe','27dc8ae2-6a55-4539-c739-678644872dc4',-99,'2025-06-26 04:36:51',0),('82a4a960-25f4-9037-3160-685cc6f9bd44','e85b0bae-3a7f-926c-61c2-685cc5e244fe','266b34e6-c63d-4295-7ccc-67864486b598',-99,'2025-06-26 04:36:51',0),('82a4be74-54d3-2a8b-8189-685cc6f84a30','e85b0bae-3a7f-926c-61c2-685cc5e244fe','27a1819a-e849-3a5b-8361-678644cc1f8f',0,'2025-06-26 04:36:51',0),('82a5f576-1091-2e33-43b5-685cc63d2b3a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ed9b1820-b8ad-2ad0-9a58-678644c93629',0,'2025-06-26 04:36:51',0),('83d5c783-0733-f4a7-36f4-685cc6022f8b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2ae0d18c-fa94-52d5-51b7-6786446c7d0d',-99,'2025-06-26 04:36:51',0),('8417cb12-e819-7a21-6fcb-685cc62fa9b6','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ec3c1da5-7777-06f4-26a1-678644fbfdc8',0,'2025-06-26 04:36:51',0),('841a70cf-cd26-438e-faec-685cc652e10b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2f097045-f57b-c551-b197-67864499f505',0,'2025-06-26 04:36:51',0),('853e0a93-5b06-bc8f-c1f8-685cc6f02d72','e85b0bae-3a7f-926c-61c2-685cc5e244fe','c6c41517-7c7f-1b44-414d-678644fc8c5f',0,'2025-06-26 04:36:51',0),('8554e770-bc00-cfde-9656-685cc60b9e26','e85b0bae-3a7f-926c-61c2-685cc5e244fe','294ba4c4-ba1d-2579-2301-67864497421a',-99,'2025-06-26 04:36:51',0),('8554fb77-c446-16b6-4641-685cc6b2abdc','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2615cd95-7642-4a6f-4234-6786445da8a4',0,'2025-06-26 04:36:51',0),('858fa0a2-18c4-ae2e-c5c7-685cc6d0997c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e7e94e73-b09c-0d1f-4c77-6786446c40b5',0,'2025-06-26 04:36:51',0),('86c6c54b-6c35-4861-75cd-685cc61cb34c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2a2aed84-b717-4035-a6fb-6786447ba2f7',-98,'2025-06-26 04:36:51',0),('86c9f0c4-ab55-c38d-a699-685cc69ab0e5','e85b0bae-3a7f-926c-61c2-685cc5e244fe','250003a4-20a4-53f3-6003-678644206b2c',-99,'2025-06-26 04:36:51',0),('87023966-2ba1-f697-46fe-685cc6d34fa0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ef006b0f-c851-a113-d962-6786448d3608',0,'2025-06-26 04:36:51',0),('883b9bf1-8da4-9c3a-1781-685cc65a17e1','e85b0bae-3a7f-926c-61c2-685cc5e244fe','3039b46b-61a7-fc5c-352e-678644b68dea',0,'2025-06-26 04:36:51',0),('883c8d50-55b1-3f0a-9899-685cc6da8b67','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2c5420a5-1d7a-83d5-168d-678644a0b831',-99,'2025-06-26 04:36:51',0),('88798364-d91e-2ede-046a-685cc6d76cf5','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e60843b7-3889-77b2-2281-67864423f231',0,'2025-06-26 04:36:51',0),('88ff01d8-9ca3-7b69-290d-685cc63585a1','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d8c36331-f41b-165b-2915-678644da2fea',0,'2025-06-26 04:36:51',0),('89b9ebf8-bec2-e526-7893-685cc62b4464','e85b0bae-3a7f-926c-61c2-685cc5e244fe','23891480-ff46-5c7b-e7de-67864474a694',-99,'2025-06-26 04:36:51',0),('89ba8f7b-a105-f7b5-049e-685cc6709aaf','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2ed4afd2-9a82-19a4-f145-67864451bd7d',0,'2025-06-26 04:36:51',0),('89edc9b9-3e94-cfe2-704f-685cc65fe3c8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d0d011c0-f4cf-5f8d-8d9e-678644d0a869',-98,'2025-06-26 04:36:51',0),('8b2a61cf-c732-8c4e-ab25-685cc61074c2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6da1baea-de3d-7a44-96d6-67864469a529',-98,'2025-06-26 04:36:51',0),('8b30d5b6-57e3-3ff6-d352-685cc61cb287','e85b0bae-3a7f-926c-61c2-685cc5e244fe','330ae2b5-5c3b-ad57-b781-6786440d3292',0,'2025-06-26 04:36:51',0),('8b65e2e4-600b-ed16-90bd-685cc6c1f5e8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d7137db1-e375-3dab-3d8a-6786441e2ac9',0,'2025-06-26 04:36:51',0),('8ca214f8-4e97-4f30-f69f-685cc6507be5','e85b0bae-3a7f-926c-61c2-685cc5e244fe','73dfccc9-c567-bd4a-3609-678644ecdda8',-99,'2025-06-26 04:36:51',0),('8ca8d3ad-11fd-a7c8-dd8a-685cc60e2ac9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','31a3715e-2390-d24a-d8d8-678644720721',0,'2025-06-26 04:36:51',0),('8cdce956-dc98-411e-8941-685cc6a7f58d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d589fad9-edc3-ee6c-56b8-678644615f1a',0,'2025-06-26 04:36:51',0),('8de62be4-5c5d-2dff-9b5c-685cc6233757','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2d52df0a-9217-ad13-5873-678644aaedc4',0,'2025-06-26 04:36:51',0),('8e1a9303-05ba-1f59-14e3-685cc63a22d2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','72580917-0567-7328-3163-678644030f66',-99,'2025-06-26 04:36:51',0),('8e540cf6-2660-be1c-ec25-685cc6740d15','e85b0bae-3a7f-926c-61c2-685cc5e244fe','da0f7a10-24ac-04d2-be2a-678644051031',0,'2025-06-26 04:36:51',0),('8f8cf376-e4e7-0224-4567-685cc657a95d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','76ca98d7-766f-2850-13b1-678644674674',-99,'2025-06-26 04:36:51',0),('8fd028de-95ec-a21a-6927-685cc69a4363','e85b0bae-3a7f-926c-61c2-685cc5e244fe','34918caf-387d-f205-4ffa-67864455e3e3',0,'2025-06-26 04:36:51',0),('8fd2e68a-8028-5174-7547-685cc646cc74','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d8a1069e-3929-6c0a-c183-6786445d46b2',0,'2025-06-26 04:36:51',0),('91019ea6-13e1-1f45-1ba5-685cc6fefbbc','e85b0bae-3a7f-926c-61c2-685cc5e244fe','75583d30-46c9-b307-6813-6786445b1e4f',-99,'2025-06-26 04:36:51',0),('9149eb04-971b-486a-0978-685cc62fd757','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d40cdf2e-4a2a-b735-6f0b-678644fda3fd',0,'2025-06-26 04:36:51',0),('914a08b0-e86d-0caa-d716-685cc64e369e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2bbf0746-22b3-a029-8dc8-678644a84d05',0,'2025-06-26 04:36:51',0),('922cf2f4-fa3b-acdb-1bce-685cc68671e2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','70c9580e-d490-82e7-4833-678644557d5c',-99,'2025-06-26 04:36:51',0),('92beec25-2657-ebc9-454a-685cc65ea386','e85b0bae-3a7f-926c-61c2-685cc5e244fe','7fb2fabe-e5b3-c19f-045b-6786443ba229',-98,'2025-06-26 04:36:51',0),('92c0a3c8-13a0-5863-84f5-685cc66e97fa','e85b0bae-3a7f-926c-61c2-685cc5e244fe','db880f62-edc4-1805-7fae-678644312a94',0,'2025-06-26 04:36:51',0),('93b18222-5ef5-fe3f-0d75-685cc69136f0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','783cd91f-2574-405c-d93a-6786445d499b',-99,'2025-06-26 04:36:51',0),('9438d914-3be0-90e3-6d3f-685cc6393cd9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d27e2000-2c95-e61c-dca7-678644c99c1c',0,'2025-06-26 04:36:51',0),('94459381-8d62-c5d4-1943-685cc6857f9a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','85b3a897-c4f7-2b52-3f92-6786447a63e7',0,'2025-06-26 04:36:51',0),('95309be5-1fcd-84c5-db64-685cc61a0322','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6f4cf947-5f85-e654-f525-67864401ccab',-99,'2025-06-26 04:36:51',0),('9572ccdd-158e-10fd-178c-685cc62a7af0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','844ab1d0-464c-3200-7fc5-6786449b61bf',0,'2025-06-26 04:36:51',0),('95aa5ca6-c3a5-bbe5-e69b-685cc6a2138a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','7269c54d-7571-199c-5fd8-6786448a35b6',-98,'2025-06-26 04:36:51',0),('966aa2fa-5693-06de-b167-685cc6d0bc51','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1bc3380c-f258-994b-612e-6786445bfeba',-98,'2025-06-26 04:36:51',0),('9721bc7f-e896-f69e-9be1-685cc68e6c21','e85b0bae-3a7f-926c-61c2-685cc5e244fe','78839c31-44c2-67ae-1649-678644e55e5f',0,'2025-06-26 04:36:51',0),('97255337-3c49-f52a-d7c1-685cc68293e5','e85b0bae-3a7f-926c-61c2-685cc5e244fe','88a2bda9-66f8-6f41-315c-678644067b56',0,'2025-06-26 04:36:51',0),('97dcca37-b99f-31b7-ca62-685cc6d4915d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','21d91c6a-79e0-1a85-afc8-678644af815d',-99,'2025-06-26 04:36:51',0),('989916c2-2852-945a-79ca-685cc685f0ac','e85b0bae-3a7f-926c-61c2-685cc5e244fe','7706b863-f564-805f-03e0-6786449bcf2f',0,'2025-06-26 04:36:51',0),('989edb68-0be8-8519-0d52-685cc67e1e8b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','8728e798-c0da-8c27-dbaf-678644d0f9f9',0,'2025-06-26 04:36:51',0),('9953f1c8-dbb2-8e23-5cf4-685cc62f683a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','20256407-1fb4-14b5-6501-6786447d801d',-99,'2025-06-26 04:36:51',0),('99cea619-0331-c7d6-8b1b-685cc69eede0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','7b65e47d-656f-5b04-c3a1-6786441bd4a6',0,'2025-06-26 04:36:51',0),('9a185d19-54c0-2130-91f2-685cc6a2d678','e85b0bae-3a7f-926c-61c2-685cc5e244fe','82ddf5c8-c766-80c5-2c08-678644ad3128',0,'2025-06-26 04:36:51',0),('9ac66061-d700-4376-2cc0-685cc6812f64','e85b0bae-3a7f-926c-61c2-685cc5e244fe','24dd9c22-65a2-f066-86b9-678644c0f34b',-99,'2025-06-26 04:36:51',0),('9b45fc0d-e002-8e14-13dd-685cc645e539','e85b0bae-3a7f-926c-61c2-685cc5e244fe','79f1ea30-be4b-25ff-b4ba-678644da4239',0,'2025-06-26 04:36:51',0),('9b92cdac-94cc-51fb-e463-685cc6e77520','e85b0bae-3a7f-926c-61c2-685cc5e244fe','8a2d9fdf-cd3e-e29d-ff54-67864433a8fb',0,'2025-06-26 04:36:51',0),('9c3d607b-d911-fe7b-a44c-685cc698cd3f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','235fd35d-6ad9-06f7-2f78-6786441550c4',-99,'2025-06-26 04:36:51',0),('9c840761-7f33-4709-5f16-685cc62cd162','e85b0bae-3a7f-926c-61c2-685cc5e244fe','bdb5a1e2-e968-5cad-14d0-6786446e3868',0,'2025-06-26 04:36:51',0),('9cd06701-f8b2-dbc6-a572-685cc62d7f4f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','7586897e-b729-9eb2-08bf-6786449228ca',0,'2025-06-26 04:36:51',0),('9d003a4e-9af8-1a45-7770-685cc620bee3','e85b0bae-3a7f-926c-61c2-685cc5e244fe','815620cb-3d6a-e4e0-7fa4-6786443700fc',0,'2025-06-26 04:36:51',0),('9db34efa-df60-05f3-a427-685cc6aadf24','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1eb77108-ec55-4059-8e5f-67864490c226',-99,'2025-06-26 04:36:51',0),('9df8b7c8-00aa-4a66-c53b-685cc660c686','e85b0bae-3a7f-926c-61c2-685cc5e244fe','7cf57bd4-8cb6-87e9-8244-6786443566d8',0,'2025-06-26 04:36:51',0),('9e74f246-0195-1797-0557-685cc6735bf9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','dc668fa6-743d-ca1f-5274-678644ddf95e',-98,'2025-06-26 04:36:51',0),('9f3833ac-af3d-f622-f6da-685cc6da104a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','26548b35-65c2-9685-54de-678644b9e694',-99,'2025-06-26 04:36:51',0),('9f6f0478-c23c-48a5-6f48-685cc6860902','e85b0bae-3a7f-926c-61c2-685cc5e244fe','73ff4b6e-1f88-a059-5f68-6786448b24a1',0,'2025-06-26 04:36:51',0),('9ffcdfd4-d6c1-27e8-c52e-685cc6f5bef6','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e260d5ce-7dbb-e331-f638-678644134f6b',0,'2025-06-26 04:36:51',0),('a0620318-7552-d576-f95a-685cc61af0c2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e0a02f70-b3e2-8f59-8892-678644e7c8e8',0,'2025-06-26 04:36:51',0),('a0e46a3c-cecb-ced1-b0f5-685cc6ef5f24','e85b0bae-3a7f-926c-61c2-685cc5e244fe','aedff2f0-46ae-7003-0a87-678644b0da47',-98,'2025-06-26 04:36:51',0),('a0e7bc6e-6276-5c37-6cd8-685cc6cde17a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1d5697c0-e7a0-3c2a-5c26-6786448f5a29',-99,'2025-06-26 04:36:51',0),('a1685814-b0c2-6c31-c3b2-685cc671df8a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e0e7096f-24c9-6adf-93f1-678644888465',0,'2025-06-26 04:36:51',0),('a25c6956-56e4-8a33-3992-685cc667f05a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','95a47207-a56b-a02e-61b3-678644ad669c',-98,'2025-06-26 04:36:51',0),('a25df9a4-dac8-2e6e-58fe-685cc67a7bd0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b4b7fbed-9ee2-50bc-fa76-678644493dcd',0,'2025-06-26 04:36:51',0),('a2df21c3-51b0-da3d-8710-685cc6eb76a2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e53d243a-1911-d722-68d0-6786443fc170',0,'2025-06-26 04:36:51',0),('a3d1c996-779e-af99-7ac1-685cc6f38451','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9c2474f5-4cd2-b779-c6d7-6786448c324a',-99,'2025-06-26 04:36:51',0),('a45d8ea0-56e8-065b-6013-685cc6955bb5','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e3d7d35a-517a-3b12-db23-678644d77812',0,'2025-06-26 04:36:51',0),('a507d0bb-4942-70a5-bafa-685cc6014b43','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9aa78adb-bed0-8179-bd03-6786446868ef',-99,'2025-06-26 04:36:51',0),('a50bef8f-2bae-545c-a81e-685cc6c0c22e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b3481cea-7503-ea2f-1006-678644c19107',0,'2025-06-26 04:36:51',0),('a5cf6e93-6e7a-3a7c-e922-685cc621722d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','df638806-23fd-3acc-536f-6786444ba845',0,'2025-06-26 04:36:51',0),('a680bab3-6bf7-c301-3153-685cc6217e67','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9f2155df-548d-6179-3e0d-678644212c9b',-99,'2025-06-26 04:36:51',0),('a683767a-f2c8-bc97-47d9-685cc66b749e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b79c8720-3aa0-6871-f081-678644edff34',0,'2025-06-26 04:36:51',0),('a73df113-66c1-8d84-9726-685cc6f0f063','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e6a2ee0b-4b84-8de2-f8bc-678644b655e8',0,'2025-06-26 04:36:51',0),('a7f82b98-5f73-c027-da62-685cc660bf9f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b63629fa-15b4-df60-4958-678644c2eb70',0,'2025-06-26 04:36:51',0),('a802749f-0d27-bce2-bd4b-685cc69c76b2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9da12da5-8e17-2b14-75f3-67864450787f',-99,'2025-06-26 04:36:51',0),('a8b3a7ee-22e3-0b9f-062f-685cc65e96e8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ddfacbd5-a77b-5069-c4d1-67864499842e',0,'2025-06-26 04:36:51',0),('a981d9be-00c3-27b3-8d7e-685cc6d7db85','e85b0bae-3a7f-926c-61c2-685cc5e244fe','990540b1-3b12-1a19-3cce-6786445f041c',-99,'2025-06-26 04:36:51',0),('aa33c442-a42e-c872-c781-685cc61b6dcb','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a74daa83-369d-77bd-38d5-678644d62ab9',-98,'2025-06-26 04:36:51',0),('aab2fb75-a7ee-ce2b-0237-685cc6d1c689','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b1d633dc-a489-3d18-1a1e-678644dbb2f0',0,'2025-06-26 04:36:51',0),('aae618bd-02d8-e1bb-8985-685cc61ffbd9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a0b270d6-da7d-96a3-8d33-678644701329',-99,'2025-06-26 04:36:51',0),('abaeab4a-6d13-4bff-5bd9-685cc64769c1','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ad437682-ec22-6216-ff60-678644daa606',0,'2025-06-26 04:36:51',0),('abe62ab6-ba6c-98c9-88c1-685cc606eba9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b9066348-3b7e-7bca-4609-678644a9b319',0,'2025-06-26 04:36:51',0),('ac648334-3aa3-ce73-e3e6-685cc6f91ced','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9756f39a-0240-d215-6209-67864431c9e1',-99,'2025-06-26 04:36:51',0),('ad226854-7549-6f10-8c77-685cc6a5ec5b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','abb93ab1-c809-74fe-7f34-678644c673b4',0,'2025-06-26 04:36:51',0),('ad6261b6-92dc-a41e-d6ac-685cc654447f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b06b998b-7164-6657-6f7a-678644bc2b80',0,'2025-06-26 04:36:51',0),('add31d62-8f1e-2099-5987-685cc62c742e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b0731412-008e-0c8b-d397-678644a93840',-98,'2025-06-26 04:36:51',0),('ae985265-b350-51de-3755-685cc6a30cd5','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5072d1f7-e1c5-5538-9590-678644a5402f',-98,'2025-06-26 04:36:51',0),('aedc17df-42f5-d063-3070-685cc6ead348','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b0193ace-4155-e50a-1ddb-6786449a56cb',0,'2025-06-26 04:36:51',0),('af4f9168-9163-8049-010c-685cc68f4b65','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b6b7f3b3-9c4d-42dd-2e2d-6786441dc291',-99,'2025-06-26 04:36:51',0),('afd99a46-a31a-1cc3-bf8c-685cc65fe590','e85b0bae-3a7f-926c-61c2-685cc5e244fe','56c02d17-9d59-10f2-2506-678644bcc94c',0,'2025-06-26 04:36:51',0),('afda0e1f-92b1-5db9-6c43-685cc60942d8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6378efd2-d89f-2c44-9d6a-6786442db074',-98,'2025-06-26 04:36:51',0),('b04c0df8-594d-36d5-6f2f-685cc68c867b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5c810a4e-d831-f35a-e37e-678644694d42',0,'2025-06-26 04:36:51',0),('b04f5d8e-72b4-2dd7-cf3d-685cc6677eba','e85b0bae-3a7f-926c-61c2-685cc5e244fe','aeb25096-c588-9b15-1a7b-67864408930c',0,'2025-06-26 04:36:51',0),('b10e3d1a-e3cd-19ae-267a-685cc6636375','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b524aedb-bcd2-c8e2-6a71-678644b433a3',-99,'2025-06-26 04:36:51',0),('b1537397-817d-8525-24ad-685cc6174110','e85b0bae-3a7f-926c-61c2-685cc5e244fe','55303849-d5f5-2dca-9a14-678644dbfcad',0,'2025-06-26 04:36:51',0),('b1cb1152-7b3f-e036-2a79-685cc64d6084','e85b0bae-3a7f-926c-61c2-685cc5e244fe','aa4f6243-ee6e-0c22-f048-678644af5c33',0,'2025-06-26 04:36:51',0),('b27ad2ad-ec65-5466-e75f-685cc6d5c970','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b9c41e61-f03b-af83-f102-678644bf7324',-99,'2025-06-26 04:36:51',0),('b2cc4e92-13f5-2b3e-a850-685cc68b8f07','e85b0bae-3a7f-926c-61c2-685cc5e244fe','599c8652-349f-efbf-e5aa-678644007396',0,'2025-06-26 04:36:51',0),('b3be8c48-8daf-83d8-59fa-685cc606698c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b1a18fb3-38b6-2016-d0cf-678644261b25',0,'2025-06-26 04:36:51',0),('b3f7dbe7-6a56-000c-15a1-685cc63d97f5','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b8352e72-2cb0-e944-f206-6786448a44ae',-99,'2025-06-26 04:36:51',0),('b445f7ad-643b-a57c-cd54-685cc60f29a6','e85b0bae-3a7f-926c-61c2-685cc5e244fe','582893e2-0895-301b-5185-678644107b4e',0,'2025-06-26 04:36:51',0),('b52a236e-6881-c108-8485-685cc643ad43','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b392dd42-7386-5af1-e134-6786445580e4',-99,'2025-06-26 04:36:51',0),('b535ac49-3ef7-360d-fdc6-685cc68d27c8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a8ee6d29-2047-c373-42b5-678644dfd6d6',0,'2025-06-26 04:36:51',0),('b5f8039d-b5e1-5765-6020-685cc6b53438','e85b0bae-3a7f-926c-61c2-685cc5e244fe','53be5f34-4513-73a3-386b-67864414485e',0,'2025-06-26 04:36:51',0),('b69b5dd9-232e-71b7-13a9-685cc6e92cdb','e85b0bae-3a7f-926c-61c2-685cc5e244fe','bb6088e3-b849-3508-831d-678644b6c734',-99,'2025-06-26 04:36:51',0),('b6a4beb1-f366-1716-e22f-685cc67ae6b5','e85b0bae-3a7f-926c-61c2-685cc5e244fe','3bcecf8a-f4ae-3a93-ef13-67864439c7ec',-98,'2025-06-26 04:36:51',0),('b765ce4a-ca8e-46c0-7324-685cc6791df2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5b120cfd-928c-cafc-16ae-678644e4d14f',0,'2025-06-26 04:36:51',0),('b7a309cb-f037-cb5b-d5fb-685cc66615f9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d7348280-de99-dc40-e9c1-678644f1c7ba',0,'2025-06-26 04:36:51',0),('b81c4860-ce48-78eb-5950-685cc64ad37c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b20c42a9-6b91-8187-986a-678644504e1a',-99,'2025-06-26 04:36:51',0),('b8264b6d-85cb-bfec-a514-685cc6a84fa0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','41f89a7d-20a8-618d-5703-678644759659',0,'2025-06-26 04:36:51',0),('b89b73ff-a143-6be4-f8cb-685cc60150da','e85b0bae-3a7f-926c-61c2-685cc5e244fe','523aae00-7e5e-f0df-6bae-678644b4d66e',0,'2025-06-26 04:36:51',0),('b9915e17-2900-c0c0-bca9-685cc6d366a9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2cbeeceb-3d00-5b82-e067-678644601bda',-98,'2025-06-26 04:36:51',0),('b9a5c2ed-3500-b799-3195-685cc6a16ed2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','40909ec6-ec58-5eef-efcd-678644eae05c',0,'2025-06-26 04:36:51',0),('ba17a727-8c29-ce91-2475-685cc682592c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','15f8891c-0bed-706a-6278-678644be48e3',-98,'2025-06-26 04:36:51',0),('bb03ea2d-5751-2d9d-9638-685cc69f5410','e85b0bae-3a7f-926c-61c2-685cc5e244fe','328c609e-55b9-20d5-bf4b-678644b6b2d8',-99,'2025-06-26 04:36:51',0),('bb43ab2d-026e-37c3-e77b-685cc6a0e4df','e85b0bae-3a7f-926c-61c2-685cc5e244fe','44fe8efd-53fc-77f8-6ed9-678644aeaa0a',0,'2025-06-26 04:36:51',0),('bb859747-98ce-c767-15e2-685cc6cbc63e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1bf1ccde-0c92-2e52-ca4d-678644dd18f9',0,'2025-06-26 04:36:51',0),('bc798659-38a4-b349-db72-685cc6c9a5e3','e85b0bae-3a7f-926c-61c2-685cc5e244fe','312148c7-9dc2-1fde-97d2-678644a8d72a',-99,'2025-06-26 04:36:51',0),('bcb8bd97-2f28-f592-559d-685cc69f3a84','e85b0bae-3a7f-926c-61c2-685cc5e244fe','4385df4b-21c7-6910-34f3-67864478100a',0,'2025-06-26 04:36:51',0),('bcfa8a5c-0ed7-1605-660c-685cc66ce2dd','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1a7728d4-ff6e-3d57-5e47-67864476b8ee',0,'2025-06-26 04:36:51',0),('bdee8c19-f5f9-7503-f4e4-685cc6153a67','e85b0bae-3a7f-926c-61c2-685cc5e244fe','357e1bc2-4721-f310-095a-678644b51810',-99,'2025-06-26 04:36:51',0),('be3bdb81-a0c3-19d8-1e26-685cc689d5eb','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1edfa9dd-6ce5-d8ab-4aa1-6786443165e9',0,'2025-06-26 04:36:51',0),('be4fee8a-d488-8387-4282-685cc630b633','e85b0bae-3a7f-926c-61c2-685cc5e244fe','3f008403-987d-aeb8-03d4-6786447ec078',0,'2025-06-26 04:36:51',0),('bf6609b4-aa8e-d432-fb20-685cc693fa7f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','340e98b4-5252-6526-fa0b-67864423ed82',-99,'2025-06-26 04:36:51',0),('bfad3153-f799-784e-96cb-685cc63d1b8a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1d67fe3b-8c4f-ef3a-a74b-678644ae1d6c',0,'2025-06-26 04:36:51',0),('c06a7c04-51b7-804a-29f2-685cc65f8d98','e85b0bae-3a7f-926c-61c2-685cc5e244fe','469a7b0f-2f6b-dffa-f338-678644b9a416',0,'2025-06-26 04:36:51',0),('c09c33ea-96a1-2166-b6a8-685cc6eff888','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2fbd9c00-e898-9367-d801-678644ea99d0',-99,'2025-06-26 04:36:51',0),('c1234c78-a66b-ce2b-e499-685cc61dad79','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1907b155-c0d3-668a-55d9-67864468a8ff',0,'2025-06-26 04:36:51',0),('c1abe3ae-298d-2405-7cfd-685cc6e78133','e85b0bae-3a7f-926c-61c2-685cc5e244fe','3d883e82-d91e-d05d-56a3-678644067a5d',0,'2025-06-26 04:36:51',0),('c21468ba-d6a7-e9de-dc1e-685cc6e2f551','e85b0bae-3a7f-926c-61c2-685cc5e244fe','36e83883-7012-f00a-8f4e-6786441eff5c',-99,'2025-06-26 04:36:51',0),('c297c4c0-da87-8f40-eb75-685cc65b8955','e85b0bae-3a7f-926c-61c2-685cc5e244fe','205149d3-beee-5b2f-240a-678644eda994',0,'2025-06-26 04:36:51',0),('c314f80d-f422-9f1b-7cb7-685cc616b30d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','cc5aeb1a-8fc7-22b3-f9a6-67864426d708',-98,'2025-06-26 04:36:51',0),('c38b9ee0-dc5f-42ba-2e90-685cc61477dd','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2e4c99ea-e472-5ddb-e62c-678644bed669',-99,'2025-06-26 04:36:51',0),('c410bae2-795a-4528-7b0d-685cc6f83f98','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1799a16e-2a19-e25f-ed31-678644606225',0,'2025-06-26 04:36:51',0),('c496f52d-f296-e292-b167-685cc6b25e88','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d2706be6-d35a-2209-9320-6786447624c8',0,'2025-06-26 04:36:51',0),('c501ee7c-813d-6def-8712-685cc6762933','e85b0bae-3a7f-926c-61c2-685cc5e244fe','67a31118-f551-6475-5ef4-678644c7ff72',-98,'2025-06-26 04:36:51',0),('c588e727-67e6-f84f-c4c0-685cc625aa51','e85b0bae-3a7f-926c-61c2-685cc5e244fe','666b2dd9-f5b9-cda3-de5b-6786440dfa52',-98,'2025-06-26 04:36:51',0),('c60d3ccb-75aa-42f5-1ecd-685cc6aade07','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d0feac51-fbff-497f-8c7a-678644edd670',0,'2025-06-26 04:36:51',0),('c67bce93-f049-78f8-c3fd-685cc615305a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6dca600f-333c-0ef5-83f1-678644f59efe',0,'2025-06-26 04:36:51',0),('c705a681-4eb0-7525-4628-685cc69ae0eb','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6c3b0cc5-1ba4-5e7a-8348-6786446457fb',0,'2025-06-26 04:36:51',0),('c7490496-9c42-2af3-1110-685cc6ea0dab','e85b0bae-3a7f-926c-61c2-685cc5e244fe','69c193e3-8345-14d3-7786-6786445ab944',0,'2025-06-26 04:36:51',0),('c7880a27-2f3b-9d67-f59c-685cc6f47e67','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d5641667-e814-1fb5-3ab0-67864479c627',0,'2025-06-26 04:36:51',0),('c7f968e2-7cf6-5801-5bd9-685cc65659ae','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6c57b910-cb6c-33cd-bbe4-678644b7a6fa',0,'2025-06-26 04:36:51',0),('c87b7e24-06dc-6635-118a-685cc65ceefc','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6acd5088-6b99-4ec2-d2db-678644b137c1',0,'2025-06-26 04:36:51',0),('c930eab9-b691-ae44-0ea0-685cc61149c7','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d3e16566-624d-3acd-60cb-678644b7cecc',0,'2025-06-26 04:36:51',0),('c9412f1c-6019-43ef-d420-685cc6fa0df1','e85b0bae-3a7f-926c-61c2-685cc5e244fe','70c81f67-4782-375c-9853-678644366439',0,'2025-06-26 04:36:51',0),('c9ee891b-9a8a-dbb7-4372-685cc6b469c3','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6f2dc331-c5d7-2263-da92-67864415c8b9',0,'2025-06-26 04:36:51',0),('caa625c4-f19f-ef62-5448-685cc6509640','e85b0bae-3a7f-926c-61c2-685cc5e244fe','cf82342d-1d0b-436c-9036-678644a436cc',0,'2025-06-26 04:36:51',0),('cae1e964-2ee6-c8fd-acd4-685cc6b5981a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6f4573de-fd40-79ad-7166-6786447f1554',0,'2025-06-26 04:36:51',0),('cb67f2cf-7192-55f1-5e36-685cc63e6a7c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6db41c15-2316-3865-d855-678644e155cc',0,'2025-06-26 04:36:51',0),('cc1a2264-4e7b-42ab-b77f-685cc6cfd58a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6adca0eb-aa57-0bd2-3400-678644e497b0',0,'2025-06-26 04:36:51',0),('cc1b4eac-9b77-8864-2add-685cc6ed0d4b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d6ef5530-5a7a-8edc-a034-678644ad850c',0,'2025-06-26 04:36:51',0),('cce07987-fb72-06b7-e579-685cc68543cc','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6965470d-e41e-9163-c4d2-678644ff29cf',0,'2025-06-26 04:36:51',0),('cd911aa8-9862-c0e6-d58c-685cc67d547e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','7233226c-012e-7030-9872-678644d1a6c5',0,'2025-06-26 04:36:51',0),('cda51dec-8eec-ba61-2737-685cc6a0854f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ce0153ab-fdba-d93f-6cd0-678644615630',0,'2025-06-26 04:36:51',0),('ce18fec1-afb1-e038-5a7b-685cc62e61d7','e85b0bae-3a7f-926c-61c2-685cc5e244fe','709f9db6-f099-8c19-3b80-678644e0fe91',0,'2025-06-26 04:36:51',0),('cf044be5-118e-fc96-1d5c-685cc63d81cc','e85b0bae-3a7f-926c-61c2-685cc5e244fe','696709dd-97b3-e098-e69e-678644c5b794',0,'2025-06-26 04:36:51',0),('cf720b38-7a9c-f2c7-20ca-685cc60d7d6d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9b647f8e-733b-6002-f729-678644ac8861',-98,'2025-06-26 04:36:51',0),('cf89f296-d4d8-ce2d-a8be-685cc63b0c22','e85b0bae-3a7f-926c-61c2-685cc5e244fe','67f2ae3b-425e-1d67-cffb-678644302369',0,'2025-06-26 04:36:51',0),('cf8dc5c7-8c14-923b-f92e-685cc6eddbb0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d7d61035-b08e-fbfa-2790-678644c6acc7',89,'2025-06-26 04:36:51',0),('d07c6f46-451d-f3b0-2bf4-685cc652bbe2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','10209b5d-ee72-f284-8186-678644d0b804',-98,'2025-06-26 04:36:51',0),('d0fff14c-2416-31f8-23ec-685cc6ba6ac6','e85b0bae-3a7f-926c-61c2-685cc5e244fe','536afd0f-c624-84ba-5a34-678644b7626a',-98,'2025-06-26 04:36:51',0),('d1095199-2418-e189-5c1d-685cc68119bd','e85b0bae-3a7f-926c-61c2-685cc5e244fe','ddf32d67-128c-9a43-acc2-67864401916a',0,'2025-06-26 04:36:51',0),('d2397b73-f105-df7c-4570-685cc646f181','e85b0bae-3a7f-926c-61c2-685cc5e244fe','599d01f7-943d-9fa8-e1e2-678644c9f04c',0,'2025-06-26 04:36:51',0),('d27d1287-c99e-dd3c-0136-685cc67a58fd','e85b0bae-3a7f-926c-61c2-685cc5e244fe','dc75c940-4915-fea5-c3df-67864459c5e6',0,'2025-06-26 04:36:51',0),('d370e837-c232-e28b-2c76-685cc6dec986','e85b0bae-3a7f-926c-61c2-685cc5e244fe','168cfa47-86a3-c6f5-5cfd-6786447248fe',0,'2025-06-26 04:36:51',0),('d3aeae44-dd8b-7ffe-a7b3-685cc69cc196','e85b0bae-3a7f-926c-61c2-685cc5e244fe','58266a33-5d9e-b4f6-ff2a-678644859956',0,'2025-06-26 04:36:51',0),('d3f06c1d-b65d-7bbc-e722-685cc62fd916','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e0e61aab-dd3e-a700-2a75-6786447f4fc4',0,'2025-06-26 04:36:51',0),('d4e352cf-d389-9c1c-7707-685cc6164a05','e85b0bae-3a7f-926c-61c2-685cc5e244fe','14ff3397-1b93-2030-a698-67864474c0f7',0,'2025-06-26 04:36:51',0),('d4f6d1bf-271d-1b84-5968-685cc6789e47','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5c9ead8c-a1b9-ebab-f047-6786445796a0',0,'2025-06-26 04:36:51',0),('d525a3d9-1847-7dbf-05df-685cc643d802','e85b0bae-3a7f-926c-61c2-685cc5e244fe','df6a8328-2121-be7b-f146-678644d17ba0',0,'2025-06-26 04:36:51',0),('d66282cb-60c4-2f91-e21a-685cc64c0d8c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','197581be-a423-a480-61c4-678644aba250',0,'2025-06-26 04:36:51',0),('d69b5cb8-bcf5-dc50-3e28-685cc6e4a261','e85b0bae-3a7f-926c-61c2-685cc5e244fe','dafc0a2b-40c3-5591-2a1a-678644276374',0,'2025-06-26 04:36:51',0),('d6aed2cf-92c2-713e-0489-685cc604b2cc','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5b2e9c1f-4939-29c3-2cfc-678644bf00b9',0,'2025-06-26 04:36:51',0),('d7d3bc56-fcbf-b285-59ea-685cc6d7c22e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','569e16ca-4746-ef5e-b231-67864452c994',0,'2025-06-26 04:36:51',0),('d7e0915c-2759-5efd-8b53-685cc6e4fe36','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1805b624-d559-3f71-6fb1-6786446c8fae',0,'2025-06-26 04:36:51',0),('d8145ac9-13f3-8f49-ce88-685cc60d75db','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e276c64a-0df2-67e1-e72a-67864441d181',0,'2025-06-26 04:36:51',0),('d948d709-ef5e-da17-c68c-685cc6dedb3f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5e21c8a3-9c5e-1d98-5107-67864423cb93',0,'2025-06-26 04:36:51',0),('d9529510-f117-4ed3-65f4-685cc68335e7','e85b0bae-3a7f-926c-61c2-685cc5e244fe','135605f1-e6f1-a664-f900-67864470967c',0,'2025-06-26 04:36:51',0),('d9878d75-a79d-f224-18d2-685cc6bd058e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d96b0ef4-7e83-3adb-afaa-678644e0cb03',0,'2025-06-26 04:36:51',0),('dabfc8d9-27cc-89b2-04f8-685cc6e87512','e85b0bae-3a7f-926c-61c2-685cc5e244fe','550b03e6-cad8-f3f0-baf9-67864422735d',0,'2025-06-26 04:36:51',0),('dac2fcf4-b43b-ff0b-d5df-685cc64cade6','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1ae3b8d4-88d6-f96b-2227-678644b2a708',0,'2025-06-26 04:36:51',0),('db41514c-21bd-78b9-b3ce-685cc6a2a523','e85b0bae-3a7f-926c-61c2-685cc5e244fe','7e867371-1327-3ca2-d7cd-678644f330d6',-98,'2025-06-26 04:36:51',0),('dc3752b5-95e7-9267-53f7-685cc6f835ea','e85b0bae-3a7f-926c-61c2-685cc5e244fe','11ce30ea-763a-0974-b0cf-6786443eb683',0,'2025-06-26 04:36:51',0),('dc3bd599-6a70-6807-cd7d-685cc6d9ce5e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d6a7fab2-0804-b9b9-a4e6-678644a7710e',-98,'2025-06-26 04:36:51',0),('dcb741d9-7e7b-8cce-8e46-685cc60afdc2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','84a07691-ea6f-6028-fe6d-678644519559',0,'2025-06-26 04:36:51',0),('ddacd32f-3c64-117a-925c-685cc6744376','e85b0bae-3a7f-926c-61c2-685cc5e244fe','dcfcb2b8-ae75-9323-2a9d-6786445d49f3',0,'2025-06-26 04:36:51',0),('ddb2e641-619c-1670-5b08-685cc6a7ac0b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','9a570f79-3247-2ce5-aacf-678644aab63a',-98,'2025-06-26 04:36:51',0),('ddf0f222-ef72-d7ef-a4b8-685cc6693dc0','e85b0bae-3a7f-926c-61c2-685cc5e244fe','832ac2a9-ebe8-fcc0-c9df-67864485798d',0,'2025-06-26 04:36:51',0),('dec504eb-0f87-1422-a5be-685cc602dd4c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','68434ad6-dd2f-71c8-3f49-678644adae87',0,'2025-06-26 04:36:51',0),('def487b8-56d9-9da1-136b-685cc6771e1f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','102a4663-639e-efdb-f4b5-6786443a7d00',0,'2025-06-26 04:36:51',0),('df050881-b062-65d4-a637-685cc629c8b8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','60c8d289-2ce9-9ff7-566b-67864496f1dc',0,'2025-06-26 04:36:51',0),('df23df25-87aa-5c03-1279-685cc667b3c7','e85b0bae-3a7f-926c-61c2-685cc5e244fe','db72d410-51f5-ad63-220b-678644ed850e',0,'2025-06-26 04:36:51',0),('df6f00fe-a56e-4a90-2fb7-685cc6a88d69','e85b0bae-3a7f-926c-61c2-685cc5e244fe','877b4aee-f3b0-e457-561c-678644618f21',0,'2025-06-26 04:36:51',0),('e0daa703-6ca4-c4d6-1522-685cc64eaba9','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e08205a9-017a-256b-39de-678644b6a9fd',0,'2025-06-26 04:36:51',0),('e0e4439f-2872-4579-9dcd-685cc6f08d80','e85b0bae-3a7f-926c-61c2-685cc5e244fe','860fa687-dcba-1a74-eb8f-6786444eff99',0,'2025-06-26 04:36:51',0),('e1cf0273-4fe6-cade-a54f-685cc6624083','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e91e08f1-c24a-d7e5-128b-6786449bd26b',0,'2025-06-26 04:36:51',0),('e258f709-5d2b-5af5-5d6a-685cc6fcb9cd','e85b0bae-3a7f-926c-61c2-685cc5e244fe','de8fb969-d067-5976-8d9f-678644bce23b',0,'2025-06-26 04:36:51',0),('e25a8de4-3e25-ba2f-d7c9-685cc6c8f70b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','81a7b605-7594-13ab-ebab-67864451e22f',0,'2025-06-26 04:36:51',0),('e3535aaf-3ddd-f547-9a42-685cc682bffb','e85b0bae-3a7f-926c-61c2-685cc5e244fe','131f0c09-9f39-f73b-cf86-678644ca6cf2',0,'2025-06-26 04:36:51',0),('e3d11a84-9957-47a2-0a25-685cc626d260','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d9e6e3cc-a88f-77d1-3d9b-6786440c09a7',0,'2025-06-26 04:36:51',0),('e3d3e58e-4686-e5b5-abe7-685cc61e0428','e85b0bae-3a7f-926c-61c2-685cc5e244fe','88eec6e1-f3d5-ff63-1146-6786447f4c93',0,'2025-06-26 04:36:51',0),('e502a069-382e-6d4d-7319-685cc6f94b02','e85b0bae-3a7f-926c-61c2-685cc5e244fe','11aced96-2a7c-8378-851b-678644528cf6',0,'2025-06-26 04:36:51',0),('e5408aa5-16aa-b45b-9064-685cc6520bb2','e85b0bae-3a7f-926c-61c2-685cc5e244fe','802cf709-2daa-b840-3707-6786447f41bd',0,'2025-06-26 04:36:51',0),('e5ff724b-266a-feca-a7d4-685cc65fe12b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','e22ec895-a751-8dbb-4f33-6786445bab62',0,'2025-06-26 04:36:51',0),('e67835e3-8009-eac0-f739-685cc6b39b62','e85b0bae-3a7f-926c-61c2-685cc5e244fe','cec70716-93e7-fa23-201f-678644ac45cb',0,'2025-06-26 04:36:51',0),('e6bab332-2e49-4ab2-8ec5-685cc6fbfb3e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','3f526803-3869-04de-92d7-678644c37d72',-98,'2025-06-26 04:36:51',0),('e72e0dbe-ec82-0c10-a9aa-685cc699cf5f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','a16f5d4e-12a0-ee9d-ae0f-678644fa3dc3',0,'2025-06-26 04:36:51',0),('e776fdd8-35f6-b666-422a-685cc63627bf','e85b0bae-3a7f-926c-61c2-685cc5e244fe','d859b467-8cb8-370e-3e73-6786442df008',0,'2025-06-26 04:36:51',0),('e7edcd60-da5c-8425-b239-685cc62a40fd','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1487507a-df41-412f-96ea-678644ddf8ea',0,'2025-06-26 04:36:51',0),('e838f57a-e210-6498-20d5-685cc62ec19e','e85b0bae-3a7f-926c-61c2-685cc5e244fe','457b4e46-2d3f-6181-8049-67864460d928',0,'2025-06-26 04:36:51',0),('e8f27a0a-ecc7-4774-0322-685cc6547a6a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5192873f-9016-9f7d-5069-678644aad0e8',-98,'2025-06-26 04:36:51',0),('e96c39f7-417d-3ff2-4e96-685cc66e02ca','e85b0bae-3a7f-926c-61c2-685cc5e244fe','b57d0398-bc82-726b-70c6-6786449d20a9',0,'2025-06-26 04:36:51',0),('e9a3f1df-4a84-69bf-2247-685cc6b91c04','e85b0bae-3a7f-926c-61c2-685cc5e244fe','4403cbfd-de45-a516-4772-678644f3dbe3',0,'2025-06-26 04:36:51',0),('ea66dc37-ec22-e2d5-1ad6-685cc6560f4a','e85b0bae-3a7f-926c-61c2-685cc5e244fe','582e67c1-7d10-40f4-6b83-6786440f9dfe',0,'2025-06-26 04:36:51',0),('eadddb7c-e00f-0b7c-22cb-685cc6672712','e85b0bae-3a7f-926c-61c2-685cc5e244fe','4854eae7-6f41-039f-90b9-678644b18dd6',0,'2025-06-26 04:36:51',0),('eae1a22d-c9e1-3a1f-c1a9-685cc67f43eb','e85b0bae-3a7f-926c-61c2-685cc5e244fe','1e0116b0-c3ee-ac54-2bb2-6786449d479b',-98,'2025-06-26 04:36:51',0),('ebda979f-c64f-324b-a555-685cc6ca4b47','e85b0bae-3a7f-926c-61c2-685cc5e244fe','56a2f794-b240-5727-faa3-678644c984e8',0,'2025-06-26 04:36:51',0),('ec58086a-a58c-93d2-d791-685cc6bf17ec','e85b0bae-3a7f-926c-61c2-685cc5e244fe','24064f38-2866-a691-34f4-6786448917d9',0,'2025-06-26 04:36:51',0),('ec5eb53e-6b32-d1c0-a08e-685cc69d3e9c','e85b0bae-3a7f-926c-61c2-685cc5e244fe','46e7f03a-0570-d034-1986-678644f33026',0,'2025-06-26 04:36:51',0),('ed520dff-48b7-6d7a-fa98-685cc68395ac','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5b3ceceb-52af-5ff3-14dd-678644f065ba',0,'2025-06-26 04:36:51',0),('edcdd798-29b3-9b03-8568-685cc622cdc6','e85b0bae-3a7f-926c-61c2-685cc5e244fe','229a8850-0944-397c-c220-6786443afc3e',0,'2025-06-26 04:36:51',0),('edd3083b-39f8-6780-6f3a-685cc6a2031d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','428aaa78-0995-59e0-7f1b-678644ee62ae',0,'2025-06-26 04:36:51',0),('eec63a06-fc06-16a6-9d5c-685cc6a5da68','e85b0bae-3a7f-926c-61c2-685cc5e244fe','59c80f9d-b006-9aee-3b80-678644cb7134',0,'2025-06-26 04:36:51',0),('ef40e70f-1fcd-4558-f1e9-685cc61a6fbf','e85b0bae-3a7f-926c-61c2-685cc5e244fe','270a9a2d-e55a-a7a4-28ce-6786448131c3',0,'2025-06-26 04:36:51',0),('ef489164-2f94-ea2b-3f47-685cc6e1cb00','e85b0bae-3a7f-926c-61c2-685cc5e244fe','4a0866fc-46bb-c219-4115-67864462e1d1',0,'2025-06-26 04:36:51',0),('f03db56a-8a0c-7a89-c6fd-685cc6ca0d61','e85b0bae-3a7f-926c-61c2-685cc5e244fe','54d63818-2449-5468-29aa-67864431b10b',0,'2025-06-26 04:36:51',0),('f0b7e8ae-092e-a42e-a559-685cc6a1cd00','e85b0bae-3a7f-926c-61c2-685cc5e244fe','25738709-5c5e-bae5-bf53-678644ed4fab',0,'2025-06-26 04:36:51',0),('f0f7f7e2-c205-428c-1471-685cc61eee9f','e85b0bae-3a7f-926c-61c2-685cc5e244fe','40f8c904-ff32-c0ad-22f3-6786441e330b',0,'2025-06-26 04:36:51',0),('f1bb5ecf-ebe3-86e2-af6c-685cc6492dd7','e85b0bae-3a7f-926c-61c2-685cc5e244fe','5cbe7c15-e514-8ffb-5069-678644f35a82',0,'2025-06-26 04:36:51',0),('f2390fed-8b8a-fd81-9ede-685cc6678fdb','e85b0bae-3a7f-926c-61c2-685cc5e244fe','21286653-e0f0-7376-d8d9-6786445b66cd',0,'2025-06-26 04:36:51',0),('f27d85e8-318b-4760-d7d2-685cc6dc4e10','e85b0bae-3a7f-926c-61c2-685cc5e244fe','bc08fc84-1ec9-0a29-3cdd-6786443855ea',-98,'2025-06-26 04:36:51',0),('f32f5dbe-c545-fe10-8f0f-685cc66664b3','e85b0bae-3a7f-926c-61c2-685cc5e244fe','533f1b88-2b29-c8d2-14fa-678644e3c5d7',0,'2025-06-26 04:36:51',0),('f3b37648-1ded-37c8-65bc-685cc656ecf8','e85b0bae-3a7f-926c-61c2-685cc5e244fe','288509bb-ab16-f4bf-c399-678644306d11',0,'2025-06-26 04:36:51',0),('f3f7d772-1923-f2c5-54b4-685cc6c4873b','e85b0bae-3a7f-926c-61c2-685cc5e244fe','c23bd88d-7352-1857-a910-678644644be3',0,'2025-06-26 04:36:51',0),('f7020c50-b372-6fd5-ac30-685cc6e7292d','e85b0bae-3a7f-926c-61c2-685cc5e244fe','6cc1de51-f26c-90b8-4015-678644f895ce',0,'2025-06-26 04:36:51',0);
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL,
  `snooze` datetime DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates`
--

DROP TABLE IF EXISTS `am_projecttemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates`
--

LOCK TABLES `am_projecttemplates` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_audit`
--

DROP TABLE IF EXISTS `am_projecttemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_projecttemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_audit`
--

LOCK TABLES `am_projecttemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_contacts_1_c`
--

LOCK TABLES `am_projecttemplates_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_project_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_project_1_c`
--

LOCK TABLES `am_projecttemplates_project_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_users_1_c`
--

LOCK TABLES `am_projecttemplates_users_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates`
--

DROP TABLE IF EXISTS `am_tasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int DEFAULT '0',
  `predecessors` int DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int DEFAULT NULL,
  `order_number` int DEFAULT NULL,
  `estimated_effort` int DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates`
--

LOCK TABLES `am_tasktemplates` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

DROP TABLE IF EXISTS `am_tasktemplates_am_projecttemplates_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_am_projecttemplates_c`
--

LOCK TABLES `am_tasktemplates_am_projecttemplates_c` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_audit`
--

DROP TABLE IF EXISTS `am_tasktemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_tasktemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_audit`
--

LOCK TABLES `am_tasktemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aobh_businesshours`
--

DROP TABLE IF EXISTS `aobh_businesshours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aobh_businesshours`
--

LOCK TABLES `aobh_businesshours` WRITE;
/*!40000 ALTER TABLE `aobh_businesshours` DISABLE KEYS */;
/*!40000 ALTER TABLE `aobh_businesshours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories`
--

LOCK TABLES `aok_knowledge_base_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories_audit`
--

LOCK TABLES `aok_knowledge_base_categories_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase`
--

DROP TABLE IF EXISTS `aok_knowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase`
--

LOCK TABLES `aok_knowledgebase` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_audit`
--

DROP TABLE IF EXISTS `aok_knowledgebase_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledgebase_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_audit`
--

LOCK TABLES `aok_knowledgebase_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_categories`
--

DROP TABLE IF EXISTS `aok_knowledgebase_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_categories`
--

LOCK TABLES `aok_knowledgebase_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int DEFAULT NULL,
  `y_field` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_scheduled_reports`
--

DROP TABLE IF EXISTS `aor_scheduled_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_scheduled_reports`
--

LOCK TABLES `aor_scheduled_reports` WRITE;
/*!40000 ALTER TABLE `aor_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_scheduled_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` longtext,
  `pdffooter` longtext,
  `margin_left` int DEFAULT '15',
  `margin_right` int DEFAULT '15',
  `margin_top` int DEFAULT '16',
  `margin_bottom` int DEFAULT '16',
  `margin_header` int DEFAULT '9',
  `margin_footer` int DEFAULT '9',
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0',
  `run_on_import` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rebuild`
--

DROP TABLE IF EXISTS `cache_rebuild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_rebuild` (
  `cache_key` varchar(255) DEFAULT NULL,
  `rebuild` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rebuild`
--

LOCK TABLES `cache_rebuild` WRITE;
/*!40000 ALTER TABLE `cache_rebuild` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_rebuild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int DEFAULT '-1',
  `email_reminder_time` int DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int NOT NULL AUTO_INCREMENT,
  `tracker_count` int DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`),
  KEY `idx_survey_id` (`survey_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','support@sky-soft.su'),('notify','fromname','SuiteCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.25'),('MySettings','tab','YTozMjp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjk6IkNhbXBhaWducyI7aToxMDtzOjU6IkNhbGxzIjtpOjExO3M6ODoiTWVldGluZ3MiO2k6MTI7czo1OiJUYXNrcyI7aToxMztzOjU6Ik5vdGVzIjtpOjE0O3M6MTI6IkFPU19JbnZvaWNlcyI7aToxNTtzOjEzOiJBT1NfQ29udHJhY3RzIjtpOjE2O3M6NToiQ2FzZXMiO2k6MTc7czo5OiJQcm9zcGVjdHMiO2k6MTg7czoxMzoiUHJvc3BlY3RMaXN0cyI7aToxOTtzOjc6IlByb2plY3QiO2k6MjA7czoxOToiQU1fUHJvamVjdFRlbXBsYXRlcyI7aToyMTtzOjE2OiJBTV9UYXNrVGVtcGxhdGVzIjtpOjIyO3M6OToiRlBfZXZlbnRzIjtpOjIzO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7aToyNDtzOjEyOiJBT1NfUHJvZHVjdHMiO2k6MjU7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7aToyNjtzOjE3OiJBT1NfUERGX1RlbXBsYXRlcyI7aToyNztzOjExOiJBT1JfUmVwb3J0cyI7aToyODtzOjE3OiJBT0tfS25vd2xlZGdlQmFzZSI7aToyOTtzOjI5OiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllcyI7aTozMDtzOjE0OiJFbWFpbFRlbXBsYXRlcyI7aTozMTtzOjc6IlN1cnZleXMiO30='),('portal','on','0'),('tracker','Tracker','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('Update','CheckUpdates','manual'),('system','name','SuiteCRM'),('system','adminwizard','1'),('notify','allow_default_outbound','0');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single',
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('2fbbf146-2e6e-1959-cbd3-685cc3adcda8','30485ff8-f05b-9f25-2795-685cc369f58c','2dca749b-da39-b519-3014-685cc3891464','Users',1,0,'2025-06-26 03:50:19','2025-06-26 03:50:19',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('30485ff8-f05b-9f25-2795-685cc369f58c','promisedshitland241@gmail.com','PROMISEDSHITLAND241@GMAIL.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2025-06-26 03:50:19','2025-06-26 03:50:19',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses_audit`
--

DROP TABLE IF EXISTS `email_addresses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_email_addresses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses_audit`
--

LOCK TABLES `email_addresses_audit` WRITE;
/*!40000 ALTER TABLE `email_addresses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_addresses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int unsigned DEFAULT NULL,
  `imap_uid` int unsigned DEFAULT NULL,
  `msgno` int unsigned DEFAULT NULL,
  `recent` tinyint DEFAULT NULL,
  `flagged` tinyint DEFAULT NULL,
  `answered` tinyint DEFAULT NULL,
  `deleted` tinyint DEFAULT NULL,
  `seen` tinyint DEFAULT NULL,
  `draft` tinyint DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `body_html` longtext,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('54106d1d-9843-3810-1007-678644356413','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Confirmed Opt In','Email template to send to a contact to confirm they have opted in.','Confirm Opt In','Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address','<p>Hi $contact_first_name $contact_last_name,</p>\r\n             <p>\r\n                Please confirm that you have opted in by selecting the following link:\r\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\r\n             </p>',0,NULL,NULL,'system'),('55bc0dd8-cbcc-6713-0e75-678644436a87','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\r\n					    </tbody></table>',0,NULL,NULL,'system'),('747f1db0-c9a3-f1f7-c9f8-6786441cd98e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,'system'),('7797dc76-2b56-89ed-e187-678644d086a3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','User Case Update','Email template to send to a SuiteCRM user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\r\n					     <p> </p>\r\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>',0,NULL,NULL,'system'),('b49135a4-7e1f-c4e2-0779-678644f59ec2','2013-05-24 14:31:45','2025-01-14 11:02:58','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n','\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n',0,NULL,NULL,'system'),('bd7c3500-10f5-5810-36d4-678644d7be96','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\r\nHere is your account username and temporary password:\r\nUsername : $contact_user_user_name\r\nPassword : $contact_user_user_hash\r\n\r\n$config_site_url\r\n\r\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system'),('bf6200de-c464-322c-2f28-67864414a779','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,'system'),('c090e21a-1161-bc77-9664-6786440b1f10','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\r\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\r\n\r\nClick on the link below to reset your password:\r\n\r\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system'),('c356807a-4804-2ad0-4993-67864422c85a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Two Factor Authentication email','This template is used to send a user a code for Two Factor Authentication.','Two Factor Authentication Code','Two Factor Authentication code is $code.','<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system'),('ee8b0cbb-aa8b-6547-8871-6786444e58e0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Description</td><td>$acase_description</td></tr>\r\n					    </tbody></table>',0,NULL,NULL,'system');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  KEY `idx_email_cat` (`category_id`),
  KEY `idx_email_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_oauth_connections`
--

DROP TABLE IF EXISTS `external_oauth_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_oauth_connections` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `client_id` varchar(32) DEFAULT NULL,
  `client_secret` varchar(32) DEFAULT NULL,
  `token_type` varchar(32) DEFAULT NULL,
  `expires_in` varchar(32) DEFAULT NULL,
  `access_token` text,
  `refresh_token` text,
  `external_oauth_provider_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_oauth_connections`
--

LOCK TABLES `external_oauth_connections` WRITE;
/*!40000 ALTER TABLE `external_oauth_connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_oauth_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_oauth_providers`
--

DROP TABLE IF EXISTS `external_oauth_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_oauth_providers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `connector` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` text,
  `url_authorize` varchar(255) DEFAULT NULL,
  `authorize_url_options` text,
  `url_access_token` varchar(255) DEFAULT NULL,
  `extra_provider_params` text,
  `get_token_request_grant` varchar(255) DEFAULT 'authorization_code',
  `get_token_request_options` text,
  `refresh_token_request_grant` varchar(255) DEFAULT 'refresh_token',
  `refresh_token_request_options` text,
  `access_token_mapping` varchar(255) DEFAULT 'access_token',
  `expires_in_mapping` varchar(255) DEFAULT 'expires_in',
  `refresh_token_mapping` varchar(255) DEFAULT 'refresh_token',
  `token_type_mapping` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_oauth_providers`
--

LOCK TABLES `external_oauth_providers` WRITE;
/*!40000 ALTER TABLE `external_oauth_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_oauth_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Taskssale_stage_task_c','sale_stage_task_c','LBL_SALE_STAGE_TASK','','','Tasks','enum',100,0,NULL,'2025-06-04 17:22:52',0,0,0,0,1,'true','sale_stage_task_list','','',''),('Tasksview_lid_c','view_lid_c','LBL_VIEW_LID','','','Tasks','enum',100,0,NULL,'2025-06-04 17:24:07',0,0,0,0,1,'true','person_view_c_list','','','');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

LOCK TABLES `fp_events_contacts_c` WRITE;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

LOCK TABLES `fp_events_leads_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `email_body_filtering` varchar(255) DEFAULT 'multi',
  `server_url` varchar(100) DEFAULT NULL,
  `connection_string` varchar(255) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int DEFAULT '143',
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `sentFolder` varchar(255) DEFAULT NULL,
  `trashFolder` varchar(255) DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT '0',
  `move_messages_to_trash_after_import` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `auth_type` varchar(255) DEFAULT 'basic',
  `protocol` varchar(255) DEFAULT 'imap',
  `is_ssl` tinyint(1) DEFAULT '0',
  `distribution_user_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `create_case_template_id` char(36) DEFAULT NULL,
  `external_oauth_connection_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint DEFAULT NULL,
  `failure_count` tinyint DEFAULT NULL,
  `job_delay` int DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int DEFAULT '-1',
  `email_reminder_time` int DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2clients`
--

DROP TABLE IF EXISTS `oauth2clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT '1',
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int DEFAULT NULL,
  `duration_amount` int DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2clients`
--

LOCK TABLES `oauth2clients` WRITE;
/*!40000 ALTER TABLE `oauth2clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2tokens`
--

DROP TABLE IF EXISTS `oauth2tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2tokens`
--

LOCK TABLES `oauth2tokens` WRITE;
/*!40000 ALTER TABLE `oauth2tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) DEFAULT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `reply_to_name` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `signature` text,
  `mail_sendtype` varchar(8) DEFAULT 'SMTP',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '25',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('227fba6e-e22f-bdb2-1694-678644c9a12f','system','system','1','SuiteCRM','support@sky-soft.su',NULL,NULL,NULL,'SMTP','other','localhost','25','support@sky-soft.su','63UVEKvslNE=',1,'0',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email_audit`
--

DROP TABLE IF EXISTS `outbound_email_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_outbound_email_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email_audit`
--

LOCK TABLES `outbound_email_audit` WRITE;
/*!40000 ALTER TABLE `outbound_email_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_email_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_contacts_1_c`
--

DROP TABLE IF EXISTS `project_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contacts_1_c`
--

LOCK TABLES `project_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `project_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int DEFAULT NULL,
  `time_finish` int DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int DEFAULT NULL,
  `percent_complete` int DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int DEFAULT '1',
  `task_number` int DEFAULT NULL,
  `estimated_effort` int DEFAULT NULL,
  `actual_effort` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_users_1_c`
--

DROP TABLE IF EXISTS `project_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_users_1_c`
--

LOCK TABLES `project_users_1_c` WRITE;
/*!40000 ALTER TABLE `project_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('11300101-0952-592f-5f14-6846eb36cdae','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('1160e70f-cb3d-1b93-79a6-6846eb6cc32f','surveyquestions_surveyquestionresponses','SurveyQuestions','surveyquestions','id','SurveyQuestionResponses','surveyquestionresponses','surveyquestion_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('128b1abd-e1a2-03b0-6064-6846eb8e662b','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12e56ae6-da19-8dcb-affa-6846eb8f455d','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('13cd7e38-b9b2-bf41-aaaf-6846eb9a18a6','templatesectionline_modified_user','Users','users','id','TemplateSectionLine','templatesectionline','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('14673aa1-a0ce-cbce-61fa-6846ebed870b','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('14833fc4-ecc5-5f0a-bbf7-6846eba16554','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('148d050c-0d33-c2ce-3987-6846eb40f544','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('14e71d79-a222-8f1c-67ba-6846ebe5041e','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('158152e8-cf3e-6f1e-18d4-6846ebf6e399','templatesectionline_created_by','Users','users','id','TemplateSectionLine','templatesectionline','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('158ec798-6cc0-6a39-0a03-6846ebb68965','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('15d20e29-ac7e-7d83-5de8-6846eb66f25b','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('161bc86d-9725-a23f-5a6b-6846eb29012f','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('16b35b04-7d9e-904e-87c8-6846eba4e499','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('17285a51-13f8-1411-b457-6846eb3f8254','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('17c8fa97-13c0-10dc-6eb7-6846ebaab8db','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18693e20-569d-8577-b2b2-6846eb49511e','aok_knowledgebase_modified_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18e37132-4d47-9a8c-1574-6846ebd2d7ce','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('19498b64-bb67-74d8-3931-6846eb22fd05','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a094131-9812-2b24-6c56-6846eb348e52','aok_knowledgebase_created_by','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a789ce7-81c4-8dc2-92e6-6846ebec7c71','securitygroups_aos_products','SecurityGroups','securitygroups','id','AOS_Products','aos_products','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Products',0,0),('1adeb51b-5ef1-e7f7-a247-6846eb0b6ecb','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1c03f78b-c9cc-46f9-4a7f-6846eb90dd73','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1c33f4d4-d073-41de-ef87-6846ebab6be9','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1c3b1c07-29cf-28dc-7f93-6846ebbcf0c8','aok_knowledgebase_assigned_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ca6b265-a060-e596-57b8-6846ebbfba2e','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1d4001ad-25c9-305b-2ae6-6846eb8edc35','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1db15434-6e62-d51f-5015-6846eb58d1f2','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1dd280e1-7d4d-e8ee-8378-6846ebf6a959','securitygroups_aok_knowledgebase','SecurityGroups','securitygroups','id','AOK_KnowledgeBase','aok_knowledgebase','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOK_KnowledgeBase',0,0),('1e0e0eea-0974-730b-fb55-6846ebb441ea','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ef1e2ef-acd8-b341-b78e-6846eb37afcc','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f33bbf7-c16a-e66d-6b9c-6846ebeb3de0','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('20988800-e781-af84-8cc9-6846eb39451d','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('20b3a1da-5263-1621-05a1-6846eb538638','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('220d1307-eb43-5825-7b86-6846ebc0651f','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('222b0a71-380c-27b9-47f8-6846ebdb19b7','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('24e70fca-7c5e-cb97-b070-6846eb67e896','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('26cf4635-8d76-9781-ab6d-6846ebbd68a7','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('281be33b-7cd1-8d20-7b8b-6846eb110242','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('28a73844-f9e4-60f1-003a-6846ebb229fa','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('295dd171-22ca-7ab7-f5da-6846eb5df493','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('29db31f2-2fc3-9e26-8737-6846eb4349be','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2a371bca-96db-a703-85d8-6846eb16f983','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b1e1fea-3161-7a41-5fd8-6846eba21e73','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b2765c6-024a-4672-8294-6846eb506bc4','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('2b5504c7-de16-8dea-c41b-6846eb1bf412','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2cc482ba-7614-de63-6716-6846ebd03ccb','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2ccd074a-2387-a34e-66b5-6846eb2afe7d','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d0e7741-55eb-3dfc-6ce7-6846ebb0674b','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('2e821ad0-db5e-2bd4-ea92-6846eb0dc8cd','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('2e94db3f-f8fd-3f10-910c-6846ebc14077','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('2ff5a3e9-7673-b7a6-2bda-6846ebfedd50','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('300d62b3-2afa-7410-62d3-6846ebad7192','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('31ac6a5c-c672-f6eb-7033-6846eb56e92f','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('32a8b226-d2cd-3bc3-523f-6846eb9364c2','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('32ed46c6-93dd-25be-3813-6846eb087b4b','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('34245abb-cd86-b9e9-0681-6846ebca3a1e','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34389a03-35ad-6dab-b14b-6846ebd27e58','surveyquestionoptions_modified_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('343f5e6e-ff29-fdc7-79dc-6846eb687fce','reminders_modified_user','Users','users','id','Reminders','reminders','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('349ec3cc-8198-4e7e-9c06-6846eb08c269','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34b3d2cb-4dfd-fa7c-57c5-6846eb94ca22','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35c32b69-68fe-7f13-0a41-6846eb3164f0','reminders_created_by','Users','users','id','Reminders','reminders','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35ce1957-3fe8-dd13-f959-6846eb8d5aa7','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('35d0c45e-bd13-4986-2b1b-6846ebc11438','oauth2tokens_modified_user','Users','users','id','OAuth2Tokens','oauth2tokens','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35d30b51-b61c-1360-d040-6846eb6db6c0','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('363e7de0-7b7a-6ecb-3029-6846eb89b870','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('36eeed98-3ba3-5db8-b51b-6846eb37d23b','reminders_assigned_user','Users','users','id','Reminders','reminders','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('36f481e4-ce26-9f88-cd2c-6846eb6550f5','surveyquestionoptions_created_by','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('374db06f-8746-ab05-fe91-6846eb819fe9','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('3755a7c6-0e81-82d4-6d41-6846ebf03ffc','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('37ab1477-6dcf-ae8d-42a3-6846eb2893b1','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('37c4d686-f0cf-210e-1c58-6846eb8e36b4','oauth2tokens_created_by','Users','users','id','OAuth2Tokens','oauth2tokens','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('386714ac-d149-2195-f7a9-6846eb136b0c','surveyquestionoptions_assigned_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('38c3f559-dba4-fc47-03e9-6846eb3ddc81','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('38c4ded8-e805-df1f-10a8-6846eb18a748','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3928187b-e56d-9458-dcf1-6846ebc8eee7','securitygroups_aor_reports','SecurityGroups','securitygroups','id','AOR_Reports','aor_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Reports',0,0),('39ece844-d404-6718-7cae-6846eb587eb9','securitygroups_surveyquestionoptions','SecurityGroups','securitygroups','id','SurveyQuestionOptions','surveyquestionoptions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionOptions',0,0),('39edfe82-6b06-163f-b678-6846ebc90dff','oauth2tokens_assigned_user','Users','users','id','OAuth2Tokens','oauth2tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a3e1ffb-8279-28b8-1e5d-6846eb65628c','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('3a770c61-9347-4226-6de4-6846ebbbdb97','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a9e9477-59bb-4d51-2010-6846eb465cdc','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_fields','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b18e73b-4f5d-de59-7fd0-6846eb439e1b','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3be8c165-57a5-dbbb-8ba2-6846ebebca57','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('3c1ad090-71a7-1354-e65a-6846eb998e5b','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d05f732-b74d-a314-e458-6846eb367b99','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d631ec0-aa97-89d0-e64b-6846eb1ab607','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('3db8d352-3ad8-dfbb-951d-6846ebc751e6','securitygroups_projecttask','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('3dbda221-5e80-1d4b-16c0-6846eb1fab66','aor_scheduled_reports_aor_reports','AOR_Reports','aor_reports','id','AOR_Scheduled_Reports','aor_scheduled_reports','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3dee4e4d-5006-0fc5-a5b1-6846eb46b32a','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauth_consumer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e02e94a-efdd-5ca6-a26d-6846eb2d5b55','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e5604fc-4d4e-58c0-3ffd-6846ebe883d5','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e86795c-e1be-1c89-0108-6846ebbc4f88','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f739826-4665-6455-39f9-6846eb5c380e','oauthkeys_created_by','Users','users','id','OAuthKeys','oauth_consumer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f986dfa-c2d1-208e-4e4f-6846eb621eb4','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('3fa9b2bc-d30f-edd2-84e6-6846eb1e9ccb','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('403d8f21-e338-7673-ee1c-6846eba14095','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('403eb5a6-9196-661a-7f40-6846eb4ccda8','securitygroups_aos_contracts','SecurityGroups','securitygroups','id','AOS_Contracts','aos_contracts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Contracts',0,0),('4041034c-d912-480e-cbf9-6846eb86a348','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('40bacbd4-3aab-c9de-322c-6846eb4a7c16','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauth_consumer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('410bbfcb-460f-49cf-91fe-6846eb094720','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('414d2ae6-6d40-3225-9338-6846ebbf5003','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('41ace32d-cf69-56dc-980c-6846eb7e078c','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('422bf959-e448-dc97-bd95-6846eb935683','aos_contracts_tasks','AOS_Contracts','aos_contracts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('4257a297-b871-e9db-afc3-6846eb2a0483','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('42f19cbd-691b-5017-5079-6846ebdfab8b','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('439edf35-d39f-a628-9052-6846ebafe370','aos_contracts_notes','AOS_Contracts','aos_contracts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('43bd4179-b8d9-daa5-3da6-6846ebbfa275','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('446c2c41-d969-6a56-9536-6846ebc4948e','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('44f221d8-e60f-899e-7663-6846ebac104c','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('45135bcf-09ad-9ad6-88db-6846eb88a256','aos_contracts_meetings','AOS_Contracts','aos_contracts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('45d7e580-b720-3b3a-a110-6846eb762e9a','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('46720959-f5bb-ecb9-1d1d-6846ebc4ea9a','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('469468b0-1e21-33d6-aa05-6846ebcca23f','aos_contracts_calls','AOS_Contracts','aos_contracts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('46c8060c-67a9-4bf9-e591-6846eb91d32e','securitygroups_aow_workflow','SecurityGroups','securitygroups','id','AOW_WorkFlow','aow_workflow','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOW_WorkFlow',0,0),('474cbd57-a738-e86c-833c-6846ebef0a18','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('47e32fae-3103-3aec-4e24-6846eb435ecc','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4808a40a-1faa-811f-091f-6846eb0ee4dd','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('48cac330-2139-d927-a771-6846eb00467b','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('48d0675c-ba22-aea2-f7ac-6846eb0908d1','aos_contracts_aos_line_item_groups','AOS_Contracts','aos_contracts','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('495f200d-1170-0d65-cb58-6846ebca9024','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a047669-9233-ddb3-2c1f-6846eb562e28','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('4a0e3013-4bf5-8974-b26a-6846ebc532b0','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b797d52-0692-f96b-3568-6846ebbff0d8','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('4bee39a1-a9b1-8c36-ecd9-6846eb17bbdd','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4ceb9e34-7a01-61d9-259d-6846eb827ba3','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('4d70d238-ebf8-68e7-a5cb-6846ebcc5a8b','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4db91371-2a03-27ff-f57f-6846ebd086f4','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4dd0b8fc-6c07-ebe4-5e81-6846eb2c21be','reminders_invitees_modified_user','Users','users','id','Reminders_Invitees','reminders_invitees','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e7abab3-87f2-81ec-b906-6846eb991822','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('4f935715-9330-7f3a-e36b-6846ebb9d593','reminders_invitees_created_by','Users','users','id','Reminders_Invitees','reminders_invitees','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f991a3d-28d3-1b27-203e-6846ebca1a16','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4fd9911e-a192-8aa5-a626-6846eb3a53c0','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4fde043d-ac8a-3656-edfd-6846ebead1bf','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('5107c2a2-7200-404f-b5ce-6846ebae012b','reminders_invitees_assigned_user','Users','users','id','Reminders_Invitees','reminders_invitees','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51125424-ebab-656a-41d5-6846eb28dc1a','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('516eb143-e26b-a375-de04-6846eb399747','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('5284f8a5-b0c3-7d1d-4c6d-6846eb2b3992','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('52d10b9d-3758-a6bd-0650-6846eba5675b','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('53a01cd1-453a-f303-ef49-6846ebfef65b','securitygroups_inboundemail','SecurityGroups','securitygroups','id','InboundEmail','inbound_email','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','InboundEmail',0,0),('545d0433-6523-adf0-c3eb-6846ebd6723f','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('5530104a-471e-8370-f911-6846ebb7655c','inbound_emails_distribution_user','Users','users','id','InboundEmail','inbound_email','distribution_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('55e20248-1b81-c7d8-1277-6846ebb6b609','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('55fd0f15-ee66-d0f8-2e85-6846eb000633','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('56a3203c-78de-3412-ba06-6846eb215411','inbound_emails_autoreply_email_templates','EmailTemplates','email_templates','id','InboundEmail','inbound_email','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('576be50b-7ad9-b963-ac93-6846eb800cd2','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('582279be-b04b-109f-7827-6846eba82655','inbound_emails_case_email_templates','EmailTemplates','email_templates','id','InboundEmail','inbound_email','create_case_template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('58a64328-6414-7887-1ba7-6846eba29351','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('59979090-1db0-0ad7-f367-6846eb8411a7','inbound_emails_external_oauth_connections','ExternalOAuthConnection','external_oauth_connections','id','InboundEmail','inbound_email','external_oauth_connection_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5a25765e-496f-c859-6f98-6846eb54b65f','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('5a30014e-c34e-b094-f2fd-6846eb9be818','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ab594ee-4cba-f676-b767-6846ebee702c','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('5b0976f9-6481-c381-f1c6-6846ebcdf679','inbound_outbound_email_accounts','OutboundEmailAccounts','outbound_email','id','InboundEmail','inbound_email','outbound_email_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b5279d6-2633-7641-1f8a-6846eb5d7c66','oauth2clients_modified_user','Users','users','id','OAuth2Clients','oauth2clients','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5bdba5af-b528-fa5b-1854-6846eb44ef6d','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('5c686668-c792-c2d6-4081-6846eb25bb9d','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5c7ee258-20c5-6550-cf0c-6846eb3be046','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('5d0c55d2-a6cb-91de-673a-6846eb40235c','oauth2clients_created_by','Users','users','id','OAuth2Clients','oauth2clients','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5d86a599-d3d2-5440-3179-6846eb25950c','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('5db4564b-a6cb-0ec6-d3b8-6846eb9b5ea6','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5dbb069b-b6cf-3e7c-4bb2-6846eb84652c','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5df527b0-3381-6827-25e1-6846eb7cc210','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('5e7e659c-3f0c-e929-552c-6846eb1a22d2','oauth2clients_oauth2tokens','OAuth2Clients','oauth2clients','id','OAuth2Tokens','oauth2tokens','client',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5efaf094-dc4d-8001-ef51-6846eb1ca2ee','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('5f7d4a19-f1bd-8db5-2839-6846ebf9ce34','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ff2cbd2-796c-772f-1901-6846eb19e395','oauth2clients_assigned_user','Users','users','id','OAuth2Clients','oauth2clients','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6079f818-3d0e-efb7-88c1-6846eb7d388a','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('60ef9e02-c97e-8fb3-a409-6846ebf5b2e6','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('61ed1d2d-fee0-1667-5c38-6846eb580856','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('63238105-51ab-d61b-9efd-6846eb0be8d0','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('64a7fca9-f79f-8627-b753-6846eb75ce3c','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('65a73d98-1324-8592-f1b2-6846eba2237d','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('66114e8f-1004-8b18-a1da-6846ebcf30d3','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('6629541c-f72e-0b32-1d75-6846eb6866a8','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67642f6c-bb41-ce38-f64c-6846eb68936b','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67857c36-38b5-b9c9-be55-6846eb8c2493','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('67c527f5-d536-9deb-4f9c-6846ebfa0644','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('68d6f5f2-954f-46e9-7541-6846eb60d127','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6907d46c-262a-3082-d0d1-6846eb7f763a','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('6a55fd69-ac7e-c854-e2c5-6846eb298a6d','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('6a91ceef-6cde-d35a-42fd-6846eb498ea4','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('6bc80fe2-f1e9-1c10-7e9a-6846eb4a2de9','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c2fa346-a093-113d-b28b-6846ebd6143e','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('6d3c4d84-d370-8812-72df-6846eb0112a1','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6d6bcc64-4593-5fe1-c115-6846eb7401b5','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('6da465c9-995b-850c-81b9-6846ebe92878','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('6da602ce-1e7e-0733-abfe-6846eb656bcd','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6ebd7eff-a20b-2cfb-d973-6846eb0cee94','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6ed96f3b-22a6-7dc1-2006-6846eb75d597','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('6ef34d60-f1b9-d8e8-f6e6-6846eb0e3a1b','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('701bb6b0-f4c6-7542-f749-6846eb3106ba','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('702e6e6a-fc1c-7c13-5007-6846eb2d7c45','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('707126be-da33-c3ac-50a2-6846ebcf7c28','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7109008d-6a3d-2066-407b-6846ebb24623','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('718dc6b0-1665-bcf3-843f-6846eb823904','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('71b66938-4f38-38c8-96d2-6846ebc80f31','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7240421d-92c5-6f17-b7bc-6846ebc977f3','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','job_queue','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72df3c8c-108d-ca17-a225-6846eb43696b','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72e1e7bb-c3a1-cee1-ac4d-6846ebe2de08','campaign_notes','Campaigns','campaigns','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Campaigns',0,0),('73014b5b-18e1-f595-c5c8-6846eb339716','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('737dd9b0-4d48-0e43-da7e-6846eb3c6ee5','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7487c7e6-f715-9930-cf12-6846eb378dfe','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7494712b-b33a-b3d0-5e15-6846ebb4eca3','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7498258c-0317-3168-e17e-6846ebfed5ce','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74be17d6-8124-8034-6902-6846eb4d68d3','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('75595a9b-927f-b36a-4900-6846eb84d1a4','am_projecttemplates_modified_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('757f0bab-5187-0ba0-a617-6846eb832dc2','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76043f9f-16a3-5d0a-51f6-6846eb416605','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('760648f3-2572-27eb-b33d-6846eb408e81','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7631d188-b5a3-f11f-570c-6846eb886e67','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7636b7d0-ec72-cbb6-79d4-6846eb31cc80','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('76542058-76d6-ad54-0d17-6846eb5aa2c4','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('771b6e4c-af34-cff6-70cb-6846eb2bf7ea','am_projecttemplates_created_by','Users','users','id','AM_ProjectTemplates','am_projecttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('774561a2-97b8-0c5e-1cfd-6846eb89598f','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('77856a40-4acf-0f2d-d242-6846ebc299d4','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77acee8e-1dec-9c51-7b14-6846eb3c13d8','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('77c11c10-bbde-8644-2031-6846ebf9337a','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77e86fcf-b2bb-422e-b7e2-6846ebee78c9','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('787c6a4e-42e2-3559-960f-6846eb290abe','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7895c198-d424-7751-a645-6846ebcd6a62','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7899e6b7-05c6-081c-3d83-6846eb3af3c2','am_projecttemplates_assigned_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78c054de-8311-24b1-15a9-6846eb2f18af','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('78dc68b3-b76b-f9fe-4c9e-6846eba91cc9','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('78f73190-7f4e-a1c1-e2f4-6846ebd1fbab','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('79277061-3578-72cf-82c3-6846eb39e7cb','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('79598fc8-1830-b29c-b2b0-6846ebb00cdd','securitygroups_jjwg_maps','SecurityGroups','securitygroups','id','jjwg_Maps','jjwg_maps','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Maps',0,0),('7a1d6a47-c95f-d439-609b-6846eb0c6add','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('7a300bb6-5367-c51d-ccba-6846ebdffc06','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7a5a89cf-db6b-7f92-e829-6846eb668da1','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('7a6e75fc-b292-d38d-20ee-6846eb56c0f3','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('7ac974dd-2dea-035e-b360-6846eb479b1b','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7ad0ed0d-6f1f-8238-7f27-6846eb1f8c58','securitygroups_aos_invoices','SecurityGroups','securitygroups','id','AOS_Invoices','aos_invoices','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Invoices',0,0),('7adbb4f3-9d8a-a1c9-34da-6846eb476c3a','jjwg_Maps_accounts','jjwg_Maps','jjwg_Maps','parent_id','Accounts','accounts','id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('7b9189bd-f318-4565-2a3f-6846eba13896','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('7bc4b594-aa13-0146-dd8a-6846eb83eca7','surveyresponses_campaigns','Campaigns','campaigns','id','SurveyResponses','surveyresponses','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7beb1c1b-e2be-4d81-ee21-6846eb3f107d','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('7bebcd3b-40a1-fb0f-1c37-6846eb171850','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c4368de-aabe-f425-5472-6846eb14c8cd','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c46cdf3-f08b-9da2-589e-6846eb6b6884','jjwg_Maps_contacts','jjwg_Maps','jjwg_Maps','parent_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('7c4de7b7-68ce-f628-c2d9-6846eb1f8af3','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d413e7d-b677-463e-d748-6846eb6d0a2b','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('7d61739e-9e6e-321f-b1d2-6846eb637f50','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d6280d5-c6d8-7b9a-25df-6846eba0878f','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7db9a9d6-8c3e-24d6-7a66-6846ebef31f1','aos_invoices_aos_line_item_groups','AOS_Invoices','aos_invoices','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7dbe9220-2474-cca4-561c-6846eb3489b2','jjwg_Maps_leads','jjwg_Maps','jjwg_Maps','parent_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('7dbfdc17-95f3-3bde-d5c4-6846ebe8f9ab','securitygroups_fp_events','SecurityGroups','securitygroups','id','FP_events','fp_events','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_events',0,0),('7dc6368a-fade-08a4-63c4-6846ebedc079','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('7eb9efbf-a961-3777-eb99-6846ebd81490','aok_knowledgebase_categories','AOK_KnowledgeBase','aok_knowledgebase','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','id','aok_knowledgebase_categories','aok_knowledgebase_id','aok_knowledge_base_categories_id','many-to-many',NULL,NULL,0,0),('7f531f76-c898-6d27-67bd-6846eb614349','cases_created_contact','Contacts','contacts','id','Cases','cases','contact_created_by_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f7e4aa2-b7c3-1674-a25b-6846eba403fb','jjwg_Maps_opportunities','jjwg_Maps','jjwg_Maps','parent_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7ff1ef49-1e20-8056-3c3c-6846eb4ebae8','am_projecttemplates_project_1','AM_ProjectTemplates','am_projecttemplates','id','Project','project','id','am_projecttemplates_project_1_c','am_projecttemplates_project_1am_projecttemplates_ida','am_projecttemplates_project_1project_idb','many-to-many',NULL,NULL,0,0),('816798b8-8fe7-5995-999e-6846eb6cac38','jjwg_Maps_cases','jjwg_Maps','jjwg_Maps','parent_id','Cases','cases','id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('8171cec7-5d16-c20e-2131-6846eb71980d','am_projecttemplates_contacts_1','AM_ProjectTemplates','am_projecttemplates','id','Contacts','contacts','id','am_projecttemplates_contacts_1_c','am_projecttemplates_ida','contacts_idb','many-to-many',NULL,NULL,0,0),('82671f50-bb64-ca94-8297-6846eb2ba7ec','surveyresponses_modified_user','Users','users','id','SurveyResponses','surveyresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82e40ab2-d072-9599-2e6d-6846eb50c364','am_projecttemplates_users_1','AM_ProjectTemplates','am_projecttemplates','id','Users','users','id','am_projecttemplates_users_1_c','am_projecttemplates_ida','users_idb','many-to-many',NULL,NULL,0,0),('82e5e7f8-1938-d2bf-5ebe-6846eb588211','jjwg_Maps_projects','jjwg_Maps','jjwg_Maps','parent_id','Project','project','id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('82f75567-0829-e899-84a8-6846eb00c004','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8455eee3-bb0b-cef7-3163-6846ebcb9a5c','jjwg_Maps_meetings','jjwg_Maps','jjwg_Maps','parent_id','Meetings','meetings','id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('8456d4b6-ad2a-4288-3031-6846eb80d4a7','am_tasktemplates_am_projecttemplates','AM_ProjectTemplates','am_projecttemplates','id','AM_TaskTemplates','am_tasktemplates','id','am_tasktemplates_am_projecttemplates_c','am_tasktemplates_am_projecttemplatesam_projecttemplates_ida','am_tasktemplates_am_projecttemplatesam_tasktemplates_idb','many-to-many',NULL,NULL,0,0),('84c7016d-d331-d48b-f17a-6846eb392a10','surveyresponses_created_by','Users','users','id','SurveyResponses','surveyresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('85d50fbd-dffd-af6c-eade-6846eb0a6942','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('85d5c67b-81b6-f107-fd98-6846eb1299d5','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('85ddfd68-3aa4-7b10-8d0a-6846eb4d2b48','jjwg_Maps_prospects','jjwg_Maps','jjwg_Maps','parent_id','Prospects','prospects','id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('86482138-af7c-c091-8348-6846eb42dedb','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('86cd944a-c52a-8daa-fbdf-6846eb9f7d2d','surveyresponses_assigned_user','Users','users','id','SurveyResponses','surveyresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87470e8e-cbb6-78a2-9ab1-6846ebf7b7f8','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('87bb380c-6ff8-29dd-e48d-6846ebd50a02','groups_aos_product_quotes','AOS_Line_Item_Groups','aos_line_item_groups','id','AOS_Products_Quotes','aos_products_quotes','group_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8807d3f9-acec-c384-25b4-6846ebc84d35','securitygroups_surveyresponses','SecurityGroups','securitygroups','id','SurveyResponses','surveyresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyResponses',0,0),('88bd5f1a-5829-8967-96d7-6846ebde3121','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('8981f13d-7751-738d-2eb6-6846eb2e0a4e','surveyresponses_surveyquestionresponses','SurveyResponses','surveyresponses','id','SurveyQuestionResponses','surveyquestionresponses','surveyresponse_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89f45d66-1850-c9c5-a40c-6846eb2b9e1f','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('8a18e105-f550-6811-2b84-6846ebafa99e','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8aef220f-c571-6b4d-c36d-6846eb325a2f','surveyresponses_contacts','Contacts','contacts','id','SurveyResponses','surveyresponses','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8b789ca2-2e39-30cc-b60d-6846eb389d20','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('8b8bbbfb-0e2f-b885-2959-6846eba467d3','securitygroups_outboundemailaccounts','SecurityGroups','securitygroups','id','OutboundEmailAccounts','outbound_email','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','OutboundEmailAccounts',0,0),('8c665383-e88a-9f6b-e2e9-6846ebf00d35','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8c7c1d6a-f7f2-28b3-c69d-6846ebd2d452','surveyresponses_accounts','Accounts','accounts','id','SurveyResponses','surveyresponses','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ce4d2c4-b66d-0c09-c73e-6846eb0ce85d','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('8cee0556-86ab-407d-e59f-6846ebf35144','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8d48c941-ab00-7714-d1db-6846eb577d14','outbound_email_owner_user','Users','users','id','OutboundEmailAccounts','outbound_email','user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ded022e-4885-2994-3cff-6846eb0c80a6','aor_charts_aor_reports','AOR_Reports','aor_reports','id','AOR_Charts','aor_charts','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e9eb6df-6d46-a255-d001-6846eb741d47','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('8f9324fa-4e5f-38cc-3a3a-6846ebd05bf8','outbound_email_modified_user','Users','users','id','OutboundEmailAccounts','outbound_email','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('901b2773-0fef-8111-125f-6846eb7fee5c','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('91196689-2f9a-341e-2fce-6846eb1f3c2c','outbound_email_created_by','Users','users','id','OutboundEmailAccounts','outbound_email','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('91ccdfe5-8222-c15b-80ac-6846eb8319a1','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('92c45cf6-3505-5bc6-8dba-6846eb55f39b','outbound_email_assigned_user','Users','users','id','OutboundEmailAccounts','outbound_email','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('933eb24b-4ca4-14dc-dcf9-6846ebd1d459','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('94bb65b5-0447-df8c-ebcf-6846eb823423','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('95260829-b8cd-06d8-e57a-6846eba811ee','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('962bfabd-0253-de13-4ef6-6846eb4c068e','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('97a05799-c6db-bac0-f0b5-6846ebba79d3','project_contacts_1','Project','project','id','Contacts','contacts','id','project_contacts_1_c','project_contacts_1project_ida','project_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('984e05b4-eb79-1911-1150-6846eb8198ef','surveyquestions_modified_user','Users','users','id','SurveyQuestions','surveyquestions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('991e5748-852d-02ab-7f6b-6846eb9417cb','project_users_1','Project','project','id','Users','users','id','project_users_1_c','project_users_1project_ida','project_users_1users_idb','many-to-many',NULL,NULL,0,0),('9acca608-b1ee-39f6-b0c3-6846ebb4f487','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('9c3e9fe7-a824-fce0-2168-6846ebe7ce24','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9c422c15-8a41-9dd7-5740-6846eba2c8a6','am_tasktemplates_modified_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9cc3486f-75ec-df39-ae30-6846ebe8869f','prospectlists_assigned_user','Users','users','id','ProspectLists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d22c733-87df-6faf-17f2-6846ebdb3423','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('9e190104-56d3-c4ee-6fdc-6846eb8a5b87','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e351853-42e5-3119-889f-6846ebe2adb2','am_tasktemplates_created_by','Users','users','id','AM_TaskTemplates','am_tasktemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e8d7c62-9aea-85e8-259d-6846ebc474a9','securitygroups_prospectlists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('9ebaa9b7-cfc6-8d12-6196-6846ebfa8433','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('9f8940e1-2e4a-bef9-6e13-6846eb6418f8','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9fec6e75-4db5-2d48-af32-6846eb5c321c','am_tasktemplates_assigned_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a04dcd9b-62af-af75-eb8f-6846eb9e8d8c','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('a14bc47d-89ba-5e42-8e71-6846eb9fd055','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('a1e6a72b-3f25-5065-28e2-6846eb3228cf','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a227065f-6d59-feba-a495-6846eb3e8ea7','surveyquestionoptions_surveyquestionresponses','SurveyQuestionOptions','surveyquestionoptions','id','SurveyQuestionResponses','surveyquestionresponses','id','surveyquestionoptions_surveyquestionresponses','surveyq72c7options_ida','surveyq10d4sponses_idb','many-to-many',NULL,NULL,0,0),('a24f0fb5-16ca-5f46-415e-6846eb37fb82','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a306e226-3bc9-5ecd-9747-6846eb85b88c','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('a3b772c3-2982-0fab-0b47-6846eb9172eb','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a3d28ce7-a84d-d415-8568-6846eb53739b','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4b1c096-8d53-16d9-af85-6846ebe55257','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('a528606b-ee78-2de8-e6a9-6846eb88140f','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a5480ab2-17f9-8211-786c-6846eba7a37e','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a5489de1-dce9-b807-6b44-6846eb995d17','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a5e9d582-0157-86d3-932a-6846ebae12dc','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a622d3c7-5082-4805-dd7b-6846eb8cb1fb','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a6800f8c-d295-c04e-bf42-6846eb8a73b7','securitygroups_emailmarketing','SecurityGroups','securitygroups','id','EmailMarketing','email_marketing','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailMarketing',0,0),('a69f8932-e18a-b0e4-62dd-6846eb00c632','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('a6fdd59b-ac87-2ad9-6a91-6846eb074c6f','securitygroups_fp_event_locations','SecurityGroups','securitygroups','id','FP_Event_Locations','fp_event_locations','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_Event_Locations',0,0),('a71e5ffa-0590-baa0-aa8f-6846eb2766fc','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7987a44-2a65-99bf-c82f-6846eb10c338','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a81c94fa-348d-7c9e-0216-6846ebb0edbb','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('a877ba29-1f98-4ee5-2d3f-6846eb5cd819','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('a8915cab-ec9b-8b76-beb6-6846eb6b1f5f','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a91cfd5e-b9b3-4d01-3ff7-6846eb981836','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a93bfb42-d20e-f3a9-73c7-6846eb2b4751','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a98f3588-5d4c-f85a-92bf-6846eb537d47','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a9e9ebb4-2ccf-aa36-4dc9-6846eb356f2d','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('aa054756-1ebf-34f9-6f6e-6846eb3b9c13','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('aa887b1f-80f5-f546-8f44-6846eb44b002','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ab8473f2-8b67-4cc1-2eea-6846ebe2c02b','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('abbe4043-7fd3-4054-ff82-6846eb9fe4db','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('ac0a82e8-c433-c8b7-dd8b-6846eb41aa35','surveys_modified_user','Users','users','id','Surveys','surveys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ac7fed57-e41a-82d8-b3a5-6846ebe35696','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('acf4f54d-5b38-67a8-5759-6846eb3a4a94','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('acf69730-1f5f-93e3-7732-6846ebe65437','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('ad53a9c9-51e2-e1d7-4dc6-6846eb3c1fbc','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('adda9787-fe49-8f25-9dbc-6846ebcc1bb7','surveys_created_by','Users','users','id','Surveys','surveys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ae1ead91-ca79-90d9-2b5f-6846eb8503a5','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ae6db5c1-229e-f4c8-5365-6846eb2a1309','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('ae735c6a-b607-3385-0a5c-6846eb574464','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('aed1b3b3-2dc3-180d-8011-6846eb5ef52b','securitygroups_aos_pdf_templates','SecurityGroups','securitygroups','id','AOS_PDF_Templates','aos_pdf_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_PDF_Templates',0,0),('aedbfa88-e991-3bbb-7ef0-6846eb05273c','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('af0f7bbd-0607-9f2b-a530-6846eb939444','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('af515878-c2b1-0b57-6e14-6846ebae3df2','surveys_assigned_user','Users','users','id','Surveys','surveys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('afe6d9af-324c-1ec2-72c8-6846eb934f42','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('afe8101b-cfb1-b629-da34-6846ebf1f527','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b00b0154-2e0d-d69f-b5ee-6846eb43b3eb','surveyquestions_created_by','Users','users','id','SurveyQuestions','surveyquestions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b07350fd-57a4-2890-8443-6846ebd95a42','alerts_modified_user','Users','users','id','Alerts','alerts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b08160a9-d137-d0a5-b275-6846ebd8062c','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b08b9efc-6bfa-1317-59a0-6846eb40b708','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b0b2502d-90d7-ce6b-f888-6846eb69ce03','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b15a6cec-2977-fb2e-e894-6846ebebfae9','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('b1633498-6a77-52a0-6ca2-6846eb46ad8e','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b1842df7-4a14-80e6-0649-6846eb80d606','securitygroups_surveys','SecurityGroups','securitygroups','id','Surveys','surveys','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Surveys',0,0),('b1ffd9e4-2af5-048a-0303-6846ebf8e62b','securitygroups_aos_quotes','SecurityGroups','securitygroups','id','AOS_Quotes','aos_quotes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Quotes',0,0),('b21dd905-62ce-2802-de0d-6846eb494ea1','alerts_created_by','Users','users','id','Alerts','alerts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b2e4c3af-b242-f2bc-861a-6846eb243714','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b2ff3f50-0eb4-873b-45da-6846eb80b0d0','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b3121ebf-2d51-9954-1487-6846ebb9b226','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b375345d-98cc-cc34-034a-6846eb4b7a91','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b393e1b0-e574-62eb-55e6-6846eb9b790c','alerts_assigned_user','Users','users','id','Alerts','alerts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b3b2db58-68a1-cecb-2f12-6846eb45e1cc','surveys_surveyquestions','Surveys','surveys','id','SurveyQuestions','surveyquestions','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b44d96d2-accf-9a15-e800-6846eb605c53','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b4507ff3-2663-3ca8-736b-6846eba5e438','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b4a94273-02df-0f3c-7769-6846ebe3d71b','aos_quotes_aos_line_item_groups','AOS_Quotes','aos_quotes','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b4ef89e0-8dfd-12fd-b155-6846eb2fa1c0','securitygroups_jjwg_markers','SecurityGroups','securitygroups','id','jjwg_Markers','jjwg_markers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Markers',0,0),('b52d8d58-6acd-5be7-cc7e-6846ebd33cfc','surveys_surveyresponses','Surveys','surveys','id','SurveyResponses','surveyresponses','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b6a5e7a6-a4b9-c04a-2256-6846ebd32d0e','surveys_campaigns','Surveys','surveys','id','Campaigns','campaigns','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b6f7b28b-489b-f4bb-ba2a-6846eb4bc785','externaloauthconnection_modified_user','Users','users','id','ExternalOAuthConnection','external_oauth_connections','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b8966c07-6c10-9360-4929-6846eb5b6d16','externaloauthconnection_created_by','Users','users','id','ExternalOAuthConnection','external_oauth_connections','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b8ead24e-40cd-c099-e4ad-6846eb291b55','aobh_businesshours_modified_user','Users','users','id','AOBH_BusinessHours','aobh_businesshours','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ba50c6c8-da61-2431-48b6-6846eb218ce1','securitygroups_externaloauthconnection','SecurityGroups','securitygroups','id','ExternalOAuthConnection','external_oauth_connections','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ExternalOAuthConnection',0,0),('baacb95a-ce33-a0b8-03e3-6846eb3e617e','favorites_modified_user','Users','users','id','Favorites','favorites','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bac2e3cb-8f3c-1af0-37d7-6846eb494953','aobh_businesshours_created_by','Users','users','id','AOBH_BusinessHours','aobh_businesshours','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bbc0adee-1532-819e-edea-6846ebc87e7a','external_oauth_connections_external_oauth_providers','ExternalOAuthProvider','external_oauth_providers','id','ExternalOAuthConnection','external_oauth_connections','external_oauth_provider_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc3613ee-263d-082a-6ffc-6846ebf761dd','favorites_created_by','Users','users','id','Favorites','favorites','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bdb144ec-c3fd-fdfe-6e00-6846eb9c405b','favorites_assigned_user','Users','users','id','Favorites','favorites','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c068e6e8-ca19-8cd6-386f-6846eb59d475','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c1317a84-d6b2-aeb9-2dc9-6846eb7c2272','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c23978c0-3d1f-90d6-cf6e-6846eb369fe0','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c28c644c-765a-63ba-c175-6846ebbaaddd','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c2fb1652-9835-872a-99a1-6846eb698405','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c3aad83b-ee86-b9c5-fa4c-6846eb52fe8b','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c429f853-b6f0-c585-bd49-6846eb01a18d','users_users_password_link','Users','users','id',NULL,'users_signatures','user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c469744b-15c6-330e-1e1e-6846ebbc5fa8','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c5601632-cf82-1236-ccc4-6846eb7c3d67','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('c5aea043-ec42-ad3a-25b6-6846ebb54ebe','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('c5e76c30-8105-418d-b410-6846eb8f8120','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('c6bb07af-11b6-7dd2-a961-6846ebf8af2e','aor_scheduled_reports_modified_user','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c6dedd16-ee84-07b2-1d1a-6846eb70d1a8','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('c716a841-d4b7-880a-b73a-6846eb6b72c4','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('c75a030b-19ff-ec7e-c569-6846ebd6edfe','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7c30da8-a30d-6e38-85a2-6846ebade324','surveyquestions_assigned_user','Users','users','id','SurveyQuestions','surveyquestions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c88beee4-786a-6266-9e2a-6846eb7c08c7','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('c8bc6d8b-059f-1297-5964-6846eb99fc13','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('c9d49d03-3cab-9dc6-35e1-6846eb62d875','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('ca498dc7-b781-b6c1-2ce9-6846eb4235bc','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('cb1c3e20-a064-6c01-5b82-6846eb5c922d','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cb7b7145-d8ab-270b-1108-6846eb04def5','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('cbba3448-5dee-da57-14d3-6846ebe6c032','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('ccb2b443-d87e-b58b-c2cd-6846eb74949a','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('ccbb2e50-618a-111b-0b0c-6846eb8a3ccf','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ccfa3489-6a58-b8db-1106-6846ebac2eeb','emails_aos_contracts_rel','Emails','emails','id','AOS_Contracts','aos_contracts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','AOS_Contracts',0,0),('ce30b81f-4313-82b6-b56d-6846eb3a599d','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('ce4ee676-3d31-af74-dcf4-6846ebf8e583','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ce6c2a08-5f63-0340-c0ca-6846eb0b8461','emails_meetings_rel','Emails','emails','id','Meetings','meetings','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Meetings',0,0),('cfa4bd0f-b2f2-ea00-e21a-6846eb27aaf6','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('cfc6583f-aed1-415c-93cc-6846eb6093b7','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d11c70b0-ab70-0790-1848-6846ebd2e307','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('d3dacfb4-6107-49c1-56bb-6846ebce5cb7','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d4b3afed-ebad-04bc-5701-6846eb9523e3','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d4d223e1-4ffa-6086-30e5-6846eb7d5e50','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d65cbfd7-aaf0-481f-28e6-6846ebf2d346','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d6e893ae-647d-8ce4-91ab-6846eb2f7610','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d7ccfd46-1914-2bcb-c2ef-6846eb8ffd5b','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d8664ac2-33d7-8b8c-5abf-6846eb7c40f3','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d893740f-8661-6dd9-ea76-6846eb29c598','surveyquestionresponses_modified_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('da4af6fb-ff76-bcd2-cf52-6846ebc92886','surveyquestionresponses_created_by','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('da4bdae0-a236-65fa-bae9-6846eb878e47','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('daa3d9e5-5aa7-34de-0f43-6846eb1062dc','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('db180f43-68f6-8619-0d62-6846ebc99627','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('db1a5d75-438a-f1e9-bf08-6846eb3db056','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dbc5a5cf-8e20-eb95-7257-6846ebdfd082','surveyquestionresponses_assigned_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dc186a13-b8b7-5090-7ea7-6846eb90df15','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dcf6ec3f-147c-4f68-dcc4-6846eb2b2d8f','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dd2b01a2-4668-c751-54b5-6846eb036302','securitygroups_aos_product_categories','SecurityGroups','securitygroups','id','AOS_Product_Categories','aos_product_categories','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Product_Categories',0,0),('dd727d3e-58f0-4a26-5452-6846eb76161c','securitygroups_surveyquestionresponses','SecurityGroups','securitygroups','id','SurveyQuestionResponses','surveyquestionresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionResponses',0,0),('ddce0bdc-29b8-3d3b-d164-6846eb52ed78','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('de67f54c-e22e-9726-2844-6846eb22fadf','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('df28bb92-548f-ee6e-69c5-6846eb965067','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('df4103e9-1010-e68b-e356-6846eb448263','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dfa96336-a943-45ce-692a-6846eb4610a3','securitygroups_jjwg_areas','SecurityGroups','securitygroups','id','jjwg_Areas','jjwg_areas','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Areas',0,0),('dfe182ba-a7b1-8e93-409c-6846eb73e649','aok_knowledge_base_categories_modified_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e0474dcb-a484-4437-2e96-6846eb7ff29b','externaloauthprovider_modified_user','Users','users','id','ExternalOAuthProvider','external_oauth_providers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e0b6397e-f77d-e9f6-7db4-6846ebe5fbbb','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e11d39c0-5add-9a32-9a6e-6846eb61cdb9','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e19296d4-a430-a361-4408-6846ebc26829','aok_knowledge_base_categories_created_by','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e2b79b6b-866d-e704-6970-6846eb56a71e','externaloauthprovider_created_by','Users','users','id','ExternalOAuthProvider','external_oauth_providers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e2c9d7ba-5496-48e4-7218-6846ebb1f02c','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e3030d83-99cc-b3fd-ab76-6846eb9f5472','securitygroups_surveyquestions','SecurityGroups','securitygroups','id','SurveyQuestions','surveyquestions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestions',0,0),('e305373d-5a3a-505b-e8e8-6846eb34dc92','aok_knowledge_base_categories_assigned_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e331c909-e153-d0e1-0647-6846ebfbce2d','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e4a74e6c-ebbe-d0d7-9f6a-6846ebfb8e8f','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e4ab9b92-14db-6077-672a-6846ebbbbe66','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e4f8db47-a5bd-04fd-1a0c-6846eb352cf7','securitygroups_externaloauthprovider','SecurityGroups','securitygroups','id','ExternalOAuthProvider','external_oauth_providers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ExternalOAuthProvider',0,0),('e61cbe9b-155d-4c05-b907-6846ebdbfbd7','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e61f7fdb-1c04-d89f-ae8b-6846ebe5f12e','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('e6620d12-5084-6da2-786d-6846ebbcbcc3','aor_scheduled_reports_created_by','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e78eb287-3586-b504-6a5e-6846eba9b830','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('e79122f1-179c-c2c1-313d-6846eb3026ad','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('e91055f4-c42d-178e-4404-6846ebbe0a6d','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e9109d65-fdcf-df91-8799-6846eb13056c','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('ea8be8bb-1318-6b5d-bd8c-6846eba7baff','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eaf4369e-8d22-50d8-d391-6846ebc426cc','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ebf5266e-83cd-be0b-2b2b-6846ebbc7d71','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ec788724-7532-936c-6b2f-6846eb52043f','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ed2b519d-d83a-cd20-ed06-6846eba3bd01','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('edeb608f-fd30-1302-1acd-6846eb1bfeb0','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eeab5dff-f618-eda4-adb8-6846eb0d4db6','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('ef5ea100-c126-df98-c2d2-6846ebc8976f','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('efe9adc2-8a57-d4ec-2b9c-6846eb1c1e39','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('f0ddae55-fea7-348c-b123-6846eb30756c','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('f19a77d8-8532-aaef-b950-6846eb964380','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('f30e3171-acb7-66e6-1d98-6846eb5046ef','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('f30ff9a7-deab-76a2-5943-6846eb0c1167','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f89c008b-d338-4240-0c9e-6846ebed2898','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('fe170a0a-6098-91ff-b00a-6846eb278c3d','securitygroups_aor_scheduled_reports','SecurityGroups','securitygroups','id','AOR_Scheduled_Reports','aor_scheduled_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Scheduled_Reports',0,0),('fef0087d-af1f-3008-7ce4-6846eb979385','surveyquestions_surveyquestionoptions','SurveyQuestions','surveyquestions','id','SurveyQuestionOptions','surveyquestionoptions','survey_question_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int DEFAULT '-1',
  `popup_viewed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_reminder_name` (`name`),
  KEY `idx_reminder_deleted` (`deleted`),
  KEY `idx_reminder_related_event_module` (`related_event_module`),
  KEY `idx_reminder_related_event_module_id` (`related_event_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders_invitees`
--

DROP TABLE IF EXISTS `reminders_invitees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_invitee_name` (`name`),
  KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders_invitees`
--

LOCK TABLES `reminders_invitees` WRITE;
/*!40000 ALTER TABLE `reminders_invitees` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders_invitees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `quick_filter` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('7d36dfb5-c7b4-7fa3-db02-6786442bc532',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Process Workflow Tasks','function::processAOW_Workflow','2015-01-01 15:00:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('7f40e871-b3ab-1cb3-ece4-678644870f01',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Run Report Generation Scheduled Tasks','function::aorRunScheduledReports','2015-01-01 12:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('8122e09f-2095-181e-84fe-678644219c1b',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Prune Tracker Tables','function::trimTracker','2015-01-01 18:30:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('82dec096-0f96-eb5a-e57f-678644a28b37',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxesAOP','2015-01-01 19:15:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('849b8d1a-b399-7adf-41fb-678644e5e111',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2015-01-01 17:45:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('865a31a7-0f98-b494-7784-6786442a9f05',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2015-01-01 07:15:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('881d2f99-20ab-2407-93ea-678644135f86',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Prune Database on 1st of Month','function::pruneDatabase','2015-01-01 17:00:01',NULL,'0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('89dee340-a602-058c-3f32-678644c6acb2',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2015-01-01 07:15:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('8ba93df8-57a8-f6c5-7185-678644fdd566',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Clean Jobs Queue','function::cleanJobQueue','2015-01-01 13:15:01',NULL,'0::5::*::*::*',NULL,NULL,NULL,'Active',0),('8d911fa6-9488-8a8d-ed97-67864454ef9a',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2015-01-01 16:30:01',NULL,'0::3::1::*::*',NULL,NULL,NULL,'Active',0),('8f599124-8206-d3a1-484c-6786443488d0',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Prune SuiteCRM Feed Tables','function::trimSugarFeeds','2015-01-01 09:00:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('9125d160-f5c1-3c58-5ffe-678644b7cf74',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Google Calendar Sync','function::syncGoogleCalendar','2015-01-01 19:30:01',NULL,'*/15::*::*::*::*',NULL,NULL,NULL,'Active',0),('92e1faa8-32fb-fb7c-0408-678644ab7a12',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Perform Elasticsearch Index','function::runElasticSearchIndexerScheduler','2015-01-01 15:15:01',NULL,'30::4::*::*::*',NULL,NULL,NULL,'Active',0);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
INSERT INTO `securitygroups` VALUES ('95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:23:45','2025-06-26 04:31:19','1','1',NULL,0,'1',0);
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
INSERT INTO `securitygroups_acl_roles` VALUES ('2d564dd7-e65d-feec-364b-685ccd047d0f','95135b38-9884-67e2-c6d8-685ccbc585a3','78eee375-0419-4592-6f37-685ccb3451a7','2025-06-26 04:39:06',1),('7ca3590b-f0d0-5efd-5c9a-685ccbf1902b','95135b38-9884-67e2-c6d8-685ccbc585a3','e85b0bae-3a7f-926c-61c2-685cc5e244fe','2025-06-26 04:31:49',1);
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
INSERT INTO `securitygroups_users` VALUES ('2efa1ee7-0f58-4ee3-0e04-685ccb3cb4b5','2025-06-26 04:24:49',0,'95135b38-9884-67e2-c6d8-685ccbc585a3','2dca749b-da39-b519-3014-685cc3891464',NULL,0);
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions`
--

DROP TABLE IF EXISTS `surveyquestionoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions`
--

LOCK TABLES `surveyquestionoptions` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_audit`
--

DROP TABLE IF EXISTS `surveyquestionoptions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionoptions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_audit`
--

LOCK TABLES `surveyquestionoptions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionoptions_surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_surveyquestionresponses`
--

LOCK TABLES `surveyquestionoptions_surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses`
--

LOCK TABLES `surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses_audit`
--

DROP TABLE IF EXISTS `surveyquestionresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses_audit`
--

LOCK TABLES `surveyquestionresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions`
--

DROP TABLE IF EXISTS `surveyquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions`
--

LOCK TABLES `surveyquestions` WRITE;
/*!40000 ALTER TABLE `surveyquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions_audit`
--

DROP TABLE IF EXISTS `surveyquestions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions_audit`
--

LOCK TABLES `surveyquestions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses`
--

DROP TABLE IF EXISTS `surveyresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses`
--

LOCK TABLES `surveyresponses` WRITE;
/*!40000 ALTER TABLE `surveyresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses_audit`
--

DROP TABLE IF EXISTS `surveyresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses_audit`
--

LOCK TABLES `surveyresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'LBL_DRAFT',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_audit`
--

DROP TABLE IF EXISTS `surveys_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveys_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_audit`
--

LOCK TABLES `surveys_audit` WRITE;
/*!40000 ALTER TABLE `surveys_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES ('8dbd6e41-3dc7-8967-5245-6846eb6dd6eb','dsald','2025-06-09 14:12:27','2025-06-09 14:12:27','1','1','dsad',0,'1','In Progress',0,'2025-06-18 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('ba3c398b-9c0d-2d5a-cb36-68408295a170','cxzm,c','2025-06-04 17:29:49','2025-06-04 17:29:49','1','1','cxmz.,',0,'1','In Progress',0,'2025-06-11 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('d64daaf6-1d5e-5872-3506-6841fb71c648','авыаываы','2025-06-05 20:17:52','2025-06-05 20:17:52','1','1','авыа',0,'1','In Progress',0,'2025-06-12 21:00:00',0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_cstm`
--

DROP TABLE IF EXISTS `tasks_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks_cstm` (
  `id_c` char(36) NOT NULL,
  `sale_stage_task_c` varchar(100) DEFAULT NULL,
  `view_lid_c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_cstm`
--

LOCK TABLES `tasks_cstm` WRITE;
/*!40000 ALTER TABLE `tasks_cstm` DISABLE KEYS */;
INSERT INTO `tasks_cstm` VALUES ('8dbd6e41-3dc7-8967-5245-6846eb6dd6eb','not_sales','small_medium_buisness'),('ba3c398b-9c0d-2d5a-cb36-68408295a170',NULL,'general'),('d64daaf6-1d5e-5872-3506-6841fb71c648','warm_task','gr_state_budget');
/*!40000 ALTER TABLE `tasks_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatesectionline`
--

DROP TABLE IF EXISTS `templatesectionline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatesectionline`
--

LOCK TABLES `templatesectionline` WRITE;
/*!40000 ALTER TABLE `templatesectionline` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatesectionline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (1,'63b00283-392e-ee5c-dec7-6786450a0727','1','Users','1','Administrator','2025-01-14 11:08:29','editview','4ccptjp5d8d4jpuff82v1j240c',1,0),(2,'d3d25489-e4e1-78ec-2ce8-678645e41d7e','1','Users','1','Administrator','2025-01-14 11:08:30','detailview','4ccptjp5d8d4jpuff82v1j240c',1,0),(3,'23114372-c660-ae37-ab2a-682705a87fb3','1','Users','1','Administrator','2025-05-16 09:30:35','editview','674465bb292b5c754678bf5dbf02dd69',1,0),(4,'b49476f5-555b-cb1f-d05e-6827050547dd','1','Users','1','Administrator','2025-05-16 09:30:35','detailview','674465bb292b5c754678bf5dbf02dd69',1,0),(5,'dda347a5-f360-5787-afee-682705d2bb69','1','Users','1','Administrator','2025-05-16 09:31:17','detailview','674465bb292b5c754678bf5dbf02dd69',1,0),(6,'d826db61-cfb8-a3d8-0317-682706725681','1','Users','1','Administrator','2025-05-16 09:34:05','editview','79ea01a0bbbcd785f0a7cc816706f2a3',1,0),(7,'5c156eac-3f58-990f-7438-682706086d09','1','Users','1','Administrator','2025-05-16 09:34:06','detailview','79ea01a0bbbcd785f0a7cc816706f2a3',1,0),(8,'1b281728-7759-0db7-aa38-6827061ca81c','1','Users','1','Administrator','2025-05-16 09:34:26','detailview','79ea01a0bbbcd785f0a7cc816706f2a3',1,0),(9,'ec532d0a-e822-7042-cb8f-684082e73f57','1','Tasks','ba3c398b-9c0d-2d5a-cb36-68408295a170','cxzm,c','2025-06-04 17:29:56','detailview','irpa51ig1hbc7f0ml5dcf1g9si',1,0),(10,'6ba29b68-e3cf-b4f2-4b84-6841fb481854','1','Tasks','d64daaf6-1d5e-5872-3506-6841fb71c648','авыаываы','2025-06-05 20:17:55','detailview','irpa51ig1hbc7f0ml5dcf1g9si',1,0),(11,'2ede7167-262b-61fe-5b57-6841fb860a05','1','Tasks','d64daaf6-1d5e-5872-3506-6841fb71c648','авыаываы','2025-06-05 20:18:35','detailview','irpa51ig1hbc7f0ml5dcf1g9si',1,0),(12,'eab8629f-f5b6-76c4-eac9-6846ebef61ca','1','Tasks','8dbd6e41-3dc7-8967-5245-6846eb6dd6eb','dsald','2025-06-09 14:12:30','detailview','irpa51ig1hbc7f0ml5dcf1g9si',1,0),(13,'c2043ec7-e51a-50a4-f596-685cc3b40652','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:50:20','detailview','845t8scie5t3acr9u9t374eg4m',1,0),(14,'aa64c10d-48ee-d201-280f-685cc39c23c7','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:50:28','detailview','845t8scie5t3acr9u9t374eg4m',1,0),(15,'7fb1f951-aa04-1618-320f-685cc3064111','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:50:29','detailview','845t8scie5t3acr9u9t374eg4m',1,0),(16,'5a1aaa94-4db7-c077-7a25-685cc362918c','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:51:02','detailview','845t8scie5t3acr9u9t374eg4m',1,0),(17,'41c723b4-c3a6-08c8-185f-685cc31f65cb','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:51:02','detailview','845t8scie5t3acr9u9t374eg4m',1,0),(18,'ec09480c-9a13-b313-8f35-685cc3b9e5d3','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:51:55','detailview','845t8scie5t3acr9u9t374eg4m',1,0),(19,'df6c71e6-4bc5-dbe8-ed2c-685cc3fdb71d','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:51:56','detailview','845t8scie5t3acr9u9t374eg4m',1,0),(20,'506c03e0-dd4e-df2e-256b-685cc397aa8a','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:52:04','editview','845t8scie5t3acr9u9t374eg4m',1,0),(21,'18b522a0-e5c2-da3d-b77d-685cc3d71b6b','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:52:07','editview','845t8scie5t3acr9u9t374eg4m',1,0),(22,'379b6609-e869-f0e7-5648-685cc3720606','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:52:11','editview','845t8scie5t3acr9u9t374eg4m',1,0),(23,'3601ca34-d282-b58b-ddf4-685cc3154547','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:52:11','detailview','845t8scie5t3acr9u9t374eg4m',1,0),(24,'8b6e408d-7981-5f8f-89fb-685cc44ea106','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:53:49','detailview','845t8scie5t3acr9u9t374eg4m',1,0),(25,'7a131903-1e23-2866-fc6f-685cc46078ad','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:53:54','detailview','845t8scie5t3acr9u9t374eg4m',1,0),(26,'421a6ca3-2f31-060e-6087-685cc4ae1c89','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:53:54','detailview','845t8scie5t3acr9u9t374eg4m',1,0),(27,'922f5083-b0c0-4d98-3f44-685cc47b9e6e','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:56:17','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(28,'e2242634-ef58-5ea8-3153-685cc48d5f49','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 03:56:18','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(29,'121e5fda-ffca-311d-6dcd-685cc5856883','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 03:59:48','save','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(30,'4b6b800b-ead8-99c3-c6cd-685cc515643d','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 03:59:49','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(31,'bfc105d1-6312-b0bc-5dcc-685cc59e2177','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 03:59:51','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(32,'b83d4e04-68a4-5314-8b86-685cc50d1544','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 03:59:52','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(33,'b3b53724-2eaa-3ac5-97ee-685cca5f75b0','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 04:22:15','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(34,'6c4ada1d-7cba-67b6-9348-685cca8852b6','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 04:22:15','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(35,'f1004c9c-fa90-c076-596a-685ccbdc267a','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 04:22:37','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(36,'dc1bb491-2e58-7975-976f-685ccba12962','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:23:45','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(37,'e4503003-42ff-c740-5a38-685ccb503879','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:23:48','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(38,'da7bed5d-7dc1-f70b-d125-685ccbbc8705','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:23:49','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(39,'cdec80af-8788-8f44-888e-685ccb0816c9','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:23:59','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(40,'1933cf38-e166-2043-f70e-685ccb31d98e','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:24:15','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(41,'c2bf5828-65ad-06b1-b0a9-685ccbf7df2e','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:24:15','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(42,'b9eeedf4-1e75-67a2-837a-685ccb8474ee','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 04:24:38','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(43,'d6f7c2df-eb3b-7d70-a608-685ccb81a643','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 04:24:39','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(44,'9efb7304-93e4-7122-a6fa-685ccb350d58','1','Users','2dca749b-da39-b519-3014-685cc3891464','Тунг Лам Нгуен','2025-06-26 04:24:49','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(45,'7c0d3c56-d2c5-5012-fb02-685ccbf5d1c2','1','ACLRoles','78eee375-0419-4592-6f37-685ccb3451a7','test.php','2025-06-26 04:25:02','save','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(46,'b8afdf28-3e99-9b86-ef3a-685ccb1a4c31','1','ACLRoles','78eee375-0419-4592-6f37-685ccb3451a7','test.php','2025-06-26 04:25:02','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(47,'46db5342-b9cf-8465-8249-685ccbc2d75b','1','ACLRoles','78eee375-0419-4592-6f37-685ccb3451a7','test.php','2025-06-26 04:25:06','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(48,'24558d67-c174-1e8b-3432-685ccb031da1','1','ACLRoles','78eee375-0419-4592-6f37-685ccb3451a7','test.php','2025-06-26 04:25:06','detailview','emhkjc3ij2vju9r8srvbvmbnvu',1,0),(49,'d2f8690d-846e-bc36-0505-685ccc479db5','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 04:30:02','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(50,'c2094e54-7b2d-8c6a-6f52-685ccc333c19','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 04:30:03','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(51,'3fa6e158-466f-3c92-e371-685ccddb6d23','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:31:03','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(52,'7bd9f30f-8431-2c01-c491-685ccdc4b3b2','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:31:03','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(53,'8c18e2ea-5fe4-e6c4-e5df-685ccd8ef653','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:31:19','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(54,'9dec04d8-8f89-36a3-645d-685ccddf4ff9','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 04:31:27','editview','6d1s5studi2lmpja29bahs7jc5',1,0),(55,'bc0c9fbc-52fc-fe6c-8888-685ccdedfe03','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 04:31:30','editview','6d1s5studi2lmpja29bahs7jc5',1,0),(56,'b38869f2-005f-6098-6808-685ccd8b3380','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 04:31:31','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(57,'5bb94897-9f49-54a7-0209-685ccd8c2907','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:31:35','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(58,'4c1c8f9b-fc57-b3db-91ee-685ccd27684a','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:31:35','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(59,'83196251-f7b3-5f6e-584e-685ccda1946e','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 04:31:38','editview','6d1s5studi2lmpja29bahs7jc5',1,0),(60,'25d7fd7c-6329-708d-4ea9-685ccd0db7ad','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 04:31:41','editview','6d1s5studi2lmpja29bahs7jc5',1,0),(61,'19b5d879-2ca1-1267-6820-685ccd31445d','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 04:31:41','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(62,'148cff58-8cc9-bfc4-32c2-685ccdbae654','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:31:43','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(63,'caa10387-c68f-29d3-dd48-685ccdfc02fa','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:31:43','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(64,'7df940aa-1dc4-7cd9-cc94-685ccd6be6ba','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:31:49','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(65,'6c7e24c7-6b72-3563-9cc1-685ccdea306c','1','ACLRoles','78eee375-0419-4592-6f37-685ccb3451a7','test.php','2025-06-26 04:32:01','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(66,'3ed53710-a097-2069-a3ea-685ccd40e2d1','1','ACLRoles','78eee375-0419-4592-6f37-685ccb3451a7','test.php','2025-06-26 04:32:01','detailview','6d1s5studi2lmpja29bahs7jc5',1,0),(67,'8dde0460-bf35-c795-a5de-685cce688021','1','ACLRoles','78eee375-0419-4592-6f37-685ccb3451a7','test.php','2025-06-26 04:36:31','detailview','dvccolr20rfm3lifaraiqhviu4',1,0),(68,'33300870-4e1f-5e06-c793-685ccefba553','1','ACLRoles','78eee375-0419-4592-6f37-685ccb3451a7','test.php','2025-06-26 04:36:32','detailview','dvccolr20rfm3lifaraiqhviu4',1,0),(69,'7dd9bd0a-d31c-e1da-f342-685cce525bc6','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 04:36:41','detailview','dvccolr20rfm3lifaraiqhviu4',1,0),(70,'74df8390-c715-712b-b78d-685cce18c46e','1','ACLRoles','e85b0bae-3a7f-926c-61c2-685cc5e244fe','сотрудники','2025-06-26 04:36:41','detailview','dvccolr20rfm3lifaraiqhviu4',1,0),(71,'b59cd22c-bd42-421b-9b9b-685cce26fda3','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:38:10','detailview','if18njtnec14a56tt9241mc9no',1,0),(72,'2566d25e-0504-014d-d24f-685ccea7f407','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:38:11','detailview','if18njtnec14a56tt9241mc9no',1,0),(73,'e1bf2426-3416-d867-4510-685cce084480','1','SecurityGroups','95135b38-9884-67e2-c6d8-685ccbc585a3','test','2025-06-26 04:39:06','detailview','if18njtnec14a56tt9241mc9no',1,0);
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('1c2ffe93-d482-5a69-0d65-685ccb834e48','ACLRoles2_ACLROLE',0,'2025-06-26 04:23:55','2025-06-26 04:24:43','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1f5a3b98-84b3-7bcf-79da-685ccc91e9bc','Home2_PROJECTTASK_bd3edc8b-d923-43f1-94e6-685ccc0d',0,'2025-06-26 04:28:02','2025-06-26 04:28:02','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2a9d5e83-77e1-204a-5c44-685ccce4c61b','Home2_PROJECT',0,'2025-06-26 04:28:05','2025-06-26 04:28:05','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4564983a-72aa-d8bf-0712-685ccc96bca1','Home2_PROJECTTASK_adb4f629-8ab6-c1c6-cf28-685ccc19',0,'2025-06-26 04:28:01','2025-06-26 04:28:01','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('46a640e9-ae46-bd57-1096-678644ad17e9','Home2_LEAD_4d016186-f906-df27-4172-678644d6ac6d',0,'2025-01-14 11:04:12','2025-06-27 15:27:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5f28df9e-0724-3a66-4620-685cc3e2147d','global',0,'2025-06-26 03:50:19','2025-06-26 04:32:32','2dca749b-da39-b519-3014-685cc3891464','YToyMTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjg6InRpbWV6b25lIjtzOjEyOiJFdXJvcGUvTWluc2siO3M6MjoidXQiO3M6MToiMSI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mzoib2ZmIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfcnUiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6Njoi0JLRgdC1Ijt9'),('630263b0-53a4-61d6-3ec3-685cc3c2efd6','GoogleSync',0,'2025-06-26 03:50:19','2025-06-26 04:24:49','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('661461be-43cd-3838-cb76-67864564eb06','Dashboard',0,'2025-01-14 11:08:36','2025-06-27 15:27:14','1','YTowOnt9'),('69e58f1e-049b-853c-0baa-685cc424fa00','Home',0,'2025-06-26 03:54:35','2025-06-26 04:28:25','2dca749b-da39-b519-3014-685cc3891464','YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjM2MDMwZjM1LTAxMjgtMjBhOC0zNzg0LTY4NWNjNGI4OGYxZSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjM2YTUyNTgxLWIxMjQtOGQwNy01ZGY2LTY4NWNjNDkwMTQ2NyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjM3NWZlYzI0LTg2MTItMDgwYS03MzMwLTY4NWNjNDhkMjgxNyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjM3ZGNlNDJmLWFhNGYtZDVkNC03ODgwLTY4NWNjNDFjZTFjYSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMzhhNDlhNjktYzI5Yy0wNzk5LWEzMWYtNjg1Y2M0ZDMwY2M3IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMzk1ZGZmNDUtN2EzNy1mOWU5LTQ5NDItNjg1Y2M0NDg4YTIwIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZjFmOGQwZjAtY2Q4OC00M2RiLTE2ZDctNjg1Y2NjNjI2N2YwIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjIwOiJNeVByb2plY3RUYXNrRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTE6IlByb2plY3RUYXNrIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo3NDoibW9kdWxlcy9Qcm9qZWN0VGFzay9EYXNobGV0cy9NeVByb2plY3RUYXNrRGFzaGxldC9NeVByb2plY3RUYXNrRGFzaGxldC5waHAiO31zOjM2OiJiMGI4NDQwZS02NDc2LTExMWItNDQ3Yi02ODVjY2M1NzQxMWYiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6Ik15UHJvamVjdERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjc6IlByb2plY3QiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjYyOiJtb2R1bGVzL1Byb2plY3QvRGFzaGxldHMvTXlQcm9qZWN0RGFzaGxldC9NeVByb2plY3REYXNobGV0LnBocCI7fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YToxOntpOjA7czozNjoiYjBiODQ0MGUtNjQ3Ni0xMTFiLTQ0N2ItNjg1Y2NjNTc0MTFmIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjI6e2k6MDtzOjM2OiIzNjAzMGYzNS0wMTI4LTIwYTgtMzc4NC02ODVjYzRiODhmMWUiO2k6MTtzOjM2OiJmMWY4ZDBmMC1jZDg4LTQzZGItMTZkNy02ODVjY2M2MjY3ZjAiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),('6b989594-20d5-f9cb-0958-678644f0ad00','global',0,'2025-01-14 11:02:58','2025-06-27 15:27:14','1','YTo1MDp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7czozOiI2MDAiO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MjA6InNvcnRfbW9kdWxlc19ieV9uYW1lIjtzOjA6IiI7czoxMzoic3VicGFuZWxfdGFicyI7czowOiIiO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTI6IkV1cm9wZS9NaW5zayI7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czoxMDoiSVNPLTg4NTktMSI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mzoib2ZmIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxMToiZWRpdG9yX3R5cGUiO3M6NjoibW96YWlrIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjM2OiI0MmI5OTM2MC1lYjJjLTQzYjktYjk0Ny02Nzg2NDRmOWZiOWUiO3M6ODoic3VidGhlbWUiO3M6NDoiRGF3biI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6Njoi0JLRgdC1IjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czo3OiJFbWFpbHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MjoidWkiO3M6NzA1MDoieyJub29wIjoibm9vcCIsIm91dGJvdW5kLWVtYWlsLWFjY291bnRzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwib3V0Ym91bmQtZW1haWwtYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwib3V0Ym91bmQtZW1haWwtYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwib3V0Ym91bmQtZW1haWwtYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJOT05FIn0sImFkbWluaXN0cmF0aW9uLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6MCwidG90YWwiOjIsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjJ9LCJyZWNvcmRJZHMiOlt7ImlkIjoiNzhlZWUzNzUtMDQxOS00NTkyLTZmMzctNjg1Y2NiMzQ1MWE3In0seyJpZCI6ImU4NWIwYmFlLTNhN2YtOTI2Yy02MWMyLTY4NWNjNWUyNDRmZSJ9XX0sImFjY291bnRzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJOT05FIn0sImFjY291bnRzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6LTIwLCJ0b3RhbCI6MCwicGFnZUZpcnN0IjowLCJwYWdlTGFzdCI6MH0sInJlY29yZElkcyI6W119LCJhY2NvdW50cy1yZWNvcmR2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiY29udGFjdHMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJjb250YWN0cy1saXN0dmlldy1jdXJyZW50LXBhZ2luYXRpb24tdHlwZSI6InBhZ2luYXRpb24iLCJjb250YWN0cy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJjb250YWN0cy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6Ik5PTkUifSwiY29udGFjdHMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjotMjAsInRvdGFsIjowLCJwYWdlRmlyc3QiOjAsInBhZ2VMYXN0IjowfSwicmVjb3JkSWRzIjpbXX0sImNvbnRhY3RzLXJlY29yZHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJvcHBvcnR1bml0aWVzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwib3Bwb3J0dW5pdGllcy1saXN0dmlldy1jdXJyZW50LXBhZ2luYXRpb24tdHlwZSI6InBhZ2luYXRpb24iLCJvcHBvcnR1bml0aWVzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sIm9wcG9ydHVuaXRpZXMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJOT05FIn0sIm9wcG9ydHVuaXRpZXMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjotMjAsInRvdGFsIjowLCJwYWdlRmlyc3QiOjAsInBhZ2VMYXN0IjowfSwicmVjb3JkSWRzIjpbXX0sIm9wcG9ydHVuaXRpZXMtcmVjb3Jkdmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsIm1lZXRpbmdzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwibWVldGluZ3MtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwibWVldGluZ3MtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwibWVldGluZ3MtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJERVNDIn0sIm1lZXRpbmdzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6LTIwLCJ0b3RhbCI6MCwicGFnZUZpcnN0IjowLCJwYWdlTGFzdCI6MH0sInJlY29yZElkcyI6W119LCJ0YXNrcy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsInRhc2tzLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsInRhc2tzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sInRhc2tzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJ0YXNrcy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOi0yMCwidG90YWwiOjAsInBhZ2VGaXJzdCI6MCwicGFnZUxhc3QiOjB9LCJyZWNvcmRJZHMiOltdfSwidGFza3MtcmVjb3Jkdmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImludm9pY2VzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiaW52b2ljZXMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiaW52b2ljZXMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiaW52b2ljZXMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJERVNDIn0sImludm9pY2VzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6LTIwLCJ0b3RhbCI6MCwicGFnZUZpcnN0IjowLCJwYWdlTGFzdCI6MH0sInJlY29yZElkcyI6W119LCJwcm9qZWN0LWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwicHJvamVjdC1saXN0dmlldy1jdXJyZW50LXBhZ2luYXRpb24tdHlwZSI6InBhZ2luYXRpb24iLCJwcm9qZWN0LWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sInByb2plY3QtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJERVNDIn0sInByb2plY3QtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjotMjAsInRvdGFsIjowLCJwYWdlRmlyc3QiOjAsInBhZ2VMYXN0IjowfSwicmVjb3JkSWRzIjpbXX0sInByb3NwZWN0cy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOi0yMCwidG90YWwiOjAsInBhZ2VGaXJzdCI6MCwicGFnZUxhc3QiOjB9LCJyZWNvcmRJZHMiOltdfSwicHJvc3BlY3RzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwicHJvc3BlY3RzLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsInByb3NwZWN0cy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJwcm9zcGVjdHMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJOT05FIn0sInByb3NwZWN0cy1yZWNvcmR2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwicHJvc3BlY3QtbGlzdHMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJwcm9zcGVjdC1saXN0cy1saXN0dmlldy1jdXJyZW50LXBhZ2luYXRpb24tdHlwZSI6InBhZ2luYXRpb24iLCJwcm9zcGVjdC1saXN0cy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJwcm9zcGVjdC1saXN0cy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6Ik5PTkUifSwiaG9tZS1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOi0yMCwidG90YWwiOjAsInBhZ2VGaXJzdCI6MCwicGFnZUxhc3QiOjB9LCJyZWNvcmRJZHMiOltdfSwidXNlcnMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJ1c2Vycy1saXN0dmlldy1jdXJyZW50LXBhZ2luYXRpb24tdHlwZSI6InBhZ2luYXRpb24iLCJ1c2Vycy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJ1c2Vycy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiZW1wbG95ZWVzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiZW1wbG95ZWVzLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImVtcGxveWVlcy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJlbXBsb3llZXMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJOT05FIn0sInVzZXJzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6MCwidG90YWwiOjIsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjJ9LCJyZWNvcmRJZHMiOlt7ImlkIjoiMSJ9LHsiaWQiOiIyZGNhNzQ5Yi1kYTM5LWI1MTktMzAxNC02ODVjYzM4OTE0NjQifV19LCJhY2wtcm9sZXMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJhY2wtcm9sZXMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiYWNsLXJvbGVzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImFjbC1yb2xlcy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiYWNsLXJvbGVzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6MCwidG90YWwiOjIsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjJ9LCJyZWNvcmRJZHMiOlt7ImlkIjoiNzhlZWUzNzUtMDQxOS00NTkyLTZmMzctNjg1Y2NiMzQ1MWE3In0seyJpZCI6ImU4NWIwYmFlLTNhN2YtOTI2Yy02MWMyLTY4NWNjNWUyNDRmZSJ9XX19IjtzOjY6IlVzZXJzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE1OiJTZWN1cml0eUdyb3Vwc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJBQ0xSb2xlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9fQ=='),('6d1953b7-957a-de0c-e938-678644563b6d','GoogleSync',0,'2025-01-14 11:02:58','2025-06-27 15:27:14','1','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('6dcf1ed2-4248-964a-18b2-6786450598bf','Emails',0,'2025-01-14 11:08:36','2025-06-27 15:27:14','1','YTowOnt9'),('6e8ea1df-1fd3-0262-f040-685cc43c2725','Home2_CALL',0,'2025-06-26 03:54:35','2025-06-26 03:54:35','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('71a5e461-403b-45c3-c295-685cc4fb6ce3','Home2_MEETING',0,'2025-06-26 03:54:35','2025-06-26 03:54:35','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('724a82ac-23b7-9eca-72ed-685ccc70f28a','Home2_PROJECTTASK',0,'2025-06-26 04:27:59','2025-06-26 04:27:59','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('74908d0c-b4f2-4c5e-7139-685cc48667ca','Home2_OPPORTUNITY',0,'2025-06-26 03:54:35','2025-06-26 03:54:35','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('779c3f53-7c3e-0407-0f60-685cc4901c50','Home2_ACCOUNT',0,'2025-06-26 03:54:35','2025-06-26 03:54:35','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('797357ca-aa44-9489-6a42-685cc48ea1dc','Home2_LEAD_395dff45-7a37-f9e9-4942-685cc4488a20',0,'2025-06-26 03:54:37','2025-06-26 03:54:37','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7ab40885-96c9-c942-5f36-685cc4026597','Home2_LEAD',0,'2025-06-26 03:54:35','2025-06-26 03:54:35','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7d2f289a-79a4-7dd0-6b41-685ccd731f80','Home2_PROJECTTASK_f1f8d0f0-cd88-43db-16d7-685ccc62',0,'2025-06-26 04:32:43','2025-06-26 04:32:43','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7dcb8fe3-907c-9555-51e0-685ccb91bff8','SecurityGroups',0,'2025-06-26 04:24:43','2025-06-27 15:27:14','1','YTowOnt9'),('7e39adce-1ad2-583c-df1e-685cc49f5a01','Home2_SUGARFEED',0,'2025-06-26 03:54:35','2025-06-26 03:54:35','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9a1bf2a4-ec97-ce14-8f6e-685ccae2817f','Users',0,'2025-06-26 04:22:14','2025-06-26 04:24:43','1','YTowOnt9'),('9dbef21d-2005-97e0-77a8-685cca1bd134','ACLRoles',0,'2025-06-26 04:22:14','2025-06-26 04:36:46','1','YTowOnt9'),('a5aa173d-4cdd-5263-7263-685ccbb14830','SecurityGroups2_SECURITYGROUP',0,'2025-06-26 04:23:04','2025-06-27 15:27:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d83a4f6c-37c7-4def-271f-685cc37eb0de','Users2_USER',0,'2025-06-26 03:49:30','2025-06-26 03:49:30','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('db020672-796c-119d-7897-684082a2fb0a','ModuleBuilder',0,'2025-06-04 17:27:37','2025-06-09 14:14:03','1','YTowOnt9'),('dcf86b4d-dd65-a769-f5a5-6786445eb2c4','Home',0,'2025-01-14 11:04:00','2025-06-27 15:27:14','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjRhZWJmYzY4LTY5YTYtZTkzMy1kYWFiLTY3ODY0NDVhNWM0NyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjRiNjE1OTMzLWFhMzUtNzE5Zi1hMjA1LTY3ODY0NGZkZjk2ZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjRiZDU4ZGZhLTM0OTMtZjQxNy0wM2RjLTY3ODY0NGEyODRkNSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjRjMjVkOGI3LWI5MjUtMDg4Zi0yNmJiLTY3ODY0NDdhMzViOCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNGM5NDgxOGItNzQzNC00ZGJmLTMyOWUtNjc4NjQ0MTY4MTVhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNGQwMTYxODYtZjkwNi1kZjI3LTQxNzItNjc4NjQ0ZDZhYzZkIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI0YjYxNTkzMy1hYTM1LTcxOWYtYTIwNS02Nzg2NDRmZGY5NmUiO2k6MTtzOjM2OiI0YmQ1OGRmYS0zNDkzLWY0MTctMDNkYy02Nzg2NDRhMjg0ZDUiO2k6MjtzOjM2OiI0YzI1ZDhiNy1iOTI1LTA4OGYtMjZiYi02Nzg2NDQ3YTM1YjgiO2k6MztzOjM2OiI0Yzk0ODE4Yi03NDM0LTRkYmYtMzI5ZS02Nzg2NDQxNjgxNWEiO2k6NDtzOjM2OiI0ZDAxNjE4Ni1mOTA2LWRmMjctNDE3Mi02Nzg2NDRkNmFjNmQiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjRhZWJmYzY4LTY5YTYtZTkzMy1kYWFiLTY3ODY0NDVhNWM0NyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('df981f0d-eda1-9ca8-34c5-685ccc48ad41','Home2_PROJECT_b0b8440e-6476-111b-447b-685ccc57411f',0,'2025-06-26 04:28:06','2025-06-26 04:28:06','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e08511ee-0873-efa4-c597-6786446fd052','Home2_CALL',0,'2025-01-14 11:04:00','2025-06-27 15:27:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e19a2e03-601f-765d-94e0-68407cf1d3d8','Assistant',0,'2025-06-04 17:02:47','2025-06-09 14:14:03','1','YTowOnt9'),('e247409a-5958-99e2-88b1-678644d8814d','Home2_MEETING',0,'2025-01-14 11:04:00','2025-06-27 15:27:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),('e3db2069-7c62-ae70-53f4-6786440c6f15','Home2_OPPORTUNITY',0,'2025-01-14 11:04:00','2025-06-27 15:27:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e5a12d83-886d-1002-62f1-67864421d199','Home2_ACCOUNT',0,'2025-01-14 11:04:00','2025-06-27 15:27:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e75a2ff2-5d77-edee-84ca-678644bbd2f8','Home2_LEAD',0,'2025-01-14 11:04:00','2025-06-27 15:27:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e8e31d99-d091-1e7f-8a51-678644cf9c1c','Home2_SUGARFEED',0,'2025-01-14 11:04:00','2025-06-27 15:27:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ec259cf1-d3bf-c92e-48a8-685ccc2c0c9f','Home2_PROJECTTASK_f1f8d0f0-cd88-43db-16d7-685ccc62',0,'2025-06-26 04:28:02','2025-06-26 04:28:02','2dca749b-da39-b519-3014-685cc3891464','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','Admin','$2y$10$Kz2BkK7HEBQsvfTBvEeRp.i6cjto70HM0qJKKH2YVEN7wwoXISdO6',0,'2025-05-16 09:34:00',NULL,1,NULL,'Administrator',1,0,1,NULL,'2025-01-14 11:02:58','2025-06-26 04:37:28','1','1','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,0,NULL),('2dca749b-da39-b519-3014-685cc3891464','tunglam','$2y$10$WKTZYYIBZ/iM8S//YOmB2O4.B1TUc94mNt7WARM6fIQm14VFHevCa',0,'2025-06-26 03:50:00',NULL,1,'Тунг Лам','Нгуен',0,0,1,NULL,'2025-06-26 03:50:19','2025-06-26 04:32:32','2dca749b-da39-b519-3014-685cc3891464','1','пр',NULL,'ооо',NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'1',0,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `keyhash` varchar(255) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-27 18:37:50
