-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.30 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla characters.account_achievement
CREATE TABLE IF NOT EXISTS `account_achievement` (
  `account` int(10) unsigned NOT NULL,
  `guid` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.account_achievement: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_achievement` ENABLE KEYS */;

-- Volcando estructura para tabla characters.account_achievement_progress
CREATE TABLE IF NOT EXISTS `account_achievement_progress` (
  `account` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.account_achievement_progress: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_achievement_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_achievement_progress` ENABLE KEYS */;

-- Volcando estructura para tabla characters.account_battle_pet
CREATE TABLE IF NOT EXISTS `account_battle_pet` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `accountId` int(10) unsigned NOT NULL DEFAULT '0',
  `species` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(16) NOT NULL DEFAULT '',
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `xp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `health` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxHealth` smallint(5) unsigned NOT NULL DEFAULT '0',
  `power` smallint(5) unsigned NOT NULL DEFAULT '0',
  `speed` smallint(5) unsigned NOT NULL DEFAULT '0',
  `quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `breed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.account_battle_pet: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_battle_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_battle_pet` ENABLE KEYS */;

-- Volcando estructura para tabla characters.account_battle_pet_slots
CREATE TABLE IF NOT EXISTS `account_battle_pet_slots` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0',
  `slot1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `slot2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `slot3` bigint(20) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.account_battle_pet_slots: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_battle_pet_slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_battle_pet_slots` ENABLE KEYS */;

-- Volcando estructura para tabla characters.account_data
CREATE TABLE IF NOT EXISTS `account_data` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.account_data: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_data` ENABLE KEYS */;

-- Volcando estructura para tabla characters.account_instance_times
CREATE TABLE IF NOT EXISTS `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.account_instance_times: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_instance_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_instance_times` ENABLE KEYS */;

-- Volcando estructura para tabla characters.account_spell
CREATE TABLE IF NOT EXISTS `account_spell` (
  `account` int(10) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.account_spell: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_spell` ENABLE KEYS */;

-- Volcando estructura para tabla characters.account_tutorial
CREATE TABLE IF NOT EXISTS `account_tutorial` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT '0',
  `tut1` int(10) unsigned NOT NULL DEFAULT '0',
  `tut2` int(10) unsigned NOT NULL DEFAULT '0',
  `tut3` int(10) unsigned NOT NULL DEFAULT '0',
  `tut4` int(10) unsigned NOT NULL DEFAULT '0',
  `tut5` int(10) unsigned NOT NULL DEFAULT '0',
  `tut6` int(10) unsigned NOT NULL DEFAULT '0',
  `tut7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.account_tutorial: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_tutorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_tutorial` ENABLE KEYS */;

-- Volcando estructura para tabla characters.addons
CREATE TABLE IF NOT EXISTS `addons` (
  `name` varchar(120) NOT NULL DEFAULT '',
  `crc` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Addons';

-- Volcando datos para la tabla characters.addons: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons` ENABLE KEYS */;

-- Volcando estructura para tabla characters.armory_character_stats
CREATE TABLE IF NOT EXISTS `armory_character_stats` (
  `guid` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `item_level` smallint(5) unsigned DEFAULT NULL,
  `gear_score` smallint(5) unsigned DEFAULT NULL,
  `achievement_points` smallint(5) unsigned DEFAULT NULL,
  `save_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='World of Warcraft Armory table';

-- Volcando datos para la tabla characters.armory_character_stats: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `armory_character_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `armory_character_stats` ENABLE KEYS */;

-- Volcando estructura para tabla characters.auctionhouse
CREATE TABLE IF NOT EXISTS `auctionhouse` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemowner` int(10) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `buyguid` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbid` int(10) unsigned NOT NULL DEFAULT '0',
  `startbid` int(10) unsigned NOT NULL DEFAULT '0',
  `deposit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.auctionhouse: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auctionhouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctionhouse` ENABLE KEYS */;

-- Volcando estructura para tabla characters.banned_addons
CREATE TABLE IF NOT EXISTS `banned_addons` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Version` varchar(255) NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `idx_name_ver` (`Name`,`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.banned_addons: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `banned_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `banned_addons` ENABLE KEYS */;

-- Volcando estructura para tabla characters.blackmarket_auctions
CREATE TABLE IF NOT EXISTS `blackmarket_auctions` (
  `auctionId` int(10) unsigned NOT NULL DEFAULT '0',
  `templateId` int(10) unsigned NOT NULL DEFAULT '0',
  `startTime` int(10) unsigned NOT NULL DEFAULT '0',
  `endTime` int(10) unsigned NOT NULL DEFAULT '0',
  `currentBidder` int(10) unsigned NOT NULL DEFAULT '0',
  `currentBid` bigint(10) unsigned NOT NULL DEFAULT '0',
  `minIncrement` bigint(10) unsigned NOT NULL DEFAULT '0',
  `numBids` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auctionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.blackmarket_auctions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `blackmarket_auctions` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackmarket_auctions` ENABLE KEYS */;

-- Volcando estructura para tabla characters.bugreport
CREATE TABLE IF NOT EXISTS `bugreport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Debug System';

-- Volcando datos para la tabla characters.bugreport: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bugreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugreport` ENABLE KEYS */;

-- Volcando estructura para tabla characters.calendar_events
CREATE TABLE IF NOT EXISTS `calendar_events` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creator` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `dungeon` int(10) NOT NULL DEFAULT '-1',
  `eventtime` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `time2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.calendar_events: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `calendar_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_events` ENABLE KEYS */;

-- Volcando estructura para tabla characters.calendar_invites
CREATE TABLE IF NOT EXISTS `calendar_invites` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `event` bigint(20) unsigned NOT NULL DEFAULT '0',
  `invitee` int(10) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `statustime` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.calendar_invites: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `calendar_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_invites` ENABLE KEYS */;

-- Volcando estructura para tabla characters.channels
CREATE TABLE IF NOT EXISTS `channels` (
  `name` varchar(128) NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `password` varchar(32) DEFAULT NULL,
  `bannedList` text,
  `lastUsed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Channel System';

-- Volcando datos para la tabla characters.channels: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;

-- Volcando estructura para tabla characters.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) DEFAULT NULL,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerBytes` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `instance_mode_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `talentTree` varchar(10) NOT NULL DEFAULT '0 0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `at_login` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `latency` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `speccount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `activespec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `knownTitles` longtext,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grantableLevels` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int(10) unsigned DEFAULT NULL,
  `lootspec` int(10) unsigned NOT NULL DEFAULT '0',
  `project_transfer` int(10) unsigned DEFAULT NULL,
  `project_original_cloned` int(10) unsigned DEFAULT NULL,
  `project_original_migrated` int(10) unsigned DEFAULT NULL,
  `project_original_realm_id` int(10) unsigned DEFAULT NULL,
  `project_original_guid` int(10) unsigned DEFAULT NULL,
  `project_clone_created` int(10) unsigned DEFAULT NULL,
  `project_clone_realm_id` int(10) unsigned DEFAULT NULL,
  `project_clone_guid` int(10) unsigned DEFAULT NULL,
  `project_migrant_created` int(10) unsigned DEFAULT NULL,
  `project_migrant_realm_id` int(10) unsigned DEFAULT NULL,
  `project_migrant_guid` int(10) unsigned DEFAULT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `taxi_path_point` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.characters: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_account_data
CREATE TABLE IF NOT EXISTS `character_account_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_account_data: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_account_data` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_achievement
CREATE TABLE IF NOT EXISTS `character_achievement` (
  `guid` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_achievement: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_achievement` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_achievement_progress
CREATE TABLE IF NOT EXISTS `character_achievement_progress` (
  `guid` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_achievement_progress: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_achievement_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_achievement_progress` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_action
CREATE TABLE IF NOT EXISTS `character_action` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_action: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_action` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_arena_stats
CREATE TABLE IF NOT EXISTS `character_arena_stats` (
  `guid` int(10) NOT NULL,
  `slot` tinyint(3) NOT NULL,
  `matchMakerRating` smallint(5) NOT NULL,
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_arena_stats: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_arena_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_arena_stats` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_aura
CREATE TABLE IF NOT EXISTS `character_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `slot` tinyint(3) unsigned NOT NULL,
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` int(10) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` int(10) unsigned DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_aura: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_aura_effect
CREATE TABLE IF NOT EXISTS `character_aura_effect` (
  `guid` int(10) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `effect` tinyint(3) unsigned NOT NULL,
  `base_amount` int(10) NOT NULL DEFAULT '0',
  `amount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`slot`,`effect`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_aura_effect: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_aura_effect` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura_effect` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_banned
CREATE TABLE IF NOT EXISTS `character_banned` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- Volcando datos para la tabla characters.character_banned: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_banned` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_battleground_data
CREATE TABLE IF NOT EXISTS `character_battleground_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiPathPoint` smallint(5) unsigned NOT NULL,
  `mountSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_battleground_data: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_battleground_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_data` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_battleground_random
CREATE TABLE IF NOT EXISTS `character_battleground_random` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_battleground_random: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_battleground_random` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_random` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_battleground_stats
CREATE TABLE IF NOT EXISTS `character_battleground_stats` (
  `guid` int(10) unsigned NOT NULL,
  `total_count` int(10) unsigned NOT NULL DEFAULT '0',
  `total_wins` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_battleground_stats: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_battleground_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_stats` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_battleground_weekend
CREATE TABLE IF NOT EXISTS `character_battleground_weekend` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_battleground_weekend: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_battleground_weekend` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_weekend` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_bonus_roll
CREATE TABLE IF NOT EXISTS `character_bonus_roll` (
  `guid` int(10) unsigned NOT NULL,
  `bonus_chance` float DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_bonus_roll: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_bonus_roll` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_bonus_roll` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_completed_challenges
CREATE TABLE IF NOT EXISTS `character_completed_challenges` (
  `guid` int(10) unsigned NOT NULL,
  `map` int(10) unsigned NOT NULL DEFAULT '0',
  `best_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `best_medal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `best_medal_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`map`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_completed_challenges: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_completed_challenges` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_completed_challenges` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_cuf_profiles
CREATE TABLE IF NOT EXISTS `character_cuf_profiles` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Character Guid',
  `id` tinyint(3) unsigned NOT NULL COMMENT 'Profile Id (0-4)',
  `name` varchar(12) NOT NULL COMMENT 'Profile Name',
  `frameHeight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Height',
  `frameWidth` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Width',
  `sortBy` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Sort By',
  `healthText` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Health Text',
  `boolOptions` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Many Configurable Bool Options',
  `unk146` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk147` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk148` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk150` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  `unk152` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  `unk154` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  PRIMARY KEY (`guid`,`id`),
  KEY `index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_cuf_profiles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_cuf_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_cuf_profiles` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_currency
CREATE TABLE IF NOT EXISTS `character_currency` (
  `guid` int(10) unsigned NOT NULL,
  `currency` smallint(5) unsigned NOT NULL,
  `total_count` int(10) unsigned NOT NULL,
  `week_count` int(10) unsigned NOT NULL,
  `season_count` int(10) unsigned NOT NULL,
  `flags` int(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_currency: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_currency` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_declinedname
CREATE TABLE IF NOT EXISTS `character_declinedname` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_declinedname: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_declinedname` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_deserter
CREATE TABLE IF NOT EXISTS `character_deserter` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `deserter_mod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_deserter_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_deserter: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_deserter` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_deserter` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_equipmentsets
CREATE TABLE IF NOT EXISTS `character_equipmentsets` (
  `guid` int(10) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `ignore_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `item0` int(11) unsigned NOT NULL DEFAULT '0',
  `item1` int(11) unsigned NOT NULL DEFAULT '0',
  `item2` int(11) unsigned NOT NULL DEFAULT '0',
  `item3` int(11) unsigned NOT NULL DEFAULT '0',
  `item4` int(11) unsigned NOT NULL DEFAULT '0',
  `item5` int(11) unsigned NOT NULL DEFAULT '0',
  `item6` int(11) unsigned NOT NULL DEFAULT '0',
  `item7` int(11) unsigned NOT NULL DEFAULT '0',
  `item8` int(11) unsigned NOT NULL DEFAULT '0',
  `item9` int(11) unsigned NOT NULL DEFAULT '0',
  `item10` int(11) unsigned NOT NULL DEFAULT '0',
  `item11` int(11) unsigned NOT NULL DEFAULT '0',
  `item12` int(11) unsigned NOT NULL DEFAULT '0',
  `item13` int(11) unsigned NOT NULL DEFAULT '0',
  `item14` int(11) unsigned NOT NULL DEFAULT '0',
  `item15` int(11) unsigned NOT NULL DEFAULT '0',
  `item16` int(11) unsigned NOT NULL DEFAULT '0',
  `item17` int(11) unsigned NOT NULL DEFAULT '0',
  `item18` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_equipmentsets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_equipmentsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_equipmentsets` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_gifts
CREATE TABLE IF NOT EXISTS `character_gifts` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_gifts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_gifts` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_glyphs
CREATE TABLE IF NOT EXISTS `character_glyphs` (
  `guid` int(10) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `glyph1` smallint(5) unsigned DEFAULT '0',
  `glyph2` smallint(5) unsigned DEFAULT '0',
  `glyph3` smallint(5) unsigned DEFAULT '0',
  `glyph4` smallint(5) unsigned DEFAULT '0',
  `glyph5` smallint(5) unsigned DEFAULT '0',
  `glyph6` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_glyphs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_glyphs` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_glyphs` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_homebind
CREATE TABLE IF NOT EXISTS `character_homebind` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_homebind: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_homebind` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_homebind` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_instance
CREATE TABLE IF NOT EXISTS `character_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_instance: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_instance` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_inventory
CREATE TABLE IF NOT EXISTS `character_inventory` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  UNIQUE KEY `guid` (`guid`,`bag`,`slot`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_inventory: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_inventory` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_loot_lockout
CREATE TABLE IF NOT EXISTS `character_loot_lockout` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character GUID',
  `entry` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Looted object entry',
  `difficulty` int(10) unsigned NOT NULL DEFAULT '7',
  `type` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_loot_lockout: 0 rows
/*!40000 ALTER TABLE `character_loot_lockout` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_loot_lockout` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_pet
CREATE TABLE IF NOT EXISTS `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned DEFAULT '0',
  `CreatedBySpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` int(10) unsigned NOT NULL DEFAULT '0',
  `abdata` text,
  `specialization` smallint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `idx_slot` (`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Volcando datos para la tabla characters.character_pet: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_pet_current
CREATE TABLE IF NOT EXISTS `character_pet_current` (
  `owner` int(10) unsigned NOT NULL,
  `pet_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_pet_current: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_pet_current` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet_current` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_pet_declinedname
CREATE TABLE IF NOT EXISTS `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_pet_declinedname: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_pet_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet_declinedname` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_queststatus
CREATE TABLE IF NOT EXISTS `character_queststatus` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timer` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_queststatus: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_queststatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_queststatus_daily
CREATE TABLE IF NOT EXISTS `character_queststatus_daily` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_queststatus_daily: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_queststatus_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_daily` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_queststatus_monthly
CREATE TABLE IF NOT EXISTS `character_queststatus_monthly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_queststatus_monthly: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_queststatus_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_monthly` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_queststatus_objective
CREATE TABLE IF NOT EXISTS `character_queststatus_objective` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `objectiveId` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`objectiveId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_queststatus_objective: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_queststatus_objective` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_objective` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_queststatus_rewarded
CREATE TABLE IF NOT EXISTS `character_queststatus_rewarded` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `active` tinyint(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_queststatus_rewarded: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_queststatus_rewarded` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_rewarded` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_queststatus_seasonal
CREATE TABLE IF NOT EXISTS `character_queststatus_seasonal` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `event` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_queststatus_seasonal: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_queststatus_seasonal` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_seasonal` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_queststatus_weekly
CREATE TABLE IF NOT EXISTS `character_queststatus_weekly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_queststatus_weekly: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_queststatus_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_weekly` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_reputation
CREATE TABLE IF NOT EXISTS `character_reputation` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `standing` float NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_reputation: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_reputation` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_research_digsites
CREATE TABLE IF NOT EXISTS `character_research_digsites` (
  `guid` int(11) NOT NULL COMMENT 'Global Unique Identifier',
  `digsiteId` int(11) NOT NULL,
  `currentFindGUID` int(11) NOT NULL DEFAULT '0',
  `remainingFindCount` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`digsiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla characters.character_research_digsites: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_research_digsites` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_research_digsites` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_research_history
CREATE TABLE IF NOT EXISTS `character_research_history` (
  `guid` int(11) NOT NULL COMMENT 'Global Unique Identifier',
  `projectId` int(11) NOT NULL,
  `researchCount` int(11) NOT NULL,
  `firstResearchTimestamp` int(11) NOT NULL,
  PRIMARY KEY (`guid`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla characters.character_research_history: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_research_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_research_history` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_research_projects
CREATE TABLE IF NOT EXISTS `character_research_projects` (
  `guid` int(11) NOT NULL COMMENT 'Global Unique Identifier',
  `projectId` int(11) NOT NULL,
  PRIMARY KEY (`guid`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla characters.character_research_projects: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_research_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_research_projects` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_service
CREATE TABLE IF NOT EXISTS `character_service` (
  `id` int(11) unsigned NOT NULL,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `service` int(10) unsigned NOT NULL DEFAULT '0',
  `data1` int(10) unsigned NOT NULL DEFAULT '0',
  `data2` int(10) unsigned NOT NULL DEFAULT '0',
  `data3` int(10) unsigned NOT NULL DEFAULT '0',
  `data4` text,
  `creation_date` int(11) unsigned NOT NULL,
  `execution_date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_service: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_service` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_skills
CREATE TABLE IF NOT EXISTS `character_skills` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_skills: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skills` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_social
CREATE TABLE IF NOT EXISTS `character_social` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_social: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_social` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_spell
CREATE TABLE IF NOT EXISTS `character_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.character_spell: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_spell_charges
CREATE TABLE IF NOT EXISTS `character_spell_charges` (
  `guid` int(11) unsigned NOT NULL,
  `category` int(11) unsigned NOT NULL,
  `reset_time` bigint(20) unsigned NOT NULL,
  `used_charges` int(11) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_spell_charges: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_spell_charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_charges` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_spell_cooldown
CREATE TABLE IF NOT EXISTS `character_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `category_end` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_spell_cooldown: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_cooldown` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_stats
CREATE TABLE IF NOT EXISTS `character_stats` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `spirit` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPower` int(10) unsigned NOT NULL DEFAULT '0',
  `resilience` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_stats: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stats` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_talent
CREATE TABLE IF NOT EXISTS `character_talent` (
  `guid` int(10) unsigned NOT NULL,
  `spell` mediumint(8) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_talent: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_talent` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_talent` ENABLE KEYS */;

-- Volcando estructura para tabla characters.character_void_storage
CREATE TABLE IF NOT EXISTS `character_void_storage` (
  `itemId` bigint(20) unsigned NOT NULL,
  `playerGuid` int(10) unsigned NOT NULL,
  `itemEntry` mediumint(8) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `randomProperty` int(10) unsigned NOT NULL DEFAULT '0',
  `suffixFactor` int(10) unsigned NOT NULL DEFAULT '0',
  `upgradeId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `idx_player_slot` (`playerGuid`,`slot`),
  KEY `idx_player` (`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.character_void_storage: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `character_void_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_void_storage` ENABLE KEYS */;

-- Volcando estructura para tabla characters.corpse
CREATE TABLE IF NOT EXISTS `corpse` (
  `corpseGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `phaseMask` int(10) unsigned NOT NULL DEFAULT '1',
  `displayId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `corpseType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`corpseGuid`),
  KEY `idx_type` (`corpseType`),
  KEY `idx_instance` (`instanceId`),
  KEY `idx_player` (`guid`),
  KEY `idx_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Death System';

-- Volcando datos para la tabla characters.corpse: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `corpse` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpse` ENABLE KEYS */;

-- Volcando estructura para tabla characters.creature_respawn
CREATE TABLE IF NOT EXISTS `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- Volcando datos para la tabla characters.creature_respawn: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `creature_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_respawn` ENABLE KEYS */;

-- Volcando estructura para tabla characters.custom_transmogrification
CREATE TABLE IF NOT EXISTS `custom_transmogrification` (
  `GUID` int(10) unsigned NOT NULL COMMENT 'Item guidLow',
  `FakeEntry` int(10) unsigned NOT NULL COMMENT 'Item entry',
  `Owner` int(10) unsigned NOT NULL COMMENT 'Player guidLow',
  PRIMARY KEY (`GUID`),
  KEY `Owner` (`Owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='don''t work just yet.';

-- Volcando datos para la tabla characters.custom_transmogrification: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `custom_transmogrification` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_transmogrification` ENABLE KEYS */;

-- Volcando estructura para tabla characters.custom_transmogrification_sets
CREATE TABLE IF NOT EXISTS `custom_transmogrification_sets` (
  `Owner` int(10) unsigned NOT NULL COMMENT 'Player guidlow',
  `PresetID` tinyint(3) unsigned NOT NULL COMMENT 'Preset identifier',
  `SetName` text COMMENT 'SetName',
  `SetData` text COMMENT 'Slot1 Entry1 Slot2 Entry2',
  PRIMARY KEY (`Owner`,`PresetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='6_1';

-- Volcando datos para la tabla characters.custom_transmogrification_sets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `custom_transmogrification_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_transmogrification_sets` ENABLE KEYS */;

-- Volcando estructura para tabla characters.daily_players_reports
CREATE TABLE IF NOT EXISTS `daily_players_reports` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creation_time` int(10) unsigned NOT NULL DEFAULT '0',
  `average` float NOT NULL DEFAULT '0',
  `total_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `speed_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fly_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `jump_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `climb_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.daily_players_reports: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `daily_players_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_players_reports` ENABLE KEYS */;

-- Volcando estructura para tabla characters.executed_services
CREATE TABLE IF NOT EXISTS `executed_services` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('rename','change_acc','customize','change_race','change_class','change_prof','char_restore','guild_rename','unban','level_down','marketplace','transfer','boost','item_restore','boost_profession','boost_profession_small') NOT NULL,
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '(player or guild)',
  `old_data` text NOT NULL,
  `new_data` text NOT NULL,
  `execute_date` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.executed_services: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `executed_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `executed_services` ENABLE KEYS */;

-- Volcando estructura para tabla characters.fake_items
CREATE TABLE IF NOT EXISTS `fake_items` (
  `guid` int(11) NOT NULL,
  `fakeEntry` int(11) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.fake_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `fake_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `fake_items` ENABLE KEYS */;

-- Volcando estructura para tabla characters.gameobject_respawn
CREATE TABLE IF NOT EXISTS `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- Volcando datos para la tabla characters.gameobject_respawn: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `gameobject_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_respawn` ENABLE KEYS */;

-- Volcando estructura para tabla characters.game_event_condition_save
CREATE TABLE IF NOT EXISTS `game_event_condition_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.game_event_condition_save: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `game_event_condition_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_condition_save` ENABLE KEYS */;

-- Volcando estructura para tabla characters.game_event_save
CREATE TABLE IF NOT EXISTS `game_event_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.game_event_save: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `game_event_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_save` ENABLE KEYS */;

-- Volcando estructura para tabla characters.gm_subsurveys
CREATE TABLE IF NOT EXISTS `gm_subsurveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsurveyId` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`surveyId`,`subsurveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.gm_subsurveys: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `gm_subsurveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_subsurveys` ENABLE KEYS */;

-- Volcando estructura para tabla characters.gm_surveys
CREATE TABLE IF NOT EXISTS `gm_surveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `mainSurvey` int(10) unsigned NOT NULL DEFAULT '0',
  `overallComment` longtext NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`surveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.gm_surveys: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `gm_surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_surveys` ENABLE KEYS */;

-- Volcando estructura para tabla characters.gm_tickets
CREATE TABLE IF NOT EXISTS `gm_tickets` (
  `ticketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier of ticket creator',
  `name` varchar(12) NOT NULL COMMENT 'Name of ticket creator',
  `message` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `lastModifiedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `closedBy` int(10) NOT NULL DEFAULT '0',
  `assignedTo` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  `response` text NOT NULL,
  `completed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `escalated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `viewed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `haveTicket` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.gm_tickets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `gm_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_tickets` ENABLE KEYS */;

-- Volcando estructura para tabla characters.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` int(10) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` int(10) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` int(10) unsigned NOT NULL,
  `icon2` int(10) unsigned NOT NULL,
  `icon3` int(10) unsigned NOT NULL,
  `icon4` int(10) unsigned NOT NULL,
  `icon5` int(10) unsigned NOT NULL,
  `icon6` int(10) unsigned NOT NULL,
  `icon7` int(10) unsigned NOT NULL,
  `icon8` int(10) unsigned NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `raiddifficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- Volcando datos para la tabla characters.groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Volcando estructura para tabla characters.group_completed_challenges
CREATE TABLE IF NOT EXISTS `group_completed_challenges` (
  `map` int(10) unsigned NOT NULL,
  `attemptId` int(10) unsigned NOT NULL DEFAULT '0',
  `completion_time` int(10) unsigned NOT NULL DEFAULT '0',
  `completion_date` int(10) unsigned NOT NULL DEFAULT '0',
  `medal_earned` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `group_members` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `member_1_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `member_1_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `member_2_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `member_2_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `member_3_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `member_3_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `member_4_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `member_4_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `member_5_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `member_5_spec` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`map`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.group_completed_challenges: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `group_completed_challenges` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_completed_challenges` ENABLE KEYS */;

-- Volcando estructura para tabla characters.group_instance
CREATE TABLE IF NOT EXISTS `group_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.group_instance: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `group_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_instance` ENABLE KEYS */;

-- Volcando estructura para tabla characters.group_member
CREATE TABLE IF NOT EXISTS `group_member` (
  `guid` int(10) unsigned NOT NULL,
  `memberGuid` int(10) unsigned NOT NULL,
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- Volcando datos para la tabla characters.group_member: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild
CREATE TABLE IF NOT EXISTS `guild` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` int(10) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(128) NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned DEFAULT '1',
  `experience` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Volcando datos para la tabla characters.guild: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_achievement
CREATE TABLE IF NOT EXISTS `guild_achievement` (
  `guildId` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `guids` text NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.guild_achievement: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_achievement` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_achievement_progress
CREATE TABLE IF NOT EXISTS `guild_achievement_progress` (
  `guildId` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `completedGuid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildId`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.guild_achievement_progress: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_achievement_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_achievement_progress` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_bank_eventlog
CREATE TABLE IF NOT EXISTS `guild_bank_eventlog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.guild_bank_eventlog: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_bank_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_eventlog` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_bank_item
CREATE TABLE IF NOT EXISTS `guild_bank_item` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.guild_bank_item: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_bank_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_item` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_bank_right
CREATE TABLE IF NOT EXISTS `guild_bank_right` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.guild_bank_right: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_bank_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_right` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_bank_tab
CREATE TABLE IF NOT EXISTS `guild_bank_tab` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.guild_bank_tab: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_bank_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_tab` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_challenges
CREATE TABLE IF NOT EXISTS `guild_challenges` (
  `guild_id` int(11) unsigned NOT NULL,
  `dungeon` smallint(3) unsigned NOT NULL DEFAULT '0',
  `raid` smallint(3) unsigned NOT NULL DEFAULT '0',
  `rated_bg` smallint(3) unsigned NOT NULL DEFAULT '0',
  `scenario` smallint(3) unsigned NOT NULL DEFAULT '0',
  `dungeon_challenge` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.guild_challenges: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_challenges` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_challenges` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_completed_challenges
CREATE TABLE IF NOT EXISTS `guild_completed_challenges` (
  `map` int(10) unsigned NOT NULL,
  `guildId` int(10) unsigned NOT NULL,
  `attemptId` int(10) unsigned NOT NULL DEFAULT '0',
  `completion_time` int(10) unsigned NOT NULL DEFAULT '0',
  `completion_date` int(10) unsigned NOT NULL DEFAULT '0',
  `medal_earned` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guild_members` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `member_1_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `member_1_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `member_2_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `member_2_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `member_3_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `member_3_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `member_4_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `member_4_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `member_5_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `member_5_spec` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`map`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.guild_completed_challenges: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_completed_challenges` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_completed_challenges` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_eventlog
CREATE TABLE IF NOT EXISTS `guild_eventlog` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(10) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(10) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';

-- Volcando datos para la tabla characters.guild_eventlog: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_eventlog` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_finder_applicant
CREATE TABLE IF NOT EXISTS `guild_finder_applicant` (
  `guildId` int(10) unsigned DEFAULT NULL,
  `playerGuid` int(10) unsigned DEFAULT NULL,
  `availability` tinyint(3) unsigned DEFAULT '0',
  `classRole` tinyint(3) unsigned DEFAULT '0',
  `interests` tinyint(3) unsigned DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `submitTime` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `guildId` (`guildId`,`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.guild_finder_applicant: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_finder_applicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_finder_applicant` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_finder_guild_settings
CREATE TABLE IF NOT EXISTS `guild_finder_guild_settings` (
  `guildId` int(10) unsigned NOT NULL,
  `availability` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `classRoles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `interests` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.guild_finder_guild_settings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_finder_guild_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_finder_guild_settings` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_member
CREATE TABLE IF NOT EXISTS `guild_member` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` int(10) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  `achievement_points` smallint(5) unsigned NOT NULL DEFAULT '0',
  `first_prof_skill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `first_prof_value` smallint(5) unsigned NOT NULL DEFAULT '0',
  `first_prof_rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `first_prof_recipes` text,
  `second_prof_skill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `second_prof_value` smallint(5) unsigned NOT NULL DEFAULT '0',
  `second_prof_rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `second_prof_recipes` text,
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Volcando datos para la tabla characters.guild_member: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_member_withdraw
CREATE TABLE IF NOT EXISTS `guild_member_withdraw` (
  `guid` int(10) unsigned NOT NULL,
  `tab0` int(10) unsigned NOT NULL DEFAULT '0',
  `tab1` int(10) unsigned NOT NULL DEFAULT '0',
  `tab2` int(10) unsigned NOT NULL DEFAULT '0',
  `tab3` int(10) unsigned NOT NULL DEFAULT '0',
  `tab4` int(10) unsigned NOT NULL DEFAULT '0',
  `tab5` int(10) unsigned NOT NULL DEFAULT '0',
  `tab6` int(10) unsigned NOT NULL DEFAULT '0',
  `tab7` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Member Daily Withdraws';

-- Volcando datos para la tabla characters.guild_member_withdraw: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_member_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member_withdraw` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_newslog
CREATE TABLE IF NOT EXISTS `guild_newslog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.guild_newslog: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_newslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_newslog` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_rank
CREATE TABLE IF NOT EXISTS `guild_rank` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `rindex` tinyint(3) unsigned NOT NULL,
  `rid` tinyint(3) unsigned NOT NULL,
  `rname` varchar(20) NOT NULL DEFAULT '',
  `rights` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Volcando datos para la tabla characters.guild_rank: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_rank` ENABLE KEYS */;

-- Volcando estructura para tabla characters.guild_reputation
CREATE TABLE IF NOT EXISTS `guild_reputation` (
  `guid` int(10) unsigned NOT NULL,
  `guild` int(10) unsigned NOT NULL,
  `reputation` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.guild_reputation: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `guild_reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_reputation` ENABLE KEYS */;

-- Volcando estructura para tabla characters.instance
CREATE TABLE IF NOT EXISTS `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lfg` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int(10) unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.instance: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance` ENABLE KEYS */;

-- Volcando estructura para tabla characters.instance_reset
CREATE TABLE IF NOT EXISTS `instance_reset` (
  `mapid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.instance_reset: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `instance_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_reset` ENABLE KEYS */;

-- Volcando estructura para tabla characters.item_deleted
CREATE TABLE IF NOT EXISTS `item_deleted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_guid` int(11) NOT NULL,
  `old_item_guid` int(11) NOT NULL,
  `item_entry` int(11) NOT NULL,
  `item_count` int(11) NOT NULL,
  `delete_date` int(11) NOT NULL,
  `delete_type` int(11) NOT NULL,
  `restored` tinyint(1) NOT NULL DEFAULT '0',
  `restore_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_guid_old_item_guid` (`owner_guid`,`old_item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.item_deleted: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `item_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_deleted` ENABLE KEYS */;

-- Volcando estructura para tabla characters.item_instance
CREATE TABLE IF NOT EXISTS `item_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(10) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyId` smallint(5) NOT NULL DEFAULT '0',
  `reforgeID` int(10) NOT NULL DEFAULT '0',
  `transmogrifyId` int(10) NOT NULL DEFAULT '0',
  `upgradeID` int(10) NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `text` text,
  `pet_species` int(11) unsigned NOT NULL,
  `pet_breed` int(11) unsigned NOT NULL,
  `pet_quality` int(11) unsigned NOT NULL,
  `pet_level` int(11) unsigned NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';

-- Volcando datos para la tabla characters.item_instance: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `item_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance` ENABLE KEYS */;

-- Volcando estructura para tabla characters.item_loot_items
CREATE TABLE IF NOT EXISTS `item_loot_items` (
  `container_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'loot item entry (item_instance.itemEntry)',
  `item_count` int(10) NOT NULL DEFAULT '0' COMMENT 'stack size',
  `follow_rules` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'follow loot rules',
  `ffa` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'free-for-all',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `counted` tinyint(1) NOT NULL DEFAULT '0',
  `under_threshold` tinyint(1) NOT NULL DEFAULT '0',
  `needs_quest` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'quest drop',
  `rnd_prop` int(10) NOT NULL DEFAULT '0' COMMENT 'random enchantment added when originally rolled',
  `rnd_suffix` int(10) NOT NULL DEFAULT '0' COMMENT 'random suffix added when originally rolled'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla characters.item_loot_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `item_loot_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_items` ENABLE KEYS */;

-- Volcando estructura para tabla characters.item_loot_money
CREATE TABLE IF NOT EXISTS `item_loot_money` (
  `container_id` int(10) NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `money` int(10) NOT NULL DEFAULT '0' COMMENT 'money loot (in copper)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla characters.item_loot_money: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `item_loot_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_money` ENABLE KEYS */;

-- Volcando estructura para tabla characters.item_refund_instance
CREATE TABLE IF NOT EXISTS `item_refund_instance` (
  `item_guid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` int(10) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- Volcando datos para la tabla characters.item_refund_instance: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `item_refund_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_refund_instance` ENABLE KEYS */;

-- Volcando estructura para tabla characters.item_soulbound_trade_data
CREATE TABLE IF NOT EXISTS `item_soulbound_trade_data` (
  `itemGuid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- Volcando datos para la tabla characters.item_soulbound_trade_data: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `item_soulbound_trade_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_soulbound_trade_data` ENABLE KEYS */;

-- Volcando estructura para tabla characters.lag_reports
CREATE TABLE IF NOT EXISTS `lag_reports` (
  `reportId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `lagType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `latency` int(10) unsigned NOT NULL DEFAULT '0',
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Volcando datos para la tabla characters.lag_reports: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `lag_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `lag_reports` ENABLE KEYS */;

-- Volcando estructura para tabla characters.lfg_data
CREATE TABLE IF NOT EXISTS `lfg_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `dungeon` int(10) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LFG Data';

-- Volcando datos para la tabla characters.lfg_data: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `lfg_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `lfg_data` ENABLE KEYS */;

-- Volcando estructura para tabla characters.mail
CREATE TABLE IF NOT EXISTS `mail` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `deliver_time` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cod` bigint(20) unsigned NOT NULL DEFAULT '0',
  `checked` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail System';

-- Volcando datos para la tabla characters.mail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;

-- Volcando estructura para tabla characters.mail_items
CREATE TABLE IF NOT EXISTS `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_mail_id` (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla characters.mail_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mail_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_items` ENABLE KEYS */;

-- Volcando estructura para tabla characters.petition
CREATE TABLE IF NOT EXISTS `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ownerguid`,`type`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Volcando datos para la tabla characters.petition: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `petition` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition` ENABLE KEYS */;

-- Volcando estructura para tabla characters.petition_sign
CREATE TABLE IF NOT EXISTS `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `player_account` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Volcando datos para la tabla characters.petition_sign: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `petition_sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition_sign` ENABLE KEYS */;

-- Volcando estructura para tabla characters.pet_aura
CREATE TABLE IF NOT EXISTS `pet_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL,
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` int(10) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` int(10) unsigned DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.pet_aura: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pet_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura` ENABLE KEYS */;

-- Volcando estructura para tabla characters.pet_aura_effect
CREATE TABLE IF NOT EXISTS `pet_aura_effect` (
  `guid` int(10) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `effect` tinyint(3) unsigned NOT NULL,
  `base_amount` int(10) NOT NULL DEFAULT '0',
  `amount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`slot`,`effect`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.pet_aura_effect: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pet_aura_effect` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura_effect` ENABLE KEYS */;

-- Volcando estructura para tabla characters.pet_spell
CREATE TABLE IF NOT EXISTS `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Volcando datos para la tabla characters.pet_spell: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pet_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell` ENABLE KEYS */;

-- Volcando estructura para tabla characters.pet_spell_cooldown
CREATE TABLE IF NOT EXISTS `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `category_end` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.pet_spell_cooldown: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pet_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell_cooldown` ENABLE KEYS */;

-- Volcando estructura para tabla characters.players_reports_status
CREATE TABLE IF NOT EXISTS `players_reports_status` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creation_time` int(10) unsigned NOT NULL DEFAULT '0',
  `average` float NOT NULL DEFAULT '0',
  `total_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `speed_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fly_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `jump_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `climb_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.players_reports_status: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `players_reports_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `players_reports_status` ENABLE KEYS */;

-- Volcando estructura para tabla characters.pool_quest_save
CREATE TABLE IF NOT EXISTS `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.pool_quest_save: ~62 rows (aproximadamente)
/*!40000 ALTER TABLE `pool_quest_save` DISABLE KEYS */;
INSERT INTO `pool_quest_save` (`pool_id`, `quest_id`) VALUES
	(349, 14104),
	(350, 13904),
	(351, 13914),
	(352, 11379),
	(353, 11665),
	(354, 13422),
	(356, 11372),
	(357, 11387),
	(358, 25159),
	(359, 25154),
	(360, 29364),
	(361, 26235),
	(362, 29332),
	(363, 26192),
	(364, 29355),
	(365, 29313),
	(366, 26543),
	(367, 29348),
	(368, 29361),
	(369, 26414),
	(370, 29347),
	(371, 29323),
	(372, 28063),
	(372, 28130),
	(373, 27949),
	(373, 28046),
	(374, 27975),
	(374, 27978),
	(375, 27944),
	(375, 27972),
	(376, 28687),
	(376, 28721),
	(377, 28678),
	(377, 28683),
	(378, 28698),
	(378, 28700),
	(379, 28690),
	(379, 28692),
	(380, 12726),
	(381, 12762),
	(382, 12741),
	(383, 12760),
	(5662, 13673),
	(5663, 13762),
	(5664, 13769),
	(5665, 13774),
	(5666, 13779),
	(5667, 13783),
	(5668, 13669),
	(5669, 13600),
	(5670, 13741),
	(5671, 13746),
	(5672, 13759),
	(5673, 13752),
	(5674, 13101),
	(5675, 13112),
	(5676, 13834),
	(5677, 12962),
	(5678, 24584),
	(12001, 31523),
	(12002, 31706),
	(12003, 31271);
/*!40000 ALTER TABLE `pool_quest_save` ENABLE KEYS */;

-- Volcando estructura para tabla characters.rated_pvp_info
CREATE TABLE IF NOT EXISTS `rated_pvp_info` (
  `guid` int(10) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `season` smallint(5) unsigned NOT NULL,
  `rank` smallint(5) unsigned DEFAULT '0',
  `rating` smallint(5) unsigned DEFAULT '0',
  `matchmaker_rating` smallint(5) unsigned DEFAULT '0',
  `week_best` smallint(5) unsigned DEFAULT '0',
  `week_games` smallint(5) unsigned DEFAULT '0',
  `week_wins` smallint(5) unsigned DEFAULT '0',
  `season_best` smallint(5) unsigned DEFAULT '0',
  `season_games` smallint(5) unsigned DEFAULT '0',
  `season_wins` smallint(5) unsigned DEFAULT '0',
  `last_week_best` smallint(5) unsigned DEFAULT '0',
  `bonus_reward` tinyint(1) NOT NULL DEFAULT '0',
  `win_streak` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`slot`,`season`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.rated_pvp_info: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `rated_pvp_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `rated_pvp_info` ENABLE KEYS */;

-- Volcando estructura para tabla characters.reserved_name
CREATE TABLE IF NOT EXISTS `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player Reserved Names';

-- Volcando datos para la tabla characters.reserved_name: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `reserved_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserved_name` ENABLE KEYS */;

-- Volcando estructura para tabla characters.ticket_bug
CREATE TABLE IF NOT EXISTS `ticket_bug` (
  `ticketId` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `bugNote` text NOT NULL,
  `ticketCreateTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `closedBy` bigint(20) NOT NULL DEFAULT '0',
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.ticket_bug: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ticket_bug` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_bug` ENABLE KEYS */;

-- Volcando estructura para tabla characters.warden_action
CREATE TABLE IF NOT EXISTS `warden_action` (
  `wardenId` smallint(5) unsigned NOT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla characters.warden_action: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `warden_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `warden_action` ENABLE KEYS */;

-- Volcando estructura para tabla characters.worldstates
CREATE TABLE IF NOT EXISTS `worldstates` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

-- Volcando datos para la tabla characters.worldstates: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `worldstates` DISABLE KEYS */;
INSERT INTO `worldstates` (`entry`, `value`, `comment`) VALUES
	(3781, 9000000, NULL),
	(3801, 0, NULL),
	(3802, 1, NULL),
	(20001, 1460199600, 'NextArenaPointDistributionTime'),
	(20002, 1460242155, 'NextWeeklyQuestResetTime'),
	(20003, 1459681200, 'NextBGRandomDailyResetTime'),
	(20004, 0, 'cleaning_flags'),
	(20006, 1459681200, NULL),
	(20007, 1462078800, NULL),
	(20050, 1, NULL);
/*!40000 ALTER TABLE `worldstates` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
