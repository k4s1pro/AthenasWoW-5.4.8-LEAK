-- Ruins Of Ahn'Qiraj, Mod: 10 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '509';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','509','3','0','0','Disabled Ruins Of Ahn\'Qiraj');

-- The Molten Bridge, Mod: 40 N, Old Level = 50
UPDATE `access_requirement` SET `level_min` = '99' WHERE `mapId` = '409' AND `difficulty` = 'RAID_40MAN'; 

-- Ahn'Qiraj Temple, Mod: 40 N, Old Level = 50
UPDATE `access_requirement` SET `level_min` = '99' WHERE `mapId` = '531' AND `difficulty` = 'RAID_40MAN';

-- Blackwing Lair - Blackrock Mountain - Eastern Kingdoms, Mod: 40 N, Old Level = 60
UPDATE `access_requirement` SET `level_min` = '99' WHERE `mapId` = '469' AND `difficulty` = 'RAID_40MAN';

-- Magtheridon's Lair, Mod: 25 N, Old Level = 65
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '544';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','544','2','0','0','Disabled Magtheridon\'s Lair');

-- Karazhan, Main, Mod: 10 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '532';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','532','1','0','0','Disabled Karazhan, Main');

-- Serpentshrine Cavern, Mod: 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '548';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','548','2','0','0','Disabled Serpentshrine Cavern');

-- The Eye , Mod: 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '550';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','550','2','0','0','Disabled The Eye');

-- Battle Of Mount Hyjal, Alliance Base , Mod: 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '534';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','534','2','0','0','Disabled Battle Of Mount Hyjal');

-- Black Temple , Mod: 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '564';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','564','2','0','0','Disabled Black Temple');

-- Sunwell Plateau , Mod: 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '580';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','580','2','0','0','Disabled Sunwell Plateau');

-- Gruul's Lair , Mod: 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '565';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','565','2','0','0','Disabled Gruul\'s Lair');

-- Onyxia's Lair , Mod: 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '249';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','249','3','0','0','Disabled Onyxia\'s Lair');

-- Naxxramas , Mod: 10 - 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '533';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','533','3','0','0','Disabled Naxxramas');

-- Ulduar Raid , Mod: 10 - 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '603';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','603','3','0','0','Disabled Ulduar');

-- Chamber of Aspects, Obsidian Sanctum , Mod: 10 - 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '615';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','615','3','0','0','Disabled Obsidian Sanctum');

-- The Eye of Eternity , Mod: 10 - 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '616';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','616','3','0','0','Disabled The Eye of Eternity ');

-- Vault of Archavon , Mod: 10 - 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '624';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','624','3','0','0','Disabled Vault of Archavon');

-- IceCrown Citadel , Mod: 10 - 25 N/H
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '631';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','631','15','0','0','Disabled IceCrown Citadel');

-- Trial of the Crusader , Mod: 10 - 25 N/H
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '649';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','649','15','0','0','Disabled Trial of the Crusader');

-- The Ruby Sanctum , Mod: 10 - 25 N/H
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '724';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','724','15','0','0','Disabled The Ruby Sanctum');

-- The Bastion of Twilight , Mod: 10 - 25 N/H
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '671';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','671','15','0','0','Disabled The Bastion of Twilight');

-- Firelands , Mod: 10 - 25 N/H
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '720';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','720','15','0','0','Disabled Firelands');

-- Blackwing Descent , Mod: 10 - 25 N/H
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '669';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','669','15','0','0','Disabled Blackwing Descent');

-- Throne of the Four Winds , Mod: 10 - 25 N/H
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '754';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','754','15','0','0','Disabled Throne of the Four Winds');

-- Baradin Hold , Mod: 10 - 25 N
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '757';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','757','3','0','0','Disabled Baradin Hold');
-- Disable Spawn Mod: 10 -25 Heroic
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '332366'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '332367'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '332368'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '332376'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '332377'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '332378'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345424'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345428'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345429'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345430'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345431'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345432'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345433'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345434'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345435'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345764'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345765'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345766'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345767'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345768'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345769'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345770'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345771'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345772'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345773'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345774'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345775'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345776'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345777'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345778'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345779'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345780'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345781'; 
UPDATE `creature` SET `spawnMask` = '24' WHERE `guid` = '345782'; 

-- Dragon Soul , Mod: 10 - 25 N/H
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '967';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','967','15','0','0','Disabled Dragon Soul');
