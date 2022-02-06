#modname "The Fourth Age: Shambhala, Karmic Justice v0.14"
#description "A nation of sacred monks and feline halfmen"
#icon "FourthAge_Shambhala/shambhala_logo.tga"
#version 0.14

-- Current research material:
-- https://en.wikipedia.org/wiki/Asian_witchcraft
-- https://en.wikipedia.org/wiki/Philippine_shamans
-- and associated citations

-- IDs reserved:
-- Nation 230
-- Names 258
-- Units 4580-4599, 8951-8999
-- Weapons 921-950
-- Spells 2450-2469
-- Sites 1676-1685
-- Magic items 700-709
-- Enchantment 650-654

-- Sprite todos:
-- Update Ambusher sprite with new equipment
-- Fix jewelry on the Noble attack sprite
-- Up armour the heavy spear sprite (or consider just lowering the armour on it?)
-- River Drake
-- Commanders
-- Monkeys
-- Maiden Guard

-- National spell ideas and todos: (lim 16)
-- Holy astral twiceborn that heals afflictions and transforms into one of the four directional beasts
-- Offensive curse luck spell
-- Minor healing ritual for theming?
-- Krasue summon
-- Some other weird mythical stuff?

-- Event todos:
-- Noodle Drake + Maiden Guard => Dragon Guard in 2 luck at a chance (lim x per turn somehow)
-- Same but 3% chances for rare dragon rider commander couplings
-- Luck only spells that push the narrative of the nation
-- Misfortune events involving assassinations and province conquering attempts
-- White elephant gift events

-- Monster todos:
-- Move Chhma light troops to lower IDs
-- Light Spear
-- Crossbowman
-- Twiceborn shape for death mage
-- Krasue
-- Directional beasts
-- Firearm cats?
-- Consider giving ambushers a promotion shape

--## Names

#selectnametype 258 -- Chhma names
#clear
#addname "Bôtŭm"
#addname "Chăntha"
#addname "Chéa"
#addname "Chéata"
#addname "Chhéng"
#addname "Chhiĕng"
#addname "Da"
#addname "Dara"
#addname "Léng"
#addname "Narŏng"
#addname "Nĭmól"
#addname "Phuŏng"
#addname "Sarœăn"
#addname "Srei"
#addname "Sân"
#addname "Bŏpha"
#addname "Bŏrei"
#addname "Chĕnda"
#addname "Chhuŏn"
#addname "Khăn"
#addname "Kŏsál"
#addname "Kŭnthéa"
#addname "Lay"
#addname "Lum-âng"
#addname "Mali"
#addname "Mei"
#addname "Măp"
#addname "Nari"
#addname "Pănha"
#addname "Pĭsĕt"
#addname "Phálla"
#addname "Phéareăk"
#addname "Phĭrŭn"
#addname "Pŏu"
#addname "Reăksmei"
#addname "Rĭt"
#addname "Ri"
#addname "Sámbăt"
#addname "Sámphoăs"
#addname "Sâmnang"
#addname "Sarĭt"
#addname "Sŏkha"
#addname "Sŏthéa"
#addname "Sŏphál"
#addname "Sŏphát"
#addname "Sŏphéa"
#addname "Sŏphéap"
#addname "Suŏn"
#addname "Ti"
#addname "Vănna"
#addname "Véasna"
#addname "Vĭbŏl"
#addname "Vutthi"
#addname "Sŏvănna"
#addname "Sŏmali"
#addname "Sŏphálla"
#addname "Chĕndarĭt"
#addname "Sŏkŏsál"
#addname "Chĕndavănna"
#addname "Chĕndamei"
#addname "Rivănna"
#addname "Rikŏsál"
#addname "Risŏkha"
#addname "Tikŏsál"
#addname "Tivănna"
#end

--~~

--## Weapons

#newweapon 921
#name "War Machete"
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
#dmg 9
#slash
#rcost 3
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
#copyweapon 50 -- Weak Poison
#name "Moderate Poison"
#dmg 10
#end

#newweapon 932
#copyweapon 34 -- Blowpipe
#ammo 15
#range 12
#secondaryeffect 931 -- Moderate Poison
#end

#newweapon 933
#copyweapon 709 -- Water Breath from Anzu
#range 5
#end

-- Mounted versions
#newweapon 934
#copyweapon 709 -- Water Breath from Anzu
#range 5
#nostr
#dmg 8
#end

#newweapon 935
#copyweapon 236 -- Tiger Rider Bite
#dmg 19
#end

#newweapon 936
#copyweapon 237 -- Tiger Rider Claw
#dmg 17
#end

#newweapon 937
#copyweapon 7 -- Quarterstaff
#name "Blow Pipe"
#dmg 2
#end

--~~
--## Units

#newmonster 8951 -- Base chhma shape
#name "Chhma"
#descr "This is the base shape for all Chhma, you should not be seeing this in game"
#copyspr 728
#gcost 14
#rcost 1
#rpcost 13
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
#nametype 258
#end

-- Chhma forestshape have +2 mm, +1 mor
-- #mor +1
-- #mapmove 18
-- #falsearmy -1

-- 8952 empty

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
#spr1 "FourthAge_Shambhala/Archer1.tga"
#spr2 "FourthAge_Shambhala/Archer2.tga"
#name "Chhma Militia"
#descr "tmp"
#gcost 10
#rpcost 10
#hp 11
#att 9
#def 12
#mor 9
#stealthy 0
#forestshape 8956
#clearweapons
#weapon 29 -- Claw
#weapon 29 -- Claw
#weapon 24 -- Longbow
#end

#newmonster 8956 -- fs
#copystats 8955
#spr1 "FourthAge_Shambhala/Archer1.tga"
#spr2 "FourthAge_Shambhala/Archer2.tga"
#mor 10 -- +1
#mapmove 18
#falsearmy -1
#plainshape 8955
#end

-- Chhma Ambusher
#newmonster 8957
#copystats 8951
#spr1 "FourthAge_Shambhala/Ambusher1.tga"
#spr2 "FourthAge_Shambhala/Ambusher2.tga"
#name "Chhma Ambusher"
#descr "tmp. They wield phkak, axe-like farming implements that have been adapted for use in warfare. When crafted for this sinister harvest they cut through a person as easily as a branch."
#forestshape 8958
#rpcost 12 -- -3
#stealthy 0
#skirmisher 2
#clearweapons
#weapon 922 -- Ph'kak
#armor 118 -- Half Helmet
#armor 6 -- Ring Mail
#end

#newmonster 8958 -- fs
#copystats 8957
#spr1 "FourthAge_Shambhala/Ambusher1.tga"
#spr2 "FourthAge_Shambhala/Ambusher2.tga"
#mor 11 -- +1
#mapmove 18
#falsearmy -1
#plainshape 8955
#end

-- Chhma Light Swordsman
#newmonster 8959
#copystats 8951
#spr1 "FourthAge_Shambhala/LightSword1.tga"
#spr2 "FourthAge_Shambhala/LightSword2.tga"
#name "Chhma Swordsman"
#descr "tmp. They wield machete, slashing blades as efficient at cutting through jungle as they are cutting through armor."
#stealthy 0
#forestshape 8960
#clearweapons
#weapon 921 -- Machete
#armor 249 -- Cloth headpiece
#armor 202 -- Cloth armor
#armor 2 -- Shield
#end

#newmonster 8960 -- fs
#copystats 8959
#spr1 "FourthAge_Shambhala/LightSword1.tga"
#spr2 "FourthAge_Shambhala/LightSword2.tga"
#mor 11 -- +1
#mapmove 18
#falsearmy -1
#plainshape 8959
#end

-- Chhma Heavy Spearman
#newmonster 8961
#copystats 8951
#spr1 "FourthAge_Shambhala/HeavySpear1.tga"
#spr2 "FourthAge_Shambhala/HeavySpear2.tga"
#name "Shield bearer"
#descr "tmp"
#gcost 16 -- +2
#rpcost 18 -- +3
#hp 13
#mor 12
#att 11
#def 14
#stealthy 0
#forestshape 8962
#clearweapons
#weapon 1 -- Spear
#armor 118 -- Half Helmet
#armor 6 -- Ring Mail
#armor 4 -- Tower shield
#end

#newmonster 8962 -- fs
#copystats 8961
#spr1 "FourthAge_Shambhala/HeavySpear1.tga"
#spr2 "FourthAge_Shambhala/HeavySpear2.tga"
#mor 13 -- +1
#mapmove 18
#falsearmy -1
#plainshape 8961
#end

-- Chhma Bodyguards
#newmonster 8963
#copystats 8951
#spr1 "FourthAge_Shambhala/HeavySword1.tga"
#spr2 "FourthAge_Shambhala/HeavySword2.tga"
#name "Sword Maiden"
#descr "Sword Maidens are the personal bodyguards of nobility, both on campaign and at home. So as not to confuse matters of succession, all are female. They wield machete, slashing blades as efficient at cutting through jungle as they are cutting through armor."
#gcost 18 -- +4
#rpcost 22 -- +7
#hp 14
#bodyguard 2
#mor 13
#att 11
#def 14
#forestshape 8964
#clearweapons
#weapon 921 -- Machete
#armor 118 -- Half Helmet
#armor 9 -- Plate Cuirass
#armor 208 -- Iron Shield
#female
#end

#newmonster 8964 -- fs
#copystats 8963
#spr1 "FourthAge_Shambhala/HeavySword1.tga"
#spr2 "FourthAge_Shambhala/HeavySword2.tga"
#mor 13 -- +1
#mapmove 18
#falsearmy -1
#plainshape 8963
#end

-- Chhma Hunter
#newmonster 8965
#copystats 8951
#spr1 "FourthAge_Shambhala/Hunter1.tga"
#spr2 "FourthAge_Shambhala/Hunter2.tga"
#name "Elite Hunter"
#descr "tmp. They wield karambit, concealable daggers that resemble tiger claws."
#gcost 16 -- +2
#rpcost 20 -- +5
#hp 13
#str 12
#att 11
#def 14
#prec 13
#mor 11
#forestshape 8966
#stealthy 20
#skirmisher 2
#clearweapons
#weapon 924 -- Karambit
#weapon 924 -- Karambit
#weapon 932 -- Blow Pipe
#armor 249 -- Cloth headpiece
#armor 202 -- Cloth armor
#end

#newmonster 8966 -- fs
#copystats 8965
#spr1 "FourthAge_Shambhala/Hunter1.tga"
#spr2 "FourthAge_Shambhala/Hunter2.tga"
#mor 12 -- +1
#mapmove 18
#falsearmy -1
#plainshape 8965
#end

-- Chhma Coastal
#newmonster 8967
#copystats 8951
#spr1 "FourthAge_Shambhala/Shark1.tga"
#spr2 "FourthAge_Shambhala/Shark2.tga"
#name "Chhma Spearfisher"
#descr "tmp"
#gcost 16 -- +2
#rpcost 20 -- +5
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
#watershape 8996
#clearweapons
#weapon 3 -- Trident
#weapon 452 -- Harpoon
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#end

#newmonster 8968 -- fs
#copystats 8967
#spr1 "FourthAge_Shambhala/Shark1.tga"
#spr2 "FourthAge_Shambhala/Shark2.tga"
#mor 12 -- +1
#mapmove 18
#falsearmy -1
#plainshape 8967
#end

-- Crossbow Elephant
#newmonster 8969
#spr1 "FourthAge_Shambhala/crossbowelephant_a.tga"
#spr2 "FourthAge_Shambhala/crossbowelephant_b.tga"
#name "Domrey"
#descr "Powerful artillery inspired by the siege weapons of T'ien Ch'i. Double crossbows are mounted on the largest and strongest beasts in the Jungles of Shambhala. The elephants of the subcontinent are smaller in size than those of other lands, but no less intelligent or trainable in the hands of Chhma handlers."
#drawsize -5
#gcost 80
#rcost 20
#rpcost 35
#hp 48
#str 17
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
#itemslots 290816 -- crown and 3 misc
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
#descr "The largest and strongest beasts in the Jungles of Shambhala are used extensively in warfare. The elephants of the subcontinent are smaller in size than those of other lands, but no less intelligent or trainable in the hands of Chhma handlers."
#drawsize -5
#gcost 80
#rcost 20
#rpcost 35
#hp 49
#str 17
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
#itemslots 290816 -- crown and 3 misc
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
#weapon 397 -- Kick
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
#weapon 397 -- Kick
#armor 158 -- Robes
#end

-- White One magic dude
#newmonster 8973
#copystats 8953
#name "Bhikkhu"
#descr "tmp"
#copyspr 1128
#gcost 20
#rpcost 34
#hp 12
#att 13
#def 13
#weapon 929 -- Staff of enc
#weapon 397 -- Kick
#armor 203 -- Reinforced Cloth
#end

-- Spearfisher UW shape
#newmonster 8996
#copystats 8951
#spr1 "FourthAge_Shambhala/Shark1.tga"
#spr2 "FourthAge_Shambhala/Shark2.tga"
#name "Chhma Spearfisher"
#descr "tmp. Chhma are surprisingly good swimmers, and the peculiar armor of the spearfishers allows them to move and fight effectively underwater."
#gcost 16
#rpcost 20
#hp 13
#str 12
#att 13 -- +2
#def 16 -- +2
#prec 13
#mor 11
#ap 24 -- +10
#swimming
#swampsurvival
#stealthy 0
#landshape 8967
#clearweapons
#weapon 3 -- Trident
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#end

-- River Drake
#newmonster 4580
#copyspr 2316
#drawsize -35
#name "River Drake"
#descr "River Drakes are lesser kin of the great dragons of the Eastern Sea. They are clever, benevolent creatures that dwell in the many rivers of the dense jungle, and are deeply attuned with water. When threatened they can breathe great torrents that can fell trees. In legend brave Chhma maidens have gained the trust of these noble beasts, and in times of fortune they do so with far greater frequency."
#gcost 0
#hp 35
#size 4
#prot 12
#mr 13
#mor 14
#str 17
#att 11
#def 13
#prec 12
#ap 16
#mapmove 20
#enc 3
#poisonres 15
#fireres 5
#shockres 5
#magicskill 2 2 -- W
#maxage 200
#lizard
#itemslots 290816 -- crown and 3 misc
#animal
#drake
#spiritsight
#amphibian
#forestsurvival
#cleanshape
#nametype 144
#weapon 933 -- Water Breath
#weapon 20 -- Bite
#weapon 29 -- Claw
#end

-- Maiden Guard
#newmonster 4581
#copystats 8963 -- Bodyguard
#copyspr 1450
#name "Maiden Guard"
#descr "The ranks of the Maiden Guard are made up of those former honor guard who've had the good fortune to earn the trust of a mighty River Drake. It is an insular order that commands great respect amongst the Chhma population. Riding a drake is said to protect against malign spells. For many centuries the order has dwindled in number and its resurgence is seen by many as a sign of the divinity of the awakening god. More seditious individuals, however, claim this as an omen of changing times; a call for the Chhma to return to the old ways and throw off the yoke of the solar cult."
#mounted
#swimming
#size 4
#hp 15
#att 12
#def 15
#mr 13
#mor 14
#ap 16
#mapmove 20
#secondshape 4580 -- River Drake
#mountedhumanoid
#itemslots 13446 -- No feet
#clearweapons
#weapon 922 -- Ph'kak
#weapon 934 -- Water Breath
#weapon 935 -- Bite
#weapon 936 -- Claw
#cleararmor
#armor 118 -- Half Helmet
#armor 9 -- Plate Cuirass
#end

--~~
--## Commanders

-- Scout
#newmonster 8974
#copystats 8965
#spr1 "FourthAge_Shambhala/Scout1.tga"
#spr2 "FourthAge_Shambhala/Scout2.tga"
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
#armor 118 -- Half Helmet
#armor 6 -- Ring Mail
#female
#noleader
#end

#newmonster 8975 -- fs
#copystats 8974
#spr1 "FourthAge_Shambhala/Scout1.tga"
#spr2 "FourthAge_Shambhala/Scout2.tga"
#mor 11 -- +1
#mapmove 18
#falsearmy -1
#plainshape 8974
#end

-- Stealthy Commander
#newmonster 8976
#copystats 8951
#spr1 "FourthAge_Shambhala/Chieftain1.tga"
#spr2 "FourthAge_Shambhala/Chieftain2.tga"
#name "Pack leader"
#descr "tmp"
#gcost 50
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
#weapon 25 -- Crossbow
#armor 118 -- Half Helmet
#armor 6 -- Ring Mail
#armor 2 -- Shield
#forestshape 8977
#okleader
#end

#newmonster 8977 -- fs
#copystats 8976
#spr1 "FourthAge_Shambhala/Chieftain1.tga"
#spr2 "FourthAge_Shambhala/Chieftain2.tga"
#mor 13 -- +1
#mapmove 18
#falsearmy -1
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
#watershape 8980
#clearweapons
#weapon 679 -- Short Trident
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#armor 2 -- Shield
#okleader
#end

#newmonster 8979 -- fs
#copystats 8978
#spr1 "FourthAge_Shambhala/spearfisherCom_a.tga"
#spr2 "FourthAge_Shambhala/spearfisherCom_b.tga"
#mor 13 -- +1
#mapmove 18
#falsearmy -1
#plainshape 8978
#end

#newmonster 8980 -- UW shape to reduce the effects of poor amph (+1 enc, -3 att and def, cs / 2)
#copystats 8951
#spr1 "FourthAge_Shambhala/spearfisherCom_a.tga"
#spr2 "FourthAge_Shambhala/spearfisherCom_b.tga"
#name "Fishing Chief"
#descr "tmp. Chhma are surprisingly good swimmers, and the peculair armor of the spearfishers allows them to move and fight effectively underwater."
#gcost 45
#hp 14
#att 14 -- +2
#def 17 -- +2
#prec 14
#mor 12
#ap 24 -- +10
#swimming
#swampsurvival
#stealthy 0
#landshape 8978
#clearweapons
#weapon 679 -- Short Trident
#armor 152 -- Sharkskin Cap
#armor 188 -- Sharkskin Cuirass
#armor 2 -- Shield
#okleader
#end

--Priest
#newmonster 8981
#copystats 8954 -- White One Com Base
#copyspr 1145 -- Yogi
#name "Itinerant Monk"
#descr "tmp"
#gcost 60
#hp 12
#mor 14
#mr 14
#weapon 7 -- Quarterstaff
#weapon 397 -- Kick
#armor 158 -- Robes
#magicskill 8 1 -- Holy
#end

-- Mage-Commander. Note: The random is different between the two shapes
#newmonster 8982
#copystats 8951
#spr1 "FourthAge_Shambhala/Noble1.tga"
#spr2 "FourthAge_Shambhala/Noble2.tga"
#name "Chhma Noble"
#descr "Nobles are expected to have experience in matters of warfare and magic as well as statecraft. With their Vanara masters mostly concerned with matters of the spirit they manage much of the administration of the empire and its armies. As the gates of Shambhala open in conquest many of the Chhma nobility have taken to studying the sun and higher self after their masters, though those in the jungles of their homeland often adopt more traditional practices."
#magicskill 0 1 -- Fire
#custommagic 10240 100 -- SN random
#gcost 90
#hp 14
#att 12
#def 15
#prec 13
#mor 14
#mr 14 -- +3
#older -5 -- Younger by 5 years
#forestshape 8983
#clearweapons
#weapon 922 -- Ph'kak
#armor 118 -- Half Helmet
#armor 9 -- Plate Cuirass
#goodleader
#command -20
#end

#newmonster 8983 -- fs
#copystats 8982
#spr1 "FourthAge_Shambhala/Noble1.tga"
#spr2 "FourthAge_Shambhala/Noble2.tga"
#clearmagic
#magicskill 0 1 -- Fire
#custommagic 1536 100 -- WE random
#mor 15 -- +1
#mapmove 18
#falsearmy -1
#plainshape 8982
#end

-- Anyfort FWE mage
#newmonster 8984
#copystats 8951
#spr1 "FourthAge_Shambhala/Sorcerer1.tga"
#spr2 "FourthAge_Shambhala/Sorcerer2.tga"
#name "Sorcerer"
#descr "tmp. Sorcerer, command the elements, rainmaking, shapeshifting, invisibility, healing powers extend their lifespan"
#magicskill 2 1 		-- W
#custommagic 1152 100	-- FE random
#custommagic 1152 100	-- FE random
#custommagic 512 50		-- 50% W
#gcost 10035
#mor 12
#mr 16 -- +5
#maxage 60
#stealthy 0
#older -5 -- Younger by 5 years
#forestshape 8985
#poorleader
#clearweapons
#weapon 7 -- Quarterstaff
#armor 158 -- Robes
#female
#end

#newmonster 8985 -- fs
#copystats 8984
#spr1 "FourthAge_Shambhala/Sorcerer1.tga"
#spr2 "FourthAge_Shambhala/Sorcerer2.tga"
#mor 13 -- +1
#mapmove 18
#falsearmy -1
#plainshape 8984
#end

-- Death and stuff sneaky mage
#newmonster 8986
#copystats 8951
#spr1 "FourthAge_Shambhala/Medium1.tga"
#spr2 "FourthAge_Shambhala/Medium2.tga"
#name "Medium"
#descr "tmp. Shaman and Spirit medium, magical power is granted through spirit possession rather than innate magical power. Their practice challenges the teachings of the Monks and their services are only barely tolerated."
#magicskill 5 1 		-- D
#custommagic 8832 80	-- FWN random
#gcost 10010
#rpcost 2
#mor 11
#mr 15 -- +4
#stealthy 10
#heretic 1
#older -5 -- Younger by 5 years
#forestshape 8987
#poorleader
#clearweapons
#weapon 29 -- Claw
#weapon 924 -- Karambit
#armor 158 -- Robes
#female
#okleader
#command -10
#end

#newmonster 8987 -- fs
#copystats 8986
#spr1 "FourthAge_Shambhala/Medium1.tga"
#spr2 "FourthAge_Shambhala/Medium2.tga"
#mor 12 -- +1
#mapmove 18
#falsearmy -1
#plainshape 8986
#end

-- Cap only ascended mage
#newmonster 8988
#copystats 8954 -- White One Com Base
#copyspr 1143 -- Guru
#name "Solar Monk"
#descr "A monk that has begun the process of attaining physical perfection, emits and aura of splendor."
#gcost 200
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
#sunawe 2
#ambidextrous 4
#airshield 60
#maxage 200
#mor 15
#mr 16
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 397 -- Kick
#armor 158 -- Robes
#end

-- Cap only even more ascended mage
#newmonster 8989
#copystats 8954 -- White One Com Base
#copyspr 1144 -- Rishi
#name "Bodhisattva"
#descr "Ascended monkey, travels by the Laws of Simultaneity, has 4 arms and vast magical power."
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
#sunawe 4
#ambidextrous 4
#airshield 60
#maxage 400
#itemslots 7326 -- 4 armed humanoid with 1 misc slot
#mor 16
#mr 18
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 397 -- Kick
#armor 158 -- Robes
#end

-- Cap only ascended mage immobile form
#newmonster 8990
#copystats 8954 -- White One Com Base
#copyspr 1143 -- Guru
#name "Sitting Monk"
#descr "Still in isolation. This monk continues to sit in contemplation, awaiting the right time to act."
#gcost 180
#addupkeep 25 -- To match awakened upkeep
#magicskill 4 2 -- Astral
#magicskill 8 2 -- Holy
#custommagic 10368 100 -- FSN random
#custommagic 10880 10 -- FWSN random
#hp 15
#att 12
#def 12
#prec 11
#enc 2
#immobile
#unteleportable
#mapmove 0
#sunawe 2
#ambidextrous 4
#airshield 60
#maxage 200
#mor 15
#mr 16
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 397 -- Kick
#armor 158 -- Robes
#end

-- Cap only even more ascended mage immobile form
#newmonster 8991
#copystats 8954 -- White One Com Base
#copyspr 1144 -- Rishi
#name "Sitting Bodhisattva"
#descr "Still in isolation. This being continues to sit in contemplation, awaiting the right time to act."
#gcost 325
#addupkeep 50 -- To match awakened upkeep
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
#immobile
#unteleportable
#mapmove 0
#sunawe 4
#ambidextrous 4
#airshield 60
#maxage 400
#itemslots 7326 -- 4 armed humanoid with 1 misc slot
#mor 16
#mr 18
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 928 -- Open Palm
#weapon 397 -- Kick
#armor 158 -- Robes
#end

-- Northern directional summon
#newmonster 8992
#copystats 1329 -- Yaksha
#spr1 "FourthAge_Shambhala/1329_1.tga"
#spr2 "FourthAge_Shambhala/1329_2.tga"
#clearmagic
#name "Emissary of the North"
#descr "An envoy summoned for a single month from the retinue of Vessarana, the heavenly King of the North direction and ruler of rain. This divine emissary brings some of its kings rain, and the thick mist of the northern mountains."
#gold 0
#mapmove 0
#ap 4
#mr 18
#mor 30
#weapon 10 -- Falchion
#weapon 24 -- Longbow
#onebattlespell 2458 -- mist and rain
#end

-- Southern directional summon
#newmonster 8993
#copystats 1746 -- Anusara
#spr1 "FourthAge_Shambhala/1746_1.tga"
#spr2 "FourthAge_Shambhala/1746_2.tga"
#clearmagic
#name "Emissary of the South"
#descr "An envoy summoned for a single month from the retinue of Virūlhaka, the heavenly King of the South direction and ruler of wind. This divine emissary calls blessed winds to aid the righteous."
#gold 0
#mapmove 0
#ap 4
#mr 18
#mor 30
#chaospower 0 -- to remove it from the chassis
#weapon 12 -- Mace
#weapon 24 -- Longbow
#onebattlespell 629 -- wind guide
#end

-- Eastern directional summon
#newmonster 8994
#copystats 1713 -- Devala
#spr1 "FourthAge_Shambhala/1713_1.tga"
#spr2 "FourthAge_Shambhala/1713_2.tga"
#clearmagic
#name "Emissary of the East"
#descr "An envoy summoned for a single month from the retinue of Dhatarattha, the heavenly King of the East direction who has dominion over music. This divine emissary plays heavenly melodies that rewrite the fates of the faithful."
#gold 0
#mapmove 0
#ap 4
#mr 18
#mor 30
#spreaddom 0 -- to remove domspreader
#weapon 397 -- Kick
#weapon 24 -- Longbow
#onebattlespell 2456 -- Mass Twist Fate
#end

-- Western directional summon
#newmonster 8995
#copystats 1319 -- naga warrior
#spr1 "FourthAge_Shambhala/1321_1.tga"
#spr2 "FourthAge_Shambhala/1321_2.tga"
#clearmagic
#cleararmor
#clearweapons
#name "Emissary of the West"
#descr "An envoy summoned for a single month from the retinue of Virūpakkha, the heavenly King of the West direction who sees all. This divine emissary brings the sight of the West, revealing the weaknesses of the enemy to all the forces of the world for a brief time."
#gold 0
#hp 25
#mapmove 0
#ap 4
#mr 18
#mor 30
#onebattlespell 2457 -- Mass Curse Luck
#weapon 141 -- Poison spit
#weapon 595 -- Hypnotise
#weapon 256 -- Kryss
#weapon 30 -- Venomous bite
#end

--~~
--## Combat Spells

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

-- Battle wide Twist Fate
#selectspell 2456
#clear
#copyspell 617 -- cheat fate
#name "Protection of the East"
#school -1
#fatiguecost 200
#aoe 666 -- 100% of battlefield
#spec 12582912 -- UW OK, Only affects allies
#end

--Battle wide curse luck
#selectspell 2457
#clear
#copyspell 617 -- cheat fate
#name "Sight of the West"
#school -1
#fatiguecost 200
#aoe 666 -- 100% of battlefield
#effect 503 -- Curse luck for 4 turns
#damage 255
#spec 17592194695168 -- UW OK, hard MR negates, Only enemies
#end

-- Mist and Rain
#selectspell 2458
#clear
#copyspell 518 -- Mist
#name "Mists of the North"
#nextspell 510 -- Rain
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

--~~
--## Ritual Spells

-- Open the gates
#selectspell 2459
#clear
#copyspell 106
#name "Open the Gates"
#school 4 -- Enchantment
#researchlevel 0
#restricted 230
#onlyatsite "Closed Gates of Shambhala"
#descr "Open the gates of Shambhala, to bring enlightenment to the darkened corners of the world. Gradually sitting monks will end their isolation and join the war directly, and even those in the more distant enclaves shall be roused enough to fight." 
#details "Spending additional gems does nothing. Shifts national luck boost to misfortune. 4d3 white ones with magical weapons will join the cause."
#path 0 4 -- Astral 
#pathlevel 0 3
#effect 10082
#fatiguecost 1500 -- 15 gems
#damage 650 -- enchantment code 650
#end

-- Close the gates
#selectspell 2460
#clear
#copyspell 106
#name "Close the Gates"
#school 4 -- Enchantment
#researchlevel 0
#restricted 230
#onlyatsite "Open Gates of Shambhala"
#descr "Close the gates of Shambhala, to correct the karmic balance and better pursue enlightenment. Newly recruited monks shall focus on study and contemplation." 
#details "Spending additional gems does nothing. Shifts national misfortune boost to luck."
#path 0 4 -- Astral 
#pathlevel 0 3
#effect 10082
#fatiguecost 1500 -- 15 gems
#damage 651 -- enchantment code 651
#end

-- Gate spell 1
#selectspell 2461
#clear
#name "Send Emissary of the North"
#descr "Tmp description: The caster summons a divine Emissary of the Heavenly King of the North direction to a target province, where it will fight alongside your forces for a month before returning to the celestial sphere. Causes rain and mist to occur in battles."
#school 4 -- Enchantment
#researchlevel 4
#path 0 4 -- Astral
#pathlevel 0 3
#restricted 230
#onlyatsite "Open Gates of Shambhala"
#nogeodst 2060 -- no UW
#fatiguecost 600
#effect 10037 -- Farsummon
#provrange 8
#farsumcom 8992 -- Northern Emissary
#nreff 0
#damage 8992
#end

-- Gate spell 2
#selectspell 2462
#clear
#name "Send Emissary of the South"
#descr "Tmp description: The caster summons a divine Emissary of the Heavenly King of the South direction to a target province, where it will fight alongside your forces for a month before returning to the celestial sphere. Causes the wind to aid in the accuracy of missiles and spells in battles."
#school 4 -- Enchantment
#researchlevel 4
#path 0 4 -- Astral
#pathlevel 0 3
#restricted 230
#onlyatsite "Open Gates of Shambhala"
#nogeodst 2060 -- no UW
#fatiguecost 600
#effect 10037 -- Farsummon
#provrange 8
#farsumcom 8993 -- Southern Emissary
#nreff 0
#damage 8993
#end

-- Gate spell 3
#selectspell 2463
#clear
#name "Send Emissary of the East"
#descr "Tmp description: The caster summons a divine Emissary of the Heavenly King of the East direction to a target province, where it will fight alongside your forces for a month before returning to the celestial sphere. Plays divine music that alters the fates of allies in battle."
#school 4 -- Enchantment
#researchlevel 6
#path 0 4 -- Astral
#pathlevel 0 3
#restricted 230
#onlyatsite "Open Gates of Shambhala"
#nogeodst 2060 -- no UW
#fatiguecost 1200
#effect 10037 -- Farsummon
#provrange 8
#farsumcom 8994 -- Eastern Emissary
#nreff 0
#damage 8994
#end

-- Gate spell 4
#selectspell 2464
#clear
#name "Send Emissary of the West"
#descr "Tmp description: The caster summons a divine Emissary of the Heavenly King of the West direction to a target province, where it will fight alongside your forces for a month before returning to the celestial sphere. Causes those it fights against to be temporarily vulnerable at the start of combat."
#school 4 -- Enchantment
#researchlevel 6
#path 0 4 -- Astral
#pathlevel 0 3
#restricted 230
#onlyatsite "Open Gates of Shambhala"
#nogeodst 2060 -- no UW
#fatiguecost 1200
#effect 10037 -- Farsummon
#provrange 8
#farsumcom 8995 -- Western Emissary
#nreff 0
#damage 8995
#end

-- Drake summon
#selectspell 2465
#clear
#copyspell 758 -- Summon Ice Drake
#name "Summon River Drake"
#descr "The caster summmons a River Drake and binds it to his service. The River Drake is a huge amphibious beast with scales like a fish, capable of breathing gouts of water."
#damage 4580
#fatiguecost 500
#restricted 230
#end

--~~
--## Sites

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

--~~
--## Nation

#selectnation 230
#era 3
#name "Shambhala"
#epithet "Karmic Justice"
#descr "In the ancient kingdom of Bandar Log, a wise Bandaraja chose to expel a sect of sun worshiping monks from his lands. He soon realised these were the best of his people and bid them return, but few did. The rest journeyed far to the east, to find a land shrouded in dense jungle, and within it a great temple complex tended by a curious race of feline halfmen called the Chhma. Installing themselves in these temples they erected great walls around the site, and began a many centuries long isolation from the world.

Now, however, the world has declined into war and greed as was prophesied. The white ones of Shambhala end their isolation and rally the Chhma behind them. A powerful force stirs in the temple city. Soon the gates will swing open and from them will come an army to vanquish the dark forces and usher in a golden age of peace and enlightenment."
#summary "Race: Agile halfmen, sacred Vanara monks. 
Military: Light stealthy infantry, some armored infantry, elephants. Sacred monks. Chhma hide themselves or others in forests.
Magic: High Astral. Fire, Water, Earth and Nature. Limited Death.
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
#addrecunit 8961	-- Chhma heavy spear
#addrecunit 8963	-- Chhma sword maiden
#forestrec 8965		-- Hunter
#coastunit1 8967	-- Spearfisher
#addrecunit 8969	-- Elephant crossbow
#addrecunit 8970	-- Elephant trample

#addreccom 8974 	-- Scout
#forestcom 8974
#addreccom 8976		-- Stealthy Com
#forestcom 8976
#coastcom1 8978		-- Coast Com
#addreccom 8981		-- Priest
#addreccom 8982		-- Noble
#addreccom 8984		-- Mage1
#addreccom 8986		-- Mage2

#defcom1 8976 		-- Chhma pack leader
#defunit1 8955 		-- Chhma militia
#defunit1b 8959 	-- Chhma light infantry
#defcom2 8982		-- Chhma noble
#defunit2 8963		-- Chhma heavy spearmen
#defmult1 12
#defmult1b 12
#defmult2 16

#wallcom 8976		-- Chhma pack leader
#wallunit 8955		-- Chhma militia
#wallmult 10
#wallunit 8963		-- Chhma H spear
#wallmult 2

-- TODO Add Pretender options
-- TODO Add Heros

-- add magic sites that grant gem income and units as capital only benefits
#startsite "City of Temples" -- 1 fire, 1 nature, 2 astral
#startsite "Closed Gates of Shambhala" -- Special mechanic site
#futuresite "Open Gates of Shambhala" -- Other version of special mechanic site
#futuresite "Shambhala forest mages"
#end

#selectnation 83 -- LA Man
#addrecunit 4582
#addrecunit 8955
#end

--~~
--## Events

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
Sensing the changing times, some reclusive and powerful monks have ended their contemplation to join you. [Closed Gates of Shambhala]"
#nation -2 -- Event is owned by the province owner
#addsite 1679 -- Open Gates 
#removesite 1678 -- Closed Gates
#incscale3 4 -- misfortune increased by 3
#4d3units 8973 -- Magic white one
#req_pop0ok
#end

-- Closing the gates
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
#addsite 1678 -- Closed Gates
#removesite 1680 -- Gates Ruins
#req_pop0ok
#end

-- Transform a sitting monk into an awakened one
#newevent
#rarity 5
#req_owncapital 1
#req_fullowner 230
#req_fornation 230
#nation 230
#req_nositenbr 1678 -- Gates are not closed (so they're open)
#req_monster 8990 -- Sitting Monk
#transform 8988 -- Solar Monk
#notext
#nolog
#end

-- Transform a sitting monk into an awakened one 2
#newevent
#rarity 5
#req_owncapital 1
#req_fullowner 230
#req_fornation 230
#nation 230
#req_nositenbr 1678 -- Gates are not closed (so they're open)
#req_monster 8990 -- Sitting Monk
#transform 8988 -- Solar Monk
#notext
#nolog
#end

-- Transform a sitting Bodhisattva to an awakened one
#newevent
#rarity 5
#req_owncapital 1
#req_fullowner 230
#req_fornation 230
#nation 230
#req_nositenbr 1678 -- Gates are not closed (so they're open)
#req_monster 8991 -- Sitting Bodhisattva
#transform 8989 -- Bodhisattva
#notext
#nolog
#end

-- 8 events to really kill off the Emissaries of the four directions
#newevent
#rarity 5
#req_monster 8992 -- Northern Emissary
#killcom 8992
#killcom 8993
#killcom 8994
#killcom 8995
#notext
#nolog
#end

#newevent
#rarity 5
#req_monster 8992 -- Northern Emissary
#killcom 8992
#killcom 8993
#killcom 8994
#killcom 8995
#notext
#nolog
#end

#newevent
#rarity 5
#req_monster 8993 -- Southern Emissary
#killcom 8992
#killcom 8993
#killcom 8994
#killcom 8995
#notext
#nolog
#end

#newevent
#rarity 5
#req_monster 8993 -- Southern Emissary
#killcom 8992
#killcom 8993
#killcom 8994
#killcom 8995
#notext
#nolog
#end

#newevent
#rarity 5
#req_monster 8994 -- Eastern Emissary
#killcom 8992
#killcom 8993
#killcom 8994
#killcom 8995
#notext
#nolog
#end

#newevent
#rarity 5
#req_monster 8994 -- Eastern Emissary
#killcom 8992
#killcom 8993
#killcom 8994
#killcom 8995
#notext
#nolog
#end

#newevent
#rarity 5
#req_monster 8995 -- Western Emissary
#killcom 8992
#killcom 8993
#killcom 8994
#killcom 8995
#notext
#nolog
#end

#newevent
#rarity 5
#req_monster 8995 -- Western Emissary
#killcom 8992
#killcom 8993
#killcom 8994
#killcom 8995
#notext
#nolog
#end

--~~