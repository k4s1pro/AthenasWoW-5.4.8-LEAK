-- Crypt of Forgotten Kings Entrance
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1030' AND `difficulty` = 'SCENARIO_NORMAL';
 -- A Brewing Storm Entrance  
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1005' AND `difficulty` = 'SCENARIO_NORMAL';

-- desactivando scholomance, motivo: crash
DELETE FROM `disables` where `sourceType` = 2 and `entry` = 1007;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES ('2', '1007', '2', '', '', 'disabled scholomance'); 
UPDATE `access_requirement` SET `level_min` = '99' WHERE `mapId` = '1007' AND `difficulty` = 'DUNGEON_HEROIC'; 
