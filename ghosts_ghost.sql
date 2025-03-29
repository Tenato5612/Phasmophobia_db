-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ghosts
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `ghost`
--

DROP TABLE IF EXISTS `ghost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ghost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ghost_name` varchar(255) DEFAULT NULL,
  `first_evidence` varchar(255) DEFAULT NULL,
  `second_evidence` varchar(255) DEFAULT NULL,
  `last_evidence` varchar(255) DEFAULT NULL,
  `step` varchar(255) DEFAULT NULL,
  `hunt_sanity` varchar(255) DEFAULT NULL,
  `comportament` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghost`
--

LOCK TABLES `ghost` WRITE;
/*!40000 ALTER TABLE `ghost` DISABLE KEYS */;
INSERT INTO `ghost` VALUES (1,'Spirit','EMF5','Spirit Box','Writing ','1.7ms','50%','Will wait 180s after being incensed before attempting to hunt again, instead of the standard 90s'),(2,'Wraith','EMF5','Spirit Box','Dots','1.7ms','50%','Will not touch nor interact with salt in any way, Will not be slowed down by tier 3 salt during a hunt,\nCan teleport to a random player, leaving EMF 2 or EMF 5 at the their new location'),(3,'Phantom','UV','Spirit Box','Dots','1.7ms','50%','Will not appear in ghost photos (including DOTs ghost photos), Taking a photo of the ghost will cause the ghost to disappear (including DOTs state)\nLess visible during hunts, Player will lose 0.5% sanity /s while in heartbeat range of the ghost during hun'),(4,'Poltergeist','UV','Spirit Box','Writing','1.7sm','50%','Has a higher chance to throw & interact with objects, Can throw objects faster and further,\nPoltergeist Explosion, will throw multiple objects at the same time, decreasing nearby player sanity by 2% per item thrown'),(5,'Banshee','UV','Orb','Dots','1.7ms','12%/50%/87%','Hunts based on target\'s sanity instead of average sanity, Will only pursue its target during a hunt (if the target is inside)\nTarget loses 15% sanity if they touch the ghost during a singing ghost event (standard drain is 10%),\nHunts when target\'s sanity '),(6,'Jinn','EMF5','UV','Temp','1.7ms/2.5ms','50%','The Jinn cannot directly turn off the breaker, With the breaker on, can drop a nearby player\'s sanity by 25%, with EMF 2 or EMF 5 at the breaker\n2.5m/s when breaker is on, has LOS, and is further than 3m from the seen player, 1.7m/s otherwise'),(7,'Mare','Orb','Spirit Box','Writing','1.7ms','40%/60%','60% when lights are off in the ghost\'s current room, 40% when on, Can immediately turn off a light switch (or lamp) that a player has turned on within 4m of the ghost,\nWill wander out of rooms with lights on to rooms with lights off, Cannot turn on lights'),(8,'Revenant','Orb','Temp','Writing','1.0ms/3.0ms','50%','During a hunt, a Revenant will be slow (1.0m/s) until it detects a player (voice, active electronic equipment, or LOS) where it will immediately speed up to 3.0m/s and remain at that speed until it reaches the players last known location where it will gra'),(9,'Shade','EMF5','Temp','Writing','1.7ms','35%','Prefers shadow ghost model during events, Will not do events in the same room as a player (but can start an event outside of the room and teleport to the player),\nWill not do interactions that result in EMF 2, EMF 3, or EMF 5 while in the same room as the'),(10,'Demon','UV','Temp','Writing','1.7ms','70%/100%','Can hunt 60s after being smudged instead of the standard 90s, Can hunt at any sanity, Crucifix range is increased by 50% per tier (4.5m, 6m, 7.5m respectively)\nCan hunt 20s after the previous hunt has ended or ghost has used a crucifix instead of the stan'),(11,'Yurei','Orb','Dots','Temp','1.7ms','50%','Only ghost that can close or interact with an exit door outside of a hunt/event, Can shut a door and drop sanity of nearby players by 15% if a door is in the room,\nIncensing the ghost will trap the ghost in its room for the duration of the incense effect '),(12,'Oni','EMF5','Temp','Dots','1.7ms','50%','Blinks more frequently during hunts, making them more visible, More active around multiple people, More likely to appear as full ghost model during events,\nDrains 20% sanity during events (instead of the standard 10%)'),(13,'Yokai','Orb','Spirit Box','Dots','1.7ms','50%/80%','Hearing/detection distance is 2.5m and less during hunts, More active when talking near it, Can hunt up to 80% sanity when talking in the same room as it, hunts normally at 50%'),(14,'Hantu','UV','Orb','Temp','1.4ms/2.7ms','50%','Will have visible freezing breath during hunts when the breaker is off/broken, Is faster in colder rooms during hunts, Guaranteed freezing on difficulties with 2 or fewer evidences given (Nightmare, Insanity, etc.)'),(15,'Goryo','EMF5','UV','Dots','1.7ms','50%','DOTs only appear on video camera and will not show if a player is in the same room (DOTs state can start outside of room and enter a player\'s room), Cannot change favorite rooms, Guaranteed DOTs on difficulties with 2 or fewer evidences given (Nightmare, '),(16,'MyLing','EMF5','UV','Writing','1.7ms','50%','Footsteps and vocals cannot be heard more than 12m away during hunts (normal is 20m), Makes sounds through the parabolic microphone more frequently than other ghosts'),(17,'Onryo','Orb','Spirit Box','Temp','1.7ms','60%/100%','Will attempt to hunt at any sanity after extinguishing every 3rd flame, Flames act like crucifixes, will blow out a flame if it tries to hunt (within 4m). Ghost prioritizes flames over crucifixes when preventing hunts, More likely to extinguish a flame, t'),(18,'The Twins','EMF5','Spirit Box','Temp','1.53ms/1.87ms','50%','Can do 2 interactions at the same time, one within its standard radius (2.12m, 4.24m on medium/large maps) and the other within its extended radius (8.48m, 16.97m on medium/large maps), Ghost speed during hunts will be  ±10% of the normal 1.7m/s speed, T'),(19,'Raiju','EMF5','Orb','Dots','1.7ms/2.5ms','50%/65%','During events and hunts, causes electronic disturbance at a 15m range instead of 10m, Can hunt at 65% sanity near active player equipment, 2.5m/s near active player equipment, 1.7m/s otherwise, Increased speed near active electronic equipment while huntin'),(20,'Obake','EMF5','UV','Orb','1.7ms','50%','Special 6 fingered fingerprints, Has a 25% chance to not leave ultraviolet evidence (including footprints), Can make fingerprints disappear twice as fast, Guaranteed ultraviolet on difficulties with 2 or fewer evidences given (Nightmare, Insanity, etc.)'),(21,'The Mimic','UV','Spirit Box','Temp','1.7ms','12%/50%/100%','Will always show Ghost Orbs as an additional evidence, even on 0 evidence, Changes ghost behavior every 30 seconds to 2 minutes, leading to inconsistent behavior depending on the ghost it is currently mimicking, Copies behavior of currently mimicked ghost'),(22,'Moroi','Temp','Spirit Box','Writing','1.5ms/2.25ms/3.71ms','50%','Guaranteed spirit box on difficulties with 2 or fewer evidences given (Nightmare, Insanity, etc.), Faster when average sanity is lower, can reach a speed of 3.71 m/s when in LOS, Incense blindness duration during hunts is increased by 50% (7.5s instead of'),(23,'Deogen','Dots','Spirit Box','Writing','0.4ms/3.0ms','40%','Very fast hunt speed, but will slow down as it nears the targetted player, Is more visible during hunts, 33% chance to give heavy breathing through spirit box when within 1m of the ghost, Guaranteed spirit box on difficulties with 2 or fewer evidences giv'),(24,'Thaye','Orb','Dots','Writing','1.0ms/2.75ms','15%/75%','Age response on Ouija board increases as Thaye ages, More active when younger, Ghost will attempt to age every 1-2 minutes. If a player is in the same room when it attempts, it ages; otherwise, it waits 30s and attempts again, Hunts at 75% at its youngest');
/*!40000 ALTER TABLE `ghost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-29 19:43:44
