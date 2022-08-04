-- apertura de la banda camaras mogushan en modo 10 y 25 Heroico 
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1008' AND `difficulty` = 'RAID_25MAN_HEROIC'; 
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1008' AND `difficulty` = 'RAID_10MAN_HEROIC'; 
