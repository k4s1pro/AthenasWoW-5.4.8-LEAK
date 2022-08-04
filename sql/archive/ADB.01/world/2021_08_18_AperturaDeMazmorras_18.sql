-- activando las mazmorras de scholomance y cámaras escarlata en modo normal y heroico
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '1007'; 
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '1001'; 

UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1007' AND `difficulty` = 'DUNGEON_HEROIC'; 
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1001' AND `difficulty` = 'DUNGEON_HEROIC'; 

