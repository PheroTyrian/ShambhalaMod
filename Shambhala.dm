#modname "The Fourth Age: Shambhala, Karmic Justice v0.01"
#description "A nation of sacred monkeys and heathen cat people"
#icon "FourthAge_Shambhala/shambhala_logo.tga"
#version 0.01

-- Weapons

#newweapon 921
#copyweapon 746
#name "Machete"
#end

#newweapon 922
#name "Phkak"
#twohanded
#len 2
#att 2
#def 1
#dmg 8
#slash
#rcost 4
#sound 10
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
#weapon 29 -- Claw
#humanoid
#itemslots 15494
#maxage 40
#darkvision 50
#forestsurvival
#okleader
#nomagicleader
#noundeadleader
#animal
#forestshape 8952
#nametype 144
#end

#newmonster 8952 -- Chhma forestshape have +2 mm, +1 morale, and stealth
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
#weapon 29
#humanoid
#itemslots 15494
#maxage 40
#darkvision 50
#stealthy 0
#forestsurvival
#okleader
#nomagicleader
#noundeadleader
#animal
#plainshape 8951
#nametype 144
#end

-- Chhma militia archers
#newmonster 8953
#copystats 8951
#copyspr 8951
#name "Chhma Militia"
#descr "tmp"
#gcost 10
#rpcost 10
#hp 11
#att 9
#def 12
#morale 9
#forestshape 8954
#clearweapons
#weapon 29 -- Claw
#weapon 29 -- Claw
#weapon 23 -- Shortbow
#end

#newmonster 8954 -- Forestshape
#copystats 8952
#copyspr 8952
#name "Chhma Militia"
#descr "tmp"
#gcost 10
#rpcost 10
#hp 11
#att 9
#def 12
#morale 10
#plainshape 8953
#clearweapons
#weapon 29 -- Claw
#weapon 29 -- Claw
#weapon 23 -- Shortbow
#end

-- Chhma Light Warrior
#newmonster 8955
#copystats 8951
#copyspr 8951
#name "Chhma Ambusher"
#descr "tmp"
#forestshape 8956
#ambidextrous 1
#clearweapons
#weapon 57 -- Sickle
#weapon 29 -- Claw
#armor 249 -- Cloth headpiece
#armor 158 -- Robes
#end

#newmonster 8956
#copystats 8951
#copyspr 8951
#name "Chhma Ambusher"
#descr "tmp"
#plainshape 8955
#ambidextrous 1
#clearweapons
#weapon 57 -- Sickle
#weapon 29 -- Claw
#armor 249 -- Cloth headpiece
#armor 158 -- Robes
#end

-- Chhma Light Swordsman
#newmonster 8957
#copystats 8951
#copyspr 8951
#name "Chhma Light Swordsman"
#descr "tmp"
#forestshape 8958
#clearweapons
#weapon 921 -- Machete
#armor 249 -- Cloth headpiece
#armor 158 -- Robes
#armor 2 -- Shield
#end

#newmonster 8958 -- Forestshape
#copystats 8951
#copyspr 8951
#name "Chhma Light Swordsman"
#descr "tmp"
#plainshape 8957
#clearweapons
#weapon 921 -- Machete
#armor 249 -- Cloth headpiece
#armor 158 -- Robes
#armor 2 -- Shield
#end

-- Chhma Heavy Swordsman
#newmonster 8959
#copystats 8951
#copyspr 8951
#name "Chhma Heavy Swordsman"
#descr "tmp"
#gcost 14
#bodyguard 1
#forestshape 8960
#clearweapons
#weapon 921 -- Machete
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#end

#newmonster 8960 -- Forestshape
#copystats 8951
#copyspr 8951
#name "Chhma Heavy Swordsman"
#descr "tmp"
#gcost 14
#bodyguard 1
#plainshape 8959
#clearweapons
#weapon 921 -- Machete
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#end

-- Chhma Heavy Spearman
#newmonster 8961
#copystats 8951
#copyspr 8951
#name "Chhma Heavy Spearman"
#descr "tmp"
#gcost 14
#att 11
#bodyguard 1
#forestshape 8962
#clearweapons
#weapon 1 -- Spear
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#end

#newmonster 8962 -- Forestshape
#copystats 8951
#copyspr 8951
#name "Chhma Heavy Spearman"
#descr "tmp"
#gcost 14
#att 11
#bodyguard 1
#plainshape 8961
#clearweapons
#weapon 1 -- Spear
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#end

-- Chhma Hunter
#newmonster 8963
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
#forestshape 8964
#clearweapons
#weapon 924 -- Karambit
#weapon 924 -- Karambit
#weapon 34 -- Blow Pipe
#armor 120 -- Leather Cap
#armor 183 -- Linen Cuirass
#end

#newmonster 8964 -- Forestshape
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
#plainshape 8963
#clearweapons
#weapon 924 -- Karambit
#weapon 924 -- Karambit
#weapon 34 -- Blow Pipe
#armor 120 -- Leather Cap
#armor 183 -- Linen Cuirass
#end

-- Chhma Coastal
#newmonster 8965
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
#swimming
#swampsurvival
#forestshape 8966
#clearweapons
#weapon 670 -- Bone Trident
#weapon 21 -- Javelin
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#end

#newmonster 8966 -- Forestshape
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
#swimming
#swampsurvival
#plainshape 8965
#clearweapons
#weapon 670 -- Bone Trident
#weapon 21 -- Javelin
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#end

-- Crossbow Elephant
#newmonster 8967
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
#newmonster 8968
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

#startcom 34 		-- the Commander you get on turn 1
#startunittype1 8955 	-- Chhma ambushers
#startunittype2 8953 	-- Chhma militia
#startunitnbrs1 16
#startunitnbrs2 16

#startscout 426 	-- the Scout or some other unit to get on turn 1

#addrecunit 8953 	-- Chhma militia
#addrecunit 8955 	-- Chhma ambusher
#addrecunit 8957	-- Chhma light sword
#addrecunit 8959	-- Chhma heavy sword
#addrecunit 8961	-- Chhma heavy spear
#forestrec 8963		-- Hunter
#coastunit1 8965	-- Spearfisher
#addrecunit 8967	-- Elephant crossbow
#addrecunit 8968	-- Elephant trample

#addreccom 426 		-- add the basic Scout to recruitable commanders
#addreccom 240 		-- add basic Priest to recruitable commanders
#addreccom 105 		-- add Druid to recruitable commanders

#defcom1 34 		-- the PD Commander
#defunit1 8953 		-- Chhma militia
#defunit2 8955 		-- Chhma light infantry
#defmult1 20
#defmult2 20

#hero1 378 		-- add the Black Knight as a hero for this nation

-- add magic sites that grant gem income and units as capital only benefits
#startsite  "City of Temples" -- "City of Temples" 2 astral, 1 water, 1 nature 
#end

#selectnation 83
#addrecunit 8957	--Chhma light inf variant