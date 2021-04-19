#modname "The Fourth Age: Shambhala, Karmic Justice v0.01"
#description "A nation of sacred monkeys and heathen cat people"
#icon "FourthAge_Shambhala/shambhala_logo.tga"
#version 0.01

--Units

#newmonster 8951 --Base chhma shape
#name "Chhma"
#descr ""
#copyspr 728
#gcost 12
#rcost 1
#rpcost 2
#hp 12
#str 12
#att 10
#def 12
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
#descr ""
#copyspr 728
#gcost 12
#rcost 1
#rpcost 2
#hp 12
#str 12
#att 10
#def 12
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

--Sites

#newsite 1676
#name "City of Temples"
#path 4
#gems 4 2
#gems 3 1
#gems 6 1
#rarity 5
#end

--TODO add special pd and wall units to cap

--Nation

#selectnation 230 -- can be any number from 71 to 94
#era 3
#name "Shambhala"

#startcom 34 		-- the Commander you get on turn 1
#startunittype1 38 	-- give a squad of Hvy Infantry to the commander
#startunittype2 17 	-- give a squad of Archers to the commander
#startunitnbrs1 20 	-- how many Hvy Infantry to give
#startunitnbrs2 20 	-- how many Archers to give 

#startscout 426 	-- the Scout or some other unit to get on turn 1

#addrecunit 8951 		-- Chhma base shape for testing
#addrecunit 38 		-- add Hvy Infantry to recruit list
#addrecunit 20 		-- add Hvy Cavalry to recruit list
#addrecunit 17 		-- add Archer to recruit list

#addreccom 426 		-- add the basic Scout to recruitable commanders
#addreccom 8951 		-- Chhma base shape for testing
#addreccom 240 		-- add basic Priest to recruitable commanders
#addreccom 105 		-- add Druid to recruitable commanders

#defcom1 34 		-- the PD Commander
#defunit1 38 		-- use Hvy Infantry as PD
#defunit2 17 		-- use Archers as PD
#defmult1 13 		-- how many Hvy Infantry
#defmult2 18 		-- how many Archers

#hero1 378 		-- add the Black Knight as a hero for this nation

-- add magic sites that grant gem income and units as capital only benefits
#startsite  1676 -- "City of Temples" 2 astral, 1 water, 1 nature 
#end