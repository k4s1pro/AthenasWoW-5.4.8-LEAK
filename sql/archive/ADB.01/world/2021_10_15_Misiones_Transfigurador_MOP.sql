-- misiones finales para desbloquear el transfigurador global de items

-- cambiando la fase del npc que termina la misión para que este presente en múltiples fases de juego
UPDATE `creature` SET `phaseMask` = '65535' WHERE `guid` = '582652'; 
UPDATE `creature` SET `phaseMask` = '65535' WHERE `guid` = '582651';

-- renombrando el npc de transfiguración global pre-existente
UPDATE `creature_template` SET `modelid1` = '18953' , `name` = 'Hollow' , `subname` = 'Mascota de Vaal´akir' , `scale` = '0.3' WHERE `entry` = '190058'; 

-- agregando nuevas misiones
DELETE FROM `quest_template` WHERE Id IN (40328, 40329);
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceSpellId`, `Flags`, `Flags2`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardPackageItemId`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) 
values
('40328','2','90','90','0','-344','83','5','0','0','18875469','0','0','0','0','0','0','40322','0','0','0','0','10000000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','Chispa del yunque','Ser de carne, que bueno que llegaste, bueno hmmm como decirlo… al calibrar mi golpe en el yunque puede que no calculara bien y  haya desatado una abominación de energía que sea agresiva y que busque devorar materia para volverse aún más fuerte pero qué sé yo.. cualquiera puede hacer una abominación de energía, por favor eliminalo antes de que nos devore y te mostraré el verdadero arte de tejer ilusiones.','Destruye la abominación de energía',NULL,'Gracias ser de carne, estoy eternamente agradecido contigo pero no es momento de palabras, ahora a trabajar$BHabla con mi esbirro para iniciar','Sigues con vida ser de carne?','Regresa con Vaal´akir en el Santuario de las siete estrellas','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','18414'),
('40329','2','90','90','0','-344','83','5','0','0','33555378','0','0','0','0','0','0','40323','0','0','0','0','10000000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','Chispa del yunque','Ser de carne, que bueno que llegaste, bueno hmmm como decirlo… al calibrar mi golpe en el yunque puede que no calculara bien y  haya desatado una abominación de energía que sea agresiva y que busque devorar materia para volverse aún más fuerte pero qué sé yo.. cualquiera puede hacer una abominación de energía, por favor eliminalo antes de que nos devore y te mostraré el verdadero arte de tejer ilusiones.','Destruye la abominación de energía',NULL,'Gracias ser de carne, estoy eternamente agradecido contigo pero no es momento de palabras, ahora a trabajar$BHabla con mi esbirro para iniciar','Sigues con vida ser de carne?','Regresa con Vaal´akir en el Santuario de las dos Lunas','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','890','878','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','18414');

-- agregando marcas de las misiones en el mapa
DELETE FROM `quest_poi` WHERE questId IN (40328, 40329);
insert into `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) 
values
('40328','0','-1','870','905','0','0','0'),
('40328','1','1','870','905','0','0','0'),
('40329','0','-1','870','903','0','0','0'),
('40329','1','1','870','903','0','0','0');

DELETE FROM `quest_poi_points` WHERE questId IN (40328, 40329);
insert into `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) 
values
('40328','0','0','731','236'),
('40328','1','0','735','217'),
('40328','1','1','714','247'),
('40328','1','2','730','258'),
('40328','1','3','766','241'),
('40329','0','0','1776','885'),
('40329','1','0','1771','923'),
('40329','1','1','1777','886'),
('40329','1','2','1755','883'),
('40329','1','3','1740','916');

-- iniciando y terminando misiones
DELETE FROM `creature_queststarter` WHERE quest IN (40328, 40329);
insert into `creature_queststarter` (`id`, `quest`) 
values
('300015','40328'),
('300015','40329');

DELETE FROM `creature_questender` WHERE quest IN (40328, 40329);
insert into `creature_questender` (`id`, `quest`) 
values
('300015','40328'),
('300015','40329');

-- agregando objetivos de las misiones
DELETE FROM `quest_objective` WHERE questId IN (40328, 40329);
insert into `quest_objective` (`questId`, `id`, `index`, `type`, `objectId`, `amount`, `flags`, `description`) 
values
('40328','500299','0','0','300016','1','0',NULL),
('40329','500300','0','0','300016','1','0',NULL);

-- creando nuevas fases dentro de las areas para los npc objetivo
DELETE FROM `spell_area` WHERE `spell` = '67789' AND `area` = '6484' AND `quest_start` = '40328' AND `aura_spell` = '0' AND `racemask` = '0' AND `gender` = '2'; 
DELETE FROM `spell_area` WHERE `spell` = '67789' AND `area` = '6519' AND `quest_start` = '40329' AND `aura_spell` = '0' AND `racemask` = '0' AND `gender` = '2'; 
insert into `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) 
values
('67789','6484','40328','0','0','0','2','1','8','1'),
('67789','6519','40329','0','0','0','2','1','8','1');

-- agregando nuevo npc objetivo de las misiones
DELETE FROM `creature_template` WHERE `entry` = '300016';
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `difficulty_entry_4`, `difficulty_entry_5`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `VignetteID`, `TrackingQuestID`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
values('300016','0','0','0','0','0','0','0','51167','0','0','0','Abominación de Energía',NULL,NULL,'0','92','92','4','0','14','14','0','0','1','2','0.5','1','11222','14388','0','45229','2','2000','2000','1','32768','2048','0','0','0','0','0','0','0','0','4','2097736','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','14000','15000','','1','1','1','20','1','1','1','0','0','0','0','0','0','0','0','2','0','0','679545459','0','npc_molten_guards','18414');

-- agregando spawn de los npc en el mundo
DELETE FROM `creature` where `guid` in ('582656','582655','582654','582653');
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawntimesecs_max`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `unit_flags2`, `dynamicflags`) 
values
('582656','190058','870','0','0','1','1','0','0','1774.76','884.912','488.518','1.66646','300','0','0','0','12600','0','0','0','0','0','0','0'),
('582655','190058','870','0','0','1','1','0','0','730.512','238.177','519.741','3.83537','300','0','0','0','12600','0','0','0','0','0','0','0'),
('582654','300016','870','0','0','1','1024','0','0','1768.94','918.701','487.285','4.77941','300','0','0','0','8431840','0','0','0','0','0','0','0'),
('582653','300016','870','0','0','1','1024','0','0','735.464','221.823','519.78','2.20533','300','0','0','0','8431840','0','0','0','0','0','0','0');
