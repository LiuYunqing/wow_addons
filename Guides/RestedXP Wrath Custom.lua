RXPGuides.RegisterGuide([[
#version 25
#wotlk
#group RestedXP 法师 AoE 68-80
<< Mage
#name 68-80 法师 AoE

step << Horde
#completewith HFZep1
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step << Horde
.goto Undercity,85.1,10.0
.train 27101 >>训练你的职业技能
.xp <68,1
step << Horde
#completewith next
.goto Undercity,82.36,15.31
.goto Undercity,67.88,14.97,30 >>转到右侧的试剂供应商，执行“注销跳过”，将角色定位在最低楼梯的最高部分，直到看起来像漂浮在空中，然后注销并重新登录。
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >>单击此处查看示例
>>如果你做不到这一点，就正常离开幽暗城
step << Horde
#label HFZep1
.goto Undercity,66.23,4.43,30,0
.goto Tirisfal Glades,59.97,58.56,30,0
.goto Tirisfal Glades,58.98,59.07
.zone HowlingFjord >>乘坐齐柏林飞船从蒂里斯法尔格拉迪斯到呼啸的峡湾
step << Horde
.goto HowlingFjord,79.05,29.70
.fp Vengeance Landing >>获取复仇着陆飞行路径
step << Horde
#label VLHS
#completewith Seals
.goto HowlingFjord,79.10,30.41,20,0
.goto BoreanTundra,79.73,30.85
.home >>将您的炉石设置为复仇登陆
step << Alliance
#completewith Boat1
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << Alliance
.goto Ironforge,28.6,7.2
.train 27101 >>训练你的职业技能
.xp <68,1
step << Alliance
#completewith next
.goto Ironforge,55.51,47.75
.fly Wetlands>>飞到湿地
.zoneskip Wetlands
.zoneskip HowlingFjord
step << Alliance
#label Boat1
.goto Wetlands,4.7,57.3
.zone HowlingFjord >>前往: |cRXP_PICK_秘蓝岛|r. Take it to Howling Fjord.
>>注：这艘船以前是奥伯丁号，但在《愤怒》中改为咆哮峡湾号。
step << Alliance
#label VKHS
#completewith Seals
.goto HowlingFjord,58.6,63.1,15,0
.goto HowlingFjord,58.39,62.45
.home >>将您的炉石设置为Valgarde
>>如果你愿意，可以买一些新的食物/水
step << Alliance
.goto HowlingFjord,59.79,63.24
.fp Valgarde >>获取Valgard飞行路线
step
#requires VLHS << Horde
#requires VKHS << Alliance
.loop 60,HowlingFjord,77.97,71.27,79.14,70.12,80.10,70.93,79.20,71.53,78.32,72.94,79.82,72.86,79.46,74.32,77.95,75.45,77.79,74.25,77.44,72.61,77.20,76.31,75.88,76.91,74.34,76.55,77.97,71.27
.xp 69 >>AoE升级密封件至69
step
#completewith next
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r << Horde
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r << Alliance
.xp <69,1
step
.goto Undercity,85.1,10.0 << Horde
.goto Stormwind City,49.2,87.7 << Alliance
.train 27124 >>训练你的职业技能
.xp <69,1
step
#completewith next
.hs >>从赫斯到瓦尔加德 << Alliance
.hs >>火炉到复仇登陆 << Horde
step
.loop 60,HowlingFjord,77.97,71.27,79.14,70.12,80.10,70.93,79.20,71.53,78.32,72.94,79.82,72.86,79.46,74.32,77.95,75.45,77.79,74.25,77.44,72.61,77.20,76.31,75.88,76.91,74.34,76.55,77.97,71.27
.xp 70 >>AoE升级密封件至70
step
#completewith next
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r << Horde
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r << Alliance
.xp <70,1
step
.goto Undercity,85.1,10.0 << Horde
.goto Stormwind City,49.2,87.7 << Alliance
.train 27126 >>训练你的职业技能
.xp <70,1
step
#completewith next
.hs >>火炉到复仇登陆 << Horde
.hs >>从赫斯到瓦尔加德 << Alliance
step
#label Seals
.loop 60,HowlingFjord,77.97,71.27,79.14,70.12,80.10,70.93,79.20,71.53,78.32,72.94,79.82,72.86,79.46,74.32,77.95,75.45,77.79,74.25,77.44,72.61,77.20,76.31,75.88,76.91,74.34,76.55,77.97,71.27
.xp 72 >>AoE升级密封件至72
step
#completewith next
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r << Horde
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r << Alliance
.xp <72,1
step
.goto Undercity,85.1,10.0 << Horde
.goto Stormwind City,49.2,87.7 << Alliance
.train 42930 >>训练你的职业技能
.xp <72,1
step
#completewith next
.hs >>火炉到复仇登陆 << Horde
.hs >>从赫斯到瓦尔加德 << Alliance
step << Horde
.goto HowlingFjord,49.6,11.6
.fp Camp Winterhoof >>获取夏令营飞行路线
step << Horde
.goto HowlingFjord,26.0,25.1
.fp Apothecary Camp >>获取药剂师营地飞行路线
step << Horde
.goto GrizzlyHills,22.0,64.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kragh
.fp Conquest Hold >>获取征服保持飞行路径
step << Alliance
.goto HowlingFjord,31.26,43.98
.fp Westguard Keep >>叫西卫队，保持飞行路线
step
#completewith next
.goto Dragonblight,92.39,64.02
.zone Dragonblight >>前往: |cRXP_PICK_龙骨荒野|r
step << Horde
.goto Dragonblight,76.48,62.20
.fp Venomspite >>获取Venomwhile飞行路径
step << Horde
#completewith Onslaught
.goto Dragonblight,76.87,63.13
.home >>将你的心设为毒液怨恨
step << Alliance
.goto Dragonblight,78.47,48.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High Commander Halford Wyrmbane
.accept 12235 >>接任务: |cRXP_LOOT_纳克萨玛斯与暮冬城的陷落|r
.target High Commander Halford Wyrmbane
step << Alliance
.goto Dragonblight,77.08,49.86
.fp Wintergarde Keep >>获取Wintergarde Keep飞行路线
step << Alliance
.goto Dragonblight,77.18,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Urik
.turnin 12235 >>交任务: |cRXP_FRIENDLY_纳克萨玛斯与暮冬城的陷落|r
.accept 12237 >>接任务: |cRXP_LOOT_拯救暮冬城平民|r
.target Gryphon Commander Urik
step << Alliance
#requires WinterHS1
#completewith next
.cast 48388 >>使用鹰头狮哨声来骑上一只温特加德鹰头狮。你可以用它在温特加德和腐肉场飞行
.use 37287
step << Alliance
.waypoint Dragonblight,86.38,50.91,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
>>使用“救援村民”(1)来接无助村民(您一次只能接一个)。使用“下车村民”(2)将他们交给文件管理员。冷却时使用“飞翔”(3)加快移动速度。
.complete 12237,1 
.goto Dragonblight,77.13,49.78
.use 37287
step << Alliance
.goto Dragonblight,77.16,50.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t拆除鹰头狮，与乌里克交谈
.turnin 12237 >>交任务: |cRXP_FRIENDLY_拯救暮冬城平民|r
.accept 12251 >>接任务: |cRXP_LOOT_向高级指挥官复命|r
step << Alliance
#completewith Onslaught
.goto Dragonblight,77.46,51.43
.home >>将您的炉石设置为Wintergarde Keep
step << Alliance
.goto Dragonblight,78.47,48.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Halford
.turnin 12251 >>交任务: |cRXP_FRIENDLY_向高级指挥官复命|r
step
#label Onslaught
.loop 50,Dragonblight,87.90,41.21,87.00,42.19,86.45,40.12,85.51,41.24,83.78,41.98,84.14,40.72,84.49,37.06,87.64,35.43,87.90,41.21
.xp 74 >>AoE将猩红爆发暴民升级到74
step
.goto Undercity,85.1,10.0 << Horde
.goto Stormwind City,49.2,87.7 << Alliance
.train 42939 >>训练你的职业技能
.xp <74,1
step
#completewith next
.hs >>从心脏到毒液 << Horde
.hs >>温特加尔德要塞的壁炉 << Alliance
step
.loop 50,Dragonblight,87.90,41.21,87.00,42.19,86.45,40.12,85.51,41.24,83.78,41.98,84.14,40.72,84.49,37.06,87.64,35.43,87.90,41.21
.xp 76 >>AoE将猩红磨成76
step
#completewith next
.hs >>从心脏到毒液 << Horde
.hs >>温特加尔德要塞的壁炉 << Alliance
step
.goto Dragonblight,60.32,51.55
>>前往Wyrmrest Temple
.fp Wyrmrest Temple >>获得Wyrmrest Temple飞行路线
step << Horde
.goto Dragonblight,37.51,45.77
>>前往阿格玛锤子
.fp Agmar's Hammer >>获取Agmar的Hammer飞行路线
step << Horde
.goto Dragonblight,38.05,46.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aethas
.accept 12791 >>接任务: |cRXP_LOOT_魔法王国达拉然|r
.zoneskip SholazarBasin
.zoneskip Dalaran
step << Horde
.goto Dragonblight,38.05,46.22
.zone Dalaran >>前往: |cRXP_PICK_达拉然|r
.zoneskip SholazarBasin
.skipgossip
step << Alliance
.goto Dragonblight,29.15,55.32
>>向东进入龙骨荒野
.fp Stars' Rest >>获取星星的休息飞行路径
step << Alliance
.goto Dragonblight,29.0,55.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Modera
.accept 12794 >>接任务: |cRXP_LOOT_魔法王国达拉然|r
.zoneskip SholazarBasin
.zoneskip Dalaran
step << Alliance
.goto Dragonblight,29.0,55.5
.zone Dalaran >>前往: |cRXP_PICK_达拉然|r
.zoneskip SholazarBasin
.skipgossip
step
.abandon 12791 >>放弃达拉然魔法王国。不要把这个交进去 << Horde
.abandon 12794 >>放弃达拉然魔法王国。不要把这个交进去 << Alliance
step
.goto Dalaran,56.3,46.7
.train 53140 >>进入大楼。火车转运站：达拉兰
step
.goto Dalaran,54.94,46.19
.train 42920 >>训练你的职业技能
.xp <76,1
step
.goto Dalaran,72.18,45.77
.fp Dalaran >>获取达拉然飞行路线
step
#requires DalaranFP
#completewith next
.goto Dalaran,68.54,42.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往克拉苏斯登陆。与Pentarus交谈
.accept 12521 >>接任务: |cRXP_LOOT_赫米特·奈辛瓦里哪去了？|r
step
#requires DalaranFP
.goto Dalaran,68.54,42.07
.zone SholazarBasin >>让Pentarus带你去Sholazar盆地。这需要50秒
.skipgossip
step
.goto SholazarBasin,39.70,58.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Monte hanging from the tree
.turnin 12521 >>交任务: |cRXP_FRIENDLY_赫米特·奈辛瓦里哪去了？|r
.accept 12489 >>接任务: |cRXP_LOOT_欢迎来到索拉查盆地|r
step
#completewith end
#label Nesingwary
.goto SholazarBasin,26.8,59.3,0,0
.home >>将您的炉石设置为Nesingwarve大本营
>>如果需要，购买食物
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往Nesingwarve大本营。与Hemet、Debaar和Chad交谈
.turnin 12489 >>交任务: |cRXP_FRIENDLY_欢迎来到索拉查盆地|r
.goto SholazarBasin,27.09,58.64
.accept 12524 >>接任务: |cRXP_LOOT_风险投资公司的风险|r
.goto SholazarBasin,27.25,59.90
.accept 12624 >>接任务: |cRXP_LOOT_不知所踪！|r
.goto SholazarBasin,26.86,58.94
step
#requires Nesingwary
.goto SholazarBasin,25.35,58.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Weslex
.accept 12522 >>接任务: |cRXP_LOOT_需要引擎|r
step
#completewith VentureCo2
>>杀死Sholazar的所有暴徒以获得黄金订婚戒指。根本不要关注这个任务
.complete 12624,1 
step
.goto SholazarBasin,38.69,56.72
>>在飞行机器旁边的水面上掠夺“引擎”
.complete 12522,1 
step
#completewith Helice
.goto SholazarBasin,36.8,47.3,0
>>AoE Swindlegrin’s Dig的创业公司
.complete 12524,1 
step
.goto SholazarBasin,35.55,47.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Engineer Helice to start her escort
.accept 12688 >>接任务: |cRXP_LOOT_工程师的逃亡|r
step
#label Helice
.goto SholazarBasin,37.27,50.59
>>护送Helice
.complete 12688,1 
step
#completewith next
>>AoE Swindlegrin’s Dig的创业公司
.complete 12524,1 
step
.goto SholazarBasin,37.35,45.78,50,0
.goto SholazarBasin,33.31,45.31,50,0
.goto SholazarBasin,33.13,47.90
>>AoE Swindlegrin’s Dig的创业公司
.complete 12524,1 
step
#completewith Debaar1
.hs >>Nesingwarve大本营之炉
.cooldown item,6948,>0
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回Nesingwarve的大本营。与Hemet和Debaar交谈
.turnin 12688 >>交任务: |cRXP_FRIENDLY_工程师的逃亡|r
.goto SholazarBasin,27.09,58.64
.turnin 12524 >>交任务: |cRXP_FRIENDLY_风险投资公司的风险|r
.accept 12525 >>接任务: |cRXP_LOOT_工头斯温迪格林|r
.goto SholazarBasin,27.25,59.90
.isQuestComplete 12688
step
#requires EscortEnd
#label Debaar1
.goto SholazarBasin,27.25,59.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Debaar
.turnin 12524 >>交任务: |cRXP_FRIENDLY_风险投资公司的风险|r
.accept 12525 >>接任务: |cRXP_LOOT_工头斯温迪格林|r
step
.goto SholazarBasin,26.86,58.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chad
.turnin 12624 >>交任务: |cRXP_FRIENDLY_不知所踪！|r
.isQuestComplete 12624
step
.goto SholazarBasin,25.35,58.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Weslex
.turnin 12522 >>交任务: |cRXP_FRIENDLY_需要引擎|r
.accept 12523 >>接任务: |cRXP_LOOT_借零件|r
step
#completewith VentureCo2
.goto SholazarBasin,33.2,45.7,0
>>掠夺在斯温德莱格林的地窖附近发现的各种备件
.complete 12523,1 
step
.goto SholazarBasin,35.49,50.00
>>杀死木平台上的Foreman Swindlegrin和Meatpie
.complete 12525,1 
.complete 12525,2 
step
.goto SholazarBasin,33.2,45.7,50,0
.goto SholazarBasin,37.03,46.72
>>掠夺在斯温德莱格林的地窖附近发现的各种备件
.complete 12523,1 
step
>>杀死Sholazar的所有暴徒以获得黄金订婚戒指。根本不要关注这个任务
.complete 12624,1 
step
#completewith Debaar1
.hs >>Nesingwarve大本营之炉
.cooldown item,6948,>0
step
#completewith end
#label NesFP
.goto SholazarBasin,25.35,58.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Weslex, then Talk to the Flying Machine and Calvert
.turnin 12523 >>交任务: |cRXP_FRIENDLY_借零件|r
.fp Nesingwary Base Camp >>获得Nesingwarve大本营飞行路线
.goto SholazarBasin,25.27,58.45


step
#requires NesFP
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t先和Debaar谈谈，然后是Drostan
.turnin 12525 >>交任务: |cRXP_FRIENDLY_工头斯温迪格林|r
.goto SholazarBasin,27.25,59.90
.accept 12589 >>接任务: |cRXP_LOOT_后坐力？什么后坐力？|r
.goto SholazarBasin,27.08,59.91
step
.goto SholazarBasin,27.08,59.91
.use 38573 >>用你包里的RJR步枪射击Lucky Wilhelm。这样做直到目标完成，然后重新装备你的魔杖
.complete 12589,1 
.turnin 12589 >>交任务: |cRXP_FRIENDLY_后坐力？什么后坐力？|r

step
.goto SholazarBasin,26.86,58.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chad
.turnin 12624 >>交任务: |cRXP_FRIENDLY_不知所踪！|r
step
.loop 75,SholazarBasin,36.21,51.02,37.13,45.50,32.88,45.11,31.67,48.72
.xp 77 >>AoE创业公司至77
step
#completewith next
.zone Dalaran >>前往: |cRXP_PICK_达拉然|r
step
.goto Dalaran,54.94,46.19
.train 42985 >>训练你的职业技能
step
.goto Dalaran,69.81,45.45
.train 54197 >>从Hira训练寒冷天气飞行
step
#completewith next
>>如果你有295或更多的法术命中(和精准天赋)，跳过这一步
.hs >>Nesingwarve大本营之炉
step
.loop 75,SholazarBasin,36.21,51.02,37.13,45.50,32.88,45.11,31.67,48.72
>>如果你有295或更多的法术命中(和精准天赋)，跳过这一步
.xp 78 >>AoE创业公司至78
step
.zone Dalaran >>前往: |cRXP_PICK_达拉然|r
step
.goto Dalaran,54.94,46.19
.train 42859 >>训练你的职业技能
.xp <78,1
step
#completewith next
.goto IcecrownGlacier,59.0,73.8
.zone Icecrown >>前往: |cRXP_PICK_冰冠冰川|r
step
.goto IcecrownGlacier,59.0,73.8
.xp 79 >>AoE亡灵到79
step
#completewith next
.zone Dalaran >>前往: |cRXP_PICK_达拉然|r
.xp <79,1
step
.goto Dalaran,54.94,46.19
.train 43008 >>训练你的职业技能
.xp <79,1
step
#completewith next
.goto IcecrownGlacier,59.0,73.8
.zone Icecrown >>前往: |cRXP_PICK_冰冠冰川|r
step
.goto IcecrownGlacier,59.0,73.8
.xp 80 >>AoE亡灵到80
]])
RXPGuides.RegisterGuide([[
#version 25
#wotlk
#group RestedXP Complexist指南
#name 英雄徽章1-龙之光/祖德拉克
#next 英雄的象征2-风暴峰
step
#completewith next
.zone Dragonblight >>前往: |cRXP_PICK_龙骨荒野|r
step << Alliance
.goto Dragonblight,78.56,48.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.accept 12235 >>接任务: |cRXP_LOOT_纳克萨玛斯与暮冬城的陷落|r
.target High Commander Halford Wyrmbane
step << Alliance
.goto Dragonblight,77.10,50.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urik|r
.turnin 12235 >>交任务: |cRXP_FRIENDLY_纳克萨玛斯与暮冬城的陷落|r
.accept 12237 >>接任务: |cRXP_LOOT_拯救暮冬城平民|r
.target Gryphon Commander Urik
step << Alliance
#completewith next
.goto Dragonblight,77.13,49.78,15,0
.cast 48388 >>使用|T132161:0|t[Gryphon Whistle]
.use 37287
step << Alliance
#completewith next
.vehicle 27258 >>安装|cRXP_FRIENDLY_Wintergarde鹰头狮|r
.target Wintergarde Gryphon
.use 37287
step << Alliance
.waypoint Dragonblight,86.38,50.91,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
.goto Dragonblight,77.13,49.78
>>|cRXP_WARN_演员阵容|r|T134148:0|t[营救村民]（1）|cRXP_WARN_to pick up |r|cRXP_FRIENDLY_Helpless Wintergarde Villages|r
>>|cRXP_WARN_拿起一个|cRXP_FRIENDLY_Helpless Wintergarde Villager|r，|r|cRXP_WARN_then-cast|r|T134149:0|t[送村民]（2）
>>|cRXP_WARN_铸造|r|T132172:0|t[Soar]（3）|cRXP_WARN_飞得更快|r
>>|cRXP_WARN_一次只能领取一个|r|cRXP_FRIENDLY_Helpless Wintergarde Village|r|r
.complete 12237,1 
.target Helpless Wintergarde Villager
.use 37287
step << Alliance
.goto Dragonblight,77.10,50.12
>>|cRXP_WARN_拆除|cRXP_FRIENDLY_Wintergarde鹰头狮|r|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urik|r
.turnin 12237 >>交任务: |cRXP_FRIENDLY_拯救暮冬城平民|r
.accept 12251 >>接任务: |cRXP_LOOT_向高级指挥官复命|r
.target Gryphon Commander Urik
step << Alliance
.goto Dragonblight,78.56,48.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12251 >>交任务: |cRXP_FRIENDLY_向高级指挥官复命|r
.accept 12253 >>接任务: |cRXP_LOOT_拯救暮冬城的平民|r
.accept 12275 >>接任务: |cRXP_LOOT_破坏专家斯林奇|r
.target High Commander Halford Wyrmbane
step << Alliance
.goto Dragonblight,77.85,50.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarterflash|r
.turnin 12275 >>交任务: |cRXP_FRIENDLY_破坏专家斯林奇|r
.accept 12276 >>接任务: |cRXP_LOOT_寻找斯林奇|r
.accept 12272 >>接任务: |cRXP_LOOT_流血的矿石|r
.target Siege Engineer Quarterflash
step << Alliance Mage
.goto Dragonblight,77.28,51.19,12,0
.goto Dragonblight,77.48,51.37,12,0
.goto Dragonblight,77.40,51.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊露希亚·卢恩|r
.home >>将您的炉石设置为Wintergarde Keep
.target Illusia Lune
step << Alliance
.loop 15,Dragonblight,80.03,48.85,80.22,49.83,80.71,50.43,80.82,51.19,80.51,52.17,79.64,51.36,78.84,51.26,79.88,50.41,80.03,48.85
.line Dragonblight,80.03,48.85,80.22,49.83,80.71,50.43,80.82,51.19,80.51,52.17,79.64,51.36,78.84,51.26,79.88,50.41,80.03,48.85
>>杀死|cRXP_ENEMY_Vengeful Geists|r以营救|cRXP_FRIENDLY_Trapped Wintergarde村民|r
.complete 12253,1 
.target Trapped Wintergarde Villager
.mob Vengeful Geist
step << Alliance
#completewith Slinkin
#label LowerMine
.goto Dragonblight,80.16,45.19,20 >>进入矿井下部入口
step << Alliance
#completewith MineBomb
#requires LowerMine
>>开采|cRXP_PICK_奇异矿脉|r。为|cRXP _Loot_奇异矿石|r掠夺它
.complete 12272,1 
step << Alliance
#completewith next
.goto Dragonblight,80.29,43.71,15,0
.goto Dragonblight,81.52,42.20,20 >>前往|cRXP_FRIENDLY_Slinkin|r
step << Alliance
#label Slinkin
.goto Dragonblight,81.52,42.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_破坏专家斯林奇|r
.turnin 12276 >>交任务: |cRXP_FRIENDLY_寻找斯林奇|r
.accept 12277 >>接任务: |cRXP_LOOT_阻绝邪恶|r
step << Alliance
#label MineBomb
.goto Dragonblight,80.99,42.26,20,0
.goto Dragonblight,80.89,42.06,20,0
.goto Dragonblight,80.74,41.32
>>掠夺地面上的|T133717:0|t[|cRXP_Loot_温特加德地雷炸弹|r]
.collect 37465,1,12277,1 
step << Alliance
.goto Dragonblight,80.54,40.82,25,0
.goto Dragonblight,80.79,40.06,25,0
.goto Dragonblight,80.15,40.34,25,0
.goto Dragonblight,79.76,39.26,25,0
.goto Dragonblight,80.09,44.20,25,0
.goto Dragonblight,79.56,43.13,25,0
.goto Dragonblight,78.99,42.24,25,0
.goto Dragonblight,79.58,41.66,25,0
.goto Dragonblight,79.99,41.83,25,0
.goto Dragonblight,80.61,42.96,25,0
.goto Dragonblight,80.54,40.82,25,0
.goto Dragonblight,80.79,40.06,25,0
.goto Dragonblight,80.15,40.34,25,0
.goto Dragonblight,79.76,39.26
>>开采|cRXP_PICK_奇异矿脉|r。为|cRXP _Loot_奇异矿石|r掠夺它
.complete 12272,1,6 
step << Alliance
#completewith LeaveNothing
>>开采|cRXP_PICK_奇异矿脉|r。为|cRXP _Loot_奇异矿石|r掠夺它
.complete 12272,1 
step << Alliance
#completewith next
.goto Dragonblight,80.90,42.89,20,0
.goto Dragonblight,80.29,43.71,20,0
.goto Dragonblight,80.16,45.19,20 >>朝下入口行驶
step << Alliance
.goto Dragonblight,80.16,45.19
.cast 48741 >>在矿井下部入口处使用|T133717:0|t[|cRXP_LOOT_温特加德地雷炸弹|r]

.use 37465
.isOnQuest 12277
step << Alliance
#label LeaveNothing
.goto Dragonblight,80.41,44.81
.cast 48741 >>在矿井的上部入口使用|T133717:0|t[|cRXP_LOOT_Wentgarde地雷炸弹|r]

.use 37465
.isOnQuest 12277
step << Alliance
.goto Dragonblight,80.09,44.20,25,0
.goto Dragonblight,79.56,43.13,25,0
.goto Dragonblight,78.99,42.24,25,0
.goto Dragonblight,79.58,41.66,25,0
.goto Dragonblight,79.99,41.83,25,0
.goto Dragonblight,80.61,42.96,25,0
.goto Dragonblight,80.54,40.82,25,0
.goto Dragonblight,80.79,40.06,25,0
.goto Dragonblight,80.15,40.34,25,0
.goto Dragonblight,79.76,39.26,25,0
.goto Dragonblight,80.09,44.20,25,0
.goto Dragonblight,79.56,43.13,25,0
.goto Dragonblight,78.99,42.24,25,0
.goto Dragonblight,79.58,41.66,25,0
.goto Dragonblight,79.99,41.83,25,0
.goto Dragonblight,80.61,42.96,25,0
.goto Dragonblight,80.54,40.82,25,0
.goto Dragonblight,80.79,40.06,25,0
.goto Dragonblight,80.15,40.34,25,0
.goto Dragonblight,79.76,39.26
>>开采|cRXP_PICK_奇异矿脉|r。为|cRXP _Loot_奇异矿石|r掠夺它
.complete 12272,1 
step << skip
#completewith next
.hs >>温特加尔德要塞的壁炉
.cooldown item,6948,>0

step << Alliance
.goto Dragonblight,77.85,50.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarterflash|r
.turnin 12272 >>交任务: |cRXP_FRIENDLY_流血的矿石|r
.turnin 12277 >>交任务: |cRXP_FRIENDLY_阻绝邪恶|r
.accept 12281 >>接任务: |cRXP_LOOT_天灾战争机器的奥秘|r
.target Siege Engineer Quarterflash
step << Alliance
.goto Dragonblight,78.56,48.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12281 >>交任务: |cRXP_FRIENDLY_天灾战争机器的奥秘|r
.turnin 12253 >>交任务: |cRXP_FRIENDLY_拯救暮冬城的平民|r
.accept 12309 >>接任务: |cRXP_LOOT_找到杜尔库！|r
.target High Commander Halford Wyrmbane
step << Alliance
.goto Dragonblight,79.06,53.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑兵杜尔库|r
.turnin 12309 >>交任务: |cRXP_FRIENDLY_找到杜尔库！|r
.accept 12311 >>接任务: |cRXP_LOOT_贵族的陵墓|r
.target Cavalier Durkon
step << Alliance
#completewith Amarion
.goto Dragonblight,78.83,52.89,10,0
.goto Dragonblight,78.61,52.82,10,0
.goto Dragonblight,78.62,52.59,10 >>进入冬花园地穴
step << Alliance
#sticky
#label FleshBoundT
.goto Dragonblight,78.62,52.28,0,0
>>单击地面上的|cRXP_PICK_Flesh-Bound Tome|r
.accept 12312 >>接任务: |cRXP_LOOT_天灾的秘密|r
step << Alliance
#label Amarion
.goto Dragonblight,78.61,53.08,8,0
>>杀死温特加德地穴底部的|cRXP_ENEMY_亡灵阿玛利安|r
.complete 12311,1 
.goto Dragonblight,78.60,52.36
.mob Necrolord Amarion
step << Alliance
#requires FleshBoundT
.goto Dragonblight,79.06,53.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑兵杜尔库|r
.turnin 12311 >>交任务: |cRXP_FRIENDLY_贵族的陵墓|r
.turnin 12312 >>交任务: |cRXP_FRIENDLY_天灾的秘密|r
.accept 12319 >>接任务: |cRXP_LOOT_血之魔典|r
.target Cavalier Durkon
step << Alliance
.goto Dragonblight,78.56,48.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12319 >>交任务: |cRXP_FRIENDLY_血之魔典|r
.accept 12320 >>接任务: |cRXP_LOOT_破译魔典|r
.target High Commander Halford Wyrmbane
step << skip
#completewith next
.goto Dragonblight,78.08,46.12,30,0
.goto Dragonblight,77.07,46.47,20,0
>>向北爬上山，然后左转，进入城堡庭院
.skill coldweatherflying,1,1

step << Alliance
#completewith next
.goto Dragonblight,76.95,47.72,12,0
.goto Dragonblight,76.62,47.53,10 >>下楼去监狱
step << Alliance
.goto Dragonblight,76.75,47.52,6,0
.goto Dragonblight,76.80,47.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_审讯员哈尔拉德|r
.turnin 12320 >>交任务: |cRXP_FRIENDLY_破译魔典|r
.accept 12321 >>接任务: |cRXP_LOOT_正义的审判|r
.timer 184,A Righteous Sermon RP
.target Inquisitor Hallard
step << Alliance
.goto Dragonblight,78.21,47.14
>>|cRXP_WARN_在箭头位置等待RP|r
>>如果您游得太远而任务失败，请返回|cRXP_FRIENDLY_Hallard|r并重新开始
.complete 12321,1 
.target Inquisitor Hallard
step << Alliance
.goto Dragonblight,78.56,48.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12321 >>交任务: |cRXP_FRIENDLY_正义的审判|r
.accept 12325 >>接任务: |cRXP_LOOT_进入敌占区|r
.target High Commander Halford Wyrmbane
step << skip
#completewith next
.goto Dragonblight,77.11,49.60,15,0
>>登上四只|cRXP_FRIENDLY_Wintergarde Gryphons|r中的任何一只前往Thorson's Post
.target Wintergarde Gryphon
.skill coldweatherflying,1,1

step << Alliance
.goto Dragonblight,89.68,46.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥古斯特公爵|r
.turnin 12325 >>交任务: |cRXP_FRIENDLY_进入敌占区|r
.accept 12326 >>接任务: |cRXP_LOOT_蒸汽坦克行动|r
.target Duke August Foehammer
step << Alliance
#completewith next
.goto Dragonblight,89.89,46.82,-1
.goto Dragonblight,89.79,46.97,-1
.vehicle 27587 >>进入其中一个|cRXP_FRIENDLY_Tanks|r
.target Alliance Steam Tank
step << Alliance
.loop 45,Dragonblight,89.08,48.71,89.93,50.21,88.99,49.78,88.11,50.60,87.42,49.67,86.40,49.13,85.65,49.09,85.09,50.16,84.25,51.61,85.10,51.96,86.28,51.85,86.68,52.61,87.48,53.40,88.49,52.21,88.11,50.60
>>施法|T135836:0|t[冰炮]（1）和|T135834:0|t[冰狱]（2）杀死|cRXP_ENEMY_Undad|r
>>|cRXP_WARN_铸造|r|T134165:0|t[放下侏儒]（3）|cRXP_WARN_next到|cRXP_ENEMY_Plague Wagons|r以破坏它们|r
>>|cRXP_WARN_铸造后等待RP |r|T134165:0|t[放下Gnome]
>>|cRXP_WARN_一次只能破坏一辆|cRXP_ENEMY_Plague Wagon|r|r
>>|cRXP_WARN_如果您的|cRXP_FRIENDLY_7第军团围攻工程师|r被卡住或死亡，请返回并获得新的|r|cRXP_FRIENDLY_Tank|r
.complete 12326,1 
.cast 49109
.timer 15,Plague Wagon Sabotage RP
.mob Plague Wagon
.target 7th Legion Siege Engineer
step << Alliance
.goto Dragonblight,85.79,49.98
>>铸造|T135942:0|t[送兵]（4）陵墓前
.complete 12326,2 
step << Alliance
#completewith next
.goto Dragonblight,86.12,50.27,10,0
.goto Dragonblight,85.94,50.87,12 >>沿着陵墓往下走|cRXP_FRIENDLY_Ambo|r
step << Alliance
.goto Dragonblight,85.94,50.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo|r
.turnin 12326 >>交任务: |cRXP_FRIENDLY_蒸汽坦克行动|r
.accept 12455 >>接任务: |cRXP_LOOT_随风散落|r
.target Ambo Cash
step << Alliance
#completewith next
.goto Dragonblight,86.12,50.27,10,0
.goto Dragonblight,85.88,50.04,10 >>Exit the Mausoleum
step << Alliance
.loop 45,Dragonblight,85.56,50.45,85.12,50.40,85.66,51.57,85.75,52.42,85.56,52.64,85.07,52.02,83.88,51.39,83.24,50.72,83.52,49.70,84.29,49.98,85.11,48.22,86.26,47.69,86.08,49.69,86.82,50.02,85.56,50.45
>>打开地面上的|cRXP_PICK_Wintergarde弹药箱|r。掠夺它们以获取|cRXP_Loot_温特加德军火|r
.complete 12455,1 
step << Alliance
#completewith next
.goto Dragonblight,86.12,50.27,10,0
.goto Dragonblight,85.94,50.87,12 >>沿着陵墓往下走|cRXP_FRIENDLY_Ambo|r
step << Alliance
.goto Dragonblight,85.94,50.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo|r
.turnin 12455 >>交任务: |cRXP_FRIENDLY_随风散落|r
.accept 12457 >>接任务: |cRXP_LOOT_重机枪与你|r
.target Ambo Cash
step << Alliance
#completewith next
.goto Dragonblight,86.24,51.06,-1
.goto Dragonblight,86.19,51.19,-1
.goto Dragonblight,85.67,50.60,-1
.goto Dragonblight,85.62,50.75,-1
.vehicle >>进入|cRXP_FRIENDLY_7军团链枪|r
.target 7th Legion Chain Gun
step << Alliance
.goto Dragonblight,86.99,51.67,-1
.goto Dragonblight,84.87,50.13,-1
>>施法|T132351:0|t[召唤受伤士兵]（2）冷却时召唤|cRXP_FRIENDLY_受伤的第7军团士兵|r
>>|cRXP_WARN_如果你足够快地发送垃圾邮件，你可以一次召唤两个|r[召唤受伤的士兵]|cRXP_WARN_|r
>>垃圾邮件施放|T136186:0|t[第7军团链枪]（1）击杀|cRXP_ENEMY_无意识食尸鬼|r追击|cRXP_FRIENDLY_受伤的第7军团士兵|r
.complete 12457,1 
.target Injured 7th Legion Soldier
step << Alliance
.goto Dragonblight,85.94,50.87
>>|cRXP_WARN_拆除|r|cRXP_FRIENDLY_7军团链炮|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo|r
.turnin 12457 >>交任务: |cRXP_FRIENDLY_重机枪与你|r
.accept 12463 >>接任务: |cRXP_LOOT_找到普兰比尔德！|r
.target Ambo Cash
step << Alliance
#completewith next
.goto Dragonblight,85.68,51.63,15,0
.goto Dragonblight,85.32,52.70,15,0
.goto Dragonblight,84.51,54.67,15,0
.goto Dragonblight,84.17,54.68,15 >>前往|cRXP_FRIENDLY_Plunderbeard|r
step << Alliance
.goto Dragonblight,84.17,54.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plunderbeard's|r corpse
.turnin 12463 >>交任务: |cRXP_FRIENDLY_找到普兰比尔德！|r
.accept 12465 >>接任务: |cRXP_LOOT_普兰比尔德的日记|r
.target Plunderbeard
step << Alliance
#completewith next
.goto Dragonblight,84.16,55.69,12,0
.goto Dragonblight,83.98,56.03,12,0
.goto Dragonblight,83.69,56.61,12,0
.goto Dragonblight,83.43,55.24,12,0
.goto Dragonblight,83.01,54.92,12 >>穿过洞穴走得更远
step << Alliance
.goto Dragonblight,81.93,54.04,20,0
.goto Dragonblight,80.90,51.99,20,0
.goto Dragonblight,81.93,54.04,20,0
.goto Dragonblight,82.68,54.03
>>杀死|cRXP_ENEMY_Dreadbone构造|r和|cRXX_ENEMY_Wailing Souls|r。掠夺它们以获取|cRXD_Loot_Plusnderbeard的日志页面|r
.complete 12465,1 
.complete 12465,2 
.complete 12465,3 
.complete 12465,4 
.mob Dreadbone Construct;Wailing Soul
step << Alliance
#completewith next
.goto Dragonblight,80.90,51.99,20,0
.goto Dragonblight,81.07,50.85,15,0
.goto Dragonblight,81.94,50.69,15 >>从另一边退出陵墓
step << Alliance
#completewith next
.goto Dragonblight,86.12,50.27,10,0
.goto Dragonblight,85.94,50.87,12 >>沿着陵墓往下走|cRXP_FRIENDLY_Ambo|r
step << Alliance
.goto Dragonblight,85.94,50.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo|r
.turnin 12465 >>交任务: |cRXP_FRIENDLY_普兰比尔德的日记|r
.accept 12466 >>接任务: |cRXP_LOOT_追击冰雪风暴：第七军团前线|r
.target Ambo Cash
step << skip
#completewith next
.hs >>温特加尔德要塞的壁炉
.cooldown item,6948,>0

step << Alliance
#completewith next
.goto Dragonblight,86.12,50.27,10,0
.goto Dragonblight,85.88,50.04,10 >>Exit the Mausoleum
step << Alliance
.goto Dragonblight,64.74,27.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军团司令泰拉里安|r
.turnin 12466 >>交任务: |cRXP_FRIENDLY_追击冰雪风暴：第七军团前线|r
.accept 12467 >>接任务: |cRXP_LOOT_追击冰雪风暴：塞尔赞的护命匣|r
.target Legion Commander Tyralion
step << Alliance
#completewith next
.goto Dragonblight,64.61,27.25
.gossipoption 93435 >>对话: |cRXP_FRIENDLY_“龙饵”|r, |cRXP_ENEMY_冰雪风暴|r
.timer 45,Chasing Icestorm RP
.target "Wyrmbait"
.skipgossip 27843,1
step << Alliance
.goto Dragonblight,63.85,27.59
>>|cRXP_WARN_等待RP|r
>>杀死掉在地上的|cRXP_ENEMY_Icestore|r。掠夺|cRXX_Loot_Thel'zan的身体|r
.complete 12467,1 
.mob Icestorm
step << Alliance
.goto Dragonblight,39.52,25.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derek|r
.fp Fordragon Hold >>获取Fordragon Hold飞行路线
.target Derek Rammel
step << Alliance Mage
#completewith next
.hs >>温特加尔德要塞的壁炉
step << Alliance
.goto Dragonblight,78.56,48.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12467 >>交任务: |cRXP_FRIENDLY_追击冰雪风暴：塞尔赞的护命匣|r
.accept 12472 >>接任务: |cRXP_LOOT_终结|r
.target High Commander Halford Wyrmbane
step << Alliance
#completewith next
.goto Dragonblight,81.87,50.71,15,0
.goto Dragonblight,81.17,50.65,12 >>沿着陵墓的后门向|cRXP_FRIENDLY_Yorik|r走去
step << Alliance
.goto Dragonblight,81.17,50.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军团司令尤瑞克|r
.turnin 12472 >>交任务: |cRXP_FRIENDLY_终结|r
.accept 12473 >>接任务: |cRXP_LOOT_结束和开始|r
.timer 115,An End And A Beginning RP
.target Legion Commander Yorik
step << Alliance
.goto Dragonblight,80.98,50.63
>>|cRXP_WARN_等待RP|r
>>杀死|cRXP_ENEMY_Thel'zan the Duskbringer|r
.complete 12473,1 
.mob Thel'zan the Duskbringer
step << Alliance
.goto Dragonblight,78.56,48.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12473 >>接任务: |cRXP_LOOT_结束和开始|r
.accept 12474 >>接任务: |cRXP_WARN_前往弗塔根要塞！|r
.target High Commander Halford Wyrmbane
step << skip
#completewith next
.goto Dragonblight,77.00,49.79,15,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗尼·威尔斯|r
.target Rodney Wells
.fly Fordragon >>飞到Fordragon Hold
.skill coldweatherflying,1,1

step << Alliance
.goto Dragonblight,37.80,23.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
.turnin 12474 >>交任务: |cRXP_FRIENDLY_前往弗塔根要塞！|r
.accept 12495 >>接任务: |cRXP_LOOT_巨龙女王的指引|r
.target Highlord Bolvar Fordragon
step << skip
#completewith next
.goto Dragonblight,39.52,25.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德里克·拉米尔|r
.target Derek Rammel
.fly Wyrmrest >>飞往温姆雷斯特神庙
.skill coldweatherflying,1,1

step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_闪蹄|r, |cRXP_FRIENDLY_血卫士洛恩基尔|r
>>|cRXP_FRIENDLY_Brighthof|r|cRXP_WARN_巡视营地内圈|r
.accept 11978 >>接任务: |cRXP_LOOT_深入密林|r
.loop 20,Dragonblight,13.64,47.93,13.81,48.20,13.96,48.66,13.95,49.36,13.87,49.58,13.70,49.36,13.57,48.99,13.59,48.72,13.41,48.44,13.20,48.45,13.22,48.71,13.43,49.12,13.29,49.86,13.31,49.50,12.86,49.17,12.83,48.79,12.77,48.55,12.96,48.02,13.47,47.90,13.64,47.93
.accept 11980 >>接任务: |cRXP_LOOT_部落的荣耀|r
.goto Dragonblight,14.21,49.82
.target Emissary Brighthoof
.target Blood Guard Roh'kill
step << Horde
#completewith next
.loop 40,Dragonblight,16.62,52.57,17.42,50.93,17.24,50.26,16.73,50.06,16.22,48.17,18.67,49.16,17.42,46.06,16.67,45.26,16.47,46.34,15.98,45.76,15.60,45.63,14.58,44.33,16.62,52.57
>>打开地面上的|cRXP_PICK_Wooden Horde Crates|r。为|cRXP_Loot_部落武器|r掠夺它们
.complete 11978,1 
step << Horde
.loop 40,Dragonblight,15.59,50.43,15.69,52.15,15.49,53.75,16.74,52.32,16.67,50.90,17.78,49.21,19.55,50.59,20.84,51.76,21.55,50.53,21.92,47.37,20.42,48.28,19.11,47.29,17.72,46.94,17.23,46.15,16.64,44.94,16.11,44.58,15.14,44.36,14.48,44.82,15.43,46.45,16.73,46.89,16.79,48.60,15.59,50.43
>>杀死|cRXP_ENEMY_Anub'ar救护车|r
.complete 11980,1 
.mob Anub'ar Ambusher
step << Horde
.loop 40,Dragonblight,16.62,52.57,17.42,50.93,17.24,50.26,16.73,50.06,16.22,48.17,18.67,49.16,17.42,46.06,16.67,45.26,16.47,46.34,15.98,45.76,15.60,45.63,14.58,44.33,16.62,52.57
>>打开地面上的|cRXP_PICK_Wooden Horde Crates|r。为|cRXP_Loot_部落武器|r掠夺它们
.complete 11978,1 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血卫士洛恩基尔|r, |cRXP_FRIENDLY_闪蹄|r
>>|cRXP_FRIENDLY_Brighthof|r|cRXP_WARN_巡视营地内圈|r
.turnin 11980 >>交任务: |cRXP_FRIENDLY_部落的荣耀|r
.goto Dragonblight,14.21,49.82
.turnin 11978 >>交任务: |cRXP_FRIENDLY_深入密林|r
.accept 11983 >>接任务: |cRXP_LOOT_部落的血誓|r
.loop 20,Dragonblight,13.64,47.93,13.81,48.20,13.96,48.66,13.95,49.36,13.87,49.58,13.70,49.36,13.57,48.99,13.59,48.72,13.41,48.44,13.20,48.45,13.22,48.71,13.43,49.12,13.29,49.86,13.31,49.50,12.86,49.17,12.83,48.79,12.77,48.55,12.96,48.02,13.47,47.90,13.64,47.93
.target Blood Guard Roh'kill
.target Emissary Brighthoof
step << Horde
.goto Dragonblight,13.41,48.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taunka'le Refugees|r
.complete 11983,1 
.target Taunka'le Refugee
.skipgossip
step << Horde
.loop 20,Dragonblight,13.64,47.93,13.81,48.20,13.96,48.66,13.95,49.36,13.87,49.58,13.70,49.36,13.57,48.99,13.59,48.72,13.41,48.44,13.20,48.45,13.22,48.71,13.43,49.12,13.29,49.86,13.31,49.50,12.86,49.17,12.83,48.79,12.77,48.55,12.96,48.02,13.47,47.90,13.64,47.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_闪蹄|r
>>|cRXP_FRIENDLY_Brighthof|r|cRXP_WARN_巡视营地内圈|r
.turnin 11983 >>交任务: |cRXP_FRIENDLY_部落的血誓|r
.accept 12008 >>接任务: |cRXP_LOOT_阿格玛之锤|r
.target Emissary Brighthoof
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Agmar, |cRXP_FRIENDLY_军士长祖托克|r
.turnin 12008 >>交任务: |cRXP_FRIENDLY_阿格玛之锤|r
.accept 12034 >>接任务: |cRXP_LOOT_胜利将近……|r
.goto Dragonblight,37.70,46.34,35,0
.goto Dragonblight,38.16,46.33
.turnin 12034 >>交任务: |cRXP_FRIENDLY_胜利将近……|r
.accept 12036 >>接任务: |cRXP_LOOT_艾卓-尼鲁布的深渊|r
.goto Dragonblight,36.61,46.57
.target Overlord Agmar
.target Senior Sergeant Juktok
step << Horde
#completewith next
.goto Dragonblight,26.16,49.54,15 >>|cRXP_WARN_跳进Narjun的深坑|r
step << Horde
.goto Dragonblight,26.17,50.14
>>探索纳君之坑
.complete 12036,1 
step << Horde
#completewith next
.goto Dragonblight,26.72,49.17,12,0
.goto Dragonblight,26.43,48.86,12 >>|cRXP_WARN_Exit the Pit of Narjun|r
step << Horde
.goto Dragonblight,36.61,46.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军士长祖托克|r
.turnin 12036 >>交任务: |cRXP_FRIENDLY_艾卓-尼鲁布的深渊|r
.accept 12053 >>接任务: |cRXP_LOOT_部落的力量|r
.target Senior Sergeant Juktok
step << Horde
#completewith next
.goto Dragonblight,25.54,40.80
.cast 47304 >>|cRXP_WARN_使用|r|T132484:0|t[战歌战斗标准]
.timer 94,The Might of the Horde RP
.use 36738
step << Horde
.goto Dragonblight,25.54,40.80
>>|cRXP_WARN_保护|r|cRXP_FRIENDLY_Warsong战斗标准|r|cRXP_WARN_。杀死攻击它的|cRXP_ENEMY_Anub'ar入侵者|r|r
.complete 12053,1 
.mob Anub'ar Invader
.use 36738
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军士长祖托克|r, |cRXP_FRIENDLY_瓦诺克·风怒|r
.turnin 12053 >>交任务: |cRXP_FRIENDLY_部落的力量|r
.accept 12071 >>接任务: |cRXP_LOOT_空中打击！|r
.goto Dragonblight,36.61,46.57
.turnin 12071 >>交任务: |cRXP_FRIENDLY_空中打击！|r
.accept 12072 >>接任务: |cRXP_LOOT_该死的荒芜兽！|r
.goto Dragonblight,37.21,45.71
.target Senior Sergeant Juktok
.target Valnok Windrager
step << Horde
#label IcemistV
#completewith Blightbeast
.goto Dragonblight,25.64,45.31,120 >>前往冰雾村
step << Horde
#requires IcemistV
#label IcemistV2
#completewith Blightbeast
.goto Dragonblight,27.56,45.00
.cast 47423 >>|cRXP_WARN_在冰雾村使用|r|T134536:0|t[Valnok的火炬枪]|cRXP_WARN_hilst|r
.timer 2,Blightbeasts be Damned! RP
.use 36774
.isOnQuest 12072
step << Horde
#requires IcemistV2
#completewith next
.vehicle >>安装|cRXP_FRIENDLY_War Rider |r

.isOnQuest 12072

step << Horde
#label Blightbeast
.goto Dragonblight,26.62,47.13,50,0
.goto Dragonblight,25.35,47.48,50,0
.goto Dragonblight,24.08,47.37,50,0
.goto Dragonblight,23.47,40.70,50,0
.goto Dragonblight,22.59,38.85,50,0
.goto Dragonblight,24.15,37.16,50,0
.goto Dragonblight,25.75,37.13,50,0
.goto Dragonblight,27.31,37.88,50,0
.goto Dragonblight,27.02,40.12,50,0
.goto Dragonblight,26.62,47.13,50,0
.goto Dragonblight,25.35,47.48
>>|cRXP_WARN_铸造|r|T135786:0|t[大蓝]（2）|cRXP_WARN_and|r|T135780:0|t[Blightbeast Bane]（1）|cRX P_WARN_to kill|r|cRX _ENEMY_Anub'ar Blightbeasts|r
>>|cRXP_WARN_铸造|r|T135769:0|t[野战医疗包]|cRXP_WARN_to治疗您的|r|cRXP-FRIENDLY_War Rider|r
.complete 12072,1 
.mob Anub'ar Blightbeast
.use 36774
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦诺克·风怒|r, Icemist
.turnin 12072 >>交任务: |cRXP_FRIENDLY_该死的荒芜兽！|r
.goto Dragonblight,37.21,45.71
.accept 12063 >>接任务: |cRXP_LOOT_冰雾的力量|r
.goto Dragonblight,35.82,47.04,40,0
.goto Dragonblight,35.75,45.95,40,0
.goto Dragonblight,36.02,45.56,40,0
.goto Dragonblight,36.32,45.20,40,0
.goto Dragonblight,36.62,45.51
.target Valnok Windrager
.target Greatmother Icemist
step << Horde
.goto Dragonblight,22.60,41.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_班索克·冰雾|r
>>|cRXP_FRIENDLY_Banthok|r|cRXP_WARN_i在河边的悬崖下面|r
.turnin 12063 >>交任务: |cRXP_FRIENDLY_冰雾的力量|r
.accept 12064 >>接任务: |cRXP_LOOT_阿努巴尔的束缚|r
.target Banthok Icemist
step << Horde
.goto Dragonblight,24.98,44.88,15,0
.goto Dragonblight,24.94,43.92
>>进入阳台下的洞穴
>>杀死操纵器|cRXP_ENEMY_Anok'ra |r。掠夺他|cRXD_Loot_Anok'ra的关键片段|r
.complete 12064,1 
.mob Anok'ra the Manipulator
step << Horde
#completewith next
.goto Dragonblight,26.20,44.50,40,0
.goto Dragonblight,24.32,44.46,40,0
.goto Dragonblight,23.89,44.86,40,0
.goto Dragonblight,26.20,44.50,40,0
.goto Dragonblight,24.32,44.46,40,0
>>杀死|cRXP_ENEMY_Sinok the Shadowwraker|r。掠夺他|cRXX_Loot_Sinok的关键片段|r
>>他在阳台上随处可见
.complete 12064,3 
.mob Sinok the Shadowrager
step << Horde
.goto Dragonblight,26.75,39.04,30,0
.goto Dragonblight,23.87,39.10,30,0
.goto Dragonblight,26.75,39.04,30,0
.goto Dragonblight,23.87,39.10,30,0
.goto Dragonblight,26.75,39.04,30,0
.goto Dragonblight,23.87,39.10,30,0
.goto Dragonblight,23.87,39.13
>>杀死|cRXP_ENEMY_Tivax断路器|r。掠夺他|cRXD_loot_Tivax的钥匙碎片|r
>>他可以在冰雾的东北或西北建筑中找到
.complete 12064,2 
.mob Tivax the Breaker
step << Horde
.goto Dragonblight,26.20,44.50,40,0
.goto Dragonblight,24.32,44.46,40,0
.goto Dragonblight,23.89,44.86,40,0
.goto Dragonblight,26.20,44.50,40,0
.goto Dragonblight,24.32,44.46,40,0
.goto Dragonblight,23.89,44.86
>>杀死|cRXP_ENEMY_Sinok the Shadowwraker|r。掠夺他|cRXX_Loot_Sinok的关键片段|r
>>他在阳台上随处可见
.complete 12064,3 
.mob Sinok the Shadowrager
step << Horde
.goto Dragonblight,22.60,41.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_班索克·冰雾|r
>>|cRXP_FRIENDLY_Banthok|r|cRXP_WARN_i在河边的悬崖下面|r
.turnin 12064 >>交任务: |cRXP_FRIENDLY_阿努巴尔的束缚|r
.accept 12069 >>接任务: |cRXP_LOOT_大酋长归来|r
.target Banthok Icemist
step << Horde
#completewith next
.goto Dragonblight,25.56,40.90
.cast 47412 >>单击|cRXP_PICK_Anub'ar机制|r
.timer 56,Return of the High Chief RP
step << Horde
.goto Dragonblight,25.12,39.76
>>|cRXP_WARN_等待RP|r
>>杀死|cRXP_ENEMY_Under-King Anub'et'kan|r。打开掉在他旁边的|cRX_PICK_Anub't'kan的手提箱|r。为Anub'et'kan的Husk|r的|cRXP_Loot_片段而掠夺它
.complete 12069,1 
.mob Under-King Anub'et'kan
step << Horde
.goto Dragonblight,37.70,46.34,35,0
.goto Dragonblight,38.16,46.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agmar|r
.turnin 12069 >>交任务: |cRXP_FRIENDLY_大酋长归来|r
.accept 12140 >>接任务: |cRXP_LOOT_洛纳乌克万岁！|r
.target Overlord Agmar
step << Horde
.goto Dragonblight,36.25,45.44
.gossipoption 93081 >>对话: |cRXP_FRIENDLY_洛纳乌克·冰雾|r
.timer 41,All Hail Roanauk! RP
.target Roanauk Icemist
.skipgossip
.isOnQuest 12140
step << Horde
#completewith next
>>|cRXP_WARN_等待RP|r
.complete 12140,1 
step << Horde
.goto Dragonblight,36.33,45.59,5,0
.goto Dragonblight,37.70,46.34,35,0
.goto Dragonblight,38.16,46.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agmar|r
.turnin 12140 >>交任务: |cRXP_FRIENDLY_洛纳乌克万岁！|r
.target Overlord Agmar
step << Horde
.goto Dragonblight,36.08,48.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛塔尔·玛菲奥斯博士|r
.accept 12189 >>接任务: |cRXP_LOOT_笨蛋加白痴！|r
.target Doctor Sintar Malefious
step << Horde Mage
#completewith next
.goto Dragonblight,76.87,62.96,10 >>进入大楼
step << Horde Mage
.goto Dragonblight,76.87,63.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温特白夫人|r
.home >>将你的炉石设置为毒石
.target Mrs. Winterby
step << Horde
#completewith next
.goto Dragonblight,77.58,62.47,12 >>进入大楼
step << Horde
.goto Dragonblight,77.67,62.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席药剂师米德尔顿|r
.turnin 12189 >>交任务: |cRXP_FRIENDLY_笨蛋加白痴！|r
.accept 12188 >>接任务: |cRXP_LOOT_凋零药剂与你：如何自保|r
.target 首席瘟疫使者米德尔顿
step << Horde
.loop 50,Dragonblight,80.30,72.14,80.41,72.77,80.71,73.30,81.01,73.83,81.16,73.50,81.07,72.96,81.21,72.15,81.57,70.10,82.11,70.34,83.05,69.76,83.88,69.91,84.45,69.48,83.95,68.15,83.68,68.48,83.20,68.20,82.01,68.51,82.13,69.57,80.30,72.14
>>杀死|cRXP_ENEMY_Forgotten Captains|r，|cRXD_ENEMY_Forgotten Riflemen |r，| cRXP__ENEMY_Forgarten Farmers|r、|cRXT_ENEMY_Forgotten Knights|r和|cRXP_ENEMY_ Forgottenn Footmen |r。掠夺他们的|cRXP_Loot_Ectosmic残留物|r
.complete 12188,1 
.mob Forgotten Captain
.mob Forgotten Rifleman
.mob Forgotten Peasant
.mob Forgotten Knight
.mob Forgotten Footman
step << Horde
.goto Dragonblight,77.67,62.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席药剂师米德尔顿|r
.turnin 12188 >>交任务: |cRXP_FRIENDLY_凋零药剂与你：如何自保|r
.accept 12200 >>接任务: |cRXP_LOOT_翡翠龙泪|r
.target 首席瘟疫使者米德尔顿
step << Horde
.loop 45,Dragonblight,65.98,74.85,65.80,73.45,63.38,72.67,62.61,72.31,61.79,72.85,62.34,74.64,61.83,75.18,63.32,76.33,63.51,74.90,62.88,74.77,63.39,72.67,64.74,73.58,64.49,74.90,64.67,75.71,64.73,76.50,65.36,75.86,65.98,74.85
>>织机|cRXP_Loot_地上翡翠龙泪|r
.complete 12200,1 
step << Horde Mage
#completewith next
.hs >>从心脏到毒液
step << Horde
.goto Dragonblight,77.67,62.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席药剂师米德尔顿|r
.turnin 12200 >>交任务: |cRXP_FRIENDLY_翡翠龙泪|r
.accept 12218 >>接任务: |cRXP_LOOT_传达好消息|r
.target 首席瘟疫使者米德尔顿
step << Horde
#completewith next
.goto Dragonblight,77.79,61.48
.vehicle >>进入|cRXP_FRIENDLY_Forsaken Blight Spreader|r
.target Forsaken Blight Spreader
step << Horde
.goto Dragonblight,85.05,55.35
>>在|cRXP_ENEMY_Hungling Dead|r上施放|T135799:0|t[闪电炸弹]（1）以杀死他们
>>|cRXP_WARN_您可以将|cRXP_ENEMY_Hungling Dead|r身体拉入从|r|T135799:0|t[闪电炸弹]产生的闪电云中
.complete 12218,1 
.mob Hungering Dead
step << Horde
.goto Dragonblight,77.67,62.79
>>|cRXP_WARN_卸下|r|cRXP_FRIENDLY_Forsaken Blight Spreader|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席药剂师米德尔顿|r
.turnin 12218 >>交任务: |cRXP_FRIENDLY_传达好消息|r
.accept 12221 >>接任务: |cRXP_LOOT_被遗忘者的凋零药剂|r
.target 首席瘟疫使者米德尔顿
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛塔尔·玛菲奥斯博士|r, Agmar
.turnin 12221 >>交任务: |cRXP_FRIENDLY_被遗忘者的凋零药剂|r
.goto Dragonblight,36.08,48.89
.accept 12224 >>接任务: |cRXP_LOOT_库卡隆先锋！|r
.goto Dragonblight,38.16,46.33
.target Doctor Sintar Malefious
.target Overlord Agmar
step << Horde
.goto Dragonblight,40.71,18.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurfang|r
.turnin 12224 >>交任务: |cRXP_FRIENDLY_库卡隆先锋！|r
.accept 12496 >>接任务: |cRXP_LOOT_巨龙女王的指引|r
.target Saurfang the Younger
step << Horde
.goto Dragonblight,43.85,16.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_努莫·魂风|r
.fp Kor'koron Vanguard>>获取Kor'koron Vanguard飞行路线
.target Numo Spiritbreeze

step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿莱克丝塔萨|r, |cRXP_FRIENDLY_托拉斯塔萨|r
.turnin 12495 >>交任务: |cRXP_FRIENDLY_巨龙女王的指引|r << Alliance
.turnin 12496 >>交任务: |cRXP_FRIENDLY_巨龙女王的指引|r << Horde
.accept 12497 >>接任务: |cRXP_LOOT_迦拉克隆与天灾军团|r
.goto Dragonblight,59.84,54.66
.turnin 12497 >>交任务: |cRXP_FRIENDLY_迦拉克隆与天灾军团|r
.accept 12498 >>接任务: |cRXP_LOOT_红龙之翼|r
.goto Dragonblight,59.51,53.33
.target Alexstrasza the Life-Binder
.target Torastrasza
step
#completewith next
.cast 50426 >>使用|T134124:0|t[龙女王的红宝石灯塔]召唤一个|cRXP_FRIENDLY_Wyrmrest Vanquisher|r
.use 38302
step
.vehicle >>安装|cRXP_FRIENDLY_Wyrmrest Vanquisher|r
.target Wyrmrest Vanquisher
.use 38302
.isOnQuest 12498
step
#completewith next
>>施法|T135808:0|t[吞噬火球]（2）击杀|cRXP_ENEMY_拾荒者|r
>>施法|T132278:0|t[吞噬食尸鬼]（3）在一个|cRXP_ENEMY_Waste Scavenger|r上恢复生命值和法力
.complete 12498,1 
.mob Wastes Scavenger
.use 38302
step
.goto Dragonblight,54.36,31.16
>>施法|T135808:0|t[接火球]（2）击杀|cRXP_ENEMY_Thiassi the Lighting Bringer|r
>>|cRXP_WARN_等RP杀了他|r
>>Kill |cRXP_ENEMY_Grand Necrolord Antiok|r after he dismounts you
>>Loot the |cRXP_LOOT_Scythe of Antiok|r that drops on the ground
>>施法|T132278:0|t[吞噬食尸鬼]（3）在一个|cRXP_ENEMY_Waste Scavenger|r上恢复生命值和法力
.complete 12498,2 
.mob Thiassi the Lightning Bringer
.mob Grand Necrolord Antiok
.use 38302
step
#completewith next
.cast 50426 >>使用|T134124:0|t[龙女王的红宝石灯塔]召唤一个|cRXP_FRIENDLY_Wyrmrest Vanquisher|r
.use 38302
step
#completewith next
.vehicle >>安装|cRXP_FRIENDLY_Wyrmrest Vanquisher|r
.target Wyrmrest Vanquisher
.use 38302
.isOnQuest 12498
step
.loop 50,Dragonblight,54.77,32.99,54.12,33.58,53.52,34.71,53.63,35.42,54.60,36.18,55.06,37.07,55.92,36.00,57.82,35.82,58.39,34.86,57.84,33.30,57.48,32.02,54.77,32.99
>>施法|T135808:0|t[燃烧火球]（2）杀死|cRXP_ENEMY_Waste Scavengers|r。在食尸鬼近战范围内施法“虔诚食尸鬼”（3）以恢复生命值和法力。
>>施法|T132278:0|t[吞噬食尸鬼]（2）在一个|cRXP_ENEMY_Waste Scavenger|r上恢复生命值和法力
.complete 12498,1 
.mob Wastes Scavenger
.use 38302
step
.goto Dragonblight,59.84,54.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿莱克丝塔萨|r
.turnin 12498 >>交任务: |cRXP_FRIENDLY_红龙之翼|r
.accept 12499 >>接任务: |cRXP_LOOT_返回安加萨|r << Alliance
.accept 12500 >>接任务: |cRXP_LOOT_返回安加萨|r << Horde
.target Alexstrasza the Life-Binder
step << skip
#completewith next
.goto Dragonblight,59.51,53.33
.fly >>与|cRXP_FRIENDLY_Trastrasza|r通话，飞往怀尔姆雷斯特神庙基地
.target Torastrasza
.skipgossip 1
.skill coldweatherflying,1,1
step << skip
#completewith next
.goto Dragonblight,60.32,51.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟斯塔兹|r
.target Nethestrasz
.fly Fordragon >>飞到Fordragon Hold
.skill coldweatherflying,1,1

step << Alliance
.goto Dragonblight,37.80,23.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
.turnin 12499 >>交任务: |cRXP_FRIENDLY_返回安加萨|r
.target Highlord Bolvar Fordragon
step << skip
#completewith next
.goto Dragonblight,39.52,25.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德里克·拉米尔|r
.target Derek Rammel
.fly Wintergarde Keep >>飞到温特加德要塞
.skill coldweatherflying,1,1

step << Horde
.goto Dragonblight,40.71,18.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurfang|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
.turnin 12500 >>交任务: |cRXP_FRIENDLY_返回安加萨|r
.target Saurfang the Younger
step << Horde
.goto Dragonblight,38.41,19.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿莱克丝塔萨|r
.accept 13242 >>接任务: |cRXP_LOOT_黑暗的骚动|r
.target Alexstrasza the Life-Binder
step << Horde
.goto Dragonblight,38.16,18.70
>>地面上的战利品|cRXP_Loot_Saurfang的战甲|r
.complete 13242,1 
step << Horde !Mage
#completewith next
.hs >>达兰·赫斯
.zoneskip BoreanTundra
step << Horde !Mage
#completewith next
goto Dalaran,63.57,32.58,12,0
goto Dalaran,60.60,31.95,12,0
goto Dalaran,55.34,25.46
.zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
.isOnQuest 13242
step << Horde Mage
#completewith next
.cast 3567 >>演员阵容[电传：Orgrimmar]
.zoneskip Orgrimmar
step << Horde
.goto Orgrimmar,38.88,77.71,40,0
.goto Orgrimmar,41.70,74.14,40,0
.goto Orgrimmar,52.06,85.40,30,0
.goto Orgrimmar,52.25,88.76,20,0
.goto Orgrimmar,49.33,91.08,20,0
.goto Orgrimmar,48.42,95.10,20,0
.goto Durotar,44.38,13.67
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip BoreanTundra
.isOnQuest 13242
step << Horde
#completewith next
.goto Durotar,41.69,18.11,10,0
.goto Durotar,41.54,18.40,6,0
.goto Durotar,41.45,18.30,6,0
.goto Durotar,41.54,18.40,6,0
.goto Durotar,41.45,18.30,6,0
.goto Durotar,41.54,18.40,6,0
.goto Durotar,41.45,18.30,6,0
.goto Durotar,41.42,17.98,6 >>上齐柏林塔
step << Horde
.goto Durotar,41.42,17.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里布·拉姆罗克|r
.zone BoreanTundra >>电传至Warsong Hold
.target Greeb Ramrocket
.skipgossip
.isOnQuest 13242
step << Horde
.goto BoreanTundra,41.37,53.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurfang|r
>>|cRXP_FRIENDLY_Saurfang |r在Warsong Hold的底层
.turnin 13242 >>交任务: |cRXP_FRIENDLY_黑暗的骚动|r
.target High Overlord Saurfang
step << Horde
.goto BoreanTundra,41.59,53.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师克拉妮·嘉兰诺德|r
.accept 12791 >>接任务: |cRXP_LOOT_魔法王国达拉然|r
.zone Dalaran >>前往: |cRXP_PICK_达拉然|r
.target Magistrix Kaelana
.skipgossip
.isQuestAvailable 12791
.zoneskip BoreanTundra,1
step << Horde
#completewith next
.abandon 12791 >>放弃达拉然魔法王国
>>|cRXP_WARN_===不要交这个===|r
step
#completewith next
.zone ZulDrak >>前往: |cRXP_PICK_祖达克|r
step
.goto ZulDrak,42.69,48.53,45,0
.goto ZulDrak,42.39,41.83,45,0
.goto ZulDrak,41.15,47.42,45,0
.goto ZulDrak,39.18,44.84,45,0
.goto ZulDrak,38.21,41.78,45,0
.goto ZulDrak,42.69,48.53,45,0
.goto ZulDrak,42.39,41.83,45,0
.goto ZulDrak,41.15,47.42,45,0
.goto ZulDrak,39.18,44.84,45,0
.goto ZulDrak,38.21,41.78
>>杀死|cRXP_ENEMY_Sseratus的冠军|r和|cRXX_ENEMY_ Sseratus|r的牧师|r。掠夺他们的|T134810:0|t[|cRXD_Loot_Strange Mojo|r]
>>|cRXP_WARN_使用|T134810:0|t[|cRXP_LOOT_Strange Mojo|r]开始任务|r
.collect 38321,1,12507,1 
.accept 12507 >>接任务: |cRXP_LOOT_奇怪的魔精|r
.mob Champion of Sseratus
.mob Priest of Sseratus
.use 38321
step
.goto ZulDrak,40.52,65.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_妖术师乌布戈|r
.turnin 12507 >>交任务: |cRXP_FRIENDLY_奇怪的魔精|r
.accept 12510 >>接任务: |cRXP_LOOT_珍贵的元素液体|r
.target Hexxer Ubungo
step
.loop 50,ZulDrak,41.34,71.92,42.81,76.28,45.88,79.42,43.77,80.28,43.18,83.16,41.53,78.86,38.65,75.65,40.83,74.73,41.34,71.92
>>杀死|cRXP_ENEMY_Crazed Water Spirits|r。掠夺他们的|T135834:0|t[|cRXP-Loot_Water Elemental Links|r]
.collect 38323,3 
.isOnQuest 12510
step
.goto ZulDrak,42.16,77.60
>>将您的|T135834:0|t[|cRXP_LOOT_Water元素链接|r]转换为|T136039:0|t[|cRXP _PICK_Tether to the Plane of Water |r]
>>|cRXP_WARN_你必须这样做才能掠夺|r|T135834:0|t[|cRXP_loot_Water元素链接|r]|cRXP-WARN_again|r
.collect 38324,1 
.use 38323
.isOnQuest 12510
step
.goto ZulDrak,42.16,77.60
>>使用|T136039:0|t[|cRXP_PICK_Tether to the Plane of Water |r]召唤一位|cRXP-ENEMY_Watery Lord|r。杀死他。掠夺他获得|cRXP_Loot_贵元素流体|r
.collect 38324,1,12510,1,-1 
.complete 12510,1,1 
.mob Watery Lord
.use 38324
step
.loop 50,ZulDrak,41.34,71.92,42.81,76.28,45.88,79.42,43.77,80.28,43.18,83.16,41.53,78.86,38.65,75.65,40.83,74.73,41.34,71.92
>>杀死|cRXP_ENEMY_Crazed Water Spirits|r。掠夺他们的|T135834:0|t[|cRXP-Loot_Water Elemental Links|r]
.collect 38323,3 
.isOnQuest 12510
step
.goto ZulDrak,42.16,77.60
>>将您的|T135834:0|t[|cRXP_LOOT_Water元素链接|r]转换为|T136039:0|t[|cRXP _PICK_Tether to the Plane of Water |r]
>>|cRXP_WARN_你必须这样做才能掠夺|r|T135834:0|t[|cRXP_loot_Water元素链接|r]|cRXP-WARN_again|r
.collect 38324,1 
.use 38323
.isOnQuest 12510
step
.goto ZulDrak,42.16,77.60
>>使用|T136039:0|t[|cRXP_PICK_Tether to the Plane of Water |r]召唤一位|cRXP-ENEMY_Watery Lord|r。杀死他。掠夺他获得|cRXP_Loot_贵元素流体|r
.collect 38324,2,12510,1,-1 
.complete 12510,1,2 
.mob Watery Lord
.use 38324
step
.loop 50,ZulDrak,41.34,71.92,42.81,76.28,45.88,79.42,43.77,80.28,43.18,83.16,41.53,78.86,38.65,75.65,40.83,74.73,41.34,71.92
>>杀死|cRXP_ENEMY_Crazed Water Spirits|r。掠夺他们的|T135834:0|t[|cRXP-Loot_Water Elemental Links|r]
.collect 38323,3 
.isOnQuest 12510
step
.goto ZulDrak,42.16,77.60
>>将您的|T135834:0|t[|cRXP_LOOT_Water元素链接|r]转换为|T136039:0|t[|cRXP _PICK_Tether to the Plane of Water |r]
>>|cRXP_WARN_你必须这样做才能掠夺|r|T135834:0|t[|cRXP_loot_Water元素链接|r]|cRXP-WARN_again|r
.collect 38324,1 
.use 38323
.isOnQuest 12510
step
#label Fluid1
.goto ZulDrak,42.16,77.60
>>使用|T136039:0|t[|cRXP_PICK_Tether to the Plane of Water |r]召唤一位|cRXP-ENEMY_Watery Lord|r。杀死他。掠夺他获得|cRXP_Loot_贵元素流体|r
.collect 38324,3,12510,1,-1 
.complete 12510,1 
.mob Watery Lord
.use 38324
step
.goto ZulDrak,40.52,65.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_妖术师乌布戈|r
.turnin 12510 >>交任务: |cRXP_FRIENDLY_珍贵的元素液体|r
.accept 12514 >>接任务: |cRXP_LOOT_蘑菇混合剂|r
.target Hexxer Ubungo
step
.loop 40,ZulDrak,42.79,63.03,43.09,65.36,43.68,66.33,43.36,67.64,46.36,66.27,45.43,67.49,45.59,69.12,44.76,69.03,44.83,70.24,44.78,72.01,42.79,63.03
>>将|cRXP_Loot_Muddlecap真菌|r洗劫一空
.complete 12514,1 
step
.goto ZulDrak,40.52,65.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Ubungo|r
.turnin 12514 >>交任务: |cRXP_FRIENDLY_蘑菇混合剂|r
.accept 12516 >>接任务: |cRXP_LOOT_过犹不及|r
.target Hexxer Ubungo
step
#completewith next
.cast 50706 >>使用Sseratus|r的|cRXP_ENEMY_Prophet|r上的|T134731:0|t[修改的Mojo]将其转换为Sseratus的|cRXP_ENEMY_Muddled Prophet| r
.timer 5,Too Much of a Good Thing RP
.mob Prophet of Sseratus
.use 38332
step
.goto ZulDrak,40.46,42.52
>>|cRXP_WARN_等待RP|r
>>杀死Sseratus|r的|cRXP_ENEMY_Muddled先知
.complete 12516,1 
.mob Muddled Prophet of Sseratus
.use 38332
step
.goto ZulDrak,40.52,65.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Ubungo|r
.turnin 12516 >>交任务: |cRXP_FRIENDLY_过犹不及|r
.accept 12623 >>接任务: |cRXP_LOOT_巫医库弗|r
.target Hexxer Ubungo
step
.goto ZulDrak,60.04,56.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔卡|r
.fp Zim'Torga >>获取Zim'Torga飞行路线
.target Maaka
step
.goto ZulDrak,59.50,58.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医库弗|r
.turnin 12623 >>交任务: |cRXP_FRIENDLY_巫医库弗|r
.accept 12627 >>接任务: |cRXP_LOOT_横扫金亚莱|r
.target Witch Doctor Khufu
step
>>单击|cRXP_PICK_Cauldrons|r
.complete 12627,3 
.goto ZulDrak,57.62,61.73,-1
.complete 12627,4 
.goto ZulDrak,58.78,62.70,-1
.complete 12627,2 
.goto ZulDrak,55.68,64.32,-1
.complete 12627,1 
.goto ZulDrak,57.21,65.35,-1
step
.goto ZulDrak,59.50,58.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Khufu|r
.turnin 12627 >>交任务: |cRXP_FRIENDLY_横扫金亚莱|r
.accept 12628 >>接任务: |cRXP_LOOT_与哈克娅交谈|r
.target Witch Doctor Khufu
step
.goto ZulDrak,63.71,70.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈克娅|r
.turnin 12628 >>交任务: |cRXP_FRIENDLY_与哈克娅交谈|r
.accept 12632 >>接任务: |cRXP_LOOT_我的后裔|r
.target Har'koa
step
.loop 50,ZulDrak,64.47,69.12,65.29,68.10,64.09,67.15,64.09,65.16,62.72,65.24,62.63,67.29,61.63,68.48,60.36,68.09,61.92,70.69,61.38,72.30,63.01,71.67,64.47,69.12,65.29,68.10,64.09,67.15,64.09,65.16,62.72,65.24,62.63,67.29,61.63,68.48,60.36,68.09,61.92,70.69,61.38,72.30,63.01,71.67,64.47,69.12
>>杀死|cRXP_ENEMY_被诅咒的哈科后代|r。|cRXD_WARN_使用|r |T134324:0|t[哈科威士忌]|cRXP_WARN_在他们的尸体上|r
.complete 12632,1 
.mob Cursed Offspring of Har'koa
.use 38676
step
.goto ZulDrak,63.71,70.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈克娅|r
.turnin 12632 >>交任务: |cRXP_FRIENDLY_我的后裔|r
.accept 12642 >>接任务: |cRXP_LOOT_伦诺克之魂|r
.target Har'koa
step
.goto ZulDrak,53.39,39.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伦诺克之魂|r
.turnin 12642 >>交任务: |cRXP_FRIENDLY_伦诺克之魂|r
.accept 12646 >>接任务: |cRXP_LOOT_我的先知，我的敌人|r
.target Spirit of Rhunok
step
.goto ZulDrak,54.07,47.54
>>在水下杀死鲁诺克先知。抢劫他的|cRXP_Loot_Mojo|r
.complete 12646,1 
.mob Prophet of Rhunok
step
.goto ZulDrak,53.39,39.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伦诺克之魂|r
.turnin 12646 >>交任务: |cRXP_FRIENDLY_我的先知，我的敌人|r
.accept 12647 >>接任务: |cRXP_LOOT_结束痛苦|r
.target Spirit of Rhunok
step
#completewith next
.goto ZulDrak,53.38,35.79
>>杀死|cRXP_ENEMY_Rhunok的Tormentor|r。为他的|T132855:0|t[|cRXX_Loot_Tormentor's Incense|r]而掠夺他
.collect 38696,1,12647,1 
.mob Rhunok's Tormentor
step
#completewith next
.goto ZulDrak,53.50,34.45
.cast 51964 >>在|cRXP_ENEMY_Rhunok|r上使用|T132855:0|t[|cRXP-LOOT_Tormentor的熏香|r]
.timer 8,Rhunok RP
.target Rhunok
.use 38696
step
.goto ZulDrak,53.50,34.45
>>杀死|cRXP_ENEMY_Rhunok|r
.complete 12647,1 
.mob Rhunok
.use 38696
step
.goto ZulDrak,53.39,39.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伦诺克之魂|r
.turnin 12647 >>交任务: |cRXP_FRIENDLY_结束痛苦|r
.accept 12653 >>接任务: |cRXP_LOOT_返回哈克娅身边|r
.target Spirit of Rhunok
step
.goto ZulDrak,63.71,70.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈克娅|r
.turnin 12653 >>交任务: |cRXP_FRIENDLY_返回哈克娅身边|r
.accept 12665 >>接任务: |cRXP_LOOT_不祥的扰动|r
.target Har'koa
step
#completewith next
.goto ZulDrak,63.71,70.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 对话: |cRXP_FRIENDLY_哈克娅|r
.vehicle >>安装一只|cRXP_FRIENDLY_Har'koa的小猫|r
.target Har'koa
.skipgossip 28401,1
.timer 131,I Sense a Disturbance RP
step
.goto ZulDrak,63.71,70.42,0
.goto ZulDrak,75.79,58.45
>>|cRXP_WARN_等待RP|r
.complete 12665,1 
step
.goto ZulDrak,63.71,70.42
>>|cRXP_WARN_拆卸|r|cRXP_FRIENDLY_Har'koa的小猫|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'Koa|r
.turnin 12665 >>交任务: |cRXP_FRIENDLY_不祥的扰动|r
.accept 12666 >>接任务: |cRXP_LOOT_进入灵界的准备|r
.target Har'koa
step
.loop 50,ZulDrak,65.10,70.24,62.58,66.02,62.10,67.85,60.82,68.58,63.60,72.48,63.71,70.42,65.10,70.24
>>杀死|cRXP_ENEMY_Har'koan子英雄|r和|cRXD_ENEMY_ Har'koa之爪|r。掠夺他们的|cRXT_Loot_A饰|r
.complete 12666,1 
.mob Har'koan Subduer
.mob Claw of Har'koa
step
.goto ZulDrak,63.71,70.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈克娅|r
.turnin 12666 >>交任务: |cRXP_FRIENDLY_进入灵界的准备|r
.accept 12667 >>接任务: |cRXP_LOOT_寻找风蛇女神|r
.target Har'koa
]])
RXPGuides.RegisterGuide([[
#version 25
#wotlk
#group RestedXP Complexist指南
#name 英雄的象征2-风暴峰
#next 英雄徽章3-冰冠
step
#completewith next
.hs >>达兰·赫斯 << !Mage
.cast 53140 >>铸造|T237509:0|t[电报：Dalaran] << Mage
.zoneskip TheStormPeaks
.zoneskip Dalaran
step
#completewith next
.zone TheStormPeaks >>前往暴风峰
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔·斯巴索克|r, Gretchen, |cRXP_FRIENDLY_莉吉特|r
.accept 12818 >>接任务: |cRXP_LOOT_清理残骸|r
.goto TheStormPeaks,41.03,86.43
.accept 12843 >>接任务: |cRXP_LOOT_她们把男人都抓走了！|r
.goto TheStormPeaks,41.01,85.95,10,0
.goto TheStormPeaks,41.15,86.14
.accept 12827 >>接任务: |cRXP_LOOT_收集粮食|r
.accept 12836 >>接任务: |cRXP_LOOT_感激之情|r
.goto TheStormPeaks,40.93,85.30
.target Jeer Sparksocket
.target Gretchen Fizzlespark
.target Ricket
step
.loop 60,TheStormPeaks,40.18,87.59,39.78,88.32,38.70,87.45,39.66,86.86,38.86,84.78,39.61,84.65,40.18,87.59
>>将|cRXP_Loot_烧焦的残骸|r洗劫一空
.complete 12818,1 
step
.goto TheStormPeaks,41.03,86.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔·斯巴索克|r
.turnin 12818 >>交任务: |cRXP_FRIENDLY_清理残骸|r
.accept 12819 >>接任务: |cRXP_LOOT_雷区里的工具|r
step
.goto TheStormPeaks,35.09,87.79
>>飞到雷区中央
>>地面上的织机|cRXP_OOT_Sparksocket的工具|r
.complete 12819,1 

step
#completewith next
.goto TheStormPeaks,31.81,85.75,70,0
>>在地上掠夺|cRXP_Loot_干Gnoll口粮|r
>>杀死|cRXP_ENEMY_Savage Hill拾荒者|r、|cRXD_ENEMY_ Savage Hill神秘主义者|r和|cRXP_ENEMY_野蛮Hill野兽|r。掠夺他们的|cRXP_Loot_干Gnoll口粮|r
>>|cRXP_WARN_专注于从|r|cRXP_PICK_木箱中掠夺|cRXP-LOOT_干Gnoll口粮|r|r
.complete 12827,1 
.mob Savage Hill Scavenger
.mob Savage Hill Mystic
.mob Savage Hill Brute
step
.goto TheStormPeaks,30.38,85.65
>>杀死|cRXP_ENEMY_Gnarlhide |r
.complete 12836,1 
.mob Gnarlhide
step
.loop 50,TheStormPeaks,30.19,86.24,30.93,86.08,31.26,86.35,32.10,85.93,31.85,85.05,31.22,84.33,30.61,85.34,30.19,86.24
>>在地上掠夺|cRXP_Loot_干Gnoll口粮|r
>>杀死|cRXP_ENEMY_Savage Hill拾荒者|r、|cRXD_ENEMY_ Savage Hill神秘主义者|r和|cRXP_ENEMY_野蛮Hill野兽|r。掠夺他们的|cRXP_Loot_干Gnoll口粮|r
>>|cRXP_WARN_专注于从|r|cRXP_PICK_木箱中掠夺|cRXP-LOOT_干Gnoll口粮|r|r
.complete 12827,1 
.mob Savage Hill Scavenger
.mob Savage Hill Mystic
.mob Savage Hill Brute
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔·斯巴索克|r, |cRXP_FRIENDLY_莉吉特|r
.turnin 12819 >>交任务: |cRXP_FRIENDLY_雷区里的工具|r
.accept 12826 >>接任务: |cRXP_LOOT_新型地雷|r
.goto TheStormPeaks,41.03,86.43
.turnin 12826 >>交任务: |cRXP_FRIENDLY_新型地雷|r
.accept 12820 >>接任务: |cRXP_LOOT_亲密接触|r
.turnin 12827 >>交任务: |cRXP_FRIENDLY_收集粮食|r
.turnin 12836 >>交任务: |cRXP_FRIENDLY_感激之情|r
.accept 12828 >>接任务: |cRXP_LOOT_突发奇想|r
.goto TheStormPeaks,40.93,85.30
.target Jeer Sparksocket
.target Ricket
step
#completewith next
.goto TheStormPeaks,40.75,84.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯克兹尔·斯莱德|r
.fp K3 >>获取K3飞行路线
.target Skizzle Slickslide
step
.goto TheStormPeaks,43.4,82.3
>>使用|T134954:0|t[改良地雷]杀死|cRXP_ENEMY_Snowdblind追随者|r和|cRXX_ENEMY_Garm攻击者|r
>>你也可以在没有|T134954:0|t[改良地雷]的情况下杀死他们
>>|cRXP_WARN_|cRXP_ENEMY_Snowdblind追随者|r和|cRXP_ENEMY_Garm攻击者|r不会攻击你，即使你攻击他们|r
.complete 12820,1 
.mob Snowblind Follower
.mob Garm Invader
.use 40676
step
.pin The Storm Peaks,41.63,80.01,Use the U.D.E.D. Dispenser next to |cRXP_FRIENDLY_Tore Rumblewrench|r
.waypoint The Storm Peaks,41.63,80.01,0,bombdispenser,BAG_UPDATE_DELAYED
.goto TheStormPeaks,37.63,83.85,60,0
.goto TheStormPeaks,35.97,83.22
>>|cRXP_WARN_点击|cRXP_PICK_U.D.E.D.点胶器|r获得|r|T133712:0|t[U.DE.D.]
>>|cRXP_WARN_如果不在45秒内使用，|r|T133712:0|t[U.D.E.D.]|cRXP_WARN_将在您的包中爆炸|r
>>|cRXP_WARN_使用|r|T133712:0|t[U.D.E.D.]|cRXP_WARN_on和|r|cRXP-ENEMY_Ironwool Mammoth|r
>>打开|cRXP_PICK_Mammoth Carcas|r，然后打开地上的|cRXP-PICK_Mammath Meat|r。为|cRXP_Loot_Hearty Mammoth Meat|r掠夺它
.collect 40686,1,12828,1,1 
.complete 12828,1 
.mob Ironwool Mammoth
.use 40686
.skipgossip
.isOnQuest 12828
step
#completewith next
.goto TheStormPeaks,40.47,77.77,50 >>Enter the Cave
step
#completewith next
.goto TheStormPeaks,41.37,74.16,30,0
.goto TheStormPeaks,41.91,74.28,30,0
.goto TheStormPeaks,42.31,73.97,20 >>前往|cRXP_FRIENDLY_受伤的哥布林矿工|r
step
.goto TheStormPeaks,42.31,73.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_受伤的地精矿工|r
.accept 12831 >>接任务: |cRXP_LOOT_未被遗忘|r
.target Injured Goblin Miner
step
#completewith next
.goto TheStormPeaks,43.10,74.24,20,0
.goto TheStormPeaks,45.96,73.72,25,0
.goto TheStormPeaks,47.13,73.28,20,0
.goto TheStormPeaks,47.06,71.83,50 >>前往|cRXP_ENEMY_Icetip爬行器|r
step
.goto TheStormPeaks,47.06,71.83,40,0
.goto TheStormPeaks,47.75,70.50
>>杀死一个|cRXP_ENEMY_Icetip Crawler|r。为|cRXD_Loot_ Icetip Venom Sach|r掠夺它
.complete 12831,1 
.mob Icetip Crawler
step
#completewith next
.goto TheStormPeaks,47.13,73.28,20,0
.goto TheStormPeaks,45.96,73.72,25,0
.goto TheStormPeaks,43.10,74.24,20,0
.goto TheStormPeaks,42.31,73.97,20 >>前往|cRXP_FRIENDLY_受伤的哥布林矿工|r
step
.goto TheStormPeaks,42.31,73.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_受伤的地精矿工|r
.turnin 12831 >>交任务: |cRXP_FRIENDLY_未被遗忘|r
.accept 12832 >>接任务: |cRXP_LOOT_痛苦的离别|r
.target Injured Goblin Miner
step
.goto TheStormPeaks,42.31,73.97
.gossipoption 93378 >>对话: |cRXP_FRIENDLY_受伤的地精矿工|r
.target Injured Goblin Miner
.skipgossip
.isOnQuest 12832
step
.goto TheStormPeaks,40.48,74.35,30,0
.goto TheStormPeaks,40.24,74.96,30,0
.goto TheStormPeaks,40.20,78.98
>>Escort the |cRXP_FRIENDLY_Injured Goblin Miner|r out of the Cave
>>|cRXP_WARN_Make sure you stay close to the |cRXP_FRIENDLY_Injured Goblin Miner|r or you might not complete the objective|r
.complete 12832,1 
.target Injured Goblin Miner
step
.loop 30,TheStormPeaks,39.47,72.24,39.27,72.74,39.47,72.24,39.79,73.16,41.77,74.33,41.68,73.42,41.53,72.30,41.64,70.25,41.40,70.67,40.74,69.24,41.02,71.42,40.67,71.41,39.47,72.24
>>|cRXP_WARN_飞到Sifreldar村|r
>>杀死|cRXP_ENEMY_Sifreldar风暴少女|r|cRXX_ENEMY_Sifreldar Runekeepers|r。掠夺她们的|T134239:0|t[|cRXD_Loot_冷铁钥匙|r]
>>使用|cRXP_FRIENDLY_Goblin Prisoner|r笼子上的|T134239:0|t[|cRXP-LOOT_冷铁钥匙|r]
.collect 40641,5,12843,1,-1
.complete 12843,1 
.target Goblin Prisoner
.mob Sifreldar Storm Maiden
.mob Sifreldar Runekeeper
step
.goto TheStormPeaks,40.93,85.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉吉特|r
.turnin 12820 >>交任务: |cRXP_FRIENDLY_亲密接触|r
.turnin 12828 >>交任务: |cRXP_FRIENDLY_突发奇想|r
.turnin 12832 >>交任务: |cRXP_FRIENDLY_痛苦的离别|r
.accept 12821 >>接任务: |cRXP_LOOT_牢门探戈|r
.target Ricket
step
.goto TheStormPeaks,45.12,82.38
>>将|T237030:0|t[|cRXP_Loot_Transporter Power Cell|r]洗劫一空
.complete 12821,1 
step
.goto TheStormPeaks,50.69,81.90
>>在|cRXP_PICK_Teleportation Pad |r处使用|T237030:0|t[|cRXP-LOOT_Transporter Power Cell|r]
.complete 12821,2 
.use 40731
step
.goto TheStormPeaks,40.93,85.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉吉特|r
.turnin 12821 >>交任务: |cRXP_FRIENDLY_牢门探戈|r
.accept 12822 >>接任务: |cRXP_LOOT_无所畏惧|r
.target Ricket
step
#completewith next
.goto TheStormPeaks,41.02,85.31
.goto TheStormPeaks,50.56,81.88,15 >>|cRXP_WARN_撞上K3 Teleporter|r
step
.goto TheStormPeaks,50.48,81.66,7,0
.goto TheStormPeaks,49.99,81.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉诺|r
.accept 12823 >>接任务: |cRXP_LOOT_完美的计划|r
.target Gino
step
#completewith Tormar
#label FrostCave
.goto TheStormPeaks,48.36,80.79,50 >>进入洞穴
step
#requires FrostCave
#completewith Tormar
.goto TheStormPeaks,49.06,78.73,15,0
.goto TheStormPeaks,49.80,79.16,20,0
.goto TheStormPeaks,50.28,78.62,20,0
.goto TheStormPeaks,50.38,78.08,20,0
.goto TheStormPeaks,50.24,77.65,20,0
.goto TheStormPeaks,49.26,77.62,20 >>沿着洞穴向上行进，前往|cRXP_PICK_Frostgut祭坛|r
step
#completewith Tormar
.goto TheStormPeaks,49.7,78.3,0,0
>>杀死|cRXP_ENEMY_Garm守望者|r和|cRXX_ENEMY_Snowbind Devotes|r
.complete 12822,1 
.complete 12822,2 
.mob Garm Watcher;Snowblind Devotee
step
.goto TheStormPeaks,49.19,78.18,20,0
.goto TheStormPeaks,49.43,78.83,20,0
.goto TheStormPeaks,50.13,78.82,20,0
.goto TheStormPeaks,50.51,77.75
>>使用|cRXP_PICK_Frostgut祭坛|r处的|T133713:0|t[硬装炸药束]
.complete 12823,1 
.use 41431
step
#label Tormar
.goto TheStormPeaks,50.17,79.08
>>杀死|cRXP_ENEMY_Tormar|r
.complete 12823,2 
.mob Tormar Frostgut
step
>>杀死|cRXP_ENEMY_Garm守望者|r和|cRXX_ENEMY_Snowbind Devotes|r
.complete 12822,1 
.goto TheStormPeaks,48.9,78.7,40,0
.goto TheStormPeaks,48.8,79.8
.complete 12822,2 
.goto TheStormPeaks,50.1,80.0,50,0
.goto TheStormPeaks,50.7,78.7
.mob Garm Watcher;Snowblind Devotee
step
.goto TheStormPeaks,50.48,81.66,7,0
.goto TheStormPeaks,49.99,81.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉诺|r
.turnin 12823 >>交任务: |cRXP_FRIENDLY_完美的计划|r
.accept 12824 >>接任务: |cRXP_LOOT_杰出的爆破专家|r
.target Gino
step
#completewith next
.goto TheStormPeaks,50.68,81.91
.goto TheStormPeaks,40.99,85.36,15 >>|cRXP_WARN_跑进加姆崛起的搬运工|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉吉特|r, Gretchen
.turnin 12822 >>交任务: |cRXP_FRIENDLY_无所畏惧|r
.turnin 12824 >>交任务: |cRXP_FRIENDLY_杰出的爆破专家|r
.goto TheStormPeaks,40.93,85.30
.turnin 12843 >>交任务: |cRXP_FRIENDLY_她们把男人都抓走了！|r
.accept 12846 >>接任务: |cRXP_LOOT_一个地精也不能少|r
.goto TheStormPeaks,41.15,86.14
.target Ricket
.target Gretchen Fizzlespark
step << Alliance
#completewith next
.goto TheStormPeaks,29.61,74.07,50 >>Fly up to Frosthold
step << Alliance !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家安多林|r, |cRXP_FRIENDLY_拉格努斯|r, |cRXP_FRIENDLY_格罗萨·硬须|r, |cRXP_FRIENDLY_弗亚林·霜眉|r
.accept 12854 >>接任务: |cRXP_LOOT_布莱恩的踪迹|r
.goto TheStormPeaks,29.61,74.07
.accept 12863 >>接任务: |cRXP_LOOT_表示感谢|r
.goto TheStormPeaks,29.40,73.76
.turnin 12863 >>交任务: |cRXP_FRIENDLY_表示感谢|r
.accept 12864 >>接任务: |cRXP_LOOT_失踪的斥候|r
.goto TheStormPeaks,29.18,74.91
.accept 12865 >>接任务: |cRXP_LOOT_忠诚的伙伴|r
.goto TheStormPeaks,29.83,75.72
.target Archaeologist Andorin
.target Lagnus
.target Glorthal Stiffbeard
.target Fjorlin Frostbrow
step << Alliance Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家安多林|r, |cRXP_FRIENDLY_拉格努斯|r
.accept 12854 >>接任务: |cRXP_LOOT_布莱恩的踪迹|r
.goto TheStormPeaks,29.61,74.07
.accept 12863 >>接任务: |cRXP_LOOT_表示感谢|r
.goto TheStormPeaks,29.40,73.76
.target Archaeologist Andorin
.target Lagnus
step << Alliance Mage
#completewith next
.goto TheStormPeaks,28.71,74.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古达·硬锤|r
.home >>将你的炉石设置为冰封
.target Gunda Boldhammer
step << Alliance Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗萨·硬须|r, |cRXP_FRIENDLY_弗亚林·霜眉|r
.turnin 12863 >>交任务: |cRXP_FRIENDLY_表示感谢|r
.accept 12864 >>接任务: |cRXP_LOOT_失踪的斥候|r
.goto TheStormPeaks,29.18,74.91
.accept 12865 >>接任务: |cRXP_LOOT_忠诚的伙伴|r
.goto TheStormPeaks,29.83,75.72
.target Glorthal Stiffbeard
.target Fjorlin Frostbrow
step << Alliance
#completewith next
.goto TheStormPeaks,29.50,74.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_WARN_法尔多弗·冷寒|r
.fp Frosthold >>获取霜舱飞行路径
.target Faldorf Bitterchill
step << Alliance
.goto TheStormPeaks,34.56,64.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霜脉斥候|r
.complete 12864,1 
.target Frostborn Scout
.skipgossip
step << Horde Mage
#completewith next
.goto TheStormPeaks,37.12,49.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苦工加克拉|r
.home >>将你的炉石设置为Grom'arsh坠机地点
.target Peon Gakra
step << Horde
.goto TheStormPeaks,37.31,49.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯克塔·血怒|r
.accept 12895 >>接任务: |cRXP_LOOT_失踪的布莱恩·铜须|r
.target Boktar Bloodfury
step
.goto TheStormPeaks,36.06,64.13
>>打开地面上的|cRXP_PICK_扰动雪|r。为|cRXP_Loot_Burlap-Wrapped Note|r抢劫它
.complete 12854,1 << Alliance 
.complete 12895,1 << Horde 
step << Horde
.goto TheStormPeaks,37.31,49.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯克塔·血怒|r
.turnin 12895 >>交任务: |cRXP_FRIENDLY_失踪的布莱恩·铜须|r
.accept 12909 >>接任务: |cRXP_LOOT_敏锐的嗅觉|r
.target Boktar Bloodfury
step << Horde
.goto TheStormPeaks,40.77,51.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔莉丝|r
.turnin 12909 >>交任务: |cRXP_FRIENDLY_敏锐的嗅觉|r
.accept 12910 >>接任务: |cRXP_LOOT_追踪罪犯|r
.target Khaliisi
step << Horde
#completewith next
.goto TheStormPeaks,40.75,51.22
.vehicle >>装载|cRXP_FRIENDLY_Frosbite|r
.timer 83,Perpetrator RP
.target Frostbite
step << Horde
.goto TheStormPeaks,48.02,60.98
>>在|cRXP_ENEMY_Stormformed钱包|r上铸造|T132149:0|t[铸造网]以使其联网
>>铸造|T135848:0|t[冰裂缝]变慢|cRXP_ENEMY_Stormformed Pursuers|r
>>|cRXP_WARN_等待RP|r
.complete 12910,1 
.mob Stormforged Pursuer
step << Horde
.goto TheStormPeaks,48.56,60.82
>>杀死|cRXP_ENEMY_Tracker Thulin|r。掠夺他|T133866:0|t[|cRXP-Loot_Brann的通信器|r]
.complete 12910,2 
.collect 40971,1,12913,1 
.mob Tracker Thulin
step << Horde
#completewith next
.cast 61122 >>使用|T133866:0|t[|cRXP_LOOT_Brann的通信器|r]
.use 40971
step << Horde
.goto TheStormPeaks,48.56,60.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r
.turnin 12910 >>交任务: |cRXP_FRIENDLY_追踪罪犯|r
.accept 12913 >>接任务: |cRXP_LOOT_讲兽人语会死吗？|r
.target Brann Bronzebeard
.use 40971
step << Alliance
.loop 60,TheStormPeaks,42.75,59.21,43.60,55.09,45.71,56.29,45.81,59.89,45.45,62.73,42.75,59.21
>>杀死|cRXP_ENEMY_冰草原犀牛|r和|cRXX_ENEMY_冰草原公牛|r。掠夺它们的|cRXD_Loot_新鲜冰犀牛肉|r
.collect 41340,8,12865,1 
.mob Ice Steppe Rhino;Ice Steppe Bull
step
#completewith next
.goto TheStormPeaks,42.10,69.50,60 >>Enter The Forlorn Mine
step
.goto TheStormPeaks,42.84,69.09,15,0
.goto TheStormPeaks,42.80,68.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女巫洛莉拉|r
.turnin 12846 >>交任务: |cRXP_FRIENDLY_一个地精也不能少|r
.accept 12841 >>接任务: |cRXP_LOOT_女巫的交易|r
.target Lok'lira the Crone
step
.goto TheStormPeaks,43.84,68.86,25,0
.goto TheStormPeaks,44.13,67.86,30,0
.goto TheStormPeaks,44.27,67.22,30,0
.goto TheStormPeaks,44.09,70.13,30,0
.goto TheStormPeaks,44.19,70.52,20,0
.goto TheStormPeaks,45.06,71.23,20,0
.goto TheStormPeaks,44.13,67.86,30,0
.goto TheStormPeaks,44.27,67.22,30,0
.goto TheStormPeaks,44.09,70.13,30,0
.goto TheStormPeaks,44.19,70.52,20,0
.goto TheStormPeaks,45.06,71.23,20,0
.goto TheStormPeaks,44.27,67.22
>>杀死|cRXP_ENEMY_Oversear Syra|r。掠夺她获得Yrkvinn|r的|cRXX_Loot_符文
.complete 12841,1 
.mob Overseer Syra
step
.goto TheStormPeaks,42.80,68.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女巫洛莉拉|r
.turnin 12841 >>交任务: |cRXP_FRIENDLY_女巫的交易|r
.accept 12905 >>接任务: |cRXP_LOOT_残酷的米尔德蕾|r
.target Lok'lira the Crone
step
#completewith next
.goto TheStormPeaks,44.84,68.49,20 >>走上楼梯到达|cRXP_FRIENDLY_Mildred|r
step
.goto TheStormPeaks,44.39,68.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mildred|r
.turnin 12905 >>交任务: |cRXP_FRIENDLY_残酷的米尔德蕾|r
.accept 12906 >>接任务: |cRXP_LOOT_训诫|r
.target Mildred the Cruel
step
.goto TheStormPeaks,44.92,67.08,20,0
.goto TheStormPeaks,44.76,70.33,20,0
.goto TheStormPeaks,44.37,71.00,20,0
.goto TheStormPeaks,44.48,70.61,20,0
.goto TheStormPeaks,45.13,71.00,20,0
.goto TheStormPeaks,44.02,70.12,15,0
.goto TheStormPeaks,43.68,70.05,20,0
.goto TheStormPeaks,44.05,68.17,20,0
.goto TheStormPeaks,44.37,66.84,20,0
.goto TheStormPeaks,44.92,67.08,20,0
.goto TheStormPeaks,44.76,70.33,20,0
.goto TheStormPeaks,44.37,71.00,20,0
.goto TheStormPeaks,44.48,70.61,20,0
.goto TheStormPeaks,45.13,71.00,20,0
.goto TheStormPeaks,44.02,70.12,15,0
.goto TheStormPeaks,43.68,70.05,20,0
.goto TheStormPeaks,44.05,68.17,20,0
.goto TheStormPeaks,44.37,66.84
>>在|cRXP_ENEMY_Exhausted Vrykul|r上使用|T135147:0|t[|cRXD_LOOT_Procining Rod|r]
.complete 12906,1 
.mob Exhausted Vrykul
.use 42837
step
.goto TheStormPeaks,44.39,68.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mildred|r
.turnin 12906 >>交任务: |cRXP_FRIENDLY_训诫|r
.accept 12907 >>接任务: |cRXP_LOOT_杀一儆百|r
.target Mildred the Cruel
step
.goto TheStormPeaks,45.26,68.87,15,0
.goto TheStormPeaks,45.41,69.10
>>杀死|cRXP_ENEMY_Garhal|r
.complete 12907,1 
.mob Garhal
step
.goto TheStormPeaks,44.39,68.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mildred|r
.turnin 12907 >>交任务: |cRXP_FRIENDLY_杀一儆百|r
.accept 12908 >>接任务: |cRXP_LOOT_特殊的囚犯|r
.target Mildred the Cruel
step
.goto TheStormPeaks,42.80,68.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女巫洛莉拉|r
.turnin 12908 >>交任务: |cRXP_FRIENDLY_特殊的囚犯|r
.accept 12921 >>接任务: |cRXP_LOOT_改头换面|r
.target Lok'lira the Crone
step
#completewith next
.goto TheStormPeaks,41.80,69.62,30 >>Exit The Forlorn Mine
step
#completewith next
.goto TheStormPeaks,47.47,69.09,30 >>飞往Brunnhildar村
step
.goto TheStormPeaks,47.47,69.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女巫洛莉拉|r
.turnin 12921 >>交任务: |cRXP_FRIENDLY_改头换面|r
.accept 12969 >>接任务: |cRXP_LOOT_这是你的地精吗？|r
.target Lok'lira the Crone
step
#completewith next
.goto TheStormPeaks,48.25,69.77
.gossipoption 93533 >>对话: |cRXP_FRIENDLY_安格妮塔·泰斯多达尔|r
.target Agnetta Tyrsdottar
.skipgossip
step
.goto TheStormPeaks,48.25,69.77
>>杀死|cRXP_ENEMY_Agnetta Tyrsdottar|r
.complete 12969,1 
.mob Agnetta Tyrsdottar
step
.goto TheStormPeaks,47.47,69.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女巫洛莉拉|r
.turnin 12969 >>交任务: |cRXP_FRIENDLY_这是你的地精吗？|r
.accept 12970 >>接任务: |cRXP_LOOT_海德比武会|r
.complete 12970,1 
.skipgossip 29975,1
.turnin 12970 >>交任务: |cRXP_FRIENDLY_海德比武会|r
.accept 12971 >>接任务: |cRXP_LOOT_迎接挑战者|r
step
.loop 40,TheStormPeaks,47.96,70.48,48.25,70.15,50.33,68.62,50.45,68.32,50.42,67.54,51.19,66.86,51.49,66.65,51.55,66.04,51.15,65.44,51.02,66.39,49.92,66.78,47.96,70.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Victorious Challengers|r to turn them hostile
>>杀死|cRXP_ENEMY_获胜挑战者|r
.complete 12971,1 
.mob Victorious Challenger
.skipgossip
step
.goto TheStormPeaks,47.47,69.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女巫洛莉拉|r
.turnin 12971 >>交任务: |cRXP_FRIENDLY_迎接挑战者|r
.accept 12972 >>接任务: |cRXP_LOOT_你需要一头熊|r
step
.goto TheStormPeaks,53.14,65.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莉亚娜|r
.turnin 12972 >>交任务: |cRXP_FRIENDLY_你需要一头熊|r
.accept 12851 >>接任务: |cRXP_LOOT_熊熊大作战|r
step
#completewith next
.goto The Storm Peaks,53.12,65.61
.vehicle >>装载|cRXP_FRIENDLY_Icefang|r
.target Icefang
step
.goto TheStormPeaks,53.1,65.6,0
.goto TheStormPeaks,57.4,63.0
>>|cRXP_WARN_铸造|r|T135825:0|t[火焰之箭]（1）|cRXP_WARN_to burn|cRXP_ENEMY_Frostworgs|r和|r|cRXD_ENEMY_Frost Giants|r
>>|cRXP_WARN_DON’T投射|r|T132276:0|T[速度爆发]（2）
>>|cRXP_WARN_专注于达到所有目标|r
>>|cRXP_WARN_如果下马后没有完成，请再次装入|cRXP_FRONDLY_Icefang|r|r
.complete 12851,1 
.complete 12851,2 
.mob Frostworg
.mob Niffelem Frost Giant
step
.goto TheStormPeaks,53.14,65.72
>>|cRXP_WARN_铸造|r|T132276:0|t[速度爆发]（2）|cRXP_WARN_to to get back to |cRXP-FRIENDLY_Brijana|r faster|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莉亚娜|r
.turnin 12851 >>交任务: |cRXP_FRIENDLY_熊熊大作战|r
.accept 12856 >>接任务: |cRXP_LOOT_冰冷的心|r
.target Brijana
step
#completewith next
.goto TheStormPeaks,63.20,62.88,100 >>飞往Dun Niffelem
step
#completewith next
.goto TheStormPeaks,63.20,62.88
.vehicle >>装载|cRXP_FRIENDLY_Captive Proto Drake|r
.target Captive Proto-Drake
step
.waypoint TheStormPeaks,53.10,65.70,0,niffelen,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
.goto The Storm Peaks,66.75,60.63
>>铸造|T135844:0|t[冰碎片]（1）靠近|cRXP_FRIENDLY_Brunnhildar囚犯|r冻结在冰块中以释放他们
>>当您的|cRXP_FRIENDLY_Captive Proto Drake|r上有三名|cRXP_FRIENDLY_Brunnhildar囚犯|r时，返回Brunnhildar
>>|cRXP_WARN_确保在你因营救|cRXP_FRIENDLY_Brunnhildar Prisons|r而获得荣誉后飞回Dun Niffelem，因为它在将你卸下之前有一个小延迟|r
.complete 12856,1,3 
.complete 12856,2,1 
.target Brunnhildar Prisoner
step
#completewith next
.goto TheStormPeaks,63.20,62.88
.vehicle >>装载|cRXP_FRIENDLY_Captive Proto Drake|r
.target Captive Proto-Drake
step
.waypoint TheStormPeaks,53.10,65.70,0,niffelen,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
.goto The Storm Peaks,66.75,60.63
>>铸造|T135844:0|t[冰碎片]（1）靠近|cRXP_FRIENDLY_Brunnhildar囚犯|r冻结在冰块中以释放他们
>>当您的|cRXP_FRIENDLY_Captive Proto Drake|r上有三名|cRXP_FRIENDLY_Brunnhildar囚犯|r时，返回Brunnhildar
>>|cRXP_WARN_确保在你因营救|cRXP_FRIENDLY_Brunnhildar Prisons|r而获得荣誉后飞回Dun Niffelem，因为它在将你卸下之前有一个小延迟|r
.complete 12856,1,6 
.complete 12856,2,2 
.target Brunnhildar Prisoner
step
#completewith next
.goto TheStormPeaks,63.20,62.88
.vehicle >>装载|cRXP_FRIENDLY_Captive Proto Drake|r
.target Captive Proto-Drake
step
.waypoint TheStormPeaks,53.10,65.70,0,niffelen,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
.goto The Storm Peaks,66.75,60.63
>>铸造|T135844:0|t[冰碎片]（1）靠近|cRXP_FRIENDLY_Brunnhildar囚犯|r冻结在冰块中以释放他们
>>当您的|cRXP_FRIENDLY_Captive Proto Drake|r上有三名|cRXP_FRIENDLY_Brunnhildar囚犯|r时，返回Brunnhildar
.complete 12856,1 
.complete 12856,2 
.target Brunnhildar Prisoner
step
.goto TheStormPeaks,53.14,65.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莉亚娜|r
.turnin 12856 >>交任务: |cRXP_FRIENDLY_冰冷的心|r
.accept 13063 >>接任务: |cRXP_LOOT_证明价值|r
.target Brijana
step
.goto TheStormPeaks,49.75,71.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid|r
.turnin 13063 >>交任务: |cRXP_FRIENDLY_证明价值|r
.accept 12900 >>接任务: |cRXP_LOOT_制造挽具|r
.target Astrid Bjornrittar
step
.loop 50,TheStormPeaks,48.26,74.22,48.46,75.59,48.75,77.40,48.20,76.73,47.30,75.86,47.09,78.16,46.68,76.89,46.36,76.35,45.89,75.63,44.41,73.79,46.01,74.20,46.79,74.70,48.26,74.22
>>杀死|cRXP_ENEMY_Icemane Yetis|r。掠夺它们|cRXD_Loot_Icemane Yeti隐藏|r
.complete 12900,1 
.mob Icemane Yeti
step
.goto TheStormPeaks,49.75,71.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid|r
.turnin 12900 >>交任务: |cRXP_FRIENDLY_制造挽具|r
.accept 12983 >>接任务: |cRXP_LOOT_最后的母熊|r
.target Astrid Bjornrittar
step
#completewith next
.goto TheStormPeaks,55.80,63.82,30 >>进入冬眠洞穴
step << skip
.goto TheStormPeaks,54.8,60.4
>>杀死洞穴中的|cRXP_ENEMY_Jormungar|r
>>|cRXP_WARN_请勿在洞穴中间乘坐|r|cRXP_FRIENDLY_Injured Icemaw Matriarch|r|cRXP_WARN_in|r
.complete 12989,1 
.mob Ravenous Jormungar
step
#completewith next
.goto TheStormPeaks,55.66,62.13,25,0
.goto TheStormPeaks,54.79,60.37
.vehicle >>安装|cRXP_FRIENDLY_Injured Icemaw矩阵|r
.timer 69,The Last of Her Kind RP
.target Injured Icemaw Matriarch
step
.goto TheStormPeaks,49.82,71.12
>>|cRXP_WARN_等待RP|r
>>乘坐|cRXP_FRIENDLY_Injured Icemaw Matriarch|r返回Brunnhildar
.complete 12983,1 
step
.goto TheStormPeaks,49.75,71.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid|r
.turnin 12983 >>交任务: |cRXP_FRIENDLY_最后的母熊|r
.accept 12996 >>接任务: |cRXP_LOOT_热身赛|r
.target Astrid Bjornrittar
step
.goto TheStormPeaks,50.79,67.68,70 >>前往|cRXP_ENEMY_Kirgaraak|r
.mob Kirgaraak
.isOnQuest 12996
step
#completewith next
.goto TheStormPeaks,50.79,67.68
.vehicle >>|cRXP_WARN_使用|r|T236245:0|t[Warbear Matriarch]|cRXP_WARN_to安装|r
.use 42481
step
.goto TheStormPeaks,50.79,67.68
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_Kirgaraak|r|cRXP_WARN_hilst挂载|r
>>|cRXP_WARN_施法|r|T132131:0|t[Maul]（4）|cRXP_WARN_造成伤害|r
>>|cRXP_WARN_施法|r|T132143:0|t[Smash]（5）|cRXP_WARN_then|r|T132337:0|t[Charge]（6）|cRXP_WARN_to造成更多伤害|r
.complete 12996,1 
.mob Kirgaraak
.use 42481
step
.goto TheStormPeaks,49.75,71.81
>>|cRXP_WARN_卸载|r|cRXP_FRIENDLY_Warbear矩阵|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid|r
.turnin 12996 >>交任务: |cRXP_FRIENDLY_热身赛|r
.accept 12997 >>接任务: |cRXP_LOOT_进入利齿之坑|r
.target Astrid Bjornrittar
step
#completewith next
.goto TheStormPeaks,50.79,67.68
.vehicle >>|cRXP_WARN_使用|r|T236245:0|t[Warbear Matriarch]|cRXP_WARN_to安装|r
.use 42499
step
.goto TheStormPeaks,49.24,68.46
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_Hyldsmeet Warbears|r
>>|cRXP_WARN_施法|r|T132131:0|t[Maul]（4）|cRXP_WARN_造成伤害|r
>>|cRXP_WARN_施法|r|T132143:0|t[Smash]（5）|cRXP_WARN_then|r|T132337:0|t[Charge]（6）|cRXP_WARN_to造成更多伤害|r
>>|cRXP_WARN_确保你对一只|cRXP_ENEMY_Hyldsmeet Warbear|r造成50%或更多的伤害以获得积分|r
.complete 12997,1 
.mob Hyldsmeet Warbear
.use 42499
step
.goto TheStormPeaks,49.75,71.81
>>|cRXP_WARN_卸载|r|cRXP_FRIENDLY_Warbear矩阵|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid|r
.turnin 12997 >>交任务: |cRXP_FRIENDLY_进入利齿之坑|r
.accept 13061 >>接任务: |cRXP_LOOT_为荣耀而战|r
.target Astrid Bjornrittar
step
.goto TheStormPeaks,47.47,69.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女巫洛莉拉|r
.turnin 13061 >>交任务: |cRXP_FRIENDLY_为荣耀而战|r
.accept 13062 >>接任务: |cRXP_LOOT_洛莉拉的离别赠礼|r
step
.goto TheStormPeaks,50.88,65.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretta|r
.turnin 13062 >>交任务: |cRXP_FRIENDLY_洛莉拉的离别赠礼|r
.accept 12886 >>接任务: |cRXP_LOOT_驭龙赛|r
.timer 80,The Drakkensryd Flight
step
#completewith next
>>|cRXP_WARN_等待RP|r
.goto TheStormPeaks,31.89,53.35,40 >>乘坐|cRXP_FRIENDLY_Hyldsmeet Proto Drake|r飞往风暴神庙
step
.goto TheStormPeaks,35.4,57.8
>>使用|T135127:0|t[Hyldnir Harpoon]跳到上面有|cRXP_ENEMY_Hyldsmeet Drakerider|r的|cRXP_FRIENDLY_Hyldsmeet Proto Drakes|r上
>>杀死|cRXP_ENEMY_Hyldsmeet Drakeriders|r
>>|cRXP_WARN_确保您的设置中启用了“游戏->战斗->目标对目标”，这样您就可以通过|cRXP_ENEMY_Hyldsmeet Drakerider|r的目标窗口查看您的健康状况|r
.complete 12886,1 
.mob Hyldsmeet Drakerider
.use 41058
step
#completewith next
.goto TheStormPeaks,33.42,57.95,95 >>使用|T135127:0|t[Hyldnir Harpoon]跳到风暴神殿立柱上的|cRXP_FRIENDLY_立柱装饰|r上
.target Column Ornament
.use 41058
step
.goto TheStormPeaks,33.42,57.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托里姆|r
.turnin 12886 >>交任务: |cRXP_FRIENDLY_驭龙赛|r
.accept 13064 >>接任务: |cRXP_LOOT_骨肉相残|r
.complete 13064,1 
.skipgossip 29445,1
.turnin 13064 >>交任务: |cRXP_FRIENDLY_骨肉相残|r
.accept 12915 >>接任务: |cRXP_LOOT_弥补关系|r
step << Alliance
.goto TheStormPeaks,33.8,73.8
>>在|cRXP_FRIENDLY_Stormcrest Eagles|r上使用|T237332:0|t[新鲜冰犀牛肉]
>>|cRXP_WARN_你不需要下马|r
.collect 41340,8,12865,1,-1
.complete 12865,1 
.target Stormcrest Eagle
.use 41340
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗亚林·霜眉|r, |cRXP_FRIENDLY_考古学家安多林|r, |cRXP_FRIENDLY_格罗萨·硬须|r
.turnin 12865 >>交任务: |cRXP_FRIENDLY_忠诚的伙伴|r
.accept 12867 >>接任务: |cRXP_LOOT_偷宝宝的鹰身人|r
.goto TheStormPeaks,29.83,75.72
.turnin 12854 >>交任务: |cRXP_FRIENDLY_布莱恩的踪迹|r
.accept 12855 >>接任务: |cRXP_LOOT_追踪罪犯|r
.goto TheStormPeaks,29.61,74.07
.turnin 12864 >>交任务: |cRXP_FRIENDLY_失踪的斥候|r
.accept 12866 >>接任务: |cRXP_LOOT_震慑侵犯者|r
.goto TheStormPeaks,29.18,74.91
.target Fjorlin Frostbrow
.target Archaeologist Andorin
.target Glorthal Stiffbeard
step << Alliance
#completewith next
.loop 45,TheStormPeaks,27.03,72.38,26.28,72.52,25.82,72.33,27.81,69.13,29.26,67.75,30.05,66.88,30.97,66.95,31.05,65.18,32.35,67.30,32.94,66.80,33.40,65.60,35.10,66.58,36.42,66.33,37.10,67.73,36.29,68.38,35.82,68.19,35.10,66.58
>>打开树周围地面上的|cRXP_PICK_Eagle Eggs |r。为|cRXP_Loot_Stormcrest鹰蛋|r掠夺它们
.complete 12867,1 
step << Alliance
.loop 45,TheStormPeaks,27.03,72.38,26.28,72.52,25.82,72.33,27.81,69.13,29.26,67.75,30.05,66.88,30.97,66.95,31.05,65.18,32.35,67.30,32.94,66.80,33.40,65.60,35.10,66.58,36.42,66.33,37.10,67.73,36.29,68.38,35.82,68.19,35.10,66.58
>>杀死|cRXP_ENEMY_Frostweather尖叫者|r和|cRXX_ENEMY_弗罗斯特weather女巫|r
.complete 12866,1 
.complete 12866,2 
.mob Frostfeather Screecher;Frostfeather Witch
step << Alliance
.loop 45,TheStormPeaks,27.03,72.38,26.28,72.52,25.82,72.33,27.81,69.13,29.26,67.75,30.05,66.88,30.97,66.95,31.05,65.18,32.35,67.30,32.94,66.80,33.40,65.60,35.10,66.58,36.42,66.33,37.10,67.73,36.29,68.38,35.82,68.19,35.10,66.58
>>打开树周围地面上的|cRXP_PICK_Eagle Eggs |r。为|cRXP_Loot_Stormcrest鹰蛋|r掠夺它们
.complete 12867,1 
step << Alliance
#completewith next
.goto TheStormPeaks,36.43,64.20,50 >>前往废弃营地
step << Alliance
.goto TheStormPeaks,36.43,64.20
.vehicle >>|cRXP_WARN_Use|r|T133309:0|t[寻霜犬项圈]
.timer 114,Sniffing Out the Perpetrator RP
.use 41430
.isOnQuest 12855
step << Alliance
#label Thief
.goto TheStormPeaks,48.02,60.98
>>在|cRXP_ENEMY_Stormformed钱包|r上铸造|T132149:0|t[铸造网]以使其联网
>>铸造|T135848:0|t[冰裂缝]变慢|cRXP_ENEMY_Stormformed Pursuers|r
>>|cRXP_WARN_等待RP|r
.complete 12855,1 
.mob Stormforged Pursuer
.use 41430
step << Alliance
.goto TheStormPeaks,48.56,60.82
>>杀死|cRXP_ENEMY_Tracker Thulin|r。掠夺他|T133866:0|t[|cRXP-Loot_Brann的通信器|r]
.complete 12855,2 
.collect 40971,1,12858,1 
.mob Tracker Thulin
step << Alliance
#completewith next
.cast 61122 >>使用|T133866:0|t[|cRXP_LOOT_Brann的通信器|r]
.use 40971
step << Alliance
.goto TheStormPeaks,48.56,60.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r
.turnin 12855 >>交任务: |cRXP_FRIENDLY_追踪罪犯|r
.accept 12858 >>接任务: |cRXP_LOOT_拼图游戏|r
.target Brann Bronzebeard
.use 40971
step << Alliance
#label Slag
.loop 50,TheStormPeaks,69.16,62.01,69.13,59.19,70.05,56.34,70.41,58.87,70.01,60.57,70.79,61.86,,69.16,62.01,72.98,63.65,74.22,62.53,75.97,63.93
>>在湖边的地面上掠夺|cRXP_Loot_AGranite Boulders|r（|cRXT_WARN_一次只能携带一个|r）
>>|cRXP_WARN_在掠夺了一个|cRXP_LOOT_花岗岩巨石|r之后，使用|r|T134422:0|t[大地之魂]|cRXD_WARN_on a|cRXP_ENEMY_Stormformed Iron Giant|r召唤|cRXT_FIRENDLY_Earthen Ironbanes|r来协助您|r
>>杀死一个|cRXP_ENEMY_风暴锻造的铁巨人|r。掠夺它的|T135228:0|t[|cRXX_Loot_熔渣覆盖的金属|r]
>>|cRXP_WARN_使用|T135228:0|t[|cRXP_LOOT_炉渣覆盖金属|r]开始任务|r
.collect 41506,1,12915,1,-1
.collect 41556,1,12922,1 
.accept 12922 >>接任务: |cRXP_LOOT_精炼之火|r
.mob Stormforged Iron Giant
.use 41505
.use 41556
step << Alliance
#completewith next
>>在湖边的地面上掠夺|cRXP_Loot_AGranite Boulders|r（|cRXT_WARN_一次只能携带一个|r）
>>|cRXP_WARN_在掠夺了一个|cRXP_LOOT_花岗岩巨石|r之后，使用|r|T134422:0|t[大地之魂]|cRXD_WARN_on a|cRXP_ENEMY_Stormformed Iron Giant|r召唤|cRXT_FIRENDLY_Earthen Ironbanes|r来协助您|r
>>杀死|cRXP_ENEMY_风暴锻造铁巨人|r
.collect 41506,1,12915,1,-1
.complete 12915,2 
.mob Stormforged Iron Giant
.use 41505
step << Alliance
.loop 50,TheStormPeaks,69.46,62.33,69.29,60.15,69.02,57.86,70.27,57.23,71.26,55.85,70.36,57.82,70.03,59.39,70.56,60.49,71.85,59.01,71.74,60.57,72.53,62.06,73.73,62.93,69.46,62.33,75.62,63.46,76.81,63.04,76.76,62.50,77.16,62.18,77.63,62.66,77.23,63.54,76.81,63.04
>>杀死|cRXP_ENEMY_Seething复仇者|r。掠夺他们的|cRXX_Loot_狂暴火花|r
.complete 12922,1 
.mob Seething Revenant
step << Alliance
#sticky
#label FAnvil
.goto TheStormPeaks,77.17,62.84,0,0
>>单击|cRXP_PICK_Fjorn的砧|r
.turnin 12922 >>交任务: |cRXP_FRIENDLY_精炼之火|r
.accept 12956 >>接任务: |cRXP_LOOT_希望的火花|r
step << Alliance
.goto TheStormPeaks,76.48,63.93,40,0
.goto TheStormPeaks,77.20,63.67,40,0
.goto TheStormPeaks,77.38,62.87
>>在雪地里把|cRXP_Loot_AGranite Boulders|r洗劫一空（|cRXP-WARN_一次只能携带一个|r）
>>|cRXP_WARN_在掠夺了一个|cRXP_LOOT_花岗岩巨石|r后，使用|r|T134422:0|t[Thorim's Charm of Earth]|cRXP-WARN_on|cRXP_ENEMY_Fjorn|r召唤|cRXT_FIRENDLY_Earthen Ironbanes|r来协助您|r
>>杀死|cRXP_ENEMY_Fjorn|r
.collect 41506,1,12915,1,-1
.complete 12915,1 
.mob Fjorn
.use 41505
step << Alliance
#requires FAnvil
.loop 50,TheStormPeaks,69.16,62.01,69.13,59.19,70.05,56.34,70.41,58.87,70.01,60.57,70.79,61.86,,69.16,62.01,72.98,63.65,74.22,62.53,75.97,63.93
>>在湖边的地面上掠夺|cRXP_Loot_AGranite Boulders|r（|cRXT_WARN_一次只能携带一个|r）
>>|cRXP_WARN_在掠夺了一个|cRXP_LOOT_花岗岩巨石|r之后，使用|r|T134422:0|t[大地之魂]|cRXD_WARN_on a|cRXP_ENEMY_Stormformed Iron Giant|r召唤|cRXT_FIRENDLY_Earthen Ironbanes|r来协助您|r
>>杀死|cRXP_ENEMY_风暴锻造铁巨人|r
.collect 41506,1,12915,2,-1
.complete 12915,2 
.mob Stormforged Iron Giant
.use 41505
step << Alliance !Mage
#completewith next
.hs >>达兰·赫斯
step << Alliance !Mage
#completewith next
.goto TheStormPeaks,29.18,74.91,40 >>前往|cRXP_FRIENDLY_Glorthal|r
step << Alliance Mage
#completewith next
.hs >>火炉到霜冻
step << Alliance
.goto TheStormPeaks,29.18,74.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗萨·硬须|r
.turnin 12866 >>交任务: |cRXP_FRIENDLY_震慑侵犯者|r
.accept 12868 >>接任务: |cRXP_LOOT_希尔拉娜·冰啸|r
.target Glorthal Stiffbeard
step << Alliance
#completewith next
.goto TheStormPeaks,33.42,57.95,40 >>飞上风暴神殿，飞向|cRXP_FRIENDLY_Thorim|r
step << Alliance
.goto TheStormPeaks,33.42,57.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托里姆|r
.turnin 12915 >>交任务: |cRXP_FRIENDLY_弥补关系|r
.turnin 12956 >>交任务: |cRXP_FRIENDLY_希望的火花|r
.accept 12924 >>接任务: |cRXP_LOOT_重铸盟约|r
.target Thorim
step << Horde
.goto TheStormPeaks,37.29,49.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫塔哈·风魂|r
.turnin 12913 >>交任务: |cRXP_FRIENDLY_讲兽人语会死吗？|r
.accept 12917 >>接任务: |cRXP_LOOT_寒风的声音|r
.target Moteha Windborn
step << Horde
.loop 55,TheStormPeaks,33.77,47.41,32.57,49.12,31.78,49.61,30.24,50.02,28.69,51.11,28.31,50.52,27.49,48.24,27.35,47.05,27.26,45.30,26.23,43.31,26.48,40.72,27.50,40.33,28.13,42.81,28.33,46.80,28.77,47.74,29.78,48.20,30.74,48.23,32.52,47.31,33.77,47.41
>>杀死|cRXP_ENEMY_Stormriders |r。掠夺他们|cRXP_Loot_风之声|r
.complete 12917,1 
.mob Stormrider
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫塔哈·风魂|r, |cRXP_FRIENDLY_伯克塔·血怒|r
.turnin 12917 >>交任务: |cRXP_FRIENDLY_寒风的声音|r
.goto TheStormPeaks,37.29,49.74
.accept 12920 >>接任务: |cRXP_LOOT_联络布莱恩|r
.goto TheStormPeaks,37.31,49.66
.target Moteha Windborn
.target Boktar Bloodfury
step << Horde
#completewith next
.cast 61122 >>使用|T133866:0|t[|cRXP_LOOT_Brann的通信器|r]
.use 40971
step << Horde
.goto TheStormPeaks,37.31,49.66
.gossipoption 93222 >>Talk to |cRXP_FRIENDLY_Brann|r
.timer 71,Catching up with Brann RP
.target Brann Bronzebeard
.use 40971
.skipgossip
step << Horde
#completewith next
.goto TheStormPeaks,37.31,49.66
>>|cRXP_WARN_等待RP|r
.complete 12920,1 
step << Horde
.goto TheStormPeaks,37.31,49.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯克塔·血怒|r
.turnin 12920 >>交任务: |cRXP_FRIENDLY_联络布莱恩|r
.accept 12926 >>接任务: |cRXP_LOOT_拼图游戏|r
.target Boktar Bloodfury
step
.loop 50,TheStormPeaks,37.77,45.04,37.14,43.20,37.34,42.39,38.45,42.83,37.34,40.75,38.01,39.93,38.66,39.74,39.09,41.14,39.86,39.79,40.66,40.56,41.77,39.31,42.63,39.53,41.52,42.07,41.97,43.43,40.28,42.22,38.91,43.42,37.77,45.04
>>杀死|cRXP_ENEMY_Library守护者|r。掠夺它们|T133451:0|t[|cRXP-Loot_Inventor的磁盘碎片|r]
.collect 41130,6,12858,1 << Alliance 
.collect 41130,6,12926,1 << Horde 
.mob Library Guardian
step
.goto TheStormPeaks,37.93,43.94
>>使用|T133451:0|t[|cRXP_LOOT_Inventor的磁盘碎片|r]
.complete 12858,1 << Alliance 
.complete 12926,1 << Horde 
.use 41130
step
#completewith next
.cast 61122 >>使用|T133866:0|t[|cRXP_LOOT_Brann的通信器|r]
.use 40971
step
.goto TheStormPeaks,37.93,43.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r
.turnin 12858 >>交任务: |cRXP_FRIENDLY_拼图游戏|r << Alliance
.accept 12860 >>接任务: |cRXP_LOOT_采集数据|r << Alliance
.turnin 12926 >>交任务: |cRXP_FRIENDLY_拼图游戏|r << Horde
.accept 12927 >>接任务: |cRXP_LOOT_采集数据|r << Horde
.target Brann Bronzebeard
.use 40971
step
.loop 50,TheStormPeaks,37.23,43.48,37.50,42.57,37.79,41.58,37.04,40.74,37.67,40.47,39.10,41.16,39.52,40.18,39.89,39.44,40.16,40.86,40.70,42.25,39.79,42.08,38.76,42.92,38.54,44.23,37.23,43.48
>>|cRXP_WARN_通道|r|T134375:0|t|cRXP_FRIENDLY_Databanks旁边的Inventor磁盘|r
.complete 12860,1 << Alliance 
.complete 12927,1 << Horde 
.cast 55161
.timer 10,Data Mining RP
.target Databank
.use 41179
step
.goto TheStormPeaks,37.70,45.34,30,0
.goto TheStormPeaks,37.43,46.83,30 >>进入Inventor的库
.isOnQuest 12860 << Alliance
.isOnQuest 12927 << Horde
step
#completewith next
.cast 61122 >>使用|T133866:0|t[|cRXP_LOOT_Brann的通信器|r]
.use 40971
step
.goto TheStormPeaks,37.43,46.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r
.turnin 12860 >>交任务: |cRXP_FRIENDLY_采集数据|r << Alliance
.accept 13415 >>接任务: |cRXP_LOOT_图书馆的控制台|r << Alliance
.turnin 12927 >>交任务: |cRXP_FRIENDLY_采集数据|r << Horde
.accept 13416 >>接任务: |cRXP_LOOT_图书馆的控制台|r << Horde
.target Brann Bronzebeard
.use 40971
step
.goto TheStormPeaks,37.43,46.83
>>单击|cRXP_PICK_Inventor的库控制台|r
.turnin 13415 >>交任务: |cRXP_FRIENDLY_图书馆的控制台|r << Alliance
.accept 12872 >>接任务: |cRXP_LOOT_诺甘农之壳|r << Alliance
.turnin 13416 >>交任务: |cRXP_FRIENDLY_图书馆的控制台|r << Horde
.accept 12928 >>接任务: |cRXP_LOOT_诺甘农之壳|r << Horde
step
.goto TheStormPeaks,37.53,46.52
.cast 55197 >>使用|T134375:0|t[充电盘]召唤|cRXP_ENEMY_Archivist Mechaton|r
.timer 50,Norgannon's Shell RP
.use 44704
.isOnQuest 12872 << Alliance
.isOnQuest 12928 << Horde
step
.goto TheStormPeaks,37.53,46.52
>>|cRXP_WARN_等待RP|r
>>杀死|cRXP_ENEMY_Archivist Mechaton|r。掠夺他|cRXD_Loot_Norgannon的外壳|r
.complete 12872,1 << Alliance 
.complete 12928,1 << Horde 
.mob Archivist Mechaton
.use 44704
step
.goto TheStormPeaks,37.43,46.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r
>>|cRXP_WARN_用|r|T133866:0|t[|cRXP_LOOT_Brann的通信器|r]|cRXP-WARN_if他消失了，再次召唤他|r
.turnin 12872 >>交任务: |cRXP_FRIENDLY_诺甘农之壳|r << Alliance
.accept 12871 >>接任务: |cRXP_LOOT_探险者协会的帮助|r << Alliance
.turnin 12928 >>交任务: |cRXP_FRIENDLY_诺甘农之壳|r << Horde
.accept 13273 >>接任务: |cRXP_LOOT_追查诺甘农之核|r << Horde
.target Brann Bronzebeard
.use 40971
step
.goto TheStormPeaks,30.64,36.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷克·岩眉|r
.fp Bouldercrag's Refuge >>获得Bouldercrag的避难所飞行路线
.target Breck Rockbrow
step
#completewith next
.goto TheStormPeaks,30.67,37.06,30,0 << !Mage
.goto TheStormPeaks,30.67,37.06,30 >>前往Bouldercrag避难所 << Mage
.goto TheStormPeaks,31.42,38.08,30 >>前往|cRXP_FRIENDLY_Bouldercrag|r << !Mage
step << Mage
#completewith Plate
.goto TheStormPeaks,30.89,37.36
.home >>把你的炉石放在Bouldercrag的避难所
step
.goto TheStormPeaks,31.42,38.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塑石者布德克拉格|r
>>|cRXP_WARN_请勿提供任何|r|T132908:0|t[Frostweave Cloth]|cRXP_WARN_您有|r
.accept 12930 >>接任务: |cRXP_LOOT_稀有的土壤|r
.target Bouldercrag the Rockshaper
step
#completewith EEarth
.goto TheStormPeaks,30.67,37.06,30 >>博尔德克拉格避难所出口
step
.loop 50,TheStormPeaks,29.39,36.11,29.06,35.74,28.47,34.85,28.42,36.39,27.66,36.20,27.25,35.44,26.82,35.93,26.15,36.26,26.44,37.23,26.94,37.74,27.10,38.20,27.82,38.89,27.90,38.37,28.90,38.70,28.67,37.92,29.39,36.11
>>杀死|cRXP_ENEMY_Stormformed Raiders|r。掠夺它们以获得|cRXD_Loot_Fostweave Cloth|r
.complete 12930,2 
.mob Stormforged Raider
step
#completewith next
.cast 2580 >>铸造|T136025:0|t[寻找矿物]以帮助您找到当前未激活的|cRXP_PICK_Enchanted Earth|r
.skill mining,<1,1
step
#label EEarth
.goto TheStormPeaks,30.97,34.21,40,0
.goto TheStormPeaks,29.48,31.89,40,0
.goto TheStormPeaks,28.95,32.90,40,0
.goto TheStormPeaks,27.19,34.26,40,0
.goto TheStormPeaks,27.26,32.21,40,0
.goto TheStormPeaks,26.11,33.10,40,0
.goto TheStormPeaks,25.42,33.15,40,0
.goto TheStormPeaks,24.73,34.13,40,0
.goto TheStormPeaks,24.64,33.38,40,0
.goto TheStormPeaks,24.31,33.79,40,0
.goto TheStormPeaks,23.85,34.16,40,0
.goto TheStormPeaks,21.25,33.27,40,0
.goto TheStormPeaks,30.97,34.21,40,0
.goto TheStormPeaks,21.25,33.27
>>沿着悬崖表面掠夺地面上的|cRXP_Loot_魔法地球|r
.complete 12930,1 
step
.goto TheStormPeaks,30.67,37.06,30,0
.goto TheStormPeaks,31.42,38.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塑石者布德克拉格|r
.turnin 12930 >>交任务: |cRXP_FRIENDLY_稀有的土壤|r
.accept 12931 >>接任务: |cRXP_LOOT_反击|r
.accept 12937 >>接任务: |cRXP_LOOT_救死扶伤|r
.target Bouldercrag the Rockshaper
step
#completewith next
>>杀死|cRXP_ENEMY_Stormforged Reavers|r和|cRXX_ENEMY_ Stormforked Raiders|r
.complete 12931,1 
.mob Stormforged Reaver
.mob Stormforged Raider
step
.loop 50,TheStormPeaks,25.63,35.81,24.85,36.94,24.13,37.22,24.98,38.18,25.27,38.62,26.07,39.20,26.37,39.66,26.86,39.26,27.52,39.15,27.96,40.12,28.23,39.34,27.95,39.04,28.52,38.45,29.10,36.86,28.75,34.72,28.10,36.65,27.47,37.10,25.63,35.81
>>在|cRXP_FRIENDLY_Fallen Earthen Defenders|r上使用|T133683:0|t[Telluria Poultice]
>>|cRXP_WARN_您可以在开始播放后取消频道|r
.complete 12937,1,7 
.use 41988
step
.loop 50,TheStormPeaks,25.63,35.81,24.85,36.94,24.13,37.22,24.98,38.18,25.27,38.62,26.07,39.20,26.37,39.66,26.86,39.26,27.52,39.15,27.96,40.12,28.23,39.34,27.95,39.04,28.52,38.45,29.10,36.86,28.75,34.72,28.10,36.65,27.47,37.10,25.63,35.81
.cast 55797	>>在|cRXP_FRIENDLY_Fallen Earthen Defenders|r上使用|T133683:0|t[Telluria Poultice]

.use 41988
.isOnQuest 12937
step
.loop 50,TheStormPeaks,29.39,36.11,29.06,35.74,28.47,34.85,28.42,36.39,27.66,36.20,27.25,35.44,26.82,35.93,26.15,36.26,26.44,37.23,26.94,37.74,27.10,38.20,27.82,38.89,27.90,38.37,28.90,38.70,28.67,37.92,29.39,36.11
>>杀死|cRXP_ENEMY_Stormforged Reavers|r和|cRXX_ENEMY_ Stormforked Raiders|r
.complete 12931,1 
.mob Stormforged Reaver
.mob Stormforged Raider
step
.goto TheStormPeaks,30.67,37.06,30,0
.goto TheStormPeaks,31.42,38.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塑石者布德克拉格|r
.target Bouldercrag the Rockshaper
.turnin 12931 >>交任务: |cRXP_FRIENDLY_反击|r
.turnin 12937 >>交任务: |cRXP_FRIENDLY_救死扶伤|r
.accept 12957 >>接任务: |cRXP_LOOT_雷铸铁矮人的奴隶|r
.accept 12964 >>接任务: |cRXP_LOOT_黑暗的矿石|r
step
#completewith next
.goto TheStormPeaks,30.67,37.06,30 >>博尔德克拉格避难所出口
step
#completewith next
.goto TheStormPeaks,27.40,49.77,30 >>前往冰冻矿井
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Mechagnomes|r
.complete 12957,1 
.target Captive Mechagnome
.skipgossip
step
.loop 15,TheStormPeaks,27.50,49.74,26.95,50.04,26.77,49.99,26.40,49.74,26.64,50.40,26.40,50.84,26.92,51.06,26.87,51.39,26.61,51.84,26.16,52.07,25.93,52.34,25.82,51.40,26.12,51.14,
>>杀死|cRXP_ENEMY_Stormformed任务大师|r
>>打开地面上的|cRXP_PICK_Ore Carts|r。掠夺它们以获取|cRXP_Loot_暗矿样本|r
.complete 12957,2 
.complete 12964,1 
.mob Stormforged Taskmaster
step
.loop 15,TheStormPeaks,27.12,49.97,26.54,49.92,26.34,49.75,26.42,50.08,26.65,50.51,26.46,50.95,26.90,51.00,26.83,51.49,26.41,51.92,26.13,52.14,25.88,52.30,25.85,51.30,26.12,51.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Mechagnomes|r
.complete 12957,1 
.target Captive Mechagnome
.skipgossip
step << skip
#completewith next
.hs >>Hearth到Bouldercrag避难所
.cooldown item,6948,>0

step
.goto TheStormPeaks,30.67,37.06,30,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塑石者布德克拉格|r, |cRXP_FRIENDLY_布鲁沃·斩铁|r
.turnin 12957 >>交任务: |cRXP_FRIENDLY_雷铸铁矮人的奴隶|r
.turnin 12964 >>交任务: |cRXP_FRIENDLY_黑暗的矿石|r
.accept 12965 >>接任务: |cRXP_LOOT_洛肯的礼物|r
.goto TheStormPeaks,31.42,38.08
.accept 12978 >>接任务: |cRXP_LOOT_进攻尼达维里尔|r
.goto TheStormPeaks,31.28,38.17
.target Bouldercrag the Rockshaper
.target Bruor Ironbane
step
#completewith next
.goto TheStormPeaks,30.67,37.06,30 >>博尔德克拉格避难所出口
step
#completewith next
>>杀死|cRXP_ENEMY_Stormformed Champions |r和|cRXX_ENEMY_Stamformed Maguses|r
.complete 12978,1 
.mob Stormforged Champion
.mob Stormforged Magus
step
#label Plate
#completewith LokenOrb
>>杀死一个|cRXP_ENEMY_Stormformed War Golem|r。掠夺它的|T237488:0|t[|cRXP_Loot_黑暗装甲板|r]
>>|cRXP_WARN_使用|T237488:0|t[|cRXP_LOOT_Dark Armor Plate|r]开始任务|r
.collect 42203,1,12979 
.accept 12979 >>接任务: |cRXP_LOOT_黑暗的护甲板|r
.mob Stormforged War Golem
.use 42203
step
#requires Plate
#completewith LokenOrb
>>杀死|cRXP_ENEMY_Stormformed Champions |r和|cRXX_ENEMY_Stamformed Maguses|r
>>杀死|cRXP_ENEMY_风暴锻造的战争傀儡|r。掠夺他们的|T237488:0|t[|cRXP-Loot_黑暗装甲板|r]
.complete 12978,1 
.complete 12979,1 
.mob Stormforged War Golem
.mob Stormforged Champion
.mob Stormforged Magus
step
.goto TheStormPeaks,26.16,47.71
>>进入大楼
>>单击|cRXP_PICK_Loken的力量|r
.complete 12965,2 
step
.goto TheStormPeaks,24.59,47.74,30,0
.goto TheStormPeaks,24.55,48.44
>>进入大楼
>>单击|cRXP_PICK_Loken的收藏夹|r
.complete 12965,3 
step
#label LokenOrb
.goto TheStormPeaks,24.01,42.62
>>进入大楼
>>单击|cRXP_PICK_Loken的愤怒|r
.complete 12965,1 
step
.loop 50,TheStormPeaks,26.41,44.53,26.26,44.95,25.56,44.67,25.04,42.31,24.49,42.06,24.78,43.93,25.14,45.27,25.76,46.26,26.00,47.03,24.44,45.67,24.38,47.37,25.19,47.46,25.54,49.09,25.43,50.30,25.94,50.98,24.79,51.58
>>杀死一个|cRXP_ENEMY_Stormformed War Golem|r。掠夺它的|T237488:0|t[|cRXP_Loot_黑暗装甲板|r]
>>|cRXP_WARN_使用|T237488:0|t[|cRXP_LOOT_Dark Armor Plate|r]开始任务|r
.collect 42203,1,12979 
.accept 12979 >>接任务: |cRXP_LOOT_黑暗的护甲板|r
.mob Stormforged War Golem
.use 42203
step
.loop 50,TheStormPeaks,26.41,44.53,26.26,44.95,25.56,44.67,25.04,42.31,24.49,42.06,24.78,43.93,25.14,45.27,25.76,46.26,26.00,47.03,24.44,45.67,24.38,47.37,25.19,47.46,25.54,49.09,25.43,50.30,25.94,50.98,24.79,51.58
>>杀死|cRXP_ENEMY_Stormformed Champions |r和|cRXX_ENEMY_Stamformed Maguses|r
>>杀死|cRXP_ENEMY_风暴锻造的战争傀儡|r。掠夺他们的|T237488:0|t[|cRXP-Loot_黑暗装甲板|r]
.complete 12978,1 
.complete 12979,1 
.mob Stormforged War Golem
.mob Stormforged Champion
.mob Stormforged Magus
step
.goto TheStormPeaks,30.67,37.06,30,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塑石者布德克拉格|r, |cRXP_FRIENDLY_布鲁沃·斩铁|r
.turnin 12965 >>交任务: |cRXP_FRIENDLY_洛肯的礼物|r
.goto TheStormPeaks,31.42,38.08
.turnin 12978 >>交任务: |cRXP_FRIENDLY_进攻尼达维里尔|r
.turnin 12979 >>交任务: |cRXP_FRIENDLY_黑暗的护甲板|r
.accept 12980 >>接任务: |cRXP_LOOT_护甲板的秘密|r
.goto TheStormPeaks,31.28,38.17
.target Bouldercrag the Rockshaper
.target Bruor Ironbane
step
#completewith next
.goto TheStormPeaks,30.55,36.77,20,0
.goto TheStormPeaks,32.53,36.58,65,0
.goto TheStormPeaks,33.47,39.72,45,0
.goto TheStormPeaks,32.03,40.74,40 >>前往|cRXP_FRIENDLY_Tock|r
step
.goto TheStormPeaks,32.03,40.74
.gossipoption 93703 >>Talk to |cRXP_FRIENDLY_Tock|r
.timer 79,The Armor's Secrets RP
.target Attendant Tock
.skipgossip
.isOnQuest 12980
step
#completewith next
.goto TheStormPeaks,33.72,39.43,30,0
.goto TheStormPeaks,30.52,36.86,40,0
.goto TheStormPeaks,30.67,37.06,30,0
.goto TheStormPeaks,31.28,38.17,15 >>向|cRXP_FRIENDLY_Bruor|r行进
step
>>|cRXP_WARN_等待RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布鲁沃·斩铁|r, |cRXP_FRIENDLY_塑石者布德克拉格|r
.turnin 12980 >>交任务: |cRXP_FRIENDLY_护甲板的秘密|r
.goto TheStormPeaks,31.28,38.17
.accept 12984 >>接任务: |cRXP_LOOT_风暴之子瓦杜兰|r
.goto TheStormPeaks,31.42,38.08
.target Bruor Ironbane
.target Bouldercrag the Rockshaper
step
.goto TheStormPeaks,24.65,51.76,30,0
.goto TheStormPeaks,24.28,52.15
.cast 56189 >>使用|T134227:0|t[Boldercrag's War Horn]启动RP
.timer 33,Valduran the Stormborn RP
.use 42419
.isOnQuest 12984
step
.goto TheStormPeaks,24.28,52.15
>>|cRXP_WARN_等待RP|r
>>杀死风暴出生者|cRXP_ENEMY_Valduran |r
.complete 12984,1 
.mob Valduran the Stormborn
.use 42419
step
.goto TheStormPeaks,30.67,37.06,30,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塑石者布德克拉格|r, |cRXP_FRIENDLY_布鲁沃·斩铁|r
.turnin 12984 >>交任务: |cRXP_FRIENDLY_风暴之子瓦杜兰|r
.accept 12988 >>接任务: |cRXP_LOOT_摧毁熔炉！|r
.goto TheStormPeaks,31.42,38.08
.accept 12991 >>接任务: |cRXP_LOOT_正中要害|r
.goto TheStormPeaks,31.28,38.17
.target Bouldercrag the Rockshaper
.target Bruor Ironbane
step
#completewith next
>>杀死|cRXP_ENEMY_Stormformed Artifacticer|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Stormformed Artificers |r cast|r|T136015:0|t[闪电注入]，|cRXP_WARN_an可中断通道，造成约1500点伤害|r
.complete 12991,1 
.mob Stormforged Artificer
step
>>在|cRXP_PICK_Lightning Forges|r上使用|T133716:0|t[博尔德克拉格炸弹]
.complete 12988,1 
.goto TheStormPeaks,28.99,45.84,-1
.complete 12988,2 
.goto TheStormPeaks,29.53,45.89,-1
.complete 12988,3 
.goto TheStormPeaks,30.25,46.15,-1
.use 42441
step
.loop 40,TheStormPeaks,30.10,46.80,30.25,46.20,30.06,45.27,29.50,44.20,28.79,44.36,28.89,45.67,29.03,45.91,29.50,45.39,29.93,45.80,29.42,46.26,30.10,46.80
>>杀死|cRXP_ENEMY_Stormformed Artifacticer|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Stormformed Artificers |r cast|r|T136015:0|t[闪电注入]，|cRXP_WARN_an可中断通道，造成约1500点伤害|r
.complete 12991,1 
.mob Stormforged Artificer
step
.goto TheStormPeaks,30.67,37.06,30,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布鲁沃·斩铁|r, |cRXP_FRIENDLY_塑石者布德克拉格|r
.turnin 12991 >>交任务: |cRXP_FRIENDLY_正中要害|r
.goto TheStormPeaks,31.28,38.17
.turnin 12988 >>交任务: |cRXP_FRIENDLY_摧毁熔炉！|r
.accept 12993 >>接任务: |cRXP_LOOT_巨像的威胁|r
.goto TheStormPeaks,31.42,38.08
.target Bruor Ironbane
.target Bouldercrag the Rockshaper
step
.goto TheStormPeaks,28.88,44.06
>>掠夺桌上的|cRXP_Loot_巨像攻击规格|r
.complete 12993,1 
step
.goto TheStormPeaks,29.90,45.81
>>掠夺桌上的|cRXP_Loot_巨像防御规范|r
.complete 12993,2 
step
.goto TheStormPeaks,30.67,37.06,30,0
.goto TheStormPeaks,31.42,38.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塑石者布德克拉格|r
.turnin 12993 >>交任务: |cRXP_FRIENDLY_巨像的威胁|r
.accept 12998 >>接任务: |cRXP_LOOT_风暴之心|r
.target Bouldercrag the Rockshaper
step
#completewith next
.goto TheStormPeaks,32.40,63.62,20,0
.goto TheStormPeaks,32.41,61.23,20 >>|cRXP_WARN_穿过洞飞75%的路下山进入Uldis|r
step
#completewith next
.goto TheStormPeaks,34.60,60.92,40,0
.goto TheStormPeaks,36.12,60.93,20 >>前往|cRXP_PICK_风暴之心|r
step
.goto TheStormPeaks,36.13,60.93
.cast 3365 >>单击|cRXP_PICK_风暴之心|r
.timer 30,The Heart of the Storm RP
.isOnQuest 12998
step
.goto TheStormPeaks,36.13,60.93
>>|cRXP_WARN_等待RP|r
.complete 12998,1 
step << !Mage
#completewith next
.goto TheStormPeaks,32.41,61.23,20,0
.goto TheStormPeaks,32.40,63.62,20 >>Exit Uldis
step << Mage
#completewith next
.hs >>Hearth到Bouldercrag
step
.goto TheStormPeaks,30.67,37.06,30,0 << !Mage
.goto TheStormPeaks,31.42,38.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塑石者布德克拉格|r
.turnin 12998 >>交任务: |cRXP_FRIENDLY_风暴之心|r
.accept 13007 >>接任务: |cRXP_LOOT_钢铁巨像|r
.target Bouldercrag the Rockshaper
step
#completewith next
.goto TheStormPeaks,27.18,35.88
.vehicle >>单击|cRXP_PICK_Jormungar控制按钮|r
step
.goto TheStormPeaks,27.19,43.06,50,0
.goto TheStormPeaks,28.78,47.99
>>|cRXP_WARN_铸造|r|T136025:0|t[Submerge]（1）|cRXP_WARN_to移动|r
>>|cRXP_WARN_Move under the |cRXP_ENEMY_Iron Colossus |r，then cast|r|T237588:0|t[Emerge]（1）|cRXD_WARN_hilst|r|T136025:0|t[淹没]
>>|cRXP_WARN_右键单击|cRXP_ENEMY_Iron Colossus|r以自动攻击他。施法|r|T132282:0|t[Jormungar Strike]（2）|cRXP_WARN_and|r|T136008:0|t[Acid Breath]（3）|cRXP_WARN_to造成伤害|r
>>|cRXP_WARN_当|cRXP_ENEMY_Iron Colossus|r表示“准备撞击地面”时，投掷|r|T136025:0|t[Submerge]（1），|cRXD_WARN_move在他身后，然后投掷|r| T237588:0|t[Emerge]
.complete 13007,1 
.mob Iron Colossus
step
.goto TheStormPeaks,30.67,37.06,30,0
.goto TheStormPeaks,31.42,38.08
>>|cRXP_WARN_离开Jormungar|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塑石者布德克拉格|r
.turnin 13007 >>交任务: |cRXP_FRIENDLY_钢铁巨像|r
.target Bouldercrag the Rockshaper
step << Horde
#label Slag
.loop 50,TheStormPeaks,69.16,62.01,69.13,59.19,70.05,56.34,70.41,58.87,70.01,60.57,70.79,61.86,,69.16,62.01,72.98,63.65,74.22,62.53,75.97,63.93
>>在湖边的地面上掠夺|cRXP_Loot_AGranite Boulders|r（|cRXT_WARN_一次只能携带一个|r）
>>|cRXP_WARN_在掠夺了一个|cRXP_LOOT_花岗岩巨石|r之后，使用|r|T134422:0|t[大地之魂]|cRXD_WARN_on a|cRXP_ENEMY_Stormformed Iron Giant|r召唤|cRXT_FIRENDLY_Earthen Ironbanes|r来协助您|r
>>杀死一个|cRXP_ENEMY_风暴锻造的铁巨人|r。掠夺它的|T135228:0|t[|cRXX_Loot_熔渣覆盖的金属|r]
>>|cRXP_WARN_使用|T135228:0|t[|cRXP_LOOT_炉渣覆盖金属|r]开始任务|r
.collect 41506,1,12915,1,-1
.collect 41556,1,12922,1 
.accept 12922 >>接任务: |cRXP_LOOT_精炼之火|r
.mob Stormforged Iron Giant
.use 41505
.use 41556
step << Horde
#completewith next
>>在湖边的地面上掠夺|cRXP_Loot_AGranite Boulders|r（|cRXT_WARN_一次只能携带一个|r）
>>|cRXP_WARN_在掠夺了一个|cRXP_LOOT_花岗岩巨石|r之后，使用|r|T134422:0|t[大地之魂]|cRXD_WARN_on a|cRXP_ENEMY_Stormformed Iron Giant|r召唤|cRXT_FIRENDLY_Earthen Ironbanes|r来协助您|r
>>杀死|cRXP_ENEMY_风暴锻造铁巨人|r
.collect 41506,1,12915,1,-1
.complete 12915,2 
.mob Stormforged Iron Giant
.use 41505
step << Horde
.loop 50,TheStormPeaks,69.46,62.33,69.29,60.15,69.02,57.86,70.27,57.23,71.26,55.85,70.36,57.82,70.03,59.39,70.56,60.49,71.85,59.01,71.74,60.57,72.53,62.06,73.73,62.93,69.46,62.33,75.62,63.46,76.81,63.04,76.76,62.50,77.16,62.18,77.63,62.66,77.23,63.54,76.81,63.04
>>杀死|cRXP_ENEMY_Seething复仇者|r。掠夺他们的|cRXX_Loot_狂暴火花|r
.complete 12922,1 
.mob Seething Revenant
step << Horde
#sticky
#label FAnvil
.goto TheStormPeaks,77.17,62.84,0,0
>>单击|cRXP_PICK_Fjorn的砧|r
.turnin 12922 >>交任务: |cRXP_FRIENDLY_精炼之火|r
.accept 12956 >>接任务: |cRXP_LOOT_希望的火花|r
step << Horde
.goto TheStormPeaks,76.48,63.93,40,0
.goto TheStormPeaks,77.20,63.67,40,0
.goto TheStormPeaks,77.38,62.87
>>在雪地里把|cRXP_Loot_AGranite Boulders|r洗劫一空（|cRXP-WARN_一次只能携带一个|r）
>>|cRXP_WARN_在掠夺了一个|cRXP_LOOT_花岗岩巨石|r后，使用|r|T134422:0|t[Thorim's Charm of Earth]|cRXP-WARN_on|cRXP_ENEMY_Fjorn|r召唤|cRXT_FIRENDLY_Earthen Ironbanes|r来协助您|r
>>杀死|cRXP_ENEMY_Fjorn|r
.collect 41506,1,12915,1,-1
.complete 12915,1 
.mob Fjorn
.use 41505
step << Horde
#requires FAnvil
.loop 50,TheStormPeaks,69.16,62.01,69.13,59.19,70.05,56.34,70.41,58.87,70.01,60.57,70.79,61.86,,69.16,62.01,72.98,63.65,74.22,62.53,75.97,63.93
>>在湖边的地面上掠夺|cRXP_Loot_AGranite Boulders|r（|cRXT_WARN_一次只能携带一个|r）
>>|cRXP_WARN_在掠夺了一个|cRXP_LOOT_花岗岩巨石|r之后，使用|r|T134422:0|t[大地之魂]|cRXD_WARN_on a|cRXP_ENEMY_Stormformed Iron Giant|r召唤|cRXT_FIRENDLY_Earthen Ironbanes|r来协助您|r
>>杀死|cRXP_ENEMY_风暴锻造铁巨人|r
.collect 41506,1,12915,2,-1
.complete 12915,2 
.mob Stormforged Iron Giant
.use 41505
step << Horde
.goto TheStormPeaks,59.78,52.64
>>板条箱上的织机|cRXP_OOT_Explorer Khrona的笔记|r
.complete 13273,1 
step << Horde
.goto TheStormPeaks,59.25,51.48
>>板条箱上的织机|cRXP_Loot_浏览者索伦笔记|r
.complete 13273,2 
step << Horde
#completewith next
.cast 61122 >>使用|T133866:0|t[|cRXP_LOOT_Brann的通信器|r]
.use 40971
step << Horde
.goto TheStormPeaks,59.25,51.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r
.turnin 13273 >>交任务: |cRXP_FRIENDLY_追查诺甘农之核|r
.accept 13274 >>接任务: |cRXP_LOOT_诺甘农之核的守护者|r
.use 40971
.target Brann Bronzebeard
step << Horde
#completewith next
.goto TheStormPeaks,56.40,58.46,20,0
.goto TheStormPeaks,54.97,57.48,20 >>|cRXP_WARN_穿过洞飞75%的路下山进入洛肯的讨价还价|r
step << Horde
#completewith next
.goto TheStormPeaks,55.69,54.34,40,0
.goto TheStormPeaks,56.38,52.11,40 >>前往|cRXP_ENEMY_Athan|r
step << Horde
.goto TheStormPeaks,56.38,52.11
>>杀死|cRXP_ENEMY_Athan|r。掠夺他获得|cRXX_Loot_Norgannon的核心|r
.complete 13274,1 
.mob Athan
step << Horde
.goto TheStormPeaks,56.16,52.41
.goto TheStormPeaks,54.34,50.04,20 >>|cRXP_WARN_飞到墙的边缘。通过注销然后重新登录来执行注销跳过|r
.link https://www.youtube.com/watch?v=5x8OCvrl1do >>|cRXP_WARN_单击此处|r
.isOnQuest 13274
step << Horde
#completewith next
.cast 61122 >>使用|T133866:0|t[|cRXP_LOOT_Brann的通信器|r]
.use 40971
step << Horde
.goto TheStormPeaks,54.34,50.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r
.turnin 13274 >>交任务: |cRXP_FRIENDLY_诺甘农之核的守护者|r
.accept 13285 >>接任务: |cRXP_LOOT_铸造钥石|r
.use 40971
.target Brann Bronzebeard
step << Horde
#completewith next
.goto TheStormPeaks,45.48,49.49,40 >>飞上发明的圣殿，飞向|cRXP_FRIENDLY_Brann|r
step << Horde
.goto TheStormPeaks,45.48,49.50
.gossipoption 94560 >>Talk to |cRXP_FRIENDLY_Brann|r
>>|cRXP_WARN_不要等待|cRXP_FRIENDLY_Brann|r's RP|r

.skipgossip
.timer 55,Forging the Keystone RP
.target Brann Bronzebeard
.isOnQuest 13285
step << Horde
#completewith next
>>|cRXP_WARN_不要等待|cRXP_FRIENDLY_Brann|r's RP|r
.goto TheStormPeaks,33.42,57.95,40 >>飞上风暴神殿，飞向|cRXP_FRIENDLY_Thorim|r
step << Horde
.goto TheStormPeaks,33.42,57.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托里姆|r
.turnin 12915 >>交任务: |cRXP_FRIENDLY_弥补关系|r
.turnin 12956 >>交任务: |cRXP_FRIENDLY_希望的火花|r
.accept 12924 >>接任务: |cRXP_LOOT_重铸盟约|r
.target Thorim
step << Horde
.goto TheStormPeaks,37.31,49.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯克塔·血怒|r
.turnin 13285 >>交任务: |cRXP_FRIENDLY_铸造钥石|r
.accept 13426 >>接任务: |cRXP_LOOT_见证者夏拉托尔|r
.target Boktar Bloodfury
step << Alliance
#completewith Frosthold4
.goto TheStormPeaks,30.64,36.32
.fly Frosthold >>飞到冰封
.target Breck Rockbrow
.skill riding,300,1
step << Alliance
#completewith next
.goto TheStormPeaks,24.94,66.87,50 >>前往|cRXP_ENEMY_Sirana Iceschare|r山顶
step << Alliance
.loop 45,TheStormPeaks,24.00,66.40,24.42,67.54,24.93,67.98,25.39,67.71,25.44,66.44,24.73,65.25,24.10,65.04,23.86,65.49,24.00,66.40
>>杀死|cRXP_ENEMY_Sirana冰尖叫|r
>>|cRXP_WARN_小心她|r|T135833:0|t[Ice Shrek]，|cRXP_WARN_a造成3000点左右的伤害并眩晕4秒|r
>>|cRXP_WARN_如果需要，为她找一个小组。如果你找不到一个团体或独自一人，请跳过这一步|r
.complete 12868,1 
.mob Sirana Iceshriek
step << Alliance !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家安多林|r, |cRXP_FRIENDLY_拉格努斯|r, |cRXP_FRIENDLY_格罗萨·硬须|r, |cRXP_FRIENDLY_弗亚林·霜眉|r
.accept 12854 >>接任务: |cRXP_LOOT_布莱恩的踪迹|r
.goto TheStormPeaks,29.61,74.07
.accept 12863 >>接任务: |cRXP_LOOT_表示感谢|r
.goto TheStormPeaks,29.40,73.76
.turnin 12863 >>交任务: |cRXP_FRIENDLY_表示感谢|r
.accept 12864 >>接任务: |cRXP_LOOT_失踪的斥候|r
.goto TheStormPeaks,29.18,74.91
.accept 12865 >>接任务: |cRXP_LOOT_忠诚的伙伴|r
.goto TheStormPeaks,29.83,75.72
.target Archaeologist Andorin
.target Lagnus
.target Glorthal Stiffbeard
.target Fjorlin Frostbrow
step << Alliance Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格努斯|r
.goto TheStormPeaks,29.40,73.76
.turnin 12871 >>交任务: |cRXP_FRIENDLY_探险者协会的帮助|r
.accept 12873 >>接任务: |cRXP_LOOT_霜脉矮人之王|r
.target Lagnus
step << Alliance Mage
#completewith next
.goto TheStormPeaks,28.71,74.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古达·硬锤|r
.home >>将你的炉石设置为冰封
.target Gunda Boldhammer
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格努斯|r, |cRXP_FRIENDLY_格罗萨·硬须|r, Yorg, |cRXP_FRIENDLY_弗亚林·霜眉|r << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗萨·硬须|r, Yorg, |cRXP_FRIENDLY_弗亚林·霜眉|r << Mage
.turnin 12871 >>交任务: |cRXP_FRIENDLY_探险者协会的帮助|r << !Mage
.accept 12873 >>接任务: |cRXP_LOOT_霜脉矮人之王|r << !Mage
.goto TheStormPeaks,29.40,73.76 << !Mage
.turnin 12868 >>交任务: |cRXP_FRIENDLY_希尔拉娜·冰啸|r
.goto TheStormPeaks,29.18,74.91
.turnin 12873 >>交任务: |cRXP_FRIENDLY_霜脉矮人之王|r
.accept 12874 >>接任务: |cRXP_LOOT_霜脉矮人的热情|r
.goto TheStormPeaks,30.26,74.76
.turnin 12867 >>交任务: |cRXP_FRIENDLY_偷宝宝的鹰身人|r
.goto TheStormPeaks,29.83,75.72
.target Lagnus << !Mage
.target Glorthal Stiffbeard
.target Yorg Stormheart
.target Fjorlin Frostbrow
.isQuestComplete 12868
step << Alliance
#label Frosthold4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格努斯|r, Yorg, |cRXP_FRIENDLY_弗亚林·霜眉|r << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Yorg, |cRXP_FRIENDLY_弗亚林·霜眉|r << Mage
.turnin 12871 >>交任务: |cRXP_FRIENDLY_探险者协会的帮助|r << !Mage
.accept 12873 >>接任务: |cRXP_LOOT_霜脉矮人之王|r << !Mage
.goto TheStormPeaks,29.40,73.76 << !Mage
.turnin 12873 >>交任务: |cRXP_FRIENDLY_霜脉矮人之王|r
.accept 12874 >>接任务: |cRXP_LOOT_霜脉矮人的热情|r
.goto TheStormPeaks,30.26,74.76
.turnin 12867 >>交任务: |cRXP_FRIENDLY_偷宝宝的鹰身人|r
.goto TheStormPeaks,29.83,75.72
.target Lagnus << !Mage
.target Yorg Stormheart
.target Fjorlin Frostbrow
step << Alliance
.abandon 12868 >>放弃西拉那冰尖
step << Alliance
.goto TheStormPeaks,29.83,75.72
.gossipoption 93345 >>对话: |cRXP_FRIENDLY_弗亚林·霜眉|r
.timer 160,Fervor of the Frostborn RP
.skipgossip
.target Fjorlin Frostbrow
.skill riding,300,1
.isOnQuest 12874
step << Alliance
.goto TheStormPeaks,53.61,35.14
>>|cRXP_WARN_等待RP|r
>>将|T132325:0|t[|cRXP_Loot_Battered Storm Hammer |r]洗劫一空
.collect 42624,1 
.skill riding,300,1
.isOnQuest 12874
step << Alliance
#completewith next
.goto TheStormPeaks,53.61,35.14,100 >>前往创客台
.skill riding,<300,1
step << Alliance
.goto TheStormPeaks,53.61,35.14
>>将|T132325:0|t[|cRXP_Loot_Battered Storm Hammer |r]洗劫一空
.collect 42624,1 
.isOnQuest 12874
step << Alliance
.goto TheStormPeaks,53.55,37.85
>>杀死|cRXP_ENEMY_铁守望者|r
>>|cRXP_WARN_冷却时使用|r|T132325:0|t[|cRXP_LOOT_Battered Storm Hammer |r]|cRXP-WARN_on |cRXP_ENEMY_the Iron Watcher |r|r
>>|cRXP_WARN_确保你也在使用你的标准能力|r
.complete 12874,1 
.mob The Iron Watcher
.use 42624
step
.goto TheStormPeaks,62.64,60.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈尔弗丹|r
.fp Dun Niffelem >>获取Dun Niffelem飞行路线
.target Halvdan
step
.goto TheStormPeaks,65.45,60.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约库姆国王|r
.accept 12966 >>接任务: |cRXP_LOOT_你不会找不到他|r
.target King Jokkum
step
.goto TheStormPeaks,75.37,63.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚米尔德|r
.turnin 12966 >>交任务: |cRXP_FRIENDLY_你不会找不到他|r
.accept 12967 >>接任务: |cRXP_LOOT_元素之战|r
.target Njormeld
step
#completewith next
.goto TheStormPeaks,75.71,63.91
.vehicle >>安装|cRXP_FRIENDLY_Snorri|r:3
.target Snorri
step
.loop 40,TheStormPeaks,76.86,63.17,77.08,62.02,77.49,62.79,76.86,63.17
>>铸造|T135850:0|t[收集雪]（1）在|cRXP_PICK_Snowfrees|r旁边的地面上进行|cRXP_LOOT_Snowball |r
>>通过对|cRXP_ENEMY_Seething Revenants|r施放|T132387:0|t[投掷雪球]（2）杀死他们
.complete 12967,1 
.mob Seething Revenant
step
.goto TheStormPeaks,75.37,63.57
>>卸载|cRXP_FRIENDLY_Snorri|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚米尔德|r
>>|cRXP_WARN_您可能需要稍微飞离，然后返回阶段|cRXP_FRIENDLY_Njormeld|r返回|r
.turnin 12967 >>交任务: |cRXP_FRIENDLY_元素之战|r
.complete 12924,1 
.target Njormeld
step
.goto TheStormPeaks,66.15,61.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_李奥霍夫|r
.turnin 13559 >>交任务: |cRXP_FRIENDLY_霍迪尔的供品|r
.target Lillehoff
.itemcount 42780,10
.reputation 1119,neutral,>2675,1 - Skip if 325 rep away from Friendly (250 from In Memoriam, 75 from Monument. Optional 350 from hot and cold)
step
.goto TheStormPeaks,66.15,61.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_李奥霍夫|r
.turnin 13559 >>交任务: |cRXP_FRIENDLY_霍迪尔的供品|r
.target Lillehoff
.itemcount 42780,10
.reputation 1119,neutral,>2675,1 - Skip if 325 rep away from Friendly (250 from In Memoriam, 75 from Monument. Optional 350 from hot and cold)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚米尔德|r, |cRXP_FRIENDLY_约库姆国王|r
.turnin 12924 >>交任务: |cRXP_FRIENDLY_重铸盟约|r
.accept 13009 >>接任务: |cRXP_LOOT_新的开始|r
.accept 12985 >>接任务: |cRXP_LOOT_雷铸徽记|r
.goto TheStormPeaks,63.21,63.24
.accept 13011 >>接任务: |cRXP_LOOT_斩除尤卡塔尔|r
.accept 12975 >>接任务: |cRXP_LOOT_回首往事|r
.goto TheStormPeaks,65.45,60.16
.target Njormeld
.target King Jokkum
.reputation 1119,friendly,<0,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚米尔德|r, |cRXP_FRIENDLY_约库姆国王|r
.turnin 12924 >>交任务: |cRXP_FRIENDLY_重铸盟约|r
.accept 13009 >>接任务: |cRXP_LOOT_新的开始|r
.goto TheStormPeaks,63.21,63.24


.accept 12975 >>接任务: |cRXP_LOOT_回首往事|r
.goto TheStormPeaks,65.45,60.16
.target Njormeld
.target King Jokkum
.reputation 1119,friendly,>0,1 
step
.goto TheStormPeaks,63.21,63.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚米尔德|r
.accept 12985 >>接任务: |cRXP_LOOT_雷铸徽记|r
.target Njormeld
.reputation 1119,friendly,<0,1
step << skip
.loop 50,TheStormPeaks,69.46,62.33,69.29,60.15,69.02,57.86,70.27,57.23,71.26,55.85,70.36,57.82,70.03,59.39,70.56,60.49,71.85,59.01,71.74,60.57,71.92,62.82,70.87,61.68,70.22,62.39,69.46,62.33
>>杀死|cRXP_ENEMY_Brittle Revenants|r。掠夺他们的|T135852:0|t[|cRXX_Loot_Essences of Ice|r]
.collect 42246,6,12981,1 
.mob Brittle Revenant
.isOnQuest 12981
step
.loop 30,TheStormPeaks,68.78,60.17,69.65,58.90,68.43,57.99,69.26,57.06,70.91,56.86,70.87,61.36,70.28,62.29,68.50,63.29,69.70,61.40,68.78,60.17
>>在|cRXP_ENEMY_Dead Iron Giants|r上使用|T134710:0|t[钻石尖镐]。掠夺他们的|cRXX_Loot_风暴锻造的眼睛|r
>>如果|cRXP_ENEMY_Stormformed Ambusher|r在使用|T134710:0|t[钻石尖镐]后产卵，则杀死它们。掠夺他们的|cRXP_Loot_风暴锻造的眼睛|r
.complete 12985,1 
.target Dead Iron Giant
.mob Stormforged Ambusher
.use 42424
.isOnQuest 12985

step << skip
.loop 40,TheStormPeaks,73.29,62.93,74.38,62.94,75.62,63.46,76.81,63.04,76.76,62.50,77.16,62.18,77.63,62.66,77.23,63.54,76.81,63.04
>>使用地面上的|cRXP_PICK_Smoldering Scrape|r上的|T135852:0|t[|cRXP_LOOT_冰的本质|r]将其变成|cRXP-LOOT_冷冻铁废料|r
>>将|cRXP_Loot_冻结的铁屑|r洗劫一空
.collect 42246,6,12981,1,-1 
.complete 12981,1 
.use 42246
step
.loop 45,TheStormPeaks,70.97,52.15,71.23,52.18,71.87,51.82,72.32,52.10,72.43,51.45,72.70,50.14,73.67,49.59,74.68,48.56,73.53,47.90,72.15,47.50,71.69,48.86,70.83,48.33,70.12,48.97,70.73,49.43,70.21,50.48,70.83,50.51,70.97,52.15
>>掠夺地面上的|cRXP_Loot_Horn碎片|r
.complete 12975,1 
step
.loop 50,TheStormPeaks,69.46,62.33,69.29,60.15,69.02,57.86,70.27,57.23,71.26,55.85,70.36,57.82,70.03,59.39,70.56,60.49,71.85,59.01,71.74,60.57,71.92,62.82,70.87,61.68,70.22,62.39,69.46,62.33
>>杀死|cRXP_ENEMY_Brittle Revenants|r。掠夺他们以换取|cRXX_Loot_ Ulduar|r的遗迹
.collect 42780,10,12985,1 
.reputation 1119,neutral,>2675,1
step << Horde
.goto TheStormPeaks,65.41,50.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海娅·帕尔卡|r
.fp Camp Tunka'lo >>获得Tunka'lo营地飞行路线
.target Hyeyoung Parka
step << Horde
.goto TheStormPeaks,65.77,51.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夏拉托尔|r
.turnin 13426 >>交任务: |cRXP_FRIENDLY_见证者夏拉托尔|r
.accept 13034 >>接任务: |cRXP_LOOT_见证者与英雄|r
.target Xarantaur
step << Horde
>>单击挂在墙上的|cRXP_PICK_History Scrolls|r
.complete 13034,1 
.goto TheStormPeaks,65.81,50.43,-1
.complete 13034,2 
.goto TheStormPeaks,66.84,50.10,-1
.complete 13034,3 
.goto TheStormPeaks,67.50,50.58,-1
step << Horde
.goto TheStormPeaks,65.77,51.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夏拉托尔|r
.turnin 13034 >>交任务: |cRXP_FRIENDLY_见证者与英雄|r
.accept 13037 >>接任务: |cRXP_LOOT_雷蹄的记忆|r
.target Xarantaur
step << Horde
.goto TheStormPeaks,62.33,41.20,30 >>进入Frostfloe Deep洞穴
.isOnQuest 13037
step << Horde
#completewith next
.goto TheStormPeaks,61.71,39.87,20,0
.goto TheStormPeaks,61.38,39.38,20,0
.goto TheStormPeaks,61.18,38.99,10 >>前往|cRXP_FRIENDLY_Swiftsper|r
step << Horde
.goto TheStormPeaks,61.18,38.99,10,0
.gossipoption 93202 >>Talk to |cRXP_FRIENDLY_Swiftspear|r
.timer 44,Memories of Stormhoof RP
.accept 13038 >>接任务: |cRXP_LOOT_时间的扰动|r

.target Chieftain Swiftspear
.skipgossip 30395,1
step << Horde
.loop 20,TheStormPeaks,61.75,39.83,61.95,40.00,62.63,40.42,62.24,40.36,61.98,41.00,61.95,40.00,61.75,39.83,61.74,38.89,61.73,38.29,61.61,38.06,61.42,38.73,61.08,39.36,61.74,38.89
>>|cRXP_WARN_不要等待|cRXP_FRIENDLY_Swiftsper|r's RP|r
>>在|cRXP_PICK_Frostfloe步枪|r（黄色漩涡）上使用|T133493:0|t[酋长图腾]
.complete 13038,1,3 
.use 42781
step << Horde
.loop 20,TheStormPeaks,61.75,39.83,61.95,40.00,62.63,40.42,62.24,40.36,61.98,41.00,61.95,40.00,61.75,39.83,61.74,38.89,61.73,38.29,61.61,38.06,61.42,38.73,61.08,39.36,61.74,38.89
>>|cRXP_WARN_不要等待|cRXP_FRIENDLY_Swiftsper|r's RP|r
.cast 56765	>>在|cRXP_PICK_Frostfloe步枪|r（黄色漩涡）上使用|T133493:0|t[酋长图腾]

.use 42781
step << Horde
.goto TheStormPeaks,61.18,38.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swiftspear|r
>>|cRXP_WARN_Wait out his RP|r
.complete 13037,1 
.target Chieftain Swiftspear
.skipgossip
.timer 44,Memories of Stormhoof RP (CONTINUE QUESTING)
step << Horde
.goto TheStormPeaks,65.77,51.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夏拉托尔|r
.turnin 13037 >>交任务: |cRXP_FRIENDLY_雷蹄的记忆|r
.turnin 13038 >>交任务: |cRXP_FRIENDLY_时间的扰动|r
.accept 13048 >>接任务: |cRXP_LOOT_错误的时间流|r
.accept 13049 >>接任务: |cRXP_LOOT_英雄的装备|r
.target Xarantaur
step << Horde
#completewith next
.goto TheStormPeaks,67.09,44.72,40 >>进入咆哮谷
step << Horde
#completewith next
>>杀死|cRXP_LOOT_Storm的Scions |r。掠夺它们以获取|cRXD_LOOT_SStormhoot的长矛|r和|cRXT_LOOT_Sstormhoot的邮件|r
.complete 13049,1 
.complete 13049,2 
.mob Scion of Storm
step << Horde
.loop 40,TheStormPeaks,67.06,44.48,67.34,43.74,67.98,44.43,68.49,44.10,68.59,42.84,69.60,42.58,69.70,40.90,69.41,41.56,69.11,42.14,68.44,41.26,68.57,40.95,68.72,40.16,67.90,39.67,67.84,40.98,67.99,42.19,67.06,44.48
>>点击地面上的|cRXP_PICK_Taunka工件|r
.complete 13048,1 
step << Horde
.loop 40,TheStormPeaks,67.65,44.68,67.72,43.54,68.46,43.26,69.34,42.31,69.70,40.90,69.11,42.14,68.44,41.26,68.48,40.69,68.41,39.75,67.84,40.98,67.99,42.19,67.06,44.48
>>杀死|cRXP_LOOT_Storm的Scions |r。掠夺它们以获取|cRXD_LOOT_SStormhoot的长矛|r和|cRXT_LOOT_Sstormhoot的邮件|r
.complete 13049,1 
.complete 13049,2 
.mob Scion of Storm
step << Horde
.goto TheStormPeaks,65.77,51.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夏拉托尔|r
.turnin 13048 >>交任务: |cRXP_FRIENDLY_错误的时间流|r
.turnin 13049 >>交任务: |cRXP_FRIENDLY_英雄的装备|r
.accept 13058 >>接任务: |cRXP_LOOT_改变风向|r
.target Xarantaur
step << Horde
#completewith next
.goto TheStormPeaks,64.55,46.88
.cast 56863 >>使用|T133526:0|t[The Lorehammer]成为|cRXP_FRIENDLY_Stormhoof|r
.use 42918
step << Horde
.goto TheStormPeaks,64.55,46.88
>>杀死|cRXP_ENEMY_北风|r为|cRXP-FRIENDLY_Stormhoof|r
>>施法|T135131:0|t[犀牛一击]（1）造成伤害
>>在|cRXP_ENEMY_北风|r下施放|T237589:0|t[风暴召唤]（3）造成伤害|cRXP_WARN_This is NOT a Channel |r
>>施法|T136026:0|t[地震]（2）打断|cRXP_ENEMY_北风|r's |T136018:0|t[旋风]法术
>>|cRXP_WARN_当|cRXP_ENEMY_北风|r达到20%或更低生命值时，点击掉在地上的|cRX_PICK_元素之怒之角|r|r
.complete 13058,1 
.mob The North Wind
.use 42918
step << Horde
.goto TheStormPeaks,65.77,51.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夏拉托尔|r
.turnin 13058 >>交任务: |cRXP_FRIENDLY_改变风向|r
.target Xarantaur
step
.goto TheStormPeaks,66.15,61.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_李奥霍夫|r
.turnin 13559 >>交任务: |cRXP_FRIENDLY_霍迪尔的供品|r
.target Lillehoff
.itemcount 42780,10
.reputation 1119,neutral,>2675,1 - Skip if 325 rep away from Friendly (250 from In Memoriam, 75 from Monument. Optional 350 from hot and cold)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约库姆国王|r, |cRXP_FRIENDLY_亚米尔德|r
.turnin 12975 >>交任务: |cRXP_FRIENDLY_回首往事|r
.accept 12976 >>接任务: |cRXP_LOOT_亡者的纪念碑|r
.goto TheStormPeaks,65.45,60.16


.turnin 12976 >>交任务: |cRXP_FRIENDLY_亡者的纪念碑|r
.accept 12985 >>接任务: |cRXP_LOOT_雷铸徽记|r
.goto TheStormPeaks,63.20,63.27
.target King Jokkum
.target Njormeld
.reputation 1119,friendly,>0,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约库姆国王|r, |cRXP_FRIENDLY_亚米尔德|r
.turnin 12975 >>交任务: |cRXP_FRIENDLY_回首往事|r
.accept 12976 >>接任务: |cRXP_LOOT_亡者的纪念碑|r
.accept 13011 >>接任务: |cRXP_LOOT_斩除尤卡塔尔|r
.goto TheStormPeaks,65.45,60.16


.turnin 12976 >>交任务: |cRXP_FRIENDLY_亡者的纪念碑|r
.accept 12985 >>接任务: |cRXP_LOOT_雷铸徽记|r
.goto TheStormPeaks,63.20,63.27
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约库姆国王|r, |cRXP_FRIENDLY_亚米尔德|r
.turnin 12975 >>交任务: |cRXP_FRIENDLY_回首往事|r
.accept 12976 >>接任务: |cRXP_LOOT_亡者的纪念碑|r
.goto TheStormPeaks,65.45,60.16
.turnin 12976 >>交任务: |cRXP_FRIENDLY_亡者的纪念碑|r
.turnin 12985 >>交任务: |cRXP_FRIENDLY_雷铸徽记|r
.accept 12987 >>接任务: |cRXP_LOOT_放置霍迪尔之盔|r
.goto TheStormPeaks,63.20,63.27
.target King Jokkum
.target Njormeld
.isQuestComplete 12985
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约库姆国王|r, |cRXP_FRIENDLY_亚米尔德|r
.turnin 12975 >>交任务: |cRXP_FRIENDLY_回首往事|r
.accept 12976 >>接任务: |cRXP_LOOT_亡者的纪念碑|r
.goto TheStormPeaks,65.45,60.16
.turnin 12976 >>交任务: |cRXP_FRIENDLY_亡者的纪念碑|r
.accept 12987 >>接任务: |cRXP_LOOT_放置霍迪尔之盔|r
.goto TheStormPeaks,63.20,63.27
.target King Jokkum
.target Njormeld
.isQuestTurnedIn 12985
step
.loop 30,TheStormPeaks,68.78,60.17,69.65,58.90,68.43,57.99,69.26,57.06,70.91,56.86,70.87,61.36,70.28,62.29,68.50,63.29,69.70,61.40,68.78,60.17
>>在|cRXP_ENEMY_Dead Iron Giants|r上使用|T134710:0|t[钻石尖镐]。掠夺他们的|cRXX_Loot_风暴锻造的眼睛|r
>>如果|cRXP_ENEMY_Stormformed Ambusher|r在使用|T134710:0|t[钻石尖镐]后产卵，则杀死它们。掠夺他们的|cRXP_Loot_风暴锻造的眼睛|r
.complete 12985,1 
.target Dead Iron Giant
.mob Stormforged Ambusher
.use 42424
.isOnQuest 12985
step
.goto TheStormPeaks,63.20,63.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚米尔德|r
.turnin 12985 >>交任务: |cRXP_FRIENDLY_雷铸徽记|r
.accept 12987 >>接任务: |cRXP_LOOT_放置霍迪尔之盔|r
.target Njormeld
.isQuestComplete 12985
step
.goto TheStormPeaks,63.20,63.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚米尔德|r
.accept 12987 >>接任务: |cRXP_LOOT_放置霍迪尔之盔|r
.target Njormeld
.isQuestTurnedIn 12985
step
.goto TheStormPeaks,64.24,59.23
>>|cRXP_WARN_飞到闪闪发光的冰派克|r
>>|cRXP_WARN_在飞行架上使用|r|T134465:0|t[发音片]|cRXP_WARN_when|r
.complete 12987,1 
.use 42442
step
.goto TheStormPeaks,63.20,63.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚米尔德|r
.turnin 12987 >>交任务: |cRXP_FRIENDLY_放置霍迪尔之盔|r
.target Njormeld
step
.goto TheStormPeaks,64.84,59.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者兰德维尔|r
.accept 13001 >>接任务: |cRXP_LOOT_打造霍迪尔之矛|r
.target Lorekeeper Randvir
.reputation 1119,honored,<0,1
step
.loop 55,TheStormPeaks,58.25,60.13,58.94,61.67,57.78,63.59,56.10,66.05,56.16,67.71,55.57,67.15,53.89,65.30,54.47,64.87,56.75,64.02,57.14,61.83,58.25,60.13
>>杀死|cRXP_ENEMY_Stoic Mammoths|r。掠夺它们的|cRXX_Loot_ Stoic Mammath隐藏|r
>>|cRXP_WARN_试着杀死在山谷里奔跑的|cRXP_ENEMY_Stoic长毛象|r|r
.complete 13001,2 
.mob Stoic Mammoth
.isOnQuest 13001
step
#completewith EverS
.goto TheStormPeaks,55.80,63.82,30 >>进入冬眠洞穴
step
#completewith EverS
.goto TheStormPeaks,55.53,63.25,20,0
.goto TheStormPeaks,55.62,61.31,20,0
.goto TheStormPeaks,54.81,61.12,15 >>前往|cRXP_LOOT_Everfrost碎片|r
.isQuestTurnedIn 13011
step
.goto TheStormPeaks,55.53,63.25,30,0
.goto TheStormPeaks,55.62,61.31,30,0
.goto TheStormPeaks,55.35,60.82,30,0
.goto TheStormPeaks,54.82,60.27,30,0
.goto TheStormPeaks,54.67,61.46,30,0
.goto TheStormPeaks,55.08,61.90,30,0
.goto TheStormPeaks,55.18,62.51,30,0
.goto TheStormPeaks,53.93,61.45,15,0
.goto TheStormPeaks,54.36,61.33,20,0
.goto TheStormPeaks,53.55,61.97,30,0
.goto TheStormPeaks,53.95,63.15,30,0
.goto TheStormPeaks,54.77,63.52,30,0
.goto TheStormPeaks,55.53,63.25,30,0
.goto TheStormPeaks,55.62,61.31,30,0
.goto TheStormPeaks,55.35,60.82,30,0
.goto TheStormPeaks,54.82,60.27,30,0
.goto TheStormPeaks,54.67,61.46,30,0
.goto TheStormPeaks,55.08,61.90,30,0
.goto TheStormPeaks,55.18,62.51,30,0
.goto TheStormPeaks,53.93,61.45,15,0
.goto TheStormPeaks,54.36,61.33,20,0
.goto TheStormPeaks,53.55,61.97,30,0
.goto TheStormPeaks,53.95,63.15,30,0
.goto TheStormPeaks,54.77,63.52
>>在|cRXP_ENEMY_Dead Icemaw Bears |r上使用|T135288:0|t[Everfrost Razor]。为|T237332:0|t[|cRXX_Loot_Icemaw Bear Flank|r]掠夺它们
.collect 42733,1,13011,1 
.target Dead Icemaw Bear
.use 42732
.isOnQuest 13011
step
#completewith next
.goto TheStormPeaks,54.73,60.80
.cast 56573 >>|cRXP_WARN_使用冰冻水坑中间的|r|T237332:0|t[|cRXP_OOT_Icemaw Bear Flank|r]| cRXP_WARN_in召唤|r|cRXT_ENEMY_Jorcuttar|r
.timer 6,Culling Jorcuttar RP
.use 42733
step
.goto TheStormPeaks,54.73,60.80
>>杀死|cRXP_ENEMY_Jorcuttar|r
.complete 13011,1 
.mob Jormuttar
.use 42733
step
#label EverS
.loop 10,TheStormPeaks,54.82,61.16,54.65,60.57
>>地面上的织机|cRXP_Loot_Everfrost碎片|r
.complete 13001,1 
.isOnQuest 13001
step << Horde
#completewith HodirSpears
.goto TheStormPeaks,54.69,60.89
.goto TheStormPeaks,54.34,50.04,20 >>|cRXP_WARN_在Everfrost Shard上奔跑。通过注销然后重新登录来执行注销跳过|r
.link https://www.youtube.com/watch?v=NwW-xOpStN8 >>|cRXP_WARN_单击此处|r
.isOnQuest 13011
step << Horde
#completewith HodirSpears
.goto TheStormPeaks,54.69,60.89
.goto TheStormPeaks,54.34,50.04,20 >>|cRXP_WARN_在Everfrost Shard上奔跑。通过注销然后重新登录来执行注销跳过|r
.link https://www.youtube.com/watch?v=NwW-xOpStN8 >>|cRXP_WARN_单击此处|r
.isOnQuest 13001
.isQuestTurnedIn 13011
step << Alliance
#completewith next
.hs >>火炉到霜冻 << Mage
.hs >>达兰·赫斯 << !Mage
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Yorg, |cRXP_FRIENDLY_弗亚林·霜眉|r
.turnin 12874 >>交任务: |cRXP_FRIENDLY_霜脉矮人的热情|r
.accept 12875 >>接任务: |cRXP_LOOT_经验丰富的向导|r
.goto TheStormPeaks,30.26,74.76
.accept 12876 >>接任务: |cRXP_WARN_不速之客|r
.goto TheStormPeaks,29.83,75.72
.target Yorg Stormheart
.target Fjorlin Frostbrow
step << Alliance
#completewith next
.goto TheStormPeaks,26.73,66.86,30 >>进入霜之谷的洞穴
step << Alliance
#completewith Signet
>>杀死|cRXP_ENEMY_Stormformed入侵者|r
.complete 12876,1 
.mob Stormforged Pillager
.mob Stormforged Loreseeker
step << Alliance
.goto TheStormPeaks,26.34,66.73,15,0
.goto TheStormPeaks,26.10,67.23,15,0
.goto TheStormPeaks,26.14,69.10,15,0
.goto TheStormPeaks,25.23,68.70,12,0
.goto TheStormPeaks,25.24,68.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drom|r at the end of the cave
.turnin 12875 >>交任务: |cRXP_FRIENDLY_经验丰富的向导|r
.accept 12877 >>接任务: |cRXP_LOOT_孤独的守护者|r
.target Drom Frostgrip
step << Alliance
#completewith next
.goto TheStormPeaks,25.23,68.70,12,0
.goto TheStormPeaks,26.14,69.10,15,0
.goto TheStormPeaks,26.13,68.71,15,0
.goto TheStormPeaks,25.59,68.20,15 >>前往中间房间生成|cRXP_LOOT_Stormformed监视器|r
step << Alliance
#label Signet
.goto TheStormPeaks,25.59,68.20
>>杀死|cRXP_LOOT_Stormformed监视器|r。掠夺他|cRXP _LOOT_Frostgrip的招牌戒指|r
.complete 12877,1 
.mob Stormforged Monitor
step << Alliance
.loop 20,TheStormPeaks,26.28,66.45,26.02,67.27,24.98,67.20,24.99,67.97,25.10,68.36,24.35,68.63,24.87,69.46,24.99,69.86,25.37,69.96,26.01,69.32,25.34,68.89,25.37,69.96,26.17,69.07,26.02,67.27
>>杀死|cRXP_ENEMY_Stormformed入侵者|r
.complete 12876,1 
.mob Stormforged Pillager
.mob Stormforged Loreseeker
step
#completewith next
.goto TheStormPeaks,33.42,57.95,40 >>飞上风暴神殿，飞向|cRXP_FRIENDLY_Thorim|r
step
.goto TheStormPeaks,33.42,57.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托里姆|r
.turnin 13009 >>交任务: |cRXP_FRIENDLY_新的开始|r
.accept 13050 >>接任务: |cRXP_LOOT_维拉努斯|r
.target Thorim
step << Alliance
.line TheStormPeaks,40.89,60.14,40.32,60.20,39.06,59.56,38.69,58.57
.goto TheStormPeaks,40.89,60.14,30,0
.goto TheStormPeaks,40.32,60.20,30,0
.goto TheStormPeaks,39.06,59.56,30,0
.goto TheStormPeaks,38.69,58.57,30,0
.goto TheStormPeaks,39.06,59.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莱特乌斯|r
.turnin 12877 >>交任务: |cRXP_FRIENDLY_孤独的守护者|r
.accept 12986 >>接任务: |cRXP_LOOT_泰坦的命运|r
.target Creteus
step << Alliance
#completewith next
.cast 56510 >>使用|T237452:0|t[Creteus的移动数据库]调用|cRXP_FRIENDLY_Mobile数据库|r
.use 42679
step << Alliance
.goto TheStormPeaks,45.53,49.21
>>带着你的|cRXP_FRIENDLY_Mobile数据库|r飞上发明圣殿的中央
>>|cRXP_WARN_等待RP|r
.complete 12986,1 
.use 42679
step << Alliance
>>带着您的|cRXP_FRIENDLY_Mobile数据库|r飞上秩序圣殿的中央
>>|cRXP_WARN_等待RP|r
.complete 12986,4 
.goto TheStormPeaks,53.51,42.24
.use 42679
step << Alliance
>>带着您的|cRXP_FRIENDLY_Mobile数据库|r飞上生命圣殿的中央
>>|cRXP_WARN_等待RP|r
.complete 12986,3 
.goto TheStormPeaks,64.38,46.47
.use 42679
step << Alliance
>>带着您的|cRXP_FRIENDLY_Mobile数据库|r飞上冬季神殿的中央
>>|cRXP_WARN_等待RP|r
.complete 12986,2 
.goto TheStormPeaks,52.58,56.93
.use 42679
step
#completewith next
.goto TheStormPeaks,45.46,66.73,30 >>飞上风暴峰孵化巢
step
.goto TheStormPeaks,45.46,66.73,20,0
.goto TheStormPeaks,45.51,67.15,20,0
.goto TheStormPeaks,45.20,66.81,20,0
.goto TheStormPeaks,43.76,67.20,20,0
.goto TheStormPeaks,43.62,67.29,20,0
.goto TheStormPeaks,43.88,67.75,20,0
.goto TheStormPeaks,45.46,66.73,20,0
.goto TheStormPeaks,45.51,67.15,20,0
.goto TheStormPeaks,45.20,66.81,20,0
.goto TheStormPeaks,43.76,67.20,20,0
.goto TheStormPeaks,43.62,67.29,20,0
.goto TheStormPeaks,43.88,67.75
>>在巢穴的地面上掠夺|cRXP_Loot_小型原德雷克蛋|r
.complete 13050,1 
step << Alliance
.line TheStormPeaks,40.89,60.14,40.32,60.20,39.06,59.56,38.69,58.57
.goto TheStormPeaks,40.89,60.14,30,0
.goto TheStormPeaks,40.32,60.20,30,0
.goto TheStormPeaks,39.06,59.56,30,0
.goto TheStormPeaks,38.69,58.57,30,0
.goto TheStormPeaks,39.06,59.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莱特乌斯|r
.turnin 12986 >>交任务: |cRXP_FRIENDLY_泰坦的命运|r
.accept 12878 >>接任务: |cRXP_LOOT_隐藏的圣物|r
.target Creteus
step << Alliance
#completewith next
.goto TheStormPeaks,41.74,62.70,30 >>Enter The Frigid Tomb
step << Alliance
#completewith next
.goto TheStormPeaks,41.99,63.41,15,0
.goto TheStormPeaks,42.91,64.35,20,0
.goto TheStormPeaks,42.83,66.17,20,0
.goto TheStormPeaks,42.96,67.08,20,0
.goto TheStormPeaks,43.39,67.63,20,0
.goto TheStormPeaks,43.86,67.03,20,0
.goto TheStormPeaks,44.51,64.54,30 >>前往《卫报》的指控
step << Alliance
.goto TheStormPeaks,44.51,64.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者的宝箱|r
.turnin 12878 >>交任务: |cRXP_FRIENDLY_隐藏的圣物|r
.accept 12879 >>接任务: |cRXP_LOOT_霜脉国王之怒|r
.target The Guardian's Charge
step << Alliance
#completewith next
.goto TheStormPeaks,41.74,62.70,30 >>Exit The Frigid Tomb
step << Alliance
.goto TheStormPeaks,38.25,61.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莱特乌斯|r
.turnin 12879 >>交任务: |cRXP_FRIENDLY_霜脉国王之怒|r
.accept 12880 >>接任务: |cRXP_LOOT_探险大师|r
.target Creteus
step
#completewith next
.goto TheStormPeaks,33.42,57.95,40 >>飞上风暴神殿，飞向|cRXP_FRIENDLY_Thorim|r
step
.goto TheStormPeaks,33.42,57.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托里姆|r
.turnin 13050 >>交任务: |cRXP_FRIENDLY_维拉努斯|r
.accept 13051 >>接任务: |cRXP_LOOT_侵犯领土|r
.target Thorim
step
#completewith next
.goto TheStormPeaks,38.73,65.54
.cast 56788 >>使用母巢的|T132833:0|t[偷来的原龙蛋]引诱|cRXP_ENEMY_Veranus|r
.timer 42,Veranus RP
.use 42797
step
.goto TheStormPeaks,38.73,65.54
>>|cRXP_WARN_等待RP|r
.complete 13051,1 
step
#completewith next
.goto TheStormPeaks,33.42,57.95,40 >>飞上风暴神殿，飞向|cRXP_FRIENDLY_Thorim|r
step
.goto TheStormPeaks,33.42,57.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托里姆|r
.turnin 13051 >>交任务: |cRXP_FRIENDLY_侵犯领土|r
.accept 13010 >>接任务: |cRXP_LOOT_科洛米尔，风暴之锤|r
.target Thorim
step
#label HodirSpears
.goto TheStormPeaks,64.84,59.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者兰德维尔|r
.turnin 13001 >>交任务: |cRXP_FRIENDLY_打造霍迪尔之矛|r
.target Lorekeeper Randvir
.isQuestComplete 13001
step
.goto TheStormPeaks,65.45,60.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约库姆国王|r
.turnin 13011 >>交任务: |cRXP_FRIENDLY_斩除尤卡塔尔|r
.target King Jokkum
step
.goto TheStormPeaks,65.45,60.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约库姆国王|r
.vehicle >>安装|cRXP_FRIENDLY_Jokkum|r
.timer 118,Krolmir Hammer of Storms RP
.target King Jokkum
.skipgossip
.isOnQuest 13010
step
.goto TheStormPeaks,71.37,48.78
>>|cRXP_WARN_等待RP|r
.complete 13010,1 
step
.goto TheStormPeaks,71.37,48.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托里姆|r
>>|cRXP_WARN_在他消失之前赶紧这么做|r
.turnin 13010 >>交任务: |cRXP_FRIENDLY_科洛米尔，风暴之锤|r
.accept 13057 >>接任务: |cRXP_LOOT_造物者圣台|r
.target Thorim
step
#completewith next
.goto TheStormPeaks,56.26,51.36,30 >>前往创客台
step
.goto TheStormPeaks,56.26,51.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托里姆|r
.turnin 13057 >>交任务: |cRXP_FRIENDLY_造物者圣台|r
.accept 13005 >>接任务: |cRXP_LOOT_土灵的誓言|r
.accept 13035 >>接任务: |cRXP_LOOT_洛肯的副官|r
.target Thorim
step
#completewith Eisenfaust
+使用|T134229:0|t[峰之角]召唤|cRXP_FRIENDLY_Oathbound Warders|r保护您
>>|cRXP_WARN_使用|r|T135809:0|t[熔岩爆发]|cRXP_WARN_and|r|T136026:0|t[地震]|cRXP_WARN_to造成伤害|r
.use 42840
step
#completewith Duronn
>>杀死|cRXP_ENEMY_Iron Dwarf Assailants|r和|cRXP_ENEMY_Iron Sentinels|r
.complete 13005,1 
.complete 13005,2 
.mob Iron Dwarf Assailant
.mob Iron Sentinel
step
.goto TheStormPeaks,48.72,45.65
>>杀死|cRXP_ENEMY_Halefnir|r
>>|cRXP_WARN_确保召集了|cRXP_FIRENDLY_Oathbound Warders|r|r
>>|cRXP_WARN_使用|r|cRXP_FRIENDLY_Oathbound Warders|r'|T136026:0|t[地震]|cRXP_WARN_pell中断|cRXD_ENEMY_Halefnir|r's|T136015:0|t[链闪电]|cRX P_WARN_peLL|r
.complete 13035,2 
.mob Halefnir the Windborn
step
#label Duronn
.goto TheStormPeaks,44.94,38.03
>>杀死|cRXP_ENEMY_Duronn|r
>>|cRXP_WARN_确保召集了|cRXP_FIRENDLY_Oathbound Warders|r|r
>>|cRXP_WARN_使用|r|cRXP_FRIENDLY_Oathbound Warders|r'|T136026:0|t[地震]|cRXP _WARN_pell中断|cRXP_ENEMY_Duronn|r's|r|T135915:0|t[重建]|cRXP_WARN_pell|r
.complete 13035,3 
.mob Duronn the Runewrought
step
#completewith next
.goto TheStormPeaks,56.47,41.06,70,0
.goto TheStormPeaks,56.98,44.13,30 >>前往|cRXP_ENEMY_Eisenfaust|r
step
#label Eisenfaust
.goto TheStormPeaks,55.30,43.32
>>杀死|cRXP_ENEMY_Eisenfaust|r
>>|cRXP_WARN_确保召集了|cRXP_FIRENDLY_Oathbound Warders|r|r
.complete 13035,1 
.mob Eisenfaust
step
.loop 50,TheStormPeaks,57.61,47.13,58.07,46.66,58.79,45.75,59.61,45.44,59.80,44.08,59.42,43.78,57.78,43.87,57.61,45.61,57.21,46.89,57.61,47.13
>>使用|T134229:0|t[峰之角]召唤|cRXP_FRIENDLY_Oathbound Warders|r保护您
>>|cRXP_WARN_使用|r|T135809:0|t[熔岩爆发]|cRXP_WARN_and|r|T136026:0|t[地震]|cRXP_WARN_to造成伤害|r
>>杀死|cRXP_ENEMY_Iron Dwarf Assailants|r和|cRXP_ENEMY_Iron Sentinels|r
.complete 13005,1 
.complete 13005,2 
.mob Iron Dwarf Assailant
.mob Iron Sentinel
.use 42840
step
.goto TheStormPeaks,56.26,51.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托里姆|r
.turnin 13005 >>交任务: |cRXP_FRIENDLY_土灵的誓言|r
.turnin 13035 >>交任务: |cRXP_FRIENDLY_洛肯的副官|r
.accept 13047 >>接任务: |cRXP_LOOT_清算之战|r
.target Thorim
step
.goto TheStormPeaks,44.49,28.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古怪的沙瓦留斯|r
.fp Ulduar >>获取Ulduar飞行路线
.target Shavalius the Fancy
step
.goto TheStormPeaks,35.93,31.52
.gossipoption 94051 >>对话: |cRXP_FRIENDLY_托里姆|r
.timer 100,The Reckoning RP
.target Thorim
.skipgossip
.isOnQuest 13047
step
.goto TheStormPeaks,34.23,34.21
>>|cRXP_WARN_等待RP|r
.complete 13047,1 
step << skip
#completewith end
.goto TheStormPeaks,44.49,28.19
>>飞到乌尔杜尔城外
.fp Ulduar >>获取Ulduar飞行路线
.target Shavalius the Fancy
.fly Dun Niffelem >>飞往Dun Niffelem。这需要1米44秒，所以你可以在此期间休息一下
.skill riding,300,1
step
.goto TheStormPeaks,65.45,60.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约库姆国王|r
.turnin 13047 >>交任务: |cRXP_FRIENDLY_清算之战|r
.target King Jokkum
step << Alliance
.goto TheStormPeaks,39.56,56.36
>>|cRXP_WARN_前往制造商引擎底部|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann|r
.turnin 12880 >>交任务: |cRXP_FRIENDLY_探险大师|r
.accept 12973 >>接任务: |cRXP_LOOT_铜须兄弟|r
.target Brann Bronzebeard
step << Alliance
#completewith next
.goto TheStormPeaks,39.61,56.48
.vehicle >>进入|cRXP_FRIENDLY_Brann的飞行机器|r
.timer 148,The Brothers Bronzebeard RP
.target Brann's Flying Machine
step << Alliance
>>杀死|cRXP_ENEMY_风暴锻造的士兵|r跳上|cRXP_FRIENDLY_Brann的飞行机器|r
.goto TheStormPeaks,42.76,55.08,25 >>继续飞行|cRXP_FRIENDLY_Brann的飞行机器|r脱离制造商的引擎
.timer 264,The Brothers Bronzebeard RP
.mob Stormforged Soldier
.isOnQuest 12973
step << Alliance
.goto TheStormPeaks,30.11,73.91
>>|cRXP_WARN_等待RP|r
.complete 12973,1 
.target Brann Bronzebeard
step << Alliance
>>对话: |cRXP_FRIENDLY_维罗格·冰啸|r, |cRXP_FRIENDLY_弗亚林·霜眉|r
.turnin 12973 >>交任务: |cRXP_FRIENDLY_铜须兄弟|r
.goto TheStormPeaks,30.26,74.76
.turnin 12876 >>交任务: |cRXP_FRIENDLY_不速之客|r
.goto TheStormPeaks,29.83,75.72
.target Velog Icebellow
.target Fjorlin Frostbrow
step
.reputation 1119,honored >>|cRXP_WARN_Rach获得霍迪尔之子的荣誉，解锁额外的任务|r|T135947:0|t[英雄徽章]
>>You can do this by:
>>|cRXP_WARN_上缴|r|T237427:0|t[|cRXP_LOOT_Ulduar遗迹|r][cRXP_WARN_at|r|cRXP _FRIENDLY_Lillehoff|r
>>OR
>>|cRXP_WARN_完成霍迪尔之子每日任务。要使用特定路线，请激活黄金助手模式->诺森德每日任务->派系每日任务->霍迪尔之子每日任务路线|r
>>如果你不在乎，跳过这一步
.target Lillehoff
step
.goto TheStormPeaks,64.84,59.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者兰德维尔|r
.accept 13001 >>接任务: |cRXP_LOOT_打造霍迪尔之矛|r
.target Lorekeeper Randvir
.reputation 1119,honored,<0,1
step
.loop 55,TheStormPeaks,58.25,60.13,58.94,61.67,57.78,63.59,56.10,66.05,56.16,67.71,55.57,67.15,53.89,65.30,54.47,64.87,56.75,64.02,57.14,61.83,58.25,60.13
>>杀死|cRXP_ENEMY_Stoic Mammoths|r。掠夺它们的|cRXX_Loot_ Stoic Mammath隐藏|r
>>|cRXP_WARN_试着杀死在山谷里奔跑的|cRXP_ENEMY_Stoic长毛象|r|r
.complete 13001,2 
.mob Stoic Mammoth
.isOnQuest 13001
step
#completewith next
.goto TheStormPeaks,55.80,63.82,30 >>进入冬眠洞穴
step
#completewith next
.goto TheStormPeaks,55.53,63.25,20,0
.goto TheStormPeaks,55.62,61.31,20,0
.goto TheStormPeaks,54.81,61.12,15 >>前往|cRXP_LOOT_Everfrost碎片|r
step
.loop 10,TheStormPeaks,54.82,61.16,54.65,60.57
>>地面上的织机|cRXP_Loot_Everfrost碎片|r
.complete 13001,1 
.isOnQuest 13001
step
#completewith next
.goto TheStormPeaks,54.69,60.89
.goto TheStormPeaks,54.34,50.04,20 >>|cRXP_WARN_在Everfrost Shard上奔跑。通过注销然后重新登录来执行注销跳过|r
.link https://www.youtube.com/watch?v=NwW-xOpStN8 >>|cRXP_WARN_单击此处|r
.isOnQuest 13001
step
.goto TheStormPeaks,64.84,59.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者兰德维尔|r
.turnin 13001 >>交任务: |cRXP_FRIENDLY_打造霍迪尔之矛|r
.target Lorekeeper Randvir
.isQuestComplete 13001
]])
RXPGuides.RegisterGuide([[
#version 25
#wotlk
#group RestedXP Complexist指南
#name 英雄徽章3-冰冠
step
#completewith next
.hs >>达兰·赫斯
.zoneskip Dalaran
.zoneskip TheStormPeaks << Alliance
step
#completewith next
.zone IcecrownGlacier >>Travel to Icecrown
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Tirion, |cRXP_FRIENDLY_北伐军指挥官恩塔里|r, |cRXP_FRIENDLY_古斯塔夫神父|r, |cRXP_FRIENDLY_北伐军领主达尔弗斯|r
.accept 13036 >>接任务: |cRXP_LOOT_无上的荣耀|r
.goto IcecrownGlacier,87.46,75.83
.turnin 13036 >>交任务: |cRXP_FRIENDLY_无上的荣耀|r
.accept 13008 >>接任务: |cRXP_LOOT_天灾的战术|r
.goto IcecrownGlacier,87.11,75.86
.accept 13040 >>接任务: |cRXP_LOOT_致命的剧毒|r
.goto IcecrownGlacier,86.79,76.59
.accept 13039 >>接任务: |cRXP_LOOT_保卫前线基地|r
.goto IcecrownGlacier,86.07,75.78
.target Highlord Tirion Fordring
.target Crusade Commander Entari
.target Father Gustav
.target Crusader Lord Dalfors
step
#completewith next
.loop 45,IcecrownGlacier,84.58,78.82,84.44,78.00,84.20,77.01,83.77,76.11,83.14,76.88,83.22,75.86,83.72,74.69,83.83,73.82,83.21,73.64,83.20,72.64,82.69,71.87,84.28,72.26,84.79,73.25,85.05,73.94,85.89,73.99,85.05,73.94,84.38,74.29,84.34,75.33,84.79,75.99,84.84,77.37,84.44,78.00,84.58,78.82
>>杀死|cRXP_ENEMY_Webbed Crusaders|r以释放|cRXP_FRIENDLY_Freed Crusaders |r
>>|cRXP_FRIENDLY_自由十字军|r|cRXP_WARN_将用|r|T135970:0|t[智慧的祝福]|cRXP_WARN_，|r|T135906:0|t]力量的祝福]| cRXP_WARN_，或|r|T13595:0|t[Kings的祝福]*cRXP_WRN_对你进行强化，并为你治疗约5000点生命值|r << !Paladin
>>|cRXP_FRIENDLY_Freed Crusaders|r|cRXP_WARN_will buff you with |r|T135995:0|t[Blessing of Kings]|cRXP-WARN_ and heal your about 5000 health。确保你用|r|T135970:0|t[智慧的祝福]|cRXP_WARN_or|r|T135906:0|t][力量的祝福]中的任何一个来打磨自己 << Paladin
>>|cRXP_WARN_小心，因为|cRXP_ENEMY_Forgotten Depths救护车|r可能藏在|r|cRXX_ENEMY_Webbed十字军中|r
.complete 13008,1 
.mob Webbed Crusader
step
.loop 45,IcecrownGlacier,84.58,78.82,84.44,78.00,84.20,77.01,83.77,76.11,83.14,76.88,83.22,75.86,83.72,74.69,83.83,73.82,83.21,73.64,83.20,72.64,82.69,71.87,84.28,72.26,84.79,73.25,85.05,73.94,85.89,73.99,85.05,73.94,84.38,74.29,84.34,75.33,84.79,75.99,84.84,77.37,84.44,78.00,84.58,78.82
>>杀死|cRXP_ENEMY_遗忘深度伏击者|r、|cRXD_ENEMY_遗忘深度助手|r、| cRXP__ENEMY_被遗忘深度杀手|r和|cRXP_ENEMY_Carrion Fleshstrippers|r。掠夺他们的|cRXP_Loot_Venom Sachs|r
.complete 13039,1 
.complete 13040,1 
.mob Forgotten Depths Ambusher
.mob Forgotten Depths Acolyte
.mob Forgotten Depths Slayer
.mob Carrion Fleshstripper
step
.loop 45,IcecrownGlacier,84.58,78.82,84.44,78.00,84.20,77.01,83.77,76.11,83.14,76.88,83.22,75.86,83.72,74.69,83.83,73.82,83.21,73.64,83.20,72.64,82.69,71.87,84.28,72.26,84.79,73.25,85.05,73.94,85.89,73.99,85.05,73.94,84.38,74.29,84.34,75.33,84.79,75.99,84.84,77.37,84.44,78.00,84.58,78.82
>>杀死|cRXP_ENEMY_Webbed Crusaders|r以释放|cRXP_FRIENDLY_Freed Crusaders |r
>>|cRXP_FRIENDLY_自由十字军|r|cRXP_WARN_将用|r|T135970:0|t[智慧的祝福]|cRXP_WARN_，|r|T135906:0|t]力量的祝福]| cRXP_WARN_，或|r|T13595:0|t[Kings的祝福]*cRXP_WRN_对你进行强化，并为你治疗约5000点生命值|r << !Paladin
>>|cRXP_FRIENDLY_Freed Crusaders|r|cRXP_WARN_will buff you with |r|T135995:0|t[Blessing of Kings]|cRXP-WARN_ and heal your about 5000 health。确保你用|r|T135970:0|t[智慧的祝福]|cRXP_WARN_or|r|T135906:0|t][力量的祝福]中的任何一个来打磨自己 << Paladin
>>|cRXP_WARN_小心，因为|cRXP_ENEMY_Forgotten Depths救护车|r可能藏在|r|cRXX_ENEMY_Webbed十字军中|r
.complete 13008,1 
.mob Webbed Crusader
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_北伐军领主达尔弗斯|r, |cRXP_FRIENDLY_古斯塔夫神父|r, |cRXP_FRIENDLY_北伐军指挥官恩塔里|r, |cRXP_FRIENDLY_本诺比奥斯|r
.turnin 13039 >>交任务: |cRXP_FRIENDLY_保卫前线基地|r
.goto IcecrownGlacier,86.07,75.78
.turnin 13040 >>交任务: |cRXP_FRIENDLY_致命的剧毒|r
.goto IcecrownGlacier,86.79,76.59
.turnin 13008 >>交任务: |cRXP_FRIENDLY_天灾的战术|r
.accept 13044 >>接任务: |cRXP_LOOT_如果还有幸存者……|r
.goto IcecrownGlacier,87.11,75.86
.turnin 13044 >>交任务: |cRXP_FRIENDLY_如果还有幸存者……|r
.accept 13045 >>接任务: |cRXP_LOOT_空中救兵|r
.goto IcecrownGlacier,87.01,79.01
.target Crusader Lord Dalfors
.target Father Gustav
.target Crusade Commander Entari
.target Penumbrius
step
#completewith next
.goto IcecrownGlacier,87.10,79.14
.vehicle 30228 >>装载|cRXP_FRIENDLY_Argent Skytalon|r
.target Argent Skytalon
step
.pin Icecrown,78.75,67.05
.waypoint IcecrownGlacier,78.75,67.05,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
.goto Icecrown,86.81,76.73
>>|cRXP_WARN_演员阵容|r|T134148:0|t[抓被俘虏的十字军]（1）|cRXP_WARN_to pick up |r|cRXP_FRIENDLY_Captured Crusaders|r|cRXP_WARN_（一次只能抓一个）|r
>>|cRXP_WARN_拿起一个|cRXP_FRIENDLY_被俘十字军|r，|r|cRXP_WARN_then cast|r|T134149:0|t[放下被俘十字军]（2）
>>|cRXP_WARN_铸造|r|T132307:0|t[Soar]（3）|cRXP_WARN_飞得更快|r
.complete 13045,1 
.target Captured Crusader
.target Father Gustav
step
.goto IcecrownGlacier,87.46,75.83
>>|cRXP_WARN_拆除|r|cRXP_FRIENDLY_Argent Skytalon|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 13045 >>交任务: |cRXP_FRIENDLY_空中救兵|r
.accept 13070 >>接任务: |cRXP_LOOT_冷锋逼近|r
.target Highlord Tirion Fordring
step
.goto IcecrownGlacier,85.62,76.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_攻城大师菲斯克|r
.turnin 13070 >>交任务: |cRXP_FRIENDLY_冷锋逼近|r
.accept 13086 >>接任务: |cRXP_LOOT_最后一道防线|r
.target Siegemaster Fezzik
step
#completewith next
.goto IcecrownGlacier,85.32,75.84,-1
.goto IcecrownGlacier,85.85,76.72,-1
.goto IcecrownGlacier,85.95,75.85,-1
>>飞向|cRXP_FRIENDLY_Argent Cannon|r
.vehicle >>安装|cRXP_FRIENDLY_Argent Cannon|r
.target Argent Cannon
step
.goto IcecrownGlacier,84.8,75.8
>>|cRXP_WARN_施法|r|T134287:0|t[银炮]（1）|cRXP_WARN_造成伤害并恢复法力|r
>>|cRXP_WARN_施法|r|T237541:0|t[计算炸弹]（2）|cRXP_WARN_当|cRXP_FRIENDLY_Argent Cannon|r有足够的法力造成大量伤害时|r
>>杀死|cRXP_ENEMY_Forgotten Depths Slayers|r和|cRXX_ENEMY_Frostwoods Slayers |r
>>|cRXP_WARN_如果你的大炮被一个新的|r|cRXP_FRIENDLY_Argent Cannon|r摧毁，那就换上一把新的|cRXP_FRIENDLY_Argent Cannon|r|r
.complete 13086,1 
.complete 13086,2 
.mob Forgotten Depths Slayer
.mob Frostbrood Slayer
step
.goto IcecrownGlacier,85.62,76.01
>>拆除|cRXP_FRIENDLY_Argent Cannon|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_攻城大师菲斯克|r
.turnin 13086 >>交任务: |cRXP_FRIENDLY_最后一道防线|r
.target Siegemaster Fezzik
step
.goto IcecrownGlacier,86.03,75.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.accept 13104 >>接任务: |cRXP_LOOT_再次前往突破口吧，英雄|r << !DK
.accept 13105 >>接任务: |cRXP_LOOT_再次前往突破口吧，英雄|r << DK
.target Highlord Tirion Fordring
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑锋观察者|r, Silas, Spitzpatrick, |cRXP_FRIENDLY_古斯塔夫神父|r
.turnin 13104 >>交任务: |cRXP_FRIENDLY_再次前往突破口吧，英雄|r << !DK
.turnin 13105 >>交任务: |cRXP_FRIENDLY_再次前往突破口吧，英雄|r << DK
.accept 13118 >>接任务: |cRXP_LOOT_净化天灾城|r
.accept 13122 >>接任务: |cRXP_LOOT_天灾石|r
.goto IcecrownGlacier,83.01,72.93
.accept 13130 >>接任务: |cRXP_LOOT_公正堡的基石|r
.goto IcecrownGlacier,83.02,73.07
.accept 13135 >>接任务: |cRXP_LOOT_危险的能量|r
.goto IcecrownGlacier,82.99,73.07
.accept 13110 >>接任务: |cRXP_LOOT_永不安息的亡者|r
.goto IcecrownGlacier,82.87,72.78
.target The Ebon Watcher
.target Crusade Architect Silas
.target Crusade Engineer Spitzpatrick
.target Father Gustav
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silas|r and |cRXP_FRIENDLY_Spitzpatrick|r
.turnin 13130 >>交任务: |cRXP_FRIENDLY_公正堡的基石|r
.goto IcecrownGlacier,83.02,73.07
.turnin 13135 >>交任务: |cRXP_FRIENDLY_危险的能量|r
.goto IcecrownGlacier,82.99,73.07
.target Crusade Architect Silas
.target Crusade Engineer Spitzpatrick
.isQuestComplete 13130
.isQuestComplete 13135
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silas|r
.turnin 13130 >>交任务: |cRXP_FRIENDLY_公正堡的基石|r
.goto IcecrownGlacier,83.02,73.07
.target Crusade Architect Silas
.isQuestComplete 13130
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spitzpatrick|r
.turnin 13135 >>交任务: |cRXP_FRIENDLY_危险的能量|r
.goto IcecrownGlacier,82.99,73.07
.target Crusade Engineer Spitzpatrick
.isQuestComplete 13135
step
#completewith Crusaders
>>杀死|cRXP_ENEMY_Forgotten Depths High Priests|r，|cRXD_ENEMY_Forgotten Depths Underkings|r，| cRXP__ENEMY_Wrathstrike Gargoyles|r和|cRXP_ENEMY_Reanimated Crusaders|r。掠夺它们以获得|cRXP_Loot_Surgestones|r
.complete 13122,1 
.mob Forgotten Depths High Priest
.mob Forgotten Depths Underking
.mob Wrathstrike Gargoyle
.mob Reanimated Crusader
step
#completewith Kings
>>|cRXP_WARN_杀死|cRXP_ENEMY_复活的十字军|r。在他们的尸体上使用|r|T134791:0|t[圣水]|cRXP-WARN_|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_复活十字军|r|cRXP_WARN_cast|r|T237529:0|t[不公正之锤]（|cRXX_WARN_6第二次眩晕|r）
.complete 13118,3 
.complete 13110,1 
.mob Reanimated Crusader
.use 43153
step
#completewith next
>>杀死|cRXP_ENEMY_被遗忘的深度Underkings|r
.complete 13118,2 
.mob Forgotten Depths Underking
step
.goto IcecrownGlacier,79.19,64.00,15,0
.goto IcecrownGlacier,79.52,64.09,15,0
.goto IcecrownGlacier,79.65,64.12,15,0
.goto IcecrownGlacier,77.70,65.51,45,0
.goto IcecrownGlacier,77.34,68.28,15,0
.goto IcecrownGlacier,77.50,68.58,15,0
.goto IcecrownGlacier,77.58,68.73,15,0
.goto IcecrownGlacier,78.92,60.93,45,0
.goto IcecrownGlacier,79.35,60.05,45,0
.goto IcecrownGlacier,79.67,60.76,15,0
.goto IcecrownGlacier,79.94,60.36,30,0
.goto IcecrownGlacier,80.57,60.88,30,0
.goto IcecrownGlacier,80.20,61.97,30,0
.goto IcecrownGlacier,79.57,61.45
>>杀死|cRXP_ENEMY_Forgotten Depths High Priests|r
.complete 13118,1 
.mob Forgotten Depths High Priest
step
#label Kings
.loop 55,IcecrownGlacier,78.61,69.42,80.84,65.14,79.19,65.04,78.18,62.85,77.09,64.60,76.65,63.15,75.21,63.11,75.73,67.13,78.61,69.42
>>杀死|cRXP_ENEMY_被遗忘的深度Underkings|r
.complete 13118,2 
.mob Forgotten Depths Underking
step
#label Crusaders
.loop 55,IcecrownGlacier,78.52,63.80,79.29,65.43,80.81,63.66,81.36,65.23,80.53,66.15,80.46,68.07,79.05,69.85,78.31,69.79,78.08,68.01,76.80,67.71,78.23,65.65,78.52,63.80
>>|cRXP_WARN_杀死|cRXP_ENEMY_复活的十字军|r。在他们的尸体上使用|r|T134791:0|t[圣水]|cRXP-WARN_|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_复活十字军|r|cRXP_WARN_cast|r|T237529:0|t[不公正之锤]（|cRXX_WARN_6第二次眩晕|r）
.complete 13118,3 
.complete 13110,1 
.mob Reanimated Crusader
.use 43153
step
.loop 55,IcecrownGlacier,78.52,63.80,79.29,65.43,80.81,63.66,81.36,65.23,80.53,66.15,80.46,68.07,79.05,69.85,78.31,69.79,78.08,68.01,76.80,67.71,78.23,65.65,78.52,63.80
>>杀死|cRXP_ENEMY_Forgotten Depths High Priests|r，|cRXD_ENEMY_Forgotten Depths Underkings|r，| cRXP__ENEMY_Wrathstrike Gargoyles|r和|cRXP_ENEMY_Reanimated Crusaders|r。掠夺它们以获得|cRXP_Loot_Surgestones|r
.complete 13122,1 
.mob Forgotten Depths High Priest
.mob Forgotten Depths Underking
.mob Wrathstrike Gargoyle
.mob Reanimated Crusader
step
#completewith next
.goto CrystalsongForest,61.1,52.4,0
.goto CrystalsongForest,58.9,62.8,0
.goto CrystalsongForest,81.1,72.4,0
.goto CrystalsongForest,89.2,55.7,0
.goto CrystalsongForest,61.1,52.4,0
>>杀死|cRXP_ENEMY_Shandaral|r和|cRXX_ENEMY_Unbound|r。掠夺它们的|cRXP_Loot_结晶能量|r
.complete 13135,1 
.mob Shandaral Hunter Spirit
.mob Shandaral Druid Spirit
.mob Shandaral Warrior Spirit
.mob Shandaral Spirit Wolf
.mob Unbound Dryad
.mob Unbound Ent
.mob Unbound Corrupter
.mob Unbound Trickster
step
>>地面上的织机|cRXP_Loot_水晶心木|r和|cRXD_Loot_古代精灵砖石|r
.complete 13130,1 
.loop 65,CrystalsongForest,61.95,53.52,69.39,54.34,75.65,55.87,82.81,55.91,89.03,56.83,88.84,61.89,82.97,68.90,80.59,73.98,78.61,69.57,73.00,72.27,69.90,67.54,68.63,68.93,67.23,67.71,63.94,68.17,61.98,68.45,58.97,63.85,61.95,53.52
.complete 13130,2 
.loop 55,CrystalsongForest,72.44,57.45,72.85,63.89,75.80,65.26,79.85,67.87,81.26,67.01,79.09,62.79,82.63,59.78,83.84,63.46,85.53,58.70,88.20,59.56,88.51,60.92,83.79,63.53
step
.loop 55,CrystalsongForest,72.44,57.45,72.85,63.89,75.80,65.26,79.85,67.87,81.26,67.01,79.09,62.79,82.63,59.78,83.84,63.46,85.53,58.70,88.20,59.56,88.51,60.92,83.79,63.53
>>杀死|cRXP_ENEMY_Shandaral|r和|cRXX_ENEMY_Unbound|r。掠夺它们的|cRXP_Loot_结晶能量|r
.complete 13135,1 
.mob Shandaral Hunter Spirit
.mob Shandaral Druid Spirit
.mob Shandaral Warrior Spirit
.mob Shandaral Spirit Wolf
.mob Unbound Dryad
.mob Unbound Ent
.mob Unbound Corrupter
.mob Unbound Trickster
step
#completewith next
.hs >>达兰·赫斯 << !Mage
.cast 53140 >>铸造|T237509:0|t[电报：Dalaran] << Mage
.cooldown item,6948,>0 << !Mage
.zoneskip Icecrown
.zoneskip Dalaran
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Silas, Spitzpatrick, |cRXP_FRIENDLY_黑锋观察者|r, |cRXP_FRIENDLY_古斯塔夫神父|r
.turnin 13130 >>交任务: |cRXP_FRIENDLY_公正堡的基石|r
.goto IcecrownGlacier,83.02,73.07
.turnin 13135 >>交任务: |cRXP_FRIENDLY_危险的能量|r
.goto IcecrownGlacier,82.99,73.07
.turnin 13118 >>交任务: |cRXP_FRIENDLY_净化天灾城|r
.turnin 13122 >>交任务: |cRXP_FRIENDLY_天灾石|r
.accept 13125 >>接任务: |cRXP_LOOT_凝固的空气|r
.goto IcecrownGlacier,83.01,72.93
.turnin 13110 >>交任务: |cRXP_FRIENDLY_永不安息的亡者|r
.goto IcecrownGlacier,82.87,72.78
.target Crusade Architect Silas
.target Crusade Engineer Spitzpatrick
.target The Ebon Watcher
.target Father Gustav
.isOnQuest 13130
.isOnQuest 13135
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Silas, |cRXP_FRIENDLY_黑锋观察者|r, |cRXP_FRIENDLY_古斯塔夫神父|r
.turnin 13130 >>交任务: |cRXP_FRIENDLY_公正堡的基石|r
.goto IcecrownGlacier,83.02,73.07
.turnin 13118 >>交任务: |cRXP_FRIENDLY_净化天灾城|r
.turnin 13122 >>交任务: |cRXP_FRIENDLY_天灾石|r
.accept 13125 >>接任务: |cRXP_LOOT_凝固的空气|r
.goto IcecrownGlacier,83.01,72.93
.turnin 13110 >>交任务: |cRXP_FRIENDLY_永不安息的亡者|r
.goto IcecrownGlacier,82.87,72.78
.target Crusade Architect Silas
.target The Ebon Watcher
.target Father Gustav
.isOnQuest 13130
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Spitzpatrick, |cRXP_FRIENDLY_黑锋观察者|r, |cRXP_FRIENDLY_古斯塔夫神父|r
.turnin 13135 >>交任务: |cRXP_FRIENDLY_危险的能量|r
.goto IcecrownGlacier,82.99,73.07
.turnin 13118 >>交任务: |cRXP_FRIENDLY_净化天灾城|r
.turnin 13122 >>交任务: |cRXP_FRIENDLY_天灾石|r
.accept 13125 >>接任务: |cRXP_LOOT_凝固的空气|r
.goto IcecrownGlacier,83.01,72.93
.turnin 13110 >>交任务: |cRXP_FRIENDLY_永不安息的亡者|r
.goto IcecrownGlacier,82.87,72.78
.target Crusade Engineer Spitzpatrick
.target The Ebon Watcher
.target Father Gustav
.isOnQuest 13135
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑锋观察者|r, |cRXP_FRIENDLY_古斯塔夫神父|r
.turnin 13118 >>交任务: |cRXP_FRIENDLY_净化天灾城|r
.turnin 13122 >>交任务: |cRXP_FRIENDLY_天灾石|r
.accept 13125 >>接任务: |cRXP_LOOT_凝固的空气|r
.goto IcecrownGlacier,83.01,72.93
.turnin 13110 >>交任务: |cRXP_FRIENDLY_永不安息的亡者|r
.goto IcecrownGlacier,82.87,72.78
.target The Ebon Watcher
.target Father Gustav
step
#completewith next
.goto IcecrownGlacier,77.59,62.36,30,0
.cast 57906 >>使用|T237377:0|t[阿丘斯战角]召唤|cRXP_FRIENDLY_Munch|r
.timer 10,The Air Stands Still RP
.mob Salranax the Flesh Render
.use 43206
step
.goto IcecrownGlacier,77.32,61.89
>>杀死|cRXP_ENEMY_Salranax肉渲染|r
>>|cRXP_WARN_让|cRXP_FRIENDLY_Munch|r tank|r|cRXP _ENEMY_Salranax肉渲染|r
>>|cRXP_WARN_避免|cRXP_ENEMY_Salranax the Flesh Render |r’s|r|T135812:0|t[火球]|cRXP_WARN_by LoSing his|r|T135812:0| t[火球]|cRXP-WARN_around the building or interrupt his|r
.complete 13125,1 
.mob Salranax the Flesh Render
.use 43206
step
#completewith next
.goto IcecrownGlacier,79.40,60.75,30,0
.cast 57906 >>使用|T237377:0|t[阿丘斯战角]召唤|cRXP_FRIENDLY_Jayde|r
.timer 9,The Air Stands Still RP
.mob High Priest Yath'amon
.use 43206
step
.goto IcecrownGlacier,80.07,61.17
>>杀死|cRXP_ENEMY_Yath’amon|r大祭司
>>|cRXP_WARN_让|cRXP_FRIENDLY_Jayde|r坦克|r|cRXP-ENEMY_Yath’amon大祭司|r
>>|cRXP_ENEMY_Yath’amon|r|cRXP_WARN_casts|r|T136184:0|t[心灵呐喊]|cRXP-WARN_（3秒恐惧）
.complete 13125,3 
.mob High Priest Yath'amon
.use 43206
step
#completewith next
.cast 57906 >>使用|T237377:0|t[阿丘斯战角]召唤|cRXP_FRIENDLY_Darion|r
.timer 9,The Air Stands Still RP
.mob Underking Talonox
.use 43206
step
.loop 45,IcecrownGlacier,76.09,53.18,76.53,52.55,76.83,53.49,76.32,54.05,76.09,53.18
>>杀死|cRXP_ENEMY_Underking Talonox|r
>>|cRXP_WARN_设|cRXP_FRIENDLY_Darion|r坦克|r|cRXP _ENEMY_Underking Talonox|r
>>|cRXP_FRIENDLY_Darion |r|cRXP_WARN_造成大量伤害。您只需要标记|cRXP_ENEMY_Underking Talonox|r即可获得积分|r
.complete 13125,2 
.mob Underking Talonox
.use 43206
step
#completewith next
.goto IcecrownGlacier,83.03,72.62,100 >>单击|cRXP_FRIENDLY_Darion|r's |cRXP_PICK_Return to the Valley of Echoes|r portal
.target Highlord Darion Mograine
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑锋观察者|r, |cRXP_FRIENDLY_古斯塔夫神父|r
.turnin 13125 >>交任务: |cRXP_FRIENDLY_凝固的空气|r
.goto IcecrownGlacier,83.01,72.93
.accept 13139 >>接任务: |cRXP_LOOT_进入诺森德的冰冷腹地|r
.goto IcecrownGlacier,82.87,72.78
.target The Ebon Watcher
.target Father Gustav
step
.goto IcecrownGlacier,86.03,75.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 13139 >>交任务: |cRXP_FRIENDLY_进入诺森德的冰冷腹地|r
.accept 13141 >>接任务: |cRXP_LOOT_北伐军之峰的战斗|r
.target Highlord Tirion Fordring
step
#completewith next
.goto IcecrownGlacier,80.06,71.96
.cast 58013 >>在|cRXP_PICK_十字军头骨堆|r上使用|T132487:0|t[十字军圣旗]
.timer 264,The Battle For Crusaders' Pinnacle RP
.use 43243
step
.goto IcecrownGlacier,80.33,71.15
>>杀死|cRXP_ENEMY_Scourge Drudges|r、|cRXD_ENEMY_Reanimated Captains|r和|cRXP_ENEMY_Hideous Plaguebringers|r
>>Kill |cRXP_ENEMY_Halof the Deathbringer|r when he spawns
.complete 13141,1 
.mob Halof the Deathbringer
.mob Scourge Drudge
.mob Reanimated Captain
.mob Hideous Plaguebringer
.use 43243
step
.goto IcecrownGlacier,82.87,72.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古斯塔夫神父|r
.turnin 13141 >>交任务: |cRXP_FRIENDLY_北伐军之峰的战斗|r
.accept 13157 >>接任务: |cRXP_LOOT_北伐军之峰|r
.target Father Gustav
step
.goto IcecrownGlacier,79.79,71.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.accept 13068 >>接任务: |cRXP_LOOT_勇气的传说|r
.turnin 13157 >>交任务: |cRXP_FRIENDLY_北伐军之峰|r
.target Highlord Tirion Fordring
step
.goto IcecrownGlacier,79.41,72.36
.fp Crusaders' Pinnacle >>获取十字军的Pinnacle飞行路线
.target Penumbrius
step << Alliance
.goto Icecrown,79.57,72.61,10,0
.goto Icecrown,79.39,72.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瓦留斯元帅|r
.accept 13225 >>接任务: |cRXP_LOOT_破天号|r
.target Marshal Ivalius
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾斯廷|r
.turnin 13418 >>交任务: |cRXP_FRIENDLY_作战准备|r
.turnin 13225 >>交任务: |cRXP_FRIENDLY_破天号|r
.accept 13231 >>接任务: |cRXP_LOOT_破碎前线|r
.target High Captain Justin Bartlett
.isOnQuest 13418
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾斯廷|r
.turnin 13225 >>交任务: |cRXP_FRIENDLY_破天号|r
.accept 13231 >>接任务: |cRXP_LOOT_破碎前线|r
.target High Captain Justin Bartlett
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.accept 12887 >>接任务: |cRXP_LOOT_乐趣十足|r
.target Thassarian
step << skip
.goto IcecrownGlacier,65.1,57.2,0
.goto IcecrownGlacier,64.7,52.4,0
.goto IcecrownGlacier,62.1,45.9,0
.goto IcecrownGlacier,57.5,39.1,0
.goto IcecrownGlacier,54.7,35.3,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t走上飞船后部的楼梯，与|cRXP_FRIENDLY_Knight-Captain Drosche|r通话
.accept 13341 >>接任务: |cRXP_LOOT_协助突袭|r
.target Knight-Captain Drosche

step << skip
.goto IcecrownGlacier,65.1,57.2,0
.goto IcecrownGlacier,64.7,52.4,0
.goto IcecrownGlacier,62.1,45.9,0
.goto IcecrownGlacier,57.5,39.1,0
.goto IcecrownGlacier,54.7,35.3,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t走船中央的楼梯（|cRXP_FRIENDLY_Vindicator Maraad|r后面），然后走第一个楼梯两侧的楼梯进入机舱。与|cRXP_FRIENDLY_首席工程师螺栓扳手|r交谈
.accept 13296 >>接任务: |cRXP_LOOT_前往伊米海姆！|r
.target Vindicator Maraad; Chief Engineer Boltwrench

step << Horde
.goto IcecrownGlacier,79.57,72.61,10,0
.goto IcecrownGlacier,79.44,72.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_督军霍尔克·粗眉|r
.accept 13224 >>接任务: |cRXP_LOOT_奥格瑞姆之锤|r
.target Warlord Hork Strongbrow
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Korm, |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13419 >>交任务: |cRXP_FRIENDLY_作战准备|r
.turnin 13224 >>交任务: |cRXP_FRIENDLY_奥格瑞姆之锤|r
.accept 13228 >>接任务: |cRXP_LOOT_破碎前线|r
.accept 12892 >>接任务: |cRXP_LOOT_乐趣十足|r
.target Sky-Reaver Korm Blackscar
.target Koltira Deathweaver
.isOnQuest 13419
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Korm, |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13224 >>交任务: |cRXP_FRIENDLY_奥格瑞姆之锤|r
.accept 13228 >>接任务: |cRXP_LOOT_破碎前线|r
.accept 12892 >>接任务: |cRXP_LOOT_乐趣十足|r
.target Sky-Reaver Korm Blackscar
.target Koltira Deathweaver
step << skip
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_FRIENDLY_达沃斯|r|cRXP_WARN_trols over Orgrim’s Hammer|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战争使者达沃斯·里赫|r
.accept 13340 >>接任务: |cRXP_LOOT_协助突袭|r
.target Warbringer Davos Rioht

step << skip
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_FRIENDLY_Copperclaw|r|cRXP_WARN_i在船底层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席技师考伯克拉|r
.accept 13293 >>接任务: |cRXP_LOOT_前往伊米海姆！|r
.target Chief Engineer Copperclaw

step
.goto IcecrownGlacier,79.85,30.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bridenbrad|r
.turnin 13068 >>交任务: |cRXP_FRIENDLY_勇气的传说|r
.accept 13072 >>接任务: |cRXP_LOOT_弥留的英雄|r
.target Crusader Bridenbrad
step << Alliance
#completewith Freemind
.goto IcecrownGlacier,75.97,19.92,30,0
.goto IcecrownGlacier,76.19,19.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡雷斯·炎枪|r
.home >>将你的炉石设置为银盟约阁
.target Caris Sunlance
step << Horde
#completewith Freemind
.goto IcecrownGlacier,75.93,23.64,30,0
.goto IcecrownGlacier,76.10,23.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚尔林·晨光|r
.home >>将炉石设置为Sunreaver展馆
.target Jarin Dawnglow
step
.goto IcecrownGlacier,44.34,21.52
>>|cRXP_WARN_飞到影子金库的塔顶|r
>>|cRXP_WARN_在飞行架上使用|r|T135636:0|t[Eyesore Blaster]|cRXP_WARN_to造成伤害，杀死|cRXP_ENEMY_眼睛|r|r
.complete 12887,1 << Alliance 
.complete 12892,1 << Horde 
.mob The Ocular
.use 41265
step
.goto IcecrownGlacier,44.15,24.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_脆皮|r
.turnin 12887 >>交任务: |cRXP_FRIENDLY_乐趣十足|r << Alliance
.turnin 12892 >>交任务: |cRXP_FRIENDLY_乐趣十足|r << Horde
.accept 12891 >>接任务: |cRXP_LOOT_我有一计……|r
.target Baron Sliver
step
>>杀死|cRXP_ENEMY_Shadow Cultist|r。掠夺他们获得|cRXD_Loot_Cultist棒|r
>>杀死|cRXP_ENEMY_Morbid尸体|r。掠夺它们以获取|cRXD_Loot_Aomination钩子|r
>>杀死|cRXP_ENEMY_Vault Geist |r。掠夺它们以获得|cRXD_Loot_Geist绳索|r
>>杀死|cRXP_ENEMY_Shadow Cultist|r，|cRXD_ENEMY_Morbid Carcass|r，| cRXP__ENEMY_Vault Geists|r、|cRXP_ENEMY_Rabid Cannibals|r和|cRXP_ENEMY_Death Knight Masters|r。掠夺他们的|cRXT_Loot_Surge Essence |r
.complete 12891,1 
.loop 45,IcecrownGlacier,43.77,24.15,43.57,25.12,43.73,25.43,42.12,26.61,42.09,26.06,42.05,25.65,42.51,25.07,43.77,24.15
.complete 12891,3 
.loop 45,IcecrownGlacier,43.37,25.57,43.28,26.63,42.58,28.44,42.55,26.33,42.93,24.46,43.37,25.57
.complete 12891,2 
.loop 45,IcecrownGlacier,43.54,26.11,42.71,28.14,42.33,28.11,42.65,25.68,43.26,24.10,43.54,26.11
.complete 12891,4 
.loop 45,IcecrownGlacier,43.77,24.15,43.57,25.12,43.73,25.43,43.37,25.57,43.54,26.11,43.28,26.63,42.71,28.14,42.33,28.11,42.42,27.16,42.12,26.61,42.09,26.06,42.05,25.65,42.65,25.68,42.51,25.07,42.93,24.46,43.26,24.10,43.77,24.15
.mob Death Knight Master
.mob Shadow Cultist
.mob Morbid Carcass
.mob Rabid Cannibal
.mob Vault Geist
step
.goto IcecrownGlacier,44.15,24.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_脆皮|r
.turnin 12891 >>交任务: |cRXP_FRIENDLY_我有一计……|r
.accept 12893 >>接任务: |cRXP_LOOT_解放你的思想|r
.target Baron Sliver
step
.goto IcecrownGlacier,44.42,27.00
>>|cRXP_WARN_Fly up to the balcony|r
>>Kill |cRXP_ENEMY_Vile|r
>>|cRXP_WARN_通道|r|T135481:0|t[Seivereign Rod]|cRXP_WARN_on|cRXX_ENEMY_Vile|r的尸体|r
.complete 12893,1 
.mob Vile
.cast 29070
.timer 5,Free Your Mind RP
.use 41366
step
.goto IcecrownGlacier,41.77,24.51
>>|cRXP_WARN_Fly up to the balcony|r
>>杀死|cRXP_ENEMY_Lady Nightswood|r
>>|cRXP_WARN_通道|r|T135481:0|t[Seivereign Rod]|cRXP_WARN_on|cRXX_ENEMY_Lady Nightswood|r的尸体|r
.complete 12893,2 
.mob Lady Nightswood
.cast 29070
.timer 5,Free Your Mind RP
.use 41366
step
.line IcecrownGlacier,42.95,23.25,43.64,24.02,44.62,24.23,45.40,23.75,46.00,22.44,46.13,21.07,45.84,19.99,45.27,19.22,44.66,18.86,43.99,18.84,43.28,19.28,42.95,19.89,42.58,21.17
.goto IcecrownGlacier,42.95,23.25,45,0
.goto IcecrownGlacier,43.64,24.02,45,0
.goto IcecrownGlacier,44.62,24.23,45,0
.goto IcecrownGlacier,45.40,23.75,45,0
.goto IcecrownGlacier,46.00,22.44,45,0
.goto IcecrownGlacier,46.13,21.07,45,0
.goto IcecrownGlacier,45.84,19.99,45,0
.goto IcecrownGlacier,45.27,19.22,45,0
.goto IcecrownGlacier,44.66,18.86,45,0
.goto IcecrownGlacier,43.99,18.84,45,0
.goto IcecrownGlacier,43.28,19.28,45,0
.goto IcecrownGlacier,42.95,19.89,45,0
.goto IcecrownGlacier,42.58,21.17
>>|cRXP_WARN_Fly up to the balcony|r
>>杀死|cRXP_ENEMY_跳跃者|r
>>|cRXP_WARN_引导|r|T135481:0|t[Seivereign Rod]|cRXP_WARN_on|cRXP_ENEMY_跳跃者|r的尸体|r
.complete 12893,3 
.mob The Leaper
.cast 29070
.timer 5,Free Your Mind RP
.use 41366
step
#label Freemind
.goto IcecrownGlacier,44.15,24.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_脆皮|r
.turnin 12893 >>交任务: |cRXP_FRIENDLY_解放你的思想|r
.accept 12896 >>接任务: |cRXP_LOOT_顽固的敌人|r << Alliance
.accept 12897 >>接任务: |cRXP_LOOT_顽固的敌人|r << Horde
.target Baron Sliver
step
#completewith next
.goto IcecrownGlacier,43.96,23.35,40,0
.goto IcecrownGlacier,44.72,19.76 << Alliance
.goto IcecrownGlacier,44.92,19.90 << Horde
>>|cRXP_WARN_进入影子金库|r
.cast 6477 >>点击地面上的|cRXP_PICK_General武器架|r，召唤|cRXP_ENEMY_General Lightsbane|r
step
.goto IcecrownGlacier,44.67,20.30
>>杀死|cRXP_ENEMY_General Lightsbane|r
.complete 12896,1 << Alliance 
.complete 12897,1 << Horde 
.mob General Lightsbane
step << skip
.goto IcecrownGlacier,62.6,51.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t离开大楼，然后飞过去与|cRXP_FRIENDLY_Ground Commander Koup|r（在地面上）交谈
.turnin 13341 >>交任务: |cRXP_FRIENDLY_协助突袭|r
.target Ground Commander Koup

step << skip
.goto IcecrownGlacier,58.34,46.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_地面指挥官科特亚|r
.turnin 13340 >>交任务: |cRXP_FRIENDLY_协助突袭|r
.target Ground Commander Xutjja

step
#completewith next
.goto IcecrownGlacier,56.65,57.43,60 >>进入Saronite矿场
step
.goto IcecrownGlacier,54.49,59.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗低语者阿克希姆|r
.accept 13308 >>接任务: |cRXP_LOOT_思维诡计|r
.target Darkspeaker R'khem
step
.goto IcecrownGlacier,55.13,59.34
>>杀死|cRXP_ENEMY_Foreman Thaldrin|r。掠夺他获得|cRXX_Loot_Foreman的钥匙|r
.complete 13308,1 
.mob Foreman Thaldrin
step
#label Rkhem
.goto IcecrownGlacier,54.49,59.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗低语者阿克希姆|r
.turnin 13308 >>交任务: |cRXP_FRIENDLY_思维诡计|r
.target Darkspeaker R'khem
step
#completewith next
.goto IcecrownGlacier,56.65,57.43,50 >>Exit the Saronite Mines
step << skip
.goto Icecrown,57.01,62.53
>>飞往地面上的|cRXP_FRIENDLY_Frazzle齿轮磨床|r
.turnin 13296 >>交任务: |cRXP_FRIENDLY_前往伊米海姆！|r
.target Frazzle Geargrinder

step << Alliance
.goto IcecrownGlacier,66.29,64.11,15,0
.goto IcecrownGlacier,66.76,64.04,15,0
.goto IcecrownGlacier,66.72,65.75,15,0
.goto IcecrownGlacier,66.46,66.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_濒死的士兵|r
.complete 13231,1 

.target Dying Soldier
.skipgossip
step << skip
.loop 30,IcecrownGlacier,67.53,67.75,67.32,69.15,67.57,70.35,68.07,69.44,68.62,69.09,69.55,67.27,68.84,67.19,68.70,66.42,69.82,64.52,69.80,63.15,70.22,61.91,69.05,62.02,68.48,62.23,68.09,63.42,67.21,63.31,66.76,64.04,66.28,64.12,66.72,65.76,67.53,67.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Dying Soldiers|r on the ground
.complete 13232,1 
.target Dying Soldier
.skipgossip

step << skip
.goto IcecrownGlacier,51.94,57.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉斯·炸雷|r
.turnin 13293 >>交任务: |cRXP_FRIENDLY_前往伊米海姆！|r
.target Blast Thunderbomb

step << Horde
.goto IcecrownGlacier,66.85,66.43,15,0
.goto IcecrownGlacier,67.08,67.30,15,0
.goto IcecrownGlacier,68.10,67.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_濒死的狂战士|r
.complete 13228,1 

.target Dying Berserker
.skipgossip
step << skip
.loop 30,IcecrownGlacier,67.53,67.75,67.32,69.15,67.57,70.35,68.07,69.44,68.62,69.09,69.55,67.27,68.84,67.19,68.70,66.42,69.82,64.52,69.80,63.15,70.22,61.91,69.05,62.02,68.48,62.23,68.09,63.42,67.21,63.31,66.76,64.04,66.28,64.12,66.72,65.76,67.53,67.75
>>在地面上杀死|cRXP_ENEMY_垂死的士兵|r
.complete 13230,1 
.mob Dying Soldier

step
.goto IcecrownGlacier,79.79,71.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 13072 >>交任务: |cRXP_FRIENDLY_弥留的英雄|r
.accept 13073 >>接任务: |cRXP_LOOT_守护者的帮助|r
.target Highlord Tirion Fordring
step
#completewith next
.goto IcecrownGlacier,87.07,77.03
.gossipoption 94726 >>对话: |cRXP_FRIENDLY_大德鲁伊莉琳德拉|r
.target Arch Druid Lilliandra
.skipgossip
step
#completewith next
.goto IcecrownGlacier,87.00,77.07
.zone Moonglade >>前往: |cRXP_PICK_月光林地|r
.target Moonglade Portal
step
.goto Moonglade,36.18,41.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者雷姆洛斯|r
.turnin 13073 >>交任务: |cRXP_FRIENDLY_守护者的帮助|r
.accept 13074 >>接任务: |cRXP_LOOT_翡翠噩梦中的希望|r
.target Keeper Remulos
step
.loop 20,Moonglade,36.67,40.90,37.40,43.63,34.63,41.48,34.88,43.63,33.65,44.08,32.46,43.65,32.18,40.31,33.99,39.09,35.44,38.34,36.67,40.90
>>地面上的织机|cRXP_Loot_翡翠橡子|r
>>|cRXP_WARN_AVE被|cRXP_ENEMY_Nightmare Aberrations|r击中，因为它们将移除|r|T136090:0|t[合适的梦想]
>>|cRXP_WARN_如果你失去了|r|T136090:0|t[Fitful Dream]|cRXP_WARN_buff，请再次与|cRXP-FRIENDLY_Remulos|r交谈|r
.complete 13074,1 
.target Keeper Remulos
.skipgossip 11832,1
step
.goto Moonglade,36.18,41.80
>>|cRXP_WARN_单击|r|T136090:0|t[Fitful Dream]|cRXP_WARN_buff将其删除|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者雷姆洛斯|r
.turnin 13074 >>交任务: |cRXP_FRIENDLY_翡翠噩梦中的希望|r
.accept 13075 >>接任务: |cRXP_LOOT_雷姆洛斯的恩赐|r
.target Keeper Remulos
step
#completewith Remulos
.goto Moonglade,36.04,42.15
.zone IcecrownGlacier >>乘坐|cRXP_FRIENDLY_Moongrade返回门户|r前往冰冠
.target Moonglade Return Portal
.cooldown item,6948,<0
step
#completewith next
.hs >>红心银约亭 << Alliance
.hs >>向阳光公园致敬 << Horde
.cooldown item,6948,>0
.zoneskip Icecrown
step
#label Remulos
.goto IcecrownGlacier,79.85,30.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bridenbrad|r
.turnin 13075 >>交任务: |cRXP_FRIENDLY_雷姆洛斯的恩赐|r
.accept 13076 >>接任务: |cRXP_LOOT_仍有时间|r
.target Crusader Bridenbrad
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾斯廷|r
.turnin 13231 >>交任务: |cRXP_FRIENDLY_破碎前线|r

.accept 13286 >>接任务: |cRXP_LOOT_……所有可能的帮助|r

.target Vindicator Maraad
.target High Captain Justin Bartlett
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 12896 >>交任务: |cRXP_FRIENDLY_顽固的敌人|r
.accept 12898 >>接任务: |cRXP_LOOT_暗影拱顶|r
.turnin 13286 >>交任务: |cRXP_FRIENDLY_……所有可能的帮助|r
.accept 13287 >>接任务: |cRXP_LOOT_知己知彼|r
.target Thassarian
step << skip
.goto IcecrownGlacier,65.1,57.2,0
.goto IcecrownGlacier,64.7,52.4,0
.goto IcecrownGlacier,62.1,45.9,0
.goto IcecrownGlacier,57.5,39.1,0
.goto IcecrownGlacier,54.7,35.3,0
>>走船中央的楼梯（马拉德后面），然后走第一个楼梯两侧的楼梯，向下进入机舱。与|cRXP_FRIENDLY_首席工程师螺栓扳手|r交谈
.turnin 13290 >>交任务: |cRXP_FRIENDLY_请留意一下……|r
.accept 13291 >>接任务: |cRXP_LOOT_“借来”的技术|r
.target Chief Engineer Boltwrench
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Korm, |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13228 >>交任务: |cRXP_FRIENDLY_破碎前线|r


.accept 13260 >>接任务: |cRXP_LOOT_知根知底|r
.turnin 12897 >>交任务: |cRXP_FRIENDLY_顽固的敌人|r
.accept 12899 >>接任务: |cRXP_LOOT_暗影拱顶|r
.turnin 13260 >>交任务: |cRXP_FRIENDLY_知根知底|r
.accept 13237 >>接任务: |cRXP_LOOT_知己知彼|r
.target Koltira Deathweaver
.target Sky-Reaver Korm Blackscar
step << skip
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_FRIENDLY_Copperclaw|r|cRXP_WARN_i在船底层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席技师考伯克拉|r
.turnin 13238 >>交任务: |cRXP_FRIENDLY_有价值的帮手？|r
.accept 13239 >>接任务: |cRXP_LOOT_爆炸油|r
.target Chief Engineer Copperclaw
step << skip
.goto IcecrownGlacier,58.34,46.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_地面指挥官科特亚|r
.turnin 13301 >>交任务: |cRXP_FRIENDLY_地面突袭|r
.target Ground Commander Xutjja
step
.goto IcecrownGlacier,42.84,24.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_脆皮|r
.accept 13106 >>接任务: |cRXP_LOOT_黑色观察站|r
.turnin 12898 >>交任务: |cRXP_FRIENDLY_暗影拱顶|r << Alliance
.turnin 12899 >>交任务: |cRXP_FRIENDLY_暗影拱顶|r << Horde
.accept 12938 >>接任务: |cRXP_LOOT_公爵|r
.target Baron Sliver
step << skip
#completewith SLedge
.goto IcecrownGlacier,43.99,22.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵布雷纳斯|r
.home >>将你的炉石设置为暗影金库
.target Initiate Brenners
step
.goto IcecrownGlacier,44.66,20.34
>>走进阴影金库
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰克拉尔公爵|r
.turnin 12938 >>交任务: |cRXP_FRIENDLY_公爵|r
.accept 12939 >>接任务: |cRXP_LOOT_荣耀的挑战|r
.target Duke Lankral
step
#label SLedge
.goto IcecrownGlacier,43.63,25.13,15,0
.goto IcecrownGlacier,43.29,25.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_跳跃者|r
.accept 12955 >>接任务: |cRXP_LOOT_消灭竞争者|r
.target The Leaper
step
#completewith TinkyW
>>|cRXP_WARN_使用|r|T132484:0|t[挑战旗]|cRXP_WARN_on|r|cRXP-ENEMY_Mjordin Combatants|r|cRXP_WARN_from max range|r
>>|cRXP_WARN_只要你不参与战斗，你就可以同时挑战多个|cRXP_ENEMY_Mjordin战斗人员|r|r
>>|cRXP_WARN_这个任务导致2|r|T135947:0|t[英雄徽章]|cRXP_WARN_在这里你必须为每个人杀死一个5人的精英。如果您不希望执行此操作，请跳过此步骤|r
>>掠夺他们的|cRXP_Loot_Vrykul骨骼|r
.collect 43089,15,13092,1,1 
.complete 12939,1 
.mob Mjordin Combatant
.use 41372
.isOnQuest 12939
step
#completewith next
.goto IcecrownGlacier,37.86,22.94
>>飞向野蛮人边缘
.gossipoption 93700 >>|cRXP_WARN_对话: |cRXP_FRIENDLY_奥努森|r|r
.target Onu'zun
step
.goto IcecrownGlacier,37.86,22.94
>>杀死|cRXP_ENEMY_Onu'zun|r
.complete 12955,3 
.mob Onu'zun
step
#completewith next
.goto IcecrownGlacier,37.07,22.48
.gossipoption 93529 >>|cRXP_WARN_对话: |cRXP_FRIENDLY_齐格莉德·冰魂|r|r
.target Sigrid Iceborn
step
.goto IcecrownGlacier,37.07,22.48
>>杀死|cRXP_ENEMY_Sigrid Iceborn|r
.complete 12955,1 
.mob Sigrid Iceborn
step
#completewith next
.goto IcecrownGlacier,36.15,23.57
.gossipoption 93534 >>|cRXP_WARN_对话: |cRXP_FRIENDLY_丁奇·火哨|r|r
.target Tinky Wickwhistle
step
#label TinkyW
.goto IcecrownGlacier,36.15,23.57
>>杀死|cRXP_ENEMY_Tinky Wickwhile|r
.complete 12955,4 
.mob Tinky Wickwhistle
step
.loop 45,IcecrownGlacier,36.34,24.22,36.71,24.33,37.02,24.60,37.53,24.73,37.87,24.41,37.76,23.69,37.41,22.87,37.03,23.14,36.58,23.54,36.34,24.22
>>|cRXP_WARN_使用|r|T132484:0|t[挑战旗]|cRXP_WARN_on|r|cRXP-ENEMY_Mjordin Combatants|r|cRXP_WARN_from max range|r
>>|cRXP_WARN_只要你不参与战斗，你就可以同时挑战多个|cRXP_ENEMY_Mjordin战斗人员|r|r
>>|cRXP_WARN_这个任务导致2|r|T135947:0|t[英雄徽章]|cRXP_WARN_在这里你必须为每个人杀死一个5人的精英。如果您不希望执行此操作，请跳过此步骤|r
>>掠夺他们的|cRXP_Loot_Vrykul骨骼|r
.collect 43089,15,13092,1,1 
.complete 12939,1 
.mob Mjordin Combatant
.use 41372
step
#completewith next
.goto IcecrownGlacier,37.86,25.12
.gossipoption 93528 >>|cRXP_WARN_对话: |cRXP_FRIENDLY_虔诚者埃弗雷姆|r|r
.target Efrem the Faithful
step
.goto IcecrownGlacier,37.86,25.12
>>杀死|cRXP_ENEMY_Efrem忠诚者|r
.complete 12955,2 
.mob Efrem the Faithful
step
.goto IcecrownGlacier,43.29,25.31,15,0
.goto IcecrownGlacier,43.63,25.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_跳跃者|r
.turnin 12955 >>交任务: |cRXP_FRIENDLY_消灭竞争者|r
.accept 12999 >>接任务: |cRXP_LOOT_白骨女巫|r
.target The Leaper
step
.goto IcecrownGlacier,44.66,20.34
>>走进阴影金库
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰克拉尔公爵|r
.turnin 12939 >>交任务: |cRXP_FRIENDLY_荣耀的挑战|r
.accept 12943 >>接任务: |cRXP_LOOT_暗影拱顶裁决令|r
.target Duke Lankral
.isQuestComplete 12939
step
.goto IcecrownGlacier,44.66,20.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰克拉尔公爵|r
.accept 12943 >>接任务: |cRXP_LOOT_暗影拱顶裁决令|r
.target Duke Lankral
.isQuestTurnedIn 12939
step
.abandon 12939 >>Abandon Honor Challenge
step
#completewith next
.goto IcecrownGlacier,39.18,23.98,20 >>Enter Ufrang's Hall
step
.goto IcecrownGlacier,41.03,23.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被折磨的维林|r
.accept 12949 >>接任务: |cRXP_LOOT_夺取钥匙|r
.target Vaelen the Flayed
.isQuestTurnedIn 12939
step
#completewith next
.goto IcecrownGlacier,40.12,23.93
.cast 31696 >>在|cRXP_ENEMY_Thane Ufrang the Mighty|r上使用|T134937:0|t[影子金库法令]
.timer 10,Shadow Vault Decree RP
.use 41776
.isQuestTurnedIn 12939
step
.goto IcecrownGlacier,40.12,23.93
>>杀死|cRXP_ENEMY_Thane Ufrang the Mighty|r
.complete 12943,1 
.mob Thane Ufrang the Mighty
.use 41776
.isQuestTurnedIn 12939
step
.line IcecrownGlacier,37.62,23.51,37.35,23.16,36.85,23.43,36.73,23.57,36.73,24.03,36.80,24.15,37.09,24.41,37.42,24.42,37.63,23.90,37.62,23.51
.goto IcecrownGlacier,37.62,23.51,40,0
.goto IcecrownGlacier,37.63,23.90,40,0
.goto IcecrownGlacier,37.42,24.42,40,0
.goto IcecrownGlacier,37.09,24.41,40,0
.goto IcecrownGlacier,36.80,24.15,40,0
.goto IcecrownGlacier,36.73,24.03,40,0
.goto IcecrownGlacier,36.73,23.57,40,0
.goto IcecrownGlacier,36.85,23.43,40,0
.goto IcecrownGlacier,37.35,23.16,40,0
.goto IcecrownGlacier,37.62,23.51
>>杀死|cRXP_ENEMY_Hroegar|r。掠夺他获得Vaelen链的|cRXP_Loot_Key |r
.complete 12949,1 
.mob Instructor Hroegar
.isQuestTurnedIn 12939
step
.goto IcecrownGlacier,41.03,23.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被折磨的维林|r
.turnin 12949 >>交任务: |cRXP_FRIENDLY_夺取钥匙|r
.accept 12951 >>接任务: |cRXP_LOOT_通知男爵|r
.target Vaelen the Flayed
.isQuestTurnedIn 12939
step
.goto IcecrownGlacier,42.84,24.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_脆皮|r
.turnin 12951 >>交任务: |cRXP_FRIENDLY_通知男爵|r
.accept 13085 >>接任务: |cRXP_WARN_维林回来了|r
.target Baron Sliver
.isQuestTurnedIn 12939
step << skip
.line IcecrownGlacier,43.55,24.21,43.15,25.13,42.84,26.09,42.53,27.96
.goto IcecrownGlacier,42.53,27.96,40,0
.goto IcecrownGlacier,42.84,26.09,40,0
.goto IcecrownGlacier,43.15,25.13,40,0
.goto IcecrownGlacier,43.55,24.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劣尸维尔|r
>>|cRXP_WARN_如果|cRXP_FRIENDLY_Vile|r被攻击到楼梯附近的亡灵身上，您可能需要杀死他们|r
.accept 12992 >>接任务: |cRXP_LOOT_干掉那些维库人！|r
.target Vile
step
.goto IcecrownGlacier,43.75,22.70,40,0
>>走进阴影金库
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被折磨的维林|r, |cRXP_FRIENDLY_兰克拉尔公爵|r
.turnin 13085 >>交任务: |cRXP_FRIENDLY_维林回来了|r
.accept 12982 >>接任务: |cRXP_LOOT_黑锋囚犯|r
.goto IcecrownGlacier,43.12,21.07
.turnin 12943 >>交任务: |cRXP_FRIENDLY_暗影拱顶裁决令|r

.goto IcecrownGlacier,44.66,20.34
.target Vaelen the Flayed
.target Duke Lankral
.isQuestTurnedIn 12939

step << skip
.goto IcecrownGlacier,31.76,41.59,55,0
.loop 50,IcecrownGlacier,31.76,41.59,32.14,41.02,32.05,40.30,32.20,39.57,31.62,39.06,31.52,37.62,31.08,37.13,29.85,37.49,29.15,38.02,28.84,39.59,29.00,40.73,29.30,40.01,29.41,39.15,30.04,38.94,30.80,39.86,31.31,40.29,31.76,41.59
>>杀死|cRXP_ENEMY_Njorndar长矛姐妹|r、|cRXD_ENEMY_Mjordin水魔|r和|cRXP_ENEMY_Jotunheim勇士|r。掠夺她们的|cRXT_Loot_Vrykul骨头|r
.collect 43089,15,13092,1 
.mob Njorndar Spear-Sister
.mob Mjordin Water Magus
.mob Jotunheim Warrior
step
.goto IcecrownGlacier,32.30,42.61,20,0
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.turnin 12999 >>交任务: |cRXP_FRIENDLY_白骨女巫|r
.accept 13042 >>接任务: |cRXP_LOOT_地下大厅的深处|r
.accept 13092 >>接任务: |cRXP_LOOT_占命卜运|r
.turnin 13092,2 >>交任务: |cRXP_FRIENDLY_占命卜运|r
.target The Bone Witch
.itemcount 43089,15 
step
.goto IcecrownGlacier,32.30,42.61,20,0
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.turnin 12999 >>交任务: |cRXP_FRIENDLY_白骨女巫|r
.accept 13042 >>接任务: |cRXP_LOOT_地下大厅的深处|r
.target The Bone Witch
step
#completewith DrTerr
.cast 57727 >>|cRXP_WARN_使用|r|T134421:0|t[舰队脚的命运符文]
.use 43135
.itemcount 43135,1
step
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.turnin 13093 >>交任务: |cRXP_FRIENDLY_占命卜运|r
.target The Bone Witch
.itemcount 43089,15 
step
>>杀死|cRXP_ENEMY_Njorndar长矛姐妹|r、|cRXD_ENEMY_Mjordin水魔|r和|cRXP_ENEMY_Jotunheim勇士|r。掠夺它们|T134245:0|t[|cRXP_Loot_JotunheimCage Keys|r]
>>使用|cRXP_PICK_Jotunheim笼子|r上的|T134245:0|t[|cRXP_LOOT_Jotunhim笼子键|r]释放|cRXT_RIENDLY_Ebon Blade Knights|r
.collect 42422,8,12982,1,-1 
.complete 12982,1 
.loop 50,IcecrownGlacier,32.16,40.94,32.21,39.93,31.65,38.87,31.01,37.02,29.16,36.28,28.91,35.10,29.74,33.97,32.03,32.49,32.84,31.23,33.95,28.96,33.24,26.02,32.08,27.34,30.64,31.33,28.91,35.10,29.16,36.28,29.70,37.58,27.45,39.46,27.80,40.32,28.13,41.18,29.38,40.06,28.76,39.50,29.48,39.24,29.91,39.00,30.66,39.66,32.16,40.94




.mob Njorndar Spear-Sister
.mob Mjordin Water Magus
.mob Jotunheim Warrior
.use 42480
.isQuestTurnedIn 12939
step << skip
#sticky
#label DaKeys
.destroy 42422 >>摧毁: |cRXP_ENEMY_尤顿海姆牢笼钥匙|r, 它在你的背包中. 不再需要它了
step
#completewith next
.goto IcecrownGlacier,32.76,32.32,25 >>Enter The Underhalls
step << skip
>>杀死地下大厅内的|cRXP_ENEMY_Valhalas Vargul|r|cRXP_WARN_在他们的尸体上使用埃本之刃横幅|r
.complete 12995,1 
.complete 12992,1 
.mob Valhalas Vargul
.use 42480
step << skip
.goto IcecrownGlacier,34.49,34.65,20,0
.goto IcecrownGlacier,36.1,33.1
>>去地下大厅的东北部房间
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝索德·菲格|r
.accept 13059 >>接任务: |cRXP_LOOT_瓦古的复仇|r
.target Bethod Feigr
step << skip
.goto IcecrownGlacier,34.39,34.83,20,0
.goto IcecrownGlacier,33.1,37.7
>>走下第一组楼梯。在|cRXP_ENEMY_Thane Illskar|r附近使用Bethod之剑，然后杀死|cRXD_ENEMY_Volgur|r、|cRXP_ENEMY_Brita|r和|cRXX_ENEMY_Thane Illskar |r
.complete 13059,1 
.complete 13059,2 
.mob Thane Illskar
.mob Volgur
.mob Brita
.use 42928
step
#label DrTerr
.goto IcecrownGlacier,34.15,36.10,20,0
.goto IcecrownGlacier,34.00,36.34
>>到楼下的地下大厅去
>>杀死|cRXP_ENEMY_Apprentice Osterkilgr|r。掠夺他|T133733:0|t[|cRXP-Loot_Dr.Terrible的“建造一个更好的肉巨人”|r]
>>|cRXP_WARN_使用|T133733:0|t[|cRXP_LOOT_Dr.Terrible的“建造一个更好的肉巨人”|r]开始任务|r


.collect 42772,1,13043 
.accept 13043 >>接任务: |cRXP_LOOT_一加一大于二|r
.mob Apprentice Osterkilgr
.use 42772
step
#completewith next
.goto IcecrownGlacier,34.37,34.68,25,0
.goto IcecrownGlacier,33.37,33.17
>>进入地下大厅楼下的西北部房间
.vehicle >>装载|cRXP_FRIENDLY_Nergeld|r
.timer 114,The Sum is Greater than the Parts RP
.target Nergeld
step
.goto IcecrownGlacier,33.81,33.82
>>|cRXP_WARN_施法|r|T132298:0|t[冲压]（1）|cRXP_WARN_造成AoE近战伤害|r
>>|cRXP_WARN_施法|r|T132352:0|t[咆哮]（2）|cRXP_WARN_造成AoE范围伤害|r
>>|cRXP_WARN_施法|r|T236948:0|t[踩踏]（3）|cRXP_WARN_造成AoE近战伤害并击倒2秒|r
>>|cRXP_WARN_施法|r|T135834:0|t[链状握把]（4）|cRXP_WARN_to pull|cRXT_ENEMY_Dr.当他产卵时对你来说很可怕|r|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_Dr.可怕|r|cRXP_WARN_当他产卵时|r
.complete 13043,1 
.mob Vargul Assailant
.mob Grimmr Hound
.mob Dr. Terrible
step << skip
#label Revenge2
.goto IcecrownGlacier,36.2,33.0
>>回到楼上顶层去。返回|cRXP_FRIENDLY_Bethod Feigr|r
.turnin 13059 >>交任务: |cRXP_FRIENDLY_瓦古的复仇|r
.target Bethod Feigr
step << skip
.goto IcecrownGlacier,34.8,35.2,30,0
.goto IcecrownGlacier,34.0,36.3
.use 42480 >>杀死地下大厅内的|cRXP_ENEMY_Valhalas Vargul|r|cRXP_WARN_在他们的尸体上使用埃本之刃横幅|r
.complete 12995,1 
.complete 12992,1 
.mob Valhalas Vargul
step
#completewith ArtofWT
.goto IcecrownGlacier,34.83,34.57
.goto IcecrownGlacier,41.21,29.63,20 >>|cRXP_WARN_跳到旗杆或旗杆右侧的板条箱上。通过注销然后重新登录来执行注销跳过|r
.link https://www.youtube.com/watch?v=MIF-B9_bev4 >>|cRXP_WARN_单击此处|r
step
#label Prisoners
.goto IcecrownGlacier,43.75,22.70,70,0
.goto IcecrownGlacier,43.12,21.07
>>进入影子金库
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被折磨的维林|r
.turnin 12982 >>交任务: |cRXP_FRIENDLY_黑锋囚犯|r
.target Vaelen the Flayed
.isQuestTurnedIn 12939
step
.goto IcecrownGlacier,42.84,24.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_脆皮|r
.accept 12806 >>接任务: |cRXP_LOOT_全速赶往死亡高地！|r
.target Baron Sliver
.isQuestTurnedIn 12939
step
.goto IcecrownGlacier,32.30,42.61,20,0
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.turnin 13042 >>交任务: |cRXP_FRIENDLY_地下大厅的深处|r
.turnin 13043 >>交任务: |cRXP_FRIENDLY_一加一大于二|r
.accept 13091 >>接任务: |cRXP_LOOT_恐怖之水|r
.target The Bone Witch
.itemcount 43089,<15 
.isQuestComplete 13042
step
.goto IcecrownGlacier,32.30,42.61,20,0
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.turnin 13042 >>交任务: |cRXP_FRIENDLY_地下大厅的深处|r
.turnin 13043 >>交任务: |cRXP_FRIENDLY_一加一大于二|r
.accept 13091 >>接任务: |cRXP_LOOT_恐怖之水|r
.turnin 13093 >>交任务: |cRXP_FRIENDLY_占命卜运|r
.target The Bone Witch
.itemcount 43089,15 
.isQuestComplete 13042
step
#label ArtofWT
.goto IcecrownGlacier,32.30,42.61,20,0
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.turnin 13043 >>交任务: |cRXP_FRIENDLY_一加一大于二|r
.accept 13091 >>接任务: |cRXP_LOOT_恐怖之水|r
.target The Bone Witch
.itemcount 43089,<15 
step
.goto IcecrownGlacier,32.30,42.61,20,0
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.turnin 13043 >>交任务: |cRXP_FRIENDLY_一加一大于二|r
.accept 13091 >>接任务: |cRXP_LOOT_恐怖之水|r
.turnin 13093 >>交任务: |cRXP_FRIENDLY_占命卜运|r
.target The Bone Witch
.itemcount 43089,15 
step
#completewith Terror
.abandon 13042 >>在地下大厅的深处放弃
step
#completewith next
.goto Icecrown,31.37,41.24
.vehicle 30645 >>单击|cRXP_PICK_Lock Gate|r以安装|cRXP_FRIENDLY_Water Terror|r
>>不要飞到|cRXP_PICK_Lock Gate|r的顶部执行此操作，否则您将无法成为|cRXP_FRIENDLY_Water Terror|r
step
#label Terror
.loop 50,IcecrownGlacier,32.16,40.94,32.21,39.93,31.65,38.87,31.01,37.02,29.16,36.28,28.91,35.10,29.74,33.97,32.03,32.49,32.84,31.23,33.95,28.96,33.24,26.02,32.08,27.34,30.64,31.33,28.91,35.10,29.16,36.28,29.70,37.58,27.45,39.46,27.80,40.32,28.13,41.18,29.38,40.06,28.76,39.50,29.48,39.24,29.91,39.00,30.66,39.66,32.16,40.94
>>杀死|cRXP_ENEMY_Njorndar长矛姐妹|r、|cRXD_ENEMY_Mjordin水魔|r和|cRXP_ENEMY_Jotunheim勇士|r，同时在|cRXT_FRIENDLY_Water Terror|r内
>>|cRXP_WARN_施法|r|T135846:0|t[霜栓]|cRXP_WARN_造成伤害并聚集敌人|r
>>|cRXP_WARN_施法|r|T237590:0|t[冲击波]|cRXP_WARN_在一条线上造成大量AoE伤害|r
>>|cRXP_WARN_施法|r|T132361:0|t[法术反射]|cRXP_WARN_反射法术5秒|r
>>|cRXP_WARN_施法|r|T135848:0|t[霜新星]|cRXP_WARN_将敌人冻结在原地8秒|r
.complete 13091,1 
.mob Njorndar Spear-Sister
.mob Mjordin Water Magus
.mob Jotunheim Warrior
step
.goto IcecrownGlacier,32.30,42.61,20,0
.goto IcecrownGlacier,32.50,42.94
>>|cRXP_WARN_解除|r|cRXP_FRIENDLY_Water恐怖|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.turnin 13091 >>交任务: |cRXP_FRIENDLY_恐怖之水|r
.accept 13121 >>接任务: |cRXP_LOOT_巫妖王之眼|r
.target The Bone Witch
step << skip
#completewith next
.hs >>暗影之炉
.cooldown item,6948,>0
step << skip
.goto IcecrownGlacier,42.7,26.8,60,0
.goto IcecrownGlacier,43.6,24.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回影子金库，然后与沿着主干道巡逻的|cRXP_FRIENDLY_Vile|r交谈
.target Vile
.turnin 12992 >>交任务: |cRXP_FRIENDLY_干掉那些维库人！|r
step << skip
.goto IcecrownGlacier,44.7,20.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰克拉尔公爵|r
.target Duke Lankral
.turnin 13084 >>交任务: |cRXP_FRIENDLY_破坏尤顿海姆|r
step
.goto IcecrownGlacier,19.55,48.15
>>|cRXP_WARN_前往略高于海洋的死亡崛起平台|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官埃雷特|r
.turnin 12806 >>交任务: |cRXP_FRIENDLY_全速赶往死亡高地！|r
.accept 12807 >>接任务: |cRXP_LOOT_迄今为止的故事……|r
.complete 12807,1 
.skipgossip 29344,1,1,2,2,2,2,2
.target Lord-Commander Arete
.isQuestTurnedIn 12939
step
.goto IcecrownGlacier,19.55,48.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官埃雷特|r
.turnin 12807 >>交任务: |cRXP_FRIENDLY_迄今为止的故事……|r

.target Lord-Commander Arete
.isQuestTurnedIn 12939
step
.line IcecrownGlacier,19.80,48.18,19.90,48.33,20.07,48.36,20.19,48.30,20.29,48.08,20.31,47.86,20.25,47.68,20.09,47.54,19.98,47.55,19.85,47.60,19.77,47.82,19.76,48.03,19.80,48.18
.goto IcecrownGlacier,19.80,48.18,15,0
.goto IcecrownGlacier,19.76,48.03,15,0
.goto IcecrownGlacier,19.77,47.82,15,0
.goto IcecrownGlacier,19.85,47.60,15,0
.goto IcecrownGlacier,19.98,47.55,15,0
.goto IcecrownGlacier,20.09,47.54,15,0
.goto IcecrownGlacier,20.25,47.68,15,0
.goto IcecrownGlacier,20.31,47.86,15,0
.goto IcecrownGlacier,20.29,48.08,15,0
.goto IcecrownGlacier,20.19,48.30,15,0
.goto IcecrownGlacier,20.07,48.36,15,0
.goto IcecrownGlacier,19.90,48.33,15,0
.goto IcecrownGlacier,19.80,48.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥卢克斯·邪鬃|r
.accept 12838 >>接任务: |cRXP_LOOT_收集情报|r
.target Aurochs Grimbane
.isQuestAvailable 12839
.isQuestTurnedIn 12939
step
.goto IcecrownGlacier,19.33,47.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恐翼|r
.fp Death's Rise >>获得死亡崛起飞行路径
.target Dreadwind
.isQuestTurnedIn 12939
step
.loop 40,IcecrownGlacier,10.23,45.09,10.23,45.59,10.09,46.35,10.26,46.55,10.36,46.28,10.81,45.60,10.47,44.09,10.30,43.97,10.98,40.60,10.54,39.03,9.99,36.27,9.07,36.33,8.47,36.87,6.81,38.16,7.01,38.46,7.02,39.27,6.00,37.81,4.93,38.24,6.06,39.15,5.19,43.35,5.72,43.69,6.03,44.58,7.58,43.58,8.18,43.31,8.98,42.34,8.41,44.25,8.96,47.09,9.01,46.80,8.88,46.45,8.84,44.76,10.16,44.73,10.23,45.09
>>杀死|cRXP_ENEMY_Onslaught鹰头狮骑士|r，|cRXD_ENEMY_On slaught港卫队|r，| cRXP__ENEMY_Onstraught乌鸦主教|r，和|cRXP_ENEMY_ OnslaughtPaladins|r。掠夺它们|T134239:0|t[|cRXX_Loot_Scarlet Onslaught-Trunk Keys|r]
>>|cRXP_WARN_打开地面上的|cRXP_PICK_Scarlet Onslaught Trunks|r。为|r|T134940:0|t[|cRXP_Loot_Note from the Grand Admiral|r]掠夺它们
>>|cRXP_WARN_使用|T134940:0|t[|cRXP_LOOT_Note from the Grand Admiral|r]开始任务|r
.collect 40652,1,12839,1,-1 
.collect 40666,1,12839,1 
.accept 12839 >>接任务: |cRXP_LOOT_元帅的计划|r
.mob Onslaught Gryphon Rider
.mob Onslaught Harbor Guard
.mob Onslaught Raven Bishop
.mob Onslaught Paladin
.use 40666
.isQuestTurnedIn 12939
step
.line IcecrownGlacier,19.80,48.18,19.90,48.33,20.07,48.36,20.19,48.30,20.29,48.08,20.31,47.86,20.25,47.68,20.09,47.54,19.98,47.55,19.85,47.60,19.77,47.82,19.76,48.03,19.80,48.18
.goto IcecrownGlacier,19.80,48.18,15,0
.goto IcecrownGlacier,19.76,48.03,15,0
.goto IcecrownGlacier,19.77,47.82,15,0
.goto IcecrownGlacier,19.85,47.60,15,0
.goto IcecrownGlacier,19.98,47.55,15,0
.goto IcecrownGlacier,20.09,47.54,15,0
.goto IcecrownGlacier,20.25,47.68,15,0
.goto IcecrownGlacier,20.31,47.86,15,0
.goto IcecrownGlacier,20.29,48.08,15,0
.goto IcecrownGlacier,20.19,48.30,15,0
.goto IcecrownGlacier,20.07,48.36,15,0
.goto IcecrownGlacier,19.90,48.33,15,0
.goto IcecrownGlacier,19.80,48.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥卢克斯·邪鬃|r
.turnin 12838 >>交任务: |cRXP_FRIENDLY_收集情报|r
.target Aurochs Grimbane
.isQuestComplete 12838
.isQuestTurnedIn 12939
step
.abandon 12838 >>放弃情报收集
.itemcount 40640,<5
step << skip
.use 40551 >>到离海岸约30-90码的海里杀死|cRXP_ENEMY_Ravenous Jaws |r。|cRXP-WARN_在他们的尸体旁使用戈尔膀胱|r
.mob Ravenous Jaws
.goto IcecrownGlacier,4.8,41.5,90,0
.goto IcecrownGlacier,4.3,35.9,90,0
.goto IcecrownGlacier,11.7,35.6,90,0
.goto IcecrownGlacier,13.7,42.0,90,0
.goto IcecrownGlacier,10.3,41.5,90,0
.goto IcecrownGlacier,4.8,41.5,90,0
.goto IcecrownGlacier,4.3,35.9,90,0
.goto IcecrownGlacier,11.7,35.6,90,0
.goto IcecrownGlacier,13.7,42.0,90,0
.goto IcecrownGlacier,10.3,41.5
.complete 12810,1 
step
.goto IcecrownGlacier,19.55,48.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官埃雷特|r


.turnin 12839 >>交任务: |cRXP_FRIENDLY_元帅的计划|r
.accept 12840 >>接任务: |cRXP_LOOT_心腹的情报|r
.target Lord-Commander Arete
.isQuestTurnedIn 12939
step
#sticky
#label Hartford
>>|cRXP_WARN_飞到东方飞船的舵上|r
>>杀死|cRXP_ENEMY_哈特福德上尉|r
.complete 12840,2 
.goto Icecrown,7.03,41.92,-1
.mob Captain Hartford
.isQuestTurnedIn 12939
step
>>|cRXP_WARN_飞上西船的舵|r
>>杀死|cRXP_ENEMY_Welsington上尉|r
.complete 12840,1 
.goto Icecrown,5.67,41.93,-1
.mob Captain Welsington
.isQuestTurnedIn 12939
step << skip
.goto IcecrownGlacier,10.4,44.1
>>杀死昂斯劳特鹰头狮骑士，然后掠夺他们的昂斯劳特鹰头狮缰绳
.mob Onslaught Gryphon Rider
.collect 40970,1,12814,1 
step << skip
.goto IcecrownGlacier,19.6,47.8
>>在你的正常坐骑上返回死神复活。当你到达任务给予者处时，使用鹰头狮缰绳并使用“传送鹰头狮”(1)传送。
.complete 12814,1 
.use 40970
step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌佐·唤亡者|r
.turnin 12814 >>交任务: |cRXP_FRIENDLY_你需要狮鹫|r
.accept 12815 >>接任务: |cRXP_LOOT_禁飞区|r
.goto IcecrownGlacier,19.6,47.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官埃雷特|r
.turnin 12840 >>交任务: |cRXP_FRIENDLY_心腹的情报|r
.accept 12847 >>接任务: |cRXP_LOOT_第二次机会|r
.goto IcecrownGlacier,19.56,48.14
step
.goto IcecrownGlacier,19.55,48.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官埃雷特|r
.turnin 12840 >>交任务: |cRXP_FRIENDLY_心腹的情报|r
.accept 12847 >>接任务: |cRXP_LOOT_第二次机会|r
.target Lord-Commander Arete
.isQuestTurnedIn 12939
step
#completewith next
.goto IcecrownGlacier,9.49,45.31,20 >>进入深红大教堂
step
.goto IcecrownGlacier,9.53,47.28
>>杀死|cRXP_ENEMY_Landgren|r大主教
>>|cRXP_WARN_使用|r|T134430:0|t[阿雷特之门]|cRXP_WARN_on|cRXT_ENEMY_Landgren|r大主教的尸体|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。你从这次任务中只得到1|T135947:0|t[英雄徽章]（从同样困难的后续任务中又得到1|T135947:0| t[英雄勋章]）|r
.complete 12847,1 
.mob Archbishop Landgren
.isOnQuest 12847
step
.goto IcecrownGlacier,9.53,47.28
>>|cRXP_WARN_使用|r|T134430:0|t[阿雷特之门]|cRXP_WARN_on|cRXT_ENEMY_Landgren|r大主教的尸体|r
.complete 12847,2 

.target Archbishop Landgren
.use 40730
.isOnQuest 12847
step
.goto IcecrownGlacier,19.55,48.15
>>|cRXP_WARN_DO NOT Wait for the RP|r
>>Travel to Death's Rise
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官埃雷特|r
.turnin 12847 >>交任务: |cRXP_FRIENDLY_第二次机会|r
.accept 12852 >>接任务: |cRXP_LOOT_元帅的下落|r
.target Lord-Commander Arete
.isQuestComplete 12847
step
.goto IcecrownGlacier,19.55,48.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官埃雷特|r
.accept 12852 >>接任务: |cRXP_LOOT_元帅的下落|r
.target Lord-Commander Arete
.isQuestTurnedIn 12847
step
#completewith TheEye
.abandon 12847 >>Abandon Second Chances
step
#label HiddenH1
#completewith AdmiralW
.goto IcecrownGlacier,9.26,49.02,25 >>Enter The Hidden Hollow
.isOnQuest 12852
step
#requires HiddenH1
#completewith next
.goto IcecrownGlacier,9.44,47.26,20,0
.goto IcecrownGlacier,8.70,46.60,20,0
.goto IcecrownGlacier,8.31,46.38,20,0
.goto IcecrownGlacier,8.51,45.95,25 >>前往洞穴西北部房间的|cRXP_ENEMY_Westwind海军上将|r
.isOnQuest 12852
step
#label AdmiralW
.goto IcecrownGlacier,9.12,46.21
>>杀死|cRXP_ENEMY_Westwind海军上将|r
>>|cRXP_WARN_使用|r|T135441:0|t[主司令的无效符]移除|cRXP_ENEMY_Westwind海军上将|r|r|T134430:0|t[保护范围]|cRXP-WARN_buff|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。你从这次任务中只得到1|T135947:0|t[英雄徽章]|r
.complete 12852,1 
.mob Grand Admiral Westwind
.isOnQuest 12852
step
#completewith next
.goto IcecrownGlacier,9.26,49.02,25 >>Exit The Hidden Hollow
.isOnQuest 12852
step
.goto IcecrownGlacier,19.55,48.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官埃雷特|r
.turnin 12852 >>交任务: |cRXP_FRIENDLY_元帅的下落|r
.target Lord-Commander Arete
.isQuestComplete 12852
step
#completewith next
.goto IcecrownGlacier,25.09,61.29,30 >>Enter Kul'galar Keep
step
#label TheEye
.goto IcecrownGlacier,26.21,62.32
.gossipoption 94081 >>对话: |cRXP_FRIENDLY_巫妖王之眼|r
.timer 65,Through The Eye RP

.isOnQuest 13121
step
.goto IcecrownGlacier,25.08,61.27
>>|cRXP_WARN_往外走，直到你能登上你的飞行坐骑|r
>>|cRXP_WARN_Do NOT go out of range|r
>>|cRXP_WARN_等待RP|r
.complete 13121,1 
step
.goto IcecrownGlacier,35.39,66.32
>>飞往山顶的Blackwatch
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗骑士阿尔蕾|r
.turnin 13106 >>交任务: |cRXP_FRIENDLY_黑色观察站|r
.accept 13117 >>接任务: |cRXP_LOOT_它们从哪儿来的？|r
.target Darkrider Arly
step
.goto IcecrownGlacier,36.75,70.72
>>单击|cRXP_PICK_召唤祭坛|r
>>|cRXP_WARN_不要杀死|r|cRXP_ENEMY_Master召唤师扎罗德|r
.complete 13117,1 
step
.goto IcecrownGlacier,35.39,66.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗骑士阿尔蕾|r
.turnin 13117 >>交任务: |cRXP_FRIENDLY_它们从哪儿来的？|r
.accept 13119 >>接任务: |cRXP_LOOT_摧毁祭坛|r
.accept 13120 >>接任务: |cRXP_LOOT_死亡的凝视|r
.target Darkrider Arly
step
.loop 45,IcecrownGlacier,36.82,70.79,37.17,70.90,37.75,70.76,37.35,71.38,37.13,71.39,37.29,71.48,36.63,71.54,36.73,70.82,36.90,70.87,36.82,70.79
>>杀死|cRXP_ENEMY_召唤师大师扎罗德|r。掠夺他以获得|T135202:0|t[|cRXP-Loot_Master召唤师之杖|r]
>>|cRXP_WARN_不要担心|cRXP_ENEMY_召唤士兵|r和|r|cRXX_ENEMY_Risen士兵|r
.collect 43159,1,13119,1 
.mob Master Summoner Zarod
step
>>|cRXP_WARN_将|r|T135202:0|t[|cRXP_LOOT_召唤师主杖|r]|cRXT_WARN_on the |r|cRX_PICK_Summitioning Altars|r
>>|cRXP_WARN_|r|T135202:0|t[|cRXP_LOOT_Master召唤师杖|r]|cRXP-WARN_i可用于飞行坐骑|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Scourgebook Fleshrippers|r尽可能地|r|T135860:0|t[Daze]|cRXP-WARN_你离开你的飞行坐骑|r
.complete 13119,1 
.goto IcecrownGlacier,36.74,70.73,-1
.complete 13119,2 
.goto IcecrownGlacier,36.59,71.64,-1
.complete 13119,3 
.goto IcecrownGlacier,37.82,70.74,-1
.complete 13119,4 
.goto IcecrownGlacier,37.36,71.51,-1
.cast 57853
.timer 5,Destroying the Altars RP
.use 43159
step
.goto IcecrownGlacier,34.62,69.66
>>单击地面上的|cRXP_PICK_Flesh Giant Lab Orb Stand|r
.complete 13120,2 
step
.goto IcecrownGlacier,32.59,70.58
>>单击地面上的|cRXP_PICK_Abomination Lab Orb Stand|r
.complete 13120,1 
step
.goto IcecrownGlacier,30.53,65.08
>>单击地面上的|cRXP_PICK_Cauldron Area Orb Stand|r
.complete 13120,3 
step
.goto IcecrownGlacier,35.39,66.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗骑士阿尔蕾|r
.turnin 13119 >>交任务: |cRXP_FRIENDLY_摧毁祭坛|r
.turnin 13120 >>交任务: |cRXP_FRIENDLY_死亡的凝视|r
.accept 13134 >>接任务: |cRXP_WARN_抛洒它们的血|r
.target Darkrider Arly
step << skip
#completewith Kamaros
>>单击地面上的|cRXP_PICK_Blood Orbs|r和|cRX_PICK_Embalming Fluid|r
.complete 13134,1 
.complete 13134,2 
step
#label JaggedS
#completewith OrbsVats
>>杀死|cRXP_ENEMY_Spiked Ghoul|r。为|T132418:0|t[|cRXP-Loot_Jagged Shard|r]掠夺它们
>>|cRXP_WARN_使用|T132418:0|t[|cRXP_LOOT_Jagged Shard|r]开始任务|r
.collect 43242,1,13136,1 
.accept 13136 >>接任务: |cRXP_WARN_粗糙的碎片|r
.mob Spiked Ghoul
.use 43242
step
#requires JaggedS
#completewith OrbsVats
>>杀死|cRXP_ENEMY_Spiked Ghoul|r。掠夺他们的|cRXX_Loot_Jagged Shard|r
.complete 13136,1 
.mob Spiked Ghoul
step << skip
.goto IcecrownGlacier,31.8,64.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡玛洛斯神父|r
.target Father Kamaros
.accept 13221 >>接任务: |cRXP_WARN_我还没死！|r << Alliance
.accept 13229 >>接任务: |cRXP_WARN_我还没死！|r << Horde
step << skip
#label Kamaros
.goto IcecrownGlacier,31.9,57.1
>>护送|cRXP_FRIENDLY_Father Kamaros|r
.target Father Kamaros
.complete 13221,1 << Alliance 
.complete 13229,1 << Horde 
step
#label OrbsVats
>>单击地面上的|cRXP_PICK_Blood Orbs|r和|cRX_PICK_Embalming Fluid|r
.complete 13134,1 
.loop 50,IcecrownGlacier,32.07,65.05,32.13,64.28,30.00,65.03,30.07,66.12,31.68,66.47,32.06,68.47,31.56,68.52,31.36,69.37,31.23,69.86,31.89,70.90,32.63,69.54,34.69,69.89,33.66,68.98,34.08,68.50,32.07,65.05
.complete 13134,2 
.loop 50,IcecrownGlacier,33.41,65.61,32.19,64.64,30.26,64.88,31.47,69.09,31.35,70.16,31.74,70.78,32.10,70.86,32.43,70.69,32.85,70.60,32.40,68.99,34.78,69.45,33.73,69.65,33.57,68.39,33.59,68.01,33.41,65.61
step
.loop 50,IcecrownGlacier,32.18,64.93,31.79,63.89,31.35,64.10,31.86,61.15,31.95,60.75,31.61,60.15,30.90,59.36,30.78,60.19,30.97,62.27,30.64,62.32,30.86,63.63,30.48,64.39,30.90,64.62,30.01,65.32,29.97,66.05,30.20,66.05,30.48,64.39,31.54,66.14,31.87,66.09,31.74,66.68,32.23,69.08,32.34,69.35,32.35,69.69,32.51,69.75,31.68,69.61,31.94,70.23,33.24,70.68,34.81,71.07,35.18,72.15,35.65,71.78,35.32,71.53,35.69,70.17,34.41,68.96,33.84,69.79,33.86,68.97,34.05,68.34,32.18,64.93
>>杀死|cRXP_ENEMY_Spiked Ghoul|r。掠夺他们的|cRXX_Loot_Jagged Shard|r
.complete 13136,1 
.mob Spiked Ghoul
.isOnQuest 13136
step
.loop 50,IcecrownGlacier,32.18,64.93,31.79,63.89,31.35,64.10,31.86,61.15,31.95,60.75,31.61,60.15,30.90,59.36,30.78,60.19,30.97,62.27,30.64,62.32,30.86,63.63,30.48,64.39,30.90,64.62,30.01,65.32,29.97,66.05,30.20,66.05,30.48,64.39,31.54,66.14,31.87,66.09,31.74,66.68,32.23,69.08,32.34,69.35,32.35,69.69,32.51,69.75,31.68,69.61,31.94,70.23,33.24,70.68,34.81,71.07,35.18,72.15,35.65,71.78,35.32,71.53,35.69,70.17,34.41,68.96,33.84,69.79,33.86,68.97,34.05,68.34,32.18,64.93
>>杀死|cRXP_ENEMY_Spiked Ghoul|r。为|T132418:0|t[|cRXP-Loot_Jagged Shard|r]掠夺它们
>>|cRXP_WARN_使用|T132418:0|t[|cRXP_LOOT_Jagged Shard|r]开始任务|r
.collect 43242,1,13136,1 
.accept 13136 >>接任务: |cRXP_WARN_粗糙的碎片|r
.mob Spiked Ghoul
.use 43242
step
.loop 50,IcecrownGlacier,32.18,64.93,31.79,63.89,31.35,64.10,31.86,61.15,31.95,60.75,31.61,60.15,30.90,59.36,30.78,60.19,30.97,62.27,30.64,62.32,30.86,63.63,30.48,64.39,30.90,64.62,30.01,65.32,29.97,66.05,30.20,66.05,30.48,64.39,31.54,66.14,31.87,66.09,31.74,66.68,32.23,69.08,32.34,69.35,32.35,69.69,32.51,69.75,31.68,69.61,31.94,70.23,33.24,70.68,34.81,71.07,35.18,72.15,35.65,71.78,35.32,71.53,35.69,70.17,34.41,68.96,33.84,69.79,33.86,68.97,34.05,68.34,32.18,64.93
>>杀死|cRXP_ENEMY_Spiked Ghoul|r。掠夺他们的|cRXX_Loot_Jagged Shard|r
.complete 13136,1 
.mob Spiked Ghoul
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗骑士阿尔蕾|r, |cRXP_FRIENDLY_北伐军战士欧尔拉金·萨利斯|r
.turnin 13134 >>交任务: |cRXP_FRIENDLY_抛洒它们的血|r
.goto IcecrownGlacier,35.39,66.32
.turnin 13136 >>交任务: |cRXP_FRIENDLY_粗糙的碎片|r
.accept 13138 >>接任务: |cRXP_WARN_熔炼碎片|r
.accept 13140 >>接任务: |cRXP_WARN_玛雷卡里斯的符文锻造师|r
.goto IcecrownGlacier,35.50,66.44
.target Crusader Olakin Sainrith
.target Darkrider Arly
step
#completewith next
>>杀死|cRXP_ENEMY_Skeletal Runesmits|r。掠夺它们以获得|cRXD_Loot_ Runed Saronite Plate|r
.complete 13140,1 
.mob Skeletal Runesmith
step
.goto IcecrownGlacier,57.83,74.36
>>|cRXP_WARN_使用|r|T133649:0|t[锯齿碎片袋]|cRXP_WARN_next到|r|cRX_PICK_Furnace|r
.complete 13138,1 
.use 43289
step
.loop 50,IcecrownGlacier,57.71,74.52,57.77,74.10,58.69,73.45,59.41,73.41,59.43,74.23,58.66,74.25,57.71,74.52
>>杀死|cRXP_ENEMY_Skeletal Runesmits|r。掠夺它们以获得|cRXD_Loot_ Runed Saronite Plate|r
.complete 13140,1 
.mob Skeletal Runesmith
step << skip
#sticky
#label FieldTest
.goto IcecrownGlacier,67.2,68.3,70,0
.goto IcecrownGlacier,68.0,70.9,70,0
.goto IcecrownGlacier,71.6,61.3,70,0
.goto IcecrownGlacier,67.2,68.3
>>掠夺散落在破碎战线周围地面上的|cRXP_PICK_件废弃装备|r。当你每台设备都有一台时，请使用Copperclaw的挥发油（你不需要等待RP） << Alliance
.collect 43609,3,13291,1,-1 << Alliance 
.collect 43610,3,13291,1,-1 << Alliance 
.collect 43616,3,13291,1,-1 << Alliance 
.complete 13291,1 << Alliance 
.use 43608 >>掠夺散落在破碎战线周围地面上的|cRXP_PICK_件废弃装备|r。当你每台设备都有一台时，请使用Copperclaw的挥发油（你不需要等待RP） << Horde
.collect 43609,3,13239,1,-1 << Horde 
.collect 43610,3,13239,1,-1 << Horde 
.collect 43616,3,13239,1,-1 << Horde 
.complete 13239,1 << Horde 
.use 44048 << Alliance
.use 43608 << Horde
step
.loop 50,IcecrownGlacier,66.66,63.14,66.65,64.19,67.11,65.05,66.61,66.08,67.39,68.40,67.59,70.51,68.97,68.66,69.13,67.03,70.59,67.35,71.49,69.37,70.59,67.35,69.82,65.98,70.36,65.32,69.69,63.93,70.21,63.42,71.56,62.25,70.96,60.79,69.72,62.55,68.66,63.24,66.66,63.14
>>杀死|cRXP_ENEMY_绿巨人部落|r、|cRXD_ENEMY_Malific亡灵法师|r和|cRXP_ENEMY_Shadow Adepts|r
.complete 13287,1 << Alliance 
.complete 13287,2 << Alliance 
.complete 13287,3 << Alliance 
.complete 13237,1 << Horde 
.complete 13237,2 << Horde 
.complete 13237,3 << Horde 
.mob Hulking Abomination
.mob Malefic Necromancer
.mob Shadow Adept
step
.goto IcecrownGlacier,79.79,71.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 13076 >>交任务: |cRXP_FRIENDLY_仍有时间|r
.accept 13077 >>接任务: |cRXP_LOOT_龙神的触摸|r
.target Highlord Tirion Fordring
step
.goto Dragonblight,59.84,54.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alextrasza|r atop Wyrmrest Temple
.turnin 13077 >>交任务: |cRXP_FRIENDLY_龙神的触摸|r
.accept 13078 >>接任务: |cRXP_LOOT_达莉亚之泪|r
.target Alexstrasza the Life-Binder
step
.goto Dragonblight,50.14,52.57,12,0
.goto Dragonblight,50.58,51.87,12,0
.goto Dragonblight,50.21,51.63,12,0
.goto Dragonblight,52.25,47.12,12,0
.goto Dragonblight,52.06,46.55,12,0
.goto Dragonblight,51.89,47.68,12,0
.goto Dragonblight,51.69,47.22,12,0
.goto Dragonblight,44.39,52.08,12,0
.goto Dragonblight,44.28,52.30,12,0
.goto Dragonblight,44.05,52.49,12,0
.goto Dragonblight,43.86,51.50,12,0
.goto Dragonblight,43.76,52.03,12,0
.goto Dragonblight,43.30,52.06,12,0
.goto Dragonblight,43.39,51.40
>>抢劫|cRXP_Loot_Dahlia的眼泪|r在地上
.complete 13078,1 
step
.goto Dragonblight,59.84,54.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alextrasza|r atop Wyrmrest Temple
.turnin 13078 >>交任务: |cRXP_FRIENDLY_达莉亚之泪|r
.accept 13079 >>接任务: |cRXP_LOOT_阿莱克丝塔萨的恩赐|r
.target Alexstrasza the Life-Binder
step
#completewith next
.hs >>红心银约亭 << Alliance
.hs >>向阳光公园致敬 << Horde
.cooldown item,6948,>0
.zoneskip Icecrown
step
.goto IcecrownGlacier,79.85,30.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bridenbrad|r
.turnin 13079 >>交任务: |cRXP_FRIENDLY_阿莱克丝塔萨的恩赐|r
.accept 13080 >>接任务: |cRXP_LOOT_仍有希望|r
.target Crusader Bridenbrad
step << skip
#sticky
#label notdead
.goto IcecrownGlacier,65.1,57.2,0
.goto IcecrownGlacier,64.7,52.4,0
.goto IcecrownGlacier,62.1,45.9,0
.goto IcecrownGlacier,57.5,39.1,0
.goto IcecrownGlacier,54.7,35.3,0
.goto IcecrownGlacier,54.7,35.3,200,0
.goto IcecrownGlacier,65.1,57.2,200,0
.goto IcecrownGlacier,54.7,35.3
>>找到|cRXP_FRIENDLY_Absalan the Pious |r，他在船后面的楼梯上走来走去
.target Absalan the Pious
.turnin 13221 >>交任务: |cRXP_FRIENDLY_我还没死！|r

step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13287 >>交任务: |cRXP_FRIENDLY_知己知彼|r
.accept 13288 >>接任务: |cRXP_LOOT_你的憎恶伙伴|r
.accept 13294 >>接任务: |cRXP_LOOT_对抗巨人|r
.accept 13386 >>接任务: |cRXP_LOOT_缺口|r
.target Thassarian
step << skip
#requires notdead
.goto IcecrownGlacier,65.1,57.2,0
.goto IcecrownGlacier,64.7,52.4,0
.goto IcecrownGlacier,62.1,45.9,0
.goto IcecrownGlacier,57.5,39.1,0
.goto IcecrownGlacier,54.7,35.3,0
.goto IcecrownGlacier,54.7,35.3,200,0
.goto IcecrownGlacier,65.1,57.2,200,0
.goto IcecrownGlacier,54.7,35.3
>>走船中央的楼梯(在马拉德后面)，然后走第一个楼梯两侧的楼梯，进入机舱。与总工程师Boltwrench交谈
.turnin 13291 >>交任务: |cRXP_FRIENDLY_“借来”的技术|r

step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13237 >>交任务: |cRXP_FRIENDLY_知己知彼|r
.accept 13258 >>接任务: |cRXP_LOOT_机会|r
.accept 13264 >>接任务: |cRXP_LOOT_你的憎恶伙伴|r
.accept 13277 >>接任务: |cRXP_LOOT_对抗巨人|r
.target Koltira Deathweaver
step << skip
>>在楼梯上找到|cRXP_FRIENDLY_Brother Keltan|r。
.target Brother Keltan
.turnin 13229 >>交任务: |cRXP_FRIENDLY_我还没死！|r
step << skip
>>转到下层甲板上的|cRXP_FRIENDLY_Chief Engineer Copperclaw|r。
.target Chief Engineer Copperclaw
.turnin 13239 >>交任务: |cRXP_FRIENDLY_爆炸油|r
step
.loop 50,IcecrownGlacier,63.43,56.62,63.21,57.67,65.15,59.53,65.05,62.81,65.75,62.99,65.05,62.81,65.15,59.53,66.02,60.20,65.15,59.53,69.06,57.47,69.89,57.65,69.47,58.92,69.89,57.65,70.38,57.84,71.14,58.17,72.71,58.74
>>飞越末世之塔：死亡之门
>>杀死|cRXP_ENEMY_Pustulent恐怖|r。掠夺它们以获得|cRXX_Loot_Pustlant脊椎|r
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他们找一个小组。如果你找不到一个小组或独自一人，请跳过这一步。您将错过本任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中未来任务的2|r|T135947:0| t[英雄勋章]|cRXP_WARN__，每个任务必须杀死5名精英|r
.complete 13277,1 << Horde 
.complete 13294,1 << Alliance 
.mob Pustulent Horror
.isOnQuest 13277 << Horde
.isOnQuest 13294 << Alliance
step
.loop 60,IcecrownGlacier,66.48,62.36,67.45,61.45,68.33,61.23,69.09,60.93,69.89,60.77
>>|cRXP_WARN_Kill|cRXP_ENEMY_Hulking Abominations|r。掠夺它们|r|T237415:0|t[|cRXP-Loot_冷冻排泄口|r]
>>|cRXP_WARN_一次只能有1|r|T237415:0|t[|cRXP_LOOT_冷冻呕吐肠子|r]|cRXP-WARN_a|r
>>|cRXP_WARN_使用|r|T133667:0|t[排泄物再活化试剂盒]|cRXP_WARN_与|r|T237415:0|t[|cRXP-LOOT_冷冻排泄物肠子|r]|cRXP_WARN__to调用您控制的|cRXT_FRIENDLY_活化排泄物|r|r
>>|cRXP_WARN_收集尽可能多的|cRXP_ENEMY_Icy食尸鬼|r、|cRXD_ENEMY_Vicious Geists|r和|cRXP_ENEMY_Risen Alliance士兵|r，用|r|cRXT_FRIENDLY_Reanimatized Abomination攻击他们|r
>>|cRXP_WARN_当你的|cRXP_FRIENDLY_Reanimatized Abomination|r生命值较低时，施放|r|T136133:0|t[在接缝处爆裂]|cRXP_WARN_to杀死你|r|cRXP _FRIENDLY_Reanimatiated Abomination附近战斗中的所有|cREXP_ENEMY_Undead|r|r
>>|cRXP_WARN_确保你的子区域是“破碎的前线”，否则你的|cRXP_FRIENDLY_Reanimatized Abomination|r将消失|r
>>|cRXP_WARN_这个任务导致了一个长的任务链4|r|T135947:0|t[英雄徽章]|cRXP_WARN_在这里你必须为每个人杀死5名精英。如果您不希望执行此操作，请跳过此步骤|r
.collect 43966,1,13288,1,1 << Alliance 
.collect 43966,1,13264,1,1 << Horde 
.complete 13288,1 << Alliance 
.complete 13264,1 << Horde 
.complete 13288,2 << Alliance 
.complete 13264,2 << Horde 
.complete 13288,3 << Alliance 
.complete 13264,3 << Horde 
.mob Hulking Abomination
.mob Icy Ghoul
.mob Vicious Geist
.mob Risen Alliance Soldier
.use 43968
.isOnQuest 13288 << Alliance
.isOnQuest 13264 << Horde
step << Alliance
.goto Icecrown,51.75,86.69
>>飞到冰冠城堡下面
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯达尔上尉|r
.turnin 13386 >>交任务: |cRXP_FRIENDLY_缺口|r
.accept 13387 >>接任务: |cRXP_LOOT_保护现场|r
.target Captain Kendall
step << Horde
.goto IcecrownGlacier,54.94,84.18
>>飞到冰冠城堡下面
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克蕾迦中士|r
.turnin 13258 >>交任务: |cRXP_FRIENDLY_机会|r
.accept 13259 >>接任务: |cRXP_LOOT_确立优势|r
.target Sergeant Kregga
step
.loop 55,IcecrownGlacier,54.43,86.11,54.18,85.99,53.85,86.01,53.54,86.17,53.31,86.39,53.13,86.67,52.93,87.19,52.86,87.77,52.89,88.17,52.97,88.55,53.14,88.97,53.38,89.30,53.62,89.48,53.87,89.59,54.27,89.58,54.64,89.37,54.85,89.14,55.03,88.84,55.19,88.40,55.25,87.92,55.24,87.51,55.17,87.13,54.98,86.61,54.68,86.24,54.43,86.11
>>杀死|cRXP_ENEMY_Hulking恐怖|r
.complete 13387,1 << Alliance 
.complete 13259,1 << Horde 
.mob Hulking Horror
step << Alliance
.goto Icecrown,51.75,86.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯达尔上尉|r
.turnin 13387 >>交任务: |cRXP_FRIENDLY_保护现场|r
.accept 13388 >>接任务: |cRXP_LOOT_引爆！|r
.target Captain Kendall
step << Horde
.goto IcecrownGlacier,54.94,84.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克蕾迦中士|r
.turnin 13259 >>交任务: |cRXP_FRIENDLY_确立优势|r
.accept 13262 >>接任务: |cRXP_LOOT_引爆！|r
.target Sergeant Kregga
step
.goto IcecrownGlacier,54.37,86.31
>>单击|cRXP_PICK_Saronite炸弹堆栈|r
.turnin 13388 >>交任务: |cRXP_FRIENDLY_引爆！|r << Alliance
.accept 13389 >>接任务: |cRXP_LOOT_引线太短|r << Alliance
.turnin 13262 >>交任务: |cRXP_FRIENDLY_引爆！|r << Horde
.accept 13263 >>接任务: |cRXP_LOOT_引线太短|r << Horde
.timer 15,A Short Fuse RP
step
.goto Icecrown,53.99,87.29
>>|cRXP_WARN_等待RP|r
>>在水下单击|cRXP_PICK_Pulsing Crystal|r
.turnin 13389 >>交任务: |cRXP_FRIENDLY_引线太短|r << Alliance
.accept 13390 >>接任务: |cRXP_WARN_黑暗中的声音|r << Alliance
.turnin 13263 >>交任务: |cRXP_FRIENDLY_引线太短|r << Horde
.accept 13271 >>接任务: |cRXP_WARN_黑暗中的声音|r << Horde
step
.goto Icecrown,53.81,86.93
>>|cRXP_WARN_不要单击|r|cRXP_PICK_Surface门户|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米斯希尔萨·阿奈尔|r
.turnin 13390 >>交任务: |cRXP_FRIENDLY_黑暗中的声音|r << Alliance
.accept 13391 >>接任务: |cRXP_WARN_藏匿行踪|r << Alliance
.turnin 13271 >>交任务: |cRXP_FRIENDLY_黑暗中的声音|r << Horde
.accept 13275 >>接任务: |cRXP_WARN_藏匿行踪|r << Horde
.target Matthias Lehner
step
.loop 40,IcecrownGlacier,54.58,87.18,55.01,86.53,56.07,85.33,56.73,85.83,55.70,87.08,54.80,88.65,54.41,89.86,53.68,89.63,54.58,87.18
>>|cRXP_WARN_不要单击|r|cRXP_PICK_Surface门户|r
>>杀死|cRXP_ENEMY_Faceless潜伏者|r。掠夺他们以获取|cRXX_Loot_ Faceless One’s Blood|r
.complete 13391,1 << Alliance 
.complete 13275,1 << Horde 
.mob Faceless Lurker
step
.goto Icecrown,53.81,86.93
>>|cRXP_WARN_不要单击|r|cRXP_PICK_Surface门户|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米斯希尔萨·阿奈尔|r
.turnin 13391 >>交任务: |cRXP_FRIENDLY_藏匿行踪|r << Alliance
.accept 13392 >>接任务: |cRXP_WARN_返回地面|r << Alliance
.turnin 13275 >>交任务: |cRXP_FRIENDLY_藏匿行踪|r << Horde
.accept 13282 >>接任务: |cRXP_WARN_返回地面|r << Horde
.target Matthias Lehner
step
#completewith next
.goto IcecrownGlacier,53.78,86.84
.goto IcecrownGlacier,49.07,71.56,100 >>单击|cRXP_FRIENDLY_Matthias|r后面的|cRXP_PICK_Surface Portal |r返回曲面
step
.goto IcecrownGlacier,79.79,71.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 13080 >>交任务: |cRXP_FRIENDLY_仍有希望|r
.accept 13081 >>接任务: |cRXP_LOOT_纳鲁的意志|r
.timer 15,The Will of the Naaru RP
.target Highlord Tirion Fordring
step
#completewith next
.goto IcecrownGlacier,79.90,71.84
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_如果你错过了传送门，放弃《纳鲁的意志》，重新接受它|r << !Mage
>>|cRXP_WARN_如果您错过了入口，请铸造|T135760:0|t[电报：Shatrath] << Mage
.zone Shattrath City >>|cRXP_WARN_前往: |cRXP_PICK_沙塔斯城|r|r
step
.goto Shattrath City,53.98,44.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿达尔|r
.turnin 13081 >>交任务: |cRXP_FRIENDLY_纳鲁的意志|r
.accept 13082 >>接任务: |cRXP_LOOT_阿达尔的恩赐|r
.target A'dal
step
#completewith next
.hs >>红心银约亭 << Alliance
.hs >>向阳光公园致敬 << Horde
.cooldown item,6948,>0
.zoneskip Icecrown
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bridenbrad|r
>>点击地面上的|cRXP_PICK_Bridenbrad的占有|r
.turnin 13082 >>交任务: |cRXP_FRIENDLY_阿达尔的恩赐|r
.goto IcecrownGlacier,79.85,30.82
.accept 13083 >>接任务: |cRXP_LOOT_黑暗中的光明|r
.goto IcecrownGlacier,79.79,30.83
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13264 >>交任务: |cRXP_FRIENDLY_你的憎恶伙伴|r

.turnin 13277 >>交任务: |cRXP_FRIENDLY_对抗巨人|r
.accept 13278 >>接任务: |cRXP_WARN_污染者科普洛斯|r
.accept 13279 >>接任务: |cRXP_LOOT_化学常识|r
.accept 13351 >>接任务: |cRXP_LOOT_预览|r
.turnin 13282 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13304 >>接任务: |cRXP_WARN_战地维修|r
.target Koltira Deathweaver
.isQuestComplete 13264
.isQuestComplete 13277
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13264 >>交任务: |cRXP_FRIENDLY_你的憎恶伙伴|r

.accept 13351 >>接任务: |cRXP_LOOT_预览|r
.turnin 13282 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13304 >>接任务: |cRXP_WARN_战地维修|r
.target Koltira Deathweaver
.isQuestComplete 13264
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13277 >>交任务: |cRXP_FRIENDLY_对抗巨人|r
.accept 13278 >>接任务: |cRXP_WARN_污染者科普洛斯|r
.accept 13279 >>接任务: |cRXP_LOOT_化学常识|r
.turnin 13282 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13304 >>接任务: |cRXP_WARN_战地维修|r
.target Koltira Deathweaver
.isQuestComplete 13277
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r

.accept 13278 >>接任务: |cRXP_WARN_污染者科普洛斯|r
.accept 13279 >>接任务: |cRXP_LOOT_化学常识|r
.accept 13351 >>接任务: |cRXP_LOOT_预览|r
.turnin 13282 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13304 >>接任务: |cRXP_WARN_战地维修|r
.target Koltira Deathweaver
.isQuestTurnedIn 13264
.isQuestTurnedIn 13277
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.accept 13278 >>接任务: |cRXP_WARN_污染者科普洛斯|r
.accept 13279 >>接任务: |cRXP_LOOT_化学常识|r
.turnin 13282 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13304 >>接任务: |cRXP_WARN_战地维修|r
.target Koltira Deathweaver
.isQuestTurnedIn 13277
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r

.accept 13351 >>接任务: |cRXP_LOOT_预览|r
.turnin 13282 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13304 >>接任务: |cRXP_WARN_战地维修|r
.target Koltira Deathweaver
.isQuestTurnedIn 13264
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13282 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13304 >>接任务: |cRXP_WARN_战地维修|r
.target Koltira Deathweaver
step << Horde
#completewith Parting
.abandon 13264 >>放弃这太可恶了！
step << Horde
#completewith Parting
.abandon 13277 >>放弃对抗巨人队
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13288 >>交任务: |cRXP_FRIENDLY_你的憎恶伙伴|r
.turnin 13294 >>交任务: |cRXP_FRIENDLY_对抗巨人|r
.accept 13315 >>接任务: |cRXP_LOOT_预览|r
.accept 13295 >>接任务: |cRXP_LOOT_化学常识|r
.accept 13298 >>接任务: |cRXP_LOOT_污染者科普洛斯|r
.turnin 13392 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13393 >>接任务: |cRXP_WARN_战地维修|r
.target Thassarian
.isQuestComplete 13288
.isQuestComplete 13294
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13288 >>交任务: |cRXP_FRIENDLY_你的憎恶伙伴|r
.accept 13315 >>接任务: |cRXP_LOOT_预览|r
.turnin 13392 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13393 >>接任务: |cRXP_WARN_战地维修|r
.target Thassarian
.isQuestComplete 13288
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13294 >>交任务: |cRXP_FRIENDLY_对抗巨人|r
.accept 13295 >>接任务: |cRXP_LOOT_化学常识|r
.accept 13298 >>接任务: |cRXP_LOOT_污染者科普洛斯|r
.turnin 13392 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13393 >>接任务: |cRXP_WARN_战地维修|r
.target Thassarian
.isQuestComplete 13294
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.accept 13315 >>接任务: |cRXP_LOOT_预览|r
.accept 13295 >>接任务: |cRXP_LOOT_化学常识|r
.accept 13298 >>接任务: |cRXP_LOOT_污染者科普洛斯|r
.turnin 13392 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13393 >>接任务: |cRXP_WARN_战地维修|r
.target Thassarian
.isQuestTurnedIn 13288
.isQuestTurnedIn 13294
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.accept 13315 >>接任务: |cRXP_LOOT_预览|r
.turnin 13392 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13393 >>接任务: |cRXP_WARN_战地维修|r
.target Thassarian
.isQuestTurnedIn 13288
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.accept 13295 >>接任务: |cRXP_LOOT_化学常识|r
.accept 13298 >>接任务: |cRXP_LOOT_污染者科普洛斯|r
.turnin 13392 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13393 >>接任务: |cRXP_WARN_战地维修|r
.target Thassarian
.isQuestTurnedIn 13294
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13392 >>交任务: |cRXP_FRIENDLY_返回地面|r
.accept 13393 >>接任务: |cRXP_WARN_战地维修|r
.target Thassarian
step << skip
.goto IcecrownGlacier,65.1,57.2,0
.goto IcecrownGlacier,64.7,52.4,0
.goto IcecrownGlacier,62.1,45.9,0
.goto IcecrownGlacier,57.5,39.1,0
.goto IcecrownGlacier,54.7,35.3,0
.goto IcecrownGlacier,54.7,35.3,200,0
.goto IcecrownGlacier,65.1,57.2,200,0
.goto IcecrownGlacier,54.7,35.3
>>走船中央的楼梯(在马拉德后面)，然后走第一个楼梯两侧的楼梯，进入机舱。与总工程师Boltwrench交谈
.turnin 13292 >>交任务: |cRXP_FRIENDLY_偷来的解决方案|r

step
>>飞向阿尔达的不同地方
.complete 13315,1 << Alliance 
.complete 13351,1 << Horde 
.goto Icecrown,55.64,46.73
.complete 13315,2 << Alliance 
.complete 13351,2 << Horde 
.goto Icecrown,54.10,43.43
.complete 13315,3 << Alliance 
.complete 13351,3 << Horde 
.goto Icecrown,54.09,35.33
.complete 13315,4 << Alliance 
.complete 13351,4 << Horde 
.goto Icecrown,52.06,34.21
.isOnQuest 13315 << Alliance
.isOnQuest 13351 << Horde
step
.goto IcecrownGlacier,44.06,24.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克里托斯·血刃|r
.accept 13168 >>接任务: |cRXP_WARN_离别礼物|r
.target Keritose Bloodblade
step
.goto IcecrownGlacier,44.10,24.78,-1
.goto IcecrownGlacier,44.14,24.72,-1
.goto IcecrownGlacier,44.17,24.64,-1
>>单击一个|cRXP_PICK_自治领之眼|r以控制一个|cRXP_FRIENDLY_Eidolon观察者|r
.complete 13168,1 
.skipgossip
step
#label Parting
.goto IcecrownGlacier,44.06,24.53
>>|cRXP_WARN_退出|r|cRXP_FRONDLY_Eidolon Watcher|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克里托斯·血刃|r
.turnin 13168 >>交任务: |cRXP_FRIENDLY_离别礼物|r
.accept 13169 >>接任务: |cRXP_WARN_亡灵的好朋友|r
.accept 13170 >>接任务: |cRXP_WARN_不择手段|r
.accept 13171 >>接任务: |cRXP_WARN_来去无踪|r
.target Keritose Bloodblade
step
.goto IcecrownGlacier,44.10,24.78,-1
.goto IcecrownGlacier,44.14,24.72,-1
.goto IcecrownGlacier,44.17,24.64,-1
.vehicle >>单击一个|cRXP_PICK_自治领之眼|r以控制一个|cRXP_FRIENDLY_Eidolon观察者|r
.skipgossip
.isOnQuest 13171
step
#completewith next
+|cRXP_WARN_如果你因为重影效果而看不清楚，请将此命令复制粘贴到聊天中，然后键入/reload|r
.link /console ffxDeath 0 >>|cRXP_WARN_单击此处|r
step
.goto IcecrownGlacier,42.05,34.67,20,0
.goto IcecrownGlacier,41.54,35.66,20,0
.goto IcecrownGlacier,40.18,35.50,20,0
.goto IcecrownGlacier,39.78,35.44,20,0
.goto IcecrownGlacier,39.71,35.93,20,0
.goto IcecrownGlacier,39.55,35.93,20,0
.goto IcecrownGlacier,39.84,36.56,15,0
.goto IcecrownGlacier,39.62,36.47,12,0
.goto IcecrownGlacier,39.91,36.97,12,0
.goto IcecrownGlacier,40.00,36.81,12,0
.goto IcecrownGlacier,40.27,38.06,12,0
.goto IcecrownGlacier,39.66,39.00,12,0
.goto IcecrownGlacier,39.57,39.37,12,0
.goto IcecrownGlacier,40.04,40.06,12,0
.goto IcecrownGlacier,39.60,40.14,20,0
.goto IcecrownGlacier,39.26,40.14,12,0
.goto IcecrownGlacier,38.53,40.56,20,0
.goto IcecrownGlacier,40.54,38.90,12,0
.goto IcecrownGlacier,40.65,37.96,20,0
.goto IcecrownGlacier,40.77,37.76,12,0
.goto IcecrownGlacier,41.71,37.53,12,0
.goto IcecrownGlacier,41.13,36.93,12,0
.goto IcecrownGlacier,41.52,36.47,20,0
.goto IcecrownGlacier,41.91,35.95,12,0
.goto IcecrownGlacier,41.54,35.66,20,0
.goto IcecrownGlacier,40.18,35.50,20,0
.loop 20,Icecrown,41.54,35.66,40.18,35.50,40.03,35.28,39.53,35.92,39.88,36.61,39.73,37.05,39.66,39.00,39.60,40.14,38.53,40.56,39.60,40.14,40.65,37.96,41.52,36.47,41.54,35.66
>>|cRXP_WARN_施法|r|T135736:0|t[跳相]（1）|cRXP_WARN_to更快移动并停止下落|r
>>|cRXP_WARN_施法|r|T237513:0|t[吸血虹吸管]（2）|cRXP_WARN_攻击附近的敌人以恢复生命值|r
>>|cRXP_WARN_施法|r|T132331:0|t[退相]（3）|cRXP_WARN_to移动速度更快并从敌人身上释放攻击力|r
>>|cRXP_WARN_铸造|r|T237395:0|t[喂养饥饿的瘟疫猎犬]（4）|cRXP_WARN_on|cRXP_ENEMY_Hungering瘟疫猎犬|r以使它们入睡。当你获得客观信用时，你可以从他们身边走过|r
>>|cRXP_WARN_铸造|r|T132293:0|t[暗杀不安了望台]（5）|cRXP_WARN_to kill|r|cRXP_ENEMY_Restless了望台|r
>>|cRXP_WARN_铸造|r|T136213:0|t[放逐Scourge水晶]（6）|cRXP_WARN_to放逐|r|cRX_PICK_Scourge晶体|r
>>|cRXP_WARN_如果您的|cRXP_FRIENDLY_Eidolon Watcher|r死亡，请单击一个|cRXP_PICK_自治领之眼|r以再次控制|cRXP _FRIENDLY_Eidoloon Watcher| r|r
.complete 13170,1 
.complete 13169,1 
.complete 13171,1 


.mob Hungering Plaguehound
.mob Restless Lookout
.skipgossip
step
.goto IcecrownGlacier,44.06,24.53
>>|cRXP_WARN_退出|r|cRXP_FRONDLY_Eidolon Watcher|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克里托斯·血刃|r
.turnin 13169 >>交任务: |cRXP_FRIENDLY_亡灵的好朋友|r
.turnin 13170 >>交任务: |cRXP_FRIENDLY_不择手段|r
.turnin 13171 >>交任务: |cRXP_FRIENDLY_来去无踪|r
.accept 13172 >>接任务: |cRXP_WARN_混乱之种|r
.accept 13174 >>接任务: |cRXP_WARN_一片狼藉|r
.target Keritose Bloodblade
step
#completewith next
.goto IcecrownGlacier,44.06,24.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克里托斯·血刃|r
.vehicle >>安装|cRXP_FRIENDLY_Skeletal Assault Gryphon|r
.target Keritose Bloodblade
.skipgossip 30946,1
step
.goto IcecrownGlacier,40.80,35.51,-1
.goto IcecrownGlacier,38.97,39.19,-1
.goto IcecrownGlacier,37.19,41.93,-1
>>|cRXP_WARN_铸造|r|T135826:0|t[火弹]（1）|cRXP_WARN_to kill|cRXP_ENEMY_Restless Lookouts|r和|r|cRXX_ENEMY_Risen Labours|r
.complete 13172,1 
.mob Restless Lookout
.mob Risen Laborer
.skipgossip 30946,1
step
>>退出|cRXP_FRIENDLY_Skeletal Assault Gryphon|r
>>将|cRXP_OOT_Weeping Quarry Schedule|r、|cRXP_OOT_Weeting Quarry Map|r、| cRXP_Loot_ Weeping Quarly Ledger|r和|cRXP-Loot_ Weeping QuarryDocument|r掠夺到板条箱上
>>|cRXP_ENEMY_不安的了望员|r|cRXP_WARN_and|cRXP-ENEMY_Risen Labours|r不会激怒你|r
.complete 13174,4 
.goto IcecrownGlacier,37.22,41.64
.complete 13174,3 
.goto IcecrownGlacier,38.66,39.41
.complete 13174,2 
.goto IcecrownGlacier,39.16,36.68
.complete 13174,1 
.goto IcecrownGlacier,39.11,33.65
step
.goto IcecrownGlacier,44.06,24.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克里托斯·血刃|r
.turnin 13172 >>交任务: |cRXP_FRIENDLY_混乱之种|r
.turnin 13174 >>交任务: |cRXP_FRIENDLY_一片狼藉|r
.accept 13155 >>接任务: |cRXP_WARN_狡诈者维雷斯|r
.target Keritose Bloodblade
step
.goto IcecrownGlacier,32.30,42.61,20,0
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.turnin 13121 >>交任务: |cRXP_FRIENDLY_巫妖王之眼|r
.accept 13133 >>接任务: |cRXP_LOOT_找到古代英雄|r
.target The Bone Witch
step
#completewith next
.goto IcecrownGlacier,27.90,47.33,30 >>进入祖先的大厅
step
.loop 15,Icecrown,27.45,47.88,27.26,47.66,27.45,47.88,27.65,48.14,27.45,47.88,26.80,49.18,27.02,49.43,26.80,49.18,26.57,49.01,26.80,49.18,26.41,49.94,26.03,49.62,25.27,50.40,25.71,51.13,26.20,51.77,26.65,50.42,26.41,49.94
>>|cRXP_WARN_对话: Slumbering Mjordins, |cRXP_ENEMY_伊斯卡德尔|r|r
.cast 3921 >>|cRXP_WARN_通道|r|T135440:0|t[骨女巫符]|cRXP_WARN_on|r|cRXP-ENEMY_Iskalder|r
.timer 5,Find the Ancient Hero RP
.mob Slumbering Mjordin
.mob Iskalder
.use 43166
.skipgossip
.isOnQuest 13133
step
.goto IcecrownGlacier,32.30,42.61,20,0
.goto IcecrownGlacier,32.50,42.94
>>|cRXP_WARN_使用|r|cRXP_FRIENDLY_Subjugated Iskalder返回|cRXP _FRIENDLY _骨女巫|r|r
>>|cRXP_WARN_你可以飞回你的飞行坐骑|r
.complete 13133,1 
.target The Bone Witch
.skipgossip
.use 43166
step
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.turnin 13133 >>交任务: |cRXP_FRIENDLY_找到古代英雄|r
.accept 13137 >>接任务: |cRXP_LOOT_不那么光彩的战斗|r
.target The Bone Witch
step
#completewith next
.goto IcecrownGlacier,28.74,51.85
.cast 6477 >>单击|cRXP_PICK_Battlescar Signal Fire|r以召唤|cRXP_ENEMY_Iskalder |r
.timer 5,Not-So-Honorable Combat RP
step
.goto IcecrownGlacier,28.73,52.56
>>杀死|cRXP_ENEMY_Iskalder |r
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中未来任务的7|r|T135947:0| t[英雄勋章]|cRXP_WARN__，每个任务必须杀死5名精英|r
.complete 13137,1 
.mob Iskalder
.isOnQuest 13137
step
.goto IcecrownGlacier,32.30,42.61,20,0
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.turnin 13137 >>交任务: |cRXP_FRIENDLY_不那么光彩的战斗|r
.accept 13142 >>接任务: |cRXP_LOOT_女妖的复仇|r
.target The Bone Witch
.isQuestComplete 13137
step
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.accept 13142 >>接任务: |cRXP_LOOT_女妖的复仇|r
.target The Bone Witch
.isQuestTurnedIn 13137
step
#completewith Smelting
.abandon 13137 >>放弃不那么光荣的战斗
step
#completewith next
.goto IcecrownGlacier,18.24,56.43
.cast 6477 >>点击|cRXP_PICK_Jotunheim|r战角召唤|cRXP_ENEMY_Overhane Balargarde|r
.timer 47,Banshee's Revenge RP
step
.goto IcecrownGlacier,17.38,55.90
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_伤害|cRXP_ENEMY_Overthane Balargarde|r降低到50%|r
>>|cRXP_WARN_等待RP结束（30秒）|r
>>|cRXP_WARN_杀死|cRXP_ENEMY_Overthane Balargarde|r。他是不可打断的|r
>>|cRXP_WARN_Run away when |cRXP_ENEMY_Overhane Balargarde|r casts|r|T132369:0|t[Whirlwind]
>>|cRXP_WARN_移出|cRXP_ENEMY_Overhane Balargarde|r's |r|T135857:0|t[暴雪]
>>|cRXP_WARN_移出|r|T135836:0|t[Safirdrang's Chill]|cRXP_WARN_定期在地面上投掷|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中未来任务的6|r|T135947:0| t[英雄勋章]|cRXP_WARN__，每个任务必须杀死5名精英|r
.complete 13142,1 
.mob Overthane Balargarde
.isOnQuest 13142
step
.goto IcecrownGlacier,32.30,42.61,20,0
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.turnin 13142 >>交任务: |cRXP_FRIENDLY_女妖的复仇|r
.accept 13213 >>接任务: |cRXP_LOOT_瓦哈拉斯之战|r
.target The Bone Witch
.isQuestComplete 13142
step
.goto IcecrownGlacier,32.50,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_白骨女巫|r
.accept 13213 >>接任务: |cRXP_LOOT_瓦哈拉斯之战|r
.target The Bone Witch
.isQuestTurnedIn 13142
step
#completewith Smelting
.abandon 13142 >>放弃女妖的复仇
step
.goto IcecrownGlacier,30.74,28.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔莉芙|r
.turnin 13213 >>交任务: |cRXP_FRIENDLY_瓦哈拉斯之战|r
.target Geirrvif
step
.goto IcecrownGlacier,30.74,28.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔莉芙|r
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他们找一个小组。如果你找不到一个小组或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中未来任务的5|r|T135947:0| t[英雄勋章]|cRXP_WARN__，每个任务必须杀死5名精英|r
>>|cRXP_WARN_只有当你的队伍准备好了，并且与你处于相同的任务进度时才接受这个（此任务线禁用自动接受）|r
.accept 13214,1 >>接任务: |cRXP_WARN_瓦哈拉斯之战：堕落的英雄|r
.timer 31,Battle at Valhalas: Fallen Heroes RP
.target Geirrvif
step
.goto IcecrownGlacier,30.84,29.72
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_杀死|cRXP_ENEMY_Jhadras|r，|cRXD_ENEMY_Rith|r，| cRXP__ENEMY_Masud |r，|1cRXP_ENABLE_Tala|r，|3cRXP_ENDEMY_Eldreth|r，和|r|cRXP_ENEMY_Geness半魂|r
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他们找一个小组。如果你找不到一个小组或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中未来任务的5|r|T135947:0| t[英雄勋章]|cRXP_WARN__，每个任务必须杀死5名精英|r
.complete 13214,1 
.mob Father Jhadras
.mob Rith
.mob Masud
.mob Talla
.mob Eldreth
.mob Geness Half-Soul
.isOnQuest 13214
step
.goto IcecrownGlacier,31.57,30.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_残忍的亚纳尔|r
.turnin 13214 >>交任务: |cRXP_FRIENDLY_瓦哈拉斯之战：堕落的英雄|r
.target Gjonner the Merciless
.isQuestComplete 13214
step
#completewith Smelting
.abandon 13214 >>瓦哈拉斯弃战：英雄陨落
step
.goto IcecrownGlacier,30.74,28.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔莉芙|r
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中未来任务的4|r|T135947:0| t[英雄勋章]|cRXP_WARN__，每个任务必须杀死5名精英|r
>>|cRXP_WARN_只有当你的队伍准备好了，并且与你处于相同的任务进度时才接受这个（此任务线禁用自动接受）|r
.accept 13215,1 >>接任务: |cRXP_WARN_瓦哈拉斯之战：黑暗主宰西塔利克斯|r
.timer 27,Battle at Valhalas: Khit'rix the Dark Master RP
.target Geirrvif
.isQuestTurnedIn 13214
step
.goto IcecrownGlacier,31.59,29.81
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_Kill |cRXP_ENEMY_Khit'rix the Dark Master|r. He is NOT interruptable|r
>>|cRXP_ENEMY_Khit'rix the Dark Master|r |cRXP_WARN_casts|r |T136184:0|t[Psychic Scream] |cRXP_WARN_(3 second fear) and|r |T136208:0|t[Mind Flay] |cRXP_WARN_(channeled shadow damage)|r
>>|cRXP_WARN_Ignore the |cRXP_ENEMY_Bone Spiders|r when|cRXT_ENEMY_Khit'rix the Dark Master |r casts|r|T136187:0|t[召唤骨骼蜘蛛]
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中未来任务的4|r|T135947:0| t[英雄勋章]|cRXP_WARN__，每个任务必须杀死5名精英|r
.complete 13215,1 
.mob Khit'rix the Dark Master
.isOnQuest 13215
step
.goto IcecrownGlacier,31.57,30.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_残忍的亚纳尔|r
.turnin 13215 >>交任务: |cRXP_FRIENDLY_瓦哈拉斯之战：黑暗主宰西塔利克斯|r
.target Gjonner the Merciless
.isQuestComplete 13215
step
#completewith Smelting
.abandon 13215 >>放弃瓦尔哈拉斯之战：黑暗的基里克斯
step
.goto IcecrownGlacier,30.74,28.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔莉芙|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为她找一个小组。如果你找不到一个团体或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_，以及任务链中未来任务的3|r|T135947:0| t[英雄勋章]|cRX P_|r
>>|cRXP_WARN_只有当你的队伍准备好了，并且与你处于相同的任务进度时才接受这个（此任务线禁用自动接受）|r
.accept 13216,1 >>接任务: |cRXP_WARN_瓦哈拉斯之战：齐格莉德归来|r
.timer 42,Battle at Valhalas: The Return of Sigrid Iceborn RP
.target Geirrvif
.isQuestTurnedIn 13215
step
.goto IcecrownGlacier,30.47,28.81
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_Sigrid Iceborn|r
>>|cRXP_WARN_小心，因为|cRXP_ENEMY_Sigrid Iceborn|r立即施放|r|T135848:0|t[闪电冻结]|cRXP-WARN_，造成约5000-6000点伤害并眩晕4秒|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为她找一个小组。如果你找不到一个团体或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_，以及任务链中未来任务的3|r|T135947:0| t[英雄勋章]|cRX P_|r
.complete 13216,1 
.mob Sigrid Iceborn
.isOnQuest 13216
step
.goto IcecrownGlacier,31.57,30.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_残忍的亚纳尔|r
.turnin 13216 >>交任务: |cRXP_FRIENDLY_瓦哈拉斯之战：齐格莉德归来|r
.target Gjonner the Merciless
.isQuestComplete 13216
step
#completewith Smelting
.abandon 13216 >>放弃瓦尔哈拉斯之战：西格丽德·冰原的回归
step
.goto IcecrownGlacier,30.74,28.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔莉芙|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中未来任务的2|r|T135947:0| t[英雄勋章]|cRXP_WARN__，每个任务必须杀死5名精英|r
>>|cRXP_WARN_只有当你的队伍准备好了，并且与你处于相同的任务进度时才接受这个（此任务线禁用自动接受）|r
.accept 13217,1 >>接任务: |cRXP_WARN_瓦哈拉斯之战：血肉巨人卡纳基！|r
.timer 43,Battle at Valhalas: Carnage! RP
.target Geirrvif
.isQuestTurnedIn 13216
step
.goto IcecrownGlacier,31.12,30.30
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_Carnage|r
>>|cRXP_WARN_小心，因为|cRXP_ENEMY_Carnace|r立即施放|r|T132091:0|t[War Stomp]|cRXP-WARN_，造成约2500点伤害并眩晕2秒|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中未来任务的2|r|T135947:0| t[英雄勋章]|cRXP_WARN__，每个任务必须杀死5名精英|r
.complete 13217,1 
.mob Carnage
.isOnQuest 13217
step
.goto IcecrownGlacier,31.57,30.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_残忍的亚纳尔|r
.turnin 13217 >>交任务: |cRXP_FRIENDLY_瓦哈拉斯之战：血肉巨人卡纳基！|r
.target Gjonner the Merciless
.isQuestComplete 13217
step
#completewith Smelting
.abandon 13217 >>放弃瓦尔哈拉斯之战：狂欢！
step
.goto IcecrownGlacier,30.74,28.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔莉芙|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中最后一个任务的1| r|T135847:0|t[英雄徽章]|cRXP-WARN_，在该任务中您必须杀死一名5人精英|r
>>|cRXP_WARN_只有当你的队伍准备好了，并且与你处于相同的任务进度时才接受这个（此任务线禁用自动接受）|r
.accept 13218,1 >>接任务: |cRXP_WARN_瓦哈拉斯之战：“死亡一击”领主|r
.timer 43,Battle at Valhalas: Thane Deathblow RP
.target Geirrvif
.isQuestTurnedIn 13217
step
.goto IcecrownGlacier,30.94,29.35
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_Thane Banahogg|r
>>|cRXP_WARN_Run away when |cRXP_ENEMY_Thane Banahog|r casts|r|T132369:0|t[Whirlwind]
>>|cRXP_WARN_小心，因为|cRXP_ENEMY_Thane Banahog|r立即对目标施放|r|T132355:0|t[致命一击]|cRXP-WARN_，在5秒内减少50%的治疗效果|r
>>|cRXP_WARN_注意|cRXP_ENEMY_Thane Banahog|r在目标生命值达到20%或更低时立即施放|r|T132090:0|t[Execute]|cRXP-WARN_，立即造成大量伤害|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中最后一个任务的1| r|T135847:0|t[英雄徽章]|cRXP-WARN_，在该任务中您必须杀死一名5人精英|r
.complete 13218,1 
.mob Thane Banahogg
.isOnQuest 13218
step
.goto IcecrownGlacier,31.57,30.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_残忍的亚纳尔|r
.turnin 13218 >>交任务: |cRXP_FRIENDLY_瓦哈拉斯之战：“死亡一击”领主|r
.target Gjonner the Merciless
.isQuestComplete 13218
step
#completewith Smelting
.abandon 13218 >>放弃瓦尔哈拉之战：Thane致命一击
step
.goto IcecrownGlacier,30.74,28.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔莉芙|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_|r
>>|cRXP_WARN_只有当你的队伍准备好了，并且与你处于相同的任务进度时才接受这个（此任务线禁用自动接受）|r
.accept 13219,1 >>接任务: |cRXP_WARN_瓦哈拉斯之战：终极挑战|r
.timer 52,Battle at Valhalas: Final Challenge RP
.target Geirrvif
.isQuestTurnedIn 13218
step
.goto IcecrownGlacier,30.95,29.32
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_桑多瓦尔王子|r
>>|cRXP_WARN_请小心，因为|cRXP_ENEMY_Prince Sandoval|r立即对目标施放|r|T135805:0|t[发动攻击]|cRXP-WARN_，在9秒内造成约5000点火力伤害和3500点额外伤害|r
>>|cRXP_WARN_小心，因为|cRXP_ENEMY_Prince Sandoval|r立即施放|r|T135824:0|t[火新星]|cRXP-WARN_，造成大约5000点火伤害|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_|r
.complete 13219,1 
.mob Prince Sandoval
.isOnQuest 13219
step
.goto IcecrownGlacier,31.57,30.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_残忍的亚纳尔|r
.turnin 13219 >>交任务: |cRXP_FRIENDLY_瓦哈拉斯之战：终极挑战|r
.target Gjonner the Merciless
.isQuestComplete 13219
step
#completewith Smelting
.abandon 13219 >>放弃瓦尔哈拉战役：最后的挑战
step
#label Smelting
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_北伐军战士欧尔拉金·萨利斯|r, |cRXP_FRIENDLY_黑暗骑士阿尔蕾|r
.turnin 13138 >>交任务: |cRXP_FRIENDLY_熔炼碎片|r
.turnin 13140 >>交任务: |cRXP_FRIENDLY_玛雷卡里斯的符文锻造师|r
.accept 13211 >>接任务: |cRXP_WARN_净化的火焰|r
.goto IcecrownGlacier,35.50,66.44
.accept 13152 >>接任务: |cRXP_WARN_看医生|r
.goto IcecrownGlacier,35.39,66.32
.target Crusader Olakin Sainrith
.target Darkrider Arly
step
#completewith next
.goto IcecrownGlacier,34.45,68.36,15 >>进入复活圣殿
step
#completewith Patches
>>|cRXP_WARN_使用|r|T135433:0|t[Olakin's Torch]|cRXP_WARN_on|r|cRXP-FRIENDLY_Festering Corses|r
.complete 13211,1 

.use 43524
step
.goto IcecrownGlacier,35.80,66.99
>>单击|cRXP_PICK_Metal Stake|r以释放|cRXP_FRIENDLY_Patches|r
.complete 13152,1 
.cast 3365
.timer 60, A Visit to the Doctor RP
.target "Patches"
step
#label Patches
.goto IcecrownGlacier,35.84,67.21
>>|cRXP_WARN_等待RP结束。您可以在等待时使用|r|T135433:0|t[Olakin's Torch]|cRXP_WARN_on|cRXP-FRIENDLY_Festering Corses|r，但一定要在还剩不到20秒时往回跑|r
>>|cRXP_WARN_站在|cRXP_ENEMY_Doctor Sabnok|r上获得学分|r
>>|cRXP_WARN_如果您在RP后不知何故没有获得积分，请单击|cRXP_PICK_Metal Stake|r以再次释放|cRXP-FRIENDLY_Patches|r|r
.complete 13152,2 
.cast 3365
.timer 60, A Visit to the Doctor RP
.target Doctor Sabnok
step
.goto IcecrownGlacier,36.28,66.75,15,0
.goto IcecrownGlacier,36.63,67.59,15,0
.goto IcecrownGlacier,36.81,68.04,15,0
.goto IcecrownGlacier,36.65,68.08,15,0
.goto IcecrownGlacier,36.03,66.85,15,0
.goto IcecrownGlacier,35.79,66.84,15,0
.goto IcecrownGlacier,36.28,65.04,15,0
.goto IcecrownGlacier,36.73,65.35,15,0
.goto IcecrownGlacier,36.47,65.93,15,0
.goto IcecrownGlacier,35.74,65.91,15,0
.goto IcecrownGlacier,34.66,66.08,15,0
.goto IcecrownGlacier,34.97,66.71,15,0
.goto IcecrownGlacier,35.07,67.49,15,0
.goto IcecrownGlacier,35.63,66.47,15,0
.goto IcecrownGlacier,36.28,66.75
>>|cRXP_WARN_使用|r|T135433:0|t[Olakin's Torch]|cRXP_WARN_on|r|cRXP-FRIENDLY_Festering Corses|r
.complete 13211,1 
.target Festering Corpse
.use 43524
step << skip
+走捷径，在洞穴边跳墙。这是高度可选的，但可以为您节省大约20秒
.link https://www.youtube.com/watch?v=QbvHRC0nIds >>单击此处
step
#completewith next
.goto IcecrownGlacier,34.45,68.36,15 >>退出复活圣殿
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_北伐军战士欧尔拉金·萨利斯|r, |cRXP_FRIENDLY_黑暗骑士阿尔蕾|r
.turnin 13211 >>交任务: |cRXP_FRIENDLY_净化的火焰|r
.goto IcecrownGlacier,35.50,66.44
.turnin 13152 >>交任务: |cRXP_FRIENDLY_看医生|r
.accept 13144 >>接任务: |cRXP_WARN_一举两得|r
.goto IcecrownGlacier,35.39,66.32
.target Crusader Olakin Sainrith
.target Darkrider Arly
step
.loop 20,Icecrown,35.36,69.75,35.65,69.99,35.25,70.33,34.00,70.92,32.31,69.66,32.49,69.24,31.75,66.65,31.54,66.12,31.85,66.03,32.99,66.96,33.42,67.69,33.80,67.94,33.99,68.32,34.13,68.60,35.36,69.75
.cast 3365 >>|cRXP_WARN_在地面上抢夺一个|cRXP_PICK_抓臂|r，召唤一个|r|cRXP-FRIENDLY_燃烧的骷髅|r
>>|cRXP_WARN_一次只能召唤一个|cRXP_FRIENDLY_Burning Skeleton|r|r
.isOnQuest 13144
step
.loop 20,Icecrown,32.70,70.83,32.06,71.30,31.58,71.17,31.04,70.26,31.02,69.55,31.23,68.90
>>|cRXP_WARN_飞到|cRXP_ENEMY_Chained Abomination|r旁边，同时召唤一个|cRXP_FRIENDLY_燃烧的骷髅|r来燃烧它|r
>>|cRXP_WARN_不要攻击|r|cRXP_ENEMY_Chained Abomination|r
.complete 13144,1,1 
.mob Chained Abomination
step
.loop 20,Icecrown,35.36,69.75,35.65,69.99,35.25,70.33,34.00,70.92,32.31,69.66,32.49,69.24,31.75,66.65,31.54,66.12,31.85,66.03,32.99,66.96,33.42,67.69,33.80,67.94,33.99,68.32,34.13,68.60,35.36,69.75
.cast 3365 >>|cRXP_WARN_在地面上抢夺一个|cRXP_PICK_抓臂|r，召唤一个|r|cRXP-FRIENDLY_燃烧的骷髅|r
>>|cRXP_WARN_一次只能召唤一个|cRXP_FRIENDLY_Burning Skeleton|r|r
.isOnQuest 13144
step
.loop 20,Icecrown,32.70,70.83,32.06,71.30,31.58,71.17,31.04,70.26,31.02,69.55,31.23,68.90
>>|cRXP_WARN_飞到|cRXP_ENEMY_Chained Abomination|r旁边，同时召唤一个|cRXP_FRIENDLY_燃烧的骷髅|r来燃烧它|r
>>|cRXP_WARN_不要攻击|r|cRXP_ENEMY_Chained Abomination|r
.complete 13144,1,2 
.mob Chained Abomination
step
.loop 20,Icecrown,35.36,69.75,35.65,69.99,35.25,70.33,34.00,70.92,32.31,69.66,32.49,69.24,31.75,66.65,31.54,66.12,31.85,66.03,32.99,66.96,33.42,67.69,33.80,67.94,33.99,68.32,34.13,68.60,35.36,69.75
.cast 3365 >>|cRXP_WARN_在地面上抢夺一个|cRXP_PICK_抓臂|r，召唤一个|r|cRXP-FRIENDLY_燃烧的骷髅|r
>>|cRXP_WARN_一次只能召唤一个|cRXP_FRIENDLY_Burning Skeleton|r|r
.isOnQuest 13144
step
.loop 20,Icecrown,32.70,70.83,32.06,71.30,31.58,71.17,31.04,70.26,31.02,69.55,31.23,68.90
>>|cRXP_WARN_飞到|cRXP_ENEMY_Chained Abomination|r旁边，同时召唤一个|cRXP_FRIENDLY_燃烧的骷髅|r来燃烧它|r
>>|cRXP_WARN_不要攻击|r|cRXP_ENEMY_Chained Abomination|r
.complete 13144,1 
.mob Chained Abomination
step
.goto IcecrownGlacier,35.39,66.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗骑士阿尔蕾|r
.turnin 13144 >>交任务: |cRXP_FRIENDLY_一举两得|r
.accept 13212 >>接任务: |cRXP_WARN_支离破碎|r
.target Darkrider Arly
step
.goto IcecrownGlacier,33.88,68.27,45,0
.goto IcecrownGlacier,34.01,68.83,45,0
.goto IcecrownGlacier,33.78,69.58,45,0
.goto IcecrownGlacier,34.26,69.35,45,0
.goto IcecrownGlacier,35.87,70.29,45,0
.goto IcecrownGlacier,35.12,72.00,45,0
.goto IcecrownGlacier,35.50,72.08,45,0
.goto IcecrownGlacier,36.80,71.30,45,0
.goto IcecrownGlacier,37.31,71.14,45,0
.goto IcecrownGlacier,37.64,71.10,45,0
.goto IcecrownGlacier,37.66,70.47,45,0
.goto IcecrownGlacier,32.96,70.29,45,0
.goto IcecrownGlacier,31.99,70.57,45,0
.goto IcecrownGlacier,31.79,68.79
>>杀死|cRXP_ENEMY_Corpunt Horrors|r。为|cRXD_Loot_Olakin的躯干|r、|cRXP_Loot_ORAKIN的腿|r、| cRXP_Loot-Olakin左臂|r和|cRXT_Loot-ORAKIN右臂|r掠夺它们
.complete 13212,1 
.complete 13212,2 
.complete 13212,3 
.complete 13212,4 
.mob Corpulent Horror
step
.goto IcecrownGlacier,35.39,66.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗骑士阿尔蕾|r
.turnin 13212 >>交任务: |cRXP_FRIENDLY_支离破碎|r
.accept 13220 >>接任务: |cRXP_WARN_重新组合欧尔拉金|r
.target Darkrider Arly
step
#completewith next
.goto IcecrownGlacier,34.45,68.36,15 >>进入复活圣殿
step
.goto IcecrownGlacier,35.20,67.20,20,0
.goto IcecrownGlacier,34.95,66.34,12,0
.goto IcecrownGlacier,34.69,65.98
>>在表上提取线程|r的|cRXP_OOT_Spool
.collect 43567,1,13220,1 
step
.goto IcecrownGlacier,36.61,67.58
>>Loot|cRXP_OOT_手术台顶部的医生夹板|r
.collect 43568,1,13220,1 
step
#completewith next
+|cRXP_WARN_在洞穴一侧跳墙走捷径。这是高度可选的，但将为您节省约20秒|r
.link https://www.youtube.com/watch?v=QbvHRC0nIds >>|cRXP_WARN_单击此处|r
step
.goto IcecrownGlacier,35.61,66.75
>>Go back upstairs
.cast 58856 >>在颅骨板上使用|T133640:0|t[十字军奥拉金遗骸]
.timer 25,Putting Olakin Back Together Again RP
.use 43564
.isOnQuest 13220
step << skip
.goto IcecrownGlacier,34.41,68.42
>>|cRXP_WARN_往外走，直到你能登上你的飞行坐骑|r
>>|cRXP_WARN_Do NOT go out of range|r
>>|cRXP_WARN_等待RP|r
.complete 13220,1 
.use 43564
step
.goto IcecrownGlacier,34.41,68.42,10,0
.goto IcecrownGlacier,35.39,66.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗骑士阿尔蕾|r
.turnin 13220 >>交任务: |cRXP_FRIENDLY_重新组合欧尔拉金|r
.accept 13235 >>接任务: |cRXP_WARN_最强大的血肉巨人|r
.target Darkrider Arly
step
.goto IcecrownGlacier,29.75,61.26
.gossipoption 94275 >>对话: |cRXP_FRIENDLY_玛格拉弗·塔卡尔|r
.timer 38,The Flesh Giant Champion RP
.target Margrave Dhakar
.isOnQuest 13235
step
.goto IcecrownGlacier,29.67,61.55
>>|cRXP_WARN_等待RP|r
>>杀死|cRXP_ENEMY_Morbidus|r
.complete 13235,1 
.mob Morbidus
.skipgossip
step
.goto IcecrownGlacier,35.39,66.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗骑士阿尔蕾|r
.turnin 13235 >>交任务: |cRXP_FRIENDLY_最强大的血肉巨人|r
.target Darkrider Arly
step
.goto IcecrownGlacier,54.15,71.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.turnin 13155 >>交任务: |cRXP_FRIENDLY_狡诈者维雷斯|r
.accept 13143 >>接任务: |cRXP_WARN_新兵|r
.target Vereth the Cunning
step
.goto Icecrown,55.48,71.54,40,0
.goto Icecrown,55.76,74.00
>>飞到墙上的平台上
>>|cRXP_WARN_小心攻击一个|cRXP_ENEMY_使跟踪者的生命值降低到40%或更低|r
.cast 58151 >>|cRXP_WARN_使用|r|T135309:0|t[Ebon Blade的叹息]|cRXP_WARN_to制服一名|r|cRXP-ENEMY_Lithe Stalker|r
.mob Lithe Stalker
.use 43315
.isOnQuest 13143
step
.goto IcecrownGlacier,55.21,70.76
>>|cRXP_WARN_用|cRXP_ENEMY_Lithe Stalker|r在悬崖上等待，直到目标完成|r
.complete 13143,1 
.use 43315
step
.goto IcecrownGlacier,54.15,71.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.turnin 13143 >>交任务: |cRXP_FRIENDLY_新兵|r
.accept 13145 >>接任务: |cRXP_WARN_邪恶城堡|r
.target Vereth the Cunning
step
.goto IcecrownGlacier,58.07,70.63
>>飞向|cRXP_PICK_Blood Forge|r
.complete 13145,2 
step
.goto IcecrownGlacier,60.43,68.74,30,0
.goto IcecrownGlacier,60.82,68.71
>>飞向|cRXP_PICK_Icy了望台|r
.complete 13145,3 
step
.goto IcecrownGlacier,58.93,74.65
>>飞向|cRXP_PICK_Runeworks|r
.complete 13145,4 
step
.goto IcecrownGlacier,56.18,80.09
>>飞向|cRXP_PICK_牺牲祭坛|r
.complete 13145,1 
step
.goto IcecrownGlacier,54.15,71.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.turnin 13145 >>交任务: |cRXP_FRIENDLY_邪恶城堡|r
.accept 13146 >>接任务: |cRXP_WARN_深信不疑|r
.accept 13147 >>接任务: |cRXP_WARN_煽风点火|r
.accept 13160 >>接任务: |cRXP_WARN_壮观的景象|r
.target Vereth the Cunning
step
#completewith next
.goto Icecrown,54.26,70.61
.vehicle 30895 >>单击|cRXP_PICK_自治领之眼|r控制一个|cRXP-FRIENDLY_Lithe Stalker|r
.skipgossip
step
.waypoint Icecrown,57.94,73.79,0,ironchain,UNIT_AURA
.goto Icecrown,58.46,72.80,4,0
.goto Icecrown,58.29,71.64,4,0
.goto Icecrown,57.90,71.65,4,0
.loop 6,Icecrown,58.46,72.80,58.29,71.64,57.90,71.65,58.46,72.80
>>|cRXP_WARN_铸造|r|T236171:0|t[跳跃]（1）|cRXP_WARN_to更快地移动并跳上山|r
>>|cRXP_WARN_Cast|r |T133273:0|t[Iron Chain] (2) |cRXP_WARN_to pick up a |cRXP_FRIENDLY_Scourge Bomb|r. This has a 20 yard range|r
>>|cRXP_WARN_将|cRXP_FRIENDLY_Scourage炸弹|r移向|r|cRXP _FRIENDLY _数量暴行|r
.complete 13146,1 
.target Lumbering Atrocity
.target Scourge Bomb
step
.loop 30,Icecrown,58.41,74.55,58.50,73.80,58.65,73.20,59.02,73.22,59.41,73.26,59.70,73.42,59.57,73.74,59.71,73.88,59.52,74.28,59.04,74.33,59.41,73.26,59.04,74.33,58.41,74.55
>>|cRXP_WARN_铸造|r|T236171:0|t[跳跃]（1）|cRXP_WARN_to更快地移动并跳上山|r
>>|cRXP_WARN_铸造|r|T135236:0|t[投掷石块]（4）|cRXP_WARN_on|cRXP-FRIENDLY_Umbral Brutes|r开始战斗|r
.complete 13147,1 
.mob Umbral Brute
step
.loop 40,Icecrown,58.21,77.01,58.82,76.05,60.44,77.05,60.73,75.76,60.18,74.96,60.89,73.56,60.38,71.71,60.07,70.65
>>|cRXP_WARN_铸造|r|T236171:0|t[跳跃]（1）|cRXP_WARN_to更快地移动并跳上山|r
>>|cRXP_WARN_铸造|r|T236306:0|t[Heave]（3）|cRXP_WARN_on|cRXP-FRIENDLY_Iceskin哨兵|r摧毁它们|r
.complete 13160,1 
.mob Iceskin Sentry
step
.goto IcecrownGlacier,54.15,71.18
>>退出|cRXP_FRIENDLY_Lithe Stalker|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.turnin 13146 >>交任务: |cRXP_FRIENDLY_深信不疑|r
.turnin 13147 >>交任务: |cRXP_FRIENDLY_煽风点火|r
.turnin 13160 >>交任务: |cRXP_FRIENDLY_壮观的景象|r
.accept 13161 >>接任务: |cRXP_WARN_邪恶骑士|r
.accept 13162 >>接任务: |cRXP_WARN_冰霜骑士|r
.accept 13163 >>接任务: |cRXP_WARN_鲜血骑士|r
.target Vereth the Cunning
step
.goto IcecrownGlacier,61.89,68.58
>>飞往Malykriss阳台
>>杀死|cRXP_ENEMY_Sapph|r
>>|cRXP_ENEMY_Sapph|r|cRXP_WARN_instantly casts|r|T135834:0|t[饥饿的寒冷]|cRXP-WARN_，（近战AoE眩晕6秒。受到伤害时打断）|r
>>|cRXP_WARN_这个任务可能很困难。如果需要，为她找一个小组。如果你找不到一个团体或独自一人，请跳过这一步。您将错过本任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中最后一个任务的1| r|T135847:0|t[英雄徽章]|cRXP-WARN_，在该任务中您必须杀死一名5人精英|r
.complete 13162,1 
.mob Sapph
step
.goto IcecrownGlacier,59.29,72.19,30,0
.goto IcecrownGlacier,59.16,71.50
>>|cRXP_WARN_杀死|cRXP_ENEMY_Baelok|r。他是不可打断的|r
>>|cRXP_ENEMY_Baelok|r|cRXP_WARN_casts|r|T136131:0|t[抽魂]|cRXP-WARN_，造成4500-5500点生命伤害|r
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中最后一个任务的1| r|T135847:0|t[英雄徽章]|cRXP-WARN_，在该任务中您必须杀死一名5人精英|r
.complete 13163,1 
.mob Baelok
.mob
step
.goto IcecrownGlacier,55.99,80.30,15,0
.goto IcecrownGlacier,56.18,80.29,15,0
.goto IcecrownGlacier,56.40,80.22,15,0
.goto IcecrownGlacier,56.30,79.82,15,0
.goto IcecrownGlacier,56.02,80.18,15,0
.goto IcecrownGlacier,55.99,80.30
>>|cRXP_WARN_杀死|cRXP_ENEMY_Rokir|r。他是不可打断的|r
>>|cRXP_WARN_移出|cRXP_ENEMY_Rokir|r's |r|T136144:0|t[死亡与衰退]
>>|cRXP_WARN_Kite|cRXP_ENEMY_Rokir|r远离|cRXT_ENEMY_羞辱僵尸|r之后生成|cRXP_ENEMY_Rokir|r|T237511:0|t[僵尸部落]
>>|cRXP_ENEMY_羞辱僵尸|r|cRXP_WARN_cast|r|T136030:0|t[瘟疫冲击]|cRXP-WARN_在距离目标10码以内时，造成约1500点伤害，在12秒内额外造成4000点伤害，杀死|r|cRXP_ENEMY_羞辱僵尸|r | cRXP_WARN_（这不再提供经验）|r
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本次任务的5|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中最后一次任务的1|r|T135947:0| t[英雄勋章]|cRXP_WARN__，在该任务中您必须杀死一名5人精英|r
.complete 13161,1 
.mob Rokir
step
.goto IcecrownGlacier,54.15,71.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.turnin 13161 >>交任务: |cRXP_FRIENDLY_邪恶骑士|r
.turnin 13162 >>交任务: |cRXP_FRIENDLY_冰霜骑士|r
.turnin 13163 >>交任务: |cRXP_FRIENDLY_鲜血骑士|r
.accept 13164 >>接任务: |cRXP_WARN_血毒的命运|r
.target Vereth the Cunning
.isQuestComplete 13161
.isQuestComplete 13162
.isQuestComplete 13163
step
.goto IcecrownGlacier,54.15,71.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.turnin 13161 >>交任务: |cRXP_FRIENDLY_邪恶骑士|r
.turnin 13162 >>交任务: |cRXP_FRIENDLY_冰霜骑士|r
.target Vereth the Cunning
.isQuestComplete 13161
.isQuestComplete 13162
step
.goto IcecrownGlacier,54.15,71.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.turnin 13161 >>交任务: |cRXP_FRIENDLY_邪恶骑士|r
.turnin 13163 >>交任务: |cRXP_FRIENDLY_鲜血骑士|r
.target Vereth the Cunning
.isQuestComplete 13161
.isQuestComplete 13163
step
.goto IcecrownGlacier,54.15,71.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.turnin 13162 >>交任务: |cRXP_FRIENDLY_冰霜骑士|r
.turnin 13163 >>交任务: |cRXP_FRIENDLY_鲜血骑士|r
.target Vereth the Cunning
.isQuestComplete 13162
.isQuestComplete 13163
step
.goto IcecrownGlacier,54.15,71.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.turnin 13161 >>交任务: |cRXP_FRIENDLY_邪恶骑士|r
.target Vereth the Cunning
.isQuestComplete 13161
step
.goto IcecrownGlacier,54.15,71.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.turnin 13162 >>交任务: |cRXP_FRIENDLY_冰霜骑士|r
.target Vereth the Cunning
.isQuestComplete 13162
step
.goto IcecrownGlacier,54.15,71.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.turnin 13163 >>交任务: |cRXP_FRIENDLY_鲜血骑士|r
.target Vereth the Cunning
.isQuestComplete 13163
step
.goto IcecrownGlacier,54.15,71.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.accept 13164 >>接任务: |cRXP_WARN_血毒的命运|r
.target Vereth the Cunning
.isQuestTurnedIn 13161
.isQuestTurnedIn 13162
.isQuestTurnedIn 13163
step
#completewith LightWithin
.abandon 13161 >>抛弃邪恶骑士
.abandon 13162 >>抛弃冰霜骑士
.abandon 13163 >>抛弃血骑士
step
.goto IcecrownGlacier,54.66,83.71,90,0
.goto IcecrownGlacier,54.44,86.13
>>飞到冰冠城堡下面
>>杀死|cRXP_ENEMY_Orbaz Bloodbane|r
>>|cRXP_WARN_当生命值达到40%或更低时，|cRXP_FRIENDLY_Darion|r将产卵并开始攻击|cRXP_ENEMY_Orbaz Bloodbane|r。如果你在这种情况下死亡，只需飞回你的尸体并完成杀死|r|cRXP _ENEMY_奥尔巴兹Bloodbane|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_|r
.complete 13164,1 
.mob Orbaz Bloodbane
.isOnQuest 13164

step
.goto IcecrownGlacier,54.15,71.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狡诈者维雷斯|r
.turnin 13164 >>交任务: |cRXP_FRIENDLY_血毒的命运|r
.target Vereth the Cunning
.isQuestComplete 13164
step
#completewith Coprous
.goto IcecrownGlacier,63,09,62.31,40 >>Enter Mord'rethar
step
.goto IcecrownGlacier,62.26,63.37
>>|cRXP_WARN_===您无法独自完成此任务===|r
>>|cRXP_WARN_通道|r|T134816:0|t[抽吸脊髓液]|cRXP_WARN_at a Cauldron|r
>>|cRXP_WARN_杀死|cRXP_ENEMY_Rampaging食尸鬼|r和|cRXP_ENEMY_Living Plage|r|r
>>|cRXP_WARN_当提示您“尽快添加液体”或“立即添加液体！！”时，您或您的同伴必须再次引导|r|T134816:0|t[抽吸脊髓液]|cRXP_WARN_at釜|r
>>|cRXP_WARN_如果提示“中和剂失败！”，引导|r|T134816:0|t[抽吸脊髓液]|cRXP_WARN_to重新启动事件|r
>>|cRXP_WARN_为这个任务找一个小组。如果找不到组，请跳过此步骤。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_|r
.complete 13295,1 << Alliance 
.complete 13279,1 << Horde 
.mob Living Plague
.mob Rampaging Ghoul
.mob Plague Drenched Ghoul
.cast 59655
.timer 90,Pustulant Spinal Fluid Cooldown
.use 44010
.isOnQuest 13295 << Alliance
.isOnQuest 13279 << Horde

step
#label Coprous
.goto IcecrownGlacier,60.74,62.16
>>杀死|cRXP_ENEMY_Coprous the Defiled|r
>>|cRXP_WARN_Run away when|cRXP_ENEMY_Coprous the Defiled |r casts|r|T135793:0|t[酸性间歇泉]
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_|r
.complete 13298,1 << Alliance 
.complete 13278,1 << Horde 
.isOnQuest 13298 << Alliance
.isOnQuest 13278 << Horde
.mob Coprous the Defiled

step
.loop 50,Icecrown,64.82,56.06,64.30,55.12,63.77,53.91,63.74,52.14,63.91,50.19,65.24,51.18,65.75,51.28,67.65,50.23,67.30,52.74,68.32,53.02,68.69,56.24,66.79,56.01,64.82,56.06
>>杀死|cRXP_ENEMY_Scavenging Geists|r。掠夺他们的|cRXX_Loot_Demolisher零件|r
.complete 13393,1 << Alliance 
.complete 13304,1 << Horde 
.mob Scavenging Geist
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_损毁的攻城车|r, |cRXP_FRIENDLY_米斯希尔萨·阿奈尔|r
.turnin 13393 >>交任务: |cRXP_FRIENDLY_战地维修|r << Alliance
.turnin 13304 >>交任务: |cRXP_FRIENDLY_战地维修|r << Horde
.goto Icecrown,68.04,51.81
.accept 13394 >>接任务: |cRXP_WARN_竭尽全力|r << Alliance
.accept 13305 >>接任务: |cRXP_WARN_竭尽全力|r << Horde
.goto Icecrown,68.02,51.59

.target Matthias Lehner
step
#completewith next
.goto IcecrownGlacier,68.04,51.83
.vehicle 31830 >>进入|cRXP_FRIENDLY_Refurbished拆卸器|r
.target Refurbished Demolisher
step
.goto IcecrownGlacier,68.04,51.83,0
.goto IcecrownGlacier,65.88,50.70,25,0
.loop 60,Icecrown,65.63,48.57,67.19,47.51,66.67,46.42,66.95,44.62,66.13,42.35,64.86,41.51,63.65,41.05,62.47,40.70,61.77,42.35,62.60,43.86,63.22,45.99,64.01,48.86,65.63,48.57
>>杀死|cRXP_ENEMY_分解食尸鬼|r、|cRXP_ENEMY_Frostcrawl Maguses|r和|cRXX_ENEMY_Bone Giants|r
>>|cRXP_WARN_施法|r|T135812:0|t[伤害巨石]（1）|cRXP_WARN_在射程内造成伤害|r
>>|cRXP_WARN_施法|r|T252173:0|t[Ram]（2）|cRXP_WARN_to在近战中造成伤害|r
>>|cRXP_WARN_铸|r|T136106:0|t[倍速]（3）|cRXP_WARN_to移动得更快|r
>>|cRXP_WARN_如果您死亡，请使用新的|cRXP_FRIENDLY_Refurbished拆卸器|r|r
.complete 13394,1 << Alliance 
.complete 13305,1 << Horde 
.complete 13394,2 << Alliance 
.complete 13305,2 << Horde 
.complete 13394,3 << Alliance 
.complete 13305,3 << Horde 
.mob Decomposed Ghoul
.mob Frostskull Magus
.mob Bone Giant
step
.goto IcecrownGlacier,64.52,43.99
>>|cRXP_WARN_Exit the |cRXP_FRIENDLY_Refurbished Demolisher|r out of combat|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米斯希尔萨·阿奈尔|r
.turnin 13394 >>交任务: |cRXP_FRIENDLY_竭尽全力|r << Alliance
.accept 13395 >>接任务: |cRXP_WARN_召唤大军|r << Alliance
.turnin 13305 >>交任务: |cRXP_FRIENDLY_竭尽全力|r << Horde
.accept 13236 >>接任务: |cRXP_WARN_召唤大军|r << Horde
.target Matthias Lehner
step
.loop 30,Icecrown,64.93,43.92,65.23,44.42,65.84,43.97,65.20,43.41,64.93,43.92
>>杀死|cRXP_ENEMY_Lordaeron步兵|r和|cRXX_ENEMY_Lordaeron上尉|r
>>|cRXP_WARN_施法|r|T237559:0|t[死亡风暴]（1）|cRXP_WARN_一次杀死12个敌人|r
>>|cRXP_WARN_施法|r|T135732:0|t[灵魂劈裂]（2）|cRXP_WARN_to在近战劈裂中杀死3名敌人并重新获得法力|r
>>|cRXP_WARN_铸造|r|T136187:0|t[巫妖王的礼物]（3）|cRXP_WARN_to复活死者|r|cRXP_ENEMY_Lordaeron步兵|r
>>|cRXP_WARN_施法|r|T136190:0|t[消耗小黄人]（4）|cRXP_WARN_to恢复生命值和魔力|r
.complete 13395,1 << Alliance 
.complete 13236,1 << Horde 
.mob Lordaeron Footsoldier
step
.goto IcecrownGlacier,64.52,43.99
>>|cRXP_WARN_退出|r|cRXP_FRIENDLY_the Prodigal Leader|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米斯希尔萨·阿奈尔|r
.turnin 13395 >>交任务: |cRXP_FRIENDLY_召唤大军|r << Alliance
.accept 13396 >>接任务: |cRXP_WARN_徒劳|r << Alliance
.turnin 13236 >>交任务: |cRXP_FRIENDLY_召唤大军|r << Horde
.accept 13348 >>接任务: |cRXP_WARN_徒劳|r << Horde
.target Matthias Lehner
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13295 >>交任务: |cRXP_FRIENDLY_化学常识|r
.turnin 13298 >>交任务: |cRXP_FRIENDLY_污染者科普洛斯|r
.turnin 13315 >>交任务: |cRXP_FRIENDLY_预览|r
.accept 13318 >>接任务: |cRXP_LOOT_从天而“降”|r
.turnin 13396 >>交任务: |cRXP_FRIENDLY_徒劳|r



.target Thassarian
.isQuestComplete 13295
.isQuestComplete 13298
.isQuestComplete 13315
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13295 >>交任务: |cRXP_FRIENDLY_化学常识|r
.turnin 13298 >>交任务: |cRXP_FRIENDLY_污染者科普洛斯|r
.turnin 13396 >>交任务: |cRXP_FRIENDLY_徒劳|r



.target Thassarian
.isQuestComplete 13295
.isQuestComplete 13298
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13295 >>交任务: |cRXP_FRIENDLY_化学常识|r
.turnin 13315 >>交任务: |cRXP_FRIENDLY_预览|r
.accept 13318 >>接任务: |cRXP_LOOT_从天而“降”|r
.turnin 13396 >>交任务: |cRXP_FRIENDLY_徒劳|r



.target Thassarian
.isQuestComplete 13295
.isQuestComplete 13315
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13298 >>交任务: |cRXP_FRIENDLY_污染者科普洛斯|r
.turnin 13315 >>交任务: |cRXP_FRIENDLY_预览|r
.accept 13318 >>接任务: |cRXP_LOOT_从天而“降”|r
.turnin 13396 >>交任务: |cRXP_FRIENDLY_徒劳|r



.target Thassarian
.isQuestComplete 13298
.isQuestComplete 13315
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13298 >>交任务: |cRXP_FRIENDLY_污染者科普洛斯|r
.turnin 13396 >>交任务: |cRXP_FRIENDLY_徒劳|r



.target Thassarian
.isQuestComplete 13298
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13295 >>交任务: |cRXP_FRIENDLY_化学常识|r
.turnin 13396 >>交任务: |cRXP_FRIENDLY_徒劳|r



.target Thassarian
.isQuestComplete 13295
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13315 >>交任务: |cRXP_FRIENDLY_预览|r
.accept 13318 >>接任务: |cRXP_LOOT_从天而“降”|r
.turnin 13396 >>交任务: |cRXP_FRIENDLY_徒劳|r



.target Thassarian
.isQuestComplete 13315
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.accept 13318 >>接任务: |cRXP_LOOT_从天而“降”|r
.turnin 13396 >>交任务: |cRXP_FRIENDLY_徒劳|r



.target Thassarian
.isQuestTurnedIn 13315
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13396 >>交任务: |cRXP_FRIENDLY_徒劳|r



.target Thassarian
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13278 >>交任务: |cRXP_FRIENDLY_污染者科普洛斯|r
.turnin 13279 >>交任务: |cRXP_FRIENDLY_化学常识|r
.turnin 13351 >>交任务: |cRXP_FRIENDLY_预览|r
.accept 13352 >>接任务: |cRXP_LOOT_从天而“降”|r


.turnin 13348 >>交任务: |cRXP_FRIENDLY_徒劳|r

.target Koltira Deathweaver
.isQuestComplete 13278
.isQuestComplete 13279
.isQuestComplete 13351
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13278 >>交任务: |cRXP_FRIENDLY_污染者科普洛斯|r
.turnin 13279 >>交任务: |cRXP_FRIENDLY_化学常识|r


.turnin 13348 >>交任务: |cRXP_FRIENDLY_徒劳|r

.target Koltira Deathweaver
.isQuestComplete 13278
.isQuestComplete 13279
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13279 >>交任务: |cRXP_FRIENDLY_化学常识|r
.turnin 13351 >>交任务: |cRXP_FRIENDLY_预览|r
.accept 13352 >>接任务: |cRXP_LOOT_从天而“降”|r


.turnin 13348 >>交任务: |cRXP_FRIENDLY_徒劳|r

.target Koltira Deathweaver
.isQuestComplete 13279
.isQuestComplete 13351
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13278 >>交任务: |cRXP_FRIENDLY_污染者科普洛斯|r
.turnin 13351 >>交任务: |cRXP_FRIENDLY_预览|r
.accept 13352 >>接任务: |cRXP_LOOT_从天而“降”|r


.turnin 13348 >>交任务: |cRXP_FRIENDLY_徒劳|r

.target Koltira Deathweaver
.isQuestComplete 13278
.isQuestComplete 13351
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13278 >>交任务: |cRXP_FRIENDLY_污染者科普洛斯|r


.turnin 13348 >>交任务: |cRXP_FRIENDLY_徒劳|r

.target Koltira Deathweaver
.isQuestComplete 13278
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13279 >>交任务: |cRXP_FRIENDLY_化学常识|r


.turnin 13348 >>交任务: |cRXP_FRIENDLY_徒劳|r

.target Koltira Deathweaver
.isQuestComplete 13279
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13351 >>交任务: |cRXP_FRIENDLY_预览|r
.accept 13352 >>接任务: |cRXP_LOOT_从天而“降”|r


.turnin 13348 >>交任务: |cRXP_FRIENDLY_徒劳|r

.target Koltira Deathweaver
.isQuestComplete 13351
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.accept 13352 >>接任务: |cRXP_LOOT_从天而“降”|r


.turnin 13348 >>交任务: |cRXP_FRIENDLY_徒劳|r

.target Koltira Deathweaver
.isQuestTurnedIn 13351
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r


.turnin 13348 >>交任务: |cRXP_FRIENDLY_徒劳|r

.target Koltira Deathweaver
step << Horde
#completewith LightWithin
.abandon 13278 >>抛弃被玷污的Coprous
.abandon 13279 >>Abandon Basic Chemistry
.abandon 13351 >>Abandon Sneak Preview
step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回下层甲板上的|cRXP_FRIENDLY_Chief Engineer Copperclaw|r。
.target Chief Engineer Copperclaw
.accept 13379 >>接任务: |cRXP_LOOT_绿色科技|r
step << skip
#completewith next
>>飞到墙上的平台上
>>杀死|cRXP_ENEMY_Bitter启动|r。掠夺他们的|T134337:0|t[|cRXP-Loot_Orbs of Illusion|r]
>>|cRXP_WARN_在战斗之外使用|r|T134337:0|t[|cRXP_LOOT_Orbs of Illusion|r]|cRXP-WARN_on|cRXX_ENEMY_Dark Subjugators |r|r
.collect 44246,3,13318,1,-1 << Alliance 
.collect 44246,3,13352,1,-1 << Horde 
.complete 13318,1 << Alliance 
.complete 13352,1 << Horde 
.mob Bitter Initiate
.mob Dark Subjugator
.use 44246
.isOnQuest 13318 << Alliance
.isOnQuest 13352 << Horde
step << skip
.goto IcecrownGlacier,53.89,46.83
>>杀死大帐篷中的|cRXP_ENEMY_Oversear Faedris |r
.complete 13319,1 << Alliance 
.complete 13354,1 << Horde 
.mob Overseer Faedris
step
.loop 50,Icecrown,52.44,48.09,52.32,47.54,52.68,46.51,52.22,45.67,53.12,45.55,53.75,45.81,53.95,45.49,54.56,45.02,54.81,45.55,55.02,45.83,55.21,46.63,54.46,46.46,54.10,46.68,53.62,46.85,53.27,47.25,52.98,47.43,52.44,48.09
>>杀死|cRXP_ENEMY_Bitter启动|r。掠夺他们的|T134337:0|t[|cRXP-Loot_Orbs of Illusion|r]
>>|cRXP_WARN_在战斗之外使用|r|T134337:0|t[|cRXP_LOOT_Orbs of Illusion|r]|cRXP-WARN_on|cRXX_ENEMY_Dark Subjugators |r|r
.collect 44246,3,13318,1,-1 << Alliance 
.collect 44246,3,13352,1,-1 << Horde 
.complete 13318,1,2 << Alliance 
.complete 13352,1,2 << Horde 
.mob Bitter Initiate
.mob Dark Subjugator
.use 44246
.isOnQuest 13318 << Alliance
.isOnQuest 13352 << Horde
step
.loop 50,Icecrown,52.44,48.09,52.32,47.54,52.68,46.51,52.22,45.67,53.12,45.55,53.75,45.81,53.95,45.49,54.56,45.02,54.81,45.55,55.02,45.83,55.21,46.63,54.46,46.46,54.10,46.68,53.62,46.85,53.27,47.25,52.98,47.43,52.44,48.09
>>杀死|cRXP_ENEMY_Bitter启动|r。掠夺他们的|T134337:0|t[|cRXP-Loot_Orbs of Illusion|r]
.collect 44246,3,13318,1,-1 << Alliance 
.collect 44246,3,13352,1,-1 << Horde 
.cast 5513 >>|cRXP_WARN_在战斗之外使用|r|T134337:0|t[|cRXP_LOOT_Orbs of Illusion|r]|cRXP-WARN_on|cRXX_ENEMY_Dark Subjugators |r|r


.mob Bitter Initiate
.mob Dark Subjugator
.use 44246
.isOnQuest 13318 << Alliance
.isOnQuest 13352 << Horde
step
#completewith DragonsFell
.destroy 44246 >>摧毁: |cRXP_ENEMY_幻象宝珠|r, 它在你的背包中. 不再需要它了
step << skip
>>飞到墙上的平台上
>>|cRXP_WARN_在釜上使用|r|T134722:0|t[分隔烧瓶]|cRXP_WARN_|r
>>|cRXP_WARN_使用|r|T134722:0|t[Partitioned Flask]|cRXP_WARN_dismunts|r
.complete 13320,3 << Alliance 
.complete 13355,3 << Horde 
.goto IcecrownGlacier,49.66,34.37,-1
.complete 13320,2 << Alliance 
.complete 13355,2 << Horde 
.goto IcecrownGlacier,49.07,34.18,-1
.complete 13320,1 << Alliance 
.complete 13355,1 << Horde 
.goto IcecrownGlacier,48.95,33.20,-1
.use 44251
step << skip
.goto IcecrownGlacier,49.40,31.19
>>杀死|cRXP_ENEMY_Oversear Savryn|r
.complete 13319,4 << Alliance 
.complete 13354,4 << Horde 
.mob Overseer Savryn
step << skip
.goto IcecrownGlacier,54.72,32.62
>>杀死|cRXP_ENEMY_Oversear Jhaeqon|r
.complete 13319,2 << Alliance 
.complete 13354,2 << Horde 
.mob Overseer Jhaeqon
step << skip
.goto IcecrownGlacier,53.68,29.20
>>飞上一层到下一个平台
>>杀死|cRXP_ENEMY_Oversear Veraj|r
.complete 13319,3 << Alliance 
.complete 13354,3 << Horde 
.mob Overseer Veraj
step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞到空中的小平台，然后与|cRXP_FRIENDLY_Kibli Killohertz|r交谈
.target Kibli Killohertz
.goto IcecrownGlacier,53.96,42.93
.turnin 13383 >>交任务: |cRXP_FRIENDLY_吉普利·基罗赫斯|r
.accept 13380 >>接任务: |cRXP_LOOT_委以重任|r

step << skip
.goto IcecrownGlacier,53.96,43.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡伦·诺尔|r
.target Karen No
.complete 13380,1 
.complete 13380,2 
.complete 13380,3 
.skipgossip

step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Kibli Killohertz |r
.target Kibli Killohertz
.goto IcecrownGlacier,53.96,42.93
.turnin 13380 >>交任务: |cRXP_FRIENDLY_委以重任|r

step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞到空中的小平台，然后与|cRXP_FRIENDLY_Fring工程师Tezzla|r交谈
.target Fringe Engineer Tezzla
.goto IcecrownGlacier,53.99,36.87
.turnin 13379 >>交任务: |cRXP_FRIENDLY_绿色科技|r
.accept 13373 >>接任务: |cRXP_LOOT_边缘科学的益处|r

step << skip
.goto IcecrownGlacier,54.00,36.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉兹·拉齐维格|r
.target Rizzy Ratchwiggle
.complete 13373,1 
.complete 13373,2 
.complete 13373,3 
.skipgossip

step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_边缘技师塔兹拉|r
.target Fringe Engineer Tezzla
.goto IcecrownGlacier,54.00,36.94
.turnin 13373 >>交任务: |cRXP_FRIENDLY_边缘科学的益处|r

step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13318 >>交任务: |cRXP_FRIENDLY_从天而“降”|r


.accept 13345 >>接任务: |cRXP_LOOT_需要更多情报|r
.target Thassarian
.isQuestComplete 13318
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r


.accept 13345 >>接任务: |cRXP_LOOT_需要更多情报|r
.target Thassarian
.isQuestTurnedIn 13318
step << skip
.goto IcecrownGlacier,65.1,57.2,0
.goto IcecrownGlacier,64.7,52.4,0
.goto IcecrownGlacier,62.1,45.9,0
.goto IcecrownGlacier,57.5,39.1,0
.goto IcecrownGlacier,54.7,35.3,0
.goto IcecrownGlacier,54.7,35.3,200,0
.goto IcecrownGlacier,65.1,57.2,200,0
.goto IcecrownGlacier,54.7,35.3
>>走船中央的楼梯（|cRXP_FRIENDLY_Vindicator Maraad|r后面），然后走第一个楼梯两侧的楼梯进入机舱。与|cRXP_FRIENDLY_首席工程师螺栓扳手|r交谈
.target Vindicator Maraad
.target Chief Engineer Boltwrench
.turnin 13320 >>交任务: |cRXP_FRIENDLY_无法复制|r
.accept 13321 >>接任务: |cRXP_LOOT_重新考验|r
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r

.turnin 13352 >>交任务: |cRXP_FRIENDLY_从天而“降”|r

.accept 13366 >>接任务: |cRXP_LOOT_需要更多情报|r
.target Koltira Deathweaver
.isQuestComplete 13352
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r


.accept 13366 >>接任务: |cRXP_LOOT_需要更多情报|r
.target Koltira Deathweaver
.isQuestTurnedIn 13352
step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回下层甲板上的|cRXP_FRIENDLY_Chief Engineer Copperclaw|r。
.target Chief Engineer Copperclaw
.turnin 13355 >>交任务: |cRXP_FRIENDLY_无法复制|r
.accept 13356 >>接任务: |cRXP_LOOT_重新考验|r
step << skip
#label taintedessence
#sticky
.goto IcecrownGlacier,49.7,34.4,0,0
.use 44307 >>使用稀释邪教补品获得“暗识”Buff。这可以让你从你在该地区杀死的所有类人生物中掠夺受污染的埃塞克斯
.mob Cult Blackguard
.mob Cult Taskmaster
.mob Cult Researcher
.mob Cultist Shard Watcher
.mob Damned Apothecary
.mob Dark Subjugator
.mob Vile Torturer
.mob Void Summoner
.collect 44301,10,13321,1 << Alliance
.collect 44301,10,13356,1 << Horde
step << skip
.goto IcecrownGlacier,54.1,31.4,70,0
.goto IcecrownGlacier,54.7,28.0,70,0
.goto IcecrownGlacier,57.0,28.8,70,0
.goto IcecrownGlacier,54.1,31.4
.use 44433 >>杀死5名|cRXP_ENEMY_奴役的小黄人|r（潜行者），然后|cRXP_WARN_在他们的尸体上使用你的吸管棒获得暗物质|r
.mob Enslaved Minion
.collect 44434,5,13342,1 << Alliance 
step << skip
.goto IcecrownGlacier,53.8,33.6
>>点击召唤石
.complete 13342,1 << Alliance 
.complete 13358,1 << Horde 
step
#completewith next
.goto Icecrown,52,01,32.44,40 >>Enter Aldur'thar
step
.loop 45,Icecrown,52.60,30.93,53.28,30.82,53.27,30.22,53.26,29.56,52.56,29.39,50.95,28.98,50.55,29.40,50.94,30.29,52.60,30.93
>>杀死|cRXP_ENEMY_Cult研究人员|r。掠夺他们以获得该死的研究页面的|cRXX_Loot_Cult|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Cult研究人员|r cast|r|T136048:0|t[灵魂之泣]|cRXP-WARN_，造成2000点阴影伤害并将你击退|r
.collect 44459,1,13345,1 << Alliance 
.collect 44460,1,13345,1 << Alliance 
.collect 44461,1,13345,1 << Alliance 
.collect 44459,1,13366,1 << Horde 
.collect 44460,1,13366,1 << Horde 
.collect 44461,1,13366,1 << Horde 
.mob Cult Researcher
.isOnQuest 13345 << Alliance
.isOnQuest 13366 << Horde
step
.loop 45,Icecrown,52.60,30.93,53.28,30.82,53.27,30.22,53.26,29.56,52.56,29.39,50.95,28.98,50.55,29.40,50.94,30.29,52.60,30.93
>>使用|T134332:0|t[|cRXP_OOT_Cult of the Damned Research-Page 1|r]将所有|T134332_0|t[| cRXP_LOOT_Cult of the Damened Research Pages|r]组合到|cRXT_LOOT_Cult of the Damned Thesis |r
.complete 13345,1 << Alliance 
.complete 13366,1 << Horde 
.use 44459
.isOnQuest 13345 << Alliance
.isOnQuest 13366 << Horde
step << skip
#requires taintedessence
.goto IcecrownGlacier,49.7,34.4
.use 44301
.use 44304 >>右键单击受污染的Essences，将其转化为书写弥撒。将其扔进大锅中
.complete 13321,1 << Alliance
.complete 13356,1 << Horde
step
#completewith next
.hs >>红心银约亭 << Alliance
.hs >>向阳光公园致敬 << Horde
.zoneskip Icecrown
step << skip
#requires Thesis
#completewith next
.hs >>暗影之炉

step
#label DragonsFell
.goto Icecrown,71.55,37.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米斯希尔萨·阿奈尔|r
.accept 13398 >>接任务: |cRXP_WARN_巨龙的墓地|r << Alliance
.accept 13359 >>接任务: |cRXP_WARN_巨龙的墓地|r << Horde
.target Matthias Lehner
step << skip
>>杀死你东北方向的|cRXP_ENEMY_Wyrm Reanimators|r，然后杀死该地区的其他暴徒
>>杀死|cRXP_ENEMY_Frostfowl Whelps|r。掠夺它们的|cRXX_Loot_Help骨尘|r
.complete 13397,1 << Alliance 
.complete 13349,1 << Horde 
.goto IcecrownGlacier,72.3,36.7
.complete 13397,2 << Alliance 
.complete 13349,2 << Horde 
.complete 13397,3 << Alliance 
.complete 13349,3 << Horde 
.complete 13398,1 << Alliance 
.complete 13359,1 << Horde 
.goto IcecrownGlacier,71.2,36.1,70,0
.goto IcecrownGlacier,67.9,36.2,70,0
.goto IcecrownGlacier,67.9,41.1,70,0
.goto IcecrownGlacier,72.4,40.3,70,0
.goto IcecrownGlacier,71.2,36.1,70,0
.goto IcecrownGlacier,67.9,36.2,70,0
.goto IcecrownGlacier,67.9,41.1,70,0
.goto IcecrownGlacier,72.4,40.3
.mob Wyrm Reanimator
.mob Frostbrood Whelp
.mob Cultist Corrupter
.mob Vrykul Necrolord

step
.loop 55,Icecrown,71.19,37.92,72.10,38.72,71.57,39.25,71.14,39.63,71.10,40.52,70.64,40.01,70.18,40.31,69.95,40.76,68.82,40.93,68.45,40.89,68.19,39.57,67.77,39.16,67.41,38.17,66.40,36.36,67.93,37.63,67.72,35.87,68.08,35.59,68.94,37.01,69.93,36.33,70.57,35.93,70.73,37.10,71.19,37.92
>>杀死|cRXP_ENEMY_Frostfowl Whelps|r。掠夺它们的|cRXX_Loot_Help骨尘|r
.complete 13398,1 << Alliance 
.complete 13359,1 << Horde 
.mob Frostbrood Whelp
step
.goto Icecrown,71.55,37.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米斯希尔萨·阿奈尔|r
.turnin 13398 >>交任务: |cRXP_FRIENDLY_巨龙的墓地|r << Alliance
.timer 28,Where Dragons Fell RP << Alliance
.accept 13399 >>接任务: |cRXP_WARN_寻求答案|r << Alliance
.turnin 13359 >>交任务: |cRXP_FRIENDLY_巨龙的墓地|r << Horde
.timer 28,Where Dragons Fell RP << Horde
.accept 13360 >>接任务: |cRXP_WARN_寻求答案|r << Horde
.target Matthias Lehner
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r


.turnin 13345 >>交任务: |cRXP_FRIENDLY_需要更多情报|r
.accept 13346 >>接任务: |cRXP_LOOT_片刻不得安宁|r
.accept 13332 >>接任务: |cRXP_LOOT_构建路障|r
.target Thassarian
.isQuestComplete 13345
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r


.accept 13346 >>接任务: |cRXP_LOOT_片刻不得安宁|r
.accept 13332 >>接任务: |cRXP_LOOT_构建路障|r
.target Thassarian
.isQuestTurnedIn 13345
step << skip
.goto IcecrownGlacier,65.1,57.2,0
.goto IcecrownGlacier,64.7,52.4,0
.goto IcecrownGlacier,62.1,45.9,0
.goto IcecrownGlacier,57.5,39.1,0
.goto IcecrownGlacier,54.7,35.3,0
.goto IcecrownGlacier,54.7,35.3,200,0
.goto IcecrownGlacier,65.1,57.2,200,0
.goto IcecrownGlacier,54.7,35.3
>>走船中央的楼梯（|cRXP_FRIENDLY_Vindicator Maraad|r后面），然后走第一个楼梯两侧的楼梯进入机舱。与|cRXP_FRIENDLY_首席工程师螺栓扳手|r交谈
.target Chief Engineer Boltwrench
.turnin 13321 >>交任务: |cRXP_FRIENDLY_重新考验|r
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r


.turnin 13366 >>交任务: |cRXP_FRIENDLY_需要更多情报|r
.accept 13367 >>接任务: |cRXP_LOOT_片刻不得安宁|r
.accept 13306 >>接任务: |cRXP_LOOT_构建路障|r
.target Koltira Deathweaver
.isQuestComplete 13366
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r


.accept 13367 >>接任务: |cRXP_LOOT_片刻不得安宁|r
.accept 13306 >>接任务: |cRXP_LOOT_构建路障|r
.target Koltira Deathweaver
.isQuestTurnedIn 13366
step << skip
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_FRIENDLY_Copperclaw|r|cRXP_WARN_i在船底层的后屋|r
.turnin 13356 >>交任务: |cRXP_FRIENDLY_重新考验|r
.target Chief Engineer Copperclaw

step
#completewith Alumeth
.goto IcecrownGlacier,52,01,32.44,50 >>Enter Aldur'thar
.isOnQuest 13346 << Alliance
.isOnQuest 13367 << Horde

step
#label Alumeth1
#completewith Alumeth
.goto IcecrownGlacier,50.49,30.00
>>将|cRXP_Loot_Alumeeth|r头骨箱洗劫一空
.collect 44476,1,13346,1 << Alliance 
.collect 44476,1,13367,1 << Horde 
.isOnQuest 13346 << Alliance
.isOnQuest 13367 << Horde
step
#requires Alumeth1
#label Alumeth2
#completewith Alumeth
.goto IcecrownGlacier,52.82,30.66
>>将|cRXP_Loot_Alumeeth的心|r胸部放在地上
.collect 44477,1,13346,1 << Alliance 
.collect 44477,1,13367,1 << Horde 
.isOnQuest 13346 << Alliance
.isOnQuest 13367 << Horde
step
#requires Alumeth2
#label Alumeth3
#completewith Alumeth
.goto IcecrownGlacier,52.83,29.77
>>将|cRXP_Loot_Alumeeth的权杖|r箱洗劫一空
.collect 44478,1,13346,1 << Alliance 
.collect 44478,1,13367,1 << Horde 
.isOnQuest 13346 << Alliance
.isOnQuest 13367 << Horde
step
#requires Alumeth3
#label Alumeth4
#completewith Alumeth
.goto IcecrownGlacier,52.99,28.95
>>将|T132712:0|t[|cRXP_Loot_Alumeth's Robes|r]的箱子洗劫一空
.collect 44479,1,13346,1 << Alliance 
.collect 44479,1,13367,1 << Horde 
.isOnQuest 13346 << Alliance
.isOnQuest 13367 << Horde
step
#requires Alumeth4
#label Alumeth5
#completewith Alumeth
.goto IcecrownGlacier,51.93,28.63
>>使用|T132712:0|t[|cRXP_OOT_Alumeth的长袍|r]创建|T136204:0|t[| cRXP_LOOT_Alumeeth的剩余物|r]
.collect 44480,1,13346,1 << Alliance 
.collect 44480,1,13367,1 << Horde 
.use 44479
.isOnQuest 13346 << Alliance
.isOnQuest 13367 << Horde
step
#requires Alumeth5
#completewith Alumeth
.goto IcecrownGlacier,51.93,28.63
.cast 60831 >>通道|T136204:0|t[|cRXP_LOOT_Alumeeth的剩余物|r]召唤|cRXT_ENEMY_Alumeth上升者|r
.timer 3,No Rest For The Wicked RP
.use 44480
.isOnQuest 13346 << Alliance
.isOnQuest 13367 << Horde
step
#label Alumeth
.goto IcecrownGlacier,51.93,28.89
>>Kill |cRXP_ENEMY_Alumeth the Ascended|r
>>|cRXP_ENEMY_Almeth the Ascended |r|cRXP_WARN_casts|r|T136184:0|t[心灵呐喊]|cRXP_WARN_（3秒恐惧），|r|T136208:0|t[精神闪光]|cRXP_WARN_|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_，以及任务链中未来任务的3|r|T135947:0| t[英雄勋章]|cRX P_|r
>>|cRXP_WARN_如果你死了，你必须创建|r|T136204:0|t[|cRXP_LOOT_Alumeeth的剩余|r]|cRXT_WARN_again|r
.complete 13346,1 << Alliance 
.complete 13367,1 << Horde 
.mob Alumeth the Ascended
.isOnQuest 13346 << Alliance
.isOnQuest 13367 << Horde
step
.loop 60,Icecrown,52.37,41.76,51.57,40.45,52.19,39.43,52.11,37.79,51.61,37.05,50.69,37.28,50.39,38.28,49.90,38.88,49.18,39.30,49.62,40.00,49.02,41.37,49.62,42.72,50.23,43.22,50.61,41.72,52.37,41.76
>>在脉冲|cRXP_PICK_White Runes|r上使用|T132766:0|t[路障施工套件]
.complete 13332,1 << Alliance 
.complete 13306,1 << Horde 
.use 44127
.isQuestComplete 13346 << Alliance
.isQuestComplete 13367 << Horde
step
.goto IcecrownGlacier,49.16,73.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米斯希尔萨·阿奈尔|r
.turnin 13399 >>交任务: |cRXP_FRIENDLY_寻求答案|r << Alliance
.turnin 13360 >>交任务: |cRXP_FRIENDLY_寻求答案|r << Horde
.accept 13400 >>接任务: |cRXP_WARN_猎人与王子|r << Alliance
.accept 13361 >>接任务: |cRXP_WARN_猎人与王子|r << Horde
.target Matthias Lehner
step
#completewith next
.goto IcecrownGlacier,49.17,73.92,-1
.goto IcecrownGlacier,49.69,73.44,-1
.vehicle >>单击地面上的|cRXP_PICK_血染石|r以控制|cRXP_FRIENDLY_Arthas|r
.timer 7,The Hunter and the Prince RP
step
.goto IcecrownGlacier,49.82,73.53,-1
.goto IcecrownGlacier,49.27,74.15,-1
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_伊利丹暴怒|r
>>|cRXP_WARN_右击|cRXP_ENEMY_Illidan Stormrage|r自动攻击他|r
>>|cRXP_WARN_施法|r|T132269:0|t[Parry]（1）|cRXP_WARN_on冷却以恢复法力并防止伤害|r
>>|cRXP_WARN_施法|r|T132350:0|t[致命一击]（2）|cRXP_WARN_on冷却时间造成伤害|r
>>|cRXP_WARN_当你拥有15000+法力时，施法|r|T132219:0|t[Stonp]（3）|cRXP_WARN_into|r|T132346:0|t[湮灭]（4）|cRXP_WARN_on冷却时间造成大量伤害|r
.complete 13400,1 << Alliance 
.complete 13361,1 << Horde 
.mob Illidan Stormrage
step
.goto IcecrownGlacier,49.16,73.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米斯希尔萨·阿奈尔|r
.turnin 13400 >>交任务: |cRXP_FRIENDLY_猎人与王子|r << Alliance
.accept 13401 >>接任务: |cRXP_WARN_知识是可怕的负担|r << Alliance
.turnin 13361 >>交任务: |cRXP_FRIENDLY_猎人与王子|r << Horde
.accept 13362 >>接任务: |cRXP_WARN_知识是可怕的负担|r << Horde
.target Matthias Lehner
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r

.turnin 13332 >>交任务: |cRXP_FRIENDLY_构建路障|r
.turnin 13346 >>交任务: |cRXP_FRIENDLY_片刻不得安宁|r
.turnin 13401 >>交任务: |cRXP_FRIENDLY_知识是可怕的负担|r
.accept 13337 >>接任务: |cRXP_LOOT_铁墙壁垒|r
.accept 13334 >>接任务: |cRXP_LOOT_溅血的旗帜|r
.accept 13402 >>接任务: |cRXP_WARN_提里奥的帮助|r
.target Thassarian
.isQuestComplete 13332
.isQuestComplete 13346
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r

.turnin 13332 >>交任务: |cRXP_FRIENDLY_构建路障|r
.turnin 13401 >>交任务: |cRXP_FRIENDLY_知识是可怕的负担|r
.accept 13402 >>接任务: |cRXP_WARN_提里奥的帮助|r
.target Thassarian
.isQuestComplete 13332
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r

.turnin 13346 >>交任务: |cRXP_FRIENDLY_片刻不得安宁|r
.turnin 13401 >>交任务: |cRXP_FRIENDLY_知识是可怕的负担|r
.accept 13402 >>接任务: |cRXP_WARN_提里奥的帮助|r
.target Thassarian
.isQuestComplete 13346
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r

.turnin 13401 >>交任务: |cRXP_FRIENDLY_知识是可怕的负担|r
.accept 13337 >>接任务: |cRXP_LOOT_铁墙壁垒|r
.accept 13334 >>接任务: |cRXP_LOOT_溅血的旗帜|r
.accept 13402 >>接任务: |cRXP_WARN_提里奥的帮助|r
.target Thassarian
.isQuestTurnedIn 13332
.isQuestTurnedIn 13346
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r

.turnin 13401 >>交任务: |cRXP_FRIENDLY_知识是可怕的负担|r
.accept 13402 >>接任务: |cRXP_WARN_提里奥的帮助|r
.target Thassarian
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13306 >>交任务: |cRXP_FRIENDLY_构建路障|r
.turnin 13367 >>交任务: |cRXP_FRIENDLY_片刻不得安宁|r
.accept 13307 >>接任务: |cRXP_LOOT_溅血的旗帜|r
.accept 13312 >>接任务: |cRXP_LOOT_铁墙壁垒|r
.turnin 13362 >>交任务: |cRXP_FRIENDLY_知识是可怕的负担|r
.accept 13363 >>接任务: |cRXP_WARN_银色北伐军的协助|r
.target Koltira Deathweaver
.isQuestComplete 13306
.isQuestComplete 13367
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13306 >>交任务: |cRXP_FRIENDLY_构建路障|r

.turnin 13362 >>交任务: |cRXP_FRIENDLY_知识是可怕的负担|r
.accept 13363 >>接任务: |cRXP_WARN_银色北伐军的协助|r
.target Koltira Deathweaver
.isQuestComplete 13306

step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13362 >>交任务: |cRXP_FRIENDLY_知识是可怕的负担|r
.accept 13363 >>接任务: |cRXP_WARN_银色北伐军的协助|r
.turnin 13367 >>交任务: |cRXP_FRIENDLY_片刻不得安宁|r
.target Koltira Deathweaver
.isQuestComplete 13367
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.accept 13307 >>接任务: |cRXP_LOOT_溅血的旗帜|r
.accept 13312 >>接任务: |cRXP_LOOT_铁墙壁垒|r
.turnin 13362 >>交任务: |cRXP_FRIENDLY_知识是可怕的负担|r
.accept 13363 >>接任务: |cRXP_WARN_银色北伐军的协助|r
.target Koltira Deathweaver
.isQuestTurnedIn 13306
.isQuestTurnedIn 13367
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13362 >>交任务: |cRXP_FRIENDLY_知识是可怕的负担|r
.accept 13363 >>接任务: |cRXP_WARN_银色北伐军的协助|r
.target Koltira Deathweaver
step << Horde
#completewith LightWithin
.abandon 13367 >>恶人不息
step
#completewith next
.goto IcecrownGlacier,45.46,46.55
>>|cRXP_WARN_Fly up to the balcony|r
.cast 60036 >>使用|cRXP_PICK_Grimkor的Orb|r上的|T237427:0|t[变形符文]召唤|cRXP_ENEMY_Grimkor the Wicked|r
.timer 15,The Ironwall Rampart RP
.use 44186
step
.goto IcecrownGlacier,45.34,45.95
>>|cRXP_WARN_等待RP|r
>>杀死|cRXP_ENEMY_Grimkor the Wicked|r
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。您将错过本任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_和任务链中未来任务的2|r|T135947:0| t[英雄勋章]|cRXP_WARN__，每个任务必须杀死5名精英|r
.complete 13337,1 << Alliance 
.complete 13312,1 << Horde 
.mob Grimkor the Wicked
.use 44186
.isOnQuest 13337 << Alliance
.isOnQuest 13312 << Horde
step
.loop 60,Icecrown,46.82,48.66,46.58,49.32,47.12,51.54,47.48,53.23,46.93,53.35,46.84,55.64,45.57,55.40,44.12,54.71,43.67,56.60,42.10,57.17,39.50,58.21,39.83,56.77,40.19,55.80,39.38,54.19,39.75,51.94,40.77,51.12,41.35,49.48,42.35,48.16,43.25,50.11,44.96,48.99,46.82,48.66
>>杀死|cRXP_ENEMY_Scourge旗手|r和|cRXX_ENEMY_Converted Heroes|r
.complete 13334,1 << Alliance 
.complete 13334,2 << Alliance 
.complete 13307,1 << Horde 
.complete 13307,2 << Horde 
.mob Scourge Banner-Bearer
.mob Converted Hero
.isQuestComplete 13337 << Alliance
.isQuestComplete 13312 << Horde
step
.loop 70,Icecrown,52.37,41.76,51.57,40.45,52.19,39.43,52.11,37.79,51.61,37.05,50.69,37.28,50.39,38.28,49.90,38.88,49.18,39.30,49.62,40.00,49.02,41.37,49.62,42.72,50.23,43.22,50.61,41.72,52.37,41.76
>>杀死|cRXP_ENEMY_Scourge转换器|r
.complete 13334,3 << Alliance 
.complete 13307,3 << Horde 
.mob Scourge Converter
.isQuestComplete 13337 << Alliance
.isQuestComplete 13312 << Horde
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13334 >>交任务: |cRXP_FRIENDLY_溅血的旗帜|r
.turnin 13337 >>交任务: |cRXP_FRIENDLY_铁墙壁垒|r
.accept 13335 >>接任务: |cRXP_LOOT_在恐惧之门前|r
.target Thassarian
.isQuestComplete 13337
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13334 >>交任务: |cRXP_FRIENDLY_溅血的旗帜|r
.accept 13335 >>接任务: |cRXP_LOOT_在恐惧之门前|r
.target Thassarian
.isQuestTurnedIn 13337
step << Alliance
#completewith LightWithin
.abandon 13334 >>丢弃血溅的横幅
step << Alliance
#completewith LightWithin
.abandon 13337 >>放弃铁壁坡道
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13307 >>交任务: |cRXP_FRIENDLY_溅血的旗帜|r
.turnin 13312 >>交任务: |cRXP_FRIENDLY_铁墙壁垒|r
.accept 13329 >>接任务: |cRXP_LOOT_在恐惧之门前|r
.target Koltira Deathweaver
.isQuestComplete 13312
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13307 >>交任务: |cRXP_FRIENDLY_溅血的旗帜|r
.accept 13329 >>接任务: |cRXP_LOOT_在恐惧之门前|r
.target Koltira Deathweaver
.isQuestTurnedIn 13312
step << Horde
#completewith LightWithin
.abandon 13307 >>丢弃血溅的横幅
step << Horde
#completewith LightWithin
.abandon 13312 >>放弃铁壁坡道
step
.loop 60,Icecrown,48.27,61.80,47.12,61.79,46.57,60.94,45.61,61.31,44.01,62.09,,45.02,63.59,43.08,64.97,45.02,63.59,47.12,61.79
>>杀死|cRXP_ENEMY_Skeletal Reavers|r。在他们的尸体上使用|T134742:0|t[挥发性酸]
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他们找一个小组。如果你找不到一个小组或独自一人，请跳过这一步。你将错过2|r|T135947:0|t[英雄的象征]|cRXP_WARN_来自任务链中的未来任务，每个任务你必须杀死5名精英|r
.complete 13335,1 << Alliance 
.complete 13329,1 << Horde 
.mob Skeletal Reaver
.use 44653
.isOnQuest 13335 << Alliance
.isOnQuest 13329 << Horde
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13335 >>交任务: |cRXP_FRIENDLY_在恐惧之门前|r
.accept 13338 >>接任务: |cRXP_LOOT_科雷萨的守卫者|r
.accept 13339 >>接任务: |cRXP_LOOT_击破碎片|r
.target Thassarian
.isQuestComplete 13335
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.accept 13338 >>接任务: |cRXP_LOOT_科雷萨的守卫者|r
.accept 13339 >>接任务: |cRXP_LOOT_击破碎片|r
.target Thassarian
.isQuestTurnedIn 13335
step << Alliance
#completewith LightWithin
.abandon 13335 >>在恐怖之门前放弃
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13329 >>交任务: |cRXP_FRIENDLY_在恐惧之门前|r
.accept 13316 >>接任务: |cRXP_LOOT_科雷萨的守卫者|r
.accept 13328 >>接任务: |cRXP_LOOT_击破碎片|r
.target Koltira Deathweaver
.isQuestComplete 13329
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.accept 13316 >>接任务: |cRXP_LOOT_科雷萨的守卫者|r
.accept 13328 >>接任务: |cRXP_LOOT_击破碎片|r
.target Koltira Deathweaver
.isQuestTurnedIn 13329
step << Horde
#completewith LightWithin
.abandon 13329 >>在恐怖之门前放弃
step
#label LightWithin
.goto IcecrownGlacier,79.79,71.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 13083 >>交任务: |cRXP_FRIENDLY_黑暗中的光明|r
.turnin 13402 >>交任务: |cRXP_FRIENDLY_提里奥的帮助|r << Alliance
.accept 13403 >>接任务: |cRXP_WARN_提里奥的尝试|r << Alliance
.turnin 13363 >>交任务: |cRXP_FRIENDLY_银色北伐军的协助|r << Horde
.accept 13364 >>接任务: |cRXP_WARN_提里奥的尝试|r << Horde
.target Highlord Tirion Fordring
step
#completewith Suffering
.goto IcecrownGlacier,53.93,67.13,50,0
.goto IcecrownGlacier,52.04,67.36,50,0
.goto IcecrownGlacier,51.13,67.27,50,0
.goto IcecrownGlacier,50.03,66.58,50,0 
.goto IcecrownGlacier,50.37,64.91,50,0
.goto IcecrownGlacier,50.83,63.88,50,0
.goto IcecrownGlacier,51.66,62.59,50,0
.goto IcecrownGlacier,50.03,66.58,50,0
>>杀死|cRXP_ENEMY_恐怖的预兆|r和|cRXX_ENEMY_Corp'Thear Guardians|r
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他们找一个小组。如果你找不到一个小组或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_|r
.complete 13338,1 << Alliance 
.complete 13338,2 << Alliance 
.complete 13316,1 << Horde 
.complete 13316,2 << Horde 
.mob Harbinger of Horror
.mob Corp'rethar Guardian
.isOnQuest 13338 << Alliance
.isOnQuest 13316 << Horde
step
.goto IcecrownGlacier,49.80,66.73
>>飞上科珀斯塔一楼
>>Loot the |cRXP_LOOT_Shard of Despair|r
.complete 13339,2 << Alliance 
.complete 13328,2 << Horde 
.isOnQuest 13339 << Alliance
.isOnQuest 13328 << Horde
step
#label Suffering
.goto IcecrownGlacier,45.84,69.51
>>掠夺|cRXP_Loot_痛苦的碎片|r
.complete 13339,3 << Alliance 
.complete 13328,3 << Horde 
.isOnQuest 13339 << Alliance
.isOnQuest 13328 << Horde
step
#completewith next
.goto IcecrownGlacier,45.16,71.23,50,0
.goto IcecrownGlacier,44.70,72.21,50,0
.goto IcecrownGlacier,44.28,72.87,50,0
.goto IcecrownGlacier,45.84,69.51,50,0 
.goto IcecrownGlacier,44.50,69.17,50,0
.goto IcecrownGlacier,43.53,69.07,50,0
.goto IcecrownGlacier,42.65,69.19,50,0
.goto IcecrownGlacier,39.22,69.43,50,0
>>杀死|cRXP_ENEMY_恐怖的预兆|r和|cRXX_ENEMY_Corp'Thear Guardians|r
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他们找一个小组。如果你找不到一个小组或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_|r
.complete 13338,1 << Alliance 
.complete 13338,2 << Alliance 
.complete 13316,1 << Horde 
.complete 13316,2 << Horde 
.mob Harbinger of Horror
.mob Corp'rethar Guardian
.isOnQuest 13338 << Alliance
.isOnQuest 13316 << Horde
step
.goto IcecrownGlacier,47.82,68.12
>>飞上科珀斯塔二楼
>>掠夺|cRXP_Loot_恐怖碎片|r
.complete 13339,1 << Alliance 
.complete 13328,1 << Horde 
.isOnQuest 13339 << Alliance
.isOnQuest 13328 << Horde
step
.loop 60,Icecrown,49.80,66.73,45.84,69.51,44.28,72.87,44.70,72.21,45.16,71.23,44.70,72.21,44.28,72.87,45.84,69.51,44.50,69.17,43.53,69.07,42.65,69.19,39.22,69.43,42.65,69.19,43.53,69.07,44.50,69.17,45.84,69.51,49.80,66.73,50.03,66.58,50.37,64.91,50.83,63.88,51.66,62.59,50.83,63.88,50.37,64.91,50.03,66.58,51.13,67.27,52.04,67.36,53.93,67.13
>>杀死Corp'Thear一楼和二楼的|cRXP_ENEMY_Horror Harbingers|r和|cRXP_ENEMY_Corp'thear Guardians|r
>>|cRXP_WARN_这个任务可能很困难。如果需要，为他们找一个小组。如果你找不到一个小组或独自一人，请跳过这一步。您将错过本次任务的1|r|T135947:0|t[英雄徽章]|cRXP_WARN_|r
.complete 13338,1 << Alliance 
.complete 13338,2 << Alliance 
.complete 13316,1 << Horde 
.complete 13316,2 << Horde 
.isOnQuest 13338 << Alliance
.isOnQuest 13316 << Horde
step
.goto Icecrown,45.17,78.71
>>杀死|cRXP_ENEMY_Cultist Acolytes|r。为|T133131:0|t[|cRXP-Loot_Cultist Acolyte's Hood|r]掠夺他们
.collect 44784,1,13403,1 << Alliance 
.collect 44784,1,13364,1 << Horde 
.mob Cultist Acolyte
step
#completewith next
.cast 61131 >>使用|T133131:0|t[|cRXP_LOOT_Cultist Acolyte's Hood|r]
.use 44784
step
.goto IcecrownGlacier,44.41,76.21
.gossipoption 94489 >>|cRXP_WARN_Talk to |cRXP_FRIENDLY_Tirion|r to begin a long RP|r
.timer 361,Tirion's Gambit RP
.target Highlord Tirion Fordring
.isOnQuest 13403 << Alliance
.isOnQuest 13364 << Horde
.use 44784
step
.goto IcecrownGlacier,44.73,77.45,35,0
.goto IcecrownGlacier,42.84,78.77
>>|cRXP_WARN_跟随|cRXP_FRIENDLY_Tirion|r进入大教堂|r
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_当|cRXP_ENEMY_巫妖王|r施放|r|T237567:0|t[巫妖王之怒]|cRXP-WARN_时，请确保你在计时器后没有被激怒，这会杀死你|r
.complete 13403,1 << Alliance 
.complete 13364,1 << Horde 
.target Highlord Tirion Fordring
.use 44784
step
#completewith next
.goto IcecrownGlacier,42.84,78.77
.goto IcecrownGlacier,80.2,70.5,100 >>|cRXP_WARN_乘坐|cRXP_PICK_Escape Portal |r前往十字军顶峰。在|cRXP_ENEMY_巫妖王|r施放|r|T237567:0|t[巫妖王之怒]|cRXP_WARN_否则你会死|r
step
.goto IcecrownGlacier,79.79,71.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 13403 >>交任务: |cRXP_FRIENDLY_提里奥的尝试|r << Alliance
.turnin 13364 >>交任务: |cRXP_FRIENDLY_提里奥的尝试|r << Horde
.target Highlord Tirion Fordring
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13338 >>交任务: |cRXP_FRIENDLY_科雷萨的守卫者|r
.turnin 13339 >>交任务: |cRXP_FRIENDLY_击破碎片|r
.target Thassarian
.isQuestComplete 13338
step << Alliance
.loop 40,IcecrownGlacier,63.10,57.22,63.96,56.49,64.32,55.27,64.10,54.05,63.68,52.62,63.24,51.38,62.78,50.37,62.22,49.16,61.75,48.06,61.30,46.97,60.77,45.69,60.20,44.34,59.65,43.00,59.13,41.78,58.65,40.63,58.07,39.06,57.58,37.89,57.04,37.30,56.14,37.70,55.47,38.76,55.48,39.67,55.81,41.09,56.24,42.45,56.78,43.76,57.29,44.88,57.92,45.95,58.49,47.06,59.08,48.22,59.60,49.41,60.10,50.66,60.57,51.93,61.00,53.22,61.46,54.48,61.95,55.87,62.53,57.08,63.10,57.22
>>|cRXP_WARN_飞到空中的联盟飞船“破天者”|r
>>|cRXP_WARN_往船顶层的左后角走|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 13339 >>交任务: |cRXP_FRIENDLY_击破碎片|r
.target Thassarian
.isQuestComplete 13339
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13316 >>交任务: |cRXP_FRIENDLY_科雷萨的守卫者|r
.turnin 13328 >>交任务: |cRXP_FRIENDLY_击破碎片|r
.target Koltira Deathweaver
.isQuestComplete 13316
step << Horde
.loop 40,IcecrownGlacier,65.55,48.81,66.12,49.95,66.67,51.04,67.48,52.19,68.29,52.51,69.20,52.11,69.62,50.99,69.74,50.05,69.79,48.80,69.80,47.29,69.79,45.49,69.78,43.97,69.75,42.64,69.70,41.17,69.65,39.60,69.58,38.00,69.52,36.42,69.47,34.96,69.43,33.66,69.41,32.10,69.45,30.33,69.48,28.90,69.36,27.80,69.08,27.09,68.20,26.52,67.22,26.57,66.40,27.05,65.57,27.85,64.72,28.65,63.91,29.31,63.11,29.97,62.28,30.69,61.45,31.27,60.70,31.95,60.27,32.98,60.10,34.36,60.24,35.79,60.66,36.94,61.22,38.17,61.75,39.40,62.30,40.57,62.86,41.77,63.27,42.72,63.75,43.97,64.22,45.22,64.65,46.36,65.00,47.42,65.46,48.62,65.55,48.81
>>|cRXP_WARN_飞到奥格里姆之锤，部落飞船在空中飞行|r
>>|cRXP_WARN_进入船顶层的后屋|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
.turnin 13328 >>交任务: |cRXP_FRIENDLY_击破碎片|r
.target Koltira Deathweaver
.isQuestComplete 13328
step << Alliance
.abandon 13338 >>放弃尸体的守护者
step << Horde
.abandon 13316 >>放弃尸体的守护者
step
+祝贺您完成了|T135947:0|t[英雄的象征]指南！
]])
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 30-32 希尔斯布莱德丘陵/Arathi JJ
#version 25
#group RestedXP 部落 30-45
#next 32-32千针II JJ
#xprate 1.48-1.68
step
#completewith next
.goto Orgrimmar,52.26,88.65,30,0
.goto Orgrimmar,49.42,90.90,30,0
.goto Orgrimmar,49.74,94.78,30,0
.goto Durotar,50.59,13.28
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Undercity
.zoneskip Tirisfal Glades
step
#completewith Gromgol
.goto Durotar,50.59,13.28,12,0
.goto Durotar,50.80,13.10,6,0
.goto Durotar,50.84,13.26,6,0
.goto Durotar,50.80,13.10,6,0
.goto Durotar,50.84,13.26,6,0
.goto Durotar,50.80,13.10,6,0
.goto Durotar,50.84,13.26,6,0
.goto Durotar,50.47,12.40,-1
.goto Durotar,58.16,8.52,-1
>>上齐柏林塔
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Undercity
.zoneskip Tirisfal Glades
step
#completewith next
.goto Tirisfal Glades,61.06,58.86,12,0
.goto Tirisfal Glades,61.51,59.01,10,0
.goto Tirisfal Glades,61.27,59.22,8,0
.goto Tirisfal Glades,61.13,58.84,8,0
.goto Tirisfal Glades,61.38,58.71,8,0
.goto Tirisfal Glades,61.34,59.17,8,0
.goto Tirisfal Glades,61.17,58.90,8,0
.goto Tirisfal Glades,62.07,59.14,-1
.goto Tirisfal Glades,77.82,66.72,-1
>>上齐柏林塔
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Tirisfal Glades,1
step
#label Gromgol
.goto Stranglethorn Vale,32.54,29.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fp Grom'gol >>获取Grom'gol大本营飞行路线
.target Thysta
step << Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.itemcount 17031,1
.zoneskip Undercity
.zoneskip Tirisfal Glades
step
.goto Stranglethorn Vale,31.34,29.57,10,0
.goto Stranglethorn Vale,31.56,29.59,6,0
.goto Stranglethorn Vale,31.52,29.71,6,0
.goto Stranglethorn Vale,31.56,29.59,6,0
.goto Stranglethorn Vale,31.52,29.71,6,0
.goto Stranglethorn Vale,31.56,29.59,6,0
.goto Stranglethorn Vale,31.52,29.71,6,0
.goto Stranglethorn Vale,40.98,4.73,-1
>>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Undercity
step
.goto Undercity,63.85,49.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉纳维·卡隆|r
.accept 1164 >>接任务: |cRXP_LOOT_科娜塔一家|r
.target Genavie Callow
step
.goto Undercity,62.15,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤奈斯·伯奇|r
.train 2550 >>火车|T133971:0|t[烹饪]
.target Eunice Burch
step << Warlock
.goto Undercity,75.90,37.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约拉·安尼森|r
.turnin 1801 >>交任务: |cRXP_FRIENDLY_阴谋之书|r
.accept 1803 >>接任务: |cRXP_LOOT_阴谋之书|r
.target Jorah Annison
step << Hunter tbc
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉奥芬·哈特威尔|r, |cRXP_FRIENDLY_本尼亚·芬奈尔|r
>>|cRXP_BUY_从|cRXP_FRIENDLY_Geoffrey|r购买|r|T135576:0|t[Bullova]|cRXP-Buy_|r
>>|cRXP_BUY_购买|r|T134402:0|t[Heavy Quiver]|cRXP_Buy_from|cRXP-FRIENDLY_Benijah|r|r
.collect 2523,1,1164,1 
.goto Undercity,58.68,33.08,-1
.collect 7371,1,1164,1 
.goto Undercity,58.82,32.81,-1
.target Geoffrey Hartwell
.target Benijah Fenner
.isOnQuest 1164
step << Hunter wotlk
.goto Undercity,58.82,32.81,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_本尼亚·芬奈尔|r
>>|cRXP_BUY_从他那里买一个|r|T134402:0|t[Heavy Quiver]|cRXP_Buy_|r
.collect 7371,1,1164,1 
step << Rogue
.goto Undercity,58.68,33.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉奥芬·哈特威尔|r
>>|cRXP_BUY_从他那里买一个|r|T135275:0|t[大刀]|cRXP_Buy_|r
.collect 2520,1,1164,1 
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step
#completewith next
.goto Undercity,63.25,48.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly Tarren Mill >>飞往塔伦磨坊 << !Shaman
.fly The Sepulcher >>飞到坟墓 << Shaman
.target Michael Garrett
step << Shaman
#completewith next
.goto Silverpine Forest,42.1,40.5,10 >>跳到树这边来

step << Shaman
.goto Silverpine Forest,41.6,41.8,15,0
.goto Silverpine Forest,40.3,42.1,15,0
.goto Silverpine Forest,38.9,43.3,20 >>跑下山
.isOnQuest 63
step << Shaman
.use 972 >>喝下水皂甙，然后杀死水元素。抢走它的护腕
.goto Silverpine Forest,38.8,44.3
.complete 63,1 
.use 6637
step << Shaman
.goto Silverpine Forest,38.3,44.6
.turnin 63 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Tiev Mordune
>>对话: |cRXP_FRIENDLY_提夫·摩杜恩|r
.accept 100 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman
.goto Silverpine Forest,38.8,44.6
>>对话: |cRXP_FRIENDLY_水之魂|r
.turnin 100 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Minor Manifestation of Water
.accept 96 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman
#completewith next
.goto Silverpine Forest,45.62,42.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Karos Razok
step
.goto Hillsbrad Foothills,61.55,20.63,8,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r, |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r, |cRXP_FRIENDLY_克鲁斯克|r, Humbert, |cRXP_FRIENDLY_学徒塞万德|r
.accept 556 >>接任务: |cRXP_LOOT_石雕|r
.goto Hillsbrad Foothills,61.50,20.93
.accept 544 >>接任务: |cRXP_LOOT_入室偷窃|r
.goto Hillsbrad Foothills,61.60,20.85
.accept 533 >>接任务: |cRXP_LOOT_秘密潜入|r
.goto Hillsbrad Foothills,62.95,20.59,8,0
.goto Hillsbrad Foothills,63.24,20.66
.accept 547 >>接任务: |cRXP_LOOT_亨伯特的长剑|r
.goto Hillsbrad Foothills,62.76,20.21
.accept 552 >>接任务: |cRXP_LOOT_赫尔库拉的复仇|r
.goto Hillsbrad Foothills,63.88,19.66
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
.target Krusk
.target Deathguard Humbert
.target Novice Thaivand
step
.goto Hillsbrad Foothills,47.28,31.12,40,0
.goto Hillsbrad Foothills,46.16,33.32,40,0
.goto Hillsbrad Foothills,45.93,31.64,20,0
.goto Hillsbrad Foothills,45.31,29.18,20,0
.goto Hillsbrad Foothills,44.52,27.87,20,0
.goto Hillsbrad Foothills,43.96,27.59,30,0
.goto Hillsbrad Foothills,43.59,29.76,25,0
.goto Hillsbrad Foothills,45.00,27.80,20,0
.goto Hillsbrad Foothills,43.74,27.10,40,0
.goto Hillsbrad Foothills,43.62,25.60,40,0
.goto Hillsbrad Foothills,44.76,25.09,40,0
.goto Hillsbrad Foothills,45.00,27.80,20,0
.goto Hillsbrad Foothills,43.22,30.86,30,0
.goto Hillsbrad Foothills,42.79,33.51,30,0
.goto Hillsbrad Foothills,41.80,32.71,30,0
.goto Hillsbrad Foothills,42.47,30.27,30,0
.goto Hillsbrad Foothills,47.28,31.12,40,0
.goto Hillsbrad Foothills,46.16,33.32,40,0
.goto Hillsbrad Foothills,45.93,31.64,20,0
.goto Hillsbrad Foothills,45.31,29.18,20,0
.goto Hillsbrad Foothills,44.52,27.87,20,0
.goto Hillsbrad Foothills,43.96,27.59,30,0
.goto Hillsbrad Foothills,43.59,29.76,25,0
.goto Hillsbrad Foothills,45.00,27.80,20,0
.goto Hillsbrad Foothills,43.74,27.10,40,0
.goto Hillsbrad Foothills,43.62,25.60,40,0
.goto Hillsbrad Foothills,44.76,25.09
>>杀死洞穴内及周围的|cRXP_ENEMY_Cave Yetis|r和|cRXP_ENEMY_Ferocious Yetis|r。为|cRXP_Loot_Hellular的杆|r掠夺它们
.complete 552,1 
.mob Cave Yeti
.mob Ferocious Yeti
step
.line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
.goto Hillsbrad Foothills,36.54,39.44,40,0
.goto Hillsbrad Foothills,35.36,38.73,40,0
.goto Hillsbrad Foothills,33.98,38.78,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,32.58,38.17,40,0
.goto Hillsbrad Foothills,32.66,36.08,40,0
.goto Hillsbrad Foothills,32.92,35.25,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,32.65,41.12,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,31.27,42.06,40,0
.goto Hillsbrad Foothills,30.53,40.56,40,0
.goto Hillsbrad Foothills,31.27,42.06,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,32.41,43.85,40,0
.goto Hillsbrad Foothills,32.46,44.59,40,0
.goto Hillsbrad Foothills,32.29,45.13,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,36.54,39.44
>>杀死|cRXP_ENEMY_Citizen Wilkes |r
>>|cRXP_WARN_他在镇上的道路上巡逻|r
.complete 567,2 
.unitscan Citizen Wilkes
step
#completewith Burnside
>>杀死|cRXP_ENEMY_Hillsbrad议员|r
.complete 532,2 
.mob Hillsbrad Councilman
step
#completewith next
.goto Hillsbrad Foothills,31.48,41.89,30,0
.goto Hillsbrad Foothills,30.41,42.21,10 >>进入市政厅
step
#label Burnside
.goto Hillsbrad Foothills,30.09,42.42,8,0
.goto Hillsbrad Foothills,29.92,42.83,8,0
>>杀死|cRXP_ENEMY_Clerk Horrace Whitesteed|r和|cRXX_ENEMY_治安官Burnside|r
>>在地面上抢劫|cRXP_Loot_Hillsbrad镇登记处|r
>>单击栏杆上的|cRXP_PICK_Hillsbrad公告|r
.complete 567,1 
.goto Hillsbrad Foothills,29.51,42.41
.complete 532,1 
.goto Hillsbrad Foothills,31.48,41.89
.complete 532,4 
.goto Hillsbrad Foothills,29.51,41.53
.complete 532,3 
.goto Hillsbrad Foothills,29.73,41.76
.mob Clerk Horrace Whitesteed
.mob Magistrate Burnside
step
.loop 40,Hillsbrad Foothills,30.14,42.90,30.18,42.23,30.32,41.42,29.30,40.78,29.70,39.73,31.91,42.34,32.62,46.50,31.91,42.34,30.21,43.55,30.32,41.42
>>杀死|cRXP_ENEMY_Hillsbrad议员|r
.complete 532,2 
.mob Hillsbrad Councilman
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Darthalia, |cRXP_FRIENDLY_学徒塞万德|r
.turnin 532 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 539 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.39,20.28
.turnin 552 >>交任务: |cRXP_FRIENDLY_赫尔库拉的复仇|r
.accept 553 >>接任务: |cRXP_LOOT_赫尔库拉的复仇|r
.goto Hillsbrad Foothills,63.88,19.66
.target High Executor Darthalia
.target Novice Thaivand
step
.goto Hillsbrad Foothills,62.53,19.58,8,0
.goto Hillsbrad Foothills,62.78,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
>>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
>>|cRXP_BUY_从他那里购买|r|T133969:0|t[Wild Hog Shanks]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin
>>|cRXP_BUY_从他那里购买|r|T132799:0|t[甜油桃]|cRXP_Buy_和|r|T133969:0|t[Wild Hog Shanks]|cRX|r << Paladin
.collect 1708,20,553,1 << Priest/Mage/Warlock/Druid/Paladin 
.collect 3771,20,553,1 << !Priest !Mage !Warlock !Druid !Paladin 
.collect 3771,10,553,1 << Paladin 
.target Innkeeper Shay
.money <0.4000 << !Paladin
.money <0.6000 << Paladin/Shaman
.xp <24,1
.xp >35,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
>>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2000,553,1 
.target Kayren Soothallow
.money <0.2850 << BloodElf
.money <0.3000 << Troll/Orc
.xp <25,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
>>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1000,553,1 
.target Kayren Soothallow
.money <0.1425 << BloodElf
.money <0.1500 << Troll/Orc
.xp <25,1
step << Warlock
.goto Hillsbrad Foothills,27.78,72.80
>>将|cRXP_Loot_Moldy Tome|r掠夺到地上
.complete 1803,1 
step
#completewith next
.goto Hillsbrad Foothills,27.42,59.17,30 >>进入矿井内部
step
#completewith Bonds
.goto Hillsbrad Foothills,27.43,58.28,20,0
.goto Hillsbrad Foothills,28.14,55.20,20,0
.goto Hillsbrad Foothills,28.37,52.97,20,0
.goto Hillsbrad Foothills,29.70,54.25,20,0
>>杀死|cRXP_ENEMY_Hillsbrad矿工|r
.complete 539,2 
.mob Hillsbrad Miner
step
#completewith next
>>杀死|cRXP_ENEMY_Miner Hackett|r
>>|cRXP_WARN_他在矿井里有多个产卵点|r
.goto Hillsbrad Foothills,29.71,56.07,20,0
.goto Hillsbrad Foothills,31.08,56.64,20,0
.complete 567,3 
.unitscan Miner Hackett
step
#label Bonds
.goto Hillsbrad Foothills,31.21,56.02
>>杀死矿井中央房间的|cRXP_ENEMY_Foreman Bonds |r
>>|cRXP_WARN_小心|cRXP_ENEMY_Foreman Bonds |r投掷|r|T135963:0|t[正义之锤]|cRXP-WARN_，让你眩晕4秒|r
>>|cRXP_WARN_在30%或更低的生命值时，|cRXP_ENEMY_Foreman Bond|r立即召唤两名|cRXX_ENEMY_Dun Garok士兵|r（30级）来保护他|r
.complete 539,1 
.mob Foreman Bonds
step
>>杀死|cRXP_ENEMY_Miner Hackett|r
>>|cRXP_WARN_他在矿井里有多个产卵点|r
.loop 30,Hillsbrad Foothills,31.14,58.62,31.90,52.66,29.71,56.07,31.08,56.64
.complete 567,3 
.unitscan Miner Hackett
step
.loop 30,Hillsbrad Foothills,31.14,58.62,31.90,52.66,29.71,56.07,31.08,56.64
>>杀死|cRXP_ENEMY_Hillsbrad矿工|r
.complete 539,2 
.mob Hillsbrad Miner
step << wotlk
#completewith next
.goto Hillsbrad Foothills,29.89,52.37,-1
.goto Hillsbrad Foothills,29.44,56.22,-1
.goto Hillsbrad Foothills,32.40,55.38,-1
.goto Hillsbrad Foothills,31.16,56.88,-1
.goto Hillsbrad Foothills,29.62,45.82,30 >>|cRXP_WARN_在矿井中的任何锯片上运行。通过注销并重新登录来执行注销跳过|r
.link https://www.youtube.com/watch?v=sT-LB2dKezY >>|cRXP_WARN_单击此处|r
step
#completewith StoneTokens
>>杀死|cRXP_ENEMY_Dalaran护盾|r和|cRXX_ENEMY_ Dalaran Theurgists|r。掠夺他们的|cRXD_Loot_磨损的石头代币|r
>>|cRXP_WARN_非常小心|cRXP_ENEMY_Dalaran护盾|r，因为当他们受到伤害时有10%的几率|r|T136173:0|t[暴力护盾效果]|cRXP-WARN_，（每次近战攻击造成85点伤害，并将其固定）|r << Warrior/Rogue/Paladin
>>不要太担心|cRXP_ENEMY_Dalaran Theurgists|r's |T136075:0|t[召唤旧灵]，因为他们在1次命中中死亡
.complete 556,1 
.mob Dalaran Shield Guard
.mob Dalaran Theurgist
step
#sticky
#label Dermot
.goto Alterac Mountains,19.91,85.91,-1
>>杀死内部的|cRXP_ENEMY_Dermot|r。掠夺他获得|cRXP_Loot_血石楔|r
.complete 544,1 
.mob Dermot
step
.goto Alterac Mountains,20.40,86.33,-1
>>杀死里面的|cRXP_ENEMY_Alina|r。掠夺她获得|cRXP_Loot_血石碎片|r
.complete 544,3 
.mob Alina
step
#requires Dermot
>>杀死|cRXP_ENEMY_Ricter |r。掠夺他获得|cRXD_Loot_血石大理石|r
.goto Alterac Mountains,20.15,84.31
.complete 544,2 
.mob Ricter
step
#completewith next
.goto Alterac Mountains,18.69,84.43,10,0
.goto Alterac Mountains,18.20,82.90,10,0
.goto Alterac Mountains,17.89,83.86,10,0
.goto Alterac Mountains,17.83,84.11,6 >>进入大楼，然后到二楼
step
#label StoneTokens
.goto Alterac Mountains,17.79,83.14
>>杀死二楼的|cRXP_ENEMY_Kegan Darkmar|r。为|cRXP_Loot_Bloodstone Oval|r抢劫他。抢劫后逃跑
>>|cRXP_WARN_您不需要杀死|cRXP_ENEMY_Warden Belamore |r|r
>>|cRXP_WARN_在建筑物周围作战时避免|cRXP_ENEMY_Warden Belamore |r的|T135812:0|t[火球]|r
.complete 544,4 
.mob Kegan Darkmar
.mob Warden Belamoore
step
.loop 30,Alterac Mountains,17.24,84.38,18.69,85.17,19.47,82.92,21.14,84.06,20.69,86.48,20.85,87.76,17.24,84.38
>>杀死|cRXP_ENEMY_Dalaran护盾|r和|cRXX_ENEMY_ Dalaran Theurgists|r。掠夺他们的|cRXD_Loot_磨损的石头代币|r
>>|cRXP_WARN_非常小心|cRXP_ENEMY_Dalaran护盾|r，因为当他们受到伤害时有10%的几率|r|T136173:0|t[暴力护盾效果]|cRXP-WARN_，（每次近战攻击造成85点伤害，并将其固定）|r << Warrior/Rogue/Paladin
>>不要太担心|cRXP_ENEMY_Dalaran Theurgists|r's |T136075:0|t[召唤旧灵]，因为他们在1次命中中死亡
.complete 556,1 
.mob Dalaran Shield Guard
.mob Dalaran Theurgist
step
.goto Alterac Mountains,37.44,68.08,30,0
.goto Alterac Mountains,37.54,66.22
>>点击洞穴内的|cRXP_PICK_Uzel|r火焰
>>|cRXP_WARN_It has a 20 yard range|r
.complete 553,3 
step
.loop 40,Hillsbrad Foothills,46.49,81.84,47.77,83.27,48.70,82.63,48.71,81.28,47.69,79.75,46.49,81.84
>>杀死|cRXP_ENEMY_Syndicate脚垫|r和|cRXP_ENEMY_Syndicate盗贼|r。为|cRXD_Loot_Syndicate导弹而掠夺它们|r
.complete 533,1 
.mob Syndicate Footpad
.mob Syndicate Thief
step
#completewith next
.goto Hillsbrad Foothills,45.93,31.64,20 >>进入Yeti洞穴
step
.goto Hillsbrad Foothills,45.62,31.13,20,0
.goto Hillsbrad Foothills,45.06,29.04,20,0
.goto Hillsbrad Foothills,44.26,28.10,20,0
.goto Hillsbrad Foothills,43.89,28.06
>>点击顶层的Azel|r的|cRXP_PICK_Flame
>>|cRXP_WARN_It has a 20 yard range|r
>>|cRXP_WARN_呆在顶层。还不下去|r
.complete 553,1 
step
.goto Hillsbrad Foothills,44.77,28.71,20,0
.goto Hillsbrad Foothills,44.88,27.44,20,0
.goto Hillsbrad Foothills,44.04,26.55
>>|cRXP_WARN_Drop down a floor|r
>>单击底层的|cRXP_PICK_Flame of Veraz|r
.complete 553,2 
step
#completewith next
.goto Hillsbrad Foothills,46.26,31.71,20 >>离开Yeti洞穴
step
.goto Hillsbrad Foothills,61.55,20.63,8,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r, |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r, Darthalia, |cRXP_FRIENDLY_克鲁斯克|r
.turnin 556 >>交任务: |cRXP_FRIENDLY_石雕|r
.goto Hillsbrad Foothills,61.50,20.93
.turnin 544 >>交任务: |cRXP_FRIENDLY_入室偷窃|r
.goto Hillsbrad Foothills,61.60,20.85
.turnin 539 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 541 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.turnin 567 >>交任务: |cRXP_FRIENDLY_危险！|r
.goto Hillsbrad Foothills,62.39,20.28
.turnin 533 >>交任务: |cRXP_FRIENDLY_秘密潜入|r
.goto Hillsbrad Foothills,62.95,20.59,8,0
.goto Hillsbrad Foothills,63.24,20.66
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
.target High Executor Darthalia
.target Krusk
step
.goto Hillsbrad Foothills,68.01,18.99,40,0
.goto Hillsbrad Foothills,68.07,23.02,40,0
.goto Hillsbrad Foothills,68.32,25.88,40,0
.goto Hillsbrad Foothills,67.95,28.95,40,0
.goto Hillsbrad Foothills,67.79,32.76,40,0
.goto Hillsbrad Foothills,67.54,35.33,40,0
.goto Hillsbrad Foothills,66.11,38.29,40,0
.goto Hillsbrad Foothills,63.67,40.37,40,0
.goto Hillsbrad Foothills,61.91,42.95,40,0
.goto Hillsbrad Foothills,59.42,45.08,40,0
.goto Hillsbrad Foothills,57.47,47.67,40,0
.goto Hillsbrad Foothills,56.36,50.18,40,0
.goto Hillsbrad Foothills,55.45,53.46,40,0
.goto Hillsbrad Foothills,55.61,56.96
>>杀死|cRXP_ENEMY_Snapjaws |r。掠夺它们的|cRXX_Loot_Turtle Meat|r
.collect 3712,10,7321,1 
.train 2550,3 
.mob Snapjaw
step
#completewith next
.goto Hillsbrad Foothills,54.66,53.82,90 >>从河里接近|cRXP_PICK_Helular的坟墓|r以避开|cRXP_ENEMY_Southshore Guards|r
step
.goto Hillsbrad Foothills,52.75,53.37
>>单击|cRXP_PICK_Helular的坟墓|r
.turnin 553 >>交任务: |cRXP_FRIENDLY_赫尔库拉的复仇|r
step
#completewith Ironhill
.goto Hillsbrad Foothills,70.98,78.54,40 >>输入Dun Garok
step
#completewith next
>>杀死|cRXP_ENEMY_Dun加罗登山者|r、|cRXD_ENEMY_加罗步枪兵|r和|cRXP_ENEMY_Dun加罗牧师|r。掠夺他们以换取|cRXT_Loot_Humbert之剑|r
.complete 541,1 
.complete 541,2 
.complete 541,3 
.complete 547,1 
step
#label Ironhill
.goto Hillsbrad Foothills,70.84,79.42,10,0
.goto Hillsbrad Foothills,71.35,80.32,10,0
.goto Hillsbrad Foothills,72.37,81.43,10,0
.goto Hillsbrad Foothills,72.60,82.22,10,0
.goto Hillsbrad Foothills,72.28,82.67,10,0
.goto Hillsbrad Foothills,72.00,81.89,10,0
.goto Hillsbrad Foothills,71.12,80.28,10,0 
.goto Hillsbrad Foothills,73.12,81.34,10,0
.goto Hillsbrad Foothills,73.00,80.59,10,0
.goto Hillsbrad Foothills,72.05,79.32,10,0 
.goto Hillsbrad Foothills,71.35,80.32,10,0
.goto Hillsbrad Foothills,71.50,81.49,10,0
.goto Hillsbrad Foothills,71.73,80.89,10,0
.goto Hillsbrad Foothills,71.50,79.49 
>>杀死|cRXP_ENEMY_Ironhill上尉|r
>>|cRXP_WARN_他有多个产卵点。他可以在楼上或楼下的地下室找到|r
.complete 541,4 
.unitscan Captain Ironhill
step
.loop 20,Hillsbrad Foothills,71.55,81.12,72.05,80.53,72.60,79.84,71.81,78.27,70.57,77.89,71.05,75.01,68.91,77.91,70.57,77.89,70.66,79.68,71.55,81.12
>>杀死|cRXP_ENEMY_Dun加罗登山者|r、|cRXD_ENEMY_加罗步枪兵|r和|cRXP_ENEMY_Dun加罗牧师|r。掠夺他们以换取|cRXT_Loot_Humbert之剑|r
.complete 541,1 
.complete 541,2 
.complete 541,3 
.complete 547,1 
step
#completewith next
.goto Hillsbrad Foothills,80.06,60.19,15,0
.goto Hillsbrad Foothills,80.56,60.70,12,0
.goto Hillsbrad Foothills,80.14,62.52,12,0
.goto Arathi Highlands,34.74,44.14
.zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
#completewith Kenata
.goto Arathi Highlands,54.76,38.34,30,0
>>杀死|cRXP_ENEMY_Fardel Dabyrie|r。掠夺他|cRXD_Loot_Fardel的头|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Fardel|r施放|r|T136067:0|t[致命毒药]|cRXP-WARN_（每5秒造成57点伤害，可中断）和|r|T132152:0|t[Thrash]|cRXP-WARN__（每15秒额外攻击2次）|r
.complete 1164,3 
.mob Fardel Dabyrie
step
.goto Arathi Highlands,54.21,38.08
>>杀死|cRXP_ENEMY_Marcel Dabyrie|r。掠夺他|cRXD_Loot_MMarcel的头|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Marcel|r施放|r|T132362:0|t[盾墙]|cRXP-WARN_|r << !Rogue !Warrior
>>|cRXP_WARN_小心|cRXP_ENEMY_Marcel|r施放|r|T132362:0|t[盾墙]|cRXP-WARN_（减少75%的伤害，持续10秒）|r << Rogue/Warrior
.complete 1164,2 
.mob Marcel Dabyrie
step
#label Kenata
.goto Arathi Highlands,56.37,36.08
>>杀死里面的|cRXP_ENEMY_Kenata Dabyrie|r。掠夺她|cRXP_Loot_Kenata的头|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Kenata|r casts|r|T132343:0|t[解除防护]|cRXP-WARN_（解除防护10秒）|r << Rogue/Warrior/Paladin/Shaman
.complete 1164,1 
.mob Kenata Dabyrie
step
.goto Arathi Highlands,56.63,38.80,30,0
.goto Arathi Highlands,56.78,40.47,30,0
.goto Arathi Highlands,54.76,38.34,30,0
.goto Arathi Highlands,56.63,38.80,30,0
.goto Arathi Highlands,56.78,40.47,30,0
.goto Arathi Highlands,54.76,38.34,30,0
.goto Arathi Highlands,56.63,38.80,30,0
.goto Arathi Highlands,56.78,40.47,30,0
.goto Arathi Highlands,54.76,38.34,30,0
.goto Arathi Highlands,56.63,38.80,30,0
.goto Arathi Highlands,56.78,40.47,30,0
.goto Arathi Highlands,54.76,38.34
>>杀死|cRXP_ENEMY_Fardel Dabyrie|r。掠夺他|cRXD_Loot_Fardel的头|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Fardel|r施放|r|T136067:0|t[致命毒药]|cRXP-WARN_（每5秒造成57点伤害，可中断）和|r|T132152:0|t[Thrash]|cRXP-WARN__（每15秒额外攻击2次）|r
.complete 1164,3 
.mob Fardel Dabyrie
step
.goto Arathi Highlands,62.50,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Shards of Myzrael|r
.accept 642 >>接任务: |cRXP_LOOT_被困的公主|r
step
.goto Arathi Highlands,73.79,33.03,10,0
.goto Arathi Highlands,73.84,32.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板埃德瓦|r
>>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
>>|cRXP_BUY_从他那里购买|r|T133994:0|t[Stormfind Brie]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin
>>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_和|r|T133994:0|t[Stormfind Brie]|cRX|r << Paladin
.collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin 
.collect 1707,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin 
.collect 1707,10,1145,1 << Paladin 
.target Innkeeper Adegwa
.money <0.4000 << !Paladin
.money <0.6000 << Paladin/Shaman
.xp <24,1
.xp >35,1
step << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板埃德瓦|r
.home >>将炉石设置为Hammerfall
.target Innkeeper Adegwa
.itemcount 17031,1
step << Hunter
.goto Arathi Highlands,72.52,33.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆塔|r
.vendor 9551 >>|cRXP_BUY_从他那里购买|r|T135495:0|t[密集短弓]|cRXP_Buy_|r
.collect 3030,2000,4767,1 
.target Mu'uta
.itemcount 3030,<2000
.money <2.8814
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95

step << Hunter
.goto Arathi Highlands,72.52,33.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆塔|r
.vendor 9551 >>|cRXP_BUY_从他那里购买|r|T135495:0|t[Dense Shortbow]|cRXP_Buy_|r
.target Mu'uta
.money <2.5814
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
step << Hunter
.goto Arathi Highlands,72.52,33.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆塔|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2000,4767,1 
.target Mu'uta
.itemcount 3030,<2000
.money <0.3000
step << Hunter
#completewith next
+装备|T135495:0|t[密集短弓]
.use 11305
.itemcount 11305,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈穆尔|r, |cRXP_FRIENDLY_托尔甘|r
.accept 655 >>接任务: |cRXP_LOOT_落锤镇|r
.goto Arathi Highlands,72.64,33.92
.turnin 655 >>交任务: |cRXP_FRIENDLY_落锤镇|r
.accept 671 >>接任务: |cRXP_LOOT_邪恶的魔法|r
.accept 672 >>接任务: |cRXP_LOOT_振奋精神|r
.goto Arathi Highlands,74.72,36.29
.target Gor'mul
.target Tor'gan
step << Mage
.loop 45,Arathi Highlands,70.40,32.28,70.77,34.72,69.16,39.78,68.55,37.67,68.73,36.09,67.05,33.98,65.78,36.03,65.85,37.77,65.60,38.88,65.21,39.48,65.80,41.65,67.02,42.51,66.17,44.35,64.87,45.11,64.42,46.39,62.56,46.52,63.25,44.87,63.85,43.06,64.65,40.33,61.89,43.36,60.87,37.77,59.38,38.32,58.71,40.97,60.34,42.86,60.73,44.50,61.14,45.68,60.42,46.13,58.89,43.01
>>杀死|cRXP_ENEMY_Highland Striders|r。掠夺他们的|cRXX_Loot_HHighland Raptor Eyes |r
.complete 672,1,6 
.mob Highland Strider
.itemcount 17031,1
step << Mage
.loop 45,Arathi Highlands,55.57,45.96,56.98,46.90,55.84,48.06,54.88,46.98,53.01,46.56,51.11,46.43,52.29,45.57,54.05,44.86,53.27,43.74,51.36,41.17,50.98,40.50,49.90,41.49
>>杀死|cRXP_ENEMY_Highland Striders|r。掠夺他们的|cRXX_Loot_HHighland Raptor Eyes |r
.complete 672,1 
.mob Highland Strider
.itemcount 17031,1
step
#completewith next
>>杀死|cRXP_ENEMY_Highland Striders|r和|cRXX_ENEMY_High Thrasher|r。掠夺他们的|cRXD_Loot_Higland Raptor Eyes |r
>>|cRXP_WARN_小心|cRXP_ENEMY_Highland Thrasher|r施法|r|T132152:0|t[Thrash]|cRXP-WARN_（每15秒额外攻击2次）|r
.complete 672,1 
.mob Highland Strider
.mob Highland Thrasher
step
.loop 45,Arathi Highlands,34.76,29.97,34.66,31.24,34.17,32.81,32.86,32.74,31.65,32.76,30.07,30.04,30.34,28.81,30.31,28.00,30.63,25.77,32.28,25.16,32.91,24.39,33.62,25.43,33.91,26.55,34.20,26.96,34.77,27.14,34.76,29.97
>>杀死|cRXP_ENEMY_Syndicate Pathstalkers |r、|cRXD_ENEMY_辛迪加雇佣军|r和|cRXP_ENEMY_Syndicate Highwaymen |r。掠夺他们的|cRXP_Loot_B血石护身符|r
>>|cRXP_WARN_|cRXP_ENEMY_Syndicate Highwayman|r被盗|r
.complete 671,1 
.mob Syndicate Pathstalker
.mob Syndicate Mercenary
.mob Syndicate Highwayman
step
.loop 45,Arathi Highlands,55.57,45.96,56.98,46.90,55.84,48.06,54.88,46.98,53.01,46.56,51.11,46.43,52.29,45.57,54.05,44.86,53.27,43.74,51.36,41.17,50.98,40.50,49.90,41.49
>>杀死|cRXP_ENEMY_Highland Striders|r。掠夺他们的|cRXX_Loot_HHighland Raptor Eyes |r
.complete 672,1,6 
.mob Highland Strider
step
.loop 45,Arathi Highlands,70.40,32.28,70.77,34.72,69.16,39.78,68.55,37.67,68.73,36.09,67.05,33.98,65.78,36.03,65.85,37.77,65.60,38.88,65.21,39.48,65.80,41.65,67.02,42.51,66.17,44.35,64.87,45.11,64.42,46.39,62.56,46.52,63.25,44.87,63.85,43.06,64.65,40.33,61.89,43.36,60.87,37.77,59.38,38.32,58.71,40.97,60.34,42.86,60.73,44.50,61.14,45.68,60.42,46.13,58.89,43.01
>>杀死|cRXP_ENEMY_Highland Striders|r。掠夺他们的|cRXX_Loot_HHighland Raptor Eyes |r
.complete 672,1 
.mob Highland Strider
step << Mage
#completewith next
.hs >>向Hammerfall致敬
.itemcount 17031,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r, |cRXP_FRIENDLY_戈穆尔|r
.turnin 671 >>交任务: |cRXP_FRIENDLY_邪恶的魔法|r
.turnin 672 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.accept 674 >>接任务: |cRXP_LOOT_振奋精神|r
.goto Arathi Highlands,74.72,36.29
.turnin 674 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.accept 675 >>接任务: |cRXP_LOOT_振奋精神|r
.goto Arathi Highlands,72.64,33.92
.target Tor'gan
.target Gor'mul
step
.goto Arathi Highlands,74.72,36.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 675 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.target Tor'gan
step
#completewith TarrenMillF
.goto Arathi Highlands,73.07,32.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤尔达|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Urda
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r, |cRXP_FRIENDLY_Humbert|r, and |cRXP_FRIENDLY_Christoph|r
>>|cRXP_BUY_购买|r|T134059:0|t[舒缓香料]|cRXP_Buy_from|cRXP-FRIENDLY_Christoph|r|r << tbc
.turnin 541 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 550 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.39,20.28
.turnin 547 >>交任务: |cRXP_FRIENDLY_亨伯特的长剑|r
.goto Hillsbrad Foothills,62.76,20.21
.collect 3713,1,7321,1 << tbc 
.accept 7321 >>接任务: |cRXP_LOOT_海龟汤|r
.turnin 7321 >>交任务: |cRXP_FRIENDLY_海龟汤|r
.goto Hillsbrad Foothills,62.52,19.61,12,0
.goto Hillsbrad Foothills,62.28,19.05
.target High Executor Darthalia
.target Deathguard Humbert
.target Christoph Jeffcoat
.itemcount 3712,10 
.train 2550,3 
step
#label TarrenMillF
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r and |cRXP_FRIENDLY_Humbert|r
.turnin 541 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 550 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.39,20.28
.turnin 547 >>交任务: |cRXP_FRIENDLY_亨伯特的长剑|r
.goto Hillsbrad Foothills,62.76,20.21
.target High Executor Darthalia
.target Deathguard Humbert
step << skip
>>乘车前往奥特兰克山脉
.goto Alterac Mountains,80.497,66.919
>>对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1791 >>交任务: |cRXP_FRIENDLY_捕风者|r
.target Bath'rah the Windwatcher
.accept 1712 >>接任务: |cRXP_LOOT_塞克隆尼亚|r

step
#completewith next
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fly Undercity >>飞到地下城
.target Zarise
.zoneskip Hillsbrad Foothills,1
.itemcount 17031,<1 << Mage

step
.goto Undercity,63.85,49.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉纳维·卡隆|r
.turnin 1164 >>交任务: |cRXP_FRIENDLY_科娜塔一家|r
.itemcount 17031,<1 << Mage
.target Genavie Callow
step << Mage
#completewith Thieves
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.itemcount 17031,1
step << Mage
.goto Undercity,82.77,15.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 8422 >>训练你的职业技能
.target Anastasia Hartwell
.xp <32,1
.xp >34,1
step << Mage
.goto Undercity,82.77,15.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 8492 >>训练你的职业技能
.target Anastasia Hartwell
.xp <34,1
step << Mage
.goto Undercity,82.77,15.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜|r
>>|cRXP_BUY_从她那里购买|r|T134419:0|t[传送符文]|cRXP_Buy_|r
.collect 17031,5,496,1 
.target Hannah Akeley
step << Mage
#label Thieves
.goto Undercity,63.85,49.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉纳维·卡隆|r
.turnin 1164 >>交任务: |cRXP_FRIENDLY_科娜塔一家|r
.target Genavie Callow
step << Warrior
#completewith WarriorTrain1
.goto Undercity,63.79,47.28,15,0
.goto Undercity,57.82,44.73,25,0
.goto Undercity,52.46,42.08,25,0
.goto Undercity,48.49,31.60,25,0
.goto Undercity,45.92,23.41,25,0
.goto Undercity,46.23,18.07,25,0
.goto Undercity,47.42,17.27,25 >>前往|cRXP_FRIENDLY_Baltus|r
step << Warrior
.goto Undercity,47.42,17.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尔图斯·弗勒|r
.train 11549 >>训练你的职业技能
.target Baltus Fowler
.xp <32,1
.xp >34,1
step << Warrior
#label WarriorTrain1
.goto Undercity,47.42,17.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尔图斯·弗勒|r
.train 7379 >>训练你的职业技能
.target Baltus Fowler
.xp <34,1
step << Rogue
#completewith RogueTrain1
.goto Undercity,63.79,47.28,15,0
.goto Undercity,65.27,56.15,25,0
.goto Undercity,67.15,64.32,25,0
.goto Undercity,83.88,72.06,20 >>前往|cRXP_FRIENDLY_Carolyn|r
step << Rogue
.goto Undercity,83.88,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 8623 >>训练你的职业技能
.target Carolyn Ward
.xp <32,1
.xp >34,1
step << Rogue
#label RogueTrain1
.goto Undercity,83.88,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 8696 >>训练你的职业技能
.target Carolyn Ward
.xp <34,1
step << Shaman/Warrior
#completewith next
.goto Undercity,63.77,47.25,15,0 << Shaman
.goto Undercity,65.43,56.36,30,0 << Shaman
.goto Undercity,64.78,64.48,30,0 << Shaman
.goto Undercity,52.68,77.65,15,0
.goto Undercity,51.15,80.09,12,0
.goto Undercity,49.06,78.17,12,0
.goto Undercity,47.80,75.46,15,0
.goto Undercity,48.81,69.28,20 >>前往|cRXP_FRIENDLY_Faranell|r
step << Shaman/Warrior
.goto Undercity,48.81,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.turnin 513 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
step
#completewith next
.goto Undercity,47.80,75.46,15,0 << Shaman/Warrior
.goto Undercity,49.06,78.17,12,0 << Shaman/Warrior
.goto Undercity,51.15,80.09,12,0 << Shaman/Warrior
.goto Undercity,52.68,77.65,15,0 << Shaman/Warrior
.goto Undercity,54.70,67.53,25,0 << Shaman/Warrior
.goto Undercity,51.88,64.84,20,0
.goto Undercity,46.28,73.10,15,0
.goto Undercity,45.31,78.24,15,0
.goto Undercity,46.18,83.63,15,0
.goto Undercity,48.80,87.63,15,0
.goto Undercity,52.45,89.49,15,0
.goto Undercity,56.18,94.85,15,0
.goto Undercity,56.23,92.21,15 >>前往皇家区内的|cRXP_FRIENDLY_Bragor|r << wotlk
.goto Undercity,56.23,92.21,15 >>前往皇家区内的|cRXP_FRIENDLY_Varimathras|r << tbc
step
.goto Undercity,56.23,92.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉贡·血拳|r << wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r << tbc
.turnin 550 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.target Bragor Bloodfist << wotlk
.target Varimathras << tbc
step << Paladin
.goto Undercity,58.00,90.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞希娅·黎明玫瑰|r
.train 19836 >>训练你的职业技能
.target Champion Cyssa Dawnrose
.xp <32,1
.xp >34,1
step << Paladin
.goto Undercity,58.00,90.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞希娅·黎明玫瑰|r
.train 642 >>训练你的职业技能
.target Champion Cyssa Dawnrose
.xp <34,1
step << Undead !Warlock
#completewith next
.goto Undercity,55.20,90.91
.goto Undercity,67.88,14.97,30 >>|cRXP_WARN_前往皇家区主平台的边缘。通过定位你的角色直到看起来像是漂浮的，然后注销并重新登录，来执行注销跳过|r
.link https://www.youtube.com/watch?v=jj85AXyF1XE >>|cRXP_WARN_单击此处|r
.skill riding,75,1
step << Undead !Warlock
.goto Undercity,66.21,4.90,15,0
.goto Tirisfal Glades,61.73,64.87
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.skill riding,75,1
step << Undead !Warlock
.goto Tirisfal Glades,60.08,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velma|r
.skill riding,75 >>火车|T136103:0|t（学徒骑马）
.target Velma Warnam
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
step << Undead !Warlock
.goto Tirisfal Glades,59.87,52.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_撒迦利亚·普斯特|r
+|cRXP_BUY_从他那里买任何你喜欢的|r|T132264:0|t[Skeletal Horse]|cRXP_Buy_|r
.target Zachariah Post
.itemcount 13331,<1 
.itemcount 13332,<1 
.itemcount 13333,<1 
.itemcount 46308,<1 
.money <0.9 << wotlk
.money <9.0000 << tbc
.skill riding,<75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[红色骷髅马]学习
.use 13331
.itemcount 13331,1
.skill riding,75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[蓝色骷髅马]学习
.use 13332
.itemcount 13332,1
.skill riding,75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[棕色骷髅马]学习它
.use 13333
.itemcount 13333,1
.skill riding,75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[黑色骷髅马]学习
.use 46308
.itemcount 46308,1
.skill riding,75,1
step << Undead !Warlock
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132264:0|t[红骷髅马]|cRXP_WARN_拖动到动作栏中|r
.cast 17462 >>骑上您的|T132264:0|t[红色骷髅马]
.train 17462,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead !Warlock
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132264:0|t[Blue Skeletal Horse]|cRXP_WARN_拖动到动作栏中|r
.cast 17463 >>骑上您的|T132264:0|t[蓝色骷髅马]
.train 17463,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead !Warlock
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132264:0|t[Brown Skeletal Horse]|cRXP_WARN_拖动到动作栏中|r
.cast 17464 >>骑上您的|T132264:0|t[棕色骷髅马]
.train 17464,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead !Warlock wotlk
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132264:0|t[黑骨马]|cRXP_WARN_拖动到动作栏中|r
.cast 64977 >>骑上您的|T132264:0|t[黑色骷髅马]
.train 64977,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Druid
#completewith next
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
.xp <32,1
step << Druid
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 6778 >>训练你的职业技能
.target Loganaar
.xp <32,1
]])
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 32-32千针II JJ
#version 25
#group RestedXP 部落 30-45
#next 32-34闪亮平板JJ
#xprate >1.4999
step << !Mage
#xprate <1.7
.hs >>前往: 奥格瑞玛
.zoneskip Orgrimmar
.zoneskip The Barrens
step << Hunter/Shaman/Priest
#completewith OrgTrain32
.goto Orgrimmar,50.68,61.69,35,0 << Hunter
.goto Orgrimmar,52.96,58.10,35,0 << Hunter
.goto Orgrimmar,56.02,56.88,35,0 << Hunter
.goto Orgrimmar,63.02,39.23,20,0 << Hunter
.goto Orgrimmar,64.32,38.11,20,0 << Hunter
.goto Orgrimmar,66.11,40.01,20,0 << Hunter
.goto Orgrimmar,72.23,23.56,30,0 << Hunter
.goto Orgrimmar,72.15,21.09,30,0 << Hunter
.goto Orgrimmar,67.53,14.87,20,0 << Hunter
.goto Orgrimmar,47.41,65.07,10,0 << Priest/Shaman
.goto Orgrimmar,46.59,64.54,6,0 << Priest/Shaman
.goto Orgrimmar,46.75,63.84,6,0 << Priest/Shaman
.goto Orgrimmar,46.59,64.54,6,0 << Priest/Shaman
.goto Orgrimmar,46.75,63.84,6,0 << Priest/Shaman
.goto Orgrimmar,46.59,64.54,6,0 << Priest/Shaman
.goto Orgrimmar,46.75,63.84,6,0 << Priest/Shaman
.goto Orgrimmar,41.89,64.39,20,0 << Priest/Shaman
.goto Orgrimmar,38.65,56.58,25,0 << Shaman
.goto Orgrimmar,38.78,54.87,25,0 << Shaman
.goto Orgrimmar,40.94,45.20,25,0 << Shaman
.goto Orgrimmar,42.30,37.44,30,0 << Shaman
.goto Orgrimmar,39.58,75.87,20,0 << Priest
.goto Orgrimmar,66.05,18.52,15 >>前往|cRXP_FRIENDLY_Ormak|r << Hunter
.goto Orgrimmar,38.81,36.38,15 >>前往|cRXP_FRIENDLY_Kardris|r << Shaman
.goto Orgrimmar,35.59,87.80,15 >>前往|cRXP_FRIENDLY_Ur'kyo|r << Priest
step << skip
#xprate <1.7
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14263 >>训练你的职业技能
.target Ormak Grimshot
.xp <32,1
.xp >34,1

step << Hunter
#label OrgTrain32
#xprate <1.7
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 13813 >>训练你的职业技能
.target Ormak Grimshot
.xp <34,1
step << Shaman
#xprate <1.7
#label OrgTrain32 << tbc
.goto Orgrimmar,38.81,36.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 8499 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <32,1
.xp >34,1 << wotlk
step << Shaman wotlk
#label OrgTrain32
#xprate <1.7
.goto Orgrimmar,38.81,36.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 52131 >>训练你的职业技能 << wotlk
.target Kardris Dreamseeker
.xp <34,1
step << Priest
#xprate <1.7
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔库|r
.train 9473 >>训练你的职业技能
.target Ur'kyo
.xp <32,1
.xp >34,1
step << Priest
#xprate <1.7
#label OrgTrain32
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔库|r
.train 8105 >>训练你的职业技能
.target Ur'kyo
.xp <34,1
step << Troll
#completewith CampTStone2
.goto The Barrens,63.08,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Bragok
.zoneskip Orgrimmar
step << Undead/!Mage
#xprate >1.6999
#completewith CampTStone2
.hs >>前往: 奥格瑞玛
.cooldown item,6948,>0
.zoneskip Orgrimmar
step << Mage
#completewith CampTStone2
.cast 3563 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
.zoneskip The Barrens
.zoneskip Thousand Needles
step << Mage
.goto Thunder Bluff,22.77,14.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 8422 >>训练你的职业技能
.target Archmage Shymm
.xp <32,1
.xp >34,1
step << Mage
.goto Thunder Bluff,22.77,14.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 8492 >>训练你的职业技能
.target Archmage Shymm
.xp <34,1
step << Mage
.goto Thunder Bluff,46.22,49.14,6,0
.goto Thunder Bluff,46.01,49.90,6,0
.goto Thunder Bluff,47.00,49.83
>>爬上塔楼
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Tal
step << Undead
#xprate >1.6999
.goto Tirisfal Glades,61.06,58.86,12,0
.goto Tirisfal Glades,61.51,59.01,10,0
.goto Tirisfal Glades,61.27,59.22,8,0
.goto Tirisfal Glades,61.13,58.84,8,0
.goto Tirisfal Glades,61.38,58.71,8,0
.goto Tirisfal Glades,61.34,59.17,8,0
.goto Tirisfal Glades,60.51,58.69,-1
.goto Tirisfal Glades,60.94,46.35,-1
>>上齐柏林塔
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.cooldown item,6948,<0
.zoneskip Orgrimmar
.zoneskip Thunder Bluff
.zoneskip Thousand Needles
step
#completewith Doras1
.goto Orgrimmar,47.41,65.07,10,0
.goto Orgrimmar,46.59,64.54,6,0
.goto Orgrimmar,46.75,63.84,6,0
.goto Orgrimmar,46.59,64.54,6,0
.goto Orgrimmar,46.75,63.84,6,0
.goto Orgrimmar,46.59,64.54,6,0
.goto Orgrimmar,46.75,63.84,6,0
.goto Orgrimmar,45.12,63.88,10 >>向上行进至|cRXP_FRIENDLY_Doras|r
step << Warlock
#xprate <1.7
#completewith CampTStone2
.goto Orgrimmar,45.12,63.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >>飞到棘轮
.target Doras
.zoneskip Orgrimmar,1
.xp <34,1
step << Warlock
#xprate <1.7
.goto The Barrens,62.44,35.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴巴加亚·影隙|r
.train 7648 >>训练你的职业技能
.target Babagaya Shadowcleft
.xp <34,1
step << Warlock
#xprate <1.7
#completewith CampTStone2
.goto The Barrens,63.08,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Bragok
.zoneskip Orgrimmar
.xp <34,1
step
#label Doras1
#completewith CampTStone2
.goto Orgrimmar,45.12,63.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Doras
.zoneskip Orgrimmar,1

step << !Shaman !Warrior
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn
.turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
.goto The Barrens,45.10,57.68
.turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
.turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
.turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
.goto The Barrens,44.86,59.13
.target Tatternack Steelforge
.target Jorn Skyseer
.isOnQuest 884
.isOnQuest 885
.isOnQuest 897
step << !Shaman !Warrior
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn
.turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
.goto The Barrens,45.10,57.68
.turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
.turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
.goto The Barrens,44.86,59.13
.target Tatternack Steelforge
.target Jorn Skyseer
.isOnQuest 885
.isOnQuest 897
step << !Shaman !Warrior
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn
.turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
.goto The Barrens,45.10,57.68
.turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
.turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
.goto The Barrens,44.86,59.13
.target Tatternack Steelforge
.target Jorn Skyseer
.isOnQuest 884
.isOnQuest 897
step << !Shaman !Warrior
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn
.turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
.goto The Barrens,45.10,57.68
.turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
.turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
.goto The Barrens,44.86,59.13
.target Tatternack Steelforge
.target Jorn Skyseer
.isOnQuest 884
.isOnQuest 885
step << !Shaman !Warrior
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn
.turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
.goto The Barrens,45.10,57.68
.turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
.goto The Barrens,44.86,59.13
.target Tatternack Steelforge
.target Jorn Skyseer
.isOnQuest 884
step << !Shaman !Warrior
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn
.turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
.goto The Barrens,45.10,57.68
.turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
.goto The Barrens,44.86,59.13
.target Tatternack Steelforge
.target Jorn Skyseer
.isOnQuest 885
step << !Shaman !Warrior
#xprate >1.6999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn
.turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
.goto The Barrens,45.10,57.68
.turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
.goto The Barrens,44.86,59.13
.target Tatternack Steelforge
.target Jorn Skyseer
.isOnQuest 897
step << !Shaman !Warrior
#xprate >1.6999
#label CampTStone2
.goto The Barrens,45.10,57.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
.turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
.target Tatternack Steelforge
step
#xprate <1.7 << !Shaman !Warrior
#label CampTStone2
.goto The Barrens,45.10,57.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
.turnin 1153 >>交任务: |cRXP_FRIENDLY_新的矿石样本|r
.target Tatternack Steelforge
step
#completewith next
.goto The Barrens,44.44,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Freewind Post >>飞到Freewind Post
.target Omusa Thunderhorn
step
.goto Thousand Needles,45.05,48.90,8,0
.goto Thousand Needles,44.83,48.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾鲁|r
.turnin 4767 >>交任务: |cRXP_FRIENDLY_驭风者|r
.target Elu
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
.vendor 9551 >>|cRXP_BUY_从他那里购买|r|T135495:0|t[密集短弓]|cRXP_Buy_|r
.collect 3030,2000,4767,1 
.target Starn
.itemcount 3030,<2000
.money <2.8814
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95

step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
.vendor 9551 >>|cRXP_BUY_从他那里购买|r|T135495:0|t[Dense Shortbow]|cRXP_Buy_|r
.target Starn
.money <2.5814
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2000,4767,1 
.target Starn
.itemcount 3030,<2000
.money <0.3000
step << Hunter
#completewith next
+装备|T135495:0|t[密集短弓]
.use 11305
.itemcount 11305,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
step
#completewith TestofE
.goto Thousand Needles,46.07,51.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abeqwa|r
.home >>将您的炉石设置为Freewind Post
.target Innkeeper Abeqwa
step
.goto Thousand Needles,46.07,51.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abeqwa|r
>>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
>>|cRXP_BUY_从他那里购买|r|T133994:0|t[Stormfind Brie]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin
>>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_和|r|T133994:0|t[Stormfind Brie]|cRX|r << Paladin
.collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin 
.collect 1707,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin 
.collect 1707,10,1145,1 << Paladin 
.target Innkeeper Abeqwa
.money <0.4000 << !Paladin
.money <0.6000 << Paladin/Shaman
.xp <24,1
.xp >35,1
step
.goto Thousand Needles,46.21,50.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elosai|r
.turnin 9434 >>交任务: |cRXP_FRIENDLY_测试药剂|r
.target Magistrix Elosai
step
#completewith next
.goto Thousand Needles,54.57,44.36,12,0
.goto Thousand Needles,53.71,42.59,10,0 << !Shaman
.goto Thousand Needles,53.95,41.49,10 >>前往|cRXP_FRONDLY_Dorn|r << !Shaman
.goto Thousand Needles,53.54,42.65,10 >>向|cRXP_FRIENDLY_Pate|r行进 << Shaman
step
#label TestofE
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普拉特·白云|r, Dorn << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r << !Shaman
.turnin 1531 >>交任务: |cRXP_FRIENDLY_空气的召唤|r << Shaman
.goto Thousand Needles,53.54,42.65 << Shaman
.turnin 1150 >>交任务: |cRXP_FRIENDLY_耐力的试炼|r
.accept 1151 >>接任务: |cRXP_LOOT_力量的试炼|r
.goto Thousand Needles,53.95,41.49
.target Prate Cloudseer << Shaman
.target Dorn Plainstalker
step
#completewith next
.goto Thousand Needles,31.30,36.87,20,0
.goto Thousand Needles,33.12,35.30,15,0
.goto Thousand Needles,32.92,32.51,15,0
.goto Thousand Needles,31.97,31.34,15,0
.goto Thousand Needles,32.28,28.59,15,0
.goto Thousand Needles,32.51,27.28,15,0
.goto Thousand Needles,33.30,28.62,15,0
.goto Thousand Needles,33.30,28.62,15,0
.goto Thousand Needles,34.87,31.85,15,0
.goto Thousand Needles,34.12,35.79,15,0
.goto Thousand Needles,33.26,36.25,15,0
.goto Thousand Needles,32.35,33.46,15,0
.goto Thousand Needles,31.78,32.58,10 >>前往|cRXP_PICK_Document Chest#1|r
step
.goto Thousand Needles,31.78,32.58
>>打开|cRXP_PICK_Document Chest#1|r。取出|cRXP_Loot_Secret Note#1|r
.complete 5064,1 
step
#completewith next
.goto Thousand Needles,32.35,33.46,15,0
.goto Thousand Needles,33.23,36.41,15,0
.goto Thousand Needles,34.07,39.57,10,0
.goto Thousand Needles,33.77,39.98,10 >>前往|cRXP_PICK_Document Chest#2 |r
step
.goto Thousand Needles,33.77,39.98
>>打开|cRXP_PICK_Document Chest#2|r。取出|cRXP_Loot_Secret Note#2|r
.complete 5064,2 
step
#completewith next
.goto Thousand Needles,35.81,39.48,15,0
.goto Thousand Needles,38.38,40.53,15,0
.goto Thousand Needles,39.00,41.19,10,0
.goto Thousand Needles,39.35,41.52,10 >>前往|cRXP_PICK_Document Chest#3 |r
step
.goto Thousand Needles,39.35,41.52
>>打开|cRXP_PICK_Document Chest#3|r。将其取出|cRXP_Loot_Secret Note#3|r
.complete 5064,3 
step
#completewith next
.goto Thousand Needles,38.38,40.53,15,0
.goto Thousand Needles,35.67,39.24,15,0
.goto Thousand Needles,34.32,35.71,15,0
.goto Thousand Needles,35.02,31.78,15,0
.goto Thousand Needles,35.68,31.02,15,0
.goto Thousand Needles,36.92,31.84,15,0
.goto Thousand Needles,37.17,33.10,15,0
.goto Thousand Needles,37.77,34.99,15,0
.goto Thousand Needles,38.06,35.35,12 >>前往|cRXP_PICK_生命圣火|r
step
.goto Thousand Needles,38.06,35.35
.cast 16996 >>点击|cRXP_PICK_生命圣火|r召唤|cRXP_ENEMY_Arikara|r
.timer 5,Arikara RP
.isOnQuest 5088
step
.goto Thousand Needles,38.22,35.48
>>|cRXP_WARN_等待RP|r
>>杀死|cRXP_ENEMY_Arikara|r。为她掠夺她|cRXX_Loot_蛇皮|r
.complete 5088,1 
.complete 5088,2 
.mob Arikara

step
#completewith next
.goto Thousand Needles,37.77,34.99,15,0
.goto Thousand Needles,37.16,33.15,15,0
.goto Thousand Needles,37.72,31.46,15,0
.goto Thousand Needles,38.98,29.43,15,0
.goto Thousand Needles,38.07,26.74,30 >>前往|cRXP_ENEMY_Arnak Grimtome|r
step
.goto Thousand Needles,38.28,26.80,10,0
.goto Thousand Needles,38.07,26.74
>>杀死|cRXP_ENEMY_Arnak Grimtomet|r。为他的|cRXX_Loot_Hoof|r掠夺他
.complete 5147,1 
.mob Arnak Grimtotem
step << skip
.goto Thousand Needles,37.98,26.59,8,0
.goto Thousand Needles,37.95,26.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota|r
.accept 4904 >>接任务: |cRXP_LOOT_终获解救|r
.target Lakota Windsong

step << skip
>>跟随拉科塔，在整个护送过程中保护她。暴徒将定期在平台上滋生。
.goto Thousand Needles,30.7,37.1
.complete 4904,1 
step << Mage/Paladin
#completewith Gizmo
.cast 1953 >>|cRXP_WARN_跳下去。在击中底部之前施法|r|T135736:0|t[闪烁]|cRXP_WARN_以避免受到坠落伤害|r << Mage
.cast 5599 >>|cRXP_WARN_跳下去。在击中底部之前施法|r|T135964:0|t[保护祝福]|cRXP_WARN_以避免受到坠落伤害|r << Paladin

step << !Mage !Paladin
#completewith next
.goto Thousand Needles,38.98,29.43,15,0
.goto Thousand Needles,37.56,31.46,15,0
.goto Thousand Needles,36.88,32.79,15,0
.goto Thousand Needles,35.96,34.38,20 >>跳进下面的水里。如果你死了，跑回你的尸体
>>|cRXP_WARN_避免使用|cRXP_ENEMY_Scalding元素|r和|r|cRXX_ENEMY_Boating元素|r

step
#completewith next
.goto Thousand Needles,22.75,24.63
.cast 17176 >>单击|cRXP_PICK_Panther Cage|r使|cRXP_ENEMY_Enraged Panther敌对
step
#label Gizmo
.goto Thousand Needles,22.75,24.63
>>杀死|cRXP_ENEMY_Enraged Panther|r。掠夺他获得|cRXD_Loot_超级电容器Gizmo |r
>>|cRXP_WARN_确保您有可用的冷却液|r
>>|cRXP_WARN_如果需要，为他找一个小组|r
.complete 5151,1 
.mob Enraged Panther
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r, |cRXP_FRIENDLY_Motega|r, and |cRXP_FRIENDLY_Wizlo|r
>>|cRXP_WARN_Turn in quickly, as turning in "Assassination Plot" will summon three |cRXP_ENEMY_Galak Assassins|r that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
.turnin 4881 >>交任务: |cRXP_FRIENDLY_暗杀计划|r
.accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
.goto Thousand Needles,21.25,32.05
.turnin 5088 >>交任务: |cRXP_FRIENDLY_阿利卡拉|r
.goto Thousand Needles,21.43,32.35,5,0
.goto Thousand Needles,21.54,32.35
.turnin 5151 >>交任务: |cRXP_FRIENDLY_超适应齿轮|r
.goto Thousand Needles,21.43,32.55
.target Kanati Greycloud
.target Motega Firemane
.target Wizlo Bearingshiner
.isOnQuest 4881
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r, |cRXP_FRIENDLY_Motega|r, and |cRXP_FRIENDLY_Wizlo|r
>>|cRXP_WARN_Turn in quickly, as turning in "Assassination Plot" will summon three |cRXP_ENEMY_Galak Assassins|r that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
.accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
.goto Thousand Needles,21.25,32.05
.turnin 5088 >>交任务: |cRXP_FRIENDLY_阿利卡拉|r
.goto Thousand Needles,21.43,32.35,5,0
.goto Thousand Needles,21.54,32.35
.turnin 5151 >>交任务: |cRXP_FRIENDLY_超适应齿轮|r
.goto Thousand Needles,21.43,32.55
.target Kanati Greycloud
.target Motega Firemane
.target Wizlo Bearingshiner
.isQuestTurnedIn 4881
.isQuestAvailable 4966
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motega|r and |cRXP_FRIENDLY_Wizlo|r
.turnin 5088 >>交任务: |cRXP_FRIENDLY_阿利卡拉|r
.goto Thousand Needles,21.43,32.35,5,0
.goto Thousand Needles,21.54,32.35
.turnin 5151 >>交任务: |cRXP_FRIENDLY_超适应齿轮|r
.goto Thousand Needles,21.43,32.55
.target Kanati Greycloud
.target Motega Firemane
.target Wizlo Bearingshiner
step
.goto Thousand Needles,21.25,32.05
>>杀死|cRXP_ENEMY_Galak刺客|r以保护|cRXP_FRIENDLY_Kanati|r
.complete 4966,1 
.mob Galak Assassin
.isOnQuest 4966
step
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
.turnin 4966 >>交任务: |cRXP_FRIENDLY_保护卡纳提·灰云|r
.isQuestComplete 4966
step
.goto Thousand Needles,10.92,22.28,40,0
.goto Thousand Needles,10.60,22.80,40,0
.goto Thousand Needles,12.96,26.67,40,0
.goto Thousand Needles,17.18,37.08,40,0
.goto Thousand Needles,16.90,37.80,40,0
.goto Thousand Needles,21.22,39.04,40,0
.goto Thousand Needles,21.92,38.62,40,0
.goto Thousand Needles,25.43,41.71,40,0
.goto Thousand Needles,25.77,41.44,40,0
.goto Thousand Needles,10.92,22.28,40,0
.goto Thousand Needles,10.60,22.80,40,0
.goto Thousand Needles,12.96,26.67,40,0
.goto Thousand Needles,17.18,37.08,40,0
.goto Thousand Needles,16.90,37.80,40,0
.goto Thousand Needles,21.22,39.04,40,0
.goto Thousand Needles,21.92,38.62,40,0
.goto Thousand Needles,25.43,41.71,40,0
.goto Thousand Needles,25.77,41.44
>>杀死|cRXP_ENEMY_Rok'Alim the Pounder|r。掠夺他获得Rok'Alim|r的|cRXP_Loot_碎片
>>|cRXP_ENEMY_Rok'Alim|r对自然伤害免疫 << Shaman/Druid
.unitscan Rok'Alim the Pounder
.complete 1151,1 
step
#completewith FreewindEnd
.hs >>Hearth to Freewind Post公司公司
.cooldown item,6948,>0
step
#completewith FreewindEnd
.goto Thousand Needles,46.73,48.27,30 >>前往Freewind Post的电梯
.cooldown item,6948,<0
step
#completewith FreewindEnd
.goto Thousand Needles,45.91,49.91,25 >>乘电梯到Freewind
.cooldown item,6948,<0
step
.goto Thousand Needles,46.07,51.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abeqwa|r
>>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
>>|cRXP_BUY_从他那里购买|r|T133994:0|t[Stormfind Brie]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin
>>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_和|r|T133994:0|t[Stormfind Brie]|cRX|r << Paladin
.collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin 
.collect 1707,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin 
.collect 1707,10,1145,1 << Paladin 
.target Innkeeper Abeqwa
.money <0.4000 << !Paladin
.money <0.6000 << Paladin/Shaman
.xp <24,1
.xp >35,1
step
#label FreewindEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longhorn|r
.goto Thousand Needles,45.70,50.63,8,0
.goto Thousand Needles,45.65,50.80
.turnin 5064 >>交任务: |cRXP_FRIENDLY_恐怖图腾的密信|r
.turnin 5147 >>交任务: |cRXP_FRIENDLY_通缉：阿纳克·恐怖图腾|r
.target Cliffwatcher Longhorn
step << skip
.goto Thousand Needles,46.0,51.5
.target Thalia Amberhide
>>对话: |cRXP_FRIENDLY_萨利亚|r
.turnin 4904 >>交任务: |cRXP_FRIENDLY_终获解救|r
step << Warlock
#xprate <1.7
#completewith Manuscript
.goto Thousand Needles,44.12,37.22,20 >>进入洞穴
step << Warlock
#xprate <1.7
#completewith Manuscript
.goto Thousand Needles,44.41,36.40,20,0
.goto Thousand Needles,44.20,35.00,20,0
.goto Thousand Needles,44.31,32.87,20,0
.goto Thousand Needles,43.44,32.69,15 >>朝向|cRXP_PICK_受损胸部|r行进
step << Warlock
#xprate <1.7
.goto Thousand Needles,43.44,32.69
>>打开地面上的|cRXP_PICK_Damaged Chest|r。为|cRXP_Loot_纹身手稿|r掠夺它
.complete 1803,2 
step << Warlock
#xprate <1.7
#completewith next
.goto Thousand Needles,44.12,37.22,20 >>离开洞穴
step
#completewith next
.goto Thousand Needles,54.57,44.36,12,0
.goto Thousand Needles,53.71,42.59,10,0
.goto Thousand Needles,53.95,41.49,10 >>前往|cRXP_FRONDLY_Dorn|r
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.turnin 1151 >>交任务: |cRXP_FRIENDLY_力量的试炼|r
.target Dorn Plainstalker
step << !Shaman !Warrior
#xprate >1.6999
.line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
.line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
.line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
.line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
.line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
.goto Thousand Needles,51.89,43.02,40,0
.goto Thousand Needles,53.41,46.19,40,0
.goto Thousand Needles,54.05,44.96,40,0
.goto Thousand Needles,53.47,46.65,40,0
.goto Thousand Needles,52.61,48.28,40,0
.goto Thousand Needles,53.64,48.50,40,0
.goto Thousand Needles,51.48,48.06,40,0
.goto Thousand Needles,59.69,47.76,40,0
.goto Thousand Needles,62.21,47.76,40,0
.goto Thousand Needles,62.63,48.38,40,0
.goto Thousand Needles,64.01,47.52,40,0
.goto Thousand Needles,63.92,46.63,40,0
.goto Thousand Needles,63.10,45.53,40,0
.goto Thousand Needles,65.83,51.44,40,0
.goto Thousand Needles,65.44,50.11,40,0
.goto Thousand Needles,64.91,50.30,40,0
.goto Thousand Needles,66.11,49.91,40,0
.goto Thousand Needles,66.32,49.13,40,0
.goto Thousand Needles,59.79,58.16,40,0
.goto Thousand Needles,58.87,58.69,40,0
.goto Thousand Needles,57.66,57.70,40,0
.goto Thousand Needles,58.93,57.68,40,0
.goto Thousand Needles,58.94,56.55,40,0
.goto Thousand Needles,58.97,54.98,40,0
.goto Thousand Needles,59.32,53.69,40,0
.goto Thousand Needles,51.89,43.02
>>杀死|cRXP_ENEMY_Gravelsnout Surveyors|r、|cRXD_ENEMY_Gravelsnout Diggers|r和|cRXP_ENEMY_Gibblesnik|r（如果他在上面）。掠夺它们以获取|cRXP_OOT_Ore Sample|r
.complete 1153,1 
.unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
.goto Thousand Needles,67.59,63.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moktar|r
.turnin 1146 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.accept 1147 >>接任务: |cRXP_LOOT_疯狂的虫群|r
.target Moktar Krin
]])
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 32-34闪亮平板JJ
#version 25
#group RestedXP 部落 30-45
#next 34-38 荆棘谷 / 尘泥沼泽
#xprate >1.4999
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Kravel, |cRXP_FRIENDLY_菲兹尔|r, Wizzle, |cRXP_FRIENDLY_普兹克|r, Zherin
.accept 1110 >>接任务: |cRXP_LOOT_火箭车零件|r
.accept 1111 >>接任务: |cRXP_WARN_码头管理员迪兹维格|r
.accept 5762 >>接任务: |cRXP_LOOT_赫米特·奈辛瓦里|r
.goto Thousand Needles,77.78,77.27
.accept 1104 >>接任务: |cRXP_LOOT_含盐的蝎毒|r
.goto Thousand Needles,78.06,77.12
.accept 1105 >>接任务: |cRXP_LOOT_硬化龟壳|r
.goto Thousand Needles,78.14,77.12
.accept 1176 >>接任务: |cRXP_LOOT_减轻负重|r
.goto Thousand Needles,80.18,75.88
.accept 1175 >>接任务: |cRXP_LOOT_安全隐患|r
.goto Thousand Needles,81.63,77.95
.target Kravel Koalbeard
.target Fizzle Brassbolts
.target Wizzle Brassbolts
.target Pozzik
.target Trackmaster Zherin
step
>>地面上的织机|cRXP_Loot_火箭车零件|r
>>杀死|cRXP_ENEMY_Scorpid Reavers|r和|cRXD_ENEMY_Scorpid Terror|r。掠夺他们的|cRXP_Loot_Venom|r
>>杀死|cRXP_ENEMY_Sparkleshell乌龟|r和|cRXX_ENEMY_ Sparkleshell Borers |r。掠夺它们的|cRXD_Loot_硬化龟壳|r
>>|cRXP_WARN_尽量避免杀死|cRXP_ENEMY_Sparkleshell Snappers|r，因为它们非常坦克|r
>>杀死|cRXP_ENEMY_Saltstone Basilisk|r
>>杀死|cRXP_ENEMY_Salt Flats拾荒者|r。掠夺他们的|cRXX_Loot_Bones|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Salt Flats Scavengers|r cast|r|T135358:0|t[Execute]|cRXP-WARN_当你的健康状况低于20%时|r << Rogue/Warrior
>>杀死|cRXP_ENEMY_Saltstone水晶皮|r和|cRXX_ENEMY_Saltstone凝视者|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Saltstone Crystalhides|r铸造|r|T136170:0|t[Mana Burn] << !Rogue !Warrior
>>|cRXP_WARN_小心|cRXP_ENEMY_Saltstone凝视者|r施法|r|T132154:0|t[水晶凝视]|cRXP-WARN_（近战耗尽）|r
.complete 1110,1 
.goto Thousand Needles,84.06,82.00,60,0
.goto Thousand Needles,88.56,76.96,60,0
.goto Thousand Needles,86.90,72.23,60,0
.goto Thousand Needles,88.12,67.69,60,0
.goto Thousand Needles,87.82,65.82,60,0
.goto Thousand Needles,78.84,62.51,80,0
.goto Thousand Needles,85.99,59.45,60,0
.goto Thousand Needles,83.31,54.46,60,0
.goto Thousand Needles,80.82,55.68,60,0
.goto Thousand Needles,79.48,52.60,60,0
.goto Thousand Needles,76.29,52.98,60,0
.goto Thousand Needles,71.64,55.30,60,0
.goto Thousand Needles,69.26,61.49,60,0
.goto Thousand Needles,69.51,65.98,60,0
.goto Thousand Needles,71.64,73.36,60,0
.goto Thousand Needles,73.23,80.90,60,0
.loop 50,Thousand Needles,84.06,82.00,88.56,76.96,86.90,72.23,88.12,67.69,87.82,65.82,85.99,59.45,83.31,54.46,80.82,55.68,79.48,52.60,76.29,52.98,71.64,55.30,69.26,61.49,69.51,65.98,71.64,73.36,73.23,80.90,84.06,82.00
.complete 1104,1 
.goto Thousand Needles,71.59,74.22,50,0
.loop 50,Thousand Needles,71.59,74.22,71.05,72.56,70.97,68.79,69.47,64.42,71.99,65.92,74.95,64.90,73.44,61.91,72.42,59.43,71.77,58.10,74.55,58.53,74.34,54.34,75.87,54.27,75.88,51.16,77.71,51.40,78.57,52.74,78.86,54.73,82.85,59.98,83.95,62.60,82.78,66.31,83.71,71.62,82.64,73.35,76.97,73.71,72.38,73.30,71.59,74.22
.complete 1105,1 
.loop 50,Thousand Needles,69.47,67.05,70.11,65.82,70.76,63.39,69.37,59.98,73.20,58.42,74.54,62.91,75.42,64.24,74.98,61.38,76.74,59.03,74.12,55.34,74.98,52.08,77.22,54.11,81.26,52.82,82.02,54.40,82.86,54.82,83.99,54.20,83.26,57.79,83.64,60.36,80.21,66.44,77.20,68.33,76.43,70.35,77.57,72.28,76.46,72.50,69.47,67.05
.complete 1175,1 
.loop 50,Thousand Needles,69.70,68.11,71.13,65.70,71.33,64.91,68.79,61.48,69.82,60.22,73.89,59.61,73.38,56.68,74.26,53.25,76.44,52.17,76.64,54.47,76.17,56.48,76.80,57.41,75.46,57.28,75.83,62.30,77.22,60.80,77.83,59.58,78.58,59.12,78.46,61.48,80.85,60.42,80.47,64.47,79.14,63.59,79.37,65.60,77.59,65.11,78.13,63.27,71.70,67.52,69.70,68.11
.complete 1176,1 
.goto Thousand Needles,87.95,66.84,50,0
.loop 50,Thousand Needles,87.43,64.71,81.56,53.92,78.02,59.83,75.62,60.40,72.38,73.00,70.81,76.29,77.19,84.12,78.63,84.96,81.46,85.87,84.06,82.05,84.51,81.85,83.47,76.62,87.95,66.84,87.43,64.71
.complete 1175,2 
.loop 50,Thousand Needles,77.53,83.48,76.55,84.70,76.21,86.62,77.62,86.46,77.66,87.96,77.74,90.18,78.54,89.69,79.08,88.67,79.42,89.56,80.25,88.76,79.35,87.11,78.73,86.84,79.10,85.83,77.53,83.48
.complete 1175,3 
.loop 50,Thousand Needles,77.53,83.48,76.55,84.70,76.21,86.62,77.62,86.46,77.66,87.96,77.74,90.18,78.54,89.69,79.08,88.67,79.42,89.56,80.25,88.76,79.35,87.11,78.73,86.84,79.10,85.83,77.53,83.48
.mob Scorpid Reaver
.mob Scorpid Terror
.mob Salt Flats Scavenger
.mob Sparkleshell Tortoise
.mob Sparkleshell Borer
.mob Sparkleshell Snapper
.mob Saltstone Basilisk
.mob Saltstone Crystalhide
.mob Saltstone Gazer
step
.loop 45,Thousand Needles,70.58,82.39,71.81,83.64,71.09,86.04,71.00,86.90,70.07,86.97,70.20,88.51,69.20,89.23,68.53,88.14,67.99,87.07,67.96,85.92,65.65,86.30,65.15,85.17,63.87,85.92,65.15,85.17,65.65,86.30,67.96,85.92,67.38,83.63,67.07,82.42,68.09,81.75,69.63,81.21,70.58,82.39
>>杀死|cRXP_ENEMY_Silithid搜索者|r、|cRXD_ENEMY_Silithid Hive无人机|r、| cRXP__ENEMY_Silihid入侵者|r和|cRXP_ENEMY_ Silithid掠夺者|r（如果它启动）。为|T135034:0|t[|cRXP_Loot_Cracked Silithid Carapace|r]掠夺它们
>>|cRXP_WARN_使用|T135034:0|t[|cRXP_LOOT_Cracked Silithid Carapace|r]开始任务|r
.collect 5877,1,1148,1 
.accept 1148 >>接任务: |cRXP_LOOT_虫群的样本|r
.use 5877
.mob Silithid Searcher
.mob Silithid Hive Drone
.mob Silithid Invader
.unitscan Silithid Ravager
step
#completewith next
.loop 45,Thousand Needles,70.58,82.39,71.81,83.64,71.09,86.04,71.00,86.90,70.07,86.97,70.20,88.51,69.20,89.23,68.53,88.14,67.99,87.07,67.96,85.92,65.65,86.30,65.15,85.17,63.87,85.92,65.15,85.17,65.65,86.30,67.96,85.92,67.38,83.63,67.07,82.42,68.09,81.75,69.63,81.21,70.58,82.39
>>杀死|cRXP_ENEMY_Silithid Hive无人机|r、|cRXD_ENEMY_Silithid搜索者|r、| cRXP__ENEMY_Silihid入侵者|r和|cRXP_ENEMY_ Silithid掠夺者|r（如果已启动）。掠夺他们的|cRXP_Loot_Silithid Hearts|r、|cRXD_Loot_Silthid Talons|r和|cRXP_Loot_Intact Silithid Carspaces|r
.complete 1147,1 
.complete 1147,2 
.complete 1148,1 
.complete 1148,2 
.complete 1148,3 
.mob Silithid Hive Drone
.mob Silithid Searcher
.unitscan Silithid Ravager
step
.goto Thousand Needles,66.90,86.18,40,0
.goto Thousand Needles,65.77,86.21,20,0
.goto Thousand Needles,65.12,85.16,20,0
.goto Thousand Needles,63.52,85.80,40,0
.goto Thousand Needles,66.90,86.18,50,0
>>杀死洞穴内的|cRXP_ENEMY_Silithid入侵者|r。它们与洞穴内的|cRXP_ENEMY_Silithid Hive Drones|r共享产卵
>>|cRXP_WARN_你可能需要第二次回到洞穴|r
.complete 1147,3 
.mob Silithid Invader
step
#completewith next
>>杀死|cRXP_ENEMY_Silithid Hive无人机|r、|cRXD_ENEMY_Silithid搜索者|r、| cRXP__ENEMY_Silihid入侵者|r和|cRXP_ENEMY_ Silithid掠夺者|r（如果已启动）。掠夺他们的|cRXP_Loot_Silithid Hearts|r、|cRXD_Loot_Silthid Talons|r和|cRXP_Loot_Intact Silithid Carspaces|r
.complete 1147,2 
.complete 1148,1 
.complete 1148,2 
.complete 1148,3 
.mob Silithid Hive Drone
.mob Silithid Invader
.unitscan Silithid Ravager
step
.loop 45,Thousand Needles,70.58,82.39,71.81,83.64,71.09,86.04,71.00,86.90,70.07,86.97,70.20,88.51,69.20,89.23,68.53,88.14,67.99,87.07,67.96,85.92,67.96,85.92,67.38,83.63,67.07,82.42,68.09,81.75,69.63,81.21,70.58,82.39
>>在洞穴外杀死|cRXP_ENEMY_Silithid搜索者|r
.complete 1147,1 
.mob Silithid Searcher
step
.loop 45,Thousand Needles,70.58,82.39,71.81,83.64,71.09,86.04,71.00,86.90,70.07,86.97,70.20,88.51,69.20,89.23,68.53,88.14,67.99,87.07,67.96,85.92,65.65,86.30,65.15,85.17,63.87,85.92,65.15,85.17,65.65,86.30,67.96,85.92,67.38,83.63,67.07,82.42,68.09,81.75,69.63,81.21,70.58,82.39
>>杀死|cRXP_ENEMY_Silithid Hive无人机|r、洞穴外的|cRXD_ENEMY_Silithid搜索者|r、洞内的|cRXP_ENEMY_Silithid入侵者|r和|cRXP_ENEMY_ Silithid掠夺者|r（如果已经启动）。掠夺他们的|cRXP_Loot_Silithid Hearts|r、|cRXD_Loot_Silthid Talons|r和|cRXP_Loot_Intact Silithid Carspaces|r
.complete 1147,2 
.complete 1148,1 
.complete 1148,2 
.complete 1148,3 
.mob Silithid Hive Drone
.mob Silithid Searcher
.mob Silithid Invader
.unitscan Silithid Ravager
step
.goto Thousand Needles,67.59,63.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moktar|r
.turnin 1147 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.target Moktar Krin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Kravel, |cRXP_FRIENDLY_菲兹尔|r, Wizzle, |cRXP_FRIENDLY_普兹克|r, Zherin
.turnin 1110 >>交任务: |cRXP_FRIENDLY_火箭车零件|r
.goto Thousand Needles,77.78,77.27
.turnin 1104 >>交任务: |cRXP_FRIENDLY_含盐的蝎毒|r
.goto Thousand Needles,78.06,77.12
.turnin 1105 >>交任务: |cRXP_FRIENDLY_硬化龟壳|r
.accept 1107 >>接任务: |cRXP_LOOT_坚硬的尾鳍|r << Druid/Warlock
.goto Thousand Needles,78.14,77.12
.accept 1106 >>接任务: |cRXP_LOOT_流放者马特克|r
.goto Thousand Needles,78.06,77.12
.turnin 1176 >>交任务: |cRXP_FRIENDLY_减轻负重|r
.accept 1178 >>接任务: |cRXP_LOOT_地精赞助商|r
.goto Thousand Needles,80.18,75.88
.turnin 1175 >>交任务: |cRXP_FRIENDLY_安全隐患|r
.goto Thousand Needles,81.63,77.95
.target Kravel Koalbeard
.target Fizzle Brassbolts
.target Wizzle Brassbolts
.target Pozzik
.target Trackmaster Zherin
step
#completewith Bulkrek
.abandon 1152 >>放弃知识测试
step
.loop 50,Thousand Needles,77.53,83.48,76.55,84.70,76.21,86.62,77.62,86.46,77.66,87.96,77.74,90.18,78.54,89.69,79.08,88.67,79.42,89.56,80.25,88.76,79.35,87.11,78.73,86.84,79.10,85.83,77.53,83.48
.xp 32 >>升级到32级
step
#completewith next
.goto Thousand Needles,74.36,93.86,30,0
.goto Thousand Needles,74.43,95.46,25,0
.goto Tanaris,51.14,20.85,30,0
.goto Tanaris,51.02,23.76,40,0
.goto Tanaris,51.60,25.44,30 >>前往|cRXP_FRIENDLY_Bulkrek|r
step
#label Bulkrek
.goto Tanaris,51.60,25.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fp Gadgetzan >>获取Gadgetzan飞行路线
.target Bulkrek Ragefist
step << Druid
#completewith Moonglade1
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
.xp <32,1
step << Druid
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 6778 >>训练你的职业技能
.target Loganaar
.xp <32,1
.xp >34,1
step << Druid
#label Moonglade1
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 3627 >>训练你的职业技能
.target Loganaar
.xp <34,1
step
#completewith SwarmPT
.hs >>Hearth to Freewind Post公司公司
step << Tauren
#completewith next
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Nyse
.zoneskip Thunder Bluff
.skill riding,75,1
step << Tauren
.goto Mulgore,47.65,58.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kar|r
.skill riding,75 >>火车|T136103:0|t（学徒骑马）
.target Kar Stormsinger
.money <4.5 << wotlk
.money <42.25 << tbc
step << Tauren
.goto Mulgore,47.49,58.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harb|r
+|cRXP_BUY_从他那里买任何你喜欢的|r|T132243:0|t[Kodo]|cRXP_Buy_|r
.target Harb Clawhoof
.itemcount 15277,<1 
.itemcount 15290,<1 
.itemcount 46100,<1 << wotlk 
.money <0.9 << wotlk
.money <9.0000 << tbc
.skill riding,<75,1
step << Tauren
.cast 55884 >>使用|T132243:0|t[Gray Kodo]学习
.use 15277
.itemcount 15277,1
.skill riding,75,1
step << Tauren
.cast 55884 >>使用|T132245:0|t[Brown Kodo]学习
.use 15290
.itemcount 15290,1
.skill riding,75,1
step << Tauren wotlk
.cast 55884 >>使用|T132243:0|t[White Kodo]学习
.use 46100
.itemcount 46100,1
.skill riding,75,1

step << Tauren
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132243:0|t[Gray Kodo]|cRXP_WARN_拖动到动作栏中|r
.cast 18989 >>安装您的|T132243:0|t[灰色Kodo]
.train 18989,3
.zoneskip Mulgore,1
step << Tauren
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132245:0|t[Brown Kodo]|cRXP_WARN_拖动到动作栏中|r
.cast 18990 >>安装您的|T132245:0|t[棕色Kodo]
.train 18990,3
.zoneskip Mulgore,1
step << Tauren wotlk
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132243:0|t[White Kodo]|cRXP_WARN_拖动到动作栏中|r
.cast 64657 >>安装您的|T132243:0|t[白色Kodo]
.train 64657,3
.zoneskip Mulgore,1

step << Tauren
#label BarrensTr
#completewith next
.goto The Barrens,41.40,58.55
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
.zoneskip Mulgore,1
step << !Shaman !Warrior
#xprate >1.6999
#requires BarrensTr << Tauren
#completewith next
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Camp Taurajo >>飞往陶拉霍营地
.zoneskip The Barrens
.target Nyse
step << !Shaman !Warrior
#xprate >1.6999
.goto The Barrens,45.10,57.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
.turnin 1153 >>交任务: |cRXP_FRIENDLY_新的矿石样本|r
.target Tatternack Steelforge
step
#xprate <1.7
#requires BarrensTr
#label BarrensFly
#completewith next
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Crossroads >>飞向十字路口
.target Nyse
.zoneskip The Barrens
step
#requires BarrensFly
.goto The Barrens,44.44,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Crossroads >>飞向十字路口
.target Omusa Thunderhorn
step
#label SwarmPT
.goto The Barrens,51.07,29.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
.turnin 1148 >>交任务: |cRXP_FRIENDLY_虫群的消息|r
.accept 1184 >>接任务: |cRXP_LOOT_虫群的样本|r
.target Korran
step << Mage
#label TeleportOrg
#completewith PartsOTS
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.itemcount 17031,1
.zoneskip Orgrimmar
step
#requires TeleportOrg << Mage
#completewith PartsOTS
.goto The Barrens,51.50,30.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Devrak
.zoneskip The Barrens,1
step << Mage
#xprate >1.6999
.goto Orgrimmar,38.45,86.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪诺|r, 他在楼下
.train 8422 >>训练你的职业技能
.target Deino
.xp <32,1
.xp >34,1
step << Mage
#xprate >1.6999
.goto Orgrimmar,38.45,86.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪诺|r, 他在楼下
.train 8422 >>训练你的职业技能
.target Deino
.xp <34,1
step << Mage
#xprate <1.7
.goto Orgrimmar,38.45,86.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪诺|r, 他在楼下
.train 8422 >>训练你的职业技能
.target Deino
.xp <32,1
.xp >34,1
step << Mage
#xprate <1.7
.goto Orgrimmar,38.45,86.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪诺|r, 他在楼下
.train 8422 >>训练你的职业技能
.target Deino
.xp <34,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔库|r
.train 9473 >>训练你的职业技能
.target Ur'kyo
.xp <32,1
.xp >34,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔库|r
.train 8105 >>训练你的职业技能
.target Ur'kyo
.xp <34,1
step << Shaman
.goto Orgrimmar,38.81,36.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 8499 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <32,1
.xp >34,1 << wotlk
step << Shaman wotlk
.goto Orgrimmar,38.81,36.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 52131 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <34,1
step << Paladin
.goto Orgrimmar,32.29,35.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派雷亚诺|r
.train 19836 >>训练你的职业技能
.target Master Pyreanor
.xp <32,1
.xp >34,1
step << Paladin
.goto Orgrimmar,32.29,35.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派雷亚诺|r
.train 642 >>训练你的职业技能
.target Master Pyreanor
.xp <34,1
step << Rogue
.goto Orgrimmar,43.90,54.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8623 >>训练你的职业技能
.target Ormok
.xp <32,1
.xp >34,1
step << Rogue
.goto Orgrimmar,43.90,54.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8696 >>训练你的职业技能
.target Ormok
.xp <34,1
step << skip
.goto Orgrimmar,47.99,45.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗达尔|r
.train 6213 >>训练你的职业技能
.target Grol'dar

step
#completewith next
.goto Orgrimmar,62.56,38.52,20,0 << Paladin/Shaman
.goto Orgrimmar,62.98,39.35,20,0 << !Paladin !Shaman
.goto Orgrimmar,64.34,38.17,20,0
.goto Orgrimmar,75.23,34.24,20 >>前往|cRXP_FRIENDLY_Belgrom|r
step
.goto Orgrimmar,75.23,34.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 1184 >>交任务: |cRXP_FRIENDLY_虫群的消息|r
.target Belgrom Rockmaul
step << Warrior
.goto Orgrimmar,80.39,32.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索瑞克|r
.train 11549 >>训练你的职业技能
.target Sorek
.xp <32,1
.xp >34,1
step << Warrior
.goto Orgrimmar,80.39,32.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索瑞克|r
.train 7379 >>训练你的职业技能
.target Sorek
.xp <34,1
step << Orc !Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r, |cRXP_FRIENDLY_奥古纳罗|r
.skill riding,75 >>列车|T136103:0|t[学徒骑行]从|cRXP_FRIENDLY_Kildar|r
.goto Orgrimmar,69.41,13.11
+|cRXP_BUY_购买您喜欢的|r|T132224:0|t[Wolf]|cRXP_Buy_|r
.goto Orgrimmar,69.38,12.25
.target Kildar
.target Ogunaro Wolfrunner
.itemcount 1132,<1 
.itemcount 5665,<1 
.itemcount 5668,<1 
.itemcount 46099,<1 << wotlk 
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
step << Orc !Warlock
.cast 55884 >>使用|T132224:0|t[木狼之角]学习
.use 1132
.itemcount 1132,1
.skill riding,75,1
step << Orc !Warlock
.cast 55884 >>使用|T132266:0|t[恶狼之角]学习
.use 5665
.itemcount 5665,1
.skill riding,75,1
step << Orc !Warlock
.cast 55884 >>使用|T132224:0|t[褐狼之角]学习
.use 5668
.itemcount 5668,1
.skill riding,75,1
step << Orc !Warlock wotlk
.cast 55884 >>使用|T132224:0|t[黑狼之角]学习
.use 46099
.itemcount 46099,1
.skill riding,75,1
step << Orc !Warlock
#completewith OrgTrain
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132224:0|t[Timber Wolf]|cRXP_WARN_拖动到动作栏中|r
.cast 580 >>安装您的|T132224:0|t[木狼]
.train 580,3
step << Orc !Warlock
#completewith OrgTrain
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132266:0|t[Dire Wolf]|cRXP_WARN_拖动到动作栏中|r
.cast 6653 >>安装您的|T132266:0|t[Dire Wolf]
.train 6653,3
step << Orc !Warlock
#completewith OrgTrain
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132224:0|t[Brown Wolf]|cRXP_WARN_拖动到动作栏中|r
.cast 6654 >>安装您的|T132224:0|t[棕色狼]
.train 6654,3
step << Orc !Warlock wotlk
#completewith OrgTrain
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132224:0|t[黑狼]|cRXP_WARN_拖动到动作栏中|r
.cast 64658 >>安装您的|T132224:0|t[黑狼]
.train 64658,3
step << skip
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 1543 >>训练你的职业技能
.target Ormak Grimshot

step
.goto Orgrimmar,54.10,68.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
.home >>将您的炉石设置为Orgrimmar
.target Innkeeper Gryshka
step << Undead Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.itemcount 17031,1
.skill riding,75,1
.money <4.5 << wotlk
.money <42.25 << tbc
.train 3563,3
.zoneskip Undercity
.zoneskip Tirisfal Glades
step << Undead Mage
.goto Undercity,82.77,15.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜|r
.vendor >>|cRXP_BUY_从她那里购买最多20个|r|T134419:0|t[Teleportation符文]|cRXP_Buy_|r
.target Horthus
.skill riding,75,1
.money <6.3125 << wotlk
.money <44.05 << tbc
.itemcount 17031,<20
.train 3563,3
.target Hannah Akeley
step << Undead Mage
#completewith next
.goto Undercity,82.28,15.47
.goto Undercity,67.90,15.29,30 >>|cRXP_WARN_执行注销跳过，将角色定位在最低楼梯的最高部分，直到看起来像是漂浮的，然后注销并返回|r
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >>单击此处
.skill riding,75,1
.money <4.5 << wotlk
.money <42.25 << tbc
.train 3563,3
.zoneskip Tirisfal Glades
step << Undead Mage
.goto Undercity,66.21,4.90,15,0
.goto Tirisfal Glades,61.73,64.87
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.skill riding,75,1
.money <4.5 << wotlk
.money <42.25 << tbc
.train 3563,3
step << Undead !Warlock
#completewith next
.goto Orgrimmar,52.26,88.65,30,0
.goto Orgrimmar,49.42,90.90,30,0
.goto Orgrimmar,49.59,94.74,30,0
.goto Durotar,50.61,13.27
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
.zoneskip Undercity
.zoneskip Tirisfal Glades
step << Undead !Warlock
.goto Durotar,50.61,13.27,12,0
.goto Durotar,50.82,13.07,6,0
.goto Durotar,50.83,13.27,6,0
.goto Durotar,50.82,13.07,6,0
.goto Durotar,50.83,13.27,6,0
.goto Durotar,50.82,13.07,6,0
.goto Durotar,50.83,13.27,6,0
.goto Durotar,50.89,14.14,-1
.goto Durotar,56.75,15.11,-1
>>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
.zoneskip Undercity
step << Undead !Warlock
.goto Tirisfal Glades,60.08,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velma|r
.skill riding,75 >>火车|T136103:0|t（学徒骑马）
.target Velma Warnam
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
step << Undead !Warlock
.goto Tirisfal Glades,59.87,52.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_撒迦利亚·普斯特|r
+|cRXP_BUY_从他那里买任何你喜欢的|r|T132264:0|t[Skeletal Horse]|cRXP_Buy_|r
.target Zachariah Post
.itemcount 13331,<1 
.itemcount 13332,<1 
.itemcount 13333,<1 
.itemcount 46308,<1 
.money <0.9 << wotlk
.money <9.0000 << tbc
.skill riding,<75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[红色骷髅马]学习
.use 13331
.itemcount 13331,1
.skill riding,75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[蓝色骷髅马]学习
.use 13332
.itemcount 13332,1
.skill riding,75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[棕色骷髅马]学习它
.use 13333
.itemcount 13333,1
.skill riding,75,1
step << Undead !Warlock
.cast 55884 >>使用|T132264:0|t[黑色骷髅马]学习
.use 46308
.itemcount 46308,1
.skill riding,75,1
step << Undead !Warlock
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132264:0|t[红骷髅马]|cRXP_WARN_拖动到动作栏中|r
.cast 17462 >>骑上您的|T132264:0|t[红色骷髅马]
.train 17472,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead !Warlock
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132264:0|t[Blue Skeletal Horse]|cRXP_WARN_拖动到动作栏中|r
.cast 17463 >>骑上您的|T132264:0|t[蓝色骷髅马]
.train 17463,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead !Warlock
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132264:0|t[Brown Skeletal Horse]|cRXP_WARN_拖动到动作栏中|r
.cast 17464 >>骑上您的|T132264:0|t[棕色骷髅马]
.train 17464,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead !Warlock wotlk
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132264:0|t[黑骨马]|cRXP_WARN_拖动到动作栏中|r
.cast 64977 >>骑上您的|T132264:0|t[黑色骷髅马]
.train 64977,3
.zoneskip Undercity
.zoneskip Durotar
.zoneskip Orgrimmar
step << Undead
#completewith next
.hs >>前往: 奥格瑞玛
.cooldown item,6948,>0
.zoneskip Orgrimmar
step << Undead Mage
#completewith Dizzywig
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step << Troll
#completewith next
.goto Orgrimmar,52.26,88.65,30,0
.goto Orgrimmar,49.42,90.90,30,0
.goto Orgrimmar,48.50,95.12
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.money <4.5 << wotlk
.money <42.25 << tbc
.zoneskip Orgrimmar,1
.skill riding,75,1
step << Troll
#completewith next
.goto Durotar,49.41,20.97,35,0
.goto Durotar,50.21,26.30,35,0
.goto Durotar,49.93,28.80,35,0
.goto Durotar,52.26,34.68,35,0
.goto Durotar,55.28,75.48,50 >>向|cRXP_FRIENDLY_Xar'Ti|r行进
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
step << Troll
.goto Durotar,55.28,75.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r
.skill riding,75 >>火车|T136103:0|t（学徒骑马）
.target Xar'Ti
.money <4.5 << wotlk
.money <42.25 << tbc
.skill riding,75,1
step << Troll
.goto Durotar,55.23,75.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖尼尔|r
+|cRXP_BUY_从他那里买任何你喜欢的|r|T132253:0|t[Raptor Whistle]|cRXP_Buy_|r
.target Zjolnir
.itemcount 8588,<1 
.itemcount 8591,<1 
.itemcount 8592,<1 
.money <0.9 << wotlk
.money <9.0000 << tbc
.skill riding,<75,1
step << Troll
.cast 55884 >>使用|T132253:0|t[翡翠猛禽的哨声]学习它
.use 8588
.itemcount 8588,1
.skill riding,75,1
step << Troll
.cast 55884 >>使用|T132253:0|t[绿松石猛禽的哨声]学习它
.use 8591
.itemcount 8591,1
.skill riding,75,1
step << Troll
.cast 55884 >>使用|T132253:0|t[紫罗兰猛禽的哨声]学习它
.use 8592
.itemcount 8592,1
.skill riding,75,1
step << Troll
#completewith Bragok2
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132253:0|t[Emerald Raptor]|cRXP_WARN_拖动到动作栏中|r
.cast 8395 >>安装您的|T132253:0|t[翡翠猛禽]
.train 8395,3
.zoneskip Orgrimmar
step << Troll
#completewith Bragok2
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132253:0|t[Turquoise Raptor]|cRXP_WARN_拖动到动作栏中|r
.cast 10796 >>安装您的|T132253:0|t[绿松石猛禽]
.train 10796,3
.zoneskip Orgrimmar
step << Troll
#completewith Bragok2
>>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
>>|cRXP_WARN_将|r|T132253:0|t[Violet Raptor]|cRXP_WARN_拖动到动作栏中|r
.cast 10799 >>安装您的|T132253:0|t[紫罗兰猛禽]
.train 10799,3
.zoneskip Orgrimmar
step << Troll
#completewith Bragok2
.goto Durotar,46.94,69.10,100,0
.goto Durotar,46.02,69.32,40,0
.goto Durotar,41.38,73.54,15,0
.goto Durotar,66.29,35.94,30,0
.goto The Barrens,63.08,37.16,30 >>前往|cRXP_FRIENDLY_Bragok|r
.zoneskip Durotar,1
step
#completewith next
.goto Orgrimmar,47.41,65.07,10,0
.goto Orgrimmar,46.59,64.54,6,0
.goto Orgrimmar,46.75,63.84,6,0
.goto Orgrimmar,46.59,64.54,6,0
.goto Orgrimmar,46.75,63.84,6,0
.goto Orgrimmar,46.59,64.54,6,0
.goto Orgrimmar,46.75,63.84,6,0
.goto Orgrimmar,45.12,63.88,10 >>向上行进至|cRXP_FRIENDLY_Doras|r
step
#completewith Dizzywig
.goto Orgrimmar,45.12,63.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >>飞到棘轮
.target Doras
.zoneskip Orgrimmar,1
step << Warlock
#xprate >1.6999
.goto The Barrens,62.63,35.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 2996 >>交任务: |cRXP_FRIENDLY_寻找斯坦哈德|r
.accept 1801 >>接任务: |cRXP_LOOT_阴谋之书|r
.target Strahad Farsan
step << Warlock
.goto The Barrens,62.44,35.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴巴加亚·影隙|r
.train 6213 >>训练你的职业技能
.target Babagaya Shadowcleft
.xp <32,1
.xp >34,1
step << Warlock
.goto The Barrens,62.44,35.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴巴加亚·影隙|r
.train 7648 >>训练你的职业技能
.target Babagaya Shadowcleft
.xp <34,1
step
.goto The Barrens,62.78,36.43,15,0
.goto The Barrens,62.68,36.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
.turnin 1178 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1180 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Gazlowe
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兹科尔|r
.goto The Barrens,62.68,37.39,10 >>如果需要，将任何项目存入银行
.target Zikkel
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahreen|r
.turnin 874 >>交任务: |cRXP_FRIENDLY_玛伦·星眼|r
.accept 873 >>接任务: |cRXP_LOOT_依沙瓦克|r
.goto The Barrens,65.84,43.86
.target Mahren Skyseer
step << Shaman/Warrior
#xprate >1.6999 << Shaman
.goto The Barrens,65.51,47.32,70,0
.goto The Barrens,64.21,50.70,70,0
.goto The Barrens,63.63,53.85,70,0
.loop 70,The Barrens,65.51,47.32,64.21,50.70,63.63,53.85
>>杀死|cRXP_ENEMY_Isha Awak|r。为Isha Awak的|cRXP_Loot_心脏而掠夺他|r
.complete 873,1 
.unitscan Isha Awak
step << Warrior
#completewith next
.goto The Barrens,65.42,48.11,70,0
.goto The Barrens,68.61,49.16,30 >>前往|cRXP_FRIENDLY_Klanno|r
step << Warrior
.goto The Barrens,68.61,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰诺克·马克雷德|r
.turnin 1718 >>交任务: |cRXP_FRIENDLY_岛民|r
.accept 1719 >>接任务: |cRXP_LOOT_格斗考验|r
.target Klannoc Macleod
step << Warrior
#completewith next
.goto The Barrens,68.61,48.72
>>踏上格栅开始活动
.complete 1719,2 
.timer 8,The Affray RP
step << Warrior
.goto The Barrens,68.61,48.72
>>|cRXP_WARN_等待RP|r
>>逐个杀死前来的|cRXP_ENEMY_Affrey Challenger|r
>>杀死所有|cRXP_ENEMY_Affrey Challenger|r后杀死|cRXP_ENEMY_Big Will|r
>>|cRXP_WARN_杀死所有|r|cRXP_ENEMY_Affrey挑战者后即可进食|r
.complete 1719,1 
.mob Affray Challenger
.mob Big Will
step << Warrior
.goto The Barrens,68.61,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰诺克·马克雷德|r
.turnin 1719 >>交任务: |cRXP_FRIENDLY_格斗考验|r

.target Klannoc Macleod
step << Shaman/Warrior
#xprate >1.6999 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Mahreen, |cRXP_FRIENDLY_水之先知伊斯伦|r << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahreen|r << Warrior
.turnin 873 >>交任务: |cRXP_FRIENDLY_依沙瓦克|r
.goto The Barrens,65.77,48.02,50,0 << Warrior
.goto The Barrens,65.84,43.86
.turnin 220 >>交任务: |cRXP_FRIENDLY_水之召唤|r << Shaman
.accept 63 >>接任务: |cRXP_LOOT_水之召唤|r << Shaman
.goto The Barrens,65.83,43.77 << Shaman
.target Mahren Skyseer
.target Islen Waterseer << Shaman
step << Shaman
#xprate <1.7
.goto The Barrens,65.83,43.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
.turnin 96 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Islen Waterseer
step
#label Dizzywig
.goto The Barrens,63.01,38.16,20 << Shaman/Warrior
.goto The Barrens,63.35,38.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员迪兹维格|r
.turnin 1111 >>交任务: |cRXP_FRIENDLY_码头管理员迪兹维格|r
.accept 1112 >>接任务: |cRXP_LOOT_给克拉维尔的零件|r
.target Wharfmaster Dizzywig
step
.goto The Barrens,63.83,38.66,20,0
.goto The Barrens,63.83,38.66,-1
.goto The Barrens,66.31,39.27,-1
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
]])
RXPGuides.RegisterGuide([[
#version 25
#wotlk
#tbc
#group RestedXP WLK的准备
#defaultfor None
#name !如何使用本指南
#hidewindow
step
#sticky
+欢迎使用RXP 70-71准备指南！
+从“收藏物品”和“启动准备指南”章节开始，因为它们将为您在启动时提交的所有任务做好准备。完整地完成它们，把它说要交的所有任务交上来。这些是您在开放世界中留下的任务线，而不是您保存在任务日志中的任务！
+接下来，做25个任务日志指南，这些是你在任务日志中留下的任务。建议您完成大约24个任务，而不是全部25个任务，以确保在发布日有足够的空间来完成准备好的任务。在上一步之前不要执行此指南，否则您需要回溯！
+然后查看“当日转弯速度助手”以加快路线转弯速度
+最后，您可以在发布日使用《入住指南》！
+目前，《入住指南》尚未发布，以防止意外使用，请密切关注我们社区的不和谐，以跟上时代的步伐
step << skip
+完成指南后，强烈建议您将角色复制到PTR，并在PTR上对《转入指南》进行测试，以便更好地了解路线！
]])
RXPGuides.RegisterGuide([[
#version 25
#wotlk
#tbc
#group RestedXP WLK的准备
#defaultfor None
#name 可收集项目
step
#completewith questdrops
#sticky
+指南的这一章是从开始任务的怪物身上掉落的所有物品。强烈建议您遵循它完成任务，即使这意味着要为精英任务找到一个团队。
step
#sticky
.reputation 1015,friendly >>与荷兰之翼友好相处。
step
.isQuestAvailable 10804
.goto Shadowmoon Valley,59.4,58.6
>>这个任务线会让你和荷兰之翼很友好，这会给你很多潜在的经验。
* 任务给予者可能正在与岩石钉子战斗，甚至会被他们杀死，你可能需要等待他重生。
.accept 10804 >>接任务: |cRXP_LOOT_友善|r
step
.isOnQuest 10804
.goto Shadowmoon Valley,62.4,58.6
.use 31372 >>杀死并掠夺该地区的Rocknail Flayers以获取他们的尸体。然后把它们的尸体放在地上喂给荷兰龙。
*Make sure to travel a bit when laying the meat, as the same drakes won't eat twice in a row
.complete 10804,1 
step
.isOnQuest 10804
.goto Shadowmoon Valley,59.4,58.6
>>任务给予者可能正在与岩石钉子战斗，甚至会被他们杀死，你可能需要等待他重生。
.turnin 10804 >>交任务: |cRXP_FRIENDLY_友善|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,59.4,58.6
.accept 10811 >>接任务: |cRXP_LOOT_寻找奈尔萨拉库|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,61.8,60.0,80,0
.goto Shadowmoon Valley,66.2,60.4,80,0
.goto Shadowmoon Valley,61.8,60.0
>>她是一条幽灵般的巨龙，在荷兰飞翔，可能需要四处寻找她。
.unitscan Neltharaku
.turnin 10811 >>交任务: |cRXP_FRIENDLY_寻找奈尔萨拉库|r
.accept 10814 >>接任务: |cRXP_LOOT_奈尔萨拉库的故事|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,61.8,60.0
.skipgossip
>>与Neltharaku交谈
.turnin 10814 >>交任务: |cRXP_FRIENDLY_奈尔萨拉库的故事|r
.accept 10836 >>接任务: |cRXP_LOOT_攻击龙喉要塞|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,66.0,60.0
>>杀死该地区所有的龙嘴兽，除了人以外，其他人都会加入任务
.complete 10836,1 
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,61.8,60.0
>>找到并杀死渗透者Hameya。他在这个地区闲逛。抢走他的钥匙。
.unitscan Neltharaku
.turnin 10836 >>交任务: |cRXP_FRIENDLY_攻击龙喉要塞|r
.accept 10837 >>接任务: |cRXP_LOOT_前往灵翼浮岛！|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,66.0,80.0,60,0
.goto Shadowmoon Valley,66.3,82.3,30,0
.goto Shadowmoon Valley,67.3,81.7,30,0
.goto Shadowmoon Valley,68.3,79.8,30,0
.goto Shadowmoon Valley,71.7,83.1,30,0
.goto Shadowmoon Valley,76.7,83.3,60,0
.goto Shadowmoon Valley,66.0,80.0
>>掠夺该地区的荷兰水晶。“寻找矿物”可以追踪它们，尽管它们看起来像植物。
.complete 10837,1 
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,61.8,60.0
.unitscan Neltharaku
>>找到尼特哈拉库在尼日翼原野上空飞行
.turnin 10837 >>交任务: |cRXP_FRIENDLY_前往灵翼浮岛！|r
.accept 10854 >>接任务: |cRXP_LOOT_奈尔萨拉库之力|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,71.0,64.0 
.use 31652 >>在被奴役的龙兽身上使用水晶。不要站得太近，否则他们会攻击你而不是兽人。
*The drakes are very weak and will charge nearby orcs after freeing them, be quick to help them in combat or they will die.
.complete 10854,1 
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,61.8,60.0
.unitscan Neltharaku
>>找到尼特哈拉库在尼日翼原野上空飞行
.turnin 10854 >>交任务: |cRXP_FRIENDLY_奈尔萨拉库之力|r
.accept 10858 >>接任务: |cRXP_LOOT_卡瑞纳库|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,69.8,61.4
>>在要塞的二楼找到Karynaku
.unitscan Karynaku
.turnin 10858 >>交任务: |cRXP_FRIENDLY_卡瑞纳库|r
.accept 10872 >>接任务: |cRXP_LOOT_疲惫的祖鲁希德|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,71.0,62.2
>>这是一个精英任务，你可能需要帮助。杀死祖鲁希德，抢夺他的钥匙。
.complete 10872,2
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,69.8,61.4
.use 31664 >>用Karynaku锁链上的钥匙来释放她。
.complete 10872,1
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,69.8,61.4
.turnin 10872 >>交任务: |cRXP_FRIENDLY_疲惫的祖鲁希德|r
.accept 10871 >>接任务: |cRXP_LOOT_灵翼之盟|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,59.4,58.6
>>任务给予者可能正在与岩石钉子战斗，甚至会被他们杀死，你可能需要等待他重生。
.turnin 10871 >>交任务: |cRXP_FRIENDLY_灵翼之盟|r
.accept 11012 >>接任务: |cRXP_LOOT_灵翼血誓|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,59.4,58.6
.turnin 11012 >>交任务: |cRXP_FRIENDLY_灵翼血誓|r
.accept 11013 >>接任务: |cRXP_LOOT_为伊利达雷效力|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,66.2,85.6
.turnin 11013 >>交任务: |cRXP_FRIENDLY_为伊利达雷效力|r
.accept 11014 >>接任务: |cRXP_LOOT_会见工头|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,66.0,86.4
.turnin 11014 >>交任务: |cRXP_FRIENDLY_会见工头|r
step
.isQuestAvailable 11041
.goto Shadowmoon Valley,73.4,86.0
>>杀死贪婪的阿沃尔并掠夺他。他是精英，你可能需要一个团队。
* Note, sometimes only one person per kill can loot the item, you may need to kill him multiple times.
.unitscan Arvoar the Rapacious
.collect 32621,1,11041,1
step
.isQuestAvailable 11041
.goto Shadowmoon Valley,73.4,86.0
.use 32621 >>使用包中的部分消化手接受任务
.accept 11041 >>接任务: |cRXP_LOOT_未完的工作......|r
step
.isOnQuest 11041
.goto Shadowmoon Valley,70.4,84.6
>>杀死该地区的Overmine Flayers和Den Mother Barash
.unitscan Barash the Den Mother
.complete 11041,1
.complete 11041,2
step
.isOnQuest 11041
.goto Shadowmoon Valley,66.2,85.6
.turnin 11041 >>交任务: |cRXP_FRIENDLY_未完的工作......|r
step
.isQuestTurnedIn 10804
.goto Shadowmoon Valley,66.0,86.4
.accept 11019 >>接任务: |cRXP_LOOT_你的伙伴|r
.turnin 11019 >>交任务: |cRXP_FRIENDLY_你的伙伴|r
step
.goto Shadowmoon Valley,66.0,86.4
.reputation 1015,friendly >>通过做日报与荷兰派保持友好关系。不要提交任何一次任务，如羽翼蛋或上升，监督！
.accept 11020 >>接任务: |cRXP_LOOT_缓慢的死亡|r
.accept 11015 >>接任务: |cRXP_LOOT_灵翼水晶|r
.accept 11035 >>接任务: |cRXP_LOOT_危险的天空|r
>>这三个任务需要采集职业，每天只能完成一个。
.accept 11018 >>接任务: |cRXP_LOOT_虚空矿石|r
.accept 11017 >>接任务: |cRXP_LOOT_灵尘花粉|r
.accept 11016 >>接任务: |cRXP_LOOT_虚空矿洞剥石者的外皮|r
step
.goto Shadowmoon Valley,63.0,87.8
>>从矿井中德雷纳的黑血中收集25个污泥覆盖物
*Note: You can copy your character onto the PTR, turn in "Rise, Overseer!" and "The Netherwing Mines" on the PTR then start opening them until you find one that has Murkblood Escape Plans. You can delete the rest, as that same one will have it on live servers.
.collect 32724,25,11081,1
step
.goto Shadowmoon Valley,53.0,62.4,60,0
.goto Shadowmoon Valley,52.7,68.6,60,0
.goto Shadowmoon Valley,51.6,63.8,60,0
.goto Shadowmoon Valley,52.3,59.1,60,0
.goto Shadowmoon Valley,53.0,62.4
.unitscan Val'zareq the Conqueror
>>去杀了征服者瓦尔扎雷。这是一个精英任务，你可能需要分组。
.collect 31345,1,10793,1 >>获取Vel'zareq杂志
step << Horde
.goto Shadowmoon Valley,67.6,36.6
>>杀死Smith Gorlunk并掠夺他
.unitscan Smith Gorlunk
.collect 31241,1,10755,1
step << Alliance
>>杀死Smith Gorlunk并掠夺他
.unitscan Smith Gorlunk
.goto Shadowmoon Valley,67.6,36.6
.collect 31239,1,10754,1
step
.requires quest,11370
.goto Shattrath City,75.0,36.4
.daily 11369,11384,11382,11363,11362,11375,11354,11386,11373,11378,11374,11372,11368,11388,11370 >>接任务: |cRXP_WARN_悬赏：黑色阔步者的卵|r
step
.requires quest,11387
.goto Shattrath City,75.4,37.6
.daily 11389,11371,11376,11383,11364,11385,11387 >>接任务: |cRXP_WARN_悬赏：禁魔监狱斥候|r
step
.goto Terokkar Forest,69.6,78.6
>>杀死并掠夺塔龙牧师伊沙尔。如果你还没有完成暗影世界的任务，你需要找到一个已经完成任务的人，和他们一起组队，如果没有任务中的长生不老药，他是看不见的。
>>他们可以为你杀死塔龙牧师，你可以为《华尔街日报》掠夺他。不要完成阴影世界来完成这个任务，阴影世界在发布日更有经验。
>>如果找不到人，请跳过此步骤。
.unitscan Talonpriest Ishaal
.collect 32523,1,11021,1
step
.goto Terokkar Forest,41.2,56.8
>>杀死并掠夺该地区的阴谋集团敌人，直到你获得任务物品
.collect 31707,1,10880,1
step
.goto Hellfire Peninsula,25.6,76.6
.unitscan Avruu
>>杀死并掠夺Avruu
.collect 23580,1,9418,1
step << Horde
.goto Hellfire Peninsula,65.6,30.0
>>杀死并掠夺剃须刀
.collect 29590,1,10393,1
step << Alliance
.goto Hellfire Peninsula,53.1,26.7
>>杀戮和掠夺战争使者阿里克斯·阿马尔
.collect 29588,1,10395,1
step
.goto Hellfire Peninsula,48.6,39.6
>>杀死并掠夺掠夺地壳爆破器，直到你获得任务物品
* You will need to run over the "Earthquakes" on the ground to spawn the enemies
.collect 23338,1,9373,1
step
.goto Hellfire Peninsula,17.8,40.6
>>杀死并掠夺愤怒的巨像
.collect 29476,1,10134,1
step << Alliance
.goto Zangarmarsh,80.2,41.0
>>杀死并掠夺枯萎巨人，直到你获得任务物品。
* Save the Bog Lord Tendrils if you need Sporeggar rep
.collect 24483,1,9827,1
step << Horde
.goto Zangarmarsh,80.2,41.0
>>杀死并掠夺枯萎巨人，直到你获得任务物品。
* Save the Bog Lord Tendrils if you need Sporeggar rep
.collect 24484,1,9828,1
step << skip
.goto Zangarmarsh,62.2,40.6
>>杀死并掠夺该地区的蒸汽泵监督人员和其他管理人员，直到你得到排水示意图
.collect 24330,1,9731,1
step
.goto Nagrand,73.6,59.2,40,0
.goto Nagrand,69.8,52.8,40,0
.goto Nagrand,72.8,44.6,40,0
.goto Nagrand,65.8,38.2,0
>>杀死并掠夺该地区的闪电元素，尘啸者拥有最好的下降率。
.collect 24504,1,9861,1
step << Alliance
.goto Nagrand,48.6,34.4,40,0
.goto Nagrand,43.0,31.6,40,0
.goto Nagrand,41.0,27.0,40,0
.goto Nagrand,35.8,26.0,40,0
.goto Nagrand,34.0,20.4,0
>>杀死并掠夺黑血侵略者，他们四处巡逻，所以你可能需要多圈。
.collect 24559,1,9871,1
.unitscan Murkblood Invader
step << Horde
.goto Nagrand,48.6,34.4,40,0
.goto Nagrand,43.0,31.6,40,0
.goto Nagrand,41.0,27.0,40,0
.goto Nagrand,35.8,26.0,40,0
.goto Nagrand,34.0,20.4,0
>>杀死并掠夺黑血侵略者，他们四处巡逻，所以你可能需要多圈。
.collect 24558,1,9872,1
.unitscan Murkblood Invader
step
.goto Zangarmarsh,32.9,59.6
>>杀死并掠夺“安古拉伯爵”
.collect 25459,1,9911,1
.unitscan "Count" Ungula
step
.goto Blade's Edge Mountains,75.8,23.6,40,0
.goto Blade's Edge Mountains,71.6,33.6,40,0
.goto Blade's Edge Mountains,70.6,44.8,0
>>杀死并掠夺一名邪恶的腐败者
.collect 31384,1,10810,1
.unitscan Fel Corrupter
step
.goto Blade's Edge Mountains,41.6,21.4
>>杀死并掠夺该地区的Grishna暴徒
.collect 31489,1,10825,1
step
.goto Netherstorm,59.8,86.8
>>杀死并掠夺科利安·弗罗斯特韦弗
.collect 29236,1,10307,1
.unitscan Cohlien Frostweaver
step
.goto Netherstorm,60.0,85.2
>>杀死并掠夺魔法师Luminrath
.collect 29235,1,10306,1
.unitscan Conjurer Luminrath
step
.goto Netherstorm,60.6,87.6
>>杀戮和掠夺战斗法师Dathric
.collect 29233,1,10182,1
.unitscan Battle-Mage Dathric
step
.goto Netherstorm,59.0,88.2
>>杀死并掠夺Abjurit Belmara
.collect 29234,1,10305,1
.unitscan Abjurist Belmara
step
.goto Netherstorm,55.0,43.4
>>杀死凝固的虚空恐怖并掠夺他。这是精英，你可能需要分组。这个暴徒有30分钟的重生时间。
.collect 29738,1,10413,1
.unitscan Congealed Void Horror
step << Horde
>>杀死地狱火堡垒的最后一个老板。
.collect 23892,1,9588,1
step << Alliance
>>杀死地狱火堡垒的最后一个老板。
.collect 23890,1,9587,1
step
>>杀死蒸汽堡的暴徒，直到瓦什女士的命令下达为止
.collect 24367,1,9764,1 >>从Vashj女士那里获得订单
step
#sticky
#label questdrops
#completewith BOEitems
+这些任务是从奇袭中获得的，如果可以的话，请将其获取，否则请跳过本章
step << Alliance
>>从马瑟里登的巢穴里找到马瑟里顿头
.collect 32385,1,11002,1
step << Horde
>>从马瑟里登的巢穴里找到马瑟里顿头
.collect 32386,1,11003,1
step
>>从风暴要塞获得凯尔萨斯和苍翠球体。
.collect 32405,1,11007,1
step
>>从祖勒曼那里获得军阀之血。这个任务需要一个召唤到幽灵之地的召唤是一个有效的回合，如果你在发射日无法进入，请跳过。
.collect 33102,1,11178,1
step
#sticky
#completewith BOPitemslist
#label BOEitems
+本章是所有可以在拍卖行购买的物品，将是免费送货任务。购买时请核对。
step << Horde
.collect 31670,3,10860,1
.collect 31671,3,10860,1
step
.collect 24368,1,9765,1 
step

.collect 23445,4,10763,1
.collect 22445,2,10763,1
.collect 22574,4,10763,1
step
.collect 24449,6,9806,1 
step
.collect 24246,5,9715,1 
step
.reputation 970,friendly,0,1
.collect 24245,10,9808,1 
step
#aldor
.collect 25744,8,10024,1 
step
#aldor
.collect 29740,1,10420,1 
step
#aldor
.collect 30809,10,10653,1 
step << Alliance
.goto Blasted Lands,63.5,17.0
>>前往尼德加德禁猎区(Blasted lands)。到马厩里去买一杯Nethergard Bitter
.collect 23848,1,9563,1 
step
#aldor
.collect 29425,10,10325,1 
step
#scryer
.collect 30810,10,10656,1 
step
#scryer
.collect 29426,10,10412,1 
step
#scryer
.collect 29739,1,10416,1 
step
.collect 25719,30,10917,1 
step
.collect 32388,6,11004,1 
step
>>这项任务要求您与联盟保持中立，我们将在稍后的指南中将我们的代表减少为中立。如果您不想这样做，请跳过此步骤。
.collect 25463,27,9914,1 
step
>>这项任务要求您与联盟保持中立，我们将在稍后的指南中将我们的代表减少为中立。如果您不想这样做，请跳过此步骤。
.collect 25416,10,9882,1 
step
.collect 32601,1,11061,1 
step
.collect 32598,1,11030,1 
step
.collect 32464,40
.skill mining,<350,1 >>如果你有两种采集职业，那么你每天只能提交一次荷兰之翼采集，请跳过下一步购买
step
.collect 32468,40
.skill herbalism,<350,1 >>如果你有两种采集职业，那么你每天只能提交一次荷兰之翼采集，请跳过下一步购买
step
.collect 32470,35
.skill skinning,<350,1
step
#completewith BOEitems
.collect 24401,10,9802,1 
step
#sticky
#label BOPitemslist
#completewith BOPitems
+这些道具是BOP道具，需要在你的角色身上种植，以获得自由周转。
step

>>为战珠杀死纳格兰的食人魔
.collect 25433,20,9893,1 
step << Alliance
.goto Nagrand,75.0,65.0
>>在纳格兰碾碎任何暴徒，获得奥舒贡水晶粉。请注意，它是唯一的，最多100个，包括您银行中的任何一个
.collect 26043,20,10076,1
step << Horde
#label BOPitems
.goto Nagrand,75.0,65.0
>>在你选择的纳格兰地区升级任何暴徒，获得奥舒贡水晶粉。请注意，它是唯一的，最多100个，包括您银行中的任何一个。
.collect 26042,20,10074,1
step
.goto Blade's Edge Mountains,30.2,75.2

>>杀死奥格里拉周围的暴徒
.collect 32569,5 
step
.goto Netherstorm,30.6,75.2
>>在暴风雨中杀死并掠夺扎克西斯袭击者和跟踪者
.collect 29209,10,10262,1 
step
.goto Shadowmoon Valley,69.0,85.0
>>杀死该地区的暴徒，并将其掠夺为荷兰之翼水晶
.collect 32427,30,11015,1 
step
.goto Shadowmoon Valley,69.0,85.0
.reputation 1015,friendly,<0,1
>>可以通过在该地区放牧、采矿、杀死怪物或在世界上找到怪物来找到。它们看起来像巨大的发光柱，类似于虚空风暴中的天岭上的蛋。
.collect 32506,1,11049,1 
step << Alliance
.goto Blade's Edge Mountains,46.8,78.6,30,0
.goto Blade's Edge Mountains,43.2,80.4
>>从地上的酿酒师或桶中收集11瓶布鲁特班血腥酒。
.collect 29443,11,10511,1
]])
RXPGuides.RegisterGuide([[
#version 25
#wotlk
#tbc
#group RestedXP WLK的准备
#defaultfor None
#name 25 任务日志指南
step
#sticky
+本指南将在您的任务日志中为您提供25个任务以供启动。在准备好所有其他向导后，准备最后10个任务。
+ 有些任务可能看起来不正常，如果每个人都有不同的任务，那么不可能100%高效地完成任务。很抱歉，如果你必须加倍努力！
step
.requires quest,10667
>>去拍卖行买这些东西
.collect 23784,1,10664,1
.collect 23793,4,10664,1
step
.requires quest,9837
.goto Shattrath City,54.6,44.2
.accept 9836 >>接任务: |cRXP_LOOT_麦迪文的触摸|r

step
.requires quest,10297
.goto Tanaris,66.0,49.6
>>当你接受任务时，确保你站着不动，下车，以便飞下时间之穴。如果你没有成功，放弃并重新接受任务。
.skipgossip
.accept 10279 >>接任务: |cRXP_LOOT_主宰之巢|r
step
.requires quest,10297
.goto Tanaris,58.4,54.2
.turnin 10279 >>交任务: |cRXP_FRIENDLY_主宰之巢|r
.accept 10277 >>接任务: |cRXP_LOOT_时光之穴|r
step
.requires quest,10297
.goto Tanaris,58.4,54.2
.timer 540,Wait for the Custodian to show you around the Caverns of Time
>>只需在任务给予者处等待，您仍将获得积分。这个角色扮演需要9分钟，休息一下。
.complete 10277,1
step
.requires quest,10297
.goto Tanaris,58.4,54.2
.turnin 10277 >>交任务: |cRXP_FRIENDLY_时光之穴|r
step
.requires quest,10445
.goto Tanaris,59.6,54.2
.accept 10445 >>接任务: |cRXP_LOOT_永恒水瓶|r
step
.requires quest,10297
.goto Tanaris,58.4,54.2
.accept 10282 >>接任务: |cRXP_LOOT_往日的希尔斯布莱德|r
step
.requires quest,10297
>>去旧希尔斯布莱德丘陵地牢。
.turnin 10282 >>交任务: |cRXP_FRIENDLY_往日的希尔斯布莱德|r
.accept 10283 >>接任务: |cRXP_LOOT_塔蕾莎的计谋|r
step
.requires quest,10297
+纵火焚烧建筑物。
complete 10283,1
step
.requires quest,10297
>>在地下室找到萨尔。
.turnin 10283 >>交任务: |cRXP_FRIENDLY_塔蕾莎的计谋|r
.accept 10284 >>接任务: |cRXP_LOOT_逃离敦霍尔德|r
step
.requires quest,10297
>>当地牢完成后，在任务中回合。
.turnin 10284 >>交任务: |cRXP_FRIENDLY_逃离敦霍尔德|r
.accept 10285 >>接任务: |cRXP_LOOT_返回安多尔姆身边|r
step
.requires quest,10297
.goto Tanaris,58.4,54.2
.turnin 10285 >>交任务: |cRXP_FRIENDLY_返回安多尔姆身边|r
.accept 10296 >>接任务: |cRXP_LOOT_黑色沼泽|r
step
.requires quest,10297
>>进入黑沼泽并完成任务。
.turnin 10296 >>交任务: |cRXP_FRIENDLY_黑色沼泽|r
.accept 10297 >>接任务: |cRXP_LOOT_开启黑暗之门|r
step
.requires quest,10297
>>完成黑暗之门的开启，但不要完成任务。
.complete 10297,1
step
.requires quest,9837
>>前往黑沼泽并完成地牢，然后返回任务
.turnin 9836 >>交任务: |cRXP_FRIENDLY_麦迪文的触摸|r
.accept 9837 >>接任务: |cRXP_LOOT_返回卡德加身边|r
step
.requires quest,10445
>>去杀死SSC的瓦什女士。
.complete 10445,1
step
.requires quest,10445
>>去暴风雨要塞杀了凯尔萨斯阳光行者。
.complete 10445,2

step
.requires quest,9831
.zone Deadwind Pass >>前往: |cRXP_PICK_逆风小径|r
step
.requires quest,9831
.goto Deadwind Pass,47.0,75.7
>>Talk to Archmage Alturus who will start the attunement chain.
.accept 9824 >>接任务: |cRXP_LOOT_奥术扰动|r
.accept 9825 >>接任务: |cRXP_LOOT_幽灵的活动|r
step
#completewith wellr
.requires quest,9831
.goto Deadwind Pass,48.6,78.7
+沿着地下室的入口往下走，朝鬼魂走去
step
#sticky
#completewith PondR
.requires quest,9831
>>杀死幽灵。掠夺他们的鬼魂精华
.complete 9825,1 
step
#label wellr
.requires quest,9831
.goto Deadwind Pass,54.7,81.8,30,0
.goto Deadwind Pass,53.3,90.2
.use 24474 >>在地窖尽头的井里使用库存中的紫罗兰水晶
* This quest is underground in the cellar, make sure you're below ground when following the arrow.
.complete 9824,1 
step
#completewith next
.requires quest,9831
.goto Deadwind Pass,48.6,78.1
+沿着另一个地窖的入口走
step
#label PondR
.requires quest,9831
.goto Deadwind Pass,47.0,74.2,30,0
.goto Deadwind Pass,44.5,74.0,20,0
.goto Deadwind Pass,42.8,78.1
.use 24474 >>在水中使用库存中的紫罗兰水晶
.complete 9824,2 
step
.requires quest,9831
.goto Deadwind Pass,43.4,71.2,20,0
.goto Deadwind Pass,45.6,71.6,40,0
.goto Deadwind Pass,41.3,70.0,40,0
.goto Deadwind Pass,41.5,63.0,40,0
.goto Deadwind Pass,41.7,76.8,40,0
.goto Deadwind Pass,46.8,75.1,40,0
.goto Deadwind Pass,43.4,71.2,20,0
.goto Deadwind Pass,45.6,71.6,40,0
.goto Deadwind Pass,41.3,70.0,40,0
.goto Deadwind Pass,41.5,63.0,40,0
.goto Deadwind Pass,41.7,76.8,40,0
.goto Deadwind Pass,46.8,75.1,40,0
.goto Deadwind Pass,43.4,71.2,20,0
.goto Deadwind Pass,45.6,71.6,40,0
.goto Deadwind Pass,41.3,70.0,40,0
.goto Deadwind Pass,41.5,63.0,40,0
.goto Deadwind Pass,41.7,76.8,40,0
.goto Deadwind Pass,46.8,75.1,40,0
>>完成对鬼魂的掠夺，获取精华。如果你愿意的话，把你的队伍分成几个小组，回到另一个地窖去产卵
.complete 9825,1 
step
.requires quest,9831
.goto Deadwind Pass,47.0,75.6
>>离开地窖
.turnin 9825 >>交任务: |cRXP_FRIENDLY_幽灵的活动|r
.turnin 9824 >>交任务: |cRXP_FRIENDLY_奥术扰动|r
.accept 9826 >>接任务: |cRXP_LOOT_联络达拉然|r
step << Alliance
#completewith next
.requires quest,9831
>>骑马返回Darkhire << !Mage
>>创建通往铁炉堡的门户 << Mage
.goto Duskwood,77.5,44.3
.fly Southshore >>飞往南岸
step << Horde
#completewith next
.requires quest,9831
>>骑马返回斯托纳德 << !Mage
>>创建通往幽暗城的门户 << Mage
.goto Swamp of Sorrows,46.0,54.7
.fly Tarren Mill >>飞往塔伦磨坊
step
.requires quest,9831
>>骑马前往达拉然郊外，与大法师塞德里克交谈。
.goto Alterac Mountains,15.6,54.6
.turnin 9826 >>交任务: |cRXP_FRIENDLY_联络达拉然|r
.accept 9829 >>接任务: |cRXP_LOOT_卡德加|r
step
.zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
.goto Shattrath City,54.7,44.4
step
.requires quest,9831
.goto Shattrath City,54.7,44.4
>>乘车前往市中心。
.turnin 9829 >>交任务: |cRXP_FRIENDLY_卡德加|r
.accept 9831 >>接任务: |cRXP_LOOT_卡拉赞的钥匙|r
step
#aldor
.requires quest,11492
.goto Shattrath City,30.6,34.4
.accept 11481 >>接任务: |cRXP_LOOT_太阳之井的危机|r
step
#scryer
.requires quest,11492
.goto Shattrath City,54.4,80.8
.accept 11482 >>接任务: |cRXP_LOOT_使命的召唤|r
step << skip
.requires quest,11000
.goto Shattrath City,56.4,49.0
.accept 10984 >>接任务: |cRXP_LOOT_援助食人魔|r
step << skip
.requires quest,11000
.goto Shattrath City,65.2,68.0
.turnin 10984 >>交任务: |cRXP_FRIENDLY_援助食人魔|r
.accept 10983 >>接任务: |cRXP_LOOT_枯瘦的莫戈多格|r
step
.requires quest,11000
.goto Shattrath City,65.2,68.0
.accept 10983 >>接任务: |cRXP_LOOT_枯瘦的莫戈多格|r
step
.requires quest,10095
.goto Shattrath City,50.4,45.4
.accept 10177 >>接任务: |cRXP_LOOT_奥金顿的麻烦|r
step
.requires quest,11514
.goto Shattrath City,49.2,42.6
.accept 11514 >>接任务: |cRXP_LOOT_维持传送门|r
step
.requires quest,11877
.goto Shattrath City,62.7,36.2
.accept 11877 >>接任务: |cRXP_LOOT_日怒攻击计划|r
step << Alliance
>>这个任务需要71才能完成，如果你没有准备足够的XP到71，请跳过这个任务。
.goto Shattrath City,67.2,34.0
.daily 11337,11336,11335,11338 >>接任务: |cRXP_WARN_战斗的召唤：风暴之眼|r
step << Horde
>>这个任务需要71才能完成，如果你没有准备足够的XP到71，请跳过这个任务。
.goto Shattrath City,67.0,56.6
.daily 11341,11340,11339,11342 >>接任务: |cRXP_WARN_战斗的召唤：风暴之眼|r
step
.requires quest,10667
>>去沙塔斯买一个恶魔守卫图腾。
.goto Shattrath City,64.6,70.6
.collect 30823,1,10664,1

step << Alliance
.requires quest,10667
.goto Shadowmoon Valley,23.6,34.4
.collect 30756,1,10621,1 >>杀死监督者Ripsaw
step << Horde
.requires quest,10667
.goto Shadowmoon Valley,23.6,34.4
.collect 30579,1,10623,1 >>杀死监督者Ripsaw
step << Alliance
.requires quest,10667
.goto Shadowmoon Valley,36.8,54.8
.use 30576
.turnin 10621 >>交任务: |cRXP_FRIENDLY_伊利达雷斩除碎片|r
.accept 10626 >>接任务: |cRXP_LOOT_夺取武器|r
step << Horde
.requires quest,10667
.use 30579
.goto Shadowmoon Valley,29.8,31.2
.turnin 10623 >>交任务: |cRXP_FRIENDLY_伊利达雷斩除碎片|r
.accept 10627 >>接任务: |cRXP_LOOT_夺取武器|r
step << Alliance
.requires quest,10667
.goto Shadowmoon Valley,24.0,33.8
>>杀死Makazradon
.unitscan Makazradon
.complete 10626,1
step << Alliance
.requires quest,10667
.goto Shadowmoon Valley,23.6,38.2
>>杀死Morgroron
.unitscan Morgroron
.complete 10626,2
step << Horde
.requires quest,10667
.goto Shadowmoon Valley,24.0,33.8
>>杀死Makazradon
.unitscan Makazradon
.complete 10627,1
step << Horde
.requires quest,10667
.goto Shadowmoon Valley,23.6,38.2
>>杀死Morgroron
.unitscan Morgroron
.complete 10627,2
step << Alliance
.requires quest,10667
.goto Shadowmoon Valley,36.8,54.8
.turnin 10626 >>交任务: |cRXP_FRIENDLY_夺取武器|r
.accept 10662 >>接任务: |cRXP_LOOT_隐居的铁匠|r
step << Horde
.requires quest,10667
.goto Shadowmoon Valley,29.8,31.2
.turnin 10627 >>交任务: |cRXP_FRIENDLY_夺取武器|r
.accept 10663 >>接任务: |cRXP_LOOT_隐居的铁匠|r
step
#aldor
.requires quest,10649
.goto Shadowmoon Valley,61.2,29.2
.accept 10587 >>接任务: |cRXP_LOOT_卡拉波训练场|r
step
#aldor
.requires quest,10649
.goto Shadowmoon Valley,70.4,49.0
>>杀死该地区的血精灵恶魔猎人，直到任务完成。
.complete 10587,1
step
#aldor
.requires quest,10649
.goto Shadowmoon Valley,61.2,29.2
.turnin 10587 >>交任务: |cRXP_FRIENDLY_卡拉波训练场|r
.accept 10637 >>接任务: |cRXP_LOOT_必要的混乱|r
step
#aldor
.requires quest,10649
.goto Shadowmoon Valley,69.0,51.0
.use 30811 >>将阿扎洛斯从驱逐他的术士手中解救出来。
.complete 10637,1
step
#aldor
.requires quest,10649
.goto Shadowmoon Valley,61.2,29.2
.turnin 10637 >>交任务: |cRXP_FRIENDLY_必要的混乱|r
.accept 10640 >>接任务: |cRXP_LOOT_奥图里斯|r
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,62.6,28.4
.accept 10568 >>接任务: |cRXP_LOOT_巴尔里石板|r
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,59.8,35.6
.complete 10568,1
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,62.6,28.4
.turnin 10568 >>交任务: |cRXP_FRIENDLY_巴尔里石板|r
.accept 10571 >>接任务: |cRXP_LOOT_长者奥洛努|r
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,57.2,32.6
.complete 10571,1
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,62.6,28.4
.turnin 10571 >>交任务: |cRXP_FRIENDLY_长者奥洛努|r
.accept 10574 >>接任务: |cRXP_LOOT_灰舌腐蚀者|r
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,49.8,23.0
.complete 10574,3
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,48.2,39.4
.complete 10574,4
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,51.0,52.4
.complete 10574,1
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,57.0,73.4
.complete 10574,2
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,62.6,28.4
.turnin 10574 >>交任务: |cRXP_FRIENDLY_灰舌腐蚀者|r
.accept 10575 >>接任务: |cRXP_LOOT_守望者的牢笼|r
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,56.2,59.6
.accept 10683 >>接任务: |cRXP_LOOT_巴尔里石板|r
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,59.8,35.6
.complete 10683,1
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,56.2,59.6
.turnin 10683 >>交任务: |cRXP_FRIENDLY_巴尔里石板|r
.accept 10684 >>接任务: |cRXP_LOOT_长者奥洛努|r
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,57.2,32.6
.complete 10684,1
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,56.2,59.6
.turnin 10684 >>交任务: |cRXP_FRIENDLY_长者奥洛努|r
.accept 10685 >>接任务: |cRXP_LOOT_灰舌腐蚀者|r
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,57.0,73.4
.complete 10685,2
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,51.0,52.4
.complete 10685,1
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,48.2,39.4
.complete 10685,4
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,49.8,23.0
.complete 10685,3
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,56.2,59.6
.turnin 10685 >>交任务: |cRXP_FRIENDLY_灰舌腐蚀者|r
.accept 10686 >>接任务: |cRXP_LOOT_守望者的牢笼|r
step
#aldor
.requires quest,10707
.goto Shadowmoon Valley,57.2,49.6
.turnin 10575 >>交任务: |cRXP_FRIENDLY_守望者的牢笼|r
step
#scryer
.requires quest,10707
.goto Shadowmoon Valley,57.2,49.6
.turnin 10686 >>交任务: |cRXP_FRIENDLY_守望者的牢笼|r
step
.requires quest,10707
.goto Shadowmoon Valley,57.2,49.6
.accept 10622 >>接任务: |cRXP_LOOT_忠诚的证明|r
step
.requires quest,10707
>>杀死赞德拉，他在守卫墙的顶端。
.goto Shadowmoon Valley,58.0,48.8
.complete 10622,1
step
.requires quest,10707
.goto Shadowmoon Valley,57.2,49.6
.turnin 10622 >>交任务: |cRXP_FRIENDLY_忠诚的证明|r
.accept 10628 >>接任务: |cRXP_LOOT_阿卡玛|r
step
.requires quest,10707
.goto Shadowmoon Valley,58.0,48.2
>>去和阿卡玛谈谈。他在楼下，潜到水下，在另一个隧道里上来。
.skipgossip
.turnin 10628 >>交任务: |cRXP_FRIENDLY_阿卡玛|r
.accept 10705 >>接任务: |cRXP_LOOT_先知乌达鲁|r
step
.requires quest,10707
>>进入Arcatraz并完成任务。
.turnin 10705 >>交任务: |cRXP_FRIENDLY_先知乌达鲁|r
.accept 10706 >>接任务: |cRXP_LOOT_神秘的征兆|r
step
.requires quest,10707
.goto Shadowmoon Valley,58.0,48.2
.turnin 10706 >>交任务: |cRXP_FRIENDLY_神秘的征兆|r
.accept 10707 >>接任务: |cRXP_LOOT_阿塔玛平台|r
step
.requires quest,10707
.goto Shadowmoon Valley,71.4,35.4
>>找一个小组，得到愤怒之心。这个任务不要交。
.complete 10707,1
step
#scryer
.requires quest,10649
.goto Shadowmoon Valley,55.8,58.2
.accept 10687 >>接任务: |cRXP_LOOT_卡拉波训练场|r
step
#scryer
.requires quest,10649
.goto Shadowmoon Valley,70.4,49.0
>>杀死血精灵直到任务完成。
.complete 10687,1
step
#scryer
.requires quest,10649
.goto Shadowmoon Valley,55.8,58.2
.turnin 10687 >>交任务: |cRXP_FRIENDLY_卡拉波训练场|r
.accept 10688 >>接任务: |cRXP_LOOT_必要的混乱|r
step
#scryer
.requires quest,10649
.goto Shadowmoon Valley,69.0,51.0
.use 30811 >>将阿扎洛斯从驱逐他的术士手中解救出来。
.complete 10688,1
step
#scryer
.requires quest,10649
.goto Shadowmoon Valley,55.8,58.2
.turnin 10688 >>交任务: |cRXP_FRIENDLY_必要的混乱|r
.accept 10689 >>接任务: |cRXP_LOOT_奥图里斯|r
step
#aldor
.requires quest,10649
.goto Nagrand,27.4,43.0
.turnin 10640 >>交任务: |cRXP_FRIENDLY_奥图里斯|r
step
#scryer
.requires quest,10649
.goto Nagrand,27.4,43.0
.turnin 10689 >>交任务: |cRXP_FRIENDLY_奥图里斯|r
step
.requires quest,10649
.goto Nagrand,27.4,43.0
.accept 10641 >>接任务: |cRXP_LOOT_对抗军团|r
.accept	10668 >>Accept Against the Illidari
.accept 10669 >>接任务: |cRXP_LOOT_扫除余孽|r
step
.requires quest,10649
.goto Zangarmarsh,16.4,40.4
.use 30853 >>使用Imbued银矛召唤并杀死Xeleth
.complete 10669,1
step
.requires quest,10649
.goto Shadowmoon Valley,28.6,50.6
>>杀死Lothros
.complete 10668,1
step
#sticky
.requires quest,10649
#completewith next
.collect 30850,1,10641,1 >>杀死愤怒的女祭司
step
.goto Netherstorm,41.8,22.2
.requires quest,10649
.use 30850 >>使用鲜血召唤萨塔尔阿凡达并杀死她。
.complete 10641,1
step
.requires quest,10649
.goto Nagrand,27.4,43.0
.turnin 10641 >>交任务: |cRXP_FRIENDLY_对抗军团|r
.turnin	10668 >>Turn in Against the Illidari
.turnin 10669 >>交任务: |cRXP_FRIENDLY_扫除余孽|r
step
.requires quest,10649
.goto Nagrand,27.4,43.0
.skipgossip
.accept 10646 >>接任务: |cRXP_LOOT_伊利丹的学生|r
step
.requires quest,10649
.goto Nagrand,27.4,43.0
.skipgossip
>>听利特鲁斯的故事
.turnin 10646 >>交任务: |cRXP_FRIENDLY_伊利丹的学生|r
step
.requires quest,10649
.goto Nagrand,27.4,43.0
.accept 10649 >>接任务: |cRXP_LOOT_恶魔名册|r

step
.requires quest,10091
.goto Terokkar Forest,39.8,72.2
.accept 10178 >>接任务: |cRXP_LOOT_寻找间谍托古恩|r
step << Horde
.requires quest,11506
.goto Terokkar Forest,49.8,46.6
.accept 11506 >>接任务: |cRXP_LOOT_奥金顿的幽魂|r
step << Horde
.requires quest,11506
.goto Terokkar Forest,32.4,57.8,40,0
.goto Terokkar Forest,42.5,53.9,40,0
.goto Terokkar Forest,48.9,60.5,40,0
.goto Terokkar Forest,47.3,72.3,40,0
.goto Terokkar Forest,40.5,78.1,40,0
.complete 11506,1
step << Alliance
.requires quest,11505
.goto Terokkar Forest,55.8,53.8
.accept 11505 >>接任务: |cRXP_LOOT_奥金顿的幽魂|r
step << Alliance
.requires quest,11505
.goto Terokkar Forest,32.4,57.8,40,0
.goto Terokkar Forest,42.5,53.9,40,0
.goto Terokkar Forest,48.9,60.5,40,0
.goto Terokkar Forest,47.3,72.3,40,0
.goto Terokkar Forest,40.5,78.1,40,0
.complete 11505,1
step
.requires quest,10164
.goto Terokkar Forest,35.0,65.2
.accept 10164 >>接任务: |cRXP_LOOT_一切都会变好的|r
step
.requires quest,10667
.goto Terokkar Forest,77.6,38.6
.turnin 10663 >>交任务: |cRXP_FRIENDLY_隐居的铁匠|r << Horde
.turnin 10662 >>交任务: |cRXP_FRIENDLY_隐居的铁匠|r << Alliance
step
.requires quest,10667
.goto Terokkar Forest,77.6,38.6
.accept 10664 >>接任务: |cRXP_LOOT_其它的材料|r
step
.requires quest,10667
.goto Terokkar Forest,77.6,38.6
.turnin 10664 >>交任务: |cRXP_FRIENDLY_其它的材料|r
.accept 10665 >>接任务: |cRXP_LOOT_能源舰的热源|r
.accept 10666 >>接任务: |cRXP_LOOT_魔语辞典|r
step
.requires quest,10091
.goto Terokkar Forest,39.8,72.2
>>进入阴影迷宫，找到间谍托根。他在走廊尽头的第二个房间里。
.turnin 10178 >>交任务: |cRXP_FRIENDLY_寻找间谍托古恩|r
.accept 10091 >>接任务: |cRXP_LOOT_灵魂装置|r
step
>>去暗影迷宫干掉第三个老板，大师沃皮尔。然后掠夺他以完成任务。
.complete 10666,1
step
>>去做Mechanar并掠夺守门人铁手附近的粉色盒子来完成任务。
.complete 10665,1
step
.requires quest,10667
.goto Terokkar Forest,77.6,38.6
.turnin 10665 >>交任务: |cRXP_FRIENDLY_能源舰的热源|r
.turnin 10666 >>交任务: |cRXP_FRIENDLY_魔语辞典|r
.accept 10670 >>接任务: |cRXP_LOOT_大地之母的眼泪|r
.accept 10667 >>接任务: |cRXP_LOOT_地下的土壤|r
step
.requires quest,10095
.goto Terokkar Forest,40.0,72.2
>>前往环南侧的奥欣登门户室，它在锁着的门后面。
* You get the key from the last boss in Sethekk Halls if nobody else can open it for you.
.turnin 10177 >>交任务: |cRXP_FRIENDLY_奥金顿的麻烦|r
.accept 10094 >>接任务: |cRXP_LOOT_鲜血法典|r
step
.requires quest,10095
.goto Terokkar Forest,39.4,72.7
>>去做影子迷宫并完成任务。
.turnin 10094 >>交任务: |cRXP_FRIENDLY_鲜血法典|r
.accept 10095 >>接任务: |cRXP_LOOT_深入迷宫|r
step
.requires quest,9831
.goto Terokkar Forest,39.4,72.7
>>去暗影迷宫获得第一个关键片段。不要交任务。
.complete 9831,1
step
.requires quest,10091
.goto Terokkar Forest,39.4,72.7
>>完成暗影迷宫内的任务。不要交任务。
.complete 10091,1
step
.requires quest,10649
.goto Terokkar Forest,39.4,72.7
>>完成暗影迷宫并掠夺恶魔之书。不要交付任务。
.complete 10649,1
step
.requires quest,10667
>>去做阴影迷宫，从漩涡大师那里抢夺恶魔词典
.complete 10665,1
step
.requires quest,10095
>>杀死暗影迷宫内的穆尔。不要交任务。
.complete 10095,1
step
.requires quest,10098
.goto Terokkar Forest,44.0,65.0
.accept 10098 >>接任务: |cRXP_LOOT_泰罗克的传说|r
.accept 10097 >>接任务: |cRXP_LOOT_兄弟反目|r
step
.requires quest,10098
>>完成Sethekk Halls。不要发送任务。
.complete 10098,1
.complete 10098,2
.complete 10098,3
.complete 10097,1
.complete 10097,2
step
.requires quest,10165
.goto Terokkar Forest,39.4,58.6
.accept 10165 >>接任务: |cRXP_LOOT_扫除竞争者|r
step
.requires quest,10218
.goto Terokkar Forest,39.4,58.6
>>去地牢外接受任务。
.accept 10216 >>接任务: |cRXP_LOOT_安全第一|r
step
.requires quest,10218
>>进入法力墓穴完成任务
.complete 10216,1
.complete 10216,2
.complete 10216,3
.complete 10216,4
step
.requires quest,10218
>>在地牢内传送任务。
.turnin 10216 >>交任务: |cRXP_FRIENDLY_安全第一|r
step
.requires quest,10218
>>Accept this quest inside of Mana-Tombs from Cryo-Engineer Sha'heen
.accept 10218 >>接任务: |cRXP_LOOT_别人的烂摊子|r
step
.requires quest,10218
>>完成地牢内的护送。不要交付任务。
.complete 10218,1
step
.requires quest,10165
>>在法力墓穴完成任务。不要交付任务。
.complete 10165,1
step
.requires quest,10164
>>去奥切奈地穴。不要交付任务。
.complete 10164,1

step << Alliance
.requires quest,9492
.goto Hellfire Peninsula,56.6,66.6
.accept 9492 >>接任务: |cRXP_LOOT_扭转战局|r
step << Horde
.requires quest,9495
.goto Hellfire Peninsula,55.0,36.0
.accept 9495 >>接任务: |cRXP_LOOT_酋长的意志|r
step << Alliance
.requires quest,9494
.goto Hellfire Peninsula,53.8,65.6
.accept 9494,1 >>接任务: |cRXP_WARN_邪能灰烬|r
step << Alliance
.requires quest,9493
.goto Hellfire Peninsula,56.8,62.6
.accept 9493 >>接任务: |cRXP_LOOT_邪部落的荣耀|r
step << Horde
.requires quest,9496
.goto Hellfire Peninsula,55.0,36.2
.accept 9496 >>接任务: |cRXP_LOOT_邪部落的荣耀|r
step
.requires quest,9494
.use 23735 >>去破碎的大厅杀死大术士尼瑟库斯。然后使用大术士在王座附近掉落的护身符。不要交付任务。
.complete 9494,1
step
.requires quest,10667
>>去《破碎的大厅》，杀死战使奥姆洛格。不要交任务。
.complete 10670,1
step << Alliance
.requires quest,9492
>>在破碎的大厅中杀死Warcheif Kargath的拳头。不要交任务。
.complete 9492,1
step << Horde
.requires quest,9495
>>在破碎的大厅中杀死Warcheif Kargath的拳头。不要交任务。
.complete 9495,1
step << Alliance
.requires quest,9493
>>进入破碎大厅并完成任务。不要交付任务。
.complete 9493,1
.complete 9493,2
.complete 9493,3
step << Horde
.requires quest,9496
>>进入破碎大厅并完成任务。不要交付任务。
.complete 9496,1
.complete 9496,2
.complete 9496,3

step
.requires quest,10257
.goto Netherstorm,31.4,66.2
.accept 10173 >>接任务: |cRXP_LOOT_大法师的法杖|r
step
.requires quest,10257
.goto Netherstorm,40.8,72.6
.use 29207
>>站在火盆旁边，用魔法粉召唤Ekkorash并杀死她。
.complete 10173,1
step
.requires quest,10257
.goto Netherstorm,31.4,66.2
.turnin 10173 >>交任务: |cRXP_FRIENDLY_大法师的法杖|r
.accept 10300 >>接任务: |cRXP_LOOT_修复法杖|r
step
.requires quest,10257
.goto Netherstorm,33.6,54.6
>>杀死并掠夺水晶的无身保护者和维护者。
.complete 10300,1
step
.requires quest,10257
.goto Netherstorm,31.4,66.2
.turnin 10300 >>交任务: |cRXP_FRIENDLY_修复法杖|r
.accept 10174 >>接任务: |cRXP_LOOT_紫罗兰之塔的诅咒|r
.use 28455 >>使用职员召唤任务上缴
.turnin 10174 >>交任务: |cRXP_FRIENDLY_紫罗兰之塔的诅咒|r
step
.requires quest,10257
.goto Netherstorm,51.8,80.4
.use 28455 >>使用大法师瓦尔哥特的杖接受任务
.accept 10188 >>接任务: |cRXP_LOOT_克拉苏斯的魔符|r
step
.requires quest,10257
.goto Netherstorm,51.8,80.4
>>找到并杀死法术绑定者玛丽亚娜，然后掠夺她以换取克拉苏斯魔咒
.unitscan Spellbinder Maryana
.complete 10188,1
step
.requires quest,10257
.goto Netherstorm,51.8,80.4
.use 28455 >>使用大法师瓦戈特的杖
.turnin 10188 >>交任务: |cRXP_FRIENDLY_克拉苏斯的魔符|r
.accept 10192 >>接任务: |cRXP_LOOT_克拉苏斯的魔法纲要|r
step
.requires quest,10257
.goto Netherstorm,58.6,89.2,-1
.goto Netherstorm,57.6,89.6,-1
.goto Netherstorm,58.8,88.0,-1
>>从一个房间的房子里收集简编章节。
.collect 28472,1,10192,1
.collect 28473,1,10192,1
.collect 28474,1,10192,1
step
.requires quest,10257
.goto Netherstorm,57.4,86.2
.use 28455 >>使用大法师瓦戈特的杖
.turnin 10192 >>交任务: |cRXP_FRIENDLY_克拉苏斯的魔法纲要|r
.accept 10301 >>接任务: |cRXP_LOOT_魔法纲要的防护|r
step
.requires quest,10257
.goto Netherstorm,56.4,79.0
>>找到并杀死魔法师玛拉泰尔，然后为奥库卢斯掠夺她
.unitscan Spellreaver Marathelle
.complete 10301,1
step
.requires quest,10257
.goto Netherstorm,57.0,63.4
.use 28455 >>使用大法师瓦戈特的杖
.turnin 10301 >>交任务: |cRXP_FRIENDLY_魔法纲要的防护|r
.accept 10209 >>接任务: |cRXP_LOOT_召唤者坎西恩的战利品|r
step
.requires quest,10257
.goto Netherstorm,57.0,63.4
>>找到并杀死召唤师坎丁，然后掠夺他以换取格拉希克斯之石
.unitscan Summoner Kanthin
.complete 10209,1
step
.requires quest,10257
.goto Netherstorm,58.2,86.4
.use 28455 >>使用大法师瓦戈特的杖
.turnin 10209 >>交任务: |cRXP_FRIENDLY_召唤者坎西恩的战利品|r
.accept 10176 >>接任务: |cRXP_LOOT_守护者阿尔凯洛斯|r
step
.requires quest,10257
.goto Netherstorm,58.0,86.0
>>进入Kirin'Var村中心的紫罗兰塔，击败Ar'kelos
.complete 10176,1
step
.requires quest,10257
.goto Netherstorm,58.2,86.4
.turnin 10176 >>交任务: |cRXP_FRIENDLY_守护者阿尔凯洛斯|r
.accept 10256 >>接任务: |cRXP_LOOT_钥匙的主人|r
step
.requires quest,10257
.goto Netherstorm,53.0,67.0
.unitscan Apex
>>找到并杀死Apex，然后掠夺他以获得焦点
.collect 28786,1,10256,1
step
.requires quest,10257
.goto Netherstorm,58.2,86.4
.use 28786 >>使用水晶焦点找到钥匙主人的身份
.complete 10256,1
step
.requires quest,10257
.goto Netherstorm,58.2,86.4
.turnin 10256 >>交任务: |cRXP_FRIENDLY_钥匙的主人|r
.accept 10257 >>接任务: |cRXP_LOOT_夺回钥石|r
step
.requires quest,10257
+进入Botanica，从指挥官Sarannis手中抢走Keystone。不要一次性完成任务。
.complete 10257,1
step
.requires quest,11877
.goto Netherstorm,23.4,72.4
>>为计划杀死任何太阳怒派别的敌人
.complete 11877,1
step
.requires quest,10257
.goto Netherstorm,58.3,86.4
.turnin 10256 >>交任务: |cRXP_FRIENDLY_钥匙的主人|r
.accept 10257 >>接任务: |cRXP_LOOT_夺回钥石|r
step
.requires quest,10257
>>去做植物学并完成任务。这个任务不要交。
.complete 10257,1
step
.requires quest,10667
>>去做麦加那，在麦加诺领主卡佩蒂斯面前掠夺紫色盒子
.complete 10665,1
step
.requires quest,10439
.goto Netherstorm,60.0,31.8
.accept 10437 >>接任务: |cRXP_LOOT_毁灭的材料|r
step
.requires quest,10439
.goto Netherstorm,61.2,43.6
>>杀死并掠夺该地区的虚空军团和虚空战士
.complete 10437,1
step
.requires quest,10439
.goto Netherstorm,60.0,31.8
.turnin 10437 >>交任务: |cRXP_FRIENDLY_毁灭的材料|r
.accept 10438 >>接任务: |cRXP_LOOT_虚空幼龙之翼|r
step
.requires quest,10439
.goto Netherstorm,62.6,41.0
>>在任务列表处跳上坐骑。
.use 29778
.complete 10438,1
step
.requires quest,10439
.goto Netherstorm,60.0,31.8
.turnin 10438 >>交任务: |cRXP_FRIENDLY_虚空幼龙之翼|r
.accept 10439 >>接任务: |cRXP_LOOT_诸界吞噬者迪门修斯|r
step
.requires quest,10439
.goto Netherstorm,62.4,40.8
>>找到一个小组并完成任务。不要交出这个任务
.complete 10439,1
.complete 10439,2
step
.requires quest,10408
.goto Netherstorm,59.4,32.4
.accept 10339 >>接任务: |cRXP_LOOT_复仇军|r
step
.requires quest,10408
.goto Netherstorm,57.0,37.4
.complete 10339,1
.complete 10339,2
.complete 10339,3
.complete 10339,4
step
.requires quest,10408
.goto Netherstorm,56.8,38.6
.turnin 10339 >>交任务: |cRXP_FRIENDLY_复仇军|r
.accept 10384 >>接任务: |cRXP_LOOT_复仇军的数据|r
step
.requires quest,10408
.goto Netherstorm,55.8,39.9
.complete 10384,1
step
.requires quest,10408
.goto Netherstorm,56.8,38.6
.turnin 10384 >>交任务: |cRXP_FRIENDLY_复仇军的数据|r
.accept 10385 >>接任务: |cRXP_LOOT_脑部损伤几率：高|r
step
.requires quest,10408
.goto Netherstorm,56.2,41.4
.complete 10385,1
step
.requires quest,10408
.goto Netherstorm,56.8,38.6
.turnin 10385 >>交任务: |cRXP_FRIENDLY_脑部损伤几率：高|r
.accept 10405 >>接任务: |cRXP_LOOT_破坏行动|r
step
.requires quest,10408
.goto Netherstorm,56.2,41.4
>>杀死以太坊执政官和霸王。
.complete 10405,1
step
.requires quest,10408
.goto Netherstorm,56.8,38.6
.turnin 10405 >>交任务: |cRXP_FRIENDLY_破坏行动|r
.accept 10406 >>接任务: |cRXP_LOOT_传达信息|r
step
.requires quest,10408
.goto Netherstorm,56.8,38.6
>>确保你站在召唤任务给予者的平台上，否则任务可能会出错。
.complete 10406,1
step
.requires quest,10408
.goto Netherstorm,56.8,38.6
.turnin 10406 >>交任务: |cRXP_FRIENDLY_传达信息|r
.accept 10408 >>接任务: |cRXP_LOOT_节点之王萨哈达尔|r
step
.requires quest,10408
.goto Netherstorm,53.4,42.0
.use 29618 >>分组完成任务。使用Protectorate Disruptor释放他。这个任务不要交。
.complete 10408,1

step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,52.6,59.0
.accept 10718 >>接任务: |cRXP_LOOT_灵魂的声音|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.4
.turnin 10718 >>交任务: |cRXP_FRIENDLY_灵魂的声音|r
.accept 10614 >>接任务: |cRXP_LOOT_风之细语|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,75.2,60.8
.turnin 10614 >>交任务: |cRXP_FRIENDLY_风之细语|r
.accept 10709 >>接任务: |cRXP_LOOT_团圆|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.4
.turnin 10709 >>交任务: |cRXP_FRIENDLY_团圆|r
.accept 10714 >>接任务: |cRXP_LOOT_斯比雷之翼|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,58.0,30.0
.use 31128 >>使用哨子同时监视血腥监工和占卜师
.complete 10714,1
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.4
.turnin 10714 >>交任务: |cRXP_FRIENDLY_斯比雷之翼|r
.accept 10783 >>接任务: |cRXP_LOOT_萨博迈恩男爵|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,53.2,42.1
.turnin 10783 >>交任务: |cRXP_FRIENDLY_萨博迈恩男爵|r
.accept 10715 >>接任务: |cRXP_LOOT_进入沸土峡谷|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,47.0,44.8
>>杀戮并掠夺外壳斗牛士的腺体
.complete 10715,1
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,53.2,41.2
.turnin 10715 >>交任务: |cRXP_FRIENDLY_进入沸土峡谷|r
.accept 10749 >>接任务: |cRXP_LOOT_萨博迈恩男爵的毒药|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.4
.turnin 10749 >>交任务: |cRXP_FRIENDLY_萨博迈恩男爵的毒药|r
.accept 10720 >>接任务: |cRXP_LOOT_最小的生物|r
step << Horde
#sticky
#completewith poisonkeybe
.requires quest,10742
.goto Blade's Edge Mountains,56.5,29.3
+使用Kodohide滚筒控制土拨鼠。使用隐形能力，跑到酒桶里毒死他们。
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,55.4,28.1
.complete 10720,2 
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,55.3,26.0
.complete 10720,1 
step << Horde
#label poisonkeybe
.requires quest,10742
.goto Blade's Edge Mountains,56.0,23.2
.complete 10720,3 
step
.requires quest,11514
.goto Blade's Edge Mountains,53.0,18.8
>>从巴什尔登陆收集法力细胞
.complete 11514,1
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.4
.turnin 10720 >>交任务: |cRXP_FRIENDLY_最小的生物|r
.accept 10721 >>接任务: |cRXP_LOOT_格鲁洛克和野猪|r
step << Horde
#completewith next
.requires quest,10742
.goto Blade's Edge Mountains,60.1,47.7
+使用Huffer的哨声，等待Huffer攻击Grulloc。当他逃跑时，抢走了格鲁洛克的口袋。
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,60.9,47.8
.complete 10721,1 
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,53.2,41.2
.turnin 10721 >>交任务: |cRXP_FRIENDLY_格鲁洛克和野猪|r
.accept 10785 >>接任务: |cRXP_LOOT_这是个陷阱！|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.3
.turnin 10785 >>交任务: |cRXP_FRIENDLY_这是个陷阱！|r
.accept 10723 >>接任务: |cRXP_LOOT_食龙者高格鲁姆|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,30.6,22.2
>>点击Gorgrom祭坛召唤Misha。等待短RP，当Gorgrom死亡时，放置你的3个恐怖图腾。
.complete 10723,1 
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.3
.turnin 10723 >>交任务: |cRXP_FRIENDLY_食龙者高格鲁姆|r
.accept 10724 >>接任务: |cRXP_LOOT_刀塔的囚犯|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,64.2,23.4
>>找到一个小组并完成任务
.use 31144
.complete 10724,1
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,51.8,58.3
.turnin 10724 >>交任务: |cRXP_FRIENDLY_刀塔的囚犯|r
.accept 10742 >>接任务: |cRXP_LOOT_摊牌|r
step << Horde
.requires quest,10742
.goto Blade's Edge Mountains,64.0,18.4
>>找一个小组来帮助你。不要交付任务。
.use 31146
.complete 10742,1
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,55.1,24.0
>>上楼，杀死并掠夺多尔戈克，然后点击你包里的物品
.complete 10795,1 
.collect 31363,1,10797,1 
.accept 10797 >>接任务: |cRXP_LOOT_戈隆的信物|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,62.0,38.0
>>点击包中的物品
.turnin 10797 >>交任务: |cRXP_FRIENDLY_戈隆的信物|r
.accept 10798 >>接任务: |cRXP_LOOT_拜访男爵|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,53.3,41.2
.turnin 10798 >>交任务: |cRXP_FRIENDLY_拜访男爵|r
.accept 10799 >>接任务: |cRXP_LOOT_进入沸土峡谷|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,48.4,43.7
.complete 10799,1 
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,53.2,41.2
.turnin 10799 >>交任务: |cRXP_FRIENDLY_进入沸土峡谷|r
.accept 10800 >>接任务: |cRXP_LOOT_晚安，戈隆|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,60.9,47.7
>>在格鲁洛克身上使用萨布曼男爵的安眠粉。小心，因为它可以抵抗(只需再次使用)
.complete 10800,1 
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,53.2,41.2
.turnin 10800 >>交任务: |cRXP_FRIENDLY_晚安，戈隆|r
.accept 10801 >>接任务: |cRXP_LOOT_这是个陷阱！|r
step << Alliance
.goto Blade's Edge Mountains,44.0,51.8
.accept 10516 >>接任务: |cRXP_LOOT_守备官的困境|r
step << Alliance
.goto Blade's Edge Mountains,42.6,59.4,40,0
.goto Blade's Edge Mountains,39.0,52.6
>>杀死德罗加姆和莫格道格，并掠夺他们的任务物品
.complete 10516,2 
.complete 10516,1 
step << Alliance
.goto Blade's Edge Mountains,44.0,51.8
.turnin 10516 >>交任务: |cRXP_FRIENDLY_守备官的困境|r
.accept 10517 >>接任务: |cRXP_LOOT_高尔迪姆，你完蛋了......|r
step << Alliance
.goto Blade's Edge Mountains,39.4,49.2
>>杀死Gorr'dim
.complete 10517,1 
step << Alliance
.goto Blade's Edge Mountains,44.0,51.8
.turnin 10517 >>交任务: |cRXP_FRIENDLY_高尔迪姆，你完蛋了......|r
.accept 10518 >>接任务: |cRXP_LOOT_插旗子|r
step << Alliance
.goto Blade's Edge Mountains,39.2,58.6,40,0
.goto Blade's Edge Mountains,46.4,74.6
>>杀死一个剑锋战士并将其掠夺为旗帜
.unitscan Bladespire Champion
.collect 30416,1,10518,1
.use 30416 >>使用塔顶的横幅引诱格伦·格鲁布诺什。为了他的头盔杀了他。
.collect 30417,1,10518,1
step << Alliance
.goto Blade's Edge Mountains,36.2,66.2
.turnin 10518 >>交任务: |cRXP_FRIENDLY_插旗子|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,62.0,38.1
.turnin 10801 >>交任务: |cRXP_FRIENDLY_这是个陷阱！|r
.accept 10802 >>接任务: |cRXP_LOOT_食龙者高格鲁姆|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,30.5,22.2
>>点击中间的祭坛，将图腾放在巨人的尸体上
.complete 10802,1 
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,62.0,38.0
.turnin 10802 >>交任务: |cRXP_FRIENDLY_食龙者高格鲁姆|r
.accept 10818 >>接任务: |cRXP_LOOT_萨博迈恩男爵的邀请|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,53.2,41.2
.turnin 10818 >>交任务: |cRXP_FRIENDLY_萨博迈恩男爵的邀请|r
.accept 10805 >>接任务: |cRXP_LOOT_扫荡格鲁尔的巢穴|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,63.0,20.2
.complete 10805,1
.complete 10805,2
.complete 10805,3
.complete 10805,4
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,51.8,58.3
.turnin 10805 >>交任务: |cRXP_FRIENDLY_扫荡格鲁尔的巢穴|r
.accept 10806 >>接任务: |cRXP_LOOT_摊牌|r
step << Alliance
.requires quest,10806
.goto Blade's Edge Mountains,64.0,18.4
>>找一个小组来帮助你。不要交付任务。
.use 31808
.complete 10806,1
step
.requires quest,11000
.goto Blade's Edge Mountains,55.4,44.8
.accept 10995 >>接任务: |cRXP_LOOT_格鲁洛克的巨龙颅骨|r
.accept 10996 >>接任务: |cRXP_LOOT_玛古克的宝箱|r
.accept 10997 >>接任务: |cRXP_LOOT_戈隆的军旗|r
step
.requires quest,11000
.goto Blade's Edge Mountains,60.6,47.6
>>杀死格鲁洛克
.complete 10995,1
step
.requires quest,11000
.goto Blade's Edge Mountains,66.0,55.5
>>找到麦戈克，杀死他，洗劫他的箱子。
.complete 10996,1
step
.requires quest,11000
.goto Terokkar Forest,20.5,17.7
>>杀戮杀手
.complete 10997,1
step
.requires quest,11000
.goto Blade's Edge Mountains,55.4,44.8
.turnin 10995 >>交任务: |cRXP_FRIENDLY_格鲁洛克的巨龙颅骨|r
.turnin 10996 >>交任务: |cRXP_FRIENDLY_玛古克的宝箱|r
.turnin 10997 >>交任务: |cRXP_FRIENDLY_戈隆的军旗|r
.accept 10998 >>接任务: |cRXP_LOOT_维姆高尔的魔典|r
step
.requires quest,11000
.goto Blade's Edge Mountains,77.4,31.2
>>找到一个小组，完成5人小组任务。
.complete 10998,1
step
.requires quest,11000
.goto Blade's Edge Mountains,55.4,44.8
>>在探索中把它转过来，接下来是笨重的一个。
.turnin 10998 >>交任务: |cRXP_FRIENDLY_维姆高尔的魔典|r
step
.requires quest,11000
.goto Blade's Edge Mountains,55.4,44.8
.accept 11000 >>接任务: |cRXP_LOOT_磨魂者|r
step
.requires quest,11000
.goto Blade's Edge Mountains,60.6,25.6
>>再次找到一个团队，完成5人团队任务。这个任务不要交。
.complete 11000,1

step
.requires quest,9738
.goto Zangarmarsh,52.2,36.0
>>进入湖中央的水下水库
.accept 9738 >>接任务: |cRXP_LOOT_失踪的同伴|r
step
.requires quest,9763
.goto Zangarmarsh,52.2,36.0
>>进入湖中央的水下水库
.accept 9763 >>接任务: |cRXP_LOOT_督军的末日|r
step
.requires quest,9738
>>在“从笔”中完成这两个步骤
.complete 9738,3
.complete 9738,2
step
.requires quest,9738
>>在Underbog完成这两个步骤。不要交付任务。
.complete 9738,1
.complete 9738,4
step
.requires quest,9763
>>杀死Steamvaults的最后一个老板。不要交付任务。
.complete 9763,3
step
.requires quest,10667
>>去执行Steamfaults，杀死Hydromacer Thespia。不要交任务。
.complete 10667,1

step
.requires quest,11108
.goto Shadowmoon Valley,66.0,85.4
.reputation 1015,exalted,<0,1
>>这个问题需要提升。
.accept 11107 >>接任务: |cRXP_LOOT_莫格霍尔大王|r
step
.requires quest,11108
.goto Shadowmoon Valley,66.0,85.4
.turnin 11107 >>交任务: |cRXP_FRIENDLY_莫格霍尔大王|r
.accept 11108 >>接任务: |cRXP_LOOT_伊利丹·怒风大人|r
step
.requires quest,11108
>>等待超长RP。不要在这个任务中交出。 
.complete 11108,1
step << Horde
.requires quest,9937
.goto Nagrand,55.7,37.9
.accept 9935 >>接任务: |cRXP_LOOT_通缉：巫婆吉塞尔达|r
.accept 9939 >>接任务: |cRXP_LOOT_通缉：顾问佐尔布|r
step << Alliance
.requires quest,9938
.goto Nagrand,54.7,70.8
.accept 9936 >>接任务: |cRXP_LOOT_通缉：巫婆吉塞尔达|r
.accept 9940 >>接任务: |cRXP_LOOT_通缉：顾问佐尔布|r
step << Horde
.requires quest,9937
.goto Nagrand,71.2,82.2
>>杀死该地区的克伦族吉塞尔达和15名基尔索洛特工
.complete 9935,1
.complete 9935,2
step << Alliance
.requires quest,9938
.goto Nagrand,71.2,82.2
>>杀死该地区的克伦族吉塞尔达和15名基尔索洛特工
.complete 9936,1
.complete 9936,2
step << Horde
.requires quest,9937
.goto Nagrand,46.0,19.0
>>杀死该地区的顾问佐尔布和战争食人魔
.complete 9939,1
.complete 9939,2
.complete 9939,3
step << Alliance
.requires quest,9938
.goto Nagrand,46.0,19.0
>>杀死该地区的顾问佐尔布和战争食人魔
.complete 9940,1
.complete 9940,2
.complete 9940,3
step << Alliance
.requires quest,9938
.goto Nagrand,54.7,70.8
.turnin 9936 >>交任务: |cRXP_FRIENDLY_通缉：巫婆吉塞尔达|r
.turnin 9940 >>交任务: |cRXP_FRIENDLY_通缉：顾问佐尔布|r
step << Horde
.requires quest,9937
.goto Nagrand,55.8,37.8
.turnin 9935 >>交任务: |cRXP_FRIENDLY_通缉：巫婆吉塞尔达|r
.turnin 9939 >>交任务: |cRXP_FRIENDLY_通缉：顾问佐尔布|r
step << Horde
.requires quest,9937
.goto Nagrand,55.8,37.8
.accept 9937 >>接任务: |cRXP_LOOT_通缉：饥饿者杜恩|r
step << Alliance
.requires quest,9938
.goto Nagrand,55.8,37.8
.accept 9938 >>接任务: |cRXP_LOOT_通缉：饥饿者杜恩|r
step << Horde
.requires quest,9937
.goto Nagrand,38.2,77.2,60,0
.goto Nagrand,47.0,70.0,60,0
.goto Nagrand,37.0,58.2,60,0
.goto Nagrand,31.0,69.2,60,0
>>找到并杀死饥饿者杜伦，他在巨大的水晶周围巡逻。完成此任务后不要交上来。
.unitscan Durn the Hungerer
.complete 9937,1
step << Alliance
.requires quest,9938
.goto Nagrand,38.2,77.2,60,0
.goto Nagrand,47.0,70.0,60,0
.goto Nagrand,37.0,58.2,60,0
.goto Nagrand,31.0,69.2,60,0
>>找到并杀死饥饿者杜伦，他在巨大的水晶周围巡逻。完成此任务后不要交上来。
.unitscan Durn the Hungerer
.complete 9938,1
step
.requires quest,9853
.goto Nagrand,61.2,22.2
>>这个任务链的末端是精英，你可能需要帮助。
.accept 9818 >>接任务: |cRXP_LOOT_地下的滋扰|r
step
.requires quest,9853
.goto Nagrand,61.0,22.0
>>Talk to the Earth Elemental
.skipgossip
.complete 9818,1
step
.requires quest,9853
.goto Nagrand,61.2,22.2
.turnin 9819 >>交任务: |cRXP_FRIENDLY_地下的滋扰|r
.accept 9819 >>接任务: |cRXP_LOOT_被折磨的地灵|r
step
.requires quest,9853
.goto Nagrand,67.0,32.0
>>杀死该地区被扭曲的大地精灵
.complete 9819,1 
step
.requires quest,9853
.goto Nagrand,61.2,22.2
.turnin 9819 >>交任务: |cRXP_FRIENDLY_被折磨的地灵|r
.accept 9821 >>接任务: |cRXP_LOOT_吞食诅咒|r
step
.requires quest,9853
.goto Nagrand,56.0,52.0
>>杀死并掠夺愤怒的破碎者
.collect 24473,15,9821,1
step
.requires quest,9853
.goto Nagrand,61.2,22.2
.turnin 9821 >>交任务: |cRXP_FRIENDLY_吞食诅咒|r
.accept 9849 >>接任务: |cRXP_LOOT_打碎外壳|r
step
.requires quest,9853
.goto Nagrand,29.0,67.4,40,0
.goto Nagrand,32.0,80.6,40,0
.goto Nagrand,41.0,82.6,40,0
.use 24501 >>在破碎的隆隆声上使用戈尔多格的巨石，然后杀死产卵的小黄人
.complete 9849,1
step
.requires quest,9853
.goto Nagrand,61.2,22.2
.turnin 9849 >>交任务: |cRXP_FRIENDLY_打碎外壳|r
.accept 9853 >>接任务: |cRXP_LOOT_侵占者古罗克|r
step
.requires quest,9853
.goto Nagrand,29.0,24.8
>>杀死并掠夺侵略者古洛克。完成此任务后不要交上来。
.collect 24503,1,9853,1
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>这个任务链是精英，你可能需要帮助。
.accept 9962 >>接任务: |cRXP_WARN_鲜血竞技场：断蹄|r
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>进入竞技场击败老板
.complete 9962,1
step
.requires quest,9977
.goto Nagrand,42.8,20.8
.turnin 9962 >>交任务: |cRXP_FRIENDLY_鲜血竞技场：断蹄|r
.accept 9967 >>接任务: |cRXP_WARN_鲜血竞技场：蓝色兄弟|r
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>进入竞技场击败老板
.complete 9967,1
step
.requires quest,9977
.goto Nagrand,42.8,20.8
.turnin 9967 >>交任务: |cRXP_FRIENDLY_鲜血竞技场：蓝色兄弟|r
.accept 9970 >>接任务: |cRXP_WARN_鲜血竞技场：裂石之王洛卡达尔|r
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>进入竞技场击败老板
.complete 9970,1
step
.requires quest,9977
.goto Nagrand,42.8,20.8
.turnin 9970 >>交任务: |cRXP_FRIENDLY_鲜血竞技场：裂石之王洛卡达尔|r
.accept 9972 >>接任务: |cRXP_WARN_鲜血竞技场：瑟克拉加斯|r
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>进入竞技场击败老板
.complete 9972,1
step
.requires quest,9977
.goto Nagrand,42.8,20.8
.turnin 9972 >>交任务: |cRXP_FRIENDLY_鲜血竞技场：瑟克拉加斯|r
.accept 9973 >>接任务: |cRXP_WARN_鲜血竞技场：战槌勇士|r
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>进入竞技场击败老板
.complete 9973,1
step
.requires quest,9977
.goto Nagrand,42.8,20.8
.turnin 9973 >>交任务: |cRXP_FRIENDLY_鲜血竞技场：战槌勇士|r
.accept 9977 >>接任务: |cRXP_WARN_鲜血竞技场：终极挑战|r
step
.requires quest,9977
.goto Nagrand,42.8,20.8
>>进入竞技场，击败老板。完成任务后不要交任务！
.complete 9977,1
step
#sticky
+以下任务是每日任务。因为你在角色身上完成了很多普通任务。

step
.requires quest,11369
.isOnQuest 11369
>>进入《植物学》的英雄难度，击败《黑追踪者》。完成任务后不要提交。
.complete 11369,1
step
.requires quest,11384
.isOnQuest 11384
>>进入Underbog的英雄难度并击败曲分裂。完成任务后不要提交。
.complete 11384,1
step
.requires quest,11382
.isOnQuest 11382
>>进入英雄难度的黑色沼泽，击败埃昂纳斯。完成任务后不要提交。
.complete 11382,1
step
.requires quest,11363
.isOnQuest 11363
>>进入英雄难度的破碎大厅，击败酋长卡加特·刀锋拳。完成任务后不要提交。
.complete 11363,1
step
.requires quest,11362
.isOnQuest 11362
>>以英雄难度进入血炉，击败破坏者科利丹。完成任务后不要提交。
.complete 11362,1
step
.requires quest,11375
.isOnQuest 11375
>>在英雄难度上进入暗影迷宫并击败穆尔。完成任务后不要提交。
.complete 11375,1
step
.requires quest,11354
.isOnQuest 11354
>>进入地狱火堡垒，挑战英雄难度，击败纳桑。完成任务后不要提交。
.complete 11354,1
step
.requires quest,11386
.isOnQuest 11386
>>进入英雄难度的Mechanar，击败计算器上的Pathaleon。完成任务后不要提交。
.complete 11386,1
step
.requires quest,11373
.isOnQuest 11373
>>以英雄难度进入玛纳墓穴，击败纳克西斯王子沙法尔。完成任务后不要提交。
.complete 11373,1
step
.requires quest,11378
.isOnQuest 11378
>>以英雄难度进入旧希尔斯布莱德丘陵，击败时代猎人。完成任务后不要提交。
.complete 11378,1
step
.requires quest,11374
.isOnQuest 11374
>>进入奥切奈地穴，挑战英勇难度，击败马拉达尔酋长。完成任务后不要提交。
.complete 11374,1
step
.requires quest,11372
.isOnQuest 11372
>>进入塞塞克大厅(Sethekk Halls)，挑战英雄难度，击败塔龙国王艾吉斯(Talon King Ikiss)。完成任务后不要提交。
.complete 11372,1
step
.requires quest,11368
.isOnQuest 11368
>>进入《奴隶笔》的英雄难度，击败夸美兰。完成任务后不要提交。
.complete 11368,1
step
.requires quest,11388
.isOnQuest 11388
>>进入《魔兽世界》中的英雄难度，击败先驱者Skyriss。完成任务后不要提交。
.complete 11388,1
step
.requires quest,11370
.isOnQuest 11370
>>进入《蒸汽断层》，挑战英雄难度，击败军阀卡利思雷什。完成任务后不要提交。
.complete 11370,1

step
.requires quest,11377
.goto Shattrath City,61.6,15.8
.daily 11380,11377,11381,11379 >>接任务: |cRXP_WARN_魔法美味|r
step
.requires quest,11377
.isOnQuest 11380
.goto Netherstorm,46.0,11.0
>>在虚空风暴的生态穹顶收集法力浆果。完成任务后不要提交。
.complete 11380,1
step
.requires quest,11377
.isOnQuest 11377
>>从围绕斯凯蒂斯飞行的怪物卡里里那里收集一只巨大的卡里里翅膀
.goto Terokkar Forest,61.2,74.2,20,0
.goto Terokkar Forest,69.8,75.0,20,0
.goto Terokkar Forest,74.6,88.4,20,0
.collect 33838,1,11377,1
step << Alliance
.requires quest,11377
.isOnQuest 11377
.goto Stormwind City,53.6,59.6
>>烹饪3个曲汉堡，或从拍卖行购买。
.collect 27659,3,11377,1
step << Horde
.requires quest,11377
.isOnQuest 11377
.goto Orgrimmar,55.6,62.8
>>烹饪3个曲汉堡，或从拍卖行购买。
.collect 27659,3,11377,1
step
.requires quest,11377
.isOnQuest 11377
.use 33837 >>使用您的烹饪锅，并在您的库存中添加配料。完成任务后不要提交。
.complete 11377,1
step << Alliance
.requires quest,11377
.isOnQuest 11381
.goto Stormwind City,53.6,59.6
>>烹饪4个烤羊蹄，或从拍卖行购买。
.collect 27658,4,11381,1
step << Horde
.requires quest,11377
.isOnQuest 11381
.goto Orgrimmar,55.6,62.8
>>烹饪4个烤羊蹄，或从拍卖行购买。
.collect 27658,4,11381,1
step
.requires quest,11377
.isOnQuest 11381
.goto Nagrand,26.0,59.5
.use 33851 >>站在祖先的场地内，用你的烹饪锅和你库存中的配料。完成任务后不要提交。
.complete 11381,1
step << Alliance
.requires quest,11377
.isOnQuest 11377
.goto Stormwind City,53.6,59.6
>>煮2条莫克纳撒尔排骨和一条松脆的蛇，或者从拍卖行买下来。
.collect 31672,2,11377,1
.collect 31673,1,11377,1
step << Horde
.requires quest,11377
.isOnQuest 11377
.goto Orgrimmar,55.6,62.8
>>煮2条莫克纳撒尔排骨和一条松脆的蛇，或者从拍卖行买下来。
.collect 31672,2,11377,1
.collect 31673,1,11377,1
step
.requires quest,11377
.isOnQuest 11377
.goto Blade's Edge Mountains,29.6,83.4
.use 33837 >>站在一个死了的深渊火焰枪上，用你的烹饪锅和你的库存中的配料。完成任务后不要提交。
.complete 11377,1

step
.requires quest,11387
.isOnQuest 11389
>>进入奥克拉兹，击败5名奥克拉兹哨兵。完成任务后不要提交。
.complete 11389,1
step
.requires quest,11387
.isOnQuest 11371
>>进入Steamvault，击败14名Coilfang Myrmidons。完成任务后不要提交。
.complete 11371,1
step
.requires quest,11387
.isOnQuest 11376
>>进入暗影迷宫，击败3名恶意教练。完成任务后不要提交。
.complete 11376,1
step
.requires quest,11387
.isOnQuest 11383
>>进入黑沼泽，击败4个裂谷领主。完成任务后不要提交。
.complete 11383,1
step
.requires quest,11387
.isOnQuest 11364
>>进入破碎大厅，击败4名破碎手百夫长。完成任务后不要提交。
.complete 11364,1
step
.requires quest,11387
.isOnQuest 11385
>>进入《植物学》，击败6名阳光卫士频道。完成任务后不要提交。
.complete 11385,1
step
.requires quest,11387
.isOnQuest 11387
>>进入Mechanar并击败5个风暴锻造毁灭者。完成任务后不要提交。
.complete 11387,1

step
.requires quest,11523
.goto Isle of Quel'Danas,47.4,30.6
.accept 11523 >>接任务: |cRXP_LOOT_激活结界！|r
step
.requires quest,11525
.goto Isle of Quel'Danas,47.2,30.6
.accept 11525 >>接任务: |cRXP_LOOT_转化更多奥术守卫|r
step
.requires quest,11521
.goto Isle of Quel'Danas,51.5,32.5
.accept 11521 >>接任务: |cRXP_LOOT_继续寻根|r
step
.requires quest,11546
.goto Isle of Quel'Danas,51.5,32.5
.accept 11546 >>接任务: |cRXP_LOOT_开始营业|r
step
.requires quest,11541
.goto Isle of Quel'Danas,53.8,34.2
.accept 11541 >>接任务: |cRXP_LOOT_解救绿鳃奴隶|r
step
.requires quest,11533
.goto Isle of Quel'Danas,47.6,35.2
.accept 11533 >>接任务: |cRXP_LOOT_继续空袭|r
step
.requires quest,11547
.goto Isle of Quel'Danas,47.6,35.4
.accept 11547 >>接任务: |cRXP_LOOT_魔网能量线的读数|r
step
.requires quest,11536
.goto Isle of Quel'Danas,50.4,40.6
.accept 11536 >>接任务: |cRXP_LOOT_不要停下......|r
step
.requires quest,11544
.goto Isle of Quel'Danas,50.6,40.8
.accept 11544 >>接任务: |cRXP_LOOT_阿塔玛军备|r
step
.requires quest,11542
.goto Isle of Quel'Danas,50.6,39.0
.accept 11542 >>接任务: |cRXP_LOOT_拦截援军|r
step
.requires quest,11539
.goto Isle of Quel'Danas,49.4,40.2
.accept 11539 >>接任务: |cRXP_LOOT_占领港口|r
step
.requires quest,11536
.goto Isle of Quel'Danas,65.0,48.0
>>深松矿石的敞口箱子
.collect 34479,3
step
.requires quest,11541
.goto Isle of Quel'Danas,60.9,51.6
.use 34483 >>为穆洛克控制之球杀死黑松树警报器，并将其用于格林吉尔奴隶。完成任务后不要提交。
.complete 11541,1
step
.requires quest,11547
.goto Isle of Quel'Danas,61.2,62.5
.use 34533 >>使用神龛附近的星际漫游者水晶。完成任务后不要提交。
.complete 11547,2
step
.requires quest,11547
.goto Isle of Quel'Danas,48.4,45.5
.use 34533 >>使用入口附近的星际漫游者水晶。
.complete 11547,1
step
.requires quest,11523
.goto Isle of Quel'Danas,47.4,30.6
.use 34338 >>使用法力残留物为基地周围的任何守卫提供能量
.complete 11523,1
step
.requires quest,11539
.goto Isle of Quel'Danas,45.6,41.4
>>杀死该区域周围的Dawnblade敌人。完成任务后不要提交。
.complete 11539,1
.complete 11539,2
.complete 11539,3
step
.requires quest,11547
.goto Isle of Quel'Danas,42.0,35.2
.use 34533 >>使用血晶附近的星际魔术师水晶。
.complete 11547,3
step
.requires quest,11533
.goto Isle of Quel'Danas,48.4,25.2
.use 34475 >>与Ayren Cloudbreaker交谈，飞越亲爱的疤痕，使用奥术冲锋杀死敌人
.complete 11533,1
.complete 11533,2
.complete 11533,3
step
.requires quest,11542
.skipgossip
>>与Ayren Cloudbreaker交谈，进行飞越船只的飞行。
.goto Isle of Quel'Danas,48.4,25.2
step
.requires quest,11542
.goto Isle of Quel'Danas,48.4,25.2
.use 34489 >>在每艘船的船帆上洒上燃烧的油
.complete 11542,1
.complete 11542,2
.complete 11542,3
step
.requires quest,11542
.goto Isle of Quel'Danas,48.4,25.2
>>着陆时杀死道恩布拉德预备队。完成任务后不要提交。
.complete 11542,4
step
.requires quest,11546
.goto Isle of Quel'Danas,38.0,29.7
>>掠夺该地区的血莓。
.complete 11546,1
step
.requires quest,11523
.goto Isle of Quel'Danas,44.8,26.4,40,0
.goto Isle of Quel'Danas,40.6,30.4,40,0
.goto Isle of Quel'Danas,35.6,35.0
>>为法力残留物杀死穷凶极恶的敌人
.collect 34338,4,11523,1
step
.requires quest,11525
.goto Isle of Quel'Danas,43.8,26.6,40,0
.goto Isle of Quel'Danas,37.4,32.4,40,0
.goto Isle of Quel'Danas,34.6,38.8
.use 34368 >>击败反复无常的哨兵并替换其核心
.complete 11525,1
step
#aldor
.requires quest,11492
.goto Isle of Quel'Danas,47.4,30.6
.turnin 11481 >>交任务: |cRXP_FRIENDLY_太阳之井的危机|r
.accept 11488 >>接任务: |cRXP_LOOT_魔导师平台|r
step
#scryer
.requires quest,11492
.goto Isle of Quel'Danas,47.4,30.6
.turnin 11482 >>交任务: |cRXP_FRIENDLY_使命的召唤|r
.accept 11488 >>接任务: |cRXP_LOOT_魔导师平台|r
step
.requires quest,11492
>>进入魔术师露台
.turnin 11488 >>交任务: |cRXP_FRIENDLY_魔导师平台|r
.accept 11490 >>接任务: |cRXP_LOOT_占星球|r
step
.requires quest,11492
>>在圣珠上的魔法师露台完成任务。
.complete 11490,1
step
.requires quest,11492
>>Turn in the quest inside the instance.
.turnin 11490 >>交任务: |cRXP_FRIENDLY_占星球|r
.accept 11492 >>接任务: |cRXP_LOOT_大难不死|r
step
.requires quest,11492
>>在实例内杀死Kael'thas。不要交任务。
.complete 11492,1
step
.requires quest,11544
.goto Shadowmoon Valley,69.5,39.6
>>在阿塔玛露台周围杀死兽人，获得5件阿塔玛武器。
.collect 34500,5,11544,1
step
.requires quest,11544
.goto Isle of Quel'Danas,50.1,40.5
.use 34500 >>站在Hauthaa铁砧旁边时，使用Ata'mal武器。完成任务后不要提交。
.complete 11544,1
step
.requires quest,11521
.goto Terokkar Forest,58.1,13.2
>>杀死Razorthorn Flayers获取腺体
.collect 34255,1,11521,1
step
.requires quest,11521
.use 34255 >>使用剃须刀掠夺者的腺体来控制它，并露出根部供你挖掘。完成任务后不要提交。
.complete 11521,1

step
.requires quest,11020
.goto Shadowmoon Valley,66.0,86.4
.accept 11020 >>接任务: |cRXP_LOOT_缓慢的死亡|r
step
.requires quest,11020
.goto Shadowmoon Valley,45.8,61.5,20
>>杀死附近的Felfire Diemetradon获取Fel腺体。
.collect 32502,12,11020,1
step
.requires quest,11020
.goto Shadowmoon Valley,66.0,82.1,30,0
.goto Shadowmoon Valley,76.3,85.4,30,0
.use 32503>>用龙嘴狮附近的亚齐尔羊肉毒死它们。完成任务后不要提交。
.complete 11020,1

step
.requires quest,11035
.goto Shadowmoon Valley,66.0,86.4
.accept 11035 >>接任务: |cRXP_LOOT_危险的天空|r
step
.requires quest,11035
.goto Shadowmoon Valley,72.3,64.3
>>为了荷兰之翼遗迹杀死龙嘴运输车。完成任务后不要提交。
.complete 11035,1

step
.requires quest,11515
.goto Hellfire Peninsula,58.2,17.6
.accept 11515 >>接任务: |cRXP_LOOT_血债血偿|r
step
.requires quest,11516
.goto Hellfire Peninsula,58.2,17.6
.accept 11516 >>接任务: |cRXP_LOOT_轰炸传送门|r
step
.requires quest,11516
.goto Hellfire Peninsula,58.2,17.6
.use 34253 >>召唤带着嘶嘶灰烬的活火炬，将其靠近火元素，为其供电。当它完成时，把它带到恶魔之门。
.complete 11516,1
step
.requires quest,11515
.use 34257 >>为恶魔之血杀死愤怒先驱，然后对恶魔之血提升者使用恶魔虹吸。完成任务后不要提交。
.complete 11515,1
step << Alliance
.requires quest,11502
.goto Nagrand,55.8,73.6
.accept 11502 >>接任务: |cRXP_LOOT_保卫哈兰|r
step << Alliance
.requires quest,11502
.goto Nagrand,55.8,73.6,20,0
>>杀死哈拉周围的敌人派系守卫或玩家。完成任务后不要提交。
.complete 11502,1

step << Horde
.requires quest,11503
.goto Nagrand,52.8,36.0
.accept 11503 >>接任务: |cRXP_LOOT_新仇旧怨|r
step << Horde
.requires quest,11503
.goto Nagrand,55.8,73.6,20,0
>>杀死哈拉周围的敌人派系守卫或玩家。完成任务后不要提交。
.complete 11503,1
step
.requires quest,11008
.goto Terokkar Forest,64.6,66.6
.accept 11008 >>接任务: |cRXP_LOOT_轰炸斯克提斯|r
step
.requires quest,11008
.goto Terokkar Forest,70.4,80.1,10,0
.goto Terokkar Forest,74.7,88.3,10,0
.goto Terokkar Forest,67.6,86.0,10,0
.goto Terokkar Forest,62.6,80.8,10,0
.use 32406 >>在您上山时，在您的库存中使用爆破费用来摧毁该区域结构顶部的鸡蛋。完成任务后不要提交。
.complete 11008,1
]])
RXPGuides.RegisterGuide([[
#version 25
#wotlk
#tbc
#group RestedXP WLK的准备
#defaultfor None
#name RestedXP 准备的 经验 总数
#hidewindow
step
>>到目前为止，您准备的经验是：
.showtotalxp
>>在角色可能的总数中：
.showtotalxp 1
>>对于任务日志任务，请将物品放入包中，以便所有任务都标记为“(完成)”。
>>-
.show25quests >>单击此处查看角色的25个最佳任务列表
]])
RXPGuides.RegisterGuide([[
#version 25
#wotlk
#tbc
#group RestedXP WLK的准备
#defaultfor None
#name 发布准备指南
step
#sticky
+这本指南是关于做任务链，可以很容易地拿起，并在启动时交给，而不需要将它们保存在您的任务日志中。如果指南的这一章说要交东西，那就交吧！没关系，你不会在实验中失败。只是不要交任何它没有告诉你的任务，这些是我们正在保存的任务。他们将按照“交车指南”交车。
step
.reputation 989,revered >>与时间守护者一起获得尊敬。
>>垃圾洞时间地牢直到被尊敬。这是一个必须做的步骤，除非你有一个术士可以在发射时召唤你去洞穴。
step << Horde
.reputation 729,exalted >>与霜狼氏族一起升华
.goto Alterac Mountains,62.2,58.9
>>这一步需要在发射日召唤奥特兰克山脉。如果没有，请跳过。我们正在提交AV小饰物升级任务。如果你已经提交了令人尊敬的升级任务，那么至少要达到令人尊敬或赞叹的程度。尊敬和崇高给予同样的经验。这一经验是由奥特兰克山谷的普华永道获得的。
* Be sure to do Proving Grounds and unlock the base level of your trinket. This quest is picked up in Alterac Mountains
.accept 7161 >>接任务: |cRXP_LOOT_试炼场|r
.turnin 7161 >>交任务: |cRXP_FRIENDLY_试炼场|r
step << Alliance
.reputation 730,exalted >>与风暴守卫一起升华
.goto Alterac Mountains,39.6,81.2
>>这一步需要在发射日召唤奥特兰克山脉。如果没有，请跳过。我们正在提交AV小饰物升级任务。如果你已经提交了令人尊敬的升级任务，那么至少要达到令人尊敬或赞叹的程度。尊敬和崇高给予同样的经验。这一经验是由奥特兰克山谷的普华永道获得的。
* Be sure to do Proving Grounds and unlock the base level of your trinket. This quest is picked up in Alterac Mountains
.accept 7162 >>接任务: |cRXP_LOOT_试炼场|r
.turnin 7162 >>交任务: |cRXP_FRIENDLY_试炼场|r
step
.reputation 967,exalted >>《紫罗兰之眼》让你神采飞扬。
>>我们正在进行卡拉环升级任务。至少获得荣誉，所有过去获得荣誉的营业额都是相同的经验。如果你已经提交了戒指升级任务，那么就提升一个代表级别。你可以累积多次重复奖励以获得更多经验！通过运行Karazhan获得此重复次数。
step
.reputation 990,exalted >>用沙子的尺度来提升自己。
>>我们正在进行Hyjal环升级任务。至少获得荣誉，所有过去获得荣誉的营业额都是相同的经验。如果你已经提交了戒指升级任务，那么就提升一个代表级别。通过运行Mount Hyjal获得此重复次数。
step << Horde
.goto Hellfire Peninsula,87.4,48.2
.accept 10289 >>接任务: |cRXP_LOOT_萨尔玛之旅|r
step << Horde
#completewith next
.goto Hellfire Peninsula,55.8,36.8
.fly Thrallmar >>再次与NPC对话，飞往萨尔玛
step << Horde
.goto Hellfire Peninsula,55.8,36.8
.turnin 10289 >>交任务: |cRXP_FRIENDLY_萨尔玛之旅|r
.accept 10291 >>接任务: |cRXP_LOOT_向纳兹格雷尔报到|r
step << Horde
.goto Hellfire Peninsula,55.0,36.0
.turnin 10291 >>交任务: |cRXP_FRIENDLY_向纳兹格雷尔报到|r
.accept 10121 >>接任务: |cRXP_LOOT_消灭燃烧军团|r
step << Horde
>>跑出城镇
.goto Hellfire Peninsula,58.0,41.2
.turnin 10121 >>交任务: |cRXP_FRIENDLY_消灭燃烧军团|r
.accept 10123 >>接任务: |cRXP_LOOT_魔火峡谷|r
step << Horde
.goto Hellfire Peninsula,63.0,38.0
>>杀死该地区的火焰行者小鬼、地狱战警和恐怖召唤者
.complete 10123,1
.complete 10123,2
.complete 10123,3
step << Horde
.goto Hellfire Peninsula,58.0,41.2
.turnin 10123 >>交任务: |cRXP_FRIENDLY_魔火峡谷|r
.accept 10124 >>接任务: |cRXP_LOOT_机甲残骸|r
step << Horde
.goto Hellfire Peninsula,65.8,43.6
.turnin 10124 >>交任务: |cRXP_FRIENDLY_机甲残骸|r
.accept 10208 >>接任务: |cRXP_LOOT_阻断援军|r
step << Horde
#sticky
#label disrupttransp
.goto Hellfire Peninsula,70.8,45.1
>>一旦你得到4块符石，使用托阿奇的初级技能来禁用军团运输者。
.complete 10208,1 
step << Horde
#label disrupttransp
.goto Hellfire Peninsula,74.1,38.9
>>一旦你再收集4块符石，使用To'arch's Primers来禁用军团运输者。
.complete 10208,2 
step << Horde
#requires disrupttransp
.goto Hellfire Peninsula,65.9,43.6
.turnin 10208 >>交任务: |cRXP_FRIENDLY_阻断援军|r
.accept 10129 >>接任务: |cRXP_LOOT_任务：穆尔凯斯和沙德拉兹之门|r
step << Horde
.goto Hellfire Peninsula,78.0,51.2
.complete 10129,2 
step << Horde
.goto Hellfire Peninsula,78.2,47.7
.complete 10129,1 
step << Horde
.goto Hellfire Peninsula,65.9,43.6
.turnin 10129 >>交任务: |cRXP_FRIENDLY_任务：穆尔凯斯和沙德拉兹之门|r
.accept 10162 >>接任务: |cRXP_LOOT_任务：地狱岩床|r
.accept 10388 >>接任务: |cRXP_LOOT_返回萨尔玛|r
step << Horde
>>当你飞越深渊大陆架时，使用52区特殊炸弹来完成这个任务。
.complete 10162,3 
.complete 10162,1 
.complete 10162,2 
step << Horde
.goto Hellfire Peninsula,65.9,43.6
.turnin 10162 >>交任务: |cRXP_FRIENDLY_任务：地狱岩床|r
step << Horde
.goto Hellfire Peninsula,55.0,36.0
.turnin 10388 >>交任务: |cRXP_FRIENDLY_返回萨尔玛|r
.accept 9400 >>接任务: |cRXP_LOOT_刺客|r
step << Horde
.goto Hellfire Peninsula,33.6,43.6
>>飞向兽人尸体
.complete 9400,1
step << Horde
.goto Hellfire Peninsula,33.6,43.6
.turnin 9400 >>交任务: |cRXP_FRIENDLY_刺客|r
step << Alliance
.goto Hellfire Peninsula,87.4,50.7
.accept 10288 >>接任务: |cRXP_LOOT_抵达外域|r
step << Alliance
.goto Hellfire Peninsula,87.4,52.4
.turnin 10288 >>交任务: |cRXP_FRIENDLY_抵达外域|r
.accept 10140 >>接任务: |cRXP_LOOT_荣耀堡之旅|r
step << Alliance
.goto Hellfire Peninsula,54.7,62.8
>>要么再和飞行管理员谈谈，要么自己飞到荣誉舱
.skipgossip
.turnin 10140 >>交任务: |cRXP_FRIENDLY_荣耀堡之旅|r
.accept 10254 >>接任务: |cRXP_LOOT_指挥官达纳斯|r
step << Alliance
.goto Hellfire Peninsula,56.6,66.6
.turnin 10254 >>接任务: |cRXP_LOOT_指挥官达纳斯|r
.accept 10141 >>接任务: |cRXP_LOOT_重生的军团|r
step << Alliance
.goto Hellfire Peninsula,61.7,60.7
.turnin 10141 >>交任务: |cRXP_FRIENDLY_重生的军团|r
.accept 10142 >>接任务: |cRXP_LOOT_苦痛之路|r
step << Alliance
.goto Hellfire Peninsula,67.0,58.6
>>消灭该地区的恶魔
.complete 10142,1 
.complete 10142,2 
.complete 10142,3 
step << Alliance
.goto Hellfire Peninsula,61.7,60.7
.turnin 10142 >>交任务: |cRXP_FRIENDLY_苦痛之路|r
.accept 10143 >>接任务: |cRXP_LOOT_远征军岗哨|r
step << Alliance
.goto Hellfire Peninsula,56.6,66.5
.accept 10047 >>接任务: |cRXP_LOOT_荣耀之路|r
step << Alliance
.goto Hellfire Peninsula,64.5,49.6,10,0
.goto Hellfire Peninsula,54.6,50.4,10,0
.use 25889
>>在荣耀之路发现的被践踏的骷髅上使用德莱尼圣水。
.complete 10047,1
step << Alliance
.goto Hellfire Peninsula,56.6,66.6
.turnin 10047 >>交任务: |cRXP_FRIENDLY_荣耀之路|r
step << Alliance
.goto Hellfire Peninsula,23.0,40.4
>>前往Hellfire半岛西部
.accept 9390 >>接任务: |cRXP_LOOT_寻找瑟丹|r
step << Alliance
.goto Hellfire Peninsula,26.8,37.6
.turnin 9390 >>交任务: |cRXP_FRIENDLY_寻找瑟丹|r
step << Alliance
.reputation 946,friendly >>与荣誉保持友好，这样您就可以在发布时提交获得米伦的信任。通过垃圾地牢做到这一点，以减少任务损失。
step << Horde
.goto Zangarmarsh,85.2,54.6
.accept 9774 >>接任务: |cRXP_LOOT_厚重多头蛇鳞片|r
step << Horde
.goto Zangarmarsh,84.1,39.0,80,0
.goto Zangarmarsh,85.2,54.6,80,0
.goto Zangarmarsh,80.1,34.3,80,0
.goto Zangarmarsh,81.0,41.3
>>杀死该地区的九头蛇并掠夺其鳞片。
*They do NOT share spawns with the Giants.
.complete 9774,1
step << Horde
.goto Zangarmarsh,85.2,54.6
.turnin 9774 >>交任务: |cRXP_FRIENDLY_厚重多头蛇鳞片|r
step
.goto Zangarmarsh,78.4,62.0
.accept 9716 >>接任务: |cRXP_LOOT_暗泽湖的异常|r
step
.goto Zangarmarsh,70.8,81.3
.complete 9716,1
step
.goto Zangarmarsh,78.4,62.0
.turnin 9716 >>交任务: |cRXP_FRIENDLY_暗泽湖的异常|r
.accept 9718 >>接任务: |cRXP_LOOT_乌鸦的飞翔|r
step
.goto Zangarmarsh,78.4,62.0
.use 25465 >>使用风暴护身符，等待任务完成。需要2分30秒，稍作伸展休息：)
.complete 9718,1
step
.goto Zangarmarsh,78.4,62.0
.turnin 9718 >>交任务: |cRXP_FRIENDLY_乌鸦的飞翔|r
.accept 9720 >>接任务: |cRXP_LOOT_恢复平衡|r
step << skip
#label schemmy
.itemcount 24330,1
.use 24330 >>使用包中的排水示意图接受任务
.accept 9731 >>接任务: |cRXP_LOOT_抽水泵结构图|r
step
.goto Zangarmarsh,70.6,80.3
.use 24355 >>使用铁藤种子禁用Umbrafen Lake的控制台。
.complete 9720,1
step
.goto Zangarmarsh,25.2,43.6
.use 24355 >>使用铁藤种子禁用马歇尔莱克的控制台。
.complete 9720,2
step << skip
#requires schemmy
.itemcount 24330,1
.goto Zangarmarsh,50.4,40.9
>>探索足够深的排水沟以完成任务。
.complete 9731,1
step
.goto Zangarmarsh,62.0,40.8
.use 24355 >>使用铁藤种子在蛇湖禁用。
.complete 9720,3
step
.goto Zangarmarsh,63.1,64.1
.use 24355 >>使用铁藤种子在泻湖禁用。
.complete 9720,4
step
.goto Zangarmarsh,78.4,62.0
.turnin 9720 >>交任务: |cRXP_FRIENDLY_恢复平衡|r
step << skip
#requires schemmy
.itemcount 24330,1
.goto Zangarmarsh,78.4,62.0
.turnin 9731 >>交任务: |cRXP_FRIENDLY_抽水泵结构图|r
step
#label thickysticky
.goto Terokkar Forest,44.4,26.2 
.accept 9968 >>接任务: |cRXP_LOOT_奇怪的能量|r
.accept 9971 >>接任务: |cRXP_LOOT_树林中的线索|r
step
#sticky
#requires thickysticky
.goto Terokkar Forest,45.1,21.8,40,0
.goto Terokkar Forest,44.4,30.8,40,0
.goto Terokkar Forest,45.1,21.8
>>杀死Terromoth和Vicious Terromotth以获取样本。
*Terromoths spawn on the south side, Vicious Terrormoths spawn north in the village.
.complete 9968,2
.complete 9968,1
step
.goto Terokkar Forest,45.1,21.8
>>与客栈地板上的奇怪物体互动。
.complete 9971,1
step
#requires thickysticky
.goto Terokkar Forest,44.4,26.2 
.turnin 9968 >>交任务: |cRXP_FRIENDLY_奇怪的能量|r
.turnin 9971 >>交任务: |cRXP_FRIENDLY_树林中的线索|r

step
.goto Terokkar Forest,44.4,26.2 
.accept 9978 >>接任务: |cRXP_LOOT_不择手段|r
step
.goto Terokkar Forest,38.3,26.6,80,0
.goto Terokkar Forest,50.3,29.0,80,0
.goto Terokkar Forest,38.3,26.6
.line Terokkar Forest,38.3,26.6,40.6,25.5,47.2,27.0,50.3,29.0
.skipgossip
>>在路上找到Empoor，和他战斗，说服他告诉你他知道什么。
.unitscan Empoor
.turnin 9978 >>交任务: |cRXP_FRIENDLY_不择手段|r
.accept 9979 >>接任务: |cRXP_LOOT_星界商人拉斯莱|r
step << Horde
.goto Terokkar Forest,48.8,45.6
.accept 10000 >>接任务: |cRXP_LOOT_不受欢迎者|r
step << Horde
.goto Terokkar Forest,67.4,51.8
>>杀死该地区的翘皮狮子
.complete 10000,1 
step << Horde
.goto Terokkar Forest,63.4,42.6
.turnin 10000 >>交任务: |cRXP_FRIENDLY_不受欢迎者|r
step << Alliance
.goto Terokkar Forest,58.2,54.8
.accept 9998 >>接任务: |cRXP_LOOT_野蛮的邻居|r
step << Alliance
.goto Terokkar Forest,67.4,51.8
>>杀死该地区的翘皮狮子
.complete 9998,1 
step << Alliance
.goto Terokkar Forest,69.6,44.2
.turnin 9998 >>交任务: |cRXP_FRIENDLY_野蛮的邻居|r
step
.goto Shattrath City,72.4,31.6
.turnin 9979 >>交任务: |cRXP_FRIENDLY_星界商人拉斯莱|r
.accept 10112 >>接任务: |cRXP_LOOT_私人事务|r
step
.goto Terokkar Forest,31.6,42.6
>>杀死并掠夺斯基提亚暴徒的赃物。
.complete 10112,1
step
.goto Shattrath City,72.2,30.9
.turnin 10112 >>交任务: |cRXP_FRIENDLY_私人事务|r
step
.goto Shattrath City,72.2,30.9
.accept 9990 >>接任务: |cRXP_LOOT_调查图雷姆|r
step
>>在废墟中收集密封的盒子。
.goto Terokkar Forest,54.0,30.0
.complete 9990,1
step << Horde
.goto Terokkar Forest,44.4,26.2 
.turnin 9990 >>交任务: |cRXP_FRIENDLY_调查图雷姆|r
.accept 9995 >>接任务: |cRXP_LOOT_这些东西是什么？|r
step << Alliance
.goto Terokkar Forest,44.4,26.2 
.turnin 9990 >>交任务: |cRXP_FRIENDLY_调查图雷姆|r
.accept 9994 >>接任务: |cRXP_LOOT_这些东西是什么？|r
step << Horde
.goto Terokkar Forest,50.0,45.8
.turnin 9995 >>交任务: |cRXP_FRIENDLY_这些东西是什么？|r
.accept 10448 >>接任务: |cRXP_LOOT_向裂石营地报到|r
step << Horde
.goto Terokkar Forest,50.0,44.8
.accept 9993 >>接任务: |cRXP_LOOT_奥雷巴油|r
step << Horde
#sticky
#completewith endofseedoil
#label seedoil
>>在特罗卡森林的树木周围收集木兰籽。
* They look like little blue crystals.
.complete 9993,1
step << Horde
.goto Terokkar Forest,63.2,42.4
.turnin 10448 >>交任务: |cRXP_FRIENDLY_向裂石营地报到|r
.accept 9997 >>接任务: |cRXP_LOOT_攻击火翼岗哨|r
step << Alliance
.goto Terokkar Forest,57.0,53.6
.turnin 9994 >>交任务: |cRXP_FRIENDLY_这些东西是什么？|r
.accept 10444 >>接任务: |cRXP_LOOT_奥蕾莉亚岗哨|r
step << Alliance
.goto Terokkar Forest,69.6,44.0
.turnin 10444 >>交任务: |cRXP_FRIENDLY_奥蕾莉亚岗哨|r
.accept 9996 >>接任务: |cRXP_LOOT_攻击火翼岗哨|r
step << Alliance
.goto Terokkar Forest,71.6,37.8
>>杀死火翼防御者、血矮人和术士。
.complete 9996,1
.complete 9996,2
.complete 9996,3
step << Horde
.goto Terokkar Forest,71.6,37.8
>>杀死火翼防御者、血矮人和术士。
.complete 9997,1
.complete 9997,2
.complete 9997,3
step << Alliance
.goto Terokkar Forest,69.6,44.0
.turnin 9996 >>交任务: |cRXP_FRIENDLY_攻击火翼岗哨|r
.accept 10446 >>接任务: |cRXP_LOOT_终极密码|r
step << Horde
.goto Terokkar Forest,63.2,42.4
.turnin 9997 >>交任务: |cRXP_FRIENDLY_攻击火翼岗哨|r
.accept 10447 >>接任务: |cRXP_LOOT_终极密码|r
step
#sticky
#completewith endofseedoil
.goto Terokkar Forest,73.6,36.0
>>飞到塔顶
step << Alliance
.goto Terokkar Forest,73.8,35.8
>>杀掉莎斯·沃尔登以获得最终密码。
.collect 29912,1,10446,1
step << Horde
.goto Terokkar Forest,73.8,35.8
>>杀掉莎斯·沃尔登以获得最终密码。
.collect 29912,1,10447,1
step << Horde
.goto Terokkar Forest,71.3,37.4
.use 29912 >>点击Firewing Point中心的柱子
.complete 10447,1
step << Alliance
.goto Terokkar Forest,71.3,37.4
.use 29912 >>点击Firewing Point中心的柱子
.complete 10446,1
step << Horde
.goto Terokkar Forest,50.0,45.8
.turnin 10447 >>交任务: |cRXP_FRIENDLY_终极密码|r
step << Alliance
.goto Terokkar Forest,57.0,53.5
.turnin 10446 >>交任务: |cRXP_FRIENDLY_终极密码|r
step << Horde
#requires seedoil
.goto Terokkar Forest,50.1,44.9
.turnin 9993 >>交任务: |cRXP_FRIENDLY_奥雷巴油|r
step
#label endofseedoil
.goto Terokkar Forest,49.8,76.2
.accept 10920 >>接任务: |cRXP_LOOT_复仇之战|r
step
.goto Terokkar Forest,51.8,78.8,30,0
.goto Terokkar Forest,55.6,61.2
>>沿着骨废料的边缘杀死恐惧方寡妇。
.complete 10920,1
step
.goto Terokkar Forest,49.8,76.2
.turnin 10920 >>交任务: |cRXP_FRIENDLY_复仇之战|r
.accept 10921 >>接任务: |cRXP_LOOT_泰罗卡狼蛛|r
step
.goto Terokkar Forest,54.0,81.6
>>杀死特洛克卡兰图拉。这是一个精英任务，你可能需要帮助。
.complete 10921,1
step
.goto Terokkar Forest,49.8,76.2
.turnin 10921 >>交任务: |cRXP_FRIENDLY_泰罗卡狼蛛|r
step
.goto Terokkar Forest,35.0,65.2
>>在Auchenai地穴入口附近找到Ha'lei。
.accept 10227 >>接任务: |cRXP_LOOT_我看到了死德莱尼人|r
step
.goto Terokkar Forest,35.1,66.0
.turnin 10227 >>交任务: |cRXP_FRIENDLY_我看到了死德莱尼人|r
.accept 10228 >>接任务: |cRXP_LOOT_伊瑟基尔|r
step << Horde
.goto Nagrand,55.6,37.6
>>前往: |cRXP_PICK_纳格兰|r
.accept 9888 >>接任务: |cRXP_LOOT_落魄的领袖|r
step << Horde
.goto Terokkar Forest,19.8,60.8
.turnin 9888 >>交任务: |cRXP_FRIENDLY_落魄的领袖|r
.accept 9889 >>接任务: |cRXP_LOOT_别杀那个胖家伙！|r
step << Horde
.goto Terokkar Forest,19.8,62.6
>>杀死10名巨石拳入侵者。不要和无情的乌克尔战斗。
.complete 9889,1
step << Horde
.goto Terokkar Forest,20.0,63.4
>>殴打Unkor直到他提交。
.complete 9889,2
.turnin 9889 >>交任务: |cRXP_FRIENDLY_别杀那个胖家伙！|r
.accept 9890 >>接任务: |cRXP_LOOT_成功了！|r
step << Horde
.goto Terokkar Forest,19.6,60.8
.turnin 9890 >>交任务: |cRXP_FRIENDLY_成功了！|r
.accept 9891 >>接任务: |cRXP_LOOT_吉尔拉斯这个懦夫！|r
step << Horde
.goto Nagrand,55.6,37.6
.turnin 9891 >>交任务: |cRXP_FRIENDLY_吉尔拉斯这个懦夫！|r
.accept 9906 >>接任务: |cRXP_LOOT_粗暴的信号|r
step << Horde
.goto Nagrand,76.4,61.6,20,0
.goto Nagrand,74.6,69.6
>>杀死巨石拳食人魔。
.complete 9906,1
.complete 9906,2
step << Horde
.goto Nagrand,55.6,37.6
.turnin 9906 >>交任务: |cRXP_FRIENDLY_粗暴的信号|r
.accept 9907 >>接任务: |cRXP_LOOT_大胆的攻势|r
step << Horde
.goto Nagrand,49.6,56.4
.goto Nagrand,40.8,31.6
>>杀死巨石拳食人魔。
.complete 9907,1
.complete 9907,2
step << Horde
.goto Nagrand,55.6,37.6
.turnin 9907 >>交任务: |cRXP_FRIENDLY_大胆的攻势|r
.accept 10107 >>接任务: |cRXP_LOOT_外交手段|r
step << Horde
.goto Nagrand,73.8,62.6
>>与Lantressor对话
.skipgossip
.turnin 10107 >>交任务: |cRXP_FRIENDLY_外交手段|r
.accept 9928 >>接任务: |cRXP_LOOT_欺诈所需的军备|r
.accept 9927 >>接任务: |cRXP_LOOT_无情的计谋|r
step << Horde
.goto Nagrand,69.4,81.4
>>从堡垒周围的箱子里捡起基尔索洛武器。
.complete 9928,1
>>杀死基尔的敌人，在他们的尸体上贴上横幅。你不必瞄准尸体。
.use 25552
.complete 9927,1
step << Horde
.goto Nagrand,73.8,62.6
.turnin 9928 >>交任务: |cRXP_FRIENDLY_欺诈所需的军备|r
.turnin 9927 >>交任务: |cRXP_FRIENDLY_无情的计谋|r
.accept 9931 >>接任务: |cRXP_LOOT_以牙还牙|r
.accept 9932 >>接任务: |cRXP_LOOT_尸证|r
step << Horde
.goto Nagrand,54.8,39.8
.accept 9864 >>接任务: |cRXP_LOOT_失踪的战斗小队|r
step << Horde
#sticky
.goto Nagrand,46.7,24.3
>>站在柴堆旁边时，使用湿羊毛毯。
* Boulderfist Saboteurs will spawn, protect them if any ogres aggro to them.
.use 25658
.complete 9932,1
step << Horde
.goto Nagrand,46.0,20.2
>>杀死Warmaul食人魔，在他们的尸体上贴上横幅。你不必瞄准尸体。
.use 25555
.complete 9931,1
step << Horde
.goto Nagrand,32.4,36.0
.turnin 9864 >>交任务: |cRXP_FRIENDLY_失踪的战斗小队|r
.accept 9865 >>接任务: |cRXP_LOOT_我们曾是战士|r
step << Horde
.goto Nagrand,73.8,62.6
.turnin 9931 >>交任务: |cRXP_FRIENDLY_以牙还牙|r
.turnin 9932 >>	交任务: |cRXP_FRIENDLY_尸证|r
step << Horde
.goto Nagrand,32.6,42.6
>>杀死黑血清道夫和掠夺者。
.complete 9865,1
.complete 9865,2
step << Horde
.goto Nagrand,32.4,36.0
.turnin 9865 >>交任务: |cRXP_FRIENDLY_我们曾是战士|r
step << Alliance
.goto Nagrand,55.0,70.6
.accept 9917 >>接任务: |cRXP_LOOT_是我眼花了？|r
step << Alliance
.goto Nagrand,62.8,72.4
>>为计划杀死巨石拳猎人。
.complete 9917,1
step << Alliance
.goto Nagrand,55.0,70.6
.turnin 9917 >>交任务: |cRXP_FRIENDLY_是我眼花了？|r
.accept 9918 >>接任务: |cRXP_LOOT_这是我的地盘！|r
step << Alliance
.goto Nagrand,62.6,71.6
>>殴打Lump直到他投降，然后和他说话。
.skipgossip
.complete 9918,1
step << Alliance
.goto Nagrand,55.0,70.6
.turnin 9918 >>交任务: |cRXP_FRIENDLY_这是我的地盘！|r
.accept 9920 >>接任务: |cRXP_LOOT_击碎者姆摩尔|r
step << Alliance
.goto Nagrand,54.6,72.2
.turnin 9920 >>交任务: |cRXP_FRIENDLY_击碎者姆摩尔|r
.accept 9921 >>接任务: |cRXP_LOOT_火刃废墟|r
step << Alliance
.goto Nagrand,74.6,68.6,40,0
>>杀死营地周围的巨石拳食人魔
.complete 9921,1
.complete 9921,2
step << Alliance
.goto Nagrand,54.6,72.2
.turnin 9921 >>交任务: |cRXP_FRIENDLY_火刃废墟|r
.accept 9922 >>接任务: |cRXP_LOOT_纳格兰的峡谷|r
step << Alliance
.goto Nagrand,50.2,56.8,40,0
.goto Nagrand,40.8,31.6,40,0
>>杀死营地周围的巨石拳食人魔
.complete 9922,1
.complete 9922,2
step << Alliance
.goto Nagrand,54.6,72.2
.turnin 9922 >>交任务: |cRXP_FRIENDLY_纳格兰的峡谷|r
.accept 10108 >>接任务: |cRXP_LOOT_外交手段|r
step << Alliance
.goto Nagrand,55.4,68.8
.accept 11044 >>接任务: |cRXP_LOOT_灾难的幻象|r
step << Alliance
.goto Nagrand,73.8,62.6
>>与Lantresor交谈。
.skipgossip
.complete 10108,1
.turnin 10108 >>交任务: |cRXP_FRIENDLY_外交手段|r
.accept 9928 >>接任务: |cRXP_LOOT_欺诈所需的军备|r
.accept 9927 >>接任务: |cRXP_LOOT_无情的计谋|r
step << Alliance
.goto Nagrand,69.4,81.4
>>从堡垒周围的箱子里捡起基尔索洛武器。
.complete 9928,1
>>杀死基尔索洛的敌人并种植横幅。
.use 25552
.complete 9927,1
step << Alliance
.goto Nagrand,73.8,62.6
.turnin 9928 >>交任务: |cRXP_FRIENDLY_欺诈所需的军备|r
.turnin 9927 >>交任务: |cRXP_FRIENDLY_无情的计谋|r
.accept 9931 >>接任务: |cRXP_LOOT_以牙还牙|r
.accept 9932 >>接任务: |cRXP_LOOT_尸证|r
step << Alliance
#sticky
.goto Nagrand,46.7,24.3
>>站在柴堆旁边时，使用湿羊毛毯。一旦破坏者产卵，保护他们。
.use 25658
.complete 9932,1
step << Alliance
.goto Nagrand,46.0,20.2
>>杀死Warmaul食人魔并种植横幅。
.use 25555
.complete 9931,1
step << Alliance
.goto Nagrand,73.8,62.6
.turnin 9931 >>交任务: |cRXP_FRIENDLY_以牙还牙|r
.turnin 9932 >>	交任务: |cRXP_FRIENDLY_尸证|r
step
.goto Nagrand,27.4,43.0
>>确保您已下马。
.accept 9991 >>接任务: |cRXP_LOOT_侦查大地|r
step
>>飞行时侦察锻造营地。这大约需要2分钟，可以自由起身伸展：D
.complete 9991,1
.turnin 9991 >>交任务: |cRXP_FRIENDLY_侦查大地|r
.accept 9999 >>接任务: |cRXP_LOOT_争取时间|r
step
.goto Nagrand,24.4,37.4,30,0
.goto Nagrand,19.6,51.4
>>杀死锻造营地周围的恶魔。这是一个精英任务，你可能需要帮助。
.complete 9999,1
.complete 9999,2
.complete 9999,3
step
.goto Nagrand,27.4,43.0
.turnin 9999 >>交任务: |cRXP_FRIENDLY_争取时间|r
.accept 10001 >>接任务: |cRXP_LOOT_主规划师|r
step
.goto Nagrand,23.6,34.8
>>杀死莫阿尔格总规划师以获得蓝图。
.complete 10001,1
step
.goto Nagrand,27.4,43.0
.turnin 10001 >>交任务: |cRXP_FRIENDLY_主规划师|r
.accept 10004 >>接任务: |cRXP_LOOT_耐心与理解|r
step
.goto Shattrath City,77.2,34.8
.skipgossip
>>前往沙塔斯。与萨尔萨拉宾谈谈，与他战斗。 << !Mage
>>前往: |cRXP_PICK_沙塔斯城|r. Speak with Sal'salabim to fight him. << Mage
.turnin 10004 >>交任务: |cRXP_FRIENDLY_耐心与理解|r
.accept 10009 >>接任务: |cRXP_LOOT_大打出手|r
step
.goto Shattrath City,75.0,31.8
.skipgossip
>>向醉汉雷利克讨债。
.complete 10009,1
step
.goto Shattrath City,61.2,49.6
>>找到以西结，逆时针绕着建筑走。
.unitscan Ezekiel
.turnin 10228 >>交任务: |cRXP_FRIENDLY_伊瑟基尔|r
.accept 10231 >>接任务: |cRXP_LOOT_什么书？我没见过什么书|r
step
.goto Shattrath City,43.6,29.4
.skipgossip
>>去打败肮脏的拉里。如果他死了，你可能需要等待他重生。
* He is an elite, you may need help.
.complete 10231,1
step
.goto Shattrath City,43.6,29.4
.turnin 10231 >>交任务: |cRXP_FRIENDLY_什么书？我没见过什么书|r
step
.goto Zangarmarsh,81.0,91.6
.skipgossip
>>从库什库什那里得到债务。
.complete 10009,2
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 11044 >>交任务: |cRXP_FRIENDLY_灾难的幻象|r
.accept 10562 >>接任务: |cRXP_LOOT_兵临城下！|r
step << Alliance
.goto Shadowmoon Valley,36.4,56.8
.accept 10680 >>接任务: |cRXP_LOOT_古尔丹之手|r
step << Alliance
.goto Shadowmoon Valley,38.8,54.2
.accept 10569 >>接任务: |cRXP_LOOT_斯克瑟隆废墟|r
step << Alliance
.goto Shadowmoon Valley,39.0,50.0
>>向北去杀了地狱，守卫周围的人并不总是值得称赞
.complete 10562,1 
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 10562 >>交任务: |cRXP_FRIENDLY_兵临城下！|r
.accept 10563 >>接任务: |cRXP_LOOT_前往军团要塞|r
step << Alliance
.goto Shadowmoon Valley,23.4,36.8
.use 30638 >>使用“诡计盒”在通信设备旁伪装自己。这个角色扮演大约需要一分钟。
.complete 10563,1 
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 10563 >>交任务: |cRXP_FRIENDLY_前往军团要塞|r
.accept 10572 >>接任务: |cRXP_LOOT_制造炸弹|r
step << Alliance
.goto Shadowmoon Valley,26.2,41.1,40,-1
.goto Shadowmoon Valley,22.2,35.4,40,-1
>>从地面上掠夺恶魔收割者能量核心和装甲板。电源核心在水下。
.complete 10572,1 
.complete 10572,2 
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 10572 >>交任务: |cRXP_FRIENDLY_制造炸弹|r
.accept 10564 >>接任务: |cRXP_LOOT_炸毁地狱火！|r
step << Alliance
.goto Shadowmoon Valley,22.6,39.9
.use 30614 >>使用绿色圆圈中的炸弹。如果你没有马上看到它，它每5秒就会脉冲一次。
.complete 10564,1 
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 10564 >>交任务: |cRXP_FRIENDLY_炸毁地狱火！|r
.accept 10573 >>接任务: |cRXP_LOOT_死亡熔炉|r
step << Alliance
.goto Shadowmoon Valley,40.4,41.4
.turnin 10573 >>交任务: |cRXP_FRIENDLY_死亡熔炉|r
.accept 10582 >>接任务: |cRXP_LOOT_暗影议会的爪牙|r
step << Alliance
.goto Shadowmoon Valley,40.0,39.0
>>冲进洞穴，杀死该地区的死亡堡敌人
.complete 10582,1 
.complete 10582,2 
step << Alliance
.goto Shadowmoon Valley,40.4,41.4
>>返回塔楼
.turnin 10582 >>交任务: |cRXP_FRIENDLY_暗影议会的爪牙|r
.accept 10583 >>接任务: |cRXP_LOOT_弗兰尼斯的命运|r
.accept 10585 >>接任务: |cRXP_LOOT_召唤之厅|r
step << Alliance
#sticky
#label elementald2
.goto Shadowmoon Valley,40.0,39.0
>>杀死死亡堡史密斯和修补匠。掠夺他们作为元素置换器
.collect 30672,1,10585,1
step << Alliance
.goto Shadowmoon Valley,40.0,38.0,60,0
.goto Shadowmoon Valley,34.0,39.0
>>返回下面的洞穴。继续穿过大桥，然后向右穿过地狱。与Flanis的尸体交谈
.unitscan Flanis Swiftwing
.skipgossip
.collect 30658,1,10583,1
step << Alliance
#requires elementald2
.goto Shadowmoon Valley,37.0,38.0
.use 30672 >>前往低层，然后使用元素置换器扰乱召唤师斯卡塔克斯所在的仪式
.unitscan Summoner Skartax
.complete 10585,1 
step << Alliance
.goto Shadowmoon Valley,40.4,41.4
>>返回塔楼
.turnin 10583 >>交任务: |cRXP_FRIENDLY_弗兰尼斯的命运|r
.turnin 10585 >>交任务: |cRXP_FRIENDLY_召唤之厅|r
.accept 10586 >>接任务: |cRXP_LOOT_击败战争使者！|r
step << Alliance
.goto Shadowmoon Valley,39.0,46.0,20,0
.goto Shadowmoon Valley,37.4,42.6
.use 30688 >>返回上层洞穴，穿过大桥，然后用钥匙打开左侧的门廊。杀死房间后面的战使拉祖恩，并为他的命令洗劫他。
.unitscan Warbringer Razuun
.complete 10586,1 
.collect 30689,1,10586,1
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 10586 >>交任务: |cRXP_FRIENDLY_击败战争使者！|r
.accept 10589 >>接任务: |cRXP_LOOT_控制权|r
step << Alliance
.goto Shadowmoon Valley,42.2,45.0
.turnin 10680 >>交任务: |cRXP_FRIENDLY_古尔丹之手|r
.accept 10458 >>接任务: |cRXP_LOOT_愤怒的火灵和地灵|r
step << Alliance
.goto Shadowmoon Valley,46.7,46.1
.use 30094 >>使用精灵图腾，杀死图腾旁边的火/土元素。
*The range is around 25 yards for the totem to work.
.complete 10458,1 
.complete 10458,2 
step << Alliance
.goto Shadowmoon Valley,42.1,45.1
.turnin 10458 >>交任务: |cRXP_FRIENDLY_愤怒的火灵和地灵|r
.accept 10480 >>接任务: |cRXP_LOOT_愤怒的水灵|r
step << Alliance
.goto Shadowmoon Valley,51.4,27.5
.use 30094 >>使用你袋子里的精灵图腾，杀死图腾旁边的水元素
*The range is around 25 yards for the totem to work.
.complete 10480,1 
step << Alliance
.goto Shadowmoon Valley,42.2,45.1
.turnin 10480 >>交任务: |cRXP_FRIENDLY_愤怒的水灵|r
.accept 10481 >>接任务: |cRXP_LOOT_愤怒的气灵|r
step << Alliance
.goto Shadowmoon Valley,60.8,66.6
.use 30094 >>使用你袋子里的精灵图腾，杀死图腾旁边的空气元素。一些元素也可以在北方的尼日翼原野产卵。
*The range is around 25 yards for the totem to work.
.complete 10481,1 
step << Alliance
.goto Shadowmoon Valley,42.3,45.0
.turnin 10481 >>交任务: |cRXP_FRIENDLY_愤怒的气灵|r
.accept 10513 >>接任务: |cRXP_LOOT_欧鲁诺克-裂心|r
step << Alliance
.goto Shadowmoon Valley,22.4,33.4
>>杀死莫阿尔格兵器匠，并将其掠夺以控制军团的电信员
.collect 30695,1,10589,1
step << Alliance
.goto Shadowmoon Valley,37.4,30.4
>>杀死该地区的黑暗秘会暴徒并掠夺他们的日记页
.complete 10569,1 
.complete 10569,2 
.complete 10569,3 
step << Alliance
.goto Shadowmoon Valley,39.4,53.6
.turnin 10589 >>交任务: |cRXP_FRIENDLY_控制权|r
.accept 10766 >>接任务: |cRXP_LOOT_登陆场：灾难|r
step << Alliance
.goto Shadowmoon Valley,38.8,54.2
.turnin 10569 >>交任务: |cRXP_FRIENDLY_斯克瑟隆废墟|r
.accept 10759 >>接任务: |cRXP_LOOT_寻找逃亡者|r
step << Alliance
.goto Shadowmoon Valley,35.4,41.8
.turnin 10759 >>交任务: |cRXP_FRIENDLY_寻找逃亡者|r
.accept 10777 >>接任务: |cRXP_LOOT_阿斯迦的图腾|r
step << Alliance
.goto Shadowmoon Valley,40.0,30.8
>>找到Asghar，杀掉并掠夺他的图腾
.unitscan Asghar
.complete 10777,1 
step << Alliance
.goto Shadowmoon Valley,40.8,22.2
.turnin 10766 >>交任务: |cRXP_FRIENDLY_登陆场：灾难|r
.accept 10606 >>接任务: |cRXP_LOOT_魔能机甲维修窍门大全|r
step << Alliance
.goto Shadowmoon Valley,39.6,19.6
>>杀死古特里克医生，抢走他的钥匙。
.unitscan Doctor Gutrick
.collect 30712,1,10606,1
step << Alliance
.goto Shadowmoon Valley,39.6,19.6
.use 30712 >>使用钥匙打开医生保险箱，检索《收割者维护艺术》
.collect 30713,1,10606,1
step << Alliance
.goto Shadowmoon Valley,40.8,22.2
.turnin 10606 >>交任务: |cRXP_FRIENDLY_魔能机甲维修窍门大全|r
.accept 10612 >>接任务: |cRXP_LOOT_狂暴的魔能机甲|r
step << Alliance
.goto Shadowmoon Valley,40.8,22.2
>>使用地狱收割者控制台摧毁60个死亡锻造地狱
.complete 10612,1 
step << Alliance
.goto Shadowmoon Valley,40.8,22.2
.turnin 10612 >>交任务: |cRXP_FRIENDLY_狂暴的魔能机甲|r
step << Horde
.goto Shadowmoon Valley,30.4,32.4
.accept 10595 >>接任务: |cRXP_LOOT_兵临城下！|r
step << Horde
.goto Shadowmoon Valley,29.8,27.8
.accept 10624 >>接任务: |cRXP_LOOT_阴森的历史|r
step << Horde
.goto Shadowmoon Valley,31,29.8
.accept 10760 >>接任务: |cRXP_LOOT_斯克瑟隆废墟|r
step << Horde
#sticky
#completewith next
>>在杀死无间道袭击者的同时掠夺燃烧着的灰烬堆
.complete 10624,1 
step << Horde
.goto Shadowmoon Valley,32.0,32.0,80,0
.goto Shadowmoon Valley,30.7,36.2,60,0
.goto Shadowmoon Valley,32.0,32.0
>>杀死无间道攻击者
.complete 10595,1 
step << Horde
.goto Shadowmoon Valley,32.2,38.1,60,0
>>完成对不断燃烧的灰堆的掠夺
.complete 10624,1 
step << Horde
.goto Shadowmoon Valley,37.4,30.4
>>杀死该地区的黑暗秘会暴徒并掠夺他们的日记页
.complete 10760,1 
.complete 10760,2 
.complete 10760,3 
step << Horde
.goto Shadowmoon Valley,29.8,27.8
.turnin 10624 >>交任务: |cRXP_FRIENDLY_阴森的历史|r
.accept 10625 >>接任务: |cRXP_LOOT_幽灵眼镜|r
step << Horde
.goto Shadowmoon Valley,29.8,27.8
.use 30719 >>戴上护目镜，杀死镇上的幽灵
.complete 10625,1 
step << Horde
.goto Shadowmoon Valley,29.8,27.8
>>确保重新装备您的普通头盔
.turnin 10625 >>交任务: |cRXP_FRIENDLY_幽灵眼镜|r
step << Horde
.goto Shadowmoon Valley,31.0,29.8
.turnin 10760 >>交任务: |cRXP_FRIENDLY_斯克瑟隆废墟|r
.accept 10761 >>接任务: |cRXP_LOOT_寻找逃亡者|r
step << Horde
.goto Shadowmoon Valley,30.4,32.4
.turnin 10595 >>交任务: |cRXP_FRIENDLY_兵临城下！|r
.accept 10596 >>接任务: |cRXP_LOOT_前往军团要塞|r
step << Horde
.goto Shadowmoon Valley,23.4,36.8
.use 30638 >>使用“诡计盒”在通信设备旁伪装自己。这个角色扮演大约需要一分钟。
.complete 10596,1 
step << Horde
.goto Shadowmoon Valley,30.4,32.4
.turnin 10596 >>交任务: |cRXP_FRIENDLY_前往军团要塞|r
.accept 10597 >>接任务: |cRXP_LOOT_制造炸弹|r
step << Horde
.goto Shadowmoon Valley,26.2,41.1,20,-1
.goto Shadowmoon Valley,22.2,35.4,20,-1
>>掠夺恶魔收割者能量核心和装甲板。电源核心在水下。
.complete 10597,1 
.complete 10597,2 
step << Horde
.goto Shadowmoon Valley,30.4,32.4
.turnin 10597 >>交任务: |cRXP_FRIENDLY_制造炸弹|r
.accept 10598 >>接任务: |cRXP_LOOT_炸毁地狱火！|r
step << Horde
.goto Shadowmoon Valley,22.6,39.9
.use 30614 >>使用绿色圆圈中的fel炸弹。如果你没有马上看到它，它每5秒就会脉冲一次。
.complete 10598,1 
step << Horde
.goto Shadowmoon Valley,30.4,32.4
.turnin 10598 >>交任务: |cRXP_FRIENDLY_炸毁地狱火！|r
.accept 10599 >>接任务: |cRXP_LOOT_死亡熔炉|r
step << Horde
.goto Shadowmoon Valley,38.6,38.2
>>向屋顶走去
.turnin 10599 >>交任务: |cRXP_FRIENDLY_死亡熔炉|r
.accept 10600 >>接任务: |cRXP_LOOT_暗影议会的爪牙|r
step << Horde
.goto Shadowmoon Valley,40.0,39.0
>>冲进洞穴，杀死该地区的死亡堡敌人
.complete 10600,1 
.complete 10600,2 
step << Horde
.goto Shadowmoon Valley,38.6,38.2
.turnin 10600 >>交任务: |cRXP_FRIENDLY_暗影议会的爪牙|r
.accept 10601 >>接任务: |cRXP_LOOT_卡格罗什的命运|r
.accept 10602 >>接任务: |cRXP_LOOT_召唤之厅|r
step << Horde
#sticky
#label elementald
.goto Shadowmoon Valley,40.0,39.0
>>杀死死亡堡史密斯和修补匠。掠夺他们作为元素置换器
.collect 30672,1,10602,1
step << Horde
.goto Shadowmoon Valley,40.0,39.0,40,0
.goto Shadowmoon Valley,35.2,40.1
.unitscan Kagrosh
.skipgossip
>>返回下面的洞穴。继续穿过大桥，然后向右穿过地狱。与兽人的尸体对话并带走他的背包
.collect 30659,1,10601,1
step << Horde
#requires elementald
.goto Shadowmoon Valley,37.0,38.0
.use 30672 >>前往低层，然后使用元素置换器扰乱召唤师斯卡塔克斯所在的仪式
.unitscan Summoner Skartax
.complete 10602,1 
step << Horde
.goto Shadowmoon Valley,38.6,38.2
>>返回塔顶外侧
.turnin 10601 >>交任务: |cRXP_FRIENDLY_卡格罗什的命运|r
.turnin 10602 >>交任务: |cRXP_FRIENDLY_召唤之厅|r
.accept 10603 >>接任务: |cRXP_LOOT_击败战争使者！|r
step << Horde
.goto Shadowmoon Valley,40.0,39.0,40,0
.goto Shadowmoon Valley,38.9,46.7
.use 30688 >>回到你杀死史密斯和修补匠的洞穴。用钥匙打开房间左侧的门廊，然后杀死战使拉祖并为他的命令洗劫他。
.unitscan Warbringer Razuun
.complete 10603,1 
.collect 30689,1,10603,1
step << Horde
>>返回塔楼
.goto Shadowmoon Valley,30.4,32.4
.turnin 10603 >>交任务: |cRXP_FRIENDLY_击败战争使者！|r
.accept 10604 >>接任务: |cRXP_LOOT_控制权|r
step << Horde
.goto Shadowmoon Valley,35.4,41.8
.turnin 10761 >>交任务: |cRXP_FRIENDLY_寻找逃亡者|r
.unitscan Parshah
.accept 10777 >>接任务: |cRXP_LOOT_阿斯迦的图腾|r
step << Horde
.goto Shadowmoon Valley,40.0,30.8
>>找到Asghar，杀掉并掠夺他的图腾
.unitscan Asghar
.complete 10777,1 
step << Horde
.goto Shadowmoon Valley,28.4,26.6
.accept 10681 >>接任务: |cRXP_LOOT_古尔丹之手|r
step << Horde
.goto Shadowmoon Valley,42.2,45.0
.turnin 10681 >>交任务: |cRXP_FRIENDLY_古尔丹之手|r
.accept 10458 >>接任务: |cRXP_LOOT_愤怒的火灵和地灵|r
step << Horde
.goto Shadowmoon Valley,46.7,46.1
.use 30094 >>使用精灵图腾，杀死图腾旁边的火/土元素。
*The range is around 25 yards for the totem to work.
.complete 10458,1 
.complete 10458,2 
step << Horde
.goto Shadowmoon Valley,42.1,45.1
.turnin 10458 >>交任务: |cRXP_FRIENDLY_愤怒的火灵和地灵|r
.accept 10480 >>接任务: |cRXP_LOOT_愤怒的水灵|r
step << Horde
.goto Shadowmoon Valley,51.4,27.5
.use 30094 >>使用你袋子里的精灵图腾，杀死图腾旁边的水元素
*The range is around 25 yards for the totem to work.
.complete 10480,1 
step << Horde
.goto Shadowmoon Valley,42.2,45.1
.turnin 10480 >>交任务: |cRXP_FRIENDLY_愤怒的水灵|r
.accept 10481 >>接任务: |cRXP_LOOT_愤怒的气灵|r
step << Horde
.goto Shadowmoon Valley,60.8,66.6
.use 30094 >>使用你袋子里的精灵图腾，杀死图腾旁边的空气元素。一些元素也可以在北方的尼日翼原野产卵。
*The range is around 25 yards for the totem to work.
.complete 10481,1 
step << Horde
.goto Shadowmoon Valley,42.3,45.0
.turnin 10481 >>交任务: |cRXP_FRIENDLY_愤怒的气灵|r
.accept 10513 >>接任务: |cRXP_LOOT_欧鲁诺克-裂心|r
step << Horde
.goto Shadowmoon Valley,22.4,33.4
>>杀死莫阿尔格兵器匠，并将其掠夺以控制军团的电信员
.collect 30695,1,10604,1
step << Horde
.goto Shadowmoon Valley,30.4,32.4
.turnin 10604 >>交任务: |cRXP_FRIENDLY_控制权|r
.accept 10767 >>接任务: |cRXP_LOOT_登陆场：灾难|r
step << Horde
.goto Shadowmoon Valley,27.4,21.2
.turnin 10767 >>交任务: |cRXP_FRIENDLY_登陆场：灾难|r
.accept 10611 >>接任务: |cRXP_LOOT_魔能机甲维修窍门大全|r
step << Horde
.goto Shadowmoon Valley,28.9,20.6
>>杀死Maleficus医生，并掠夺他以获取医生的钥匙。
.unitscan Doctor Maleficus
.collect 30712,1,10611,1
step << Horde
.goto Shadowmoon Valley,38.9,20.5
.use 30712 >>使用钥匙打开医生保险箱，检索《收割者维护艺术》
.collect 30713,1,10611,1
step << Horde
.goto Shadowmoon Valley,27.4,21.2
.turnin 10611 >>交任务: |cRXP_FRIENDLY_魔能机甲维修窍门大全|r
.accept 10613 >>接任务: |cRXP_LOOT_狂暴的魔能机甲|r
step << Horde
.goto Shadowmoon Valley,27.8,19.8
>>使用地狱收割者控制台摧毁60个死亡锻造地狱
* Using the first Fel Reaver ability destroys the Infernals, the rest of the buttons are rather irrelevant.
.complete 10613,1 
step << Horde
.goto Shadowmoon Valley,27.4,21.2
.turnin 10613 >>交任务: |cRXP_FRIENDLY_狂暴的魔能机甲|r
step
.goto Shadowmoon Valley,54.0,23.6
.turnin 10513 >>交任务: |cRXP_FRIENDLY_欧鲁诺克-裂心|r
.accept 10514 >>接任务: |cRXP_LOOT_历经沧桑......|r
step
.goto Shadowmoon Valley,54.0,16.0
.use 30462 >>站在地上的小植物上，用公猪的口哨让附近的公猪挖出块茎。然后单击它。
* You may need to kill Flayers in the area, so they stop killing the boars near tubers.
.complete 10514,1 
step
.goto Shadowmoon Valley,53.9,23.5
.turnin 10514 >>交任务: |cRXP_FRIENDLY_历经沧桑......|r
.accept 10515 >>接任务: |cRXP_LOOT_严厉的教训|r
step
.goto Shadowmoon Valley,56.6,17.0
>>摧毁该区域周围的蛋，小心巡逻该区域的大型精英暴徒
.complete 10515,1 
step
.goto Shadowmoon Valley,53.9,23.4
.turnin 10515 >>交任务: |cRXP_FRIENDLY_严厉的教训|r
.accept 10519 >>接任务: |cRXP_LOOT_诅咒密码 - 真相和历史|r
>>与Oronok交谈
.skipgossip
.complete 10519,1 
step
.goto Shadowmoon Valley,53.9,23.4
.turnin 10519 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 真相和历史|r
.accept 10521 >>接任务: |cRXP_LOOT_格洛姆托，欧鲁诺克之子|r
.accept 10527 >>接任务: |cRXP_LOOT_阿托尔，欧鲁诺克之子|r
.accept 10546 >>接任务: |cRXP_LOOT_伯拉克，欧鲁诺克之子|r
step
.goto Shadowmoon Valley,44.6,23.7
.turnin 10521 >>交任务: |cRXP_FRIENDLY_格洛姆托，欧鲁诺克之子|r
.accept 10522 >>接任务: |cRXP_LOOT_诅咒密码 - 格洛姆托的命令|r
step
.goto Shadowmoon Valley,46.0,28.2
>>杀死Nagas以获得箱子钥匙，打开箱子直到你洗劫碎片
.complete 10522,1 
step
.goto Shadowmoon Valley,44.6,23.7
.turnin 10522 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 格洛姆托的命令|r
step
.goto Shadowmoon Valley,35.4,41.8
.turnin 10777 >>交任务: |cRXP_FRIENDLY_阿斯迦的图腾|r
.accept 10778 >>接任务: |cRXP_LOOT_莉安丝魔棒|r
step
.goto Shadowmoon Valley,47.5,57.3
.turnin 10546 >>交任务: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.accept 10547 >>接任务: |cRXP_LOOT_血蓟交易......|r
step
.goto Shadowmoon Valley,45.1,57.4
>>在地上寻找腐烂的鸡蛋，要小心，因为它们会在掠夺时对你造成伤害
.complete 10547,1 
step
.goto Shattrath City,64.1,69.8
>>前往沙塔斯。如果一切就绪，请起火，并设置为沙塔斯。
.turnin 10547 >>交任务: |cRXP_FRIENDLY_血蓟交易......|r
.accept 10550 >>接任务: |cRXP_LOOT_一捆血蓟|r
step
.isOnQuest 10009
.goto Terokkar Forest,27.2,57.8
.skipgossip
>>从Floon那里获得债务。
.complete 10009,3
step
>>返回影月谷
.goto Shadowmoon Valley,29.6,50.3
.turnin 10527 >>交任务: |cRXP_FRIENDLY_阿托尔，欧鲁诺克之子|r
.accept 10528 >>接任务: |cRXP_LOOT_恶魔的水晶牢笼|r
step
.goto Shadowmoon Valley,28.0,47.7
>>杀害痛苦女主人加布里萨
.complete 10528,1 
step
.goto Shadowmoon Valley,29.6,50.5
.turnin 10528 >>交任务: |cRXP_FRIENDLY_恶魔的水晶牢笼|r
>>等阿托死了再和他的灵魂谈谈
.accept 10537 >>接任务: |cRXP_LOOT_洛恩戈鲁，裂心之弓|r
step
.goto Shadowmoon Valley,30.5,50.0
>>杀死并掠夺任务给予者周围的伊利达里暴徒。
* The drop rate is very low, just keep killing
.complete 10537,1 
step
.goto Shadowmoon Valley,29.5,50.5
.turnin 10537 >>交任务: |cRXP_FRIENDLY_洛恩戈鲁，裂心之弓|r
.accept 10540 >>接任务: |cRXP_LOOT_诅咒密码 - 阿托尔的命令|r
step
.goto Shadowmoon Valley,29.5,57.5
>>当阿托尔的灵魂跟随你时，向东南方向走，在这一带走动，直到阿托尔召唤维尼拉图斯
.complete 10540,1 
>>准备好长期战斗，维尼拉斯的生命值是普通暴徒的3倍
step
.goto Shadowmoon Valley,29.5,50.6
.turnin 10540 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 阿托尔的命令|r
step
.goto Shadowmoon Valley,47.5,57.2
.turnin 10550 >>交任务: |cRXP_FRIENDLY_一捆血蓟|r
.accept 10570 >>接任务: |cRXP_LOOT_血蓟瘾君子|r
step
.goto Shadowmoon Valley,48.9,57.4
>>在桥的尽头种上一束血丝。回到另一边，等博拉克对你低语后再去攻击。
.complete 10570,1 
step
.goto Shadowmoon Valley,47.6,57.2
.turnin 10570 >>交任务: |cRXP_FRIENDLY_血蓟瘾君子|r
.accept 10576 >>接任务: |cRXP_LOOT_影月谷的乔装者|r
step
#sticky
#label liantherod
.goto Shadowmoon Valley,47.2,67.0
>>杀死该地区的食蚀暴徒，直到他们丢下Lianthe的钥匙
.complete 10778,1 
step
.goto Shadowmoon Valley,49.6,62.2
>>杀死并掠夺该地区的日食暴徒
.complete 10576,1 
step
#requires liantherod
.goto Shadowmoon Valley,47.5,71.7
>>使用利安特堡垒上的钥匙，掠夺利安特的棍子
.complete 10778,2 
step
.goto Shadowmoon Valley,35.4,41.8
>>转弯处可以从这里沿着公路巡逻
.turnin 10778 >>交任务: |cRXP_FRIENDLY_莉安丝魔棒|r
.accept 10780 >>接任务: |cRXP_LOOT_斯克瑟隆羽毛|r
step
.goto Shadowmoon Valley,43.7,57.5
>>在地上掠夺羽毛
.complete 10780,1 
step
.goto Shadowmoon Valley,47.6,57.2
.turnin 10576 >>交任务: |cRXP_FRIENDLY_影月谷的乔装者|r
.accept 10577 >>接任务: |cRXP_LOOT_伊利丹的信使......|r
step
.goto Shadowmoon Valley,46.5,71.9
.skipgossip
>>使用提供的伪装，与2个兽人守护的血精灵交谈
.complete 10577,1 
step
.goto Shadowmoon Valley,47.5,57.2
.turnin 10577 >>交任务: |cRXP_FRIENDLY_伊利丹的信使......|r
.accept 10578 >>接任务: |cRXP_LOOT_诅咒密码 - 伯拉克的命令|r
step
.goto Shadowmoon Valley,62.6,57.2
>>杀死并掠夺黑暗者鲁尔
* You will need to group for this quest, he is very difficult.
.unitscan Ruul the Darkener
.complete 10578,1 
step
.goto Shadowmoon Valley,47.5,57.2
.turnin 10578 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 伯拉克的命令|r
step
.goto Shadowmoon Valley,35.4,41.8
.turnin 10780 >>交任务: |cRXP_FRIENDLY_斯克瑟隆羽毛|r
step
>>返回沙塔斯。 << !Mage
>>传送回沙塔斯 << Mage
.goto Shattrath City,77.2,34.8
.turnin 10009 >>交任务: |cRXP_FRIENDLY_大打出手|r

step
.goto Shattrath City,59.7,41.5
.accept 10210 >>接任务: |cRXP_LOOT_阿达尔|r
step
.goto Shattrath City,54.5,44.9
.turnin 10210 >>交任务: |cRXP_FRIENDLY_阿达尔|r
step
.goto Shattrath City,54.5,44.9
>>与卡德加交谈
.accept 10211 >>接任务: |cRXP_LOOT_圣光之城|r
step
.goto Shattrath City,48.1,42.0
>>前往G'eras附近的二楼隧道等待。如果其他仆人在此期间到达，你可以瞄准它，它将为你完成任务。否则，您的仆人需要8分30秒才能到达。放松一下！
.complete 10211,1 
step
.goto Shattrath City,54.5,44.9
.turnin 10211 >>交任务: |cRXP_FRIENDLY_圣光之城|r
step
#label choice
#completewith aldorOrScryer
.goto Shattrath City,54.5,44.1
+ Choose an 接任务: |cRXP_WARN_为奥尔多效力|r or Scryer. They both give the same amount of prep exp for Wrath, so choose whichever you prefer. Manually skip this step once you have chosen.
* If you do not see aldor or scryer specific quest steps after this, type "/reload" into your ingame chat box
step
#scryer
#label aldorOrScryer
.goto Shattrath City,54.5,44.1
.turnin 10552 >>交任务: |cRXP_FRIENDLY_为占星者效力|r
step
#aldor
#label aldorOrScryer
.goto Shattrath City,54.5,44.1
.turnin 10551 >>交任务: |cRXP_FRIENDLY_为奥尔多效力|r
step
#sticky
#requires choice
#completewith notofftoarea52
>>前往: |cRXP_PICK_虚空风暴|r
* 5 other quests count as the same pre-requisite as Off to Area 52, if it's not here for you, it means you did a different pre-requisite, you can skip this step.
.goto Netherstorm,20.6,55.7
.accept 10183 >>接任务: |cRXP_LOOT_前往52区|r
step
#label notofftoarea52
.goto Netherstorm,32.7,64.9
.turnin 10183 >>交任务: |cRXP_FRIENDLY_前往52区|r
step
.goto Netherstorm,32.7,64.9
.accept 10186 >>接任务: |cRXP_LOOT_你被雇了！|r
step
.goto Netherstorm,32.4,64.2
.accept 10265 >>接任务: |cRXP_LOOT_星界财团的水晶|r
step
.goto Netherstorm,31.4,66.2
.accept 10173 >>接任务: |cRXP_LOOT_大法师的法杖|r
step
#aldor
.goto Netherstorm,32.1,64.3
.accept 10241 >>接任务: |cRXP_LOOT_削弱法力熔炉：布纳尔|r
step
#scryer
.goto Netherstorm,32.0,64.0
.accept 10189 >>接任务: |cRXP_LOOT_法力熔炉：布纳尔|r
step
#aldor
.goto Netherstorm,26.6,68.4
>>杀死该地区的Sunfrew敌人
.complete 10241,1 
.complete 10241,2 
step
#scryer
.goto Netherstorm,28.0,65.6
>>杀死阿拉森上尉并为任务物品掠夺他。
.complete 10189,1
step
#scryer
.goto Netherstorm,32.0,64.0
.turnin 10189 >>交任务: |cRXP_FRIENDLY_法力熔炉：布纳尔|r
.accept 10193 >>接任务: |cRXP_LOOT_有价值的目标|r
step
#scryer
.goto Netherstorm,25.4,71.8,100,0
.goto Netherstorm,22.0,72.7,40,0
.goto Netherstorm,25.4,71.8
>>杀死该区域的Sunfrew敌人。
.complete 10193,1
.complete 10193,2
.complete 10193,3
step
#scryer
.goto Netherstorm,32.0,64.0
.turnin 10193 >>交任务: |cRXP_FRIENDLY_有价值的目标|r
.accept 10329 >>接任务: |cRXP_LOOT_关闭法力熔炉：布纳尔|r
step
#aldor
.goto Netherstorm,32.1,64.3
.turnin 10241 >>交任务: |cRXP_FRIENDLY_削弱法力熔炉：布纳尔|r
.accept 10313 >>接任务: |cRXP_LOOT_测量迁跃能量|r
.accept 10243 >>接任务: |cRXP_LOOT_纳鲁科技|r
step
#scryer
.goto Netherstorm,23.8,70.6
>>杀死并掠夺法力锻炉内的监督特蕾迪斯以获得B'naar Access水晶
.collect 29366,1,10329,1
step
#scryer
.goto Netherstorm,23.2,68.1
>>单击控制台并保护它免受技术人员的攻击。这需要2分钟。
.skipgossip
.complete 10329,1
step
#scryer
.goto Netherstorm,32.0,64.0
.turnin 10329 >>交任务: |cRXP_FRIENDLY_关闭法力熔炉：布纳尔|r
.accept 10194 >>接任务: |cRXP_LOOT_隐秘飞行|r
step
#scryer
.goto Netherstorm,33.8,64.2
.turnin 10194 >>交任务: |cRXP_FRIENDLY_隐秘飞行|r
.accept 10652 >>接任务: |cRXP_LOOT_深入敌后|r
step
#aldor
.goto Netherstorm,25.4,60.3
>>当靠近管道时，使用包中的“扭曲调整球”
.complete 10313,1 
step
#aldor
.goto Netherstorm,20.7,67.5
>>站在脚手架顶部并使用球
.complete 10313,4 
step
#aldor
.goto Netherstorm,20.3,70.9
>>站在这根管子旁边时使用这个球体
.complete 10313,3 
step
#aldor
.goto Netherstorm,23.2,68.1
>>进入大楼，然后点击柱子
.turnin 10243 >>交任务: |cRXP_FRIENDLY_纳鲁科技|r
.accept 10245 >>接任务: |cRXP_LOOT_布纳尔控制台拓文|r
step
#aldor
.goto Netherstorm,29.1,72.8
>>当靠近管道时，使用包中的“扭曲调整球”
.complete 10313,2 
step
#aldor
.goto Netherstorm,32.1,64.2
.turnin 10245 >>交任务: |cRXP_FRIENDLY_布纳尔控制台拓文|r
.accept 10299 >>接任务: |cRXP_LOOT_关闭法力熔炉：布纳尔|r
.turnin 10313 >>交任务: |cRXP_FRIENDLY_测量迁跃能量|r
step
#aldor
.goto Netherstorm,23.7,70.1
>>回到大楼里。杀死并掠夺监工
.complete 10299,2 
step
#aldor
.goto Netherstorm,23.2,68.1
.skipgossip
>>点击挂架启动关机定时器，杀死所有试图阻止它的暴徒。这需要2分钟。
.complete 10299,1 
step
#aldor
.goto Netherstorm,32.1,64.2
.turnin 10299 >>交任务: |cRXP_FRIENDLY_关闭法力熔炉：布纳尔|r
.accept 10321 >>接任务: |cRXP_LOOT_关闭法力熔炉：库鲁恩|r
.accept 10246 >>接任务: |cRXP_LOOT_攻击法力熔炉：库鲁恩|r
step
.goto Netherstorm,42.6,72.6
>>为了水晶杀死并掠夺五角龙。
.complete 10265,1
step
.goto Netherstorm,40.8,72.6
.use 29207
>>站在火盆旁边，用魔法粉召唤Ekkorash并杀死她。
.complete 10173,1
step
.goto Netherstorm,32.4,64.2
.turnin 10265 >>交任务: |cRXP_FRIENDLY_星界财团的水晶|r
.accept 10262 >>接任务: |cRXP_LOOT_叛徒的徽记|r
step
.goto Netherstorm,29.3,78.1
>>杀死该地区的扎克西斯暴徒并掠夺他们的徽章
.collect 29209,10,10262,1
step
.goto Netherstorm,32.4,64.2
.turnin 10262 >>交任务: |cRXP_FRIENDLY_叛徒的徽记|r
.accept 10205 >>接任务: |cRXP_LOOT_星界强盗奈萨德|r
step
.goto Netherstorm,31.4,66.2
.turnin 10173 >>交任务: |cRXP_FRIENDLY_大法师的法杖|r
.accept 10300 >>接任务: |cRXP_LOOT_修复法杖|r
step
.goto Netherstorm,28.3,79.9
>>杀死扭曲袭击者尼萨德
.unitscan Warp-Raider Nesaad
.complete 10205,1
step
.goto Netherstorm,32.4,64.2
.turnin 10205 >>交任务: |cRXP_FRIENDLY_星界强盗奈萨德|r
.accept 10266 >>接任务: |cRXP_LOOT_寻求帮助|r
step
#sticky
#label crystalmatrixs
.goto Netherstorm,33.1,54.4
>>掠夺该地区地面上的红色水晶
* You can use your racial Find Treasure to track them on the minimap << Dwarf
.complete 10186,1 
step
.goto Netherstorm,33.6,54.6
>>杀死并掠夺水晶的无身保护者和维护者。
.complete 10300,1
step
#requires crystalmatrixs
.goto Netherstorm,32.7,64.9
.turnin 10186 >>交任务: |cRXP_FRIENDLY_你被雇了！|r
step
.goto Netherstorm,31.4,66.2
.turnin 10300 >>交任务: |cRXP_FRIENDLY_修复法杖|r
step
#scryer
.goto Netherstorm,48.2,86.6
.turnin 10652 >>交任务: |cRXP_FRIENDLY_深入敌后|r
.accept 10197 >>接任务: |cRXP_LOOT_以假乱真|r
step
#scryer
.goto Netherstorm,49.0,81.6
>>杀害和掠夺该地区的暴徒。收集部件以进行伪装。
* Researchers are inside, Guardsmen are found on the eastern side. Arcanists are on the west side.
.complete 10197,1
.complete 10197,2
.complete 10197,3
step
#scryer
.goto Netherstorm,48.2,86.6
.turnin 10197 >>交任务: |cRXP_FRIENDLY_以假乱真|r
.accept 10198 >>接任务: |cRXP_LOOT_收集情报|r
step
#scryer
>>乔装打扮，前往马纳福格·科鲁，找到指挥官道恩福格，站在他旁边，为这次任务获得荣誉。
* You may need to wait for the Arcane Annihilator to patrol away from the door
.use 28607
.goto Netherstorm,48.2,84.0
.complete 10198,1
step
#scryer
.goto Netherstorm,48.2,86.6
.turnin 10198 >>交任务: |cRXP_FRIENDLY_收集情报|r
.accept 10330 >>接任务: |cRXP_LOOT_关闭法力熔炉：库鲁恩|r
step
#scryer
.goto Netherstorm,49.0,81.6
>>点击你的伪装，然后为她的Access Crystal杀死Overseer Seylanna，并在控制台上使用它。
.complete 10330,1
step
#scryer
.goto Netherstorm,48.2,86.6
.turnin 10330 >>交任务: |cRXP_FRIENDLY_关闭法力熔炉：库鲁恩|r
step
#aldor
#sticky
#label researcherkills
.goto Netherstorm,48.7,82.2
>>杀死房间周围的研究人员
.complete 10246,1 
step
#aldor
.goto Netherstorm,49.0,81.5
>>杀死控制台旁边的监督员
.complete 10321,2 
step
#aldor
.goto Netherstorm,49.0,81.5
.skipgossip
>>点击挂架启动关机定时器，杀死所有试图阻止它的暴徒。在暴徒之间升级百夫长。
* Kill Researchers in the area while waiting.
.complete 10321,1 
step
#aldor
#requires researcherkills
.goto Netherstorm,49.6,80.6
>>走出去，杀死奥术家
.complete 10246,2 
step
.goto Netherstorm,57.4,86.2
.accept 10184 >>接任务: |cRXP_LOOT_狂暴的幽灵|r
step
.goto Netherstorm,59.4,87.4
>>杀死麒麟湾周围的幽灵。
.complete 10184,1
step
.goto Netherstorm,57.4,86.2
.turnin 10184 >>交任务: |cRXP_FRIENDLY_狂暴的幽灵|r
.accept 10312 >>接任务: |cRXP_LOOT_肯瑞瓦名册|r
step
.goto Netherstorm,60.6,87.6
>>杀死战斗法师达思里克并收集这本书。不要转动他的刀片。我们将在70-71转弯路线中使用它。
.complete 10312,1
step
.goto Netherstorm,57.4,86.2
.turnin 10312 >>交任务: |cRXP_FRIENDLY_肯瑞瓦名册|r
step
#aldor
.goto Netherstorm,32.1,64.3
.turnin 10321 >>交任务: |cRXP_FRIENDLY_关闭法力熔炉：库鲁恩|r
.turnin 10246 >>交任务: |cRXP_FRIENDLY_攻击法力熔炉：库鲁恩|r
.accept 10322 >>接任务: |cRXP_LOOT_关闭法力熔炉：杜隆|r
.accept 10328 >>接任务: |cRXP_LOOT_日怒简报|r
step
#scryer
.goto Netherstorm,32.0,64.0
.accept 10341 >>接任务: |cRXP_LOOT_乘胜追击|r
step
#scryer
.goto Netherstorm,59.0,66.8
>>杀死太阳怒的敌人。百夫长通常出现在法力锻造厂的入口处。
.complete 10341,1
.complete 10341,2
.complete 10341,3
step
#scryer
.goto Netherstorm,32.0,64.0
.turnin 10341 >>交任务: |cRXP_FRIENDLY_乘胜追击|r
.accept 10202 >>接任务: |cRXP_LOOT_叛徒|r
step
#scryer
.goto Netherstorm,26.2,41.6
.turnin 10202 >>交任务: |cRXP_FRIENDLY_叛徒|r
.accept 10432 >>接任务: |cRXP_LOOT_可怕的证据|r
step
#scryer
.goto Netherstorm,26.4,44.0
>>前往法力锻炉下方的洞穴。为命令杀戮和掠夺恶魔。
.collect 29797,8,10432,1
step
#aldor
#sticky
#label militarymanaforge
.goto Netherstorm,58.5,63.6
>>杀死并掠夺Manaforge Duro内的Sunfrage百夫长
.complete 10328,1 
step
#aldor
.goto Netherstorm,60.0,68.5
>>杀死并掠夺法力锻造厂南翼内的监督员阿萨内尔
.complete 10322,2 
step
#aldor
.goto Netherstorm,59.1,66.6
.skipgossip
>>Talk to the Pylon and start the shut down. Kill any mobs that try to stop you.
.complete 10322,1 
step
#aldor
#requires militarymanaforge
.goto Netherstorm,57.2,64.2
>>杀死并掠夺法力锻炉周围的太阳怒魔法师
.complete 10328,2 
step
#aldor
.goto Netherstorm,32.0,64.2
.turnin 10328 >>交任务: |cRXP_FRIENDLY_日怒简报|r
.accept 10431 >>接任务: |cRXP_LOOT_外界的帮助|r
.turnin 10322 >>交任务: |cRXP_FRIENDLY_关闭法力熔炉：杜隆|r
.accept 10323 >>接任务: |cRXP_LOOT_关闭法力熔炉：艾拉|r
step
#aldor
.goto Netherstorm,34.8,38.2
.turnin 10431 >>交任务: |cRXP_FRIENDLY_外界的帮助|r
.accept 10380 >>接任务: |cRXP_LOOT_黑暗的契约|r
step
#aldor
.goto Netherstorm,26.4,43.5
>>杀死洞穴中的甘阿尔格和莫阿尔格恶魔
.complete 10380,1 
.complete 10380,3 
step
#aldor
.goto Netherstorm,26.4,43.5,40,0
.goto Netherstorm,28.5,39.9
>>离开洞穴，绕着马纳福格·阿拉飞翔，寻找命运之女
* The demons don't social aggro with the blood elves if you ranged pull them.
.unitscan Daughter of Destiny
.complete 10380,2 
step
#aldor
.goto Netherstorm,34.8,38.3
.turnin 10380 >>交任务: |cRXP_FRIENDLY_黑暗的契约|r
.accept 10381 >>接任务: |cRXP_LOOT_退出奥尔多|r
step
#aldor
.goto Netherstorm,26.0,38.7
>>杀死监督员Azarad。抢他去拿通道水晶。然后与塔架对话，像以前那样保护它。
*This quest can be very overwhelming compared to the previous ones, be ready and you may need help. Clear a safe space in the room beforehand.
.skipgossip
.complete 10323,2 
.complete 10323,1 
step
#aldor
.goto Netherstorm,32.0,64.2
.turnin 10381 >>交任务: |cRXP_FRIENDLY_退出奥尔多|r
.accept 10407 >>接任务: |cRXP_LOOT_索克雷萨之影|r
.turnin 10323 >>交任务: |cRXP_FRIENDLY_关闭法力熔炉：艾拉|r
step
#aldor
.goto Netherstorm,36.2,26.4
>>杀死并掠夺锻造大师摩格。他是精英，你可能需要帮助。
.unitscan Forgemaster Morug
.complete 10407,1 
step
#aldor
.goto Netherstorm,40.8,19.5
>>杀死并掠夺西罗，他是精英，你可能需要帮助。
.unitscan Silroth
.complete 10407,2 
step
#scryer
.goto Netherstorm,32.0,64.0
.turnin 10432 >>交任务: |cRXP_FRIENDLY_可怕的证据|r
.accept 10508 >>接任务: |cRXP_LOOT_给沃雷塔尔的礼物|r
step
#scryer
>>从莫鲁和西罗那里获得索克塔尔石的一半。
.goto Netherstorm,36.8,27.6,10,0
.goto Netherstorm,40.8,19.4
.complete 10508,1
.complete 10508,2
step
#aldor
.goto Netherstorm,32.1,64.3
.turnin 10407 >>交任务: |cRXP_FRIENDLY_索克雷萨之影|r
step
#scryer
.goto Netherstorm,32.0,64.0
.turnin 10508 >>交任务: |cRXP_FRIENDLY_给沃雷塔尔的礼物|r
step << skip
#aldor
.goto Netherstorm,32.0,64.2
.accept 10263 >>接任务: |cRXP_LOOT_协助星界财团|r
step << skip
#scryer
.goto Netherstorm,32.0,64.2
.accept 10264 >>接任务: |cRXP_LOOT_协助星界财团|r
step << skip
#aldor
.goto Netherstorm,32.4,64.2
.turnin 10263 >>交任务: |cRXP_FRIENDLY_协助星界财团|r
step << skip
#scryer
.goto Netherstorm,32.4,64.2
.turnin 10264 >>交任务: |cRXP_FRIENDLY_协助星界财团|r
step
.goto Netherstorm,33.0,64.6
.accept 10206 >>接任务: |cRXP_LOOT_偷来偷去|r
step
.goto Netherstorm,28.9,77.6
>>该地区的掠夺以太技术，它在小盒子里
.complete 10206,1 
step
.goto Netherstorm,33.0,64.6
.turnin 10206 >>交任务: |cRXP_FRIENDLY_偷来偷去|r
.accept 10333 >>接任务: |cRXP_LOOT_帮助维勒老妈|r
step
.goto Netherstorm,46.4,56.4
.accept 10417 >>接任务: |cRXP_LOOT_诊断报告|r
.accept 10433 >>接任务: |cRXP_LOOT_保持伪装|r
step
.goto Netherstorm,48.2,55.0
>>单击支柱收集诊断结果
.complete 10417,1
step
.goto Netherstorm,46.4,56.4
.turnin 10417 >>交任务: |cRXP_FRIENDLY_诊断报告|r
.accept 10418 >>接任务: |cRXP_LOOT_解决破坏者|r
step
.goto Netherstorm,46.6,57.0
.turnin 10266 >>交任务: |cRXP_FRIENDLY_寻求帮助|r
.accept 10267 >>接任务: |cRXP_LOOT_贸易终结|r
step
.goto Netherstorm,56.9,63.8
>>收集马纳福吉周围的研究设备。它们看起来像灰色的小板条箱。
.complete 10267,1
step
.goto Netherstorm,46.6,57.0
.turnin 10267 >>交任务: |cRXP_FRIENDLY_贸易终结|r
.accept 10268 >>接任务: |cRXP_LOOT_与节点亲王会面|r
step
#sticky
#label croctimes
.goto Netherstorm,47.0,52.6
>>杀死附近的鳄鱼。
.complete 10418,1
step
.goto Netherstorm,44.0,49.4,20,0
.goto Netherstorm,44.8,57.2,20,0
.goto Netherstorm,44.0,49.4
>>在生态穹顶下杀死里普芳山猫，获取它们的毛皮。
.complete 10433,1
step
#requires croctimes
.goto Netherstorm,46.4,56.4
.turnin 10418 >>交任务: |cRXP_FRIENDLY_解决破坏者|r
.turnin 10433 >>交任务: |cRXP_FRIENDLY_保持伪装|r
step
.goto Netherstorm,46.6,56.6
.turnin 10333 >>交任务: |cRXP_FRIENDLY_帮助维勒老妈|r
.accept 10234 >>接任务: |cRXP_LOOT_恶魔的垃圾......|r
step
.goto Netherstorm,50.4,58.9
>>收集该区域周围的Fel reaver部件。
.complete 10234,1
step
.goto Netherstorm,46.6,56.6
.turnin 10234 >>交任务: |cRXP_FRIENDLY_恶魔的垃圾......|r
.accept 10235 >>接任务: |cRXP_LOOT_厄运之爪|r
step
.goto Netherstorm,50.8,57.6
>>杀死毁灭法则并收集任务物品。
.complete 10235,1
step
.goto Netherstorm,46.6,56.6
.turnin 10235 >>交任务: |cRXP_FRIENDLY_厄运之爪|r
.accept 10237 >>接任务: |cRXP_LOOT_通知52区！|r
step
.goto Netherstorm,45.9,36.0
.turnin 10268 >>交任务: |cRXP_FRIENDLY_与节点亲王会面|r
.accept 10269 >>接任务: |cRXP_LOOT_一号三角点|r
step
.goto Netherstorm,66.7,33.8
.use 28962 >>在该区域使用三角测量设备
.complete 10269,1
step
.goto Netherstorm,58.4,31.3
.turnin 10269 >>交任务: |cRXP_FRIENDLY_一号三角点|r
.accept 10275 >>接任务: |cRXP_LOOT_二号三角点|r
step
.goto Netherstorm,28.9,41.3
.use 29018 >>在该区域使用三角测量设备
.complete 10275,1
step
.goto Netherstorm,34.6,37.9
.turnin 10275 >>交任务: |cRXP_FRIENDLY_二号三角点|r
.accept 10276 >>接任务: |cRXP_LOOT_三角测量|r
step
.goto Netherstorm,53.5,21.4
>>杀死并掠夺Culuthas以获取水晶。如果你有困难，你可能需要帮助。
.complete 10276,1
step
.goto Netherstorm,45.8,36.0
.turnin 10276 >>交任务: |cRXP_FRIENDLY_三角测量|r
step
.goto Netherstorm,32.6,64.8
.turnin 10237 >>交任务: |cRXP_FRIENDLY_通知52区！|r
.accept 10247 >>接任务: |cRXP_LOOT_工程学博士沃米萨|r
step
.goto Netherstorm,37.2,63.8
.turnin 10247 >>交任务: |cRXP_FRIENDLY_工程学博士沃米萨|r
.accept 10248 >>接任务: |cRXP_LOOT_你，机器人|r
step
.goto Netherstorm,37.2,63.8
>>使用您在废料回收器上的控制器并击败Negatron。确保在冷却时使用机器人的能力。
* Save the stun for when Negatron uses earthquake. Only use Smash if you start getting threat, otherwise heal Scrap Reaver and stun Negatron during earthquake.
* Scrap Reaver is buffable as well << Paladin/Priest/Druid
.use 28634
.complete 10248,1
step
.goto Netherstorm,37.2,63.8
.turnin 10248 >>交任务: |cRXP_FRIENDLY_你，机器人|r
step
.goto Blade's Edge Mountains,55.4,44.9
.accept 10995 >>接任务: |cRXP_LOOT_格鲁洛克的巨龙颅骨|r
.accept 10996 >>接任务: |cRXP_LOOT_玛古克的宝箱|r
.accept 10997 >>接任务: |cRXP_LOOT_戈隆的军旗|r
step
#sticky
#completewith gronnsdone
.goto Blade's Edge Mountains,60.3,47.5
>>杀死格鲁洛克，在他死后在地上掠夺物品。
.complete 10995,1
step
#sticky
#completewith gronssdone
.goto Blade's Edge Mountains,58.5,60.8,40,0
.goto Blade's Edge Mountains,64.5,54.8,40,0
.goto Blade's Edge Mountains,68.3,74.8
>>找到麦戈克，他在缩放架周围巡逻。杀了他，抢走他扔在地上的东西
.unitscan Maggoc
.complete 10996,1
step
#sticky
#completewith gronssdone
.goto Terokkar Forest,20.3,15.9
>>杀死斯拉格，并将他扔在地上的物品洗劫一空
.complete 10997,1
step
#completewith next
#label gronnprep
+接下来的3个任务都是精英任务，需要一个团队，然而，它们的独特之处在于，老板会丢弃一个可以右击地面的项目，以获得任务奖励，即使你不在被杀的团队中。你可以按任何顺序来做，两个在刀刃边缘，一个在沙塔斯上面。
step
#label gronnsdone
#requires gronnprep
.goto Blade's Edge Mountains,55.4,44.9
.turnin 10995 >>交任务: |cRXP_FRIENDLY_格鲁洛克的巨龙颅骨|r
.turnin 10997 >>交任务: |cRXP_FRIENDLY_戈隆的军旗|r
.turnin 10996 >>交任务: |cRXP_FRIENDLY_玛古克的宝箱|r
.accept 10998 >>接任务: |cRXP_LOOT_维姆高尔的魔典|r
step
.goto Blade's Edge Mountains,77.4,31.2
>>为他的书杀死Vim'gol the Vile，再次在地上掠夺物品。你不需要加入杀害他的组织就可以掠夺。
.complete 10998,1
step
.goto Blade's Edge Mountains,55.4,44.9
.turnin 10998 >>交任务: |cRXP_FRIENDLY_维姆高尔的魔典|r
.accept 11000 >>接任务: |cRXP_LOOT_磨魂者|r
step
.goto Blade's Edge Mountains,60.0,24.1
.use 32467 >>踏上祭坛，用香灰开始战斗。在海浪中幸存下来，然后杀死老板，并洗劫他掉在地上的灵魂。
.complete 11000,1


step
.goto Deadwind Pass,47.0,75.6
.reputation 967,honored 
>>迎风传球
.accept 9630 >>接任务: |cRXP_LOOT_麦迪文的日记|r
step

>>进入Karazhan，在馆长老板之后，在房间里与Wravien交谈。
.turnin 9630 >>交任务: |cRXP_FRIENDLY_麦迪文的日记|r
.accept 9638 >>接任务: |cRXP_LOOT_书呆子|r
step
>>Gradav距离Wravien稍远一点。
.turnin 9638 >>交任务: |cRXP_FRIENDLY_书呆子|r
.accept 9639 >>接任务: |cRXP_LOOT_卡姆希丝|r
step
>>像以前一样，卡姆西斯比格拉达夫领先一点。
.turnin 9639 >>交任务: |cRXP_FRIENDLY_卡姆希丝|r
.accept 9640 >>接任务: |cRXP_LOOT_埃兰之影|r
step
>>击败《阿兰阴影》获得《华尔街日报》。
.complete 9640,1
step
.turnin 9640 >>交任务: |cRXP_FRIENDLY_埃兰之影|r
.accept 9645 >>接任务: |cRXP_LOOT_主宰的露台|r
step
>>去卡拉詹的主人露台读日记。
.use 23934
.complete 9645,1
step
.goto Deadwind Pass,47.0,75.6
.turnin 9645 >>交任务: |cRXP_FRIENDLY_主宰的露台|r
.accept 9680 >>接任务: |cRXP_LOOT_挖掘历史|r
step
.goto Deadwind Pass,45.0,78.8
>>从地上收集烧焦的骨头碎片。
.complete 9680,1
step
.goto Deadwind Pass,47.0,75.6
.turnin 9680 >>交任务: |cRXP_FRIENDLY_挖掘历史|r
step
#sticky
.goto Netherstorm,43.5,35.0
+由于复杂性，本指南中不包括职业任务，但由于经验缩放，它们在70时可能会有大量经验。如果你有任何低级任务可用，比如治疗德鲁伊毒药、圣骑士复活等，请准备好在启动时提交。有些10级任务由于缩放而放弃30公里经验。
step
.goto Netherstorm,43.5,35.0
+前往风暴精灵，攻击敌方玩家，攻击守卫。杀死守卫，直到你在联盟中处于0/3000中立。你每杀一次就损失125次。有一个敌对派别的朋友会加快这一进程。
>>在以下任务中需要中立的声誉：从小偷那里偷窃和满头象牙
*Skip this step if those 2 quests are already complete
step
.goto Shadowmoon Valley,66.0,84.6
.reputation 1015,exalted
+通过制作以下日报，达到与荷兰之翼的共鸣。不要提交任何一次任务！
.accept 11020 >>接任务: |cRXP_LOOT_缓慢的死亡|r
.accept 11015 >>接任务: |cRXP_LOOT_灵翼水晶|r
.accept 11035 >>接任务: |cRXP_LOOT_危险的天空|r
step
.goto Shadowmoon Valley,66.0,84.6
.accept 11018 >>接任务: |cRXP_LOOT_虚空矿石|r
.skill mining,<350,1
step
.goto Shadowmoon Valley,66.0,84.6
.skill herbalism,<350,1
.accept 11017 >>接任务: |cRXP_LOOT_灵尘花粉|r
step
.goto Shadowmoon Valley,66.0,84.6
.skill skinning,<350,1
.accept 11016 >>接任务: |cRXP_LOOT_虚空矿洞剥石者的外皮|r
]])
RXPGuides.RegisterGuide([[
#version 25
#wotlk
#tbc
#group RestedXP WLK的准备
#defaultfor None
#name Turn In Day Speed Assistant
step << !Mage
#sticky
#completewith next
+如果你的任务日志中没有“了解你的莱伊线”作为你的任务之一，那么在发射前几个小时去做“知道你的莱尔线”，它会给你一个卷轴来传送到沙塔斯。当日报再次可用时，此项目将被删除。如果你是一个愿意转移/召唤你的术士或法师的朋友，也可以跳过这一步。
step << !Mage
.goto Isle of Quel'Danas,47.6,35.4
.accept 11547 >>接任务: |cRXP_LOOT_魔网能量线的读数|r
step << !Mage
.isOnQuest 11547
.goto Isle of Quel'Danas,42.0,34.9,-1
.goto Isle of Quel'Danas,48.4,44.4,-1
.goto Isle of Quel'Danas,61.0,62.1,-1
.use 34533 >>使用星际巫师的水晶读取传送门、神殿和血水晶。
.complete 11547,1
.complete 11547,2
.complete 11547,3
step << !Mage
.isOnQuest 11547
.goto Isle of Quel'Danas,47.6,35.4
.turnin 11547 >>交任务: |cRXP_FRIENDLY_魔网能量线的读数|r
step
>>可以提高你的转身速度的物品。
.collect 6372,1
.collect 7052,1
.collect 2459,5
.collect 25653,1
step
>>您还可以选择获得赞萨的迅捷。这将为您节省大量时间，因为在WOTLK的坐骑工程中(需要赞达拉部落的尊敬)
.reputation 270,revered
.collect 20081,1
step
>>火箭靴结合noggenfogger也可以为你节省很多时间。
*There is a cloth and leather version of the boots, pick whichever is best for your spec. << Druid/Shaman/Paladin
.skill engineering,<330,1
.collect 8529,40
.collect 35581,1 << Warlock/Mage/Priest/Shaman/Druid/Paladin
.collect 23824,1 << Warrior/Paladin/Rogue/Hunter/Shaman/Druid
.collect 30542,1
]])
RXPGuides.RegisterGuide([[
#version 25
#wotlk
#tbc
#group RestedXP WLK的准备
#defaultfor None
#name 启动移交指南
#next RestedXP联盟70-80\70.5-71.5 北风苔原开始 << Alliance
#next RestedXP部落70-80\70.5-71.5 北风苔原开始 << Horde
step
#sticky
#completewith start1
+ 这是你在WOTLK不在时使用的指南，并且你要提交任务以进行实验。请在发布日之前不要在本指南中提交任务。
step
#sticky
#completewith start1
+ 将任务接受物品从您的库存添加到您的工具栏上，并按键绑定它们以更快地接受它们。这将节省以后查找它们的大量时间。
step
#sticky
#completewith start1
+由于卡拉赞的位置，如果你无法获得召唤，你需要启动卡拉赞，这意味着你只能有24个qlog任务，而不是25个。如果你可以获得卡拉赞召唤，那么从沙特开始，然后马上转移到卡拉赞。
step
.isQuestTurnedIn 9680
>>前往逆风山口
.goto Deadwind Pass,47.0,75.6
.accept 9631 >>接任务: |cRXP_LOOT_同事的帮助|r
step
.goto Deadwind Pass,47.1,75.2
.reputation 967,friendly,<0,1
>>选择一条环形路径，选择一条后跳过此步骤。
.dailyturnin 10730,10732,10729,10731 >>Turn in Path of the Violet Blank
step
.goto Deadwind Pass,47.1,75.2
.reputation 967,honored,<0,1
.daily 10735,10736,10733,10734 >>接任务: |cRXP_WARN_紫罗兰之路|r
.dailyturnin 10735,10736,10733,10734 >>Turn in the Honored Ring Quest. Skip this step if you're above honored
step
.goto Deadwind Pass,47.1,75.2
.reputation 967,revered,<0,1
.daily 10739,10740,10741,10738 >>接任务: |cRXP_WARN_卓越的贡献|r
.dailyturnin 10739,10740,10741,10738 >>Turn in the Revered Ring Quest. Skip this step if you're above revered
step
.goto Deadwind Pass,47.1,75.2
.reputation 967,exalted,<0,1
.daily 10725,10728,10727,10726 >>接任务: |cRXP_WARN_紫罗兰之眼的荣耀|r
.dailyturnin 10725,10728,10727,10726 >>Turn in the Exalted Ring Quest
step
.zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
step
#scryer
.itemcount 30810,10
.goto Shattrath City,45.5,81.4
.accept 10656 >>接任务: |cRXP_LOOT_日怒徽记|r
.turnin 10656 >>交任务: |cRXP_FRIENDLY_日怒徽记|r
step
#scryer
.itemcount 29426,10
.goto Shattrath City,45.4,81.4
.accept 10412 >>接任务: |cRXP_LOOT_火翼徽记|r
.turnin 10412 >>交任务: |cRXP_FRIENDLY_火翼徽记|r
step
#scryer
.itemcount 29739,1
.goto Shattrath City,42.6,91.4
.accept 10416 >>接任务: |cRXP_LOOT_能量的聚合|r
.turnin 10416 >>交任务: |cRXP_FRIENDLY_能量的聚合|r
step
#aldor
.itemcount 30809,10
.goto Shattrath City,30.8,34.6
.accept 10653 >>接任务: |cRXP_LOOT_萨格拉斯印记|r
.turnin 10653 >>交任务: |cRXP_FRIENDLY_萨格拉斯印记|r
step
#aldor
.itemcount 29425,10
.goto Shattrath City,30.8,34.6
.accept 10325 >>接任务: |cRXP_LOOT_基尔加丹印记|r
.turnin 10325 >>交任务: |cRXP_FRIENDLY_基尔加丹印记|r
step
#aldor
.itemcount 29740,1
.goto Shattrath City,24.2,29.8
.accept 10420 >>接任务: |cRXP_LOOT_净化之光|r
.turnin 10420 >>交任务: |cRXP_FRIENDLY_净化之光|r
step
.itemcount 32405,1
.goto Shattrath City,54.0,44.6
.use 32405
.accept 11007 >>接任务: |cRXP_LOOT_凯尔萨斯和翠绿的魔珠|r
.turnin 11007 >>交任务: |cRXP_FRIENDLY_凯尔萨斯和翠绿的魔珠|r
step
.isOnQuest 9837
.goto Shattrath City,54.6,44.2
.turnin 9837 >>交任务: |cRXP_FRIENDLY_返回卡德加身边|r
step
.isOnQuest 9831
.goto Shattrath City,54.6,44.2
.turnin 9831 >>交任务: |cRXP_FRIENDLY_卡拉赞的钥匙|r
step
.isQuestAvailable 11550
.goto Shattrath City,53.4,43.6
.accept 11550 >>接任务: |cRXP_LOOT_欺诈者降临|r
step
.itemcount 27480,5
.goto Shattrath City,50.4,45.4
.turnin 10091 >>交任务: |cRXP_FRIENDLY_灵魂装置|r
step
.isOnQuest 10095
.goto Shattrath City,50.4,45.4
.turnin 10095 >>交任务: |cRXP_FRIENDLY_深入迷宫|r
step
.itemcount 34246,10
.goto Shattrath City,49.2,42.4
.turnin 11514 >>交任务: |cRXP_FRIENDLY_维持传送门|r
step
.isOnQuest 11108
.goto Shattrath City,66.6,16.8
.turnin 11108 >>交任务: |cRXP_FRIENDLY_伊利丹·怒风大人|r
step
.itemcount 35231,1
.goto Shattrath City,62.6,36.0
.turnin 11877 >>交任务: |cRXP_FRIENDLY_日怒攻击计划|r
step << Alliance
>>你需要71级才能完成这个任务，如果你不是71级就跳过它。
.goto Shattrath City,67.2,34.0
.dailyturnin 11337,11336,11335,11338 >>Turn in the PvP Daily
step << Horde
>>你需要71级才能完成这个任务，如果你不是71级就跳过它。
.goto Shattrath City,67.0,56.6
.dailyturnin 11341,11340,11339,11342 >>Turn in the PvP Daily
step
.itemcount 25719,30
.goto Shattrath City,49.0,18.4
>>Vekax在该地区四处走动
.unitscan Vekax
.accept 10917 >>接任务: |cRXP_LOOT_流亡者的交易|r
.turnin 10917 >>交任务: |cRXP_FRIENDLY_流亡者的交易|r
step
#aldor
.itemcount 25744,8
.goto Shattrath City,54.8,22.6
.accept 10024 >>接任务: |cRXP_LOOT_沃雷塔尔的预言|r
.turnin 10024 >>交任务: |cRXP_FRIENDLY_沃雷塔尔的预言|r
step
.itemcount 33849,15
.goto Shattrath City,61.6,15.8
.turnin 11380 >>交任务: |cRXP_FRIENDLY_魔法美味|r
step
.itemcount 33839,1
.goto Shattrath City,61.6,15.8
.turnin 11377 >>交任务: |cRXP_FRIENDLY_甜美的复仇|r
step
.itemcount 33850,1
.goto Shattrath City,61.6,15.8
.turnin 11381 >>交任务: |cRXP_FRIENDLY_灵魂之汤|r
step
.itemcount 33848,1
.goto Shattrath City,61.6,15.8
.turnin 11379 >>交任务: |cRXP_FRIENDLY_超级美味烧烤|r
step
#scryer
.itemcount 25802,8
.goto Shattrath City,64.4,15.6
.accept 10017 >>接任务: |cRXP_LOOT_物资紧张|r
.turnin 10017 >>交任务: |cRXP_FRIENDLY_物资紧张|r
step
.itemcount 33826,1
.goto Shattrath City,75.0,36.4
.turnin 11369 >>交任务: |cRXP_FRIENDLY_悬赏：黑色阔步者的卵|r
step
.itemcount 33859,1
.goto Shattrath City,75.0,36.4
.turnin 11384 >>交任务: |cRXP_FRIENDLY_悬赏：扭木碎片|r
step
.itemcount 33858,1
.goto Shattrath City,75.0,36.4
.turnin 11382 >>交任务: |cRXP_FRIENDLY_悬赏：埃欧努斯的沙漏|r
step
.itemcount 11363,1
.goto Shattrath City,75.0,36.4
.turnin 11363 >>交任务: |cRXP_FRIENDLY_悬赏：刃拳的印记|r
step
.itemcount 33840,1
.goto Shattrath City,75.0,36.4
.turnin 11375 >>交任务: |cRXP_FRIENDLY_悬赏：摩摩尔的低语|r
step
.itemcount 33833,1
.goto Shattrath City,75.0,36.4
.turnin 11354 >>交任务: |cRXP_FRIENDLY_悬赏：纳杉的骑鞭|r
step
.itemcount 33860,1
.goto Shattrath City,75.0,36.4
.turnin 11386 >>交任务: |cRXP_FRIENDLY_悬赏：帕萨雷恩的投影仪|r
step
.itemcount 33835,1
.goto Shattrath City,75.0,36.4
.turnin 11373 >>交任务: |cRXP_FRIENDLY_悬赏：沙法尔的精致饰物|r
step
.itemcount 33847,1
.goto Shattrath City,75.0,36.4
.turnin 11378 >>交任务: |cRXP_FRIENDLY_悬赏：时空猎手的徽记|r
step
.itemcount 33836,1
.goto Shattrath City,75.0,36.4
.turnin 11374 >>交任务: |cRXP_FRIENDLY_悬赏：主教的灵魂宝钻|r
step
.itemcount 33834,1
.goto Shattrath City,75.0,36.4
.turnin 11372 >>交任务: |cRXP_FRIENDLY_悬赏：艾吉斯的冠羽|r
step
.itemcount 33821,1
.goto Shattrath City,75.0,36.4
.turnin 11368 >>交任务: |cRXP_FRIENDLY_悬赏：夸格米拉之心|r
step
.itemcount 33861,1
.goto Shattrath City,75.0,36.4
.turnin 11388 >>交任务: |cRXP_FRIENDLY_悬赏：斯克瑞斯的卷轴|r
step
.itemcount 33827,1
.goto Shattrath City,75.0,36.4
.turnin 11370 >>交任务: |cRXP_FRIENDLY_悬赏：督军的论文|r
step << Horde
.isQuestTurnedIn 9993
.goto Terokkar Forest,50.0,44.8
.accept 10201 >>接任务: |cRXP_LOOT_真相大白|r
step << Horde
.isOnQuest 10201
.goto Terokkar Forest,49.8,45.2
>>Talk to Grek
.skipgossip
.complete 10201,1
step << Horde
.isOnQuest 10201
.goto Terokkar Forest,50.0,44.8
.turnin 10201 >>交任务: |cRXP_FRIENDLY_真相大白|r
step << Horde
.isQuestTurnedIn 10447
.goto Terokkar Forest,50.0,45.8
.accept 10006 >>接任务: |cRXP_LOOT_告知缚地者塔弗格伦|r
step << Horde
.isOnQuest 10006
.goto Terokkar Forest,44.4,26.2 
.turnin 10006 >>交任务: |cRXP_FRIENDLY_告知缚地者塔弗格伦|r
step << Horde
.isOnQuest 11506
.goto Terokkar Forest,49.8,45.6
.turnin 11506 >>交任务: |cRXP_FRIENDLY_奥金顿的幽魂|r

step << Horde
.isQuestAvailable 10013
.goto Terokkar Forest,67.9,53.5
>>点击建筑物内的卷轴
.accept 10013 >>接任务: |cRXP_LOOT_幕后黑手|r
step << Alliance
.isQuestTurnedIn 10446
.goto Terokkar Forest,57.0,53.6
.accept 10005 >>接任务: |cRXP_LOOT_告知缚地者塔弗格伦|r
step << Alliance
.isOnQuest 11505
.goto Terokkar Forest,55.8,53.8
.turnin 11505 >>交任务: |cRXP_FRIENDLY_奥金顿的幽魂|r
step << Alliance
.isQuestAvailable 10038
.goto Terokkar Forest,57.6,55.6
.accept 10038 >>接任务: |cRXP_LOOT_援助列兵维克斯|r
step << Alliance
.isQuestAvailable 10012
.goto Terokkar Forest,67.9,53.5
>>点击建筑物内的卷轴
.accept 10012 >>接任务: |cRXP_LOOT_邪兽人的计划|r
step
#label start1
.itemcount 30829,1
.goto Terokkar Forest,77.4,38.6
.turnin 10670 >>交任务: |cRXP_FRIENDLY_大地之母的眼泪|r
step
.itemcount 30828,1
.goto Terokkar Forest,77.4,38.6
.turnin 10667 >>交任务: |cRXP_FRIENDLY_地下的土壤|r
step
.goto Terokkar Forest,77.4,38.6
>>Accept and turn in the quest, then wait for him to craft the sword. Skip this if needed.
.accept 10676 >>接任务: |cRXP_LOOT_伊利达雷的斩除者|r
step
>>需要30秒才能分娩。它有一个相当免费的后续任务。
.isOnQuest 10676
.goto Terokkar Forest,77.4,38.6
.turnin 10676 >>交任务: |cRXP_FRIENDLY_伊利达雷的斩除者|r
step
.isQuestTurnedIn 10676
.goto Terokkar Forest,77.4,38.6
>>在他锻造完刀刃后，接受新的任务
.accept 10679 >>接任务: |cRXP_LOOT_淬火|r
step << Alliance
.isOnQuest 10005
.goto Terokkar Forest,44.4,26.2 
.turnin 10005 >>交任务: |cRXP_FRIENDLY_告知缚地者塔弗格伦|r
step << Horde
.isOnQuest 10013
.goto Terokkar Forest,49.0,44.7
.turnin 10013 >>交任务: |cRXP_FRIENDLY_幕后黑手|r
step << Horde
.isQuestAvailable 10847
.goto Terokkar Forest,49.0,44.7
.accept 10862 >>接任务: |cRXP_LOOT_向部落投降|r
step << Horde
.isQuestAvailable 10039
>>与血精灵对话
.goto Terokkar Forest,48.8,44.6
.accept 10039 >>接任务: |cRXP_LOOT_援助斥候奈弗蒂丝|r
step << Horde
.isOnQuest 10039
.goto Terokkar Forest,39.0,43.8
.turnin 10039 >>交任务: |cRXP_FRIENDLY_援助斥候奈弗蒂丝|r
step << Alliance
.isOnQuest 10038
.goto Terokkar Forest,40.4,36.0
.turnin 10038 >>交任务: |cRXP_FRIENDLY_援助列兵维克斯|r
step
.itemcount 31707,1
.goto Terokkar Forest,37.4,51.2
.use 31707,1 >>使用包中的阴谋命令接受任务
.accept 10880 >>接任务: |cRXP_LOOT_秘教的命令|r
.turnin 10880 >>交任务: |cRXP_FRIENDLY_秘教的命令|r
step
.isOnQuest 10218
.goto Terokkar Forest,39.4,58.4
.turnin 10218 >>交任务: |cRXP_FRIENDLY_别人的烂摊子|r
step
.isOnQuest 10165
.goto Terokkar Forest,39.4,58.4
.turnin 10165 >>交任务: |cRXP_FRIENDLY_扫除竞争者|r
step
.isOnQuest 10097
.goto Terokkar Forest,44.0,65.0
.turnin 10097 >>交任务: |cRXP_FRIENDLY_兄弟反目|r
step
.isOnQuest 10098
.goto Terokkar Forest,44.0,65.0
.turnin 10098 >>交任务: |cRXP_FRIENDLY_泰罗克的传说|r
step
.isQuestTurnedIn 10921
.goto Terokkar Forest,49.8,76.2
.accept 10926 >>接任务: |cRXP_LOOT_返回沙塔尔营地|r
step
.isOnQuest 10926
.goto Terokkar Forest,31.4,75.6
.turnin 10926 >>交任务: |cRXP_FRIENDLY_返回沙塔尔营地|r
step
.isOnQuest 10164
.goto Terokkar Forest,35.0,65.2
.turnin 10164 >>交任务: |cRXP_FRIENDLY_一切都会变好的|r
step << Alliance
.isOnQuest 10012
.goto Terokkar Forest,58.2,54.8
.turnin 10012 >>交任务: |cRXP_FRIENDLY_邪兽人的计划|r
step << Alliance
.isQuestAvailable 10847
.goto Terokkar Forest,57.6,56.0
.accept 10863 >>接任务: |cRXP_LOOT_鸦人的秘密|r
step
.itemcount 32523,1
.goto Terokkar Forest,64.0,66.8
.use 32523 >>使用包中的Ishaal年鉴接受任务
.accept 11021 >>接任务: |cRXP_LOOT_伊沙尔的历书|r
.turnin 11021 >>交任务: |cRXP_FRIENDLY_伊沙尔的历书|r
step
.isQuestTurnedIn 11021
.goto Terokkar Forest,64.0,66.8
.accept 11024 >>接任务: |cRXP_LOOT_贫民窟的盟友|r
step
.itemcount 32388,6
.goto Terokkar Forest,64.0,66.8
.accept 11004 >>接任务: |cRXP_LOOT_阴影世界|r
.turnin 11004 >>交任务: |cRXP_FRIENDLY_阴影世界|r
step
.isOnQuest 11008
.goto Terokkar Forest,64.6,66.6
.turnin 11008 >>交任务: |cRXP_FRIENDLY_轰炸斯克提斯|r
step << Alliance
.isQuestTurnedIn 10612
.goto Shadowmoon Valley,40.8,22.2
.accept 10744 >>接任务: |cRXP_LOOT_胜利的消息|r
step << Alliance
.isQuestTurnedIn 10522
.goto Shadowmoon Valley,44.6,23.7
.accept 10523 >>接任务: |cRXP_LOOT_诅咒密码 - 第一块碎片|r
step << Horde
.isQuestTurnedIn 10613
.goto Shadowmoon Valley,27.4,21.2
.accept 10745 >>接任务: |cRXP_LOOT_胜利的消息|r
step << Horde
.isOnQuest 10745
.goto Shadowmoon Valley,28.4,26.4
.turnin 10745 >>交任务: |cRXP_FRIENDLY_胜利的消息|r
step << Horde
.isQuestAvailable 10750
.goto Shadowmoon Valley,28.4,26.4
.accept 10750 >>接任务: |cRXP_LOOT_征服之路|r
step << Horde
.isQuestTurnedIn 10625
.goto Shadowmoon Valley,29.8,27.8
.accept 10633 >>接任务: |cRXP_LOOT_塔隆-血魔的传说|r
step
.isQuestTurnedIn 10780
.goto Shadowmoon Valley,35.4,41.8
>>任务给予者帕沙在路上巡逻
.unitscan Parshah
.accept 10782 >>接任务: |cRXP_LOOT_为杖头充能|r
step
.isOnQuest 10782
.goto Shadowmoon Valley,43.1,44.9
.use 31360 >>立即装备饰品，因为它有CD，然后在祭坛附近使用
.complete 10782,1 
step
.isOnQuest 10782
.goto Shadowmoon Valley,35.4,41.8
>>重新装备你的普通饰品！
.turnin 10782 >>交任务: |cRXP_FRIENDLY_为杖头充能|r
step
.isQuestTurnedIn 10540
.goto Shadowmoon Valley,29.5,50.6
.accept 10541 >>接任务: |cRXP_LOOT_诅咒密码 - 第二块碎片|r
step << Alliance
.isOnQuest 10744
.goto Shadowmoon Valley,35.8,57.6
>>走下大楼的楼梯。
.turnin 10744 >>交任务: |cRXP_FRIENDLY_胜利的消息|r
step << Alliance
.isQuestAvailable 10772
.goto Shadowmoon Valley,36.2,57.0
.accept 10772 >>接任务: |cRXP_LOOT_征服之路|r
step
.isQuestTurnedIn 10578
.goto Shadowmoon Valley,47.5,57.2
.accept 10579 >>接任务: |cRXP_LOOT_诅咒密码 - 第三块碎片|r
step << Alliance
.isOnQuest 10772
.goto Shadowmoon Valley,51.8,61.0
.use 31310 >>一旦你发现路径，就用火炬召唤鹰头狮骑士。你必须在安全的地方接触地面。
.turnin 10772 >>交任务: |cRXP_FRIENDLY_征服之路|r
step << Horde
.isOnQuest 10750
.goto Shadowmoon Valley,51.4,60.4
.use 31108 >>一旦你发现路径，就用火炬召唤飞龙骑士。你必须在安全的地方接触地面。
.turnin 10750 >>交任务: |cRXP_FRIENDLY_征服之路|r
step
.itemcount 31345,1
.goto Shadowmoon Valley,51.4,72.7
.use 31345 >>使用包中的《瓦尔扎雷克日记》接受任务
.accept 10793 >>接任务: |cRXP_LOOT_瓦萨雷克的日记：战争的前奏|r
.turnin 10793 >>交任务: |cRXP_FRIENDLY_瓦萨雷克的日记：战争的前奏|r
step << Horde
.isOnQuest 10633
.goto Shadowmoon Valley,58.2,70.8
.turnin 10633 >>交任务: |cRXP_FRIENDLY_塔隆-血魔的传说|r
step
.itemcount 32427,30
.goto Shadowmoon Valley,66.0,86.4
.accept 11015 >>接任务: |cRXP_LOOT_灵翼水晶|r
.turnin 11015 >>交任务: |cRXP_FRIENDLY_灵翼水晶|r
step
.isOnQuest 11020
.goto Shadowmoon Valley,66.0,86.4
.turnin 11020 >>交任务: |cRXP_FRIENDLY_缓慢的死亡|r
step
.itemcount 32506,1
.goto Shadowmoon Valley,66.0,86.4
.accept 11049 >>接任务: |cRXP_LOOT_寻找灵翼龙卵|r
.turnin 11049 >>交任务: |cRXP_FRIENDLY_寻找灵翼龙卵|r
step
.itemcount 32464,40
.reputation 1015,neutral,<0,1
.goto Shadowmoon Valley,66.0,86.4
.skill mining,<350,1
>>你每天只能提交一次采集，如果你有两个采集职业，请跳过下一个。
.accept 11018 >>接任务: |cRXP_LOOT_虚空矿石|r
.turnin 11018 >>交任务: |cRXP_FRIENDLY_虚空矿石|r
step
.itemcount 32468,40
.reputation 1015,neutral,<0,1
.goto Shadowmoon Valley,66.0,86.4
.skill herbalism,<350,1
>>你每天只能提交一次采集，如果你有两个采集职业，请跳过下一个。
.accept 11017 >>接任务: |cRXP_LOOT_灵尘花粉|r
.turnin 11017 >>交任务: |cRXP_FRIENDLY_灵尘花粉|r
step
.itemcount 32470,435
.reputation 1015,neutral,<0,1
.goto Shadowmoon Valley,66.0,86.4
.skill skinning,<350,1
>>你每天只能提交一次采集，如果你有两个采集职业，请跳过下一个。
.accept 11016 >>接任务: |cRXP_LOOT_虚空矿洞剥石者的外皮|r
.turnin 11016 >>交任务: |cRXP_FRIENDLY_虚空矿洞剥石者的外皮|r
step
.goto Shadowmoon Valley,66.0,86.4
.reputation 1015,friendly,<0,1
.accept 11053 >>接任务: |cRXP_LOOT_起立，督工！|r
step
.isOnQuest 11053
.goto Shadowmoon Valley,66.2,85.6
.reputation 1015,friendly,<0,1
.turnin 11053 >>交任务: |cRXP_FRIENDLY_起立，督工！|r
step
.goto Shadowmoon Valley,66.2,86.4
.reputation 1015,friendly<0,1
.accept 11075 >>接任务: |cRXP_LOOT_灵翼矿洞|r
step
.isQuestAvailable 11084
.goto Shadowmoon Valley,66.0,86.4
.reputation 1015,honored,<0,1
.accept 11084 >>接任务: |cRXP_LOOT_立正，队长！|r
step
.isOnQuest 11084
.goto Shadowmoon Valley,66.2,85.6
.reputation 1015,honored,<0,1
.turnin 11084 >>交任务: |cRXP_FRIENDLY_立正，队长！|r
step
.isQuestAvailable 11092
.goto Shadowmoon Valley,66.0,86.4
.reputation 1015,revered,<0,1
.accept 11092 >>接任务: |cRXP_LOOT_你好，指挥官！|r
step
.isOnQuest 11092
.goto Shadowmoon Valley,66.2,85.6
.reputation 1015,revered,<0,1
.turnin 11092 >>交任务: |cRXP_FRIENDLY_你好，指挥官！|r
step
#aldor
.isQuestAvailable 11099
.goto Shadowmoon Valley,66.2,85.6
.reputation 1015,revered,<0,1
.accept 11099 >>接任务: |cRXP_LOOT_把他们都干掉！|r
step
#scryer
.isQuestAvailable 11094
.goto Shadowmoon Valley,66.2,85.6
.reputation 1015,revered,<0,1
.accept 11094 >>接任务: |cRXP_LOOT_把他们都干掉！|r
step
.goto Shadowmoon Valley,66.0,86.4
.itemcount 32509,10
.turnin 11035 >>交任务: |cRXP_FRIENDLY_危险的天空|r
step
.isOnQuest 11075
.goto Shadowmoon Valley,63.0,87.8
.turnin 11075 >>交任务: |cRXP_FRIENDLY_灵翼矿洞|r
step
.itemcount 32724,1
>>打开你的污泥覆盖物，直到你得到一个黑血逃生计划
.collect 32726,1,11081,1
step
.itemcount 32726,1
.goto Shadowmoon Valley,63.0,87.8
.use 32726 >>使用包中的黑血逃生计划接受任务
.accept 11081 >>接任务: |cRXP_LOOT_暗血大逃亡|r
.turnin 11081 >>交任务: |cRXP_FRIENDLY_暗血大逃亡|r
step
#scryer
.isOnQuest 11094
.goto Shadowmoon Valley,56.2,59.6
.reputation 1015,revered,<0,1
.turnin 11094 >>交任务: |cRXP_FRIENDLY_把他们都干掉！|r
step
.isOnQuest 10707
.goto Shadowmoon Valley,58.0,48.2
.turnin 10707 >>交任务: |cRXP_FRIENDLY_阿塔玛平台|r
step
.isOnQuest 10679
.goto Shadowmoon Valley,51.9,40.2
.use 30875 >>在熔岩池中使用锻造伊利达里诅咒之刃
.complete 10679,1
step << Horde
.isQuestTurnedIn 10522
.goto Shadowmoon Valley,44.6,23.7
.accept 10523 >>接任务: |cRXP_LOOT_诅咒密码 - 第一块碎片|r
step
#aldor
.isOnQuest 11099
.goto Shadowmoon Valley,62.6,28.4
.reputation 1015,revered
.turnin 11099 >>交任务: |cRXP_FRIENDLY_把他们都干掉！|r
step
.isOnQuest 10523
.goto Shadowmoon Valley,53.9,23.4
.turnin 10523 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 第一块碎片|r
step
.isOnQuest 10541
.goto Shadowmoon Valley,53.9,23.4
.turnin 10541 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 第二块碎片|r
step
.isOnQuest 10579
.goto Shadowmoon Valley,53.9,23.4
.turnin 10579 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 第三块碎片|r
step
.isOnQuest 10679
.goto Terokkar Forest,77.4,38.6
.turnin 10679 >>交任务: |cRXP_FRIENDLY_淬火|r
step
.itemcount 23580,1
.goto Hellfire Peninsula,28.8,81.4
.use 23580 >>使用包中的Avruu's Orb接受任务
.accept 9418 >>接任务: |cRXP_LOOT_亚维鲁的宝珠|r
.turnin 9418 >>交任务: |cRXP_FRIENDLY_亚维鲁的宝珠|r
step << Alliance
.itemcount 23848,1
.goto Hellfire Peninsula,24.0,72.2
.reputation 946,friendly,<0,1 >>这一步你至少需要友好地站着，保持荣誉。
.accept 9563 >>接任务: |cRXP_LOOT_米伦的信任|r
.turnin 9563 >>交任务: |cRXP_FRIENDLY_米伦的信任|r
step << Horde
.isQuestTurnedIn 9400
.goto Hellfire Peninsula,33.6,43.6
.accept 9401 >>接任务: |cRXP_LOOT_奇怪的武器|r
step << Horde
.isOnQuest 9401
.goto Hellfire Peninsula,55.0,36.0
.turnin 9401 >>交任务: |cRXP_FRIENDLY_奇怪的武器|r
step << Horde
.isQuestTurnedIn 9401
.goto Hellfire Peninsula,55.0,36.0
.accept 9405 >>接任务: |cRXP_LOOT_酋长的命令|r
step << Horde
.itemcount 29590,1
.goto Hellfire Peninsula,55.0,36.0
.use 29590 >>使用背包中的燃烧军团任务来接受任务
.accept 10393 >>接任务: |cRXP_LOOT_邪恶的计划|r
step << Horde
.goto Hellfire Peninsula,55.0,36.0
.turnin 10393 >>交任务: |cRXP_FRIENDLY_邪恶的计划|r
step << Horde
.itemcount 23892,1
.goto Hellfire Peninsula,55.0,36.0
.use 23892 >>Accept the quest from the Ominous Letter in your inventory
.accept 9588 >>接任务: |cRXP_LOOT_黑暗之潮|r
step
.isOnQuest 9588
.goto Hellfire Peninsula,55.0,36.0
.turnin 9588 >>交任务: |cRXP_FRIENDLY_黑暗之潮|r
step << Horde
.itemcount 31241,1
.goto Hellfire Peninsula,55.0,36.0
.use 31241 >>Accept the quest using the Primed Key Mold in your inventory
.accept 10755 >>接任务: |cRXP_LOOT_堡垒的钥匙|r
step << Horde
.isOnQuest 10755
.goto Hellfire Peninsula,55.0,36.0
.turnin 10755 >>交任务: |cRXP_FRIENDLY_堡垒的钥匙|r
step << Horde
.isQuestTurnedIn 10755
.goto Hellfire Peninsula,55.0,36.0
.accept 10756 >>接任务: |cRXP_LOOT_罗霍克大师|r
step << Horde
.itemcount 32386,1
.goto Hellfire Peninsula,55.0,36.0
.use 32386 >>使用Matheridon的头接受任务
.accept 11003 >>接任务: |cRXP_LOOT_玛瑟里顿之死|r
.turnin 11003 >>交任务: |cRXP_FRIENDLY_玛瑟里顿之死|r
step << Horde
.itemcount 23723,1
.goto Hellfire Peninsula,55.0,36.0
.turnin 9495 >>交任务: |cRXP_FRIENDLY_酋长的意志|r
step << Horde
.isOnQuest 9405
.goto Hellfire Peninsula,54.2,37.8
.turnin 9405 >>交任务: |cRXP_FRIENDLY_酋长的命令|r
step << Horde
.isOnQuest 10756
.goto Hellfire Peninsula,53.2,38.2
.turnin 10756 >>交任务: |cRXP_FRIENDLY_罗霍克大师|r
step << Horde
.isQuestTurnedIn 10756
.goto Hellfire Peninsula,53.2,38.2
.accept 10757 >>接任务: |cRXP_LOOT_罗霍克的要求|r
.turnin 10757 >>交任务: |cRXP_FRIENDLY_罗霍克的要求|r
step << Alliance
.isOnQuest 9493
.goto Hellfire Peninsula,56.8,62.6
.turnin 9493 >>交任务: |cRXP_FRIENDLY_邪部落的荣耀|r
step << Alliance
.isQuestTurnedIn 10047
.goto Hellfire Peninsula,56.6,66.6
.accept 10093 >>接任务: |cRXP_LOOT_塔哈玛特神殿|r
step << Alliance
.itemcount 29590,1
.goto Hellfire Peninsula,56.6,66.4
.use 29590 >>使用背包中的燃烧军团任务来接受任务
.accept 10395 >>接任务: |cRXP_LOOT_邪恶的信件|r
step << Alliance
.isOnQuest 10395
.goto Hellfire Peninsula,56.6,66.4
.turnin 10395 >>交任务: |cRXP_FRIENDLY_邪恶的信件|r
step << Alliance
.itemcount 23890,1
.goto Hellfire Peninsula,56.6,66.4
.use 23890 >>使用包中的不祥信接受任务
.accept 9587 >>接任务: |cRXP_LOOT_黑暗之潮|r
step << Alliance
.isOnQuest 9587
.goto Hellfire Peninsula,56.6,66.4
.turnin 9587 >>交任务: |cRXP_FRIENDLY_黑暗之潮|r
step << Alliance
.itemcount 32385,1
.goto Hellfire Peninsula,56.6,66.4
.use 32385 >>使用Matheridon的头接受任务
.accept 11002 >>接任务: |cRXP_LOOT_玛瑟里顿之死|r
.turnin 11002 >>交任务: |cRXP_FRIENDLY_玛瑟里顿之死|r
step << Alliance
.itemcount 31239,1
.goto Hellfire Peninsula,56.6,66.6
.use 31239 >>Accept the quest by using the Primed Key Mold in your inventory
.accept 10754 >>接任务: |cRXP_LOOT_堡垒的钥匙|r
step << Alliance
.isOnQuest 10754
.goto Hellfire Peninsula,56.6,66.6
.turnin 10754 >>交任务: |cRXP_FRIENDLY_堡垒的钥匙|r
step << Alliance
.isQuestAvailable 10762
.goto Hellfire Peninsula,56.6,66.6
.accept 10762 >>接任务: |cRXP_LOOT_达姆菲大师|r
step << Alliance
.isOnQuest 9492
.goto Hellfire Peninsula,56.6,66.4
.turnin 9492 >>交任务: |cRXP_FRIENDLY_扭转战局|r
step << Alliance
.isOnQuest 9494
.goto Hellfire Peninsula,53.8,65.6
.turnin 9494 >>交任务: |cRXP_FRIENDLY_邪能灰烬|r
step << Alliance
.isOnQuest 10762
.goto Hellfire Peninsula,51.2,60.2
.turnin 10762 >>交任务: |cRXP_FRIENDLY_达姆菲大师|r
step << Alliance
.isQuestTurnedIn 10762
.goto Hellfire Peninsula,51.2,60.2
.accept 10763 >>接任务: |cRXP_LOOT_达姆菲的要求|r
.turnin 10763 >>交任务: |cRXP_FRIENDLY_达姆菲的要求|r
step
.isOnQuest 11515
.goto Hellfire Peninsula,58.2,17.6
.turnin 11515 >>交任务: |cRXP_FRIENDLY_血债血偿|r
step
.isOnQuest 11516
.goto Hellfire Peninsula,58.2,17.6
.turnin 11516 >>交任务: |cRXP_FRIENDLY_轰炸传送门|r
step << Alliance
.isQuestTurnedIn 9390
.goto Hellfire Peninsula,26.8,37.6
>>与尸体对话
.accept 9423 >>接任务: |cRXP_LOOT_返回欧巴迪身边|r
step << Alliance
.isOnQuest 10093
.goto Hellfire Peninsula,23.4,36.6
.turnin 10093 >>交任务: |cRXP_FRIENDLY_塔哈玛特神殿|r
step << Alliance
.isQuestAvailable 9423
.goto Hellfire Peninsula,23.0,40.4
.turnin 9423 >>交任务: |cRXP_FRIENDLY_返回欧巴迪身边|r
step
.itemcount 23338,1
.goto Hellfire Peninsula,15.6,52.2
.use 23338 >>使用包中的腐蚀皮套接受任务
.accept 9373 >>接任务: |cRXP_LOOT_遗失的信件|r
.turnin 9373 >>交任务: |cRXP_FRIENDLY_遗失的信件|r
step
.itemcount 29476,1
.goto Hellfire Peninsula,15.6,52.2
.use 29476 >>使用包中的深红水晶碎片接受任务
.accept 10134 >>接任务: |cRXP_LOOT_火红水晶中的线索|r
.turnin 10134 >>交任务: |cRXP_FRIENDLY_火红水晶中的线索|r
step << Horde
.isQuestTurnedIn 9774
.goto Zangarmarsh,85.2,54.6
.accept 9771 >>接任务: |cRXP_LOOT_寻找斥候尤尔巴|r
step << Horde
.isQuestAvailable 9775
.goto Zangarmarsh,85.2,54.6
.accept 9775 >>接任务: |cRXP_LOOT_向暗影猎手德恩加报到|r
step << Horde
.itemcount 24484,1
.goto Zangarmarsh,85.0,54.0
.use 24484 >>使用你的库存中的枯萎的Basidium来接受任务
.accept 9828 >>接任务: |cRXP_LOOT_枯萎的孢芽|r
.turnin 9828 >>交任务: |cRXP_FRIENDLY_枯萎的孢芽|r
step << Horde
.isOnQuest 9771
.goto Zangarmarsh,80.8,36.2
.turnin 9771 >>交任务: |cRXP_FRIENDLY_寻找斥候尤尔巴|r
step
.isQuestTurnedIn 9731
.goto Zangarmarsh,78.4,62.0
.accept 9724 >>接任务: |cRXP_LOOT_通知塞纳里奥议会|r
step
.itemcount 24367,1
.goto Zangarmarsh,78.4,62.0
.use 24367 >>用你包里的瓦什女士的命令接受任务
.accept 9764 >>接任务: |cRXP_LOOT_瓦丝琪的命令|r
.turnin 9764 >>交任务: |cRXP_FRIENDLY_瓦丝琪的命令|r
step
.isQuestTurnedIn 9764
.goto Zangarmarsh,78.4,62.0
.accept 9765 >>接任务: |cRXP_LOOT_战争准备|r
.turnin 9765 >>交任务: |cRXP_FRIENDLY_战争准备|r
step
.isQuestAvailable 9697
.goto Zangarmarsh,78.6,63.2
.reputation 942,friendly,<0,1 >>如果你对塞纳里奥探险队不够友好，请跳过这一步。
.accept 9697 >>接任务: |cRXP_LOOT_观察者莉萨奥|r
step
.itemcount 24401,10
.goto Zangarmarsh,80.2,64.2
.accept 9802 >>接任务: |cRXP_LOOT_赞加沼泽的植物|r
.turnin 9802 >>交任务: |cRXP_FRIENDLY_赞加沼泽的植物|r
step
.isQuestAvailable 9785
.goto Zangarmarsh,80.4,64.6
.accept 9785 >>接任务: |cRXP_LOOT_古树的祝福|r
step
.isOnQuest 9785
.goto Zangarmarsh,81.0,64.0,20,0
.goto Zangarmarsh,79.8,64.4
.skipgossip
>>Talk to Ancient Ashyen and Keleth to receive their mark.
.unitscan Ashyen
.unitscan Keleth
.complete 9785,1
.complete 9785,2
step
.isOnQuest 9785
.goto Zangarmarsh,80.4,64.6
.turnin 9785 >>交任务: |cRXP_FRIENDLY_古树的祝福|r
step << skip
.isQuestAvailable 9957
.goto Zangarmarsh,78.6,63.0
.accept 9957 >>接任务: |cRXP_LOOT_塞纳里奥树林出事了？|r
step
.isQuestTurnedIn 9731
.goto Hellfire Peninsula,16.0,52.2
.turnin 9724 >>交任务: |cRXP_FRIENDLY_通知塞纳里奥议会|r
step
.isQuestTurnedIn 9731
.goto Hellfire Peninsula,16.0,52.2
.accept 9732 >>接任务: |cRXP_LOOT_返回沼泽|r
step
.isQuestTurnedIn 9731
.goto Zangarmarsh,78.4,62.0
.turnin 9732 >>交任务: |cRXP_FRIENDLY_返回沼泽|r
step << Alliance
.itemcount 24483,1
.goto Zangarmarsh,68.6,48.8
.use 24483 >>使用你的库存中的枯萎的Basidium来接受任务
.accept 9827 >>接任务: |cRXP_LOOT_枯萎的孢芽|r
.turnin 9827 >>交任务: |cRXP_FRIENDLY_枯萎的孢芽|r
step
.isQuestTurnedIn 10231
.goto Shattrath City,43.6,29.6
>>如果“肮脏的”拉里死了，跳过这一步。
.accept 10251 >>接任务: |cRXP_LOOT_主人的伟大设计？|r
step << Alliance
.isOnQuest 10863
.goto Shattrath City,52.6,20.8
.turnin 10863 >>交任务: |cRXP_FRIENDLY_鸦人的秘密|r
step << Horde
.isOnQuest 10862
.goto Shattrath City,52.6,20.8
.turnin 10862 >>交任务: |cRXP_FRIENDLY_向部落投降|r
step
.isQuestTurnedIn 10009
.goto Shattrath City,77.2,34.8
.accept 10010 >>接任务: |cRXP_LOOT_就这么简单？|r
step
#completewith isleofquel
.goto Shattrath City,48.7,42.2
.zone 122 >>从沙特拉斯的入口前往奎达纳斯岛
step
.isOnQuest 11521
.goto Isle of Quel'Danas,53.8,34.2
.turnin 11521 >>交任务: |cRXP_FRIENDLY_继续寻根|r
step
.isOnQuest 11546
.goto Isle of Quel'Danas,53.8,34.2
.turnin 11546 >>交任务: |cRXP_FRIENDLY_开始营业|r
step
.isOnQuest 11541
.goto Isle of Quel'Danas,51.4,32.6
.turnin 11541 >>交任务: |cRXP_FRIENDLY_解救绿鳃奴隶|r
step
.isOnQuest 11550
.goto Isle of Quel'Danas,50.2,28.2
.turnin 11550 >>交任务: |cRXP_FRIENDLY_欺诈者降临|r
step
.isOnQuest 11523
.goto Isle of Quel'Danas,47.4,30.6
.turnin 11523 >>交任务: |cRXP_FRIENDLY_激活结界！|r
step
.isOnQuest 11525
.goto Isle of Quel'Danas,47.2,30.6
.turnin 11525 >>交任务: |cRXP_FRIENDLY_转化更多奥术守卫|r
step
.isOnQuest 11533
.goto Isle of Quel'Danas,47.6,35.2
.turnin 11533 >>交任务: |cRXP_FRIENDLY_继续空袭|r
step
.isOnQuest 11547
.goto Isle of Quel'Danas,47.6,35.4
>>如果你不打算提交祖拉曼或奥特兰山谷任务，使用它给你的卷轴奖励返回沙塔斯。
.turnin 11547 >>交任务: |cRXP_FRIENDLY_魔网能量线的读数|r
step
.isOnQuest 11536
.goto Isle of Quel'Danas,50.4,40.6
.turnin 11536 >>交任务: |cRXP_FRIENDLY_不要停下......|r
step
.itemcount 34501,5
.goto Isle of Quel'Danas,50.4,40.6
.turnin 11544 >>交任务: |cRXP_FRIENDLY_阿塔玛军备|r
step
.isOnQuest 11542
.goto Isle of Quel'Danas,50.4,39.0
.turnin 11542 >>交任务: |cRXP_FRIENDLY_拦截援军|r
step
.isOnQuest 11543
.goto Isle of Quel'Danas,50.4,39.0
.turnin 11543 >>交任务: |cRXP_FRIENDLY_拒敌港外|r
step
.isOnQuest 11539
.goto Isle of Quel'Danas,49.4,40.0
.turnin 11539 >>交任务: |cRXP_FRIENDLY_占领港口|r
step
#label isleofquel
.isOnQuest 11540
.goto Isle of Quel'Danas,49.4,40.0
.turnin 11540 >>交任务: |cRXP_FRIENDLY_击溃晨锋部队|r
step
.itemcount 33102,1
>>这一步需要召唤一个幽灵之地和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.goto Ghostlands,70.4,67.8
.use 33102 >>用祖金之血接受任务
.accept 11178 >>接任务: |cRXP_LOOT_督军之血|r
.turnin 11178 >>交任务: |cRXP_FRIENDLY_督军之血|r
.accept 11163 >>接任务: |cRXP_LOOT_对不起，我是卧底|r
step
.isQuestTurnedIn 11178
.goto Ghostlands,70.6,68.2
.turnin 11163 >>交任务: |cRXP_FRIENDLY_对不起，我是卧底|r
step << Alliance
.isOnQuest 7141
.goto Alterac Mountains,40.6,79.8
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7141 >>交任务: |cRXP_FRIENDLY_奥特兰克的战斗|r
step << Alliance
.isQuestAvailable 8271
.goto Alterac Mountains,40.6,79.8
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 8271 >>交任务: |cRXP_FRIENDLY_雷矛英雄|r
step << Alliance
.isQuestAvailable 7169
.goto Alterac Mountains,39.6,81.2
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7169 >>交任务: |cRXP_FRIENDLY_卫兵的尊敬|r
step << Alliance
.isQuestAvailable 7170
.goto Alterac Mountains,39.6,81.2
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7170 >>交任务: |cRXP_FRIENDLY_赢得尊敬|r
step << Alliance
.isQuestAvailable 7171
.goto Alterac Mountains,39.6,81.2
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7171 >>交任务: |cRXP_FRIENDLY_传说的英雄|r
step << Alliance
.isQuestAvailable 7172
.goto Alterac Mountains,39.6,81.2
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7172 >>交任务: |cRXP_FRIENDLY_命令之眼|r
step << Horde
.isOnQuest 7142
.goto Alterac Mountains,63.0,60.0
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7142 >>交任务: |cRXP_FRIENDLY_为奥特兰克而战|r
step << Horde
.isQuestAvailable 8272
.goto Alterac Mountains,63.0,60.0
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 8272 >>交任务: |cRXP_FRIENDLY_霜狼英雄|r
step << Horde
.isQuestAvailable 7164
.goto Alterac Mountains,62.2,58.9
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7164 >>交任务: |cRXP_FRIENDLY_卫兵的尊敬|r
step << Horde
.isQuestAvailable 7165
.goto Alterac Mountains,62.2,58.9
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7165 >>交任务: |cRXP_FRIENDLY_赢得尊敬|r
step << Horde
.isQuestAvailable 7166
.goto Alterac Mountains,62.2,58.9
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7166 >>交任务: |cRXP_FRIENDLY_传说的英雄|r
step << Horde
.isQuestAvailable 7167
.goto Alterac Mountains,62.2,58.9
>>这一步需要召唤奥特兰克山脉和一个回到沙塔斯的法师入口才能有效，如果你没有这些入口，请跳过。
.turnin 7167 >>交任务: |cRXP_FRIENDLY_命令之眼|r
step
#completewith postav
.zoneskip Ghostlands,1
.zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
>>港口至沙塔斯。请勿使用炉缸 << !Shaman
>>沙塔斯港口或港口 << Shaman
step
#completewith postav
.zoneskip Alterac Mountains,1
.zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
>>港口至沙塔斯。请勿使用炉缸 << !Shaman
>>沙塔斯港口或港口 << Shaman
step
#completewith postav
.zoneskip Isle of Quel'Danas,1
.zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
>>港口至沙塔斯。请勿使用炉缸 << !Shaman
>>沙塔斯港口或港口 << Shaman
step
#sticky
#label postav
.zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
step << Horde
.isQuestTurnedIn 9928
.goto Nagrand,73.8,62.6
.accept 9934 >>接任务: |cRXP_LOOT_回到加拉达尔|r
step << Alliance
.isQuestTurnedIn 9932
.goto Nagrand,73.8,62.6
.accept 9933 >>接任务: |cRXP_LOOT_回到塔拉|r
step
.isOnQuest 10251
.goto Nagrand,51.8,56.8
.turnin 10251 >>交任务: |cRXP_FRIENDLY_主人的伟大设计？|r
step << Horde
.isOnQuest 9934
.goto Nagrand,55.4,37.6
.turnin 9934 >>交任务: |cRXP_FRIENDLY_回到加拉达尔|r
step << Horde
.isOnQuest 9937
.goto Nagrand,55.8,37.8
.turnin 9937 >>交任务: |cRXP_FRIENDLY_通缉：饥饿者杜恩|r
step << Alliance
.isOnQuest 11502
.goto Nagrand,55.8,73.6
.turnin 11502 >>交任务: |cRXP_FRIENDLY_保卫哈兰|r
step << Alliance
.isOnQuest 9933
.goto Nagrand,55.4,68.8
.turnin 9933 >>交任务: |cRXP_FRIENDLY_回到塔拉|r
step << Alliance
.isOnQuest 9938
.goto Nagrand,55.8,37.8
.turnin 9938 >>交任务: |cRXP_FRIENDLY_通缉：饥饿者杜恩|r
step << Alliance
.itemcount 24559,1
.goto Nagrand,55.4,68.8
.use 24559 >>使用库存中的黑血入侵计划接受任务
.accept 9871 >>接任务: |cRXP_LOOT_暗血入侵者|r
.turnin 9871 >>交任务: |cRXP_FRIENDLY_暗血入侵者|r
step << Alliance
.itemcount 25433,10
.goto Nagrand,54.8,70.8
.accept 10476 >>接任务: |cRXP_LOOT_强悍的敌人|r
.turnin 10476 >>交任务: |cRXP_FRIENDLY_强悍的敌人|r
step << Horde
.goto Nagrand,57.0,34.8
>>在小屋周围找到Drakia夫人
.unitscan Matron Drakia
.accept 9944 >>接任务: |cRXP_LOOT_失踪的玛格汉车队|r
step
.goto Nagrand,31.4,57.6
.reputation 933,neutral,<0,1
.itemcount 25416,10
.accept 9882 >>接任务: |cRXP_LOOT_偷盗贼的东西......能算偷么？|r
.turnin 9882 >>交任务: |cRXP_FRIENDLY_偷盗贼的东西......能算偷么？|r
step
.goto Nagrand,31.6,56.8
.reputation 933,neutral,<0,1
.itemcount 25463,3
>>交任务: |cRXP_FRIENDLY_象牙生意|r until you are friendly. Should be 9 turnins total.
.accept 9914 >>接任务: |cRXP_LOOT_象牙生意|r
.turnin 9914 >>交任务: |cRXP_FRIENDLY_象牙生意|r
step
.goto Nagrand,31.4,57.6
.reputation 933,friendly,<0,1
.itemcount 25433,10
.accept 9893 >>接任务: |cRXP_LOOT_黑曜石作战念珠|r
.turnin 9893 >>交任务: |cRXP_FRIENDLY_黑曜石作战念珠|r
step << Horde
>>如果由联盟控制，请跳过此步骤。
.itemcount 26042,10
.goto Nagrand,41.2,44.3
.accept 10074 >>接任务: |cRXP_LOOT_沃舒古水晶尘|r
.turnin 10074 >>交任务: |cRXP_FRIENDLY_沃舒古水晶尘|r
step << Horde
.isOnQuest 10010
.goto Nagrand,27.4,43.0
.turnin 10010 >>交任务: |cRXP_FRIENDLY_就这么简单？|r
step << Horde
.isOnQuest 10649
.goto Nagrand,27.4,43.0
.turnin 10649 >>交任务: |cRXP_FRIENDLY_恶魔名册|r
step << Horde
.isOnQuest 9944
.goto Nagrand,32.2,36.2
.turnin 9944 >>交任务: |cRXP_FRIENDLY_失踪的玛格汉车队|r
step << Horde
.isQuestTurnedIn 9865
.goto Nagrand,32.4,36.0
.accept 9866 >>接任务: |cRXP_LOOT_他要游历世界......|r
step << Horde
.isOnQuest 11503
.goto Nagrand,52.8,36.0
.turnin 11503 >>交任务: |cRXP_FRIENDLY_新仇旧怨|r
step << Horde
.isOnQuest 9866
.goto Nagrand,54.8,39.8
.turnin 9866 >>交任务: |cRXP_FRIENDLY_他要游历世界......|r
step << Horde
.itemcount 24558,1
.goto Nagrand,55.4,37.6
.use 24558 >>使用库存中的黑血入侵计划接受任务
.accept 9872 >>接任务: |cRXP_LOOT_暗血入侵者|r
.turnin 9872 >>交任务: |cRXP_FRIENDLY_暗血入侵者|r
step << Horde
.isQuestAvailable 9870
.goto Nagrand,55.6,37.8
>>在镇上找到元素师Yal'hah
.unitscan Elementalist Yal'hah
.accept 9870 >>接任务: |cRXP_LOOT_元素王座|r
step << Horde
.itemcount 25433,10
.goto Nagrand,55.8,37.8
.accept 10479 >>接任务: |cRXP_LOOT_证明你的力量|r
.turnin 10479 >>交任务: |cRXP_FRIENDLY_证明你的力量|r
step << Horde
.isOnQuest 9870
.goto Nagrand,60.6,22.2
.turnin 9870 >>交任务: |cRXP_FRIENDLY_元素王座|r
step << Horde
.isOnQuest 9853
.goto Nagrand,61.2,22.2
.turnin 9853 >>交任务: |cRXP_FRIENDLY_侵占者古罗克|r
step << Horde
.itemcount 24504,1
.goto Nagrand,60.6,22.2
.use 24504 >>使用库存中的啸风接受任务
.accept 9861 >>接任务: |cRXP_LOOT_呼嚎之风|r
.turnin 9861 >>交任务: |cRXP_FRIENDLY_呼嚎之风|r
step << Alliance
.isOnQuest 10010
.goto Nagrand,27.4,43.0
.turnin 10010 >>交任务: |cRXP_FRIENDLY_就这么简单？|r
step << Alliance
.isOnQuest 10649
.goto Nagrand,24.7,43.0
.turnin 10649 >>交任务: |cRXP_FRIENDLY_恶魔名册|r
step << Alliance
>>如果它被部落控制，跳过这一步。
.itemcount 26043,10
.goto Nagrand,41.2,44.2
.accept 10076 >>接任务: |cRXP_LOOT_沃舒古水晶尘|r
.turnin 10076 >>交任务: |cRXP_FRIENDLY_沃舒古水晶尘|r
step << Alliance
.itemcount 24504,1
.goto Nagrand,60.6,22.2
.use 24504 >>使用库存中的啸风接受任务
.accept 9861 >>接任务: |cRXP_LOOT_呼嚎之风|r
.turnin 9861 >>交任务: |cRXP_FRIENDLY_呼嚎之风|r
step << Alliance
.isOnQuest 9853
.goto Nagrand,61.2,22.2
.turnin 9853 >>交任务: |cRXP_FRIENDLY_侵占者古罗克|r
step
.isOnQuest 9977
.goto Nagrand,42.8,20.6
.turnin 9977 >>交任务: |cRXP_FRIENDLY_鲜血竞技场：终极挑战|r
step
.isOnQuest 9697
.goto Zangarmarsh,23.2,66.2
>>如果她不在这里，可能有人最近提交了一个任务，导致她消失。如果这个地方人满为患，不要等她，跳过这一步。
.turnin 9697 >>交任务: |cRXP_FRIENDLY_观察者莉萨奥|r
step
.isQuestAvailable 9697
.goto Zangarmarsh,23.2,66.2
.accept 9701 >>接任务: |cRXP_LOOT_观察孢子人|r
step
.itemcount 24291,6
.goto Zangarmarsh,19.0,62.6
.accept 9743 >>接任务: |cRXP_LOOT_天敌|r
.turnin 9743 >>交任务: |cRXP_FRIENDLY_天敌|r
step
.itemcount 24290,10
.goto Zangarmarsh,19.0,62.6
.accept 9739 >>接任务: |cRXP_LOOT_孢子人的困境|r
.turnin 9739 >>交任务: |cRXP_FRIENDLY_孢子人的困境|r
step
.isQuestAvailable 9919
.goto Zangarmarsh,19.0,63.6
.reputation 970,neutral,<0,1 >>你必须对斯波雷加保持中立才能接受这个任务
.accept 9919 >>接任务: |cRXP_LOOT_孢子村|r
step
.isOnQuest 9701
.goto Zangarmarsh,15.3,61.9
>>探索该地区。
.complete 9701,1
.complete 9701,2
step
.isOnQuest 9919
.goto Zangarmarsh,19.6,52.0
.turnin 9919 >>交任务: |cRXP_FRIENDLY_孢子村|r
step
#completewith next
.goto Zangarmarsh,19.0,62.6
.reputation 970,friendly >>完成转向沼泽主卷须或成熟孢子囊，直到你友好。
step
.goto Zangarmarsh,19.2,49.4
.reputation 970,friendly,<0,1
.itemcount 24245,10
.accept 9808 >>接任务: |cRXP_LOOT_亮顶蘑菇|r
.turnin 9808 >>交任务: |cRXP_FRIENDLY_亮顶蘑菇|r
step
.itemcount 24246,5
.goto Zangarmarsh,19.5,50.1
.reputation 970,friendly,<0,1
.accept 9715 >>接任务: |cRXP_LOOT_我要红色木槿！|r
.turnin 9715 >>交任务: |cRXP_FRIENDLY_我要红色木槿！|r
step
.itemcount 24449,6
.goto Zangarmarsh,19.2,49.4
.reputation 970,friendly,<0,1
.accept 9806 >>接任务: |cRXP_LOOT_成熟的孢子|r
.turnin 9806 >>交任务: |cRXP_FRIENDLY_成熟的孢子|r
step
#label sporenomore
.itemcount 25459,1
.goto Zangarmarsh,23.2,66.2
.use 25459 >>使用库存中的“数”Ungula的下颌骨来接受任务
.accept 9911 >>接任务: |cRXP_LOOT_沼泽中的伯爵|r
.turnin 9911 >>交任务: |cRXP_FRIENDLY_沼泽中的伯爵|r
step
.isOnQuest 9701
.goto Zangarmarsh,23.2,66.2
.turnin 9701 >>交任务: |cRXP_FRIENDLY_观察孢子人|r
step << Horde
.isOnQuest 9775
.goto Zangarmarsh,30.6,50.8
>>他在小屋的二楼
.turnin 9775 >>交任务: |cRXP_FRIENDLY_向暗影猎手德恩加报到|r
step << Horde
.isQuestAvailable 9795
.goto Zangarmarsh,30.6,50.8
.accept 9795 >>接任务: |cRXP_LOOT_食人魔的威胁|r
step << skip 
.isQuestTurnedIn 9968
.goto Terokkar Forest,44.4,26.2
.turnin 9957 >>交任务: |cRXP_FRIENDLY_塞纳里奥树林出事了？|r
step << Alliance
.isQuestAvailable 9794
.goto Zangarmarsh,41.2,28.6
.accept 9794 >>接任务: |cRXP_LOOT_禁止拆阅|r
step
.isOnQuest 9738
.goto Zangarmarsh,52.2,36.0
>>进入湖中央的水下水库
.turnin 9738 >>交任务: |cRXP_FRIENDLY_失踪的同伴|r
step
.isOnQuest 9763
.goto Zangarmarsh,52.2,36.0
.turnin 9763 >>交任务: |cRXP_FRIENDLY_督军的末日|r
step << Alliance
.isOnQuest 9794
.goto Blade's Edge Mountains,36.0,67.8
.turnin 9794 >>交任务: |cRXP_FRIENDLY_禁止拆阅|r
step << Alliance
.itemcount 29443,11
.goto Blade's Edge Mountains,37.4,64.6
.accept 10511 >>接任务: |cRXP_LOOT_奇怪的美酒|r
.turnin 10511 >>交任务: |cRXP_FRIENDLY_奇怪的美酒|r
step << Alliance
.isQuestAvailable 10581
.goto Blade's Edge Mountains,36.6,66.4
.accept 10580 >>接任务: |cRXP_LOOT_侏儒都去哪里了？|r
step
.isOnQuest 11000
.goto Blade's Edge Mountains,55.4,44.9
.turnin 11000 >>交任务: |cRXP_FRIENDLY_磨魂者|r
step
.isQuestTurnedIn 11000
.goto Blade's Edge Mountains,55.4,44.9
.accept 11009 >>接任务: |cRXP_LOOT_食人魔的天堂|r
step << Horde
.isOnQuest 10742
.goto Blade's Edge Mountains,51.8,58.4
.turnin 10742 >>交任务: |cRXP_FRIENDLY_摊牌|r
step << Alliance
.isOnQuest 10806
.goto Blade's Edge Mountains,53.2,41.2
.turnin 10806 >>交任务: |cRXP_FRIENDLY_摊牌|r
step << Horde
.isOnQuest 9795
.goto Blade's Edge Mountains,51.8,57.8
.turnin 9795 >>交任务: |cRXP_FRIENDLY_食人魔的威胁|r
step
.isOnQuest 11009
.goto Blade's Edge Mountains,28.7,57.4
.turnin 11009 >>交任务: |cRXP_FRIENDLY_食人魔的天堂|r
step
.itemcount 32569,5
.goto Blade's Edge Mountains,28.8,57.4
.accept 11025 >>接任务: |cRXP_LOOT_埃匹希斯水晶|r
.turnin 11025 >>交任务: |cRXP_FRIENDLY_埃匹希斯水晶|r
step
.itemcount 32598,1
.goto Blade's Edge Mountains,28.4,57.6
.accept 11030 >>接任务: |cRXP_LOOT_未来的天空卫队游侠|r
.turnin 11030 >>交任务: |cRXP_FRIENDLY_未来的天空卫队游侠|r
step
.itemcount 32601,1
.goto Blade's Edge Mountains,28.4,57.6
.accept 11061 >>接任务: |cRXP_LOOT_父亲的职责|r
.turnin 11061 >>交任务: |cRXP_FRIENDLY_父亲的职责|r
step << Alliance
.isOnQuest 10580
.goto Blade's Edge Mountains,55.0,72.8
.turnin 10580 >>交任务: |cRXP_FRIENDLY_侏儒都去哪里了？|r
step << Alliance
.isQuestTurnedIn 10580
.goto Blade's Edge Mountains,55.0,72.8
.accept 10581 >>接任务: |cRXP_LOOT_废话连篇|r
step << Alliance
.isOnQuest 10581
.goto Blade's Edge Mountains,60.4,69.0
.turnin 10581 >>交任务: |cRXP_FRIENDLY_废话连篇|r
step
.itemcount 31384,1
.goto Blade's Edge Mountains,62.6,40.2
.use 31384
.accept 10810 >>接任务: |cRXP_LOOT_损坏的面具|r
.turnin 10810 >>交任务: |cRXP_FRIENDLY_损坏的面具|r
.accept 10812 >>接任务: |cRXP_LOOT_神秘的面具|r
step
.itemcount 31489,1
.goto Blade's Edge Mountains,62.0,39.4
.use 31489 >>使用你库存中的狮鹫之珠接受任务
.accept 10825 >>接任务: |cRXP_LOOT_神秘的宝珠|r
.turnin 10825 >>交任务: |cRXP_FRIENDLY_神秘的宝珠|r
step
.isQuestAvailable 10682
.goto Blade's Edge Mountains,62.0,39.4
.accept 10682 >>接任务: |cRXP_LOOT_该谈判了......|r
step
.isOnQuest 10682
.goto Blade's Edge Mountains,62.7,44.0,80,0
.goto Blade's Edge Mountains,58.5,39.4,80,0
.goto Blade's Edge Mountains,62.0,32.1
.line Blade's Edge Mountains,63.0,45.8,58.4,38.6,63.0,27.2
.unitscan Overseer Nuaar
>>上上下下找监督努尔，然后和他说话
.skipgossip
.complete 10682,1
step
.isOnQuest 10682
.goto Blade's Edge Mountains,62.0,39.4
.turnin 10682 >>交任务: |cRXP_FRIENDLY_该谈判了......|r
step
.isOnQuest 10812
.goto Blade's Edge Mountains,61.6,38.4
>>任务给予者在城市里绕着我走了一圈。
.turnin 10812 >>交任务: |cRXP_FRIENDLY_神秘的面具|r
step
.isQuestTurnedIn 10819
.goto Blade's Edge Mountains,61.6,38.4
.accept 10819 >>接任务: |cRXP_LOOT_魔誓防毒面具|r
step
.isOnQuest 10819
.goto Blade's Edge Mountains,73.3,40.1
.use 31366 >>戴上恶棍防毒面具。
.turnin 10819 >>交任务: |cRXP_FRIENDLY_魔誓防毒面具|r
step << Horde
.itemcount 31670,3
.goto Blade's Edge Mountains,76.0,60.2
.accept 10860 >>接任务: |cRXP_LOOT_莫克纳萨的美味|r
.turnin 10860 >>交任务: |cRXP_FRIENDLY_莫克纳萨的美味|r

step
.isQuestAvailable 10317
.goto Netherstorm,34.6,37.8
.accept 10317 >>接任务: |cRXP_LOOT_对付工头|r
step
.isOnQuest 10317
.goto Netherstorm,26.4,42.2
.turnin 10317 >>交任务: |cRXP_FRIENDLY_对付工头|r
step
.isOnQuest 9631
.goto Netherstorm,32.2,63.6
.turnin 9631 >>交任务: |cRXP_FRIENDLY_同事的帮助|r
step
.isQuestTurnedIn 10186
.goto Netherstorm,32.7,64.9
.accept 10225 >>接任务: |cRXP_LOOT_向主工程师汇报|r
step
.isOnQuest 10225
.goto Netherstorm,32.4,66.6
.turnin 10225 >>交任务: |cRXP_FRIENDLY_向主工程师汇报|r
step
#aldor
.isQuestTurnedIn 10407
.goto Netherstorm,32.0,64.2
.accept 10410 >>接任务: |cRXP_LOOT_伊沙娜的帮助|r
step
#scryer
.isQuestTurnedIn 10508
.goto Netherstorm,32.0,64.0
.accept 10509 >>接任务: |cRXP_LOOT_无上的荣耀|r
step
.isQuestTurnedIn 10248
.goto Netherstorm,37.2,63.8
.accept 10249 >>接任务: |cRXP_LOOT_去找火箭主管！|r
step
.isOnQuest 10249
.goto Netherstorm,32.6,64.8
.turnin 10249 >>交任务: |cRXP_FRIENDLY_去找火箭主管！|r
step
.isQuestTurnedIn 10312
.goto Netherstorm,57.4,86.2
.accept 10316 >>接任务: |cRXP_LOOT_寻找证据|r
step
>>进入塔内，到达塔顶。
.itemcount 28769,1
.goto Netherstorm,58.2,86.4
.turnin 10257 >>交任务: |cRXP_FRIENDLY_夺回钥石|r
step
.isQuestAvailable 10334
.goto Netherstorm,57.6,85.0
.accept 10334 >>接任务: |cRXP_LOOT_贝希的铃铛|r
step
.itemcount 29233,1
.goto Netherstorm,56.9,86.8
.use 29233 >>使用Dathric之刃接受任务
.accept 10182 >>接任务: |cRXP_LOOT_战斗法师达斯利克|r
step
.itemcount 29235,1
.goto Netherstorm,56.4,87.8
.use 29235 >>使用Luminrath的斗篷接受任务
.accept 10306 >>接任务: |cRXP_LOOT_咒术师鲁米拉斯|r
step
.itemcount 29236,1
.goto Netherstorm,55.5,87.0
.use 29236 >>使用科林的帽子接受任务
.accept 10307 >>接任务: |cRXP_LOOT_考利恩·霜纹|r
step
.itemcount 29234,1
.goto Netherstorm,55.5,86.5
.use 29234 >>使用Belmara的Tome接受任务
.accept 10305 >>接任务: |cRXP_LOOT_防御法师贝尔玛拉|r
step
.isOnQuest 10182
.goto Netherstorm,56.9,86.8
.use 28351 >>使用任务物品将拿督之刃放置在市政厅内的武器架上
.complete 10182,1
step
.isOnQuest 10307
.goto Netherstorm,55.5,87.0
.use 28353 >>使用任务物品将科琳的帽子放在房间的搁脚柜内
.complete 10307,1
step
.isOnQuest 10305
.goto Netherstorm,55.5,86.5
.use 28336 >>使用任务物品将Belmara的Tome放在她家的书架上
.complete 10305,1
step
.isOnQuest 10306
.goto Netherstorm,56.4,87.8
.use 28352 >>使用任务物品将Luminrath的披风放置在他家的梳妆台上
.complete 10306,1
step
.isOnQuest 10307
.goto Netherstorm,57.4,86.2
.turnin 10307 >>交任务: |cRXP_FRIENDLY_考利恩·霜纹|r
step
.isOnQuest 10182
.goto Netherstorm,57.4,86.2
.turnin 10182 >>交任务: |cRXP_FRIENDLY_战斗法师达斯利克|r
step
.isOnQuest 10305
.goto Netherstorm,57.4,86.2
.turnin 10305 >>交任务: |cRXP_FRIENDLY_防御法师贝尔玛拉|r
step
.isOnQuest 10306
.goto Netherstorm,57.4,86.2
.turnin 10306 >>交任务: |cRXP_FRIENDLY_咒术师鲁米拉斯|r
step
.isOnQuest 10334
.goto Netherstorm,59.2,78.8
.turnin 10334 >>交任务: |cRXP_FRIENDLY_贝希的铃铛|r
step
.isOnQuest 10316
.goto Netherstorm,60.3,78.0
.turnin 10316 >>交任务: |cRXP_FRIENDLY_寻找证据|r
step
.isQuestTurnedIn 10418
.goto Netherstorm,46.4,56.4
.accept 10423 >>接任务: |cRXP_LOOT_前往风暴尖塔|r
step
.isQuestTurnedIn 10433
.goto Netherstorm,46.4,56.4
.accept 10434 >>接任务: |cRXP_LOOT_两个同伴|r
step
>>点击收发器吊舱
.isOnQuest 10408
.goto Netherstorm,56.8,38.6
.turnin 10408 >>交任务: |cRXP_FRIENDLY_节点之王萨哈达尔|r
step
.itemcount 29738,1
.goto Netherstorm,59.2,32.4
.use 29738 >>使用库存中的虚空恐怖软泥小瓶接受任务
.accept 10413 >>接任务: |cRXP_LOOT_虚空的软泥|r
.turnin 10413 >>交任务: |cRXP_FRIENDLY_虚空的软泥|r
step
.isOnQuest 10439
.goto Netherstorm,60.0,31.8
.turnin 10439 >>交任务: |cRXP_FRIENDLY_诸界吞噬者迪门修斯|r
step
.isOnQuest 10423
.goto Netherstorm,43.6,35.0
.turnin 10423 >>交任务: |cRXP_FRIENDLY_前往风暴尖塔|r
step
.isOnQuest 10434
.goto Netherstorm,44.8,36.6
.turnin 10434 >>交任务: |cRXP_FRIENDLY_两个同伴|r
step
.isQuestTurnedIn 10276
.goto Netherstorm,45.8,36.0
>>接受任务后，穿过左边的紫色圆圈传送带传送到沙塔斯
.accept 10280 >>接任务: |cRXP_LOOT_送往沙塔斯的特殊货物|r
step
#completewith shat
.zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
step
.isOnQuest 10280
.goto Shattrath City,54.0,44.6
.turnin 102080 >>交任务: |cRXP_FRIENDLY_送往沙塔斯的特殊货物|r
step
#aldor
.isOnQuest 10410
.goto Shattrath City,24.2,29.8
.turnin 10410 >>交任务: |cRXP_FRIENDLY_伊沙娜的帮助|r
step
#scryer
.isOnQuest 10509
.goto Shattrath City,42.6,91.6
.turnin 10509 >>交任务: |cRXP_FRIENDLY_无上的荣耀|r
step
#label shat
.isOnQuest 11024
.goto Shattrath City,52.6,20.8
.turnin 11024 >>交任务: |cRXP_FRIENDLY_贫民窟的盟友|r
step
.goto Shattrath City,74.7,31.5
.reputation 989,revered,<0,1 >>前往: |cRXP_PICK_塔纳利斯|r
.zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
step
.zoneskip Tanaris
.goto Tanaris,66.1,49.7
+ 获得时间之穴的召唤。如果你没有指南，指南已经完成了，如果你需要跑去那里，就不值得花时间了。去诺森德！
step
.isOnQuest 10445
.goto Tanaris,58.3,54.8
>>阿拉兹莫杜和索里多米逆时针在房间里巡逻，四处跑，直到你找到他们。
.unitscan Soridormi
.turnin 10445 >>交任务: |cRXP_FRIENDLY_永恒水瓶|r
step
.goto Tanaris,58.3,54.8
.reputation 989,friendly,<0,1
>>阿拉兹莫杜和索里多米逆时针在房间里巡逻，四处跑，直到你找到他们。接受你选择的戒指任务。这不是自动进行的，以防止拾取错误的戒指。如果没有友情戒指任务可用，请跳过此步骤。
.unitscan Soridormi
.dailyturnin 10462,10461,10460,10463 >>Turn in A Ring Pledge
step
.goto Tanaris,58.3,54.8
.reputation 989,honored,<0,1
>>阿拉兹莫杜和索里多米逆时针在房间里巡逻，四处跑，直到你找到他们。
.unitscan Soridormi
.daily 10464,10465,10466,10467 >>接任务: |cRXP_WARN_先知的誓约|r
.dailyturnin 10464,10465,10466,10467 >>Turn in a Vow Ring Quest
step
.goto Tanaris,58.3,54.8
.reputation 989,revered,<0,1
>>阿拉兹莫杜和索里多米逆时针在房间里巡逻，四处跑，直到你找到他们。
.unitscan Soridormi
.daily 10468,10469,10470,10471 >>接任务: |cRXP_WARN_先知的誓言|r
.dailyturnin 10468,10469,10470,10471 >>Turn in an Oath Ring Quest
step
.goto Tanaris,58.3,54.8
.reputation 989,exalted,<0,1
>>阿拉兹莫杜和索里多米逆时针在房间里巡逻，四处跑，直到你找到他们。
.unitscan Soridormi
.daily 10472,10473,10474,10475 >>接任务: |cRXP_WARN_先知的盟约|r
.dailyturnin 10472,10473,10474,10475 >>Turn in an Covenant Ring Quest
step
.isOnQuest 10297
.goto Tanaris,57.6,62.7
>>进入黑沼泽并完成任务
.turnin 10297 >>交任务: |cRXP_FRIENDLY_开启黑暗之门|r
]])

