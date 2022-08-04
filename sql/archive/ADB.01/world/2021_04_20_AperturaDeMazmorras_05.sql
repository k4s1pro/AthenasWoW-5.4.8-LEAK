-- apertura de la Mazmorra Palacio Mogushan en modo Normal, Heroico y Desafio
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '994' AND `difficulty` = 'DUNGEON_CHALLENGE';
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '994' AND `difficulty` = 'DUNGEON_HEROIC';
UPDATE `access_requirement` SET `level_min` = '87' WHERE `mapId` = '994' AND `difficulty` = 'DUNGEON_NORMAL';

-- apertura del modo desafio de la mazmorra Asedio al Templo de Niuzao
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '1011' AND `difficulty` = 'DUNGEON_CHALLENGE';

-- apertura del modo desafio de la mazmorra Puerta del Sol Poniente
UPDATE `access_requirement` SET `level_min` = '90' WHERE `mapId` = '962' AND `difficulty` = 'DUNGEON_CHALLENGE';
