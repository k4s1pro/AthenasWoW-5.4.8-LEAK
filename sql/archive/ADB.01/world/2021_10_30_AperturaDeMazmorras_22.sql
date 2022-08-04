-- activando la banda de Pandaria corazon del miedo en los modos de 10 y 25 normal

UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1009' AND `difficulty` = 'RAID_10MAN_NORMAL';
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1009' AND `difficulty` = 'RAID_25MAN_NORMAL';
