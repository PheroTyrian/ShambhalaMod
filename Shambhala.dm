#modname "The Fourth Age: Shambhala, Karmic Justice v0.03"
#description "A nation of sacred monkeys and heathen cat people"
#icon "FourthAge_Shambhala/shambhala_logo.tga"
#version 0.03

-- Current research material:
-- https://en.wikipedia.org/wiki/Asian_witchcraft
-- https://en.wikipedia.org/wiki/Philippine_shamans
-- and associated citations

-- IDs used:
-- Nation 230
-- Units 8951-8999
-- Weapons 921-950
-- Spells 2450-2469
-- Sites 1676-1685

-- National spell ideas and todos:
-- Holy astral twiceborn that heals afflictions and transforms into one of the four directional beasts
-- Death boosting combat spell that withers the mage
-- Twiceborn shape for death mage
-- Offensive curse luck spell
-- Minor healing ritual for theming
-- Sacred lion statues summon
-- Dragon guard on asian noodle drakes summon
-- Krasue summon
-- Some other weird mythical stuff

-- Weapons

#newweapon 921
#name "Machete"
#len 1
#att 1
#def 0
#dmg 7
#slash
#rcost 4
#sound 8
#ironweapon
#end

#newweapon 922
#name "Ph'kak"
#twohanded
#len 2
#att 2
#def 1
#dmg 8
#slash
#rcost 5
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
#att 0
#def 1
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
#dmg 2
#blunt
#armorpiercing
#halfstr
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

#newweapon 932
#copyweapon 34 -- Blowpipe
#ammo 4
#end

#newweapon 933
#copyweapon 928 -- Open palm
#bonus
#end


-- Units

#newmonster 8951 -- Base chhma shape
#name "Chhma"
#descr "This is the base shape for all Chhma, you should not be seeing this in game"
#copyspr 728
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

--

-- Chhma militia archers
#newmonster 8955
#copystats 8951
#spr1 "FourthAge_Shambhala/militia_a.tga"
#spr2 "FourthAge_Shambhala/militia_b.tga"
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
#spr1 "FourthAge_Shambhala/militia_a.tga"
#spr2 "FourthAge_Shambhala/militia_b.tga"
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
#spr1 "FourthAge_Shambhala/ambusher_a.tga"
#spr2 "FourthAge_Shambhala/ambusher_b.tga"
#name "Chhma Ambusher"
#descr "tmp"
#forestshape 8958
#stealthy 0
#skirmisher 1
#clearweapons
#weapon 922 -- Ph'kak
#armor 249 -- Cloth headpiece
#armor 202 -- Cloth Armour
#end

#newmonster 8958 -- fs
#copystats 8952
#spr1 "FourthAge_Shambhala/ambusher_a.tga"
#spr2 "FourthAge_Shambhala/ambusher_b.tga"
#name "Chhma Ambusher"
#descr "tmp"
#plainshape 8957
#stealthy 20
#skirmisher 1
#clearweapons
#weapon 922 -- Ph'kak
#armor 249 -- Cloth headpiece
#armor 202 -- Cloth Armour
#end

-- Chhma Light Swordsman
#newmonster 8959
#copystats 8951
#spr1 "FourthAge_Shambhala/lightsword_a.tga"
#spr2 "FourthAge_Shambhala/lightsword_b.tga"
#name "Chhma Light Swordsman"
#descr "tmp"
#forestshape 8960
#clearweapons
#weapon 921 -- Machete
#armor 249 -- Cloth headpiece
#armor 202 -- Cloth Armour
#armor 2 -- Shield
#end

#newmonster 8960 -- fs
#copystats 8952
#spr1 "FourthAge_Shambhala/lightsword_a.tga"
#spr2 "FourthAge_Shambhala/lightsword_b.tga"
#name "Chhma Light Swordsman"
#descr "tmp"
#plainshape 8959
#clearweapons
#weapon 921 -- Machete
#armor 249 -- Cloth headpiece
#armor 202 -- Cloth Armour
#armor 2 -- Shield
#end

-- Chhma Heavy Swordsman
#newmonster 8961
#copystats 8951
#spr1 "FourthAge_Shambhala/heavysword_a.tga"
#spr2 "FourthAge_Shambhala/heavysword_b.tga"
#name "Sword Maiden"
#descr "tmp"
#gcost 15
#rpcost 17
#hp 13
#bodyguard 1
#mor 12
#forestshape 8962
#clearweapons
#weapon 921 -- Machete
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#female
#end

#newmonster 8962 -- fs
#copystats 8952
#spr1 "FourthAge_Shambhala/heavysword_a.tga"
#spr2 "FourthAge_Shambhala/heavysword_b.tga"
#name "Sword Maiden"
#descr "tmp"
#gcost 15
#rpcost 17
#hp 13
#bodyguard 1
#mor 13
#plainshape 8961
#clearweapons
#weapon 921 -- Machete
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#female
#end

-- Chhma Heavy Spearman
#newmonster 8963
#copystats 8951
#spr1 "FourthAge_Shambhala/heavyspear_a.tga"
#spr2 "FourthAge_Shambhala/heavyspear_b.tga"
#name "Spear Maiden"
#descr "tmp"
#gcost 15
#rpcost 17
#hp 13
#mor 12
#bodyguard 1
#forestshape 8964
#clearweapons
#weapon 1 -- Spear
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 4 -- Tower shield
#female
#end

#newmonster 8964 -- fs
#copystats 8952
#spr1 "FourthAge_Shambhala/heavyspear_a.tga"
#spr2 "FourthAge_Shambhala/heavyspear_b.tga"
#name "Spear Maiden"
#descr "tmp"
#gcost 15
#rpcost 17
#hp 13
#mor 13
#bodyguard 1
#plainshape 8963
#clearweapons
#weapon 1 -- Spear
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 4 -- Tower shield
#female
#end

-- Chhma Hunter
#newmonster 8965
#copystats 8951
#spr1 "FourthAge_Shambhala/hunter_a.tga"
#spr2 "FourthAge_Shambhala/hunter_b.tga"
#name "Chhma Hunter"
#descr "tmp"
#gcost 14
#rpcost 20
#hp 13
#att 11
#def 14
#prec 13
#mor 11
#forestshape 8966
#stealthy 0
#skirmisher 1
#clearweapons
#weapon 924 -- Karambit
#weapon 924 -- Karambit
#weapon 932 -- Blow Pipe
#armor 20 -- Iron Cap
#armor 203 -- Reinforced Cloth
#end

#newmonster 8966 -- fs
#copystats 8952
#copyspr 8951
#name "Chhma Hunter"
#spr1 "FourthAge_Shambhala/hunter_a.tga"
#spr2 "FourthAge_Shambhala/hunter_b.tga"
#gcost 14
#rpcost 20
#hp 13
#att 11
#def 14
#prec 13
#mor 12
#plainshape 8965
#stealthy 20
#skirmisher 1
#clearweapons
#weapon 924 -- Karambit
#weapon 924 -- Karambit
#weapon 932 -- Blow Pipe
#armor 20 -- Iron Cap
#armor 183 -- Reinforced Cloth
#end

-- Chhma Coastal
#newmonster 8967
#copystats 8951
#spr1 "FourthAge_Shambhala/spearfisher_a.tga"
#spr2 "FourthAge_Shambhala/spearfisher_b.tga"
#name "Chhma Spearfisher"
#descr "tmp"
#gcost 14
#rpcost 20
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
#weapon 452 -- Harpoon
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#end

#newmonster 8968 -- fs
#copystats 8952
#spr1 "FourthAge_Shambhala/spearfisher_a.tga"
#spr2 "FourthAge_Shambhala/spearfisher_b.tga"
#name "Chhma Spearfisher"
#descr "tmp"
#gcost 14
#rpcost 20
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
#weapon 452 -- Harpoon
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#end

-- Crossbow Elephant
#newmonster 8969
#spr1 "FourthAge_Shambhala/crossbowelephant_a.tga"
#spr2 "FourthAge_Shambhala/crossbowelephant_b.tga"
#name "Domrey"
#descr "Powerful artillery inspired by the siege weapons of T'ien Ch'i. Double crossbows are mounted on the largest and strongest beasts in the Jungles of Shambhala. The elephants of the subcontinent are smaller in size than those of other lands, but no less intelligent or trainable in the hands of Chhma handlers."
#drawsize -10
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
#spr1 "FourthAge_Shambhala/trampleelephant_a.tga"
#spr2 "FourthAge_Shambhala/trampleelephant_b.tga"
#name "Chhma War Elephant"
#descr "tmp"
#drawsize -10
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
#weapon 928 -- Open Palm
#weapon 360 -- Sticks and stones
#armor 158 -- Robes
#end

-- White One schmuck
#newmonster 8972
#copystats 8953
#name "Guy"
#descr "tmp"
#copyspr 1145 -- Yogi
#gcost 18
#weapon 7 -- Quarterstaff
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
#armor 203 -- Reinforced Cloth
#end -- Should maybe give skull amulet as well?




-- Commanders

-- Scout
#newmonster 8974
#copystats 8965
#copyspr 8965
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
#copyspr 8965
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
#copyspr 8965
#name "Pack leader"
#descr "Elite hunters with charisma and combat prowess"
#gcost 55
#rpcost 22
#hp 14
#att 12
#def 15
#prec 14
#mor 12
#stealthy 10
#female
#clearweapons
#weapon 921 -- Machete
#weapon 34 -- Blow Pipe
#armor 120 -- Leather Cap
#armor 203 -- Reinforced Cloth
#armor 207 -- Wicker Shield
#forestshape 8977
#end

#newmonster 8977 -- fs
#copystats 8952
#copyspr 8965
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
#armor 203 -- Reinforced Cloth
#armor 207 -- Wicker Shield
#plainshape 8976
#end

-- Coastal Commander
#newmonster 8978
#copystats 8951
#copyspr 8967
#name "Fishing Chief"
#descr "tmp"
#gcost 45
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
#weapon 452 -- Harpoon
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#armor 207 -- Wicker Shield
#okleader
#end

#newmonster 8979 -- fs
#copystats 8952
#copyspr 8967
#name "Fishing Chief"
#descr "tmp"
#gcost 45
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
#weapon 452 -- Harpoon
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
#copyspr 8961
#name "Chhma Noble"
#descr "Nobles are expected to have experience in matters of warfare and magic as well as statecraft. With their Vanara masters mostly concerned with matters of the spirit they manage much of the administration of the empire and its armies. With the gates of Shambhala opening in conquest many of the Chhma nobility have taken to studying the sun and higher self after their masters, though those in the jungles of their homeland often take to more traditional practices."
#custommagic 10368 100 -- FSN random
#gcost 80
#hp 14
#att 11
#def 14
#prec 13
#mor 13
#mr 14 -- +3
#forestshape 8983
#clearweapons
#weapon 922 -- Ph'kak
#armor 118 -- Half Helmet
#armor 9 -- Plate Cuirass
#goodleader
#command -20
#end

#newmonster 8983 -- fs
#copystats 8952
#copyspr 8961
#name "Chhma Noble"
#descr "Nobles are expected to have experience in matters of warfare and magic as well as statecraft. With their Vanara masters mostly concerned with matters of the spirit they manage much of the administration of the empire and its armies. With the gates of Shambhala opening in conquest many of the Chhma nobility have taken to studying the sun and higher self after their masters, though those in the jungles of their homeland often take to more traditional practices."
#custommagic 9728 100 -- FWE random
#gcost 80
#hp 14
#att 11
#def 14
#prec 13
#mor 14
#mr 14 -- +3
#plainshape 8982
#clearweapons
#weapon 922 -- Ph'kak
#armor 118 -- Half Helmet
#armor 9 -- Plate Cuirass
#goodleader
#command -20
#end

-- Anyfort FWE mage
#newmonster 8984
#copystats 8951
#copyspr 8951
#name "Some Mage"
#descr "tmp. Sorcerer, command the elements, rainmaking, shapeshifting, invisibility"
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
#female
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
#female
#end

-- Death and stuff sneaky mage
#newmonster 8986
#copystats 8951
#copyspr 8951
#name "Some hard to mass Mage"
#descr "tmp. Shaman, Spirit medium, magical power is granted through spirit possession rather than innate magical power"
#magicskill 5 1 		-- D
#custommagic 9728 80	-- WEN random
#gcost 10025
#rpcost 4
#mor 11
#mr 15 -- +4
#stealthy 10
#forestshape 8987
#poorleader
#clearweapons
#weapon 29 -- Claw
#weapon 924 -- Karambit
#armor 158 -- Robes
#female
#end

#newmonster 8987 -- fs
#copystats 8952
#copyspr 8951
#name "Some hard to mass Mage"
#descr "tmp. Shaman, Spirit medium, magical power is granted through spirit possession rather than innate magical power"
#magicskill 5 1 		-- D
#custommagic 9728 80	-- WEN random
#gcost 10025
#rpcost 4
#mor 12
#mr 15 -- +4
#stealthy 20
#plainshape 8986
#poorleader
#clearweapons
#weapon 29 -- Claw
#weapon 924 -- Karambit
#armor 158 -- Robes
#female
#end

-- Cap only ascended mage
#newmonster 8988
#copystats 8954 -- White One Com Base
#copyspr 1143 -- Guru
#name "Cap only 1"
#descr "Ascended monkey, has 4 arms and emits and aura of splendor"
#gcost 10010
#magicskill 4 2 -- Astral
#magicskill 8 2 -- Holy
#custommagic 10368 100 -- FSN random
#hp 15
#att 12
#def 12
#prec 11
#enc 2
#float
#awe 1
#ambidextrous 4
#airshield 60
#maxage 150
#itemslots 7326 -- 4 armed humanoid with 1 misc slot
#mor 15
#mr 16
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 931 -- Perfect Kick
#armor 158 -- Robes
#end

-- Cap only even more ascended mage
#newmonster 8989
#copystats 8954 -- White One Com Base
#copyspr 1144 -- Rishi
#name "Cap only 2"
#descr "Ridiculously ascended monkey, travels by the Laws of Simultaneity"
#gcost 10030
#rpcost 4 -- slow to recruit
#magicskill 4 3 -- Astral
#magicskill 0 1 -- Fire
#magicskill 8 2 -- Holy
#custommagic 10368 100 -- FSN random
#custommagic 8320 100 -- FN random
#custommagic 10880 10 -- FWSN random
#hp 16
#att 14
#def 14
#prec 13
#enc 2
#float
#teleport
#awe 3
#ambidextrous 4
#airshield 60
#maxage 300
#itemslots 7326 -- 4 armed humanoid with 1 misc slot
#mor 16
#mr 18
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 933 -- Open Palm
#weapon 933 -- Open Palm
#weapon 931 -- Perfect Kick
#armor 158 -- Robes
#end




-- Spells

-- Power of the Self
#newspell
#copyspell 739 -- PoS
#name "Power of the Self"
#descr "By channelling inner strength, this spell makes the caster more powerful in all paths of magic."
#details "Grants a +1 bonus to all magic paths"
#school 0 -- conjuration
#researchlevel 3
#path 0 4 -- astral
#pathlevel 0 2
#fatiguecost 50
#effect 23
#damage 128
#spec 8388608 -- can be cast UW
#restricted 230
#end

-- Disallow Power of the Spheres
#selectspell 739
#notfornation 230
#end

-- Disallow Communion
#selectspell 976
#notfornation 230
#end

#selectspell 977
#notfornation 230
#end

-- Thirsting Earth
#newspell
#name "Thirsting Earth"
#path 0 3 -- earth
#researchlevel -1
#aoe 1
#damage 32
#effect 11 -- Curse of Stones
#spec 545788032 -- UW ok and MR negates
#end

-- Curse of Thirsting Earth
#newspell
#copyspell 973 -- Dessication
#name "Curse of Thirsting Earth"
#descr "The caster molds cursed orbs of mist and hurls them at the enemy. On impact the malicious concoction draws the water out of their bodies and into the thirsting earth. Even after the worst effects have subsided the earth continues to draw on their strength. While very dangerous, a strong will can lessen the effects by breaking the connection to the earth, though it will not negate them entirely."
#details "Those affected gain dessication fatigue 2d8 per round, MR vs 22 to end. Also grants curse of stones if the target fails an MR check"
#school 5 -- Thaumaturgy
#researchlevel 6
#path 0 2 -- Water
#path 1 3 -- Earth
#pathlevel 0 2
#pathlevel 1 1
#fatiguecost 60
#aoe 1003
#range 5025
#precision 4
#spec 545783936 -- AN, UWOK, no eff on lifeless and undead
#flightspr 10081 -- Small Particle Ball 80 is smoke
#explspr 10108
-- #sound -- need to set this
#strikesound 21 -- Frost blast
#nextspell "Thirsting Earth"
#restricted 230
#end




-- Sites

#newsite 1676
#name "City of Temples"
#path 8
#level 0
#loc 735
#gems 0 1
#gems 6 1
#rarity 5
#homemon 8971 -- Ranged One
#homemon 8972 -- Martial Arts One
#homemon 8973 -- Magic Staff One
#end

#newsite 1677
#name "The Five Towers"
#path 8
#level 0
#loc 735
#gems 4 2
#rarity 5
#homecom 8988 -- Smol Cap mage
#homecom 8989 -- Big Cap mage
#end

-- TODO add special pd and wall units to cap

-- Nation

#selectnation 230
#era 3
#name "Shambhala"
#epithet "Karmic Justice"
#color 1 0.2 0.2
#secondarycolor 0.4 0.6 1
#flag "FourthAge_Shambhala/shambhala_flag.tga"
#fortera 3
#likesterr 2
#homerealm 8 -- India
#homerealm 10 -- Default
#homefort 14
#templepic 7 -- Southeast Indian
#syncretism 1
-- #likespop 103 -- Cats and Dogs lol

#startcom 8976 		-- the Commander you get on turn 1
#startunittype1 8959 	-- Chhma light swords
#startunittype2 8955 	-- Chhma militia
#startunitnbrs1 12
#startunitnbrs2 12

#startscout 8974 	-- the Scout or some other unit to get on turn 1

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

#defcom1 8976 		-- Chhma pack leader
#defunit1 8955 		-- Chhma militia
#defunit1b 8959 	-- Chhma light infantry
#defcom2 8980		-- Chhma noble
#defunit2 8963		-- Chhma heavy spearmen
#defmult1 12
#defmult1b 12
#defmult2 16

#wallcom 8976		-- Chhma pack leader
#wallunit 8955		-- Chhma militia
#wallmult 10
#wallunit 8963		-- Chhma H spear
#wallmult 2

-- TODO Add Heros

-- add magic sites that grant gem income and units as capital only benefits
#startsite  "City of Temples" -- 1 fire, 1 nature
#startsite "The Five Towers" -- 2 astral
#end