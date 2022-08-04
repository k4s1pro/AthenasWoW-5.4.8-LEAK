-- Apertura del Asedio del Templo de Niuzao modo Normal y Heroico
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1011' AND `difficulty` = 'DUNGEON_HEROIC';
UPDATE `access_requirement` SET `level_min` = '88' WHERE `mapId` = '1011' AND `difficulty` = 'DUNGEON_NORMAL';
