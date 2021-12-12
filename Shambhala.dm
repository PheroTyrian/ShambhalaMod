#modname "The Fourth Age: Shambhala, Karmic Justice v0.12"
#description "A nation of sacred monks and feline halfmen"
#icon "FourthAge_Shambhala/shambhala_logo.tga"
#version 0.12

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
-- Magic items 700-709
-- Enchantment 650-654

-- National spell ideas and todos: (lim 16)
-- Holy astral twiceborn that heals afflictions and transforms into one of the four directional beasts
-- Offensive curse luck spell
-- Minor healing ritual for theming?
-- Asian noodle drakes summon
-- Krasue summon
-- Some other weird mythical stuff?
-- Remote attack or similar effect spell that encourages open gates (maybe allowing cap onlies to move??)

-- Event todos:
-- Noodle Drake + Maiden Guard => Dragon Guard in 2 luck at a chance (lim x per turn somehow)
-- Same but 3% chances for rare dragon rider commander couplings
-- Luck only spells that punish enemies in Shambhala's dom?
-- Misfortune events that somehow encourage attacking enemies??

-- Monster todos:
-- Twiceborn shape for death mage
-- Asian noodle drakes
-- Krasue
-- Directional beasts
-- Firearm cats
-- Consider giving ambushers a promotion shape

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

#newweapon 934
#name "Golok"
#len 1
#att 1
#def 0
#dmg 5
#slash
#rcost 3
#sound 8
#ironweapon
#end


-- Units

#newmonster 8951 -- Base chhma shape
#name "Chhma"
#descr "This is the base shape for all Chhma, you should not be seeing this in game"
#copyspr 728
#drawsize 20
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

#newmonster 8952 -- Chhma forestshape have +2 mm, +1 mor
#name "Chhma"
#descr "This is the base shape for all Chhma, you should not be seeing this in game"
#copyspr 728
#drawsize 20
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
#falsearmy -1
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
#stealth 0
#forestshape 8956
#clearweapons
#weapon 29 -- Claw
#weapon 29 -- Claw
#weapon 264 -- Compbow
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
#stealth 10
#plainshape 8955
#clearweapons
#weapon 29 -- Claw
#weapon 29 -- Claw
#weapon 264 -- Compbow
#end

-- Chhma Ambusher
#newmonster 8957
#copystats 8951
#spr1 "FourthAge_Shambhala/ambusher_a.tga"
#spr2 "FourthAge_Shambhala/ambusher_b.tga"
#name "Chhma Ambusher"
#descr "tmp. They wield phkak, axe-like farming implements that have been adapted for use in warfare. When crafted for this sinister harvest they cut through a person as easily as a branch"
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
#descr "tmp. They wield phkak, axe-like farming implements that have been adapted for use in warfare. When crafted for this sinister harvest they cut through a person as easily as a branch"
#plainshape 8957
#stealthy 10
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
#descr "tmp. They wield golok, cutting blades that are essential tools for traversing dense jungle."
#stealthy 0
#forestshape 8960
#clearweapons
#weapon 934 -- Golok
#armor 249 -- Cloth headpiece
#armor 202 -- Cloth Armour
#armor 2 -- Shield
#end

#newmonster 8960 -- fs
#copystats 8952
#spr1 "FourthAge_Shambhala/lightsword_a.tga"
#spr2 "FourthAge_Shambhala/lightsword_b.tga"
#name "Chhma Light Swordsman"
#descr "tmp. They wield golok, cutting blades that are essential tools for traversing dense jungle."
#stealthy 10
#plainshape 8959
#clearweapons
#weapon 934 -- Golok
#armor 249 -- Cloth headpiece
#armor 202 -- Cloth Armour
#armor 2 -- Shield
#end

-- Chhma Heavy Spearman
#newmonster 8961
#copystats 8951
#spr1 "FourthAge_Shambhala/heavyspear_a.tga"
#spr2 "FourthAge_Shambhala/heavyspear_b.tga"
#name "Shield bearer"
#descr "tmp"
#gcost 15
#rpcost 17
#hp 13
#mor 12
#att 11
#forestshape 8962
#clearweapons
#weapon 1 -- Spear
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 4 -- Tower shield
#end

#newmonster 8962 -- fs
#copystats 8952
#spr1 "FourthAge_Shambhala/heavyspear_a.tga"
#spr2 "FourthAge_Shambhala/heavyspear_b.tga"
#name "Shield bearer"
#descr "tmp"
#gcost 15
#rpcost 17
#hp 13
#mor 13
#att 11
#plainshape 8961
#clearweapons
#weapon 1 -- Spear
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 4 -- Tower shield
#end

-- Chhma Heavy Swordsman, consider giving bad formation fighter?
#newmonster 8963
#copystats 8951
#spr1 "FourthAge_Shambhala/heavysword_a.tga"
#spr2 "FourthAge_Shambhala/heavysword_b.tga"
#name "Sword Maiden"
#descr "Sword Maidens are the personal bodyguards of nobility both on campaign and at home. So as not to confuse matters of succession, all are female. They wield machete, slashing blades as efficient at cutting through jungle as they are cutting through armor"
#gcost 15
#rpcost 17
#hp 13
#bodyguard 1
#mor 12
#forestshape 8964
#clearweapons
#weapon 921 -- Machete
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#female
#end

#newmonster 8964 -- fs
#copystats 8952
#spr1 "FourthAge_Shambhala/heavysword_a.tga"
#spr2 "FourthAge_Shambhala/heavysword_b.tga"
#name "Sword Maiden"
#descr "Sword Maidens are the personal bodyguards of nobility both on campaign and at home. So as not to confuse matters of succession, all are female. They wield machete, slashing blades as efficient at cutting through jungle as they are cutting through armor"
#gcost 15
#rpcost 17
#hp 13
#bodyguard 1
#mor 13
#plainshape 8963
#clearweapons
#weapon 921 -- Machete
#armor 20 -- Iron Cap
#armor 9 -- Plate Cuirass
#armor 2 -- Shield
#female
#end

-- Chhma Hunter
#newmonster 8965
#copystats 8951
#spr1 "FourthAge_Shambhala/hunter_a.tga"
#spr2 "FourthAge_Shambhala/hunter_b.tga"
#name "Chhma Hunter"
#descr "tmp. They wield karambit, concealable daggers that resemble tiger claws."
#gcost 14
#rpcost 20
#hp 13
#str 12
#att 11
#def 14
#prec 13
#mor 11
#forestshape 8966
#stealthy 20
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
#spr1 "FourthAge_Shambhala/hunter_a.tga"
#spr2 "FourthAge_Shambhala/hunter_b.tga"
#name "Chhma Hunter"
#descr "tmp. They wield karambit, curved concealable daggers that resemble tiger claws."
#gcost 14
#rpcost 20
#hp 13
#str 12
#att 11
#def 14
#prec 13
#mor 12
#plainshape 8965
#stealthy 30
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
#str 12
#att 11
#def 14
#prec 13
#mor 11
#swimming
#swampsurvival
#stealthy 0
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
#str 12
#att 11
#def 14
#prec 13
#mor 12
#swimming
#swampsurvival
#stealthy 10
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
#drawsize -5
#gcost 85
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
#drawsize -5
#gcost 90
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
#copyspr 1124
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
#name "Samanera"
#descr "tmp"
#copyspr 1142
#gcost 18
#weapon 7 -- Quarterstaff
#weapon 931 -- Perfect Kick
#armor 158 -- Robes
#end

-- White One magic dude
#newmonster 8973
#copystats 8953
#name "Bhikkhu"
#descr "tmp"
#copyspr 1128
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
#spr1 "FourthAge_Shambhala/scout_a.tga"
#spr2 "FourthAge_Shambhala/scout_b.tga"
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
#clearweapons
#weapon 924 -- Karambit
#weapon 924 -- Karambit
#weapon 34 -- Blow Pipe
#cleararmor
#armor 20 -- Iron Cap
#armor 202 -- Cloth Armour
#female
#noleader
#end

#newmonster 8975 -- fs
#copystats 8966
#spr1 "FourthAge_Shambhala/scout_a.tga"
#spr2 "FourthAge_Shambhala/scout_b.tga"
#name "Chhma Scout"
#descr "Elite hunters chosen for their stealth and initiative"
#gcost 25
#hp 14
#att 11
#def 14
#prec 13
#plainshape 8974
#stealthy 30
#clearweapons
#weapon 924 -- Karambit
#weapon 924 -- Karambit
#weapon 34 -- Blow Pipe
#cleararmor
#armor 20 -- Iron Cap
#armor 202 -- Cloth Armour
#female
#noleader
#end

-- Stealthy Commander
#newmonster 8976
#copystats 8951
#spr1 "FourthAge_Shambhala/hunterCom_a.tga"
#spr2 "FourthAge_Shambhala/hunterCom_b.tga"
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
#armor 20 -- Iron Cap
#armor 203 -- Reinforced Cloth
#armor 2 -- Shield
#forestshape 8977
#end

#newmonster 8977 -- fs
#copystats 8952
#spr1 "FourthAge_Shambhala/hunterCom_a.tga"
#spr2 "FourthAge_Shambhala/hunterCom_b.tga"
#name "Pack Leader"
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
#armor 20 -- Iron Cap
#armor 203 -- Reinforced Cloth
#armor 2 -- Shield
#plainshape 8976
#end

-- Coastal Commander
#newmonster 8978
#copystats 8951
#spr1 "FourthAge_Shambhala/spearfisherCom_a.tga"
#spr2 "FourthAge_Shambhala/spearfisherCom_b.tga"
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
#stealthy 0
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
#spr1 "FourthAge_Shambhala/spearfisherCom_a.tga"
#spr2 "FourthAge_Shambhala/spearfisherCom_b.tga"
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
#stealthy 10
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
#spr1 "FourthAge_Shambhala/noble_a.tga"
#spr2 "FourthAge_Shambhala/noble_b.tga"
#name "Chhma Noble"
#descr "Nobles are expected to have experience in matters of warfare and magic as well as statecraft. With their Vanara masters mostly concerned with matters of the spirit they manage much of the administration of the empire and its armies. As the gates of Shambhala open in conquest many of the Chhma nobility have taken to studying the sun and higher self after their masters, though those in the jungles of their homeland often adopt more traditional practices."
#magicskill 0 1 -- Fire
#custommagic 10240 100 -- SN random
#gcost 90
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
#spr1 "FourthAge_Shambhala/noble_a.tga"
#spr2 "FourthAge_Shambhala/noble_b.tga"
#name "Chhma Noble"
#descr "Nobles are expected to have experience in matters of warfare and magic as well as statecraft. With their Vanara masters mostly concerned with matters of the spirit they manage much of the administration of the empire and its armies. As the gates of Shambhala open in conquest many of the Chhma nobility have taken to studying the sun and higher self after their masters, though those in the jungles of their homeland often adopt more traditional practices."
#magicskill 0 1 -- Fire
#custommagic 1536 100 -- WE random
#gcost 90
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
#spr1 "FourthAge_Shambhala/sorcerer_a.tga"
#spr2 "FourthAge_Shambhala/sorcerer_b.tga"
#name "Sorcerer"
#descr "tmp. Sorcerer, command the elements, rainmaking, shapeshifting, invisibility, healing powers extend their lifespan"
#magicskill 2 1 		-- W
#custommagic 1152 100	-- FE random
#custommagic 1152 100	-- FE random
#custommagic 512 50		-- 50% W
#gcost 10015
#mor 12
#mr 16 -- +5
#maxage 60
#stealthy 0
#forestshape 8985
#poorleader
#clearweapons
#weapon 7 -- Quarterstaff
#armor 158 -- Robes
#female
#end

#newmonster 8985 -- fs
#copystats 8952
#spr1 "FourthAge_Shambhala/sorcerer_a.tga"
#spr2 "FourthAge_Shambhala/sorcerer_b.tga"
#name "Sorcerer"
#descr "tmp. Sorcerer, command the elements, rainmaking, shapeshifting, invisibility, healing powers extend their lifespan"
#magicskill 2 1 		-- W
#custommagic 1152 100	-- FE random
#custommagic 1152 100	-- FE random
#custommagic 512 50		-- 50% W
#gcost 10015
#mor 13
#mr 16 -- +5
#maxage 60
#stealthy 10
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
#spr1 "FourthAge_Shambhala/medium_a.tga"
#spr2 "FourthAge_Shambhala/medium_b.tga"
#name "Medium"
#descr "tmp. Shaman, Spirit medium, magical power is granted through spirit possession rather than innate magical power"
#magicskill 5 1 		-- D
#custommagic 8832 80	-- FWN random
#gcost 10015
#rpcost 3
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
#spr1 "FourthAge_Shambhala/medium_a.tga"
#spr2 "FourthAge_Shambhala/medium_b.tga"
#name "Medium"
#descr "tmp. Shaman, Spirit medium, magical power is granted through spirit possession rather than innate magical power"
#magicskill 5 1 		-- D
#custommagic 8832 80	-- FWN random
#gcost 10015
#rpcost 3
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
#name "Solar Monk"
#descr "Ascended monkey, has 4 arms and emits and aura of splendor"
#gcost 220
#magicskill 4 2 -- Astral
#magicskill 8 2 -- Holy
#custommagic 10368 100 -- FSN random
#custommagic 10880 10 -- FWSN random
#hp 15
#att 12
#def 12
#prec 11
#enc 2
#float
#sunawe 1
#ambidextrous 4
#airshield 60
#maxage 200
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
#name "Bodhisattva"
#descr "Ridiculously ascended monkey, travels by the Laws of Simultaneity, has 6 arms, pretty crazy"
#gcost 375
#rpcost 6 -- Very slow to recruit
#magicskill 4 3 -- Astral
#magicskill 0 1 -- Fire
#magicskill 8 2 -- Holy
#custommagic 8320 100 -- FN random
#custommagic 10880 100 -- FWSN random
#custommagic 10880 10 -- FWSN random
#hp 16
#att 14
#def 14
#prec 13
#enc 2
#float
#teleport
#sunawe 3
#ambidextrous 4
#airshield 60
#maxage 400
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

-- Cap only ascended mage immobile form
#newmonster 8990
#copystats 8954 -- White One Com Base
#copyspr 1143 -- Guru
#name "Sitting Monk"
#descr "Still in isolation. This monk continues to sit in contemplation, awaiting the right time to act."
#gcost 195
#magicskill 4 2 -- Astral
#magicskill 8 2 -- Holy
#researchbonus 2
#hp 15
#att 12
#def 12
#prec 11
#enc 2
#immobile
#unteleportable
#sunawe 1
#ambidextrous 4
#airshield 60
#maxage 200
#itemslots 1 -- Nothing
#mor 15
#mr 16
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 931 -- Perfect Kick
#armor 158 -- Robes
#end

-- Cap only even more ascended mage immobile form
#newmonster 8991
#copystats 8954 -- White One Com Base
#copyspr 1144 -- Rishi
#name "Sitting Bodhisattva"
#descr "Still in isolation. This being continues to sit in contemplation, awaiting the right time to act."
#gcost 325
#rpcost 6 -- Very slow to recruit
#magicskill 4 3 -- Astral
#magicskill 0 1 -- Fire
#magicskill 8 2 -- Holy
#researchbonus 4
#hp 16
#att 14
#def 14
#prec 13
#enc 2
#immobile
#unteleportable
#sunawe 3
#ambidextrous 4
#airshield 60
#maxage 400
#itemslots 1 -- Nothing
#mor 16
#mr 18
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 933 -- Open Palm
#weapon 933 -- Open Palm
#weapon 931 -- Perfect Kick
#armor 158 -- Robes
#end

-- Combat Spells

-- Power of the Self
#selectspell 2450
#clear
#copyspell "Power of the Spheres" -- PoS
#name "Power of the Self"
#descr "By channelling inner strength, this spell makes the caster more powerful in all paths of magic."
#details "Grants a +1 bonus to all magic paths"
#school 0 -- conjuration
#researchlevel 3
#path 0 4 -- astral
#pathlevel 0 2
#fatiguecost 50
#spec 8404992 -- can be cast UW
#restricted 230
#end

-- Thirsting Earth
#selectspell 2451
#clear
#name "Thirsting Earth"
#path 0 3 -- earth
#researchlevel -1
#aoe 1
#damage 32
#effect 11 -- Curse of Stones
#spec 545788032 -- UW ok and MR negates
#end

-- Curse of Thirsting Earth
#selectspell 2452
#clear
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
#nextspell 2451
#restricted 230
#end

-- Decay
#selectspell 2453
#clear
#copyspell 980 -- Decay
#name "The Flesh is Weak"
#school -1
#spec 8405120
#end

-- Fatigue removal effect
#selectspell 2454
#clear
#copyspell 1054 -- Reinvigoration
#name "Great Power"
#school -1
#spec 8405120
#nextspell 2453
#end

-- Spirit possession spell
#selectspell 2455
#clear
#copyspell 739 --PoS
#name "Spirit Channelling"
#descr "The caster calls a powerful spirit into themselves to add its might to their own. This is a path to great power, but living bodies are imperfect vessels and the pairing quickly tears the flesh apart. Few survive the experience."
#school 0 -- Conjuration
#researchlevel 4
#path 0 5 -- Death
#pathlevel 0 1
#fatiguecost 100
#spec 8404992
#sound 20 -- Banshee?
#ainocast 1
#nextspell 2454
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


-- Ritual Spells

-- Open the gates
#selectspell 2456
#clear
#copyspell 106
#name "Open the Gates"
#school 5
#researchlevel 0
#restricted 230
#onlyatsite "Closed Gates of Shambhala"
#descr "Open the gates of Shambhala, to bring enlightenment to the darkened corners of the world." 
#details "Spending additional gems does nothing. Shifts national luck boost to misfortune. 4d3 white ones will join the cause."
#path 0 4 -- Astral 
#pathlevel 0 3
#effect 10082
#fatiguecost 1500 -- 15 gems
#damage 650 -- enchantment code 650
#end

-- Close the gates
#selectspell 2457
#clear
#copyspell 106
#name "Close the Gates"
#school 5
#researchlevel 0
#restricted 230
#onlyatsite "Open Gates of Shambhala"
#descr "Close the gates of Shambhala, to correct the karmic balance and better pursue enlightenment." 
#details "Spending additional gems does nothing. Shifts national misfortune boost to luck."
#path 0 4 -- Astral 
#pathlevel 0 3
#effect 10082
#fatiguecost 1500 -- 15 gems
#damage 651 -- enchantment code 651
#end

-- Gate spell 1
--#selectspell 2458
--#clear
--#name ""
--#descr ""
--#onlyatsite "Open Gates of Shambhala"
--#end

-- Gate spell 2
--#selectspell 2459
--#clear
--#name ""
--#descr ""
--#onlyatsite "Open Gates of Shambhala"
--#end

-- Gate spell 3
--#selectspell 2460
--#clear
--#name ""
--#descr ""
--#onlyatsite "Open Gates of Shambhala"
--#end

-- Gate spell 4
--#selectspell 2461
--#clear
--#name ""
--#descr ""
--#onlyatsite "Open Gates of Shambhala"
--#end

-- Sites

#newsite 1676
#name "City of Temples"
#path 8
#level 0
#loc 735
#gems 0 1
#gems 4 2
#gems 6 1
#rarity 5
#wallunit 8971 -- Ranged Monke
#wallmult 5
#homemon 8971 -- Ranged One
#homemon 8972 -- Martial Arts One
#end

#newsite 1678
#name "Closed Gates of Shambhala"
#path 8
#level 0
#loc 735
#rarity 5
#decunrest 2
#goddommisfortune -3
#homecom 8990 -- Smol immobile Cap mage
#homecom 8991 -- Big immobile Cap mage
#end

#newsite 1679
#name "Open Gates of Shambhala"
#path 8
#level 0
#loc 735
#rarity 5
#decunrest -5
#goddommisfortune 3
#homecom 8988 -- Smol Cap mage
#homecom 8989 -- Big Cap mage
#end

#newsite 1680
#name "Ruins of the Gates"
#path 5
#level 0
#loc 735
#rarity 5
#end

#newsite 1681
#name "Shambhala forest mages"
#path 6
#level 0
#loc 735
#rarity 5
#homecom 8983 -- Chhma noble fs
#end

-- TODO add special pd and wall units to cap

-- Nation

#selectnation 230
#era 3
#name "Shambhala"
#epithet "Karmic Justice"
#descr "In the ancient kingdom of Bandar Log, a wise Bandaraja chose to expel a sect of sun worshiping monks from his lands. He soon realised these were the best of his people and bid them return, but few did. The rest journeyed far to the east, to find a land shrouded in dense jungle, and within it a great temple complex tended by a curious race of feline halfmen called the Chhma. Installing themselves in these temples they erected great walls around the site, and began a many centuries long isolation from the world.

Now, however, the world has declined into war and greed as was prophesied. The white ones of Shambhala end their isolation and rally the Chhma behind them. A powerful force stirs in the temple city. Soon the gates will swing open and from them will come an army to vanquish the dark forces and usher in a golden age of peace and enlightenment."
#summary "Race: Chhma, agile halfmen native to dense jungles, sacred Vanara monks in capital. 
Military: Light stealthy infantry, medium armoured infantry, elephants. Sacred monks, some of which are extremely mobile.
Magic: High Astral. Good access to Fire, Water, Earth and Nature. Limited Death.
Priests: Medium, Synecretic.
Special: National luck scales are increased or decreased by 3 depending on Gate status, the Gate being open allows for powerful offensive rituals." -- Notice the string ends here and only here
#brief "An isolationist nation turned empire of enlightened monks ruling over feline halfmen"
#color 1 0.2 0.2
#secondarycolor 0.4 0.6 1
#flag "FourthAge_Shambhala/shambhala_flag.tga"
#fortera 3
#likesterr 2
#homerealm 8 -- India
#homerealm 4 -- Far East
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
#startsite "City of Temples" -- 1 fire, 1 nature, 2 astral
#startsite "Closed Gates of Shambhala" -- Special mechanic site
#futuresite "Open Gates of Shambhala" -- Other version of special mechanic site
#futuresite "Shambhala forest mages"
#end

-- Events

-- Opening the gates, todo: create a better description
#newevent
#rarity 5
#req_ench 650 -- A code pertaining to the spell Open the Gates
#req_nation 230 -- Shambhala
#req_fornation 230
#req_owncapital 1
#req_freesites 1
#req_site 1 -- Requires the site in square brackets in the description
#msg "The gates of Shambhala open in conquest!
Sensing the changing times, some reclusive monks have ended their contemplation to join you. [Closed Gates of Shambhala]"
#nation -2 -- Event is owned by the province owner
#addsite 1679 -- Open Gates 
#removesite 1678 -- Closed Gates
#incscale3 4 -- misfortune increased by 3
#4d3units 8973 -- Magic white one
#req_pop0ok
#end

-- Closing the gates, todo: create unique unit for this event, and give it a proper description
#newevent
#rarity 5
#req_ench 651 -- A code pertaining to the spell Close the Gates
#req_nation 230 -- Shambhala
#req_fornation 230
#req_owncapital 1
#req_freesites 1
#req_site 1 -- Requires the site in square brackets in the description
#msg "The gates of Shambhala close and the drums of war fall silent. [Open Gates of Shambhala]"
#nation -2 -- Event is owned by the province owner
#addsite 1678 -- Closed Gates 
#removesite 1679 -- Open Gates
#decscale3 4 -- misfortune decreased by 3
#req_pop0ok
#end

-- Remove the open gates if conquered by another nation
#newevent
#rarity 5
#req_notfornation 230
#req_freesites 1
#req_site 1 -- Requires the site in square brackets in the description
#msg "As your forces stormed the temple city they sundered the once mighty gates that stood there. [Open Gates of Shambhala]"
#nation -2 -- Event is owned by the province owner
#addsite 1680 -- Gates Ruins
#removesite 1679 -- Open Gates
#req_pop0ok
#end

-- Remove the closed gates if conquered by another nation
#newevent
#rarity 5
#req_notfornation 230
#req_freesites 1
#req_site 1 -- Requires the site in square brackets in the description
#msg "As your forces stormed the temple city they sundered the once mighty gates that stood there. [Closed Gates of Shambhala]"
#nation -2 -- Event is owned by the province owner
#addsite 1680 -- Gates Ruins
#removesite 1678 -- Closed Gates
#req_pop0ok
#end

-- Repair the gates if reconquered by Shambhala
#newevent
#rarity 5
#req_owncapital 1
#req_fullowner 230
#req_fornation 230
#req_freesites 1
#req_site 1 -- Requires the site in square brackets in the description
#msg "The temple city is returned to its rightful stewards. The gates have been repaired. [Ruins of the Gates]"
#nation -2 -- Event is owned by the province owner
#addsite 1679 -- Closed Gates
#removesite 1680 -- Gates Ruins
#req_pop0ok
#end

-- Replace a sitting monk with an awakened one
#newevent
#rarity 5
#req_owncapital 1
#req_fullowner 230
#req_fornation 230
#req_nositenbr 1678 -- Gates are not closed (so they're open)
#req_monster 8990 -- Sitting Monk
#killcom 8990
#com 8988 -- Solar Monk
#notext
#nolog
#end

-- Replace a sitting monk with an awakened one number 2
#newevent
#rarity 5
#req_owncapital 1
#req_fullowner 230
#req_fornation 230
#req_nositenbr 1678 -- Gates are not closed (so they're open)
#req_monster 8990 -- Sitting Monk
#killcom 8990
#com 8988 -- Solar Monk
#notext
#nolog
#end

-- Replace a sitting Bodhisattva with an awakened one
#newevent
#rarity 5
#req_owncapital 1
#req_fullowner 230
#req_fornation 230
#req_nositenbr 1678 -- Gates are not closed (so they're open)
#req_monster 8991 -- Sitting Bodhisattva
#killcom 8991
#com 8989 -- Bodhisattva
#notext
#nolog
#end