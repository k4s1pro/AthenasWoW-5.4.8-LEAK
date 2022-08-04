-- apertura de la gesta la caida de Theramore en modo normal
UPDATE `access_requirement` SET `level_min` = '85' WHERE `mapId` = '1000' AND `difficulty` = 'SCENARIO_NORMAL';
UPDATE `access_requirement` SET `level_min` = '85' WHERE `mapId` = '999' AND `difficulty` = 'SCENARIO_NORMAL';

-- apertura de la gesta Aldea verdemar en modo normal
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1024' AND `difficulty` = 'SCENARIO_NORMAL'; 