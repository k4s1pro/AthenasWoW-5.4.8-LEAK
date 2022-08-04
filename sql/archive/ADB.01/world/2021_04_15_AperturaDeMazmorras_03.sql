-- apertura de Cámaras Mogu'shan modo 10 Normal
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1008' AND `difficulty` = 'RAID_10MAN_NORMAL';
-- apertura del modo desafio de la Cerveceria del trueno
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '961' AND `difficulty` = 'DUNGEON_CHALLENGE';
-- apertura del modo desafio del Templo del Dragon de Jade
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '960' AND `difficulty` = 'DUNGEON_CHALLENGE';
-- apertura del modo desafio del Monasterio Shadopan
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '959' AND `difficulty` = 'DUNGEON_CHALLENGE';
