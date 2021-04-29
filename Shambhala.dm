#modname "The Fourth Age: Shambhala, Karmic Justice v0.01"
#description "A nation of sacred monkeys and heathen cat people"
#icon "FourthAge_Shambhala/shambhala_logo.tga"
#version 0.01

--Weapons

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
#rcost 15
#flyspr 110
#sound 13
#end

--Units

#newmonster 8951 --Base chhma shape
#name "Chhma"
#descr "This is the base shape for all Chhma, you should not be seeing this in game"
#copyspr 728
#drawsize -20
#gcost 12
#rcost 1
#rpcost 12
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
#weapon 29
#humanoid
#itemslots 15494
#maxage 40
#nametype 104
#darkvision 50
#forestsurvival
#okleader
#nomagicleader
#noundeadleader
#animal
#forestshape 8952
#nametype 144
#end

#newmonster 8952 --Base chhma forestshape have +2 mm, +1 morale, and stealth
#name "Chhma"
#descr "This is the base shape for all Chhma, you should not be seeing this in game"
#copyspr 728
#drawsize -20
#gcost 12
#rcost 1
#rpcost 12
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
#nametype 104
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

--
#newmonster 8953 -- Chhma militia
#copystats 8951
#copyspr 8951
#name "Chhma Militia"
#descr "tmp"
#gcost 9
#rpcost 8
#att 9
#def 12
#morale 9
#forestshape 8954
#clearweapons
#weapon 1
#end

#newmonster 8954 -- Chhma militia forestshape
#copystats 8952
#copyspr 8952
#name "Chhma Militia"
#descr "tmp"
#gcost 9
#rpcost 8
#att 9
#def 11
#morale 10
#plainshape 8953
#clearweapons
#weapon 1
#end

--
#newmonster 8955 -- Chhma light infantry
#copystats 8951
#copyspr 8951
#name "Chhma Light Infantry"
#descr "tmp"
#forestshape 8956
#clearweapons
#weapon 921 -- Machete
#armor 249 -- Cloth headpiece
#armor 158 -- Robes
#armor 2 -- Shield
#end

#newmonster 8956 -- Chhma light infantry forestshape
#copystats 8951
#copyspr 8951
#name "Chhma Light Infantry"
#descr "tmp"
#plainshape 8955
#clearweapons
#weapon 921 -- Machete
#armor 249 -- Cloth headpiece
#armor 158 -- Robes
#armor 2 -- Shield
#end

--
#newmonster 8957 -- Chhma light infantry second ver
#copystats 8951
#copyspr 8951
#name "Chhma Medium Infantry"
#descr "tmp"
#forestshape 8958
#clearweapons
#weapon 921 -- Machete
#armor 249 -- Cloth headpiece
#armor 158 -- Robes
#armor 2 -- Shield
#end

#newmonster 8958 -- Chhma light infantry forestshape
#copystats 8951
#copyspr 8951
#name "Chhma Medium Infantry"
#descr "tmp"
#plainshape 8957
#clearweapons
#weapon 921 -- Machete
#armor 249 -- Cloth headpiece
#armor 158 -- Robes
#armor 2 -- Shield
#end

--Sites

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

--TODO add special pd and wall units to cap

--Nation

#selectnation 230
#era 3
#name "Shambhala"
#fortera 3
#likesterr 2
#homerealm 8
#homefort 14
#syncretism 1

#startcom 34 		-- the Commander you get on turn 1
#startunittype1 8955 	-- Chhma light infantry
#startunittype2 17 	-- give a squad of Archers to the commander
#startunitnbrs1 20 	-- how many Hvy Infantry to give
#startunitnbrs2 20 	-- how many Archers to give 

#startscout 426 	-- the Scout or some other unit to get on turn 1

#addrecunit 8953 	-- Chhma militia
#addrecunit 8955 	-- Chhma light inf
#addrecunit 8957	-- Chhma medium inf

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