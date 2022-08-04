-- abriendo la mazmorra puerta del sol poniente en modo Normal y Heroico
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '962' AND `difficulty` = 'DUNGEON_HEROIC';
UPDATE `access_requirement` SET `level_min` = '88' WHERE `mapId` = '962' AND `difficulty` = 'DUNGEON_NORMAL';
