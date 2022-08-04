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

-- Volcando estructura para tabla auth.account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL DEFAULT '',
  `battlenet_account` varchar(32) NOT NULL DEFAULT '',
  `sha_pass_hash` varchar(40) NOT NULL DEFAULT '',
  `sessionkey` varchar(80) NOT NULL DEFAULT '',
  `v` varchar(64) NOT NULL DEFAULT '',
  `s` varchar(64) NOT NULL DEFAULT '',
  `token_key` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `reg_mail` varchar(255) NOT NULL DEFAULT '',
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `failed_logins` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_login` timestamp NULL DEFAULT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `mutetime` bigint(20) NOT NULL DEFAULT '0',
  `mutereason` varchar(255) NOT NULL DEFAULT '',
  `muteby` varchar(50) NOT NULL DEFAULT '',
  `locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `os` varchar(4) NOT NULL DEFAULT '',
  `recruiter` int(10) unsigned NOT NULL DEFAULT '0',
  `project_member_id` int(30) unsigned NOT NULL DEFAULT '0',
  `rank` int(5) DEFAULT NULL,
  `staff_id` int(5) DEFAULT NULL,
  `vp` int(5) DEFAULT NULL,
  `dp` int(10) NOT NULL DEFAULT '0',
  `isactive` varchar(50) DEFAULT NULL,
  `activation` varchar(256) DEFAULT NULL,
  `invited_by` varchar(32) NOT NULL DEFAULT '',
  `inv_friend_acc` varchar(32) NOT NULL DEFAULT '',
  `rewarded` int(4) NOT NULL DEFAULT '0',
  `flags` int(5) NOT NULL DEFAULT '0',
  `gmlevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active_realm_id` int(11) unsigned NOT NULL DEFAULT '0',
  `online_mute_timer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `active_mute_id` int(11) unsigned NOT NULL DEFAULT '0',
  `project_verified` tinyint(1) NOT NULL DEFAULT '0',
  `cash` int(10) NOT NULL DEFAULT '0',
  `project_is_free` tinyint(1) NOT NULL DEFAULT '0',
  `project_is_temp` tinyint(1) NOT NULL DEFAULT '0',
  `project_unban_count` tinyint(4) NOT NULL DEFAULT '0',
  `project_antierror` int(10) unsigned DEFAULT NULL,
  `project_attached` int(10) unsigned DEFAULT NULL,
  `project_passchange` int(10) unsigned NOT NULL DEFAULT '0',
  `project_vote_time` bigint(20) NOT NULL DEFAULT '0',
  `project_hwid` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_id` (`id`) USING BTREE,
  KEY `idx_sha` (`sha_pass_hash`) USING BTREE,
  KEY `idx_session` (`sessionkey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Account System';

-- Volcando datos para la tabla auth.account: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

-- Volcando estructura para tabla auth.account_access
CREATE TABLE IF NOT EXISTS `account_access` (
  `id` int(10) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.account_access: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_access` ENABLE KEYS */;

-- Volcando estructura para tabla auth.account_banned
CREATE TABLE IF NOT EXISTS `account_banned` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account id',
  `realm` int(11) NOT NULL,
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- Volcando datos para la tabla auth.account_banned: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_banned` ENABLE KEYS */;

-- Volcando estructura para tabla auth.account_boost
CREATE TABLE IF NOT EXISTS `account_boost` (
  `id` int(11) NOT NULL DEFAULT '0',
  `realmid` int(11) unsigned NOT NULL DEFAULT '1',
  `counter` int(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.account_boost: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_boost` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_boost` ENABLE KEYS */;

-- Volcando estructura para tabla auth.account_muted
CREATE TABLE IF NOT EXISTS `account_muted` (
  `id` int(10) NOT NULL,
  `realmid` int(3) NOT NULL DEFAULT '0',
  `acc_id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  `mute_acc` varchar(32) COLLATE utf8_bin NOT NULL,
  `mute_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `mute_date` bigint(40) NOT NULL,
  `muted_by` varchar(50) COLLATE utf8_bin NOT NULL,
  `mute_time` bigint(20) NOT NULL,
  `mute_reason` varchar(255) COLLATE utf8_bin NOT NULL,
  `public_channels_only` tinyint(3) NOT NULL,
  PRIMARY KEY (`realmid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla auth.account_muted: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_muted` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_muted` ENABLE KEYS */;

-- Volcando estructura para tabla auth.account_premium
CREATE TABLE IF NOT EXISTS `account_premium` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `setdate` bigint(40) NOT NULL DEFAULT '0',
  `unsetdate` bigint(40) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`setdate`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Premium Accounts';

-- Volcando datos para la tabla auth.account_premium: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_premium` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_premium` ENABLE KEYS */;

-- Volcando estructura para tabla auth.account_premium_panda
CREATE TABLE IF NOT EXISTS `account_premium_panda` (
  `id` int(11) NOT NULL DEFAULT '0',
  `pveMode` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.account_premium_panda: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_premium_panda` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_premium_panda` ENABLE KEYS */;

-- Volcando estructura para tabla auth.arena_games
CREATE TABLE IF NOT EXISTS `arena_games` (
  `gameid` bigint(20) NOT NULL DEFAULT '0',
  `teamid` bigint(20) NOT NULL DEFAULT '0',
  `guid` bigint(20) NOT NULL DEFAULT '0',
  `changeType` int(11) NOT NULL,
  `ratingChange` int(11) NOT NULL,
  `teamRating` int(11) NOT NULL,
  `matchMakerRating` smallint(5) unsigned DEFAULT NULL,
  `damageDone` int(11) NOT NULL,
  `deaths` int(11) NOT NULL,
  `healingDone` int(11) NOT NULL,
  `damageTaken` int(11) NOT NULL,
  `healingTaken` int(11) NOT NULL,
  `killingBlows` int(11) NOT NULL,
  `damageAbsorbed` int(11) unsigned NOT NULL,
  `timeControlled` int(11) unsigned NOT NULL,
  `aurasDispelled` int(11) unsigned NOT NULL,
  `aurasStolen` int(11) unsigned NOT NULL,
  `highLatencyTimes` int(11) unsigned NOT NULL,
  `spellsPrecast` int(11) unsigned NOT NULL,
  `mapId` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `class` tinyint(3) unsigned DEFAULT NULL,
  `season` smallint(5) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `realmid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`gameid`,`teamid`,`guid`),
  KEY `idx__teamid` (`teamid`),
  KEY `idx__season__class__type` (`season`,`class`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='WoWArmory Game Chart';

-- Volcando datos para la tabla auth.arena_games: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `arena_games` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_games` ENABLE KEYS */;

-- Volcando estructura para tabla auth.arena_game_id
CREATE TABLE IF NOT EXISTS `arena_game_id` (
  `game_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `realm_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.arena_game_id: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `arena_game_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_game_id` ENABLE KEYS */;

-- Volcando estructura para tabla auth.arena_match_stat
CREATE TABLE IF NOT EXISTS `arena_match_stat` (
  `realm` tinyint(3) unsigned NOT NULL,
  `teamGuid` int(10) unsigned NOT NULL,
  `teamName` text NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `teamRating` smallint(5) unsigned NOT NULL,
  `player` int(10) unsigned NOT NULL,
  `class` tinyint(3) unsigned NOT NULL,
  `name` text NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `mapID` smallint(5) unsigned NOT NULL,
  `instanceID` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`teamGuid`,`realm`,`player`,`instanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.arena_match_stat: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `arena_match_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_match_stat` ENABLE KEYS */;

-- Volcando estructura para tabla auth.arena_team
CREATE TABLE IF NOT EXISTS `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `realmNumber` int(10) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `matchMakerRating` smallint(5) unsigned NOT NULL DEFAULT '1500',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `borderColor` int(10) unsigned NOT NULL DEFAULT '0',
  `season` int(10) unsigned NOT NULL DEFAULT '0',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` int(10) unsigned NOT NULL DEFAULT '0',
  `realmid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.arena_team: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `arena_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team` ENABLE KEYS */;

-- Volcando estructura para tabla auth.arena_team_member
CREATE TABLE IF NOT EXISTS `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `realmid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `personalRating` smallint(5) NOT NULL DEFAULT '0',
  `matchMakerRating` smallint(5) unsigned NOT NULL DEFAULT '1500',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(12) NOT NULL,
  `class` tinyint(3) unsigned NOT NULL,
  `joined` int(10) unsigned NOT NULL DEFAULT '0',
  `removed` int(10) unsigned NOT NULL DEFAULT '0',
  `itemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lastILvlCheck` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`,`guid`,`realmid`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.arena_team_member: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `arena_team_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team_member` ENABLE KEYS */;

-- Volcando estructura para tabla auth.armory_game_chart
CREATE TABLE IF NOT EXISTS `armory_game_chart` (
  `gameid` int(11) NOT NULL,
  `realmid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `teamid` int(11) NOT NULL,
  `guid` int(11) NOT NULL,
  `changeType` int(11) NOT NULL,
  `ratingChange` int(11) NOT NULL,
  `teamRating` int(11) NOT NULL,
  `damageDone` int(11) NOT NULL,
  `deaths` int(11) NOT NULL,
  `healingDone` int(11) NOT NULL,
  `damageTaken` int(11) NOT NULL,
  `healingTaken` int(11) NOT NULL,
  `killingBlows` int(11) NOT NULL,
  `mapId` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `class` tinyint(3) unsigned DEFAULT NULL,
  `season` smallint(5) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.armory_game_chart: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `armory_game_chart` DISABLE KEYS */;
/*!40000 ALTER TABLE `armory_game_chart` ENABLE KEYS */;

-- Volcando estructura para tabla auth.autobroadcast
CREATE TABLE IF NOT EXISTS `autobroadcast` (
  `realmid` int(11) NOT NULL DEFAULT '-1',
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `weight` tinyint(3) unsigned DEFAULT '1',
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`,`realmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.autobroadcast: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `autobroadcast` DISABLE KEYS */;
/*!40000 ALTER TABLE `autobroadcast` ENABLE KEYS */;

-- Volcando estructura para tabla auth.battleground_games
CREATE TABLE IF NOT EXISTS `battleground_games` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `season` int(10) unsigned NOT NULL,
  `realm_id` int(10) unsigned NOT NULL,
  `map_id` int(10) unsigned NOT NULL,
  `instance_id` int(10) unsigned NOT NULL,
  `is_random_bg` tinyint(3) unsigned NOT NULL,
  `winner` enum('H','A','N') NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `realm_id` (`realm_id`),
  KEY `map_id` (`map_id`),
  KEY `season` (`season`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.battleground_games: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `battleground_games` DISABLE KEYS */;
/*!40000 ALTER TABLE `battleground_games` ENABLE KEYS */;

-- Volcando estructura para tabla auth.battleground_ladder_criteria
CREATE TABLE IF NOT EXISTS `battleground_ladder_criteria` (
  `criteria` enum('Win','Loss','FastWin','Kills','ObjectiveCaptures','ObjectiveDefenses','DailyWins','DailyKills','SeasonKills','SeasonWinsAV','SeasonWinsWG','SeasonWinsAB','SeasonWinsEotS','SeasonWinsSotA','SeasonWinsIoC','TotalWins','TotalDraws','TotalLosses','TotalKills','TotalLeavesBeforeGame','TotalLeavesDuringGame') NOT NULL COMMENT 'Name of the column in `battleground_ladder_progress` if `type` is ''Daily'', ''Season'' or ''Statistic''',
  `type` enum('Statistic','Season','Daily','Alterac Valley','Warsong Gulch','Arathi Basin','Eye of the Storm','Strand of the Ancients','Isle of Conquest') NOT NULL COMMENT 'If not set - affects all battlegrounds, if set - overrides global setting only for the specified battleground. Only valid for battleground-specific `type`s',
  `param` int(11) NOT NULL DEFAULT '0',
  `name` tinytext NOT NULL,
  `cap` int(10) unsigned NOT NULL COMMENT 'Maximum count of progress units a player can get',
  `ladder_points_per_progress` int(11) NOT NULL DEFAULT '0' COMMENT 'Repeatable ladder points reward for each unit of progress in this criteria',
  `ladder_points_for_cap` int(11) NOT NULL DEFAULT '0' COMMENT 'One-time ladder points reward for reaching progress cap in this criteria',
  `group_penalty_size` int(11) unsigned NOT NULL DEFAULT '3' COMMENT 'Count of group members at which ladder points penalty from `group_penalty_percent` kicks in',
  `group_penalty_percent` int(11) NOT NULL DEFAULT '0' COMMENT 'Percentage modifier of ladder points for each player in the group above or equal to `group_penalty_size`',
  PRIMARY KEY (`criteria`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.battleground_ladder_criteria: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `battleground_ladder_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `battleground_ladder_criteria` ENABLE KEYS */;

-- Volcando estructura para tabla auth.battleground_ladder_rewards
CREATE TABLE IF NOT EXISTS `battleground_ladder_rewards` (
  `season` int(10) unsigned NOT NULL COMMENT 'Battleground season ID',
  `id` int(10) unsigned NOT NULL COMMENT 'Incrementing number identifying this reward set',
  `top` float unsigned NOT NULL COMMENT 'How many players will receive the reward. Depends on `type`',
  `type` enum('Players','Percents') NOT NULL DEFAULT 'Players' COMMENT 'Determines whether the `top` number or `top` percentage of players will receive the reward',
  `money_reward` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Amount in copper',
  `item_reward` tinytext NOT NULL COMMENT 'Format: itemid:count itemid:count ...',
  `loyalty_reward` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of Orbs of Loyalty',
  `premium_reward` tinytext NOT NULL COMMENT 'Duration in timestring format (e.g. "30d5h42m10s")',
  `title_reward` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Title ID',
  `mail_subject` tinytext NOT NULL,
  `mail_text` text NOT NULL,
  PRIMARY KEY (`season`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.battleground_ladder_rewards: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `battleground_ladder_rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `battleground_ladder_rewards` ENABLE KEYS */;

-- Volcando estructura para tabla auth.battleground_scores
CREATE TABLE IF NOT EXISTS `battleground_scores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each player that participated in the battleground',
  `game_id` int(10) unsigned NOT NULL,
  `team` tinyint(3) unsigned NOT NULL,
  `guid` int(10) unsigned NOT NULL,
  `realm_id` int(10) unsigned NOT NULL,
  `group_index` int(10) unsigned NOT NULL,
  `ladder_points` int(10) NOT NULL,
  `killing_blows` int(10) unsigned NOT NULL,
  `deaths` int(10) unsigned NOT NULL,
  `honorable_kills` int(10) unsigned NOT NULL,
  `damage_done` int(10) unsigned NOT NULL,
  `healing_done` int(10) unsigned NOT NULL,
  `damage_taken` int(10) unsigned NOT NULL,
  `healing_taken` int(10) unsigned NOT NULL,
  `bonus_honor` int(10) unsigned NOT NULL,
  `graveyards_assaulted` int(10) unsigned DEFAULT NULL COMMENT 'Alterac Valley',
  `graveyards_defended` int(10) unsigned DEFAULT NULL COMMENT 'Alterac Valley',
  `towers_assaulted` int(10) unsigned DEFAULT NULL COMMENT 'Alterac Valley',
  `towers_defended` int(10) unsigned DEFAULT NULL COMMENT 'Alterac Valley',
  `mines_captured` int(10) unsigned DEFAULT NULL COMMENT 'Alterac Valley',
  `leaders_killed` int(10) unsigned DEFAULT NULL COMMENT 'Alterac Valley',
  `secondary_objective` int(10) unsigned DEFAULT NULL COMMENT 'Alterac Valley',
  `flag_captures` int(10) unsigned DEFAULT NULL COMMENT 'Warsong Gulch, Eye of the Storm',
  `flag_returns` int(10) unsigned DEFAULT NULL COMMENT 'Warsong Gulch',
  `bases_assaulted` int(10) unsigned DEFAULT NULL COMMENT 'Arathi Basin, Isle of Conquest',
  `bases_defended` int(10) unsigned DEFAULT NULL COMMENT 'Arathi Basin, Isle of Conquest',
  `demolishers_destroyed` int(10) unsigned DEFAULT NULL COMMENT 'Strand of the Ancients',
  `gates_destroyed` int(10) unsigned DEFAULT NULL COMMENT 'Strand of the Ancients',
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`),
  KEY `guid` (`guid`),
  KEY `realm_id` (`realm_id`),
  CONSTRAINT `FK_battleground_scores_battleground_games` FOREIGN KEY (`game_id`) REFERENCES `battleground_games` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.battleground_scores: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `battleground_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `battleground_scores` ENABLE KEYS */;

-- Volcando estructura para tabla auth.battleground_seasons
CREATE TABLE IF NOT EXISTS `battleground_seasons` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `begin` int(10) unsigned NOT NULL,
  `end` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.battleground_seasons: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `battleground_seasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `battleground_seasons` ENABLE KEYS */;

-- Volcando estructura para tabla auth.battlenet_accounts
CREATE TABLE IF NOT EXISTS `battlenet_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `email` varchar(320) NOT NULL,
  `sha_pass_hash` varchar(64) NOT NULL DEFAULT '',
  `v` varchar(256) NOT NULL DEFAULT '',
  `s` varchar(64) NOT NULL DEFAULT '',
  `sessionKey` varchar(128) NOT NULL DEFAULT '',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_login` timestamp NULL DEFAULT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `failed_logins` int(10) unsigned NOT NULL DEFAULT '0',
  `project_member_id` int(10) unsigned DEFAULT NULL,
  `project_is_temp` tinyint(1) DEFAULT '0' COMMENT 'nighthold',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Account System';

-- Volcando datos para la tabla auth.battlenet_accounts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `battlenet_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `battlenet_accounts` ENABLE KEYS */;

-- Volcando estructura para tabla auth.battlenet_account_bans
CREATE TABLE IF NOT EXISTS `battlenet_account_bans` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account id',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- Volcando datos para la tabla auth.battlenet_account_bans: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `battlenet_account_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `battlenet_account_bans` ENABLE KEYS */;

-- Volcando estructura para tabla auth.battlepay_log
CREATE TABLE IF NOT EXISTS `battlepay_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accountId` int(11) unsigned NOT NULL,
  `characterGuid` int(10) NOT NULL DEFAULT '0',
  `realm` int(5) unsigned NOT NULL,
  `item` int(10) NOT NULL DEFAULT '0',
  `price` int(5) unsigned NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.battlepay_log: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `battlepay_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `battlepay_log` ENABLE KEYS */;

-- Volcando estructura para tabla auth.bonus_rates
CREATE TABLE IF NOT EXISTS `bonus_rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Autoincrementable ID',
  `realmid` int(11) NOT NULL DEFAULT '-1' COMMENT 'RealmID for which the rates would be active. -1 for all realms',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'If set to 0 - this bonus would not be loaded',
  `schedule` varchar(50) NOT NULL DEFAULT '* * * * *' COMMENT 'Cron-style schedule defining the time for the bonus rates period. Multiple periods can be specified with a semicolon separated list',
  `multiplier` float NOT NULL DEFAULT '2' COMMENT 'Rate multiplier (i.e. 2 would change the rates to be twice their usual value during the bonus rates period)',
  `rates` text NOT NULL COMMENT 'Space separated list of rate names as used in config (i.e. "Rate.XP.Kill Rate.Honor")',
  `start_announcement` tinytext COMMENT 'Announcement displayed in chat for all online players when the bonus rate period starts',
  `end_announcement` tinytext COMMENT 'Announcement displayed in chat for all online players when the bonus rate period ends',
  `active_announcement` tinytext COMMENT 'Announcement displayed in chat for all players logging in whenever the bonus rate period is active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.bonus_rates: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bonus_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonus_rates` ENABLE KEYS */;

-- Volcando estructura para tabla auth.boost_promotion_executed
CREATE TABLE IF NOT EXISTS `boost_promotion_executed` (
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.boost_promotion_executed: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `boost_promotion_executed` DISABLE KEYS */;
/*!40000 ALTER TABLE `boost_promotion_executed` ENABLE KEYS */;

-- Volcando estructura para tabla auth.broadcast_strings
CREATE TABLE IF NOT EXISTS `broadcast_strings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `next` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.broadcast_strings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `broadcast_strings` DISABLE KEYS */;
/*!40000 ALTER TABLE `broadcast_strings` ENABLE KEYS */;

-- Volcando estructura para tabla auth.config
CREATE TABLE IF NOT EXISTS `config` (
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text,
  `default` text,
  `realmid` smallint(6) NOT NULL DEFAULT '-1',
  `description` text,
  `note` text,
  PRIMARY KEY (`name`,`realmid`),
  KEY `option` (`name`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Here you can put the configs from the worldserver.conf file, so you can change without acessing the machine files.';

-- Volcando datos para la tabla auth.config: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`category`, `name`, `value`, `default`, `realmid`, `description`, `note`) VALUES
	('Players', 'AllowTwoSide.Interaction.Auction', '0', '0', 1, 'Merge all auction houses for players from different teams\nDefault: 0 (Not allowed)\n         1 (Allowed)', NULL),
	('Players', 'AllowTwoSide.Interaction.Chat', '0', '0', -1, 'Allow chat assembling between factions.\nDefault:     0', NULL),
	('AntiCheat', 'Anticheat.DetectionsEnabled', '27', '31', 1, 'Anticheat hack', NULL),
	('AntiCheat', 'Anticheat.ReportsForIngameWarnings', '70', '1', 1, 'Anticheat hack', NULL),
	('Rate', 'BonusRoll.LootChance', '31', '31', 1, 'Bonus Roll', NULL),
	('Dungeon Finder', 'DungeonFinder.CastDeserter', '0', '1', 1, 'Cast Deserter spell at players who leave DF-parties while the dungeons is in progress.\nDefault:     1', NULL),
	('Dungeon Finder', 'DungeonFinder.DPSNeeded', '1', '1', 1, 'Specifies how many players have to select dps role in order for the party to be eligible for a dungeon.\nDefault:     1', NULL),
	('Dungeon Finder', 'DungeonFinder.HealersNeeded', '1', '1', 1, 'Specifies how many players have to select healer role in order for the party to be eligible for a dungeon.\nDefault:     1', NULL),
	('Dungeon Finder', 'DungeonFinder.KeepQueuesInDungeon', 'true', '1', 1, 'Specifies how many players have to select healer role in order for the party to be eligible for a dungeon.\nDefault:     1', NULL),
	('Dungeon Finder', 'DungeonFinder.OverrideRolesRequired', 'true', '0', 1, 'If enabled all LFG role checks will use values from DungeonFinder.TanksNeeded, DungeonFinder.HealersNeeded and DungeonFinder.DPSNeeded to determine the number of players required in order for the party to be eligible for a dungeon. Overrides both group and raid dungeon values.\nDefault:     0', NULL),
	('Dungeon Finder', 'DungeonFinder.ShortageCheckInterval', '60', '60', 1, 'Specifies the interval in seconds at which shortage roles for a queue should be updated.\nDefault:     5', NULL),
	('Dungeon Finder', 'DungeonFinder.ShortagePercent', '50', '50', 1, 'Specifies at which percent of the ideal role representation ratio in a queue should it grant a Call to Arms reward\nDefault:     50', NULL),
	('Dungeon Finder', 'DungeonFinder.TanksNeeded', '1', '1', 1, 'Specifies how many players have to select tank role in order for the party to be eligible for a dungeon.\nDefault:     1', NULL),
	('LFR', 'LFR.LootChance', '100', '20', -1, 'Chance to get personal loot from any boss', NULL),
	('Rate', 'TargetPosRecalculateRange', '5', '5', 1, 'Range attack ', NULL),
	('Misc', 'VengeanceMultipier', '1', '1', -1, NULL, NULL),
	('Performance', 'Visibility.AINotifyDelay', '1000', '1000', 1, 'Description: delay (in milliseconds) between action and nearby AI reaction. Lower values may have\n             performance impact.\nDefault:     1000', NULL),
	('Performance', 'Visibility.RelocationLowerLimit', '10', '20', 1, 'Description: distance in yards. unit should pass that distance to trigger visibility update.\nDefault:     10', NULL),
	('Rate', 'XP.Gather.Difference', '10', '0', 1, '', NULL),
	('Rate', 'XP.Kill.Difference', '10', '0', 1, '', NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Volcando estructura para tabla auth.icore_stat
CREATE TABLE IF NOT EXISTS `icore_stat` (
  `online` smallint(5) unsigned NOT NULL DEFAULT '0',
  `diff` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `revision` varchar(255) NOT NULL DEFAULT 'Skyfire',
  PRIMARY KEY (`online`,`diff`,`uptime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.icore_stat: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `icore_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `icore_stat` ENABLE KEYS */;

-- Volcando estructura para tabla auth.ip_banned
CREATE TABLE IF NOT EXISTS `ip_banned` (
  `ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `bandate` int(10) unsigned NOT NULL,
  `unbandate` int(10) unsigned NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(255) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Banned IPs';

-- Volcando datos para la tabla auth.ip_banned: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ip_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_banned` ENABLE KEYS */;

-- Volcando estructura para tabla auth.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `time` int(10) unsigned NOT NULL,
  `realm` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `string` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.logs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;

-- Volcando estructura para tabla auth.mute_active
CREATE TABLE IF NOT EXISTS `mute_active` (
  `realmid` tinyint(3) NOT NULL,
  `account` int(11) NOT NULL,
  `mute_id` int(11) NOT NULL,
  `mute_timer` int(11) NOT NULL,
  PRIMARY KEY (`realmid`,`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.mute_active: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mute_active` DISABLE KEYS */;
/*!40000 ALTER TABLE `mute_active` ENABLE KEYS */;

-- Volcando estructura para tabla auth.pay_history
CREATE TABLE IF NOT EXISTS `pay_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(255) DEFAULT NULL,
  `synType` varchar(16) DEFAULT NULL,
  `status` varchar(64) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `time` varchar(32) DEFAULT NULL,
  `cpparam` varchar(256) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='not used, don''t know how to make payment work.';

-- Volcando datos para la tabla auth.pay_history: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pay_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_history` ENABLE KEYS */;

-- Volcando estructura para tabla auth.project_betatesters
CREATE TABLE IF NOT EXISTS `project_betatesters` (
  `id` int(11) NOT NULL,
  `betatest_id` int(11) NOT NULL,
  `member_id` mediumint(8) NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk__project_betatesters__members1_idx` (`member_id`) USING BTREE,
  KEY `fk__project_betatesters__account1_idx` (`account_id`) USING BTREE,
  KEY `fk__project_betatesters__project_betatests1_idx` (`betatest_id`) USING BTREE,
  KEY `fk__project_betatesters__project_betatest_accounts1_idx` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='used for betatesting and allowing players with ids.';

-- Volcando datos para la tabla auth.project_betatesters: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `project_betatesters` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_betatesters` ENABLE KEYS */;

-- Volcando estructura para tabla auth.project_member_premiums
CREATE TABLE IF NOT EXISTS `project_member_premiums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` mediumint(8) NOT NULL,
  `setdate` bigint(40) NOT NULL,
  `unsetdate` bigint(40) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `card_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk__nighthold_member_premium__members1_idx` (`member_id`),
  KEY `fk__nighthold_member_premiums__nighthold_member_items1_idx` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Premium Members';

-- Volcando datos para la tabla auth.project_member_premiums: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `project_member_premiums` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_member_premiums` ENABLE KEYS */;

-- Volcando estructura para tabla auth.project_member_rewards
CREATE TABLE IF NOT EXISTS `project_member_rewards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `character_guid` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `realmid` int(10) unsigned NOT NULL,
  `source_type` tinyint(3) unsigned NOT NULL,
  `source_id` int(10) unsigned NOT NULL,
  `reward_amount` int(10) unsigned NOT NULL,
  `reward_date` int(10) unsigned NOT NULL,
  `reward_day` int(10) unsigned NOT NULL COMMENT 'Used only for indexing purposes',
  `processed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `process_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `member_id_reward_day_source_type` (`member_id`,`reward_day`,`source_type`),
  KEY `idx__member_id` (`member_id`),
  KEY `idx__processed` (`processed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Member Rewards';

-- Volcando datos para la tabla auth.project_member_rewards: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `project_member_rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_member_rewards` ENABLE KEYS */;

-- Volcando estructura para tabla auth.project_member_settings
CREATE TABLE IF NOT EXISTS `project_member_settings` (
  `member_id` int(10) unsigned NOT NULL,
  `setting` int(10) unsigned NOT NULL COMMENT 'nightholdMemberInfo::Setting in core',
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`member_id`,`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Member Settings';

-- Volcando datos para la tabla auth.project_member_settings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `project_member_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_member_settings` ENABLE KEYS */;

-- Volcando estructura para tabla auth.promocodes
CREATE TABLE IF NOT EXISTS `promocodes` (
  `code` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Latin letters, digits and dash symbol are allowed, case insensitive',
  `realmid` int(11) NOT NULL DEFAULT '-1' COMMENT 'Realm the code can be redeemed on or -1 for any realm',
  `start_time` int(10) unsigned NOT NULL COMMENT 'Activation UNIX timestamp, 0 if always active',
  `end_time` int(10) unsigned NOT NULL COMMENT 'Expiration UNIX timestamp, 0 if never expires',
  `money` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Copper',
  `items` tinytext NOT NULL COMMENT 'Format: itemid:count itemid:count ...',
  `premium` tinytext NOT NULL COMMENT 'Duration in timestring format (e.g. "30d5h42m10s")',
  `redeemed` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '1 if the code was redeemed, 0 otherwise',
  `redeemer_guid` int(10) unsigned NOT NULL COMMENT 'Character GUID that redeemed the code',
  `redeemer_realmid` int(10) unsigned NOT NULL COMMENT 'Character''s realm',
  `redeemer_account` int(10) unsigned NOT NULL COMMENT 'Character''s account',
  `redeemer_member` int(10) unsigned NOT NULL COMMENT 'Character''s nighthold member',
  PRIMARY KEY (`code`),
  KEY `realmid` (`realmid`),
  KEY `redeemed` (`redeemed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='used for custom\r\ntodo: make this implement into blizzcms';

-- Volcando datos para la tabla auth.promocodes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `promocodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `promocodes` ENABLE KEYS */;

-- Volcando estructura para tabla auth.promotion_auras
CREATE TABLE IF NOT EXISTS `promotion_auras` (
  `entry` int(11) unsigned NOT NULL,
  `start_date` int(11) unsigned NOT NULL,
  `lenght` int(11) unsigned NOT NULL COMMENT 'Lenght in minutes',
  `active` tinyint(1) unsigned NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.promotion_auras: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `promotion_auras` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_auras` ENABLE KEYS */;

-- Volcando estructura para tabla auth.rbac_account_groups
CREATE TABLE IF NOT EXISTS `rbac_account_groups` (
  `accountId` int(10) unsigned NOT NULL COMMENT 'Account id',
  `groupId` int(10) unsigned NOT NULL COMMENT 'Group id',
  `realmId` int(11) NOT NULL DEFAULT '-1' COMMENT 'Realm Id, -1 means all',
  PRIMARY KEY (`accountId`,`groupId`,`realmId`),
  KEY `fk__rbac_account_groups__rbac_groups` (`groupId`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Account-Group relation';

-- Volcando datos para la tabla auth.rbac_account_groups: 0 rows
/*!40000 ALTER TABLE `rbac_account_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `rbac_account_groups` ENABLE KEYS */;

-- Volcando estructura para tabla auth.rbac_account_permissions
CREATE TABLE IF NOT EXISTS `rbac_account_permissions` (
  `accountId` int(10) unsigned NOT NULL COMMENT 'Account id',
  `permissionId` int(10) unsigned NOT NULL COMMENT 'Permission id',
  `granted` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Granted = 1, Denied = 0',
  `realmId` int(11) NOT NULL DEFAULT '-1' COMMENT 'Realm Id, -1 means all',
  PRIMARY KEY (`accountId`,`permissionId`,`realmId`),
  KEY `fk__rbac_account_roles__rbac_permissions` (`permissionId`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Account-Permission relation';

-- Volcando datos para la tabla auth.rbac_account_permissions: 0 rows
/*!40000 ALTER TABLE `rbac_account_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `rbac_account_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla auth.realmcharacters
CREATE TABLE IF NOT EXISTS `realmcharacters` (
  `realmid` int(10) unsigned NOT NULL DEFAULT '0',
  `acctid` int(10) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='How many characters accounts have';

-- Volcando datos para la tabla auth.realmcharacters: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `realmcharacters` DISABLE KEYS */;
/*!40000 ALTER TABLE `realmcharacters` ENABLE KEYS */;

-- Volcando estructura para tabla auth.realmlist
CREATE TABLE IF NOT EXISTS `realmlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `project_shortname` varchar(32) NOT NULL,
  `address` varchar(32) NOT NULL DEFAULT '127.0.0.1',
  `port` int(11) NOT NULL DEFAULT '8085',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `color` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `population` float unsigned NOT NULL DEFAULT '0',
  `gamebuild` int(11) unsigned NOT NULL DEFAULT '12340',
  `flag` int(11) DEFAULT NULL,
  `project_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `project_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `project_dbname` varchar(32) NOT NULL,
  `project_dbworld` varchar(32) NOT NULL,
  `project_dbarchive` varchar(32) NOT NULL,
  `project_rates_min` tinyint(4) NOT NULL COMMENT 'project',
  `project_rates_max` tinyint(4) NOT NULL COMMENT 'project',
  `project_transfer_level_max` tinyint(4) NOT NULL DEFAULT '80',
  `project_transfer_items` enum('IGNORE','IMPORT','REPLACE','SELECT') NOT NULL DEFAULT 'IGNORE',
  `project_transfer_skills_spells` enum('IGNORE','IMPORT','REPLACE','SELECT') NOT NULL DEFAULT 'IGNORE',
  `project_transfer_glyphs` enum('IGNORE','IMPORT') NOT NULL DEFAULT 'IGNORE',
  `project_transfer_achievements` enum('IGNORE','IMPORT') NOT NULL DEFAULT 'IGNORE',
  `project_server_same` tinyint(1) NOT NULL DEFAULT '0',
  `project_server_settings` varchar(32) NOT NULL,
  `project_server_remote_path` varchar(255) NOT NULL,
  `project_accounts_detach` tinyint(1) NOT NULL DEFAULT '1',
  `project_setskills_value_max` smallint(6) NOT NULL DEFAULT '0',
  `project_chat_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `project_statistics_enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm System';

-- Volcando datos para la tabla auth.realmlist: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `realmlist` DISABLE KEYS */;
INSERT INTO `realmlist` (`id`, `name`, `project_shortname`, `address`, `port`, `icon`, `color`, `timezone`, `allowedSecurityLevel`, `population`, `gamebuild`, `flag`, `project_hidden`, `project_enabled`, `project_dbname`, `project_dbworld`, `project_dbarchive`, `project_rates_min`, `project_rates_max`, `project_transfer_level_max`, `project_transfer_items`, `project_transfer_skills_spells`, `project_transfer_glyphs`, `project_transfer_achievements`, `project_server_same`, `project_server_settings`, `project_server_remote_path`, `project_accounts_detach`, `project_setskills_value_max`, `project_chat_enabled`, `project_statistics_enabled`) VALUES
	(1, 'BlackEMU 5.4.8', 'BlackEMU 5.4.8', '127.0.0.1', 8085, 1, 2, 4, 0, 0, 18414, 32, 0, 1, 'characters', 'world', 'archive', 0, 0, 80, 'IGNORE', 'IGNORE', 'IGNORE', 'IGNORE', 0, '0', '0', 1, 0, 0, 0);
/*!40000 ALTER TABLE `realmlist` ENABLE KEYS */;

-- Volcando estructura para tabla auth.realmlist_proxy
CREATE TABLE IF NOT EXISTS `realmlist_proxy` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT 'Must be different from `realmlist`.`name`, otherwise will override original realm''s address and port',
  `address` varchar(32) NOT NULL DEFAULT '127.0.0.1',
  `port` int(11) NOT NULL DEFAULT '8085',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla auth.realmlist_proxy: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `realmlist_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `realmlist_proxy` ENABLE KEYS */;

-- Volcando estructura para tabla auth.realm_classes
CREATE TABLE IF NOT EXISTS `realm_classes` (
  `realmId` int(11) NOT NULL,
  `class` tinyint(4) NOT NULL COMMENT 'Class Id',
  `expansion` tinyint(4) NOT NULL COMMENT 'Expansion for class activation',
  PRIMARY KEY (`realmId`,`class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.realm_classes: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `realm_classes` DISABLE KEYS */;
INSERT INTO `realm_classes` (`realmId`, `class`, `expansion`) VALUES
	(1, 1, 0),
	(1, 2, 0),
	(1, 3, 0),
	(1, 4, 0),
	(1, 5, 0),
	(1, 6, 2),
	(1, 7, 0),
	(1, 8, 0),
	(1, 9, 0),
	(1, 10, 4),
	(1, 11, 0);
/*!40000 ALTER TABLE `realm_classes` ENABLE KEYS */;

-- Volcando estructura para tabla auth.realm_diff_stats
CREATE TABLE IF NOT EXISTS `realm_diff_stats` (
  `realm_id` tinyint(3) unsigned NOT NULL,
  `diff` mediumint(8) unsigned DEFAULT NULL,
  `min` mediumint(8) unsigned DEFAULT NULL,
  `max` mediumint(8) unsigned DEFAULT NULL,
  `unixtime` int(10) NOT NULL,
  PRIMARY KEY (`realm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.realm_diff_stats: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `realm_diff_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `realm_diff_stats` ENABLE KEYS */;

-- Volcando estructura para tabla auth.realm_races
CREATE TABLE IF NOT EXISTS `realm_races` (
  `realmId` int(11) NOT NULL,
  `race` tinyint(4) NOT NULL COMMENT 'Race Id',
  `expansion` tinyint(4) NOT NULL COMMENT 'Expansion for race activation',
  PRIMARY KEY (`realmId`,`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.realm_races: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `realm_races` DISABLE KEYS */;
INSERT INTO `realm_races` (`realmId`, `race`, `expansion`) VALUES
	(1, 1, 0),
	(1, 2, 0),
	(1, 3, 0),
	(1, 4, 0),
	(1, 5, 0),
	(1, 6, 0),
	(1, 7, 0),
	(1, 8, 0),
	(1, 9, 3),
	(1, 10, 1),
	(1, 11, 1),
	(1, 22, 3),
	(1, 24, 4),
	(1, 25, 4),
	(1, 26, 4);
/*!40000 ALTER TABLE `realm_races` ENABLE KEYS */;

-- Volcando estructura para tabla auth.sql_update
CREATE TABLE IF NOT EXISTS `sql_update` (
  `file` varchar(50) CHARACTER SET latin1 NOT NULL,
  `realmid` tinyint(4) NOT NULL DEFAULT '-1',
  `date` datetime DEFAULT NULL,
  `result` longtext,
  PRIMARY KEY (`file`,`realmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.sql_update: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sql_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `sql_update` ENABLE KEYS */;

-- Volcando estructura para tabla auth.uptime
CREATE TABLE IF NOT EXISTS `uptime` (
  `realmid` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `revision` varchar(255) NOT NULL DEFAULT 'SkyFire',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Uptime system';

-- Volcando datos para la tabla auth.uptime: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `uptime` DISABLE KEYS */;
/*!40000 ALTER TABLE `uptime` ENABLE KEYS */;

-- Volcando estructura para tabla auth.wow_token
CREATE TABLE IF NOT EXISTS `wow_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accountId` int(11) unsigned NOT NULL,
  `characterGuid` int(10) NOT NULL DEFAULT '0',
  `realm` int(5) unsigned NOT NULL,
  `coins` int(5) unsigned NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla auth.wow_token: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `wow_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `wow_token` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
