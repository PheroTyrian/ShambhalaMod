#modname "The Fourth Age: Shambhala, Karmic Justice v0.02"
#description "A nation of sacred monkeys and heathen cat people"
#icon "FourthAge_Shambhala/shambhala_logo.tga"
#version 0.02

-- Weapons

#newweapon 921
#name "Machete"
#len 1
#att 1
#def 0
#dmg 7
#slash
#rcost 5
#sound 8
#ironweapon
#end

#newweapon 922
#name "Phkak"
#twohanded
#len 2
#att 2
#def 1
#dmg 8
#slash
#rcost 6
#sound 10
#ironweapon
#end

#newweapon 923
#name "Double Crossbow"
#dmg 20
#nratt 1
#range 50
#range050
#ammo 16
#att 2
#pierce
#armorpiercing
#nostr
#rcost 5
#flyspr 110
#sound 13
#end

#newweapon 924
#name "Karambit"
#len 0
#att 1
#def 0
#dmg 3
#slash
#rcost 1
#sound 7
#ironweapon
#end

#newweapon 925
#copyweapon 437
#name "Long Spear"
#dmg 14
#end

#newweapon 926
#name "Chakram"
#len 0
#att 1
#def 1
#dmg 4
#slash
#rcost 2
#sound 10
#ironweapon
#end

#newweapon 927
#copyweapon 362
#name "Chakram"
#dmg 4
#nratt 1
#range -1
#ammo 6
#att 0
#slash
#rcost 3
#end

#newweapon 928
#name "Open Palm"
#len 0
#att 0
#def 0
#dmg -3
#blunt
#armorpiercing
#bonus
#rcost 0
#sound 7
#end

#newweapon 929
#name "Sapping Staff"
#twohanded
#len 3
#att 2
#def 4
#dmg 3
#blunt
#rcost 4
#sound 10
#magic
#woodenweapon
#secondaryeffect 930
#end

#newweapon 930
#name "Curse of Stones"
#magic
#dt_aff
#dmg 5 -- curse of stones effect
#undeadimmune
#inanimateimmune
#end

#newweapon 931
#name "Perfect Kick"
#len 0
#att 0
#def 1
#dmg 1
#blunt
#sound 10
#bonus
#end




-- Units

#newmonster 8951 -- Base chhma shape
#name "Chhma"
#descr "This is the base shape for all Chhma, you should not be seeing this in game"
#copyspr 728
#drawsize -20
#gcost 12
#rcost 1
#rpcost 15
#hp 12
#str 11
#att 10
#def 13
#unsurr 1
#prec 12
#prot 2
#size 2
#mr 11
#mor 10
#enc 3
#mapmove 16
#ap 14
#eyes 2
#humanoid
#itemslots 15494
#maxage 40
#darkvision 50
#weapon 29 -- Claw
#forestsurvival
#okleader
#nomagicleader
#noundeadleader
#animal
#nametype 144
#end

#newmonster 8952 -- Chhma forestshape have +2 mm, +1 mor, and stealth
#name "Chhma"
#descr "This is the base shape for all Chhma, you should not be seeing this in game"
#copyspr 728
#drawsize -20
#gcost 12
#rcost 1
#rpcost 15
#hp 12
#str 11
#att 10
#def 13
#unsurr 1
#prec 12
#prot 2
#size 2
#mr 11
#mor 11
#enc 3
#mapmove 18
#ap 14
#eyes 2
#humanoid
#itemslots 15494
#maxage 40
#darkvision 50
#stealthy 0
#weapon 29
#forestsurvival
#okleader
#nomagicleader
#noundeadleader
#animal
#nametype 144
#end

#newmonster 8953 -- White One unit base shape
#copystats 1142 -- White One
#clearweapons
#cleararmor
#name "White One"
#descr "This is the base shape for the white ones, you should not be seeing this in game"
#copyspr 1145 -- Yogi
#gcost 18
#rcost 1
#rpcost 30
#hp 11
#str 10
#att 12
#def 12
#prec 11
#prot 1
#size 2
#mr 11
#mor 13
#enc 3
#mapmove 14
#ap 10
#eyes 2
#humanoid
#itemslots 15494
#maxage 60
#forestsurvival
#okleader
#nomagicleader
#noundeadleader
#animal
#nametype 129
#holy
#end

#newmonster 8954 -- White One commander base shape
#copystats 1145 -- Yogi
#clearmagic
#clearweapons
#cleararmor
#name "White One Com"
#descr "This is the base shape for the commander white ones, you should not be seeing this in game"
#copyspr 1145 -- Yogi
#gcost 10010
#rcost 1
#rpcost 30
#hp 11
#str 10
#att 11
#def 11
#prec 10
#prot 1
#size 2
#mr 11
#mor 13
#enc 3
#mapmove 14
#ap 10
#eyes 2
#humanoid
#itemslots 15494
#maxage 60
#forestsurvival
#okleader
#poormagicleader
#noundeadleader
#animal
#nametype 129
#holy
#end

-- Chhma militia archers
#newmonster 8955
#copystats 8951
#copyspr 8951
#name "Chhma Militia"
#descr "tmp"
#gcost 10
#rpcost 10
#hp 11
#att 9
#def 12
#mor 9
#forestshape 8956
#clearweapons
#weapon 29 -- Claw
#weapon 29 -- Claw
#weapon 23 -- Shortbow
#end

#newmonster 8956 -- fs
#copystats 8952
#copyspr 8952
#name "Chhma Militia"
#descr "tmp"
#gcost 10
#rpcost 10
#hp 11
#att 9
#def 12
#mor 10
#plainshape 8955
#clearweapons
#weapon 29 -- Claw
#weapon 29 -- Claw
#weapon 23 -- Shortbow
#end

-- Chhma Ambusher
#newmonster 8957
#copystats 8951
#copyspr 8951
#name "Chhma Ambusher"
#descr "tmp"
#forestshape 8958
#att 11
#stealthy 0
#skirmisher 1
#clearweapons
#weapon 57 -- Sickle
#weapon 29 -- Claw
#armor 249 -- Cloth headpiece
#armor 158 -- Robes
#end

#newmonster 8958 -- fs
#copystats 8952
#copyspr 8951
#name "Chhma Ambusher"
#descr "tmp"
#plainshape 8957
#att 11
#stealthy 20
#skirmisher 1
#clearweapons
#weapon 57 -- Sickle
#weapon 29 -- Claw
#armor 249 -- Cloth headpiece
#armor 158 -- Robes
#end

-- Chhma Light Swordsman
#newmonster 8959
#copystats 8951
#copyspr 8951
#name "Chhma Light Swordsman"
#descr "tmp"
#forestshape 8960
#clearweapons
#weapon 921 -- Machete
#armor 249 -- Cloth headpiece
#armor 158 -- Robes
#armor 2 -- Shield
#end

#newmonster 8960 -- fs
#copystats 8952
#copyspr 8951
#name "Chhma Light Swordsman"
#descr "tmp"
#plainshape 8959
#clearweapons
#weapon 921 -- Machete
#armor 249 -- Cloth headpiece
#armor 158 -- Robes
#armor 2 -- Shield
#end

-- Chhma Heavy Swordsman
#newmonster 8961
#copystats 8951
#copyspr 8951
#name "Chhma Heavy Swordsman"
#descr "tmp"
#gcost 14
#bodyguard 1
#mor 11
#forestshape 8962
#clearweapons
#weapon 921 -- Machete
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#end

#newmonster 8962 -- fs
#copystats 8952
#copyspr 8951
#name "Chhma Heavy Swordsman"
#descr "tmp"
#gcost 14
#bodyguard 1
#mor 12
#plainshape 8961
#clearweapons
#weapon 921 -- Machete
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#end

-- Chhma Heavy Spearman
#newmonster 8963
#copystats 8951
#copyspr 8951
#name "Chhma Heavy Spearman"
#descr "tmp"
#gcost 14
#att 11
#mor 11
#bodyguard 1
#forestshape 8964
#clearweapons
#weapon 1 -- Spear
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#end

#newmonster 8964 -- fs
#copystats 8952
#copyspr 8951
#name "Chhma Heavy Spearman"
#descr "tmp"
#gcost 14
#att 11
#mor 12
#bodyguard 1
#plainshape 8963
#clearweapons
#weapon 1 -- Spear
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#end

-- Chhma Hunter
#newmonster 8965
#copystats 8951
#copyspr 8951
#name "Chhma Hunter"
#descr "tmp"
#gcost 14
#rpcost 22
#hp 13
#att 11
#def 14
#prec 13
#mor 11
#forestshape 8966
#stealthy 0
#skirmisher 1
#female
#clearweapons
#weapon 924 -- Karambit
#weapon 924 -- Karambit
#weapon 34 -- Blow Pipe
#armor 120 -- Leather Cap
#armor 183 -- Linen Cuirass
#end

#newmonster 8966 -- fs
#copystats 8952
#copyspr 8951
#name "Chhma Hunter"
#descr "tmp"
#gcost 14
#rpcost 22
#hp 13
#att 11
#def 14
#prec 13
#mor 12
#plainshape 8965
#stealthy 20
#skirmisher 1
#female
#clearweapons
#weapon 924 -- Karambit
#weapon 924 -- Karambit
#weapon 34 -- Blow Pipe
#armor 120 -- Leather Cap
#armor 183 -- Linen Cuirass
#end

-- Chhma Coastal
#newmonster 8967
#copystats 8951
#copyspr 8951
#name "Chhma Spearfisher"
#descr "tmp"
#gcost 14
#rpcost 22
#hp 13
#att 11
#def 14
#prec 13
#mor 11
#swimming
#swampsurvival
#forestshape 8968
#clearweapons
#weapon 3 -- Trident
#weapon 21 -- Javelin
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#end

#newmonster 8968 -- fs
#copystats 8952
#copyspr 8951
#name "Chhma Spearfisher"
#descr "tmp"
#gcost 14
#rpcost 22
#hp 13
#att 11
#def 14
#prec 13
#mor 12
#swimming
#swampsurvival
#plainshape 8967
#clearweapons
#weapon 3 -- Trident
#weapon 21 -- Javelin
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#end

-- Crossbow Elephant
#newmonster 8969
#copyspr 1147
#name "Artillery"
#descr "tmp"
#drawsize -20
#gcost 70
#rcost 20
#rpcost 35
#hp 44
#str 18
#att 10
#def 9
#prec 10
#prot 10
#size 5
#mr 6
#mor 9
#enc 3
#mapmove 20
#ap 18
#eyes 2
#weapon 614 -- Tusk
#weapon 923 -- Double Crossbow
#armor 144 -- Elephant Barding
#quadruped
#itemslots 28672
#maxage 50
#forestsurvival
#okleader
#nomagicleader
#noundeadleader
#animal
#nametype 144
#end

-- Stompy Elephant
#newmonster 8970
#copyspr 1147
#name "Chhma War Elephant"
#descr "tmp"
#drawsize -20
#gcost 80
#rcost 20
#rpcost 35
#hp 45
#str 18
#att 10
#def 9
#prec 10
#prot 10
#size 5
#mr 6
#mor 10
#enc 3
#mapmove 20
#ap 18
#eyes 2
#trample
#weapon 614 -- Tusk
#weapon 925 -- Longspear
#weapon 925 -- Longspear
#armor 144 -- Elephant Barding
#quadruped
#itemslots 28672
#maxage 50
#forestsurvival
#okleader
#nomagicleader
#noundeadleader
#animal
#nametype 144
#end

-- White One arrow catcher
#newmonster 8971
#copystats 8953
#name "Arrow Catcher"
#descr "tmp"
#copyspr 1145 -- Yogi
#gcost 18
#airshield 60
#weapon 928 -- Open Palm
#weapon 926 -- Chakram melee
#weapon 927 -- Chakram ranged
#armor 158 -- Robes
#end

-- White One schmuck
#newmonster 8972
#copystats 8953
#name "Guy"
#descr "tmp"
#copyspr 1145 -- Yogi
#gcost 18
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 931 -- Perfect Kick
#armor 158 -- Robes
#end

-- White One magic dude
#newmonster 8973
#copystats 8953
#name "Stick guy"
#descr "tmp"
#copyspr 1145 -- Yogi
#gcost 25
#rpcost 34
#hp 12
#att 13
#def 13
#reclimit 2
#weapon 929 -- Staff of enc
#weapon 931 -- Perfect Kick
#armor 183 -- Linen cuirass
#end




-- Commanders

-- Scout
#newmonster 8974
#copystats 8965
#copyspr 8951
#name "Chhma Scout"
#descr "Elite hunters chosen for their stealth and initiative"
#gcost 25
#rpcost 22
#hp 14
#att 11
#def 14
#prec 13
#forestshape 8975
#stealthy 20
#female
#noleader
#end

#newmonster 8975 -- fs
#copystats 8966
#copyspr 8951
#name "Chhma Scout"
#descr "Elite hunters chosen for their stealth and initiative"
#gcost 25
#hp 14
#att 11
#def 14
#prec 13
#plainshape 8974
#stealthy 30
#female
#noleader
#end

-- Stealthy Commander
#newmonster 8976
#copystats 8951
#copyspr 8951
#name "Pack leader"
#descr "Elite hunters with charisma and combat prowess"
#gcost 55
#rpcost 22
#hp 14
#att 12
#def 15
#prec 14
#mor 12
#stealthy 0
#female
#clearweapons
#weapon 921 -- Machete
#weapon 34 -- Blow Pipe
#armor 120 -- Leather Cap
#armor 183 -- Linen Cuirass
#armor 207 -- Wicker Shield
#forestshape 8977
#end

#newmonster 8977 -- fs
#copystats 8952
#copyspr 8951
#name "Pack leader"
#descr "Elite hunters with charisma and combat prowess"
#gcost 55
#rpcost 22
#hp 14
#att 12
#def 15
#prec 14
#mor 13
#stealthy 20
#female
#clearweapons
#weapon 921 -- Machete
#weapon 34 -- Blow Pipe
#armor 120 -- Leather Cap
#armor 183 -- Linen Cuirass
#armor 207 -- Wicker Shield
#plainshape 8976
#end

-- Coastal Commander
#newmonster 8978
#copystats 8951
#copyspr 8951
#name "Fishing Chief"
#descr "tmp"
#gcost 45
#rpcost 22
#hp 14
#att 12
#def 15
#prec 14
#mor 12
#swimming
#swampsurvival
#forestshape 8979
#clearweapons
#weapon 679 -- Short Trident
#weapon 21 -- Javelin
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#armor 207 -- Wicker Shield
#okleader
#end

#newmonster 8979 -- fs
#copystats 8952
#copyspr 8951
#name "Fishing Chief"
#descr "tmp"
#gcost 45
#rpcost 22
#hp 14
#att 12
#def 15
#prec 14
#mor 13
#swimming
#swampsurvival
#plainshape 8978
#clearweapons
#weapon 679 -- Short Trident
#weapon 21 -- Javelin
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#armor 207 -- Wicker Shield
#okleader
#end

--Priest
#newmonster 8980
#copystats 8954 -- White One Com Base
#copyspr 1145 -- Yogi
#name "Itinerant Monk"
#descr "tmp"
#gcost 50
#hp 12
#mor 14
#mr 14
#weapon 7 -- Quarterstaff
#weapon 931 -- Perfect Kick
#armor 158 -- Robes
#magicskill 8 1 -- Holy
#end

-- Note: 8981 unclaimed

-- Mage-Commander. Note: The random is different between the two shapes
#newmonster 8982
#copystats 8951
#copyspr 8951
#name "Chhma Noble"
#descr "Nobles are expected to have experience in matters of warfare and magic as well as statecraft. With their Vanara masters mostly concerned with matters of the spirit they manage much of the administration of the empire and its armies. With the gates of Shambhala opening in conquest many of the Chhma nobility have taken to studying the sun and higher self after their masters, though those in the jungles of their homeland often take to more traditional practices."
#custommagic 10368 100 -- FSN random
#gcost 100
#hp 14
#att 11
#def 14
#prec 13
#mor 13
#mr 14 -- +3
#forestshape 8983
#clearweapons
#weapon 921 -- Machete
#armor 118 -- Half Helmet
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#goodleader
#end

#newmonster 8983 -- fs
#copystats 8952
#copyspr 8951
#name "Chhma Noble"
#descr "Nobles are expected to have experience in matters of warfare and magic as well as statecraft. With their Vanara masters mostly concerned with matters of the spirit they manage much of the administration of the empire and its armies. With the gates of Shambhala opening in conquest many of the Chhma nobility have taken to studying the sun and higher self after their masters, though those in the jungles of their homeland often take to more traditional practices."
#custommagic 9728 100 -- FWE random
#gcost 100
#hp 14
#att 11
#def 14
#prec 13
#mor 14
#mr 14 -- +3
#plainshape 8982
#clearweapons
#weapon 921 -- Machete
#armor 118 -- Half Helmet
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#goodleader
#end

-- Anyfort FWE mage
#newmonster 8984
#copystats 8951
#copyspr 8951
#name "Some Mage"
#descr "tmp"
#magicskill 2 1 		-- W
#custommagic 1152 100	-- FE random
#custommagic 1152 100	-- FE random
#custommagic 512 50		-- 50% W
#gcost 10015
#mor 12
#mr 16 -- +5
#forestshape 8985
#poorleader
#clearweapons
#weapon 7 -- Quarterstaff
#armor 158 -- Robes
#end

#newmonster 8985 -- fs
#copystats 8952
#copyspr 8951
#name "Some Mage"
#descr "tmp"
#magicskill 2 1 		-- W
#custommagic 1152 100	-- FE random
#custommagic 1152 100	-- FE random
#custommagic 512 50		-- 50% W
#gcost 10015
#mor 13
#mr 16 -- +5
#plainshape 8984
#poorleader
#clearweapons
#weapon 7 -- Quarterstaff
#armor 158 -- Robes
#end

#newmonster 8986
#copystats 8951
#copyspr 8951
#name "Some other expensive Mage"
#descr "tmp"
#magicskill 5 1 		-- D
#custommagic 1152 80	-- WN random
#gcost 10045
#mor 11
#mr 15 -- +4
#stealthy 0
#forestshape 8987
#poorleader
#weapon 924 -- Karambit
#armor 158 -- Robes
#end

#newmonster 8987 -- fs
#copystats 8952
#copyspr 8951
#name "Some other expensive Mage"
#descr "tmp"
#magicskill 5 1 		-- D
#custommagic 8704 80	-- WN random
#gcost 10045
#mor 12
#mr 15 -- +4
#stealthy 20
#plainshape 8986
#poorleader
#weapon 924 -- Karambit
#armor 158 -- Robes
#end

-- Cap only ascended mage


-- Cap only even more ascended mage




-- Sites

#newsite 1676
#name "City of Temples"
#path 8
#level 0
#loc 735
#gems 4 2
#gems 3 1
#gems 6 1
#rarity 5
#homemon 8971 -- Chakram One
#homemon 8972 -- Martial Arts One
#homemon 8973 -- Magic Staff One
#end

-- TODO add special pd and wall units to cap

-- Nation

#selectnation 230
#era 3
#name "Shambhala"
#fortera 3
#likesterr 2
#homerealm 8
#homefort 14
#syncretism 1

#startcom 8976 		-- the Commander you get on turn 1
#startunittype1 8959 	-- Chhma light swords
#startunittype2 8955 	-- Chhma militia
#startunitnbrs1 12
#startunitnbrs2 12

#startscout 426 	-- the Scout or some other unit to get on turn 1

#addrecunit 8955 	-- Chhma militia
#addrecunit 8957 	-- Chhma ambusher
#addrecunit 8959	-- Chhma light sword
#addrecunit 8961	-- Chhma heavy sword
#addrecunit 8963	-- Chhma heavy spear
#forestrec 8965		-- Hunter
#coastunit1 8967	-- Spearfisher
#addrecunit 8969	-- Elephant crossbow
#addrecunit 8970	-- Elephant trample

#addreccom 8974 	-- Scout
#forestcom 8974
#addreccom 8976		-- Stealthy Com
#forestcom 8976
#coastcom1 8978		-- Coast Com
#addreccom 8980		-- Priest
#addreccom 8982		-- Noble
#addreccom 8984		-- Mage1
#addreccom 8986		-- Mage2
--#addreccom 8988		-- Cap mage1
--#addreccom 8989		-- Cap mage2

#defcom1 8976 		-- Chhma pack leader
#defunit1 8955 		-- Chhma militia
#defunit1b 8959 	-- Chhma light infantry
#defcom2 8980		-- Chhma noble
#defunit2 8963		-- Chhma heavy spearmen
#defmult1 16
#defmult1b 16
#defmult2 12

-- TODO Add Heros

-- add magic sites that grant gem income and units as capital only benefits
#startsite  "City of Temples" -- "City of Temples" 2 astral, 1 water, 1 nature 
#end