RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP联盟种族解锁
#groupweight 5
-- #subgroup Mechagnome
#name 1) Mechagnome Questline
#displayname Mechagnome

<< Alliance !Mechagnome

step
    #completewith next
    .zone 84 >>前往|cFFfa9602前往暴风|r
step
    .accept 49929 >>接任务: |cRXP_WARN_呼唤同盟|r
step
    .goto 84,52.05,13.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r |cFFfa9602inside the Stormwind Embassy.|r
    .turnin 49929 >>交任务: |cRXP_FRIENDLY_呼唤同盟|r
    .accept 50239 >>接任务: |cRXP_WARN_选择盟友|r
    .target Aysa Cloudsinger
step
    .goto 84,52.22,13.20
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Elf Banner.|r
    .complete 50239,2 --1/1 Learn about the Void Elves
step
    .goto 84,52.34,13.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Kul Tiran Banner.|r
    .complete 50239,4 --1/1 Learn about the Kul Tirans
step
    .goto 84,51.73,13.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mechagnome Banner.|r
    .complete 50239,5 --1/1 Learn about the Mechagnomes
step
    .goto 84,51.78,13.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick onthe |cRXP_PICK_Dark Iron Dwarf Banner.|r
    .complete 50239,3 --1/1 Learn about the Dark Iron Dwarves
step
    .goto 84,51.86,13.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lightforged Draenei Banner.|r
    .complete 50239,1 --1/1 Learn about the Lightforged Draenei
step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 50239 >>Turn in A Choice of Allies
    .accept 58214 >>接任务: |cRXP_WARN_紧急支援|r
    .target Aysa Cloudsinger
step
    .goto 84,52.82,14.57,5,0
    .goto 84,49.35,86.91,5 >>旅行|cFFfa9602到法师塔|r
step
    .goto 84,48.83,86.9,5,0 
    .goto 84,49.15,87.77,5, >>登上螺旋楼梯
step
    .goto 84,48.83,86.9,5,0 
    .goto 84,49.15,87.77,5, >>登上螺旋楼梯
step
    .goto 84,48.75,88.07,3 >>浏览|cFFfa9602门户网站|r
step
    .goto 84,46.77,89.79,5,0
    .goto 84,48.74,95.18
    .zone 1161 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Boralus Portal.|r
step
    .goto 1161,70.32,18.08,5,0
    .goto 1161,73.15,16.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔希·钢烁|r
    .turnin 58214 >>Turn in Urgent Care
    .accept 57486 >>接任务: |cRXP_WARN_衰弱的能量|r
    .target Kelsey Steelspark
step
    .goto 1161,36.91,62.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔希·钢烁|r
    .turnin 57486 >>Turn in Waning Energy
    .accept 57487 >>接任务: |cRXP_WARN_寻求帮助|r
    .target Kelsey Steelspark
step
    .goto 1161,49.50,40.16
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Homing Copter.|r
    .complete 57487,1 --1/1 Homing Copter acquired
    .target Homing Copter
step
    .goto 1161,36.73,62.63
    .cast 316417 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mekkatorgue's Escape Pod.|r
    .target Mekkatorgue's Escape Pod
step
    .goto 1161,36.85,63.48
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57487,2 --1/1 Escape Pod sent to Mechagon
    .target Homing Copter
step
    .goto 1161,36.85,63.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Homing Copter.|r
    .complete 57487,3 --1/1 Ride the Homing Copter to Mechagon
    .timer 128, Duration until continuation.
step
    .goto 1462,74.12,37.02
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57487,4 --1/1 Prince Erazmin met
step
    .goto 1462,74.12,37.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Erazmin|r
    .turnin 57487 >>Turn in Someone Who Can Help
    .target Prince Erazmin
step
    .goto 1462,72.64,43.16,10,0
    .goto 1462,70.57,46.87,10,0
    .goto 1462,67.97,44.26,10,0
    .goto 1462,66.34,46.73,10,0
    .goto 1462,74.89,51.51
    >>杀死|cRXP_ENEMY_Malfunctioning Scrapbot|r和|cRXD_ENEMY_ Malfunctioning Scraphound|r，并掠夺它们的|cRXP_loot_获取机器零件|r
    .complete 57488,2 --6/6 Acquisitioned Machine Part
    .mob Malfunctioning Scrapbot
    .mob Malfunctioning Scraphound
step
    .goto 1462,73.61,58.36,10,0
    .goto 1462,73.36,61.51,10,0
    .goto 1462,69.93,58.88
    >>杀死|cRXP_ENEMY_Congeated Oil|r|cRXP_WARN_I如果必要，你也可以杀死|cRXP_ENEMY_Slime Elemental|r|r并掠夺他们的|cRXD_OOT_Acquisition Machine Part|r
    .mob Slime Elemental
    .mob Congealed Oil
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waren Gearhart|r and |cRXP_FRIENDLY_Prince Erazmin.|r
    .turnin 57488 >>交任务: |cRXP_FRIENDLY_当前结构图|r
    .goto 1462,73.13,33.33
    .accept 57490 >>接任务: |cRXP_WARN_安全航行|r
    .goto 1462,73.03,33.42
    .target Waren Gearhart
    .target Prince Erazmin
step
    .goto 1462,63.03,37.91
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57490,1 --1/1 Piston and crew activated
step
    .goto 1462,86.92,73.79
    >>杀死|cRXP_ENEMY_Rust-Yee the Clever|r
    .complete 57490,2 --1/1 Rust-Eye the Clever slain
    .mob Rust-Eye the Clever
step
    .goto 1462,86.92,73.79
    >>抢劫他以获取|cRXP_Loot_Pod|r
    .complete 57490,3 --1/1 Pod retrieved
step
    .goto 1462,73.12,33.33
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57490,4 --1/1 Pod delivered
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Erazmin|r and |cRXP_FRIENDLY_Christy Punchcog.|r
    .turnin 57490 >>Turn in Voyage to Safety
    .goto 1462,73.22,33.14
    .accept 57491 >>接任务: |cRXP_WARN_更好……更强……更安全|r
    .goto 1462,73.21,33.46
    .target Prince Erazmin
    .target Christy Punchcog
step
    .goto 1462,54.49,26.94
    >>杀死|cRXP_ENEMY_Insurgent Cycloid|r并掠夺他获得|cRXX_loot_ONI电磁放大器|r
    .complete 57491,2 --1/1 Omni Electromagnetic Amplifier
    .mob Insurgent Cycloid
step
    .goto 1462,37.46,46.05,10,0
    .goto 1462,36.79,58.83
    >>杀死|cRXP_ENEMY_HK-3空中劝阻部队|r并掠夺他获得|cRXX_loot_神经加速器|r
    .complete 57491,1 --1/1 Neural Accelerator
    .mob HK-3 Aerial Dissuasion Unit
step
    .goto 1462,52.79,51.86
    >>杀死|cRXP_ENEMY_Insurgent Crawler|，|cRXX_ENEMY_Upgraded Sentry|r并掠夺它们以获得|cRXD_loot_Flux Energized Servos|r
    .complete 57491,3 --1/1 Flux Energized Servos
    .mob Upgraded Sentry
    .mob Insurgent Crawler#
step
    .goto 1462,73.53,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christy Punchcog.|r
    .turnin 57491 >>Turn in Better... Stronger... Less Dead
    .target Christy Punchcog
step
    .goto 1462,73.02,33.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christy Punchcog.|r
    .accept 57492 >>接任务: |cRXP_WARN_他？|r
    .target Prince Erazmin
step
    .goto 1462,70.56,31.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elya Codepunch.|r
    .skipgossip
    .complete 57492,1 --1/1 Speak with Elya Codepunch
    .target Elya Codepunch
step
    .goto 1462,69.92,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stuard Sharpsprocket.|r
    .skipgossip
    .complete 57492,6 --1/1 Speak with Stuard Sharpsprocket
    .target Stuard Sharpsprocket
step
    .goto 1462,71.28,34.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elya Idee Quickcoil.|r
    .skipgossip
    .complete 57492,2 --1/1 Speak with Idee Quickcoil
    .target Idee Quickcoil
step
    .goto 1462,72.09,38.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quimby Sparklighter.|r
    .skipgossip
    .complete 57492,4 --1/1 Speak with Quimby Sparklighter
    .target Quimby Sparklighter
step
    .goto 1462,75.45,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flouresce Brightgear.|r
    .skipgossip
    .complete 57492,5 --1/1 Speak with Flouresce Brightgear
    .target Flouresce Brightgear
step
    .goto 1462,74.31,34.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pegi Cogsterh.|r
    .skipgossip
    .complete 57492,3 --1/1 Speak with Pegi Cogster
    .target Pegi Cogster
step
    .goto 1462,73.02,33.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Erazmin.|r
    .turnin 57492 >>Turn in Him?
    .target Prince Erazmin
step
    .goto 1462,73.51,31.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christy Punchcog.|r
    .accept 57493 >>接任务: |cRXP_WARN_精神协调|r
    .target Christy Punchcog
step
    .goto 1462,73.62,32.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Synchroscope.|r
    .complete 57493,1 --1/1 Initiate synchronization
    .timer 20,Duration until continuation.
step
    .goto 1462,73.57,32.1
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57493,2 --1/1 Synchronization complete
step
    .goto 1462,73.57,32.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Escape Pod.|r
    .complete 57493,3 --1/1 Open the escape pod
step
    .goto 1462,73.51,31.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christy Punchcog.|r
    .turnin 57493 >>Turn in Mental Attunement
    .accept 57494 >>接任务: |cRXP_WARN_勇敢的心|r
    .target Christy Punchcog
step
    .goto 1462,58.8,56.7
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57494,1 --1/1 Find Kelsey
step
    .goto 1462,59.38,55.99
    >>杀死|cRXP_ENEMY_Insurgent线圈持有者|r
    .complete 57494,2 --1/1 Insurgent Coilbearer slain
    .mob Insurgent Coilbearer
    .mob Insurgent Machinist
step
    .goto 1462,73.60,32.13
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57494,3 --1/1 Unit retrieved
step
    .goto 1462,73.60,32.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Spark Reactor.|r
    .complete 57494,4 --1/1 Spark Reactor delivered
    .timer 10, Duration until continuation.
step
    .goto 1462,73.71,31.85
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57494,5 --1/1 Circuit calibrated
step
    .goto 1462,73.71,31.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Generator.|r
    .complete 57494,6 --1/1 Generator activated
step
    .goto 1462,73.56,32.08
    .cast 311518 >>|cRXP_WARN_使用|r|T136099:0|t[ExtraActionButton]在|cRXP_FRIENDLY_Gelbin Mekkator|r|cRXP-WARN_to附近对其进行除颤。|r
    .target Gelbin Mekkatorque
    .timer 5, Duration until continuation.
step
    .goto 1462,73.02,33.43
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57494,7 --1/1 Defibrillate
    .timer 5, Duration until continuation.
step
    .goto 1462,73.04,33.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Erazmin.|r
    .turnin 57494 >>Turn in A Strong Heart
    .target Prince Erazmin
step
    .goto 1462,73.07,33.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelbin Mekkatorque.|r
    .accept 57496 >>接任务: |cRXP_WARN_晋升|r
    .target Gelbin Mekkatorque
step
    .goto 1462,72.34,31.15
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57496,1 --1/1 Take teleporter to Mechagon City
step
    .goto 1573,56.24,70.68,10,0
    .goto 1573,65.93,47.95
    .complete 57496,2 --1/1 Blastatron X-81 slain
    .mob Mechagon Trooper
    .mob Defense Bot Mk I
    .mob Blastatron X-81
step
    .goto 1573,58.02,41.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelbin Mekkatorque.|r
    .turnin 57496 >>Turn in Ascension
    .accept 57495 >>接任务: |cRXP_WARN_麦卡贡的未来|r
    .target Gelbin Mekkatorque
step
    .goto 1573,31.37,85.80
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57495,1 --1/1 Teleport to the High Tinkertory
step
    .goto 1573,36.15,70.98,5,0
    .goto 1573,35.63,55.12,5,0
    .goto 1573,27.8,57.3,5 >>进入|cFFfa9602国王的房间|r
step
    .goto 1573,18.66,67.47
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57495,2 --1/1 Speech witnessed
step
    .goto 1573,18.65,67.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelbin Mekkatorque.|r
    .turnin 57495 >>Turn in The Future of Mechagon
    .target Gelbin Mekkatorque
step
    .goto 1573,18.66,66.14,5,0
    .goto 1573,17.82,65.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔希·钢烁|r
    .target Kelsey Steelspark
step
    .goto 1573,20.41,59.95
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 57497,1 --1/1 前往: |cRXP_PICK_暴风城|r
step
    .goto 84,52.05,13.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger.|r
    .turnin 57497 >>交任务: |cRXP_FRIENDLY_传播消息|r
    .target Aysa Cloudsinger
]])

