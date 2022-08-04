-- apertura de mazmorras en modo desafio

-- camaras escarlata
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1001' AND `difficulty` = 'DUNGEON_CHALLENGE'; 
-- monasterio escarlata
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1004' AND `difficulty` = 'DUNGEON_CHALLENGE'; 
