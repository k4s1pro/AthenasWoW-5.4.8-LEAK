
-- apertura de gestas en pandaria 
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1005' AND `difficulty` = 'SCENARIO_HEROIC'; -- A Brewing Storm Entrance 
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1104' AND `difficulty` = 'SCENARIO_NORMAL'; -- A Little Patience Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1050' AND `difficulty` = 'SCENARIO_NORMAL'; -- Assault on Zan'vess Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1099' AND `difficulty` = 'SCENARIO_NORMAL'; -- Battle on the High Seas Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1099' AND `difficulty` = 'SCENARIO_HEROIC'; -- Battle on the High Seas Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1130' AND `difficulty` = 'SCENARIO_NORMAL'; -- Blood in the Snow Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1130' AND `difficulty` = 'SCENARIO_HEROIC'; -- Blood in the Snow Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1051' AND `difficulty` = 'SCENARIO_NORMAL'; -- Brewmoon Festival Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1161' AND `difficulty` = 'SCENARIO_NORMAL'; -- Celestial Tournament Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1030' AND `difficulty` = 'SCENARIO_HEROIC'; -- Crypt of Forgotten Kings Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1095' AND `difficulty` = 'SCENARIO_NORMAL'; -- Dagger in the Dark Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1144' AND `difficulty` = 'SCENARIO_NORMAL'; -- Dark Heart of Pandaria Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1144' AND `difficulty` = 'SCENARIO_HEROIC'; -- Dark Heart of Pandaria Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1102' AND `difficulty` = 'SCENARIO_NORMAL'; -- Domination Point Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1024' AND `difficulty` = 'SCENARIO_HEROIC'; -- Greenstone Village Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1157' AND `difficulty` = 'SCENARIO_NORMAL'; -- Finding the Secret Ingredient Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1126' AND `difficulty` = 'SCENARIO_NORMAL'; -- Isle of Thunder Scenarios
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1103' AND `difficulty` = 'SCENARIO_NORMAL'; -- Lion's Landing Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1157' AND `difficulty` = 'SCENARIO_HEROIC'; -- Noodle Time Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1148' AND `difficulty` = 'SCENARIO_NORMAL'; -- Proving Grounds Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1112' AND `difficulty` = 'SCENARIO_NORMAL'; -- Pursuing the Black Harvest Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1035' AND `difficulty` = 'SCENARIO_NORMAL'; -- Temple of Kotmogu Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1131' AND `difficulty` = 'SCENARIO_NORMAL'; -- The Secrets of Ragefire Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1131' AND `difficulty` = 'SCENARIO_HEROIC'; -- The Secrets of Ragefire Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1135' AND `difficulty` = 'SCENARIO_NORMAL'; -- Troves of the Thunder King Entrance


-- apertura del buscador de bandas de la banda Camaras Mogushan
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1008' AND `difficulty` = 'RAID_25MAN_LFR'; -- Mogu'shan Vaults 
UPDATE `lfg_dungeon_template` SET `requiredItemLevel` = '460' WHERE `dungeonId` = '527'; -- guardianes de mogushan
UPDATE `lfg_dungeon_template` SET `requiredItemLevel` = '460' WHERE `dungeonId` = '528'; -- la camara de los misterios
