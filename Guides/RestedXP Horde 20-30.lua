local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde !Warrior !Shaman
#name 20-23 石爪山脉 / 贫瘠之地
#version 1
#group RestedXP部落1-30
#next 23-27 希尔斯布莱德丘陵 / 灰谷
#xprate <1.5

step << Mage
    #completewith Horthus
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,50.93,67.97,30,0
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,45.78,57.19,20,0
    .goto Orgrimmar,45.44,56.55,10 >>前往|cRXP_FRIENDLY_Horthus|r
    .itemcount 17031,<2
    .train 3567,1 << Troll Mage
step << Troll Mage
    #completewith Horthus
    .goto Orgrimmar,39.53,75.82,30,0
    .goto Orgrimmar,42.68,62.42,30,0
    .goto Orgrimmar,45.57,57.46,20,0
    .goto Orgrimmar,45.44,56.55,10 >>前往|cRXP_FRIENDLY_Horthus|r
    .train 3567,3
    .zoneskip Durotar
step << Mage
    #label Horthus
    .goto Orgrimmar,45.44,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍苏斯|r
    >>|cRXP_BUY_从他那里购买|r|T134419:0|t[传送符文]|cRXP_Buy_|r
    .collect 17031,2,496,1 --Rune of Teleportation (2)
    .target Horthus
step << Troll Mage
    #completewith MeetingTW
    #label MageRune1
    .goto Orgrimmar,41.83,61.66,6,0
    .goto Orgrimmar,42.01,60.77,6,0
    .goto Orgrimmar,41.73,62.41,8,0
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>向上爬塔，然后前往Grommash Hold
    .zoneskip Durotar
    .isOnQuest 9813
step << !Troll Mage
    #completewith OrgFP
    #label MageRune1
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>向上行进至|cRXP_FRIENDLY_Doras|r
    .zoneskip Durotar
step << !Shaman !Warrior !Troll !Orc
    #completewith OrgFP
    #requires MageRune1 << Mage
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,51.01,68.03,30,0
    .goto Orgrimmar,49.72,66.08,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>向上行进至|cRXP_FRIENDLY_Doras|r
step << !Shaman !Warrior !Troll !Orc
    #label OrgFP
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    .fp Orgrimmar >>获取Orgrimmar飞行路线
    .target Doras
step << !Shaman !Warrior
    #completewith MeetingTW
    #label ValleyOW
    #requires MageRune1 << Troll Mage
    .goto Orgrimmar,49.59,94.74,30,0 << Orc/Troll
    .goto Orgrimmar,49.42,90.90,30,0 << Orc/Troll
    .goto Orgrimmar,52.26,88.65,30,0 << Orc/Troll
    .goto Orgrimmar,42.63,61.99,15,0 << Orc/Troll
    .goto Orgrimmar,41.83,61.66,6,0 << Orc/Troll
    .goto Orgrimmar,42.01,60.77,6,0 << Orc/Troll
    .goto Orgrimmar,41.73,62.41,8,0 << Orc/Troll
    .goto Orgrimmar,41.91,64.30,15,0 << !Orc !Troll
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>向上爬塔，然后前往Grommash Hold << Orc/Troll
    .goto Orgrimmar,39.50,37.17,20 >>穿过大桥，然后前往格罗玛什码头 << !Orc !Troll
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
step << !Shaman !Warrior
    #label MeetingTW
--   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r, Dawnsinger
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 9626 >>交任务: |cRXP_FRIENDLY_觐见酋长|r << BloodElf
    .accept 9627 >>接任务: |cRXP_LOOT_部落的盟约|r << BloodElf
    .turnin 9813 >>交任务: |cRXP_FRIENDLY_觐见酋长|r << !BloodElf
    .goto Orgrimmar,31.62,37.82
--  .goto Orgrimmar,31.62,38.39 << BloodElf
    .target Thrall
--   .target Ambassador Dawnsinger << BloodElf
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派雷亚诺|r
    .train 879 >>训练你的职业技能
    .target Master Pyreanor
step << Shaman
    #completewith OrgTrain
    .goto Orgrimmar,42.63,61.99,15,0 << Orc/Troll
    .goto Orgrimmar,41.83,61.66,6,0 << Orc/Troll
    .goto Orgrimmar,42.01,60.77,6,0 << Orc/Troll
    .goto Orgrimmar,41.73,62.41,8,0 << Orc/Troll
    .goto Orgrimmar,41.91,64.30,15,0 << !Orc !Troll
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>前往|cRXP_FRIENDLY_Kardris|r << Orc/Troll
step << Shaman
    #label OrgTrain
    .goto Orgrimmar,38.81,36.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8498 >>训练你的职业技能 << wotlk
    .train 6363 >>训练你的职业技能 << tbc
    .target Kardris Dreamseeker
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>接任务: |cRXP_WARN_石爪之灵|r
    .goto Orgrimmar,38.93,38.39
    .target Zor Lonetree
step << Troll Mage
    #completewith OrgTrain
    .cast 3567 >>演员[电视台：奥格瑞玛]，然后下楼
    .itemcount 17031,2
step << Mage/Priest/Rogue/Warlock
    #completewith OrgTrain
    .goto Orgrimmar,42.30,37.44,20,0
    .goto Orgrimmar,40.96,45.16,20,0
    .goto Orgrimmar,40.01,51.88,20,0 << Rogue/Warlock
    .goto Orgrimmar,42.29,56.98,20,0 << Rogue/Warlock
    .goto Orgrimmar,43.82,56.28,20,0 << Rogue/Warlock
    .goto Orgrimmar,43.61,53.40,15,0 << Rogue
    .goto Orgrimmar,38.66,56.48,20,0 << Mage/Priest
    .goto Orgrimmar,41.17,67.04,20,0 << Mage/Priest
    .goto Orgrimmar,38.78,77.83,15,0 << Mage
    .goto Orgrimmar,38.72,83.38,12,0 << Mage
    .goto Orgrimmar,38.36,85.56,15 >>前往|cRXP_FRIENDLY_Pephredo|r << Mage
    .goto Orgrimmar,35.59,87.80,15 >>前往|cRXP_FRIENDLY_Ur'kyo|r << Priest
    .goto Orgrimmar,43.05,53.73,10 >>向|cRXP_FRIENDLY_Shenthul|r行进 << Rogue
    .goto Orgrimmar,48.25,45.27,15 >>前往|cRXP_FRIENDLY_Gan'rul|r << Warlock
    .isQuestTurnedIn 9626 << BloodElf
    .isQuestTurnedIn 9813 << !BloodElf
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮菲瑞多|r
    .train 1953 >>训练你的职业技能
    .target Pephredo
step << Priest
    #label OrgTrain
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔库|r
    .train 15237 >>训练你的职业技能
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .turnin 10794 >>交任务: |cRXP_FRIENDLY_碎手盗贼|r
    .accept 2460 >>接任务: |cRXP_WARN_碎手军礼|r
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|cRXP_WARN_目标|cRXP_FRIENDLY_Shenthul|r向他致敬|r
    .complete 2460,1 --Shattered Salute Performed
    .target Shenthul
	.emote salute,3401
step << Rogue
    #label OrgTrain
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .turnin 2460 >>交任务: |cRXP_FRIENDLY_碎手军礼|r
    .accept 2458 >>接任务: |cRXP_LOOT_卧底密探|r
    .target Shenthul
step << Warlock
    #label OrgTrain
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗达尔|r
    .train 1094 >>训练你的职业技能
    .target Grol'dar
step << Warlock
    .goto Orgrimmar,48.25,45.27
    .abandon 10605 >>放弃卡伦丁传票
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r, |cRXP_FRIENDLY_卡祖尔|r
    .accept 1507 >>接任务: |cRXP_WARN_噬魂者|r
    .goto Orgrimmar,48.25,45.27
    .turnin 1507 >>交任务: |cRXP_FRIENDLY_噬魂者|r
    .accept 1508 >>接任务: |cRXP_LOOT_盲眼卡祖尔|r
    .accept 65601 >>接任务: |cRXP_LOOT_要爱就会受伤害|r
    .goto Orgrimmar,47.05,46.43
    .target Gan'rul Bloodeye
    .target Cazul
step << Warlock
    #completewith next
    .goto Orgrimmar,45.37,51.02,15,0
    .goto Orgrimmar,44.07,53.50,15,0
    .goto Orgrimmar,43.82,56.28,20,0
    .goto Orgrimmar,39.24,54.35,20,0
    .goto Orgrimmar,38.14,60.48,10,0
    .goto Orgrimmar,37.04,59.45,10 >>前往|cRXP_FRIENDLY_Zankaja|r
step << Warlock
    .goto Orgrimmar,37.04,59.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞卡沙|r
    .turnin 1508 >>交任务: |cRXP_FRIENDLY_盲眼卡祖尔|r
    .accept 1509 >>接任务: |cRXP_LOOT_多格兰的消息|r
    .target Zankaja
step << Warlock
    #completewith next
    .goto Orgrimmar,42.01,63.34,30,0
    .goto Orgrimmar,52.99,57.59,30,0
    .goto Orgrimmar,55.88,56.81,30,0
    .goto Orgrimmar,61.49,50.55,15,0
    .goto Orgrimmar,63.65,49.93,15 >>向|cRXP_FRIENDLY_Magar|r行进
step << Warlock
    .goto Orgrimmar,63.65,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛加尔|r
    .turnin 65601 >>交任务: |cRXP_FRIENDLY_要爱就会受伤害|r
    .accept 65610 >>接任务: |cRXP_LOOT_希望你还在|r
    .target Magar
step << Mage
    #completewith next
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>上楼前往|cRXP_FRIENDLY_Thuul|r
step << Mage
    #label OrgTrain
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索乌|r
    .train 3567 >>火车|T135759:0|t[电传：Orgrimar]
    .money <0.2000
    .target Thuul
step << Hunter/Warrior
    #completewith OrgTrain
    .goto Orgrimmar,63.08,39.25,40,0
    .goto Orgrimmar,64.31,38.12,30,0
    .goto Orgrimmar,66.07,40.04,30,0
    .goto Orgrimmar,76.76,33.04,30,0 << Warrior
    .goto Orgrimmar,79.13,32.80,30,0 << Warrior
    .goto Orgrimmar,80.39,32.38,20 >>前往|cRXP_FRIENDLY_Sorek|r << Warrior
    .goto Orgrimmar,72.25,21.42,30,0 << Hunter
    .goto Orgrimmar,67.60,14.89,15,0 << Hunter
    .goto Orgrimmar,66.05,18.52,20 >>前往|cRXP_FRIENDLY_Ormak|r << Hunter
    .train 580,3 << Orc Hunter/Orc Warrior
    .train 6653,3 << Orc Hunter/Orc Warrior
    .train 6654,3 << Orc Hunter/Orc Warrior
    .train 64658,3 << Orc Hunter/Orc Warrior
step << !Warlock Orc wotlk
    #completewith next
    .goto Orgrimmar,63.08,39.25,40,0 << !Warrior
    .goto Orgrimmar,64.31,38.12,30,0 << !Warrior
    .goto Orgrimmar,66.07,40.04,30,0 << !Warrior
    .goto Orgrimmar,76.33,32.64,30,0 << Warrior
    .goto Orgrimmar,72.16,26.66,30,0 << Warrior
    .goto Orgrimmar,72.25,21.42,30,0
    .goto Orgrimmar,69.41,13.11,20 >>前往|cRXP_FRIENDLY_Kildar|r
    .money <4.5
    .skill riding,75,1
step << !Warlock Orc wotlk
    .goto Orgrimmar,69.41,13.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r
    .skill riding,75 >>火车|T136103:0|t（学徒骑马）
    .target Kildar
    .money <4.5
    .skill riding,75,1
step << !Warlock Orc wotlk
    .goto Orgrimmar,69.38,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥古纳罗|r
    +|cRXP_BUY_从他那里买任何你喜欢的|r|T132224:0|t[Wolf]|cRXP_Buy_|r
	.target Ogunaro Wolfrunner
    .itemcount 1132,<1 --Horn of the Timber Wolf
    .itemcount 5665,<1 --Horn of the Dire Wolf
    .itemcount 5668,<1 --Horn of the Brown Wolf
    .itemcount 46099,<1 --Horn of the Black Wolf
    .money <0.9
    .skill riding,<75,1
step << !Warlock Orc wotlk
    .cast 55884 >>使用|T132224:0|t[木狼之角]学习
    .use 1132
    .itemcount 1132,1
    .skill riding,75,1
step << !Warlock Orc wotlk
    .cast 55884 >>使用|T132266:0|t[恶狼之角]学习
    .use 5665
    .itemcount 5665,1
    .skill riding,75,1
step << !Warlock Orc wotlk
    .cast 55884 >>使用|T132224:0|t[褐狼之角]学习
    .use 5668
    .itemcount 5668,1
    .skill riding,75,1
step << !Warlock Orc wotlk
    .cast 55884 >>使用|T132224:0|t[黑狼之角]学习
    .use 46099
    .itemcount 46099,1
    .skill riding,75,1
step << Orc wotlk !Warlock
    #completewith OrgTrain
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132224:0|t[Timber Wolf]|cRXP_WARN_拖动到动作栏中|r
    .cast 580 >>安装您的|T132224:0|t[木狼]
    .train 580,3
    .zoneskip Orgrimmar,1
step << Orc wotlk !Warlock
    #completewith OrgTrain
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132266:0|t[Dire Wolf]|cRXP_WARN_拖动到动作栏中|r
    .cast 6653 >>安装您的|T132266:0|t[Dire Wolf]
    .train 6653,3
    .zoneskip Orgrimmar,1
step << Orc wotlk !Warlock
    #completewith OrgTrain
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132224:0|t[Brown Wolf]|cRXP_WARN_拖动到动作栏中|r
    .cast 6654 >>安装您的|T132224:0|t[棕色狼]
    .train 6654,3
    .zoneskip Orgrimmar,1
step << Orc wotlk !Warlock
    #completewith OrgTrain
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132224:0|t[黑狼]|cRXP_WARN_拖动到动作栏中|r
    .cast 64658 >>安装您的|T132224:0|t[黑狼]
    .train 64658,3
    .zoneskip Orgrimmar,1
step << Warrior
    .goto Orgrimmar,80.39,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索瑞克|r
    .accept 1823 >>接任务: |cRXP_LOOT_和鲁迦交谈|r
    .train 6574 >>训练你的职业技能
    .target Sorek
    .train 6574,1
step << Warrior
    #label OrgTrain
    .goto Orgrimmar,80.39,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索瑞克|r
    .accept 1823 >>接任务: |cRXP_LOOT_和鲁迦交谈|r
    .target Sorek
step << Hunter
    #label OrgTrain
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
    .train 3045 >>训练你的职业技能
    .target Ormak Grimshot
step << Shaman/Warrior/Paladin
    #completewith HanashiWepT
    .goto Orgrimmar,63.08,39.25,40,0 << Paladin
    .goto Orgrimmar,64.31,38.12,30,0 << Paladin
    .goto Orgrimmar,66.07,40.04,30,0 << Paladin
    .goto Orgrimmar,74.19,25.89,30,0 << Paladin
    .goto Orgrimmar,76.76,22.12,30,0 << Paladin/Shaman/Warrior
    .goto Orgrimmar,81.53,19.64,10 >>前往|cRXP_FRIENDLY_Hanashi |r
step << Shaman
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 196 >>列车1h轴
    .train 197 >>列车2h轴
    .target Hanashi
    .money <0.1900
    .train 196,1
    .train 197,1
step << Shaman
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 196 >>列车1h轴
    .money <0.0950
    .target Hanashi
step << Warrior/Paladin
    #label HanashiWepT
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 197 >>列车2h轴
    .money <0.0950 << Warrior
    .money <0.1 << Paladin
    .target Hanashi
step
    #completewith RatchetFP
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,48.50,95.12,30,0 << !Troll
    .goto Orgrimmar,48.50,95.12,30 >>前往: |cRXP_PICK_杜隆塔尔|r << Troll
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r << !Troll
    .zoneskip Orgrimmar,1
    .skill riding,75,1 << Troll Warrior/Troll Shaman
step << Troll wotlk
    #completewith next
    .goto Durotar,49.41,20.97,35,0
    .goto Durotar,50.21,26.30,35,0
    .goto Durotar,49.93,28.80,35,0
    .goto Durotar,52.26,34.68,35,0
    .goto Durotar,55.28,75.48,50 >>向|cRXP_FRIENDLY_Xar'Ti|r行进
    .money <4.5
    .skill riding,75,1
step << Troll wotlk
    .goto Durotar,55.28,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r
    .skill riding,75 >>火车|T136103:0|t（学徒骑马）
    .target Xar'Ti
    .money <4.5
    .skill riding,75,1
step << Troll wotlk
    .goto Durotar,55.23,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖尼尔|r
    +|cRXP_BUY_从他那里买任何你喜欢的|r|T132253:0|t[Raptor Whistle]|cRXP_Buy_|r
	.target Zjolnir
    .itemcount 8588,<1 --Whistle of the Emerald Raptor
    .itemcount 8591,<1 --Whistle of the Turquoise Raptor
    .itemcount 8592,<1 --Whistle of the Violet Raptor
    .money <0.9
    .skill riding,<75,1
step << Troll wotlk
    .cast 55884 >>使用|T132253:0|t[翡翠猛禽的哨声]学习它
    .use 8588
    .itemcount 8588,1
    .skill riding,75,1
step << Troll wotlk
    .cast 55884 >>使用|T132253:0|t[绿松石猛禽的哨声]学习它
    .use 8591
    .itemcount 8591,1
    .skill riding,75,1
step << Troll wotlk
    .cast 55884 >>使用|T132253:0|t[紫罗兰猛禽的哨声]学习它
    .use 8592
    .itemcount 8592,1
    .skill riding,75,1
step << Troll wotlk
    #completewith RatchetFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132253:0|t[Emerald Raptor]|cRXP_WARN_拖动到动作栏中|r
    .cast 8395 >>安装您的|T132253:0|t[翡翠猛禽]
    .train 8395,3
    .zoneskip Orgrimmar
step << Troll wotlk
    #completewith RatchetFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132253:0|t[Turquoise Raptor]|cRXP_WARN_拖动到动作栏中|r
    .cast 10796 >>安装您的|T132253:0|t[绿松石猛禽]
    .train 10796,3
    .zoneskip Orgrimmar
step << Troll wotlk
    #completewith RatchetFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132253:0|t[Violet Raptor]|cRXP_WARN_拖动到动作栏中|r
    .cast 10799 >>安装您的|T132253:0|t[紫罗兰猛禽]
    .train 10799,3
    .zoneskip Orgrimmar
step << Warrior/Shaman
    #completewith next
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>向上行进至|cRXP_FRIENDLY_Doras|r
step << Warrior/Shaman
    #completewith FPools
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    .fly Crossroads >>飞向十字路口 << Warrior
    .fly Camp Taurajo >>飞往陶拉霍营地 << Shaman
    .target Doras
    .zoneskip Orgrimmar,1
step << Troll
    #completewith next
    .goto Durotar,46.94,69.10,100,0
    .goto Durotar,46.02,69.32,40,0
    .goto Durotar,41.38,73.54,15,0
    .goto Durotar,66.29,35.94,30,0
    .goto The Barrens,63.08,37.16,30 >>前往|cRXP_FRIENDLY_Bragok|r
    .zoneskip Durotar,1
step
    .goto The Barrens,63.08,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fp Ratchet >>获取棘轮飞行路径 << !Shaman !Warrior
    .fly Crossroads >>飞向十字路口 << Troll Warrior wotlk
    .fly Camp Taurajo >>飞往陶拉霍营地 << Troll Shaman wotlk
    .target Bragok
    .zoneskip Orgrimmar
step
    #xprate <1.5
    >>Accept quest around Ratchet
.target Sputtervalve
>>对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
    .goto The Barrens,63.0,37.2
.target Crane Operator Bigglefuzz
>>对话: |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .accept 959 >>接任务: |cRXP_WARN_港口的麻烦|r
    .goto The Barrens,63.086,37.607
.target Mebok Mizzyrix
>>对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .accept 865 >>接任务: |cRXP_LOOT_迅猛龙角|r
    .goto The Barrens,62.4,37.6
    .maxlevel 21
step
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .accept 1069 >>接任务: |cRXP_WARN_深苔蜘蛛的卵|r
step << Rogue
	.goto The Barrens,65.0,45.4
    >>跑到船上，然后下到二楼。开始挑选锁箱，直到你拥有80种挑选锁的技能。
	.skill lockpicking,>80
step
    #label FPools
    #xprate <1.5
    .maxlevel 21
    >>跑到十字路口
.target Tonga Runetotem
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .accept 870 >>接任务: |cRXP_WARN_遗忘之池|r
    .goto The Barrens,52.3,31.9
step
    .goto The Barrens,51.9,31.6
.target Mankrik
>>对话: |cRXP_FRIENDLY_曼科里克|r
    .accept 899 >>接任务: |cRXP_WARN_复仇的怒火|r
    .accept 4921 >>接任务: |cRXP_LOOT_在战斗中失踪|r
step
    #completewith next
    .goto The Barrens,52.02,30.14,15,0
    .goto The Barrens,51.99,29.89,15 >>前往|cRXP_FRIENDLY_Boorand|r
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
step << Warlock
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_BGazrog|r
    .turnin 1509 >>交任务: |cRXP_FRIENDLY_多格兰的消息|r
    .accept 1510 >>接任务: |cRXP_LOOT_多格兰的消息|r
    .target Gazrog
step << !Shaman !Warrior
    .goto The Barrens,51.50,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_BDevrak|r
    .fp Crossroads >>获得the Crossroads飞行路线
step
    #xprate <1.5
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 848 >>接任务: |cRXP_LOOT_菌类孢子|r
    .maxlevel 21
step
    #xprate <1.5
    >>向西走出十字路口
    .goto The Barrens,45.4,28.4
.target Regthar Deathgate
>>对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 850 >>接任务: |cRXP_LOOT_科卡尔首领|r
    .maxlevel 21
step
    #sticky
    #completewith next
    >>收集遗忘池周围的白蘑菇
    .complete 848,1 --Collect Fungal Spores (x4)
    .isOnQuest 848
step
    >>潜水至气泡裂缝
    .goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
    .isOnQuest 870
step
    >>收集完遗忘池周围的白蘑菇
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,45.0,22.7
    .complete 848,1 --Collect Fungal Spores (x4)
    .isOnQuest 848
step
    >>杀死科多班。抢他的头
    .goto The Barrens,42.9,23.5
    .complete 850,1 --Collect Kodobane's Head (x1)
	.unitscan Barak Kodobane
    .isOnQuest 850
step
    #sticky
    #completewith next
    .goto The Barrens,35.3,27.9
    >>杀死并掠夺16级以上猛禽
    .complete 865,1 --Collect Intact Raptor Horn (x5)
    .isOnQuest 865
step
    .isOnQuest 1061
    .goto The Barrens,35.3,27.9
>>对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .turnin 1061 >>交任务: |cRXP_FRIENDLY_石爪之灵|r
.target Seereth Stonebreak
    .accept 1062 >>接任务: |cRXP_LOOT_地精侵略者|r
step
    #xprate <1.5
    .goto The Barrens,35.3,27.9
.target Makaba Flathoof
>>对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .accept 6548 >>接任务: |cRXP_LOOT_为我的村庄复仇|r
    .maxlevel 21
step
    .goto Stonetalon Mountains,81.8,96.1
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
step
    >>杀死该地区的格里姆特姆斯
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .isOnQuest 6548
step
    .goto The Barrens,35.191,27.791
    >>回到荒野中的任务给予者那里
>>对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6548 >>交任务: |cRXP_FRIENDLY_为我的村庄复仇|r
.target Makaba Flathoof
    .accept 6629 >>接任务: |cRXP_WARN_杀死格鲁迪格·暗云|r
    .isOnQuest 6548
step
    #sticky
    #completewith next
	.goto Stonetalon Mountains,82.3,98.5,40 >>跑到这里的山上去
step << Warlock tbc
    .goto Stonetalon Mountains,73.2,95.1
>>对话: |cRXP_FRIENDLY_肯兹格拉|r
    .turnin 1510 >>交任务: |cRXP_FRIENDLY_多格兰的消息|r
.target Ken'zigla
    .accept 1511 >>接任务: |cRXP_WARN_肯兹格拉的伤药|r
step
    .goto Stonetalon Mountains,71.4,95.1
    >>Talk to Xen'Zilla in the hut
.target Xen'Zilla
>>对话: |cRXP_FRIENDLY_辛吉拉|r
    .accept 6461 >>接任务: |cRXP_LOOT_盗窃的蜘蛛|r
step
    #sticky
    #completewith next
	.goto Stonetalon Mountains,71.7,86.7,40 >>跑到这里的小路上
    .isOnQuest 6629
step
    >>在开始内部任务之前，确保杀死所有6只野兽。在主帐篷前杀死格隆迪希
	.goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
	.unitscan Grundig Darkcloud
    .isOnQuest 6629
step
    >>启动卡亚护送
    .goto Stonetalon Mountains,73.5,85.8
.target Kaya Flathoof
>>对话: |cRXP_FRIENDLY_卡雅·扁蹄|r
    .accept 6523 >>接任务: |cRXP_LOOT_保护卡雅|r
    .isOnQuest 6629
step
       >>护送Kaya并靠近她。3灰熊会在篝火旁产卵。在她到达营地之前吃/喝
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .isOnQuest 6523
step
    #sticky
    #completewith next
    >>在前往通缉海报的途中杀死迪普莫斯爬虫。你现在不必完成任务。
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
step
    >>点击沿路通缉海报
    .goto Stonetalon Mountains,59.0,75.7
    .accept 6284 >>接任务: |cRXP_LOOT_贝瑟莱斯|r
step
    .goto Stonetalon Mountains,57.5,76.2,30 >>沿着这条小路跑到西希尔峡谷
step
    #sticky
    #label deepmossegg
    #completewith spiderend
    >>点击树旁的蜘蛛卵。小心，因为暴徒可能会从蛋中产卵
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .isOnQuest 1069
step
    #sticky
    #label besseleth
    #completewith spiderend
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2
    >>杀死并掠夺贝塞莱斯的毒牙
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .isOnQuest 6284
step
    >>杀死该地区的Deepmoss Spiders和Besseleth。掠夺贝塞莱斯的毒牙
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .isOnQuest 6461
step
#hidewindow
    #requires besseleth
step
    #label spiderend
    >>前往山后的小妖精小屋
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1483 >>交任务: |cRXP_FRIENDLY_菲兹克斯|r
    .isOnQuest 1483
step
    >>前往山后的小妖精小屋
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .accept 1093 >>接任务: |cRXP_LOOT_超级收割机6000|r
step
    #sticky
    #completewith next
    >>在搜索操作员以获取蓝图时杀死记录器
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .isOnQuest 1062
step
    >>杀死Venture Co.Operators直到你拿到蓝图
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>结束杀死记录器
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .isOnQuest 1062
step
    .goto Stonetalon Mountains,58.989,62.599
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1093 >>交任务: |cRXP_FRIENDLY_超级收割机6000|r
.target Ziz Fizziks
    .accept 1094 >>接任务: |cRXP_WARN_新的指示|r
step
    #requires deepmossegg
    .goto The Barrens,52.2,31.9
    .hs >>炉膛到十字路口
step
    .isOnQuest 870
    .goto The Barrens,52.2,31.9
.target Tonga Runetotem
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
step
    .isQuestTurnedIn 870
    .goto The Barrens,52.2,31.9
.target Tonga Runetotem
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .accept 877 >>接任务: |cRXP_WARN_死水绿洲|r
step
    .goto The Barrens,52.3,31.9
    .vendor >>供应商清理并修理您的装备。
step
    .isOnQuest 848
    >>把这个交上来会开始一个定时任务。如果您在接下来的45多分钟内会很忙，请在此处注销。
    .goto The Barrens,51.5,30.2
.target Apothecary Helbrim
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
step
    .isQuestTurnedIn 848
    >>等待角色扮演，然后接受任务
    .goto The Barrens,51.5,30.2
.target Apothecary Helbrim
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 853 >>接任务: |cRXP_WARN_药剂师扎玛|r
step
    .isOnQuest 853
    #sticky
    #completewith Zamah
    +您有45分钟的时间来完成药剂师任务，所以请注意计时器。如果失败，请跳过任务
step
    #completewith next
    >>杀死并掠夺你看到的任何等级16+猛禽
    .complete 865,1 --Collect Intact Raptor Horn (x5)
    .isOnQuest 865
step
    >>点击水下的气泡裂缝
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Collect Test the Dried Seeds (x1)
    .isOnQuest 877
step
    #label Horns
    .goto The Barrens,52.2,46.6,40,0
    .goto The Barrens,57.8,54.1,40,0
    .goto The Barrens,52.2,46.6,40,0
    .goto The Barrens,57.8,54.1,40,0
    .goto The Barrens,52.2,46.6,40,0
    .goto The Barrens,57.8,54.1
    >>完成对猛禽角剩余部分的掠夺
    .complete 865,1 --Collect Intact Raptor Horn (x5)
    .isOnQuest 865
step
    .goto The Barrens,49.3,50.4
    >>前往南边公路旁的小哨所
    .complete 4921,1 --Find Mankrik's Wife
    .skipgossip
step
    #sticky
    #label Lakota1
    #completewith weapons
	.goto The Barrens,50.0,53.1,75,0
    .goto The Barrens,46.0,49.2,75,0
    .goto The Barrens,45.3,52.5
    .unitscan Lakota'mani
    >>找到并杀死该地区的拉科塔·马尼(格雷·科多)。抢走他的蹄子。如果你找不到他，跳过这个任务。
    .collect 5099,1,883 --Collect Hoof of Lakota'Mani
    .use 5099
    .accept 883 >>接任务: |cRXP_LOOT_拉克塔曼尼|r
    .unitscan Lakota'Mani
step
    #requires Lakota1
    #label weapons
step
    #xprate <1.5
    .goto The Barrens,45.102,57.683
.target Tatternack Steelforge
>>对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
    .accept 893 >>接任务: |cRXP_LOOT_野猪人的武器|r
    .maxlevel 25
step
    .isOnQuest 883
    .goto The Barrens,44.7,59.1
.target Jorn Skyseer
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 883 >>交任务: |cRXP_FRIENDLY_拉克塔曼尼|r
step
    .goto The Barrens,44.8,59.1
.target Jorn Skyseer
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .accept 1130 >>接任务: |cRXP_WARN_梅洛的关注|r
step << Warlock tbc
    .goto The Barrens,44.6,59.3
>>对话: |cRXP_FRIENDLY_步兵劳格玛|r
    .turnin 1511 >>交任务: |cRXP_FRIENDLY_肯兹格拉的伤药|r
.target Grunt Logmar
    .accept 1515 >>接任务: |cRXP_WARN_多格兰之囚|r
step
    .goto The Barrens,44.5,59.2
.target Mangletooth
>>对话: |cRXP_FRIENDLY_碎牙|r
    .accept 878 >>接任务: |cRXP_LOOT_野猪人的内战|r
step
    .goto The Barrens,44.5,59.2
    .fp Camp Taurajo >>获得Taurajo营地飞行路线
step << Warlock tbc
    >>在去这里的路上杀死Quillboars
    .goto The Barrens,43.305,47.885
>>对话: |cRXP_FRIENDLY_步兵多格兰|r
    .turnin 1515 >>交任务: |cRXP_FRIENDLY_多格兰之囚|r
.target Grunt Dogran
    .accept 1512 >>接任务: |cRXP_LOOT_爱的礼物|r
step
    >>杀死大量的绒猪。尽可能优先考虑荆棘侠、找水者和风水师。掠夺他们的象牙。保存你得到的血块
    *Water Seekers only spawn in the south western most camps. Go East or North West for Geomancers / Thornweavers.
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,42.2,48.3,50,0
    .goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,53.2,54.3,50,0
    .goto The Barrens,53.3,51.3,50,0
    .goto The Barrens,53.2,54.3,50,0
    .goto The Barrens,53.3,51.3,50,0
    .goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3
    .complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    .goto The Barrens,44.2,62.1,75,0
    .goto The Barrens,49.2,62.6,75,0
    .goto The Barrens,49.6,60.0,75,0
    .goto The Barrens,44.2,62.1,75,0
    .goto The Barrens,49.2,62.6,75,0
    .goto The Barrens,49.6,60.0
    >>在该区域周围搜索Owatanka(蓝雷蜥蜴)。如果你找到他，抢走他的尾钉并开始任务。如果找不到他，就跳过这个任务
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .use 5102
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .unitscan Owatanka
step
    .goto The Barrens,44.6,59.2
>>对话: |cRXP_FRIENDLY_碎牙|r
    .turnin 878 >>交任务: |cRXP_FRIENDLY_野猪人的内战|r
.target Mangletooth
    .accept 5052 >>接任务: |cRXP_WARN_阿迦玛甘的血岩碎片|r
    .turnin 5052 >>交任务: |cRXP_FRIENDLY_阿迦玛甘的血岩碎片|r
	>>用你的血碎片来拯救风之精灵
    .accept 889 >>接任务: |cRXP_LOOT_风之魂|r
    .turnin 889 >>交任务: |cRXP_FRIENDLY_风之魂|r
step
    #completewith tbroute
    .destroy 5075 >>摧毁: |cRXP_ENEMY_血岩碎片|r
    .itemcount 5075,1
step
    .isOnQuest 884
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
step
	.isOnQuest 883
        .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 883 >>交任务: |cRXP_FRIENDLY_拉克塔曼尼|r
step << !Tauren
    #label tbroute
    .goto Thunder Bluff,32.1,67.2,30 >>奔向雷霆崖
step << !Tauren
    #completewith next
    .goto Thunder Bluff,45.814,64.711
	.home >>将您的炉石设置为雷霆崖
step << Warlock
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>火车杆
step << Tauren wotlk
    .money <5.00
    .goto Mulgore,47.5,58.5
    .train 713 >>前往血蹄村。坐火车，买你的坐骑
step << Tauren
    #completewith next
    .goto The Barrens,44.4,59.2
	.fly Thunder Bluff >>飞或跑去雷霆崖
step << Druid
	#completewith next
	.goto Thunder Bluff,76.477,27.221
.target Turak Runetotem
>>对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
	.accept 27 >>接任务: |cRXP_WARN_必修的课程|r << tbc
	.trainer >>去训练你的职业技能
step
    #xprate <1.5
    .goto Thunder Bluff,30.1,30.0,25 >>进入精神升起下方的视觉池
step
    #xprate <1.5
    #label Zamah
    >>Talk to Clarice Foster
    .goto Thunder Bluff,27.5,24.7
.target Clarice Foster
>>对话: |cRXP_FRIENDLY_克拉莉斯·弗斯特|r
    .accept 264 >>接任务: |cRXP_WARN_至死方休|r
    .maxlevel 21
step
    .isOnQuest 853
    .goto Thunder Bluff,23.0,20.9
    >>如果你失败了Zamah任务，就放弃它
.target Apothecary Zamah
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
step
    .isOnQuest 853
    .abandon 853 >>放弃药剂师Zamah
step
    #xprate <1.5
    .goto Thunder Bluff,23.0,20.9
.target Apothecary Zamah
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .accept 962 >>接任务: |cRXP_LOOT_毒蛇花|r
    .maxlevel 21
step << Tauren
    #completewith next
    .goto Thunder Bluff,45.814,64.711
    .home >>将您的炉石设置为雷霆崖
step
    .goto Thunder Bluff,61.538,80.919
    >>走向猎人的崛起
>>对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .turnin 1130 >>交任务: |cRXP_FRIENDLY_梅洛的关注|r
.target Melor Stonehoof
    .accept 1131 >>接任务: |cRXP_LOOT_钢齿土狼|r
step
    .goto Thunder Bluff,54.966,51.413
.target Zangen Stonehoof
>>对话: |cRXP_FRIENDLY_赞金·石蹄|r
    .accept 1195 >>接任务: |cRXP_WARN_神圣之火|r
step << !Tauren
    >>爬上塔楼
    .goto Thunder Bluff,47.003,49.832
    .fp Thunder Bluff >>获得雷霆崖飞行路线
step
    #completewith ratchetanchor1
    .goto Thunder Bluff,47.003,49.832
    .fly Ratchet >>飞到棘轮
step
    .isOnQuest 865
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .turnin 865 >>交任务: |cRXP_FRIENDLY_迅猛龙角|r
step
    #xprate <1.5
    .isQuestTurnedIn 865
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .accept 1491 >>接任务: |cRXP_LOOT_智慧饮料|r
step
    #label ratchetanchor1
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .turnin 1069 >>交任务: |cRXP_FRIENDLY_深苔蜘蛛的卵|r
step
    #sticky
    #completewith next
    .itemcount 5570,1
    .destroy 5570 >>摧毁: |cRXP_ENEMY_深苔蜘蛛的卵|r
step
    .goto The Barrens,63.0,37.2
>>对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 1094 >>交任务: |cRXP_FRIENDLY_新的指示|r
.target Sputtervalve
    .accept 1095 >>接任务: |cRXP_WARN_新的指示|r
step
    #completewith next
    .goto The Barrens,63.1,37.2
    .fly Crossroads >>飞向十字路口
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>对话: |cRXP_FRIENDLY_曼科里克|r
    .turnin 4921 >>交任务: |cRXP_FRIENDLY_在战斗中失踪|r
    .turnin 899 >>交任务: |cRXP_FRIENDLY_复仇的怒火|r
step
    #sticky
    #completewith next
    .destroy 5085 >>摧毁: |cRXP_ENEMY_刺背野猪人的獠牙|r
    .itemcount 5085,1
step
    .goto The Barrens,52.2,31.9
.target Tonga Runetotem
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .turnin 877 >>交任务: |cRXP_FRIENDLY_死水绿洲|r
    .isOnQuest 877
step
    .goto The Barrens,47.0,34.7,15,0
    .goto The Barrens,46.4,34.9,15,0
    .goto The Barrens,46.6,34.8,10 >>在这里上山
    .isOnQuest 959
step
    .goto Kalimdor,51.9,55.4,30,0
    .goto Kalimdor,51.9,55.6,15 >>小心地滑到洞口(你可能需要步行或踩下踏板)
    .isOnQuest 959
step
    >>进入洞眼
    .goto Kalimdor,51.9,55.4
.target Nalpak
>>对话: |cRXP_FRIENDLY_纳尔帕克|r
    .accept 1486 >>接任务: |cRXP_LOOT_变异皮革|r
    .isOnQuest 959
step
    .goto The Barrens,46.1,36.7,35 >>离开眼睛。去洞口
    .isOnQuest 959
step
    #sticky
    #label Deviate
    >>杀死邪恶暴徒。抢他们的皮
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1486
step
    #sticky
    #label Serpentbloom
    >>寻找地面上的绿色和红色花朵
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
step
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.2,55.2
    >>寻找疯狂的马格利什(小妖精)。他是隐形的，有多个繁殖点。杀了他，抢了他99级的港口
    .complete 959,1 --Collect 99-Year-Old Port (1)
    .unitscan Mad Magglish
    .isOnQuest 959
step
    .goto Kalimdor,51.9,54.9,20 >>进入洞穴深处
    .isOnQuest 1491
step
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
	.goto Kalimdor,52.6,54.5
    >>杀死胞浆以获得哭泣精华。留心洞穴深处的两个稀有物种(Trigore和Boahn)，因为它们会掉落蓝色的BoE物品
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
step
    #requires Serpentbloom
    .isOnQuest 962
step
    #requires Deviate
    >>跑回洞口
    .goto Kalimdor,51.9,55.4
.target Nalpak
>>对话: |cRXP_FRIENDLY_纳尔帕克|r
    .turnin 1486 >>交任务: |cRXP_FRIENDLY_变异皮革|r
    .isOnQuest 1486
step
    >>返回Kolkar前哨
    .goto The Barrens,45.4,28.4
.target Regthar Deathgate
>>对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
    .isOnQuest 850
step
    .isQuestComplete 1062
    >>前往石爪。与Seereth交谈
    .goto The Barrens,35.3,27.8
.target Seereth Stonebreak
>>对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .turnin 1062 >>交任务: |cRXP_FRIENDLY_地精侵略者|r
step
    .goto The Barrens,35.3,27.8
.target Seereth Stonebreak
>>对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .accept 1063 >>接任务: |cRXP_WARN_长者|r
    .isQuestTurnedIn 1062
step
    .isOnQuest 6523
    >>前往石爪
    .goto The Barrens,35.3,27.8
.target Makaba Flathoof
>>对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6629 >>交任务: |cRXP_FRIENDLY_杀死格鲁迪格·暗云|r
    .turnin 6523 >>交任务: |cRXP_FRIENDLY_保护卡雅|r
step
    .isQuestTurnedIn 6523
    .goto The Barrens,35.3,27.8
.target Makaba Flathoof
>>对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .accept 6401 >>接任务: |cRXP_LOOT_卡雅还活着|r
step
	.goto Stonetalon Mountains,82.3,98.5,40 >>跑到这里的山上去
    .isOnQuest 6461
step
    .goto Stonetalon Mountains,71.3,95.0
.target Xen'Zilla
>>对话: |cRXP_FRIENDLY_辛吉拉|r
    .turnin 6461 >>交任务: |cRXP_FRIENDLY_盗窃的蜘蛛|r
    .isOnQuest 6461
step
    #xprate >1.499
    .isOnQuest 1095
    >>前往山后的小妖精小屋
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1095 >>交任务: |cRXP_FRIENDLY_新的指示|r
step << !Rogue
    #xprate <1.5
    >>前往太阳岩度假区
    >>到达太阳岩后，沿着左边的山路走
    .goto Stonetalon Mountains,49.0,62.8,40,0
    .goto Stonetalon Mountains,47.3,64.2
.target Tsunaman
>>对话: |cRXP_FRIENDLY_苏纳曼|r
    .accept 6562 >>接任务: |cRXP_WARN_帮助耶努萨克雷|r
    .maxlevel 23
step << Rogue
    >>前往太阳岩度假区
    >>到达太阳岩后，沿着左边的山路走
    .goto Stonetalon Mountains,49.0,62.8,40,0
    .goto Stonetalon Mountains,47.3,64.2
.target Tsunaman
>>对话: |cRXP_FRIENDLY_苏纳曼|r
    .accept 6562 >>接任务: |cRXP_WARN_帮助耶努萨克雷|r
step
    .goto Stonetalon Mountains,47.2,61.1
.target Maggran Earthbinder
>>对话: |cRXP_FRIENDLY_马格兰|r
    .turnin 6284 >>交任务: |cRXP_FRIENDLY_贝瑟莱斯|r
    .isOnQuest 6284
step
    #xprate <1.5
    .goto Stonetalon Mountains,45.1,59.8
    .fp Sun Rock >>获得太阳岩撤退飞行路线
    .maxlevel 23
step
    .goto Stonetalon Mountains,47.5,58.3
.target Tammra Windfield
>>对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
    .turnin 6401 >>交任务: |cRXP_FRIENDLY_卡雅还活着|r
    .isOnQuest 6401
step
    .isOnQuest 1095
    >>返回山后的小妖精小屋
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1095 >>交任务: |cRXP_FRIENDLY_新的指示|r
    .maxlevel 23
step
    #xprate <1.5
    #sticky
    #completewith next
    .goto Stonetalon Mountains,78.2,42.8,30 >>前往Talondep Path
    .maxlevel 23
step
    #xprate <1.5
    .goto Ashenvale,42.3,71.0,20 >>穿过洞穴跑到灰谷
    .maxlevel 23
step
    #xprate <1.5
    .goto Ashenvale,16.3,29.8,90 >>前往Zoram'gar前哨。途中一定要避开阿斯特拉纳卫队
    .maxlevel 23
step
    #xprate <1.5
    .goto Ashenvale,12.3,33.8
    .fp Zoram >>获取Zoram'gar前哨飞行路线
    .maxlevel 23
step
    #xprate <1.5
    .goto Ashenvale,11.8,34.7
.target Karang Amakkar
>>对话: |cRXP_FRIENDLY_卡拉恩·阿玛卡|r
    .accept 216 >>接任务: |cRXP_WARN_蓟皮熊怪的麻烦|r
    .maxlevel 23
step
    #xprate <1.5
    >>Talk to the trolls in the hut
    .goto Ashenvale,11.6,34.9
.target Marukai
>>对话: |cRXP_FRIENDLY_玛鲁凯|r
    .accept 6442 >>接任务: |cRXP_WARN_佐拉姆海岸的纳迦|r
.target Mitsuwa
>>对话: |cRXP_FRIENDLY_米苏瓦|r
    .accept 6462 >>接任务: |cRXP_LOOT_巨魔符咒|r
    .maxlevel 23
step
    #xprate <1.5
    .isQuestComplete 6562
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6562 >>交任务: |cRXP_FRIENDLY_帮助耶努萨克雷|r
step
    #xprate <1.5
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .accept 6563 >>接任务: |cRXP_WARN_阿库麦尔水晶|r
    .maxlevel 23
step
    #xprate <1.5
    >>Accepting this quest starts an escort. Follow him
    .goto Ashenvale,12.1,34.4
.target Muglash
>>对话: |cRXP_FRIENDLY_穆格拉什|r
    .accept 6641 >>接任务: |cRXP_WARN_鞭笞者沃尔沙|r
    .maxlevel 23
step
    #xprate <1.5
    #sticky
    #label wrathtailhead
    >>杀死海滩附近的那加人。抢他们的头
    .goto Ashenvale,15.5,17.1
    .complete 6442,1 --Collect Wrathtail Head (x20)
    .isOnQuest 6442
step
    #xprate <1.5
    >>单击钎焊器。会有纳加海浪产卵。一旦沃沙出来，让莫格拉什在与他战斗之前先发脾气。
    .goto Ashenvale,9.8,27.4
    .complete 6641,1 --Defeat Vorsha the Lasher
    .isOnQuest 6641
step
    #xprate <1.5
    .goto Ashenvale,14.2,14.7,40 >>从洞里钻入黑深洞
    .isOnQuest 6442
step
    #xprate <1.5
    #sticky
    #label Sapphires
    #completewith zoramend
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0
    .use 16790 >>在水下游泳，进入黑深潭。杀死女祭司直到一张湿纸条掉落(任务)。然后右击它并接受任务。
    .collect 16790,1,6564 --Collect Damp Note
    .accept 6564 >>接任务: |cRXP_WARN_上古之神的仆从|r
    .isOnQuest 6442
step
    #xprate <1.5
    #requires Sapphires
    >>从隧道的墙上抢走蓝宝石。
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0
    .complete 6563,1 --Collect Sapphire of Aku'Mai (x20)
    .isOnQuest 6563
step
    #xprate <1.5
    #label zoramend
    #requires wrathtailhead
    >>返回佐拉姆加前哨。
    .goto Ashenvale,12.223,34.216
.target Warsong Runner
>>对话: |cRXP_FRIENDLY_战歌信使|r
    .turnin 6641 >>交任务: |cRXP_FRIENDLY_鞭笞者沃尔沙|r
    .isQuestComplete 6641
step
    #xprate <1.5
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6563 >>交任务: |cRXP_FRIENDLY_阿库麦尔水晶|r
    .isQuestComplete 6563
step
    #xprate <1.5
    #sticky
    #completewith next
    .destroy 16784 >>摧毁: |cRXP_ENEMY_阿库麦尔蓝宝石|r
    .itemcount 16784,1
step
    #xprate <1.5
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6564 >>交任务: |cRXP_FRIENDLY_上古之神的仆从|r
    .isOnQuest 6564
step
    #xprate <1.5
    .goto Ashenvale,11.689,34.905
.target Marukai
>>对话: |cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6442 >>交任务: |cRXP_FRIENDLY_佐拉姆海岸的纳迦|r
    .isQuestComplete 6442
step << Druid tbc
    #sticky
    #completewith next
     +升级或注销，直到炉灰冷却时间少于5分钟
    .cooldown item,6948,<5m
step << Druid tbc
    .cast 18960 >>一旦你的炉石可用，使用“传送：月光”咒语
    >>上楼去
    .goto Moonglade,56.209,30.636
>>对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 27 >>交任务: |cRXP_FRIENDLY_必修的课程|r
.target Dendrite Starblaze
    .accept 28 >>接任务: |cRXP_WARN_湖中试炼|r
step << Druid tbc
	#completewith next
    .goto Moonglade,52.526,40.565
    .trainer >>去训练你的职业技能
step << Druid tbc
    >>在湖里找一个花瓶。抢走它作为神龛饰品
    .goto Moonglade,54.6,46.5,25,0
    .goto Moonglade,53.0,48.4
    .collect 15877,1
step << Druid tbc
    .use 15877 >>使用Shrine Bauble
    .goto Moonglade,36.2,41.8
    .complete 28,1 --Complete the Trial of the Lake. (1)
step << Druid tbc
    .goto Moonglade,36.517,40.104
>>对话: |cRXP_FRIENDLY_塔加里|r
    .turnin 28 >>交任务: |cRXP_FRIENDLY_湖中试炼|r
.target Tajarri
    .accept 30 >>接任务: |cRXP_WARN_海狮试炼|r
step
    #completewith next
    .hs >>火炉到雷霆崖
    .cooldown item,6948,>0
    .zoneskip Stonetalon Mountains
step
    #completewith next
    .goto Stonetalon Mountains,45.1,59.8
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .zoneskip Stonetalon Mountains,1
step
    .isOnQuest 1063
    .goto Thunder Bluff,69.851,30.910
>>对话: |cRXP_FRIENDLY_玛加萨·恐怖图腾|r
    .turnin 1063 >>交任务: |cRXP_FRIENDLY_长者|r
    >>等待角色扮演结束
.target Magatha Grimtotem
    .accept 1064 >>接任务: |cRXP_LOOT_被遗忘者的援助|r
step
    .isOnQuest 1064
    >>前往灵泉下的水池
    .goto Thunder Bluff,22.9,21.1
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1064 >>交任务: |cRXP_FRIENDLY_被遗忘者的援助|r
.target Apothecary Zamah
    .accept 1065 >>接任务: |cRXP_WARN_塔伦米尔之旅|r
step
    .isOnQuest 1489
    .goto Thunder Bluff,78.4,28.4
>>对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
    .turnin 1489 >>交任务: |cRXP_FRIENDLY_哈缪尔·符文图腾|r
.target Arch Druid Hamuul Runetotem
    .accept 1490 >>接任务: |cRXP_LOOT_纳拉·蛮鬃|r
step
    .isQuestTurnedIn 1489
    .goto Thunder Bluff,75.6,31.2
.target Nara Wildmane
>>对话: |cRXP_FRIENDLY_纳拉·蛮鬃|r
    .turnin 1490 >>交任务: |cRXP_FRIENDLY_纳拉·蛮鬃|r
step
    .isOnQuest 962
    >>前往灵泉下的水池
    .goto Thunder Bluff,22.9,21.1
.target Apothecary Zamah
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 962 >>交任务: |cRXP_FRIENDLY_毒蛇花|r
step << Tauren wotlk
    .money <5.00
    .goto Mulgore,47.5,58.5
    .train 713 >>前往血蹄村。坐火车，买你的坐骑
step << !Druid
	#completewith troubleatdocks1
    .isOnQuest 959
    .goto Thunder Bluff,47.003,49.832
    .fly Ratchet >>飞到棘轮
step << Druid
	#completewith next
    .goto Thunder Bluff,47.003,49.832
    .fly Ratchet >>飞到棘轮
step
    #label troubleatdocks1
    .isOnQuest 959
    .goto The Barrens,63.086,37.607
.target Crane Operator Bigglefuzz
>>对话: |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .turnin 959 >>交任务: |cRXP_FRIENDLY_港口的麻烦|r
step
    .isOnQuest 1491
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .turnin 1491 >>交任务: |cRXP_FRIENDLY_智慧饮料|r
step << Druid tbc
    >>在水下掠夺灰色箱子
    .goto The Barrens,56.7,8.3
    .collect 15883,1
step << Druid tbc
    #sticky
    #completewith next
    .goto Orgrimmar,12.4,66.1,40 >>前往: |cRXP_PICK_奥格瑞玛|r through the west entrance
step << Druid wotlk/!Druid
    #completewith next
    .goto The Barrens,63.1,37.1,-1
    .goto Thunder Bluff,47.003,49.832,-1
    .fly Orgrimmar >>飞往奥格瑞玛
step << Paladin
    #completewith next
    .goto Orgrimmar,32.4,35.8
    .trainer >>去训练你的职业技能
step << Shaman
    #completewith next
    .goto Orgrimmar,38.6,36.0
    .trainer >>去训练你的职业技能
step << Hunter
    #completewith next
    .goto Orgrimmar,66.046,18.526
    .trainer >>去训练你的职业技能
step << Hunter
    #completewith next
    .goto Orgrimmar,66.3,14.8
    .trainer >>去训练你的宠物法术吧
step << Warrior
    #completewith next
    .goto Orgrimmar,79.7,31.4
    .trainer >>去训练你的职业技能
step << Rogue
    #completewith next
    .goto Orgrimmar,44.0,54.6
    .trainer >>去训练你的职业技能
step << Warlock
    #completewith next
    .goto Orgrimmar,47.983,45.933
    .trainer >>去训练你的职业技能
step << Warlock tbc
	#completewith next
	.goto Orgrimmar,47.5,46.7
    .vendor >>购买舒缓之吻
	.collect 16375,1
    >>如果你喜欢虚空行者，你也可以买虚空行者的书。
step << Mage
    #completewith next
    .goto Orgrimmar,38.8,85.6
        .trainer >>去训练你的职业技能
step << Priest
    #completewith next
    .goto Orgrimmar,35.6,87.8
    .trainer >>去训练你的职业技能
step << Rogue tbc
    .goto Orgrimmar,43.050,53.737
.target Shenthul
>>对话: |cRXP_FRIENDLY_申苏尔|r
    .accept 2460 >>接任务: |cRXP_WARN_碎手军礼|r
step << Rogue tbc
    >>瞄准Shenthul并键入/敬礼
	.emote SALUTE,3401
    .complete 2460,1 --Shattered Salute Performed (1)
step << Rogue
    .goto Orgrimmar,43.050,53.737
>>对话: |cRXP_FRIENDLY_申苏尔|r
    .turnin 2460 >>交任务: |cRXP_FRIENDLY_碎手军礼|r << tbc
.target Shenthul
    .accept 2458 >>接任务: |cRXP_LOOT_卧底密探|r << tbc
    .train 1725 >>列车分心
    .train 1856 >>火车消失
    .train 1759 >>火车罪恶打击r4
step << Rogue tbc
	#completewith next
    .goto Orgrimmar,42.1,49.5
    .vendor >>从Rekkul购买至少1种闪粉
    .collect 5140,1 --Collect Flash Powder
step << Rogue tbc
    #sticky
    #completewith next
    +确保你的库存中有一把匕首。如果没有，就买你能找到的最便宜的
step << Rogue tbc
    .use 8051 >>当你距离任务主管菲祖尔大约50码时，使用火炬枪。然后向他致敬。当他变得友好时和他说话
	.emote SALUTE,7233
.goto The Barrens,55.4,5.6
>>对话: |cRXP_FRIENDLY_工头费苏勒|r
    .turnin 2458 >>交任务: |cRXP_FRIENDLY_卧底密探|r
.target Taskmaster Fizzule
    .accept 2478 >>接任务: |cRXP_LOOT_基本不可能的任务|r
step << Rogue tbc
	.cast 5967 >>秘密和扒手Silixiz为他的塔钥匙。让你尽可能多地拥抱塔壁，然后走到他身后去扒窃他。如果他说了什么，退后，然后从另一个角度靠近，试图再次扒窃他。不要杀了他
    .goto The Barrens,54.8,5.9
    .complete 2478,5 --Silixiz's Tower Key (1)
step << Rogue tbc
    .cast 8676 >>进入塔内，装备匕首。伏击其中一架无人机。这将立即杀死他们。逃跑，回来，对另一个无人机做同样的事
    .goto The Barrens,54.7,5.7
    .complete 2478,1 --变异创业公司无人机 (2)
step << Rogue tbc
    .cast 1943 >>上楼到下一层。重新装备你的主要武器。使用1连击点破解来杀死暴徒。这应该每次为他们带来50%的健康
    .goto The Barrens,54.7,5.8
.complete 2478,3 --Venture Co. Patroller (2)
step << Rogue tbc
    .cast 6761 >>到塔的三楼去。使用1连击点剔骨杀死怪物。这应该每次为他们带来50%的健康
    .goto The Barrens,54.6,5.6
    .complete 2478,2 --Venture Co. Lookout (2)
step << Rogue tbc
    >>去塔的顶层。再次装备你的匕首(确保你的冷却时间结束)。伏击水枪，然后重新装备你的主要武器在你的主要手中。使用你所有的冷却时间和药剂杀死Gallywix。在你杀了他之后，抢走他的头。
    .goto The Barrens,54.8,5.6
    .complete 2478,4 --Gallywix's Head (1)
step << Rogue tbc
    >>将顶层Gallywix前面的箱子用锁撬开，以掠夺改性混合物
	.goto The Barrens,54.8,5.6
	.complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue tbc
    #sticky
    #completewith next
	>>从西入口返回奥格瑞玛
    .goto Orgrimmar,11.6,66.9,30
step << Rogue tbc
	>>你现在将获得为期一周的降级，使你无法使用隐形。只需继续沿着路线走。
	.goto Orgrimmar,43.050,53.737
>>对话: |cRXP_FRIENDLY_申苏尔|r
    .turnin 2478 >>交任务: |cRXP_FRIENDLY_基本不可能的任务|r
.target Shenthul
    .accept 2479 >>接任务: |cRXP_WARN_希诺特的帮助|r
step << Warlock tbc
    .goto Orgrimmar,48.246,45.281
>>对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .turnin 1512 >>交任务: |cRXP_FRIENDLY_爱的礼物|r
.target Gan'rul Bloodeye
    .accept 1513 >>接任务: |cRXP_LOOT_誓缚|r
step << Warlock tbc
    .use 6626 >>使用道根的吊坠在建筑的圆圈处召唤魔术师。杀了她
	.goto Orgrimmar,49.4,50.0
    .complete 1513,1 --Summoned Succubus (1)
step << Warlock tbc
    >>从现在开始使用魔术师
    .goto Orgrimmar,48.246,45.281
.target Gan'rul Bloodeye
>>对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .turnin 1513 >>交任务: |cRXP_FRIENDLY_誓缚|r
    .isQuestComplete 1513
step << Warlock
    .goto Orgrimmar,48.246,45.281
    .trainer >>训练你的职业技能
step << wotlk
    +如果您可以访问此服务器上的gold，请尽快将gold邮寄给自己，以便进行挂载训练！
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 22-25 希尔斯布莱德丘陵/南部荒地
#version 1
#group RestedXP部落1-30
#next 25-26 石爪山脉；26-30 灰谷/千针石林
#xprate <1.5

step << Orc !Warlock wotlk
	.money <5.00
	.goto Orgrimmar,63.3,12.8
	.train 149 >>前往荣誉谷。乘坐火车并购买您的坐骑
step << Troll !Warlock wotlk
	.money <5.00
	.goto Durotar,55.2,75.5
	.train 533 >>前往Durotar的Sen'jin村乘坐火车并购买您的坐骑
step
    #label Zeppelin
	>>去齐柏林塔。把齐柏林飞艇带到提里斯法
	.goto Durotar,50.8,13.8
	.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step << Undead !Warlock wotlk
    .money <5.00
    .goto Tirisfal Glades,60.1,52.6
    .train 554 >>乘坐火车并购买您的坐骑
    .zoneskip Tirisfal Glades,1
step << Blood Elf !Warlock wotlk
    .money <5.00
    .goto Undercity,66.3,4.5,30,0
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
step << Blood Elf !Warlock wotlk
    .money <5.00
    .goto Eversong Woods,61.1,54.7,5,0
    .goto Eversong Woods,61.4,54.0
    .train 33388 >>离开银月城，然后乘火车去买你的坐骑。
step << Blood Elf !Warlock wotlk
    .goto Silvermoon City,49.4,14.3
    >>如果可以的话，传送到幽暗城 << Mage
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step << Druid tbc
    >>在水下打劫泡沫裂缝旁边的灰色胸部(疲劳中)。
    .goto Silverpine Forest,30.0,29.1
    .collect 15882,1
    --Video link in future?
    .isOnQuest 30
step
    .goto Silverpine Forest,42.80,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师伦弗利尔|r
    .accept 493 >>接任务: |cRXP_LOOT_前往希尔斯布莱德丘陵|r
    .target Apothecary Renferrel
step
    .isOnQuest 3301
    .goto Silverpine Forest,42.90,41.99
.target Mura Runetotem
>>对话: |cRXP_FRIENDLY_茉拉·符文图腾|r
    .turnin 3301 >>交任务: |cRXP_FRIENDLY_茉拉·符文图腾|r
step
    >>点击地面上的石墓
    .goto Silverpine Forest,44.1,42.5
    .turnin 264 >>交任务: |cRXP_FRIENDLY_至死方休|r
    .isOnQuest 264
step
    .goto Silverpine Forest,45.62,42.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .fp The Sepulcher >>获得the Sepulcher飞行路线
    .target Karos Razok
step
    #completewith next
    .goto Silverpine Forest,46.33,44.30,30,0
    .goto Silverpine Forest,61.47,67.47,40,0
    .goto Silverpine Forest,67.14,79.06,40,0
    .goto Hillsbrad Foothills,20.79,47.40,40 >>向|cRXP_FRIENDLY_Lesh|r行进
    >>|cRXP_WARN_小心途中的|cRXP_ENEMY_Dalaran巫师|r，因为他们施放|r|T135846:0|t[Frostbolt]|cRXP-WARN_这会减慢你的速度|r
step
    .goto Hillsbrad Foothills,20.79,47.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵莱什|r
    .accept 494 >>接任务: |cRXP_LOOT_进攻的时机|r
    .target Deathstalker Lesh
step
    .goto Hillsbrad Foothills,60.14,18.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
    .fp Tarren Mill>>获取Tarren Mill飞行路线
    .target Zarise
step << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, Wanted Poster, |cRXP_FRIENDLY_克鲁斯克|r
    .turnin 493 >>交任务: |cRXP_FRIENDLY_前往希尔斯布莱德丘陵|r
    .accept 496 >>接任务: |cRXP_LOOT_受难药剂|r
    .accept 501 >>接任务: |cRXP_LOOT_痛苦药剂|r
    .turnin 1065 >>交任务: |cRXP_FRIENDLY_塔伦米尔之旅|r
    .accept 1066 >>接任务: |cRXP_LOOT_无辜者之血|r
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 494 >>交任务: |cRXP_FRIENDLY_进攻的时机|r
    .accept 527 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .accept 549 >>接任务: |cRXP_LOOT_通缉：辛迪加成员|r
    .goto Hillsbrad Foothills,62.65,20.76
    .accept 498 >>接任务: |cRXP_LOOT_拯救行动|r
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target High Executor Darthalia
    .target Krusk
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, |cRXP_FRIENDLY_顾问达斯多恩|r, Wanted Poster, |cRXP_FRIENDLY_克鲁斯克|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, Wanted Poster, |cRXP_FRIENDLY_克鲁斯克|r << !BloodElf
    .turnin 493 >>交任务: |cRXP_FRIENDLY_前往希尔斯布莱德丘陵|r
    .accept 496 >>接任务: |cRXP_LOOT_受难药剂|r
    .accept 501 >>接任务: |cRXP_LOOT_痛苦药剂|r
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 494 >>交任务: |cRXP_FRIENDLY_进攻的时机|r
    .accept 527 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 9425 >>交任务: |cRXP_FRIENDLY_前往塔伦米尔|r << BloodElf
    .goto Hillsbrad Foothills,62.58,20.81 << BloodElf
    .accept 549 >>接任务: |cRXP_LOOT_通缉：辛迪加成员|r
    .goto Hillsbrad Foothills,62.65,20.76
    .accept 498 >>接任务: |cRXP_LOOT_拯救行动|r
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target High Executor Darthalia
    .target Advisor Duskingdawn << BloodElf
    .target Krusk
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[甜瓜汁]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133970:0|t[羊排]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[瓜汁]|cRXP_Buy_和|r|T133970:0|t[Mutton Chops]|cRXP-Buy_|r << Paladin
    .collect 1205,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Melon Juice (20)
    .collect 3770,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Mutton Chop (20)
    .collect 3770,10,1145,1 << Paladin/Shaman --Mutton Chop (10)
    .target Innkeeper Shay
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin/Shaman
    .xp <20,1
    .xp >24,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133969:0|t[Wild Hog Shanks]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[甜油桃]|cRXP_Buy_和|r|T133969:0|t[Wild Hog Shanks]|cRX|r << Paladin
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin --Sweet Nectar (20)
    .collect 3771,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin --Wild Hog Shank (20)
    .collect 3771,10,1145,1 << Paladin --Wild Hog Shank (10)
    .target Innkeeper Shay
    .money <0.4000 << !Paladin
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
    .collect 2515,1000,1145,1 --Sharp Arrow (1000)
    .target Kayren Soothallow
    .money <0.0240 << BloodElf
    .money <0.0250 << Troll/Orc
    .isOnQuest 498
    .xp >25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
    .collect 3030,2000,1145,1 --Razor Arrow (2000)
    .target Kayren Soothallow
    .money <0.2850 << BloodElf
    .money <0.3000 << Troll/Orc
    .isOnQuest 498
    .xp <25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
    .collect 3030,1000,1145,1 --Razor Arrow (1000)
    .target Kayren Soothallow
    .money <0.1425 << BloodElf
    .money <0.1500 << Troll/Orc
    .isOnQuest 498
    .xp <25,1
step << Shaman
	.goto Hillsbrad Foothills,62.17,20.82
    >>在井上使用|T132829:0|t[空红色水皮]
    .complete 1536,1 --Filled Red Waterskin (1)
    .use 7768
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
    >>|cRXP_BUY_从他那里购买|r|T135324:0|t[长剑]|cRXP_Buy_|r
    .collect 923,1,885,1 --Longsword (1)
    .target Ott
    .money <0.8307 << !Undead/!BloodElf
    .money <0.8722 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .skill riding,<75,1 << wotlk
step << Shaman/Warrior
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
    >>|cRXP_BUY_从他那里购买|r|T132408:0|t[Merciless Axe]|cRXP_Buy_如果它用完了|r
    .vendor >>供应商和维修
    .target Ott
    .money <3.0343 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
step << Shaman/Warrior
    #completewith Durnholde1
    +装备|T132408:0|t[无情之斧]
    .use 12249
    .itemcount 12249,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
    .xp <26,1
step << Rogue
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
    >>|cRXP_BUY_从他那里购买|r|T135640:0|t[宽刃刀]|cRXP_Buy_如果它用完了|r
    .vendor >>供应商和维修
    .target Ott
    .money <2.8372 << BloodElf/Undead
    .money <2.6953 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
step << Rogue
    #completewith Durnholde1
    +装备|T135640:0|t[宽刃刀]
    .use 12247
    .itemcount 12247,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
    .xp <27,1
step << Rogue wotlk
    #completewith Durnholde1
    .cast 8679 >>在武器上使用|T132273:0|t[即时毒药]
    .itemcount 6947,2
step
    #completewith Durnholde1
    >>杀死|cRXP_ENEMY_邪恶灰熊|r和|cRXX_ENEMY_灰熊|r.掠夺它们的|cRXD_Loot_Tongues|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_Elder灰熊|r，因为它们不值得杀死|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
	#completewith next
	>>杀死|cRXP_ENEMY_Forest Moss Creeper|r。掠夺它们的|cRXX_Loot_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
step
    #label Durnholde1
	.goto Hillsbrad Foothills,76.72,46.22,60 >>前往Durnhold Keep
    .isOnQuest 549
step
    #completewith Drull
	>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate守望者|r << !Shaman !Warrior
    >>杀死|cRXP_ENEMY_Syndicate盗贼|r、|cRXD_ENEMY_Syndicate守望者|r和|cRXP_ENEMY_辛迪加阴影法师|r。掠夺他们的|cRXT_Loot_无辜之血小瓶|r << Shaman/Warrior
    .complete 549,1 --Kill Syndicate Rogue (x10)
	.complete 549,2 --Kill Syndicate Watchman (x10)
	.complete 1066,1 << Shaman/Warrior --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Rogue
    .mob Syndicate Watchman
    .mob Syndicate Shadow Mage << Shaman/Warrior
step
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    >>杀死|cRXP_ENEMY_Jailer Eston|r。抢走他的|cRXX_Loot_铁钥匙|r
    >>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'tar|r的兵营前找到|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19
	>>杀死|cRXP_ENEMY_Jailr Marlgen|r。抢走他的|cRXX_Loot_金钥匙|r
    >>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'tar|r前面或塔的底部找到|r
    .collect 3499,1,498,2 --Burnished Gold Key (1)
    .mob Jailor Marlgen
step
	.goto Hillsbrad Foothills,79.79,39.65
    >>单击地面上的|cRXP_PICK_Ball and Chain |r
    .complete 498,2 --Rescue Tog'thar (1)
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_从她那里购买|r|T134590:0|t[跟踪裤]|cRXP_Buy_和|r|T132603:0|t[Wolf Bracers]|cRXP-Buy_（如果有的话）|r
    .vendor >>供应商和维修
    .target Kris Legace
    .money <1.1374
    .itemcount 4831,<1
    .itemcount 4794,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_向她购买|r|T134590:0|t[Stalking Pants]|cRXP_Buy_|r
    .vendor >>供应商和维修
    .target Kris Legace
    .money <0.7859
    .itemcount 4831,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_从她那里购买|r|T132603:0|t[Wolf Bracers]|cRXP_Buy_|r
    .vendor >>供应商和维修
    .target Kris Legace
    .money <0.3515
    .itemcount 4794,<1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue/Hunter/Shaman
    #completewith Drull
    +装备|T134590:0|t[跟踪裤]|cRXP_BUY_和|r|T132603:0|t[Wolf Braces]
    .use 4831
    .use 4794
    .itemcount 4831,1
    .itemcount 4794,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue/Hunter/Shaman
    #completewith Drull
    +装备|T134590:0|t[跟踪裤]
    .use 4831
    .itemcount 4831,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
step << Rogue/Hunter/Shaman
    #completewith Drull
    +配备|T132603:0|t[狼式撑杆]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63
    >>杀死|cRXP_ENEMY_Jailer Eston|r。抢走他的|cRXX_Loot_铁钥匙|r
    >>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'tar|r的兵营前找到，也可以在|r|cRXP-FRIENDLY_Drull前找到|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #label Drull
    .goto Hillsbrad Foothills,75.33,41.50
    >>单击地面上的|cRXP_PICK_Ball and Chain |r
    .complete 498,1 --Rescue Drull (1)
step
    .goto Hillsbrad Foothills,75.29,40.17,20,0
    .goto Hillsbrad Foothills,76.53,41.00,30,0
    .goto Hillsbrad Foothills,77.28,43.55,35,0
    .goto Hillsbrad Foothills,78.98,45.09,35,0
    .goto Hillsbrad Foothills,79.58,46.88,20,0
    .goto Hillsbrad Foothills,80.97,46.77,20,0
    .goto Hillsbrad Foothills,81.82,45.15,20,0
    .goto Hillsbrad Foothills,82.24,42.50,35,0
    .goto Hillsbrad Foothills,80.69,44.07,8,0
    .goto Hillsbrad Foothills,81.10,43.85,8,0
    .goto Hillsbrad Foothills,81.92,39.69,35,0
    .goto Hillsbrad Foothills,83.83,40.78,35,0
    .goto Hillsbrad Foothills,80.67,42.47,30,0
    .goto Hillsbrad Foothills,79.70,43.22,30,0
    .goto Hillsbrad Foothills,79.69,39.76,30,0
    .goto Hillsbrad Foothills,78.25,41.30,30,0
    .goto Hillsbrad Foothills,77.58,39.23,30,0
    .goto Hillsbrad Foothills,78.01,43.37,30,0
    .goto Hillsbrad Foothills,76.47,46.62,30,0
    .goto Hillsbrad Foothills,75.29,40.17
	>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate守望者|r << !Shaman !Warrior
    >>杀死|cRXP_ENEMY_Syndicate盗贼|r、|cRXD_ENEMY_Syndicate守望者|r和|cRXP_ENEMY_辛迪加阴影法师|r。掠夺他们的|cRXT_Loot_无辜之血小瓶|r << Shaman/Warrior
    .complete 549,1,7 --Kill Syndicate Rogue (x10)
	.complete 549,2,7 --Kill Syndicate Watchman (x10)
	.complete 1066,1,4 << Shaman/Warrior --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Rogue
    .mob Syndicate Watchman
    .mob Syndicate Shadow Mage << Shaman/Warrior
step
    #label ExitDurnholde
    #completewith Syndicate1
	.goto Hillsbrad Foothills,76.72,46.22,60 >>退出Durnhold Keep
    .isOnQuest 549
step
    #requires ExitDurnholde
    #completewith Syndicate1
    >>杀死|cRXP_ENEMY_邪恶灰熊|r和|cRXX_ENEMY_灰熊|r.掠夺它们的|cRXD_Loot_Tongues|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_Elder灰熊|r，因为它们不值得杀死|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
    #requires ExitDurnholde
	#completewith next
	>>杀死|cRXP_ENEMY_Forest Moss Creeper|r。掠夺它们的|cRXX_Loot_Ichor|r
    >>|cRXP_WARN_避免|cRXP_ENEMY_Giant Moss Creeper|r，因为它们还不值得杀死|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
step
    #label Syndicate1
    .goto Hillsbrad Foothills,67.06,46.27,40,0
    .goto Hillsbrad Foothills,66.04,45.78,40,0
    .goto Hillsbrad Foothills,64.87,47.17,40,0
    .goto Hillsbrad Foothills,66.13,48.44,40,0
    .goto Hillsbrad Foothills,67.11,50.53,40,0
    .goto Hillsbrad Foothills,76.51,46.31,40,0
    .goto Hillsbrad Foothills,75.29,40.17,20,0
    .goto Hillsbrad Foothills,76.53,41.00,30,0
    .goto Hillsbrad Foothills,77.28,43.55,35,0
    .goto Hillsbrad Foothills,78.98,45.09,35,0
    .goto Hillsbrad Foothills,79.58,46.88,20,0
    .goto Hillsbrad Foothills,80.97,46.77,20,0
    .goto Hillsbrad Foothills,81.82,45.15,20,0
    .goto Hillsbrad Foothills,82.24,42.50,35,0
    .goto Hillsbrad Foothills,80.69,44.07,8,0
    .goto Hillsbrad Foothills,81.10,43.85,8,0
    .goto Hillsbrad Foothills,81.92,39.69,35,0
    .goto Hillsbrad Foothills,83.83,40.78,35,0
    .goto Hillsbrad Foothills,80.67,42.47,30,0
    .goto Hillsbrad Foothills,79.70,43.22,30,0
    .goto Hillsbrad Foothills,79.69,39.76,30,0
    .goto Hillsbrad Foothills,78.25,41.30,30,0
    .goto Hillsbrad Foothills,77.58,39.23,30,0
    .goto Hillsbrad Foothills,78.01,43.37,30,0
    .goto Hillsbrad Foothills,76.47,46.62,30,0
    .goto Hillsbrad Foothills,75.29,40.17
	>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate守望者|r << !Shaman !Warrior
    >>杀死|cRXP_ENEMY_Syndicate盗贼|r、|cRXD_ENEMY_Syndicate守望者|r和|cRXP_ENEMY_辛迪加阴影法师|r。掠夺他们的|cRXT_Loot_无辜之血小瓶|r << Shaman/Warrior
    .complete 549,1 --Kill Syndicate Rogue (x10)
	.complete 549,2 --Kill Syndicate Watchman (x10)
	.complete 1066,1 << Shaman/Warrior --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Rogue
    .mob Syndicate Watchman
    .mob Syndicate Shadow Mage << Shaman/Warrior
step
    #completewith HFields1
    >>杀死|cRXP_ENEMY_邪恶灰熊|r和|cRXX_ENEMY_灰熊|r.掠夺它们的|cRXD_Loot_Tongues|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_Elder灰熊|r，因为它们不值得杀死|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
	#completewith HFields1
    .goto Hillsbrad Foothills,62.93,38.53,45,0
    .goto Hillsbrad Foothills,62.16,39.83,45,0
    .goto Hillsbrad Foothills,60.92,38.20,45,0
    .goto Hillsbrad Foothills,59.23,34.19,45,0
    .goto Hillsbrad Foothills,58.77,28.98,45,0
    .goto Hillsbrad Foothills,57.15,30.80,45,0
	>>杀死|cRXP_ENEMY_Forest Moss Creeper|r。掠夺它们的|cRXX_Loot_Ichor|r
    >>|cRXP_WARN_避免|cRXP_ENEMY_Giant Moss Creeper|r，因为它们不值得杀死|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
step
    #completewith HFields1
    .goto Hillsbrad Foothills,54.77,28.72,45,0
    .goto Hillsbrad Foothills,52.93,29.45,45,0
    .goto Hillsbrad Foothills,54.29,31.75,45,0
    .goto Hillsbrad Foothills,51.28,35.37,45,0
    .goto Hillsbrad Foothills,43.36,39.38,45,0
    .goto Hillsbrad Foothills,42.56,40.19,45,0
    .goto Hillsbrad Foothills,40.91,44.23,45,0
    .goto Hillsbrad Foothills,39.92,45.83,45,0
    .goto Hillsbrad Foothills,37.97,44.59,45,0
    .goto Hillsbrad Foothills,39.88,40.56,45,0
    .goto Hillsbrad Foothills,38.45,38.77,45,0
    .goto Hillsbrad Foothills,38.70,36.71,45,0
    .goto Hillsbrad Foothills,39.79,34.43,45,0
	>>杀死|cRXP_ENEMY_饥饿的山狮|r。掠夺它们的|cRXX_Loot_Blood|r
    .complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
    #label HFields1
    .goto Hillsbrad Foothills,36.02,39.19,80 >>前往希尔斯布莱德球场
    .isOnQuest 527
step
	#completewith Getz
	>>杀死|cRXP_ENEMY_Hillsbrad农民|r和|cRXP_ENEMY_Hilsbrad农场工人|r
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob Hillsbrad Farmer
    .mob Hillsbrad Farmhand
step
    #completewith next
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    >>杀死|cRXP_ENEMY_Farmer Getz|r
    >>|cRXP_WARN_他可以在房子里、田野里或谷仓里找到|r
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
step
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78,10,0
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78,10,0
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78,10,0
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78
    >>杀死|cRXP_ENEMY_Farmer Ray|r
    >>|cRXP_WARN_他可以在葡萄园里找到，也可以在房子的一楼和二楼找到|r
    .complete 527,3 --Farmer Ray (1)
    .unitscan Farmer Ray
step
    #label Getz
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70
    >>杀死|cRXP_ENEMY_Farmer Getz|r
    >>|cRXP_WARN_他可以在房子里、田野里或谷仓里找到|r
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
step
#loop
	.line Hillsbrad Foothills,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,35.90,40.63,45,0
	.goto Hillsbrad Foothills,33.88,41.80,45,0
	.goto Hillsbrad Foothills,30.19,38.48,45,0
	.goto Hillsbrad Foothills,30.67,35.21,45,0
	.goto Hillsbrad Foothills,31.71,36.72,45,0
	.goto Hillsbrad Foothills,33.67,35.66,45,0
	.goto Hillsbrad Foothills,35.90,40.63,45,0
	>>杀死|cRXP_ENEMY_Hillsbrad农民|r和|cRXP_ENEMY_Hilsbrad农场工人|r
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob Hillsbrad Farmer
    .mob Hillsbrad Farmhand
step
	#completewith BearT
	>>杀死|cRXP_ENEMY_Forest Moss Creeper|r和|cRXX_ENEMY_Giant Moss Creeps|r。掠夺它们的|cRXD_Loot_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
step
    #completewith next
    >>杀死|cRXP_ENEMY_邪恶灰熊|r和|cRXX_ENEMY_灰熊|r.掠夺它们的|cRXD_Loot_Tongues|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_Elder灰熊|r，因为它们不值得杀死|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
#loop
	.line Hillsbrad Foothills,39.79,34.43,38.70,36.71,38.45,38.77,39.88,40.56,37.97,44.59,39.92,45.83,40.91,44.23,42.56,40.19,43.36,39.38,51.28,35.37,54.29,31.75,52.93,29.45,54.77,28.72
	.goto Hillsbrad Foothills,39.79,34.43,45,0
	.goto Hillsbrad Foothills,38.70,36.71,45,0
	.goto Hillsbrad Foothills,38.45,38.77,45,0
	.goto Hillsbrad Foothills,39.88,40.56,45,0
	.goto Hillsbrad Foothills,37.97,44.59,45,0
	.goto Hillsbrad Foothills,39.92,45.83,45,0
	.goto Hillsbrad Foothills,40.91,44.23,45,0
	.goto Hillsbrad Foothills,42.56,40.19,45,0
	.goto Hillsbrad Foothills,43.36,39.38,45,0
	.goto Hillsbrad Foothills,51.28,35.37,45,0
	.goto Hillsbrad Foothills,54.29,31.75,45,0
	.goto Hillsbrad Foothills,52.93,29.45,45,0
	.goto Hillsbrad Foothills,54.77,28.72,45,0
	>>杀死|cRXP_ENEMY_饥饿的山狮|r。掠夺它们的|cRXX_Loot_Blood|r
    .complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
    #label BearT
#loop
	.line Hillsbrad Foothills,40.88,33.87,40.86,37.40,40.85,39.42,38.50,38.04,37.68,41.23,38.71,42.66,40.40,44.65,44.39,41.34,45.23,39.62,43.87,37.01,49.75,34.33,52.06,36.86,51.91,32.97,52.39,29.27,57.38,22.85,57.09,25.67,58.08,28.07,56.88,28.85,59.68,30.90,57.71,34.06,59.89,36.74,62.63,37.64,64.73,38.03,66.52,34.52
	.goto Hillsbrad Foothills,40.88,33.87,45,0
	.goto Hillsbrad Foothills,40.86,37.40,45,0
	.goto Hillsbrad Foothills,40.85,39.42,45,0
	.goto Hillsbrad Foothills,38.50,38.04,45,0
	.goto Hillsbrad Foothills,37.68,41.23,45,0
	.goto Hillsbrad Foothills,38.71,42.66,45,0
	.goto Hillsbrad Foothills,40.40,44.65,45,0
	.goto Hillsbrad Foothills,44.39,41.34,45,0
	.goto Hillsbrad Foothills,45.23,39.62,45,0
	.goto Hillsbrad Foothills,43.87,37.01,45,0
	.goto Hillsbrad Foothills,49.75,34.33,45,0
	.goto Hillsbrad Foothills,52.06,36.86,45,0
	.goto Hillsbrad Foothills,51.91,32.97,45,0
	.goto Hillsbrad Foothills,52.39,29.27,45,0
	.goto Hillsbrad Foothills,57.38,22.85,45,0
	.goto Hillsbrad Foothills,57.09,25.67,45,0
	.goto Hillsbrad Foothills,58.08,28.07,45,0
	.goto Hillsbrad Foothills,56.88,28.85,45,0
	.goto Hillsbrad Foothills,59.68,30.90,45,0
	.goto Hillsbrad Foothills,57.71,34.06,45,0
	.goto Hillsbrad Foothills,59.89,36.74,45,0
	.goto Hillsbrad Foothills,62.63,37.64,45,0
	.goto Hillsbrad Foothills,64.73,38.03,45,0
	.goto Hillsbrad Foothills,66.52,34.52,45,0
    >>杀死|cRXP_ENEMY_邪恶灰熊|r和|cRXX_ENEMY_灰熊|r.掠夺它们的|cRXD_Loot_Tongues|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_Elder灰熊|r，因为它们不值得杀死|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
#loop
	.line Hillsbrad Foothills,62.85,38.74,62.24,39.96,60.92,37.92,59.62,33.33,56.88,29.73,59.80,27.72,57.63,24.16,56.47,16.42,59.36,14.55,60.54,13.67,62.65,12.90,64.43,10.22,65.18,6.93,65.31,5.76,66.90,9.02,70.39,8.89,68.86,10.18,67.35,12.95,71.38,19.81,71.78,21.89,64.85,24.92,66.68,28.15,69.76,31.89,67.62,37.65,62.85,38.74
	.goto Hillsbrad Foothills,62.85,38.74,45,0
	.goto Hillsbrad Foothills,62.24,39.96,45,0
	.goto Hillsbrad Foothills,60.92,37.92,45,0
	.goto Hillsbrad Foothills,59.62,33.33,45,0
	.goto Hillsbrad Foothills,56.88,29.73,45,0
	.goto Hillsbrad Foothills,59.80,27.72,45,0
	.goto Hillsbrad Foothills,57.63,24.16,45,0
	.goto Hillsbrad Foothills,56.47,16.42,45,0
	.goto Hillsbrad Foothills,59.36,14.55,45,0
	.goto Hillsbrad Foothills,60.54,13.67,45,0
	.goto Hillsbrad Foothills,62.65,12.90,45,0
	.goto Hillsbrad Foothills,64.43,10.22,45,0
	.goto Hillsbrad Foothills,65.18,6.93,45,0
	.goto Hillsbrad Foothills,65.31,5.76,45,0
	.goto Hillsbrad Foothills,66.90,9.02,45,0
	.goto Hillsbrad Foothills,70.39,8.89,45,0
	.goto Hillsbrad Foothills,68.86,10.18,45,0
	.goto Hillsbrad Foothills,67.35,12.95,45,0
	.goto Hillsbrad Foothills,71.38,19.81,45,0
	.goto Hillsbrad Foothills,71.78,21.89,45,0
	.goto Hillsbrad Foothills,64.85,24.92,45,0
	.goto Hillsbrad Foothills,66.68,28.15,45,0
	.goto Hillsbrad Foothills,69.76,31.89,45,0
	.goto Hillsbrad Foothills,67.62,37.65,45,0
	.goto Hillsbrad Foothills,62.85,38.74,45,0
	>>杀死|cRXP_ENEMY_Forest Moss Creeper|r和|cRXX_ENEMY_Giant Moss Creeps|r。掠夺它们的|cRXD_Loot_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, |cRXP_FRIENDLY_乌比|r, Darthalia, |cRXP_FRIENDLY_克鲁斯克|r
    .turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
    .accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
    .turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
    .accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
    .turnin 1066 >>交任务: |cRXP_FRIENDLY_无辜者之血|r << Shaman/Warrior
    .accept 1067 >>接任务: |cRXP_WARN_返回雷霆崖|r << Shaman/Warrior
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
    .goto Hillsbrad Foothills,61.53,19.16
    .turnin 527 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
    .accept 528 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
	.turnin 549 >>交任务: |cRXP_FRIENDLY_通缉：辛迪加成员|r
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 498 >>交任务: |cRXP_FRIENDLY_拯救行动|r
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target Umpi
    .target High Executor Darthalia
    .target Krusk
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
    .collect 2515,1000,498,1 --Sharp Arrow (1000)
    .target Kayren Soothallow
    .money <0.0240 << BloodElf
    .money <0.0250 << Troll/Orc
    .isOnQuest 528
    .xp >25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
    .collect 3030,2000,498,1 --Razor Arrow (2000)
    .target Kayren Soothallow
    .money <0.2850 << BloodElf
    .money <0.3000 << Troll/Orc
    .isOnQuest 528
    .xp <25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
    .collect 3030,1000,498,1 --Razor Arrow (1000)
    .target Kayren Soothallow
    .money <0.1425 << BloodElf
    .money <0.1500 << Troll/Orc
    .isOnQuest 528
    .xp <25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[甜瓜汁]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133970:0|t[羊排]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[瓜汁]|cRXP_Buy_和|r|T133970:0|t[Mutton Chops]|cRXP-Buy_|r << Paladin
    .collect 1205,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Melon Juice (20)
    .collect 3770,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Mutton Chop (20)
    .collect 3770,10,1145,1 << Paladin/Shaman --Mutton Chop (10)
    .target Innkeeper Shay
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin/Shaman
    .xp <20,1
    .xp >25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133969:0|t[Wild Hog Shanks]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[甜油桃]|cRXP_Buy_和|r|T133969:0|t[Wild Hog Shanks]|cRX|r << Paladin
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin --Sweet Nectar (20)
    .collect 3771,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin --Wild Hog Shank (20)
    .collect 3771,10,1145,1 << Paladin --Wild Hog Shank (10)
    .target Innkeeper Shay
    .money <0.4000 << !Paladin
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step
    .goto Hillsbrad Foothills,62.11,19.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
    .accept 546 >>接任务: |cRXP_LOOT_死亡的纪念品|r
    .target Deathguard Samsa
step
    #completewith Kalaba
    >>杀死|cRXP_ENEMY_Hillsbrad人类|r。掠夺他们的|cRXX_Loot_Sulls|r
    .complete 546,1,17 --Hillsbrad Human Skull (30)
step
    #completewith next
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦雷|r
    >>|cRXP_WARN_等待RP结束，然后杀死|r|cRXP_ENEMY_Enraged Stanley|r
    >>|cRXP_ENEMY_愤怒的Stanley |r|cRXP_WARN_获得了完整任务的经验|r
    .turnin 502 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
    .timer 9,Stanley RP (BE ALERT)
    .mob Stanley
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
	.complete 567,2 --Kill Citizen Wilkes (x1)
    .unitscan Citizen Wilkes
    .unitscan Enraged Stanley
step
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦雷|r
    >>|cRXP_WARN_等待RP结束，然后杀死|r|cRXP_ENEMY_Enraged Stanley|r
    >>|cRXP_ENEMY_愤怒的Stanley |r|cRXP_WARN_获得了完整任务的经验|r
    .turnin 502 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
    .timer 9,Stanley RP (BE ALERT)
    .mob Stanley
step
    #completewith next
	.goto Hillsbrad Foothills,36.00,46.50
    >>杀死|cRXP_ENEMY_Farmer Kalaba|r
    .complete 567,4 --Kill Farmer Kalaba (x1)
    .mob Farmer Kalaba
    .unitscan Enraged Stanley
step
    #completewith next
	>>杀死|cRXP_ENEMY_Hillsbrad农民|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    #label Kalaba
	.goto Hillsbrad Foothills,36.00,46.50
    >>杀死|cRXP_ENEMY_Farmer Kalaba|r
    .complete 567,4 --Kill Farmer Kalaba (x1)
    .mob Farmer Kalaba
step
#loop
	.line Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,36.03,44.40,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	>>杀死|cRXP_ENEMY_Hillsbrad农民|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r, Darthalia
    .turnin 546 >>交任务: |cRXP_FRIENDLY_死亡的纪念品|r
    .goto Hillsbrad Foothills,62.11,19.68
    .turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
    .accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .target Deathguard Samsa
    .target High Executor Darthalia
    .isQuestComplete 546
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
    .turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
    .accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .target High Executor Darthalia
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[甜瓜汁]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133970:0|t[羊排]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[瓜汁]|cRXP_Buy_和|r|T133970:0|t[Mutton Chops]|cRXP-Buy_|r << Paladin
    .collect 1205,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Melon Juice (20)
    .collect 3770,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Mutton Chop (20)
    .collect 3770,10,1145,1 << Paladin/Shaman --Mutton Chop (10)
    .target Innkeeper Shay
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin/Shaman
    .xp <20,1
    .xp >25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133969:0|t[Wild Hog Shanks]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[甜油桃]|cRXP_Buy_和|r|T133969:0|t[Wild Hog Shanks]|cRX|r << Paladin
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin --Sweet Nectar (20)
    .collect 3771,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin --Wild Hog Shank (20)
    .collect 3771,10,1145,1 << Paladin --Wild Hog Shank (10)
    .target Innkeeper Shay
    .money <0.4000 << !Paladin
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << Shaman/Warrior
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
    >>|cRXP_BUY_从他那里购买|r|T132408:0|t[Merciless Axe]|cRXP_Buy_如果它用完了|r
    .vendor >>供应商和维修
    .target Ott
    .money <3.0343 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
step << Shaman/Warrior
    #completewith Verringtan
    +装备|T132408:0|t[无情之斧]
    .use 12249
    .itemcount 12249,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
    .xp <26,1
step << Rogue
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
    >>|cRXP_BUY_从他那里购买|r|T135640:0|t[宽刃刀]|cRXP_Buy_如果它用完了|r
    .vendor >>供应商和维修
    .target Ott
    .money <2.8372 << BloodElf/Undead
    .money <2.6953 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
step << Rogue
    #completewith Verringtan
    +装备|T135640:0|t[宽刃刀]
    .use 12247
    .itemcount 12247,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
    .xp <27,1
step
    #completewith Blacksmith
    >>杀死|cRXP_ENEMY_Hillsbrad人类|r。掠夺他们的|cRXX_Loot_Sulls|r
    .complete 546,1 --Hillsbrad Human Skull (30)
step
    #completewith Verringtan
    >>杀死|cRXP_ENEMY_Hillsbrad学徒铁匠|r
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
    .mob Hillsbrad Apprentice Blacksmith
step
    #completewith next
	.goto Hillsbrad Foothills,32.56,45.95,0
	>>杀死|cRXP_ENEMY_Blacksmith Verringtan|r
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
    .mob Blacksmith Verringtan
step
    .goto Hillsbrad Foothills,32.01,45.45
    >>在地面上抢劫内部的|cRXP_PICK_运铁|r
    .complete 529,3 --Collect Shipment of Iron (x1)
step
    #label Verringtan
	.goto Hillsbrad Foothills,32.56,45.95,15,0
	.goto Hillsbrad Foothills,32.20,45.65,15,0
	.goto Hillsbrad Foothills,32.11,44.43,15,0
#loop
	.line Hillsbrad Foothills,32.56,45.95,32.20,45.65,32.11,44.33,32.56,45.95
	.goto Hillsbrad Foothills,32.56,45.95,20,0
	.goto Hillsbrad Foothills,32.20,45.65,20,0
	.goto Hillsbrad Foothills,32.11,44.33,20,0
	.goto Hillsbrad Foothills,32.56,45.95,20,0
	>>杀死|cRXP_ENEMY_Blacksmith Verringtan|r
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
    .mob Blacksmith Verringtan
step
    #label Blacksmith
#loop
	.line Hillsbrad Foothills,31.96,45.83,32.69,45.10,31.15,43.91,31.10,46.75,31.89,46.72,31.96,45.83
	.goto Hillsbrad Foothills,31.96,45.83,25,0
	.goto Hillsbrad Foothills,32.69,45.10,25,0
	.goto Hillsbrad Foothills,31.15,43.91,25,0
	.goto Hillsbrad Foothills,31.10,46.75,25,0
	.goto Hillsbrad Foothills,31.89,46.72,25,0
	.goto Hillsbrad Foothills,31.96,45.83,25,0
    >>杀死|cRXP_ENEMY_Hillsbrad学徒铁匠|r
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
    .mob Hillsbrad Apprentice Blacksmith
step
#loop
	.line Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,36.03,44.40,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
    >>杀死|cRXP_ENEMY_Hillsbrad人类|r。掠夺他们的|cRXX_Loot_Sulls|r
    .complete 546,1 --Hillsbrad Human Skull (30)
    .mob Hillsbrad Peasant
    .mob Hillsbrad Farmer
    .mob Hillsbrad Footman
    .mob Hillsbrad Councilman
    .mob Hillsbrad Apprentice Blacksmith
step
#loop
	.line Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,36.03,44.40,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
    .xp 24 >>升级到24级
step
    #xprate >1.499
	.goto Hillsbrad Foothills,62.4,20.3
    #requires humanskull
.target High Executor Darthalia
>>对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
    .turnin 529 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.target Deathguard Samsa
>>对话: |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
    .turnin 546 >>交任务: |cRXP_FRIENDLY_死亡的纪念品|r
step << Druid
#completewith next
	.cast 18960 >>使用魔法传送：月光
    .goto Moonglade,52.526,40.565
	.trainer >>去训练你的职业技能
step << Druid tbc
    .use 15883 >>点击包中的半吊坠(蓝色)，打造吊坠
	.goto Moonglade,36.2,41.8
    .complete 30,1 --Pendant of the Sea Lion (1)
step << Druid tbc
    >>上楼去
    .goto Moonglade,56.209,30.636
>>对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 30 >>交任务: |cRXP_FRIENDLY_海狮试炼|r
.target Dendrite Starblaze
    .accept 31 >>接任务: |cRXP_LOOT_水栖形态|r
step
	#completewith next
	>>我们要到稍后才会提交这些任务。
	.hs >>火炉到雷霆崖
step << Druid
    .goto Thunder Bluff,77.0,29.9
.trainer >>去训练你的职业技能
step << Hunter
    .goto Thunder Bluff,59.1,86.9
.trainer >>去训练你的职业技能
step << Hunter
    .goto Thunder Bluff,54.1,83.9
.trainer >>去训练你的宠物法术吧
step << Warrior
    .goto Thunder Bluff,57.6,85.5
.trainer >>去训练你的职业技能
step << Shaman
    .goto Thunder Bluff,22.813,20.893
.trainer >>去训练你的职业技能
step
    #xprate >1.099
    >>在灵魂升起下面的水池里
	.goto Thunder Bluff,23.1,21.0
.target Apothecary Zamah
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1067 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
    .isOnQuest 1067
step
    #xprate <1.1
    >>在灵魂升起下面的水池里
	.goto Thunder Bluff,23.1,21.0
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1067 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
.target Apothecary Zamah
    .accept 1086 >>接任务: |cRXP_LOOT_地精空港|r
    .isOnQuest 1067
step << Priest
    .goto Thunder Bluff,24.6,22.6
.trainer >>去训练你的职业技能
step << Mage
    .goto Thunder Bluff,25.2,20.9
.trainer >>去训练你的职业技能
step
    >>前往图腾塔
    .goto Thunder Bluff,46.8,50.1
    .fly Camp Taurajo >>飞往陶拉霍营地
step << Tauren wotlk
    .money <5.00
    .goto Mulgore,47.5,58.5
    .train 713 >>前往血蹄村。坐火车，买你的坐骑
step << Warrior
    >>在大楼里
	.goto The Barrens,44.7,59.4
>>对话: |cRXP_FRIENDLY_鲁迦·暴怒图腾|r
	.turnin 1823 >>交任务: |cRXP_FRIENDLY_和鲁迦交谈|r
.target Ruga Ragetotem
    .accept 1824 >>接任务: |cRXP_LOOT_巨人旷野的试炼|r
step
    .maxlevel 28
    >>与笼子里的芒果对话，如果你上次没有抓到的话，就从鞑靼人那里捡起选择武器
.target Mangletooth
>>对话: |cRXP_FRIENDLY_碎牙|r
    .accept 879 >>接任务: |cRXP_LOOT_内奸|r
    .goto The Barrens,44.6,59.2
.target Tatternack Steelforge
>>对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
    .accept 893 >>接任务: |cRXP_LOOT_野猪人的武器|r
    .goto The Barrens,45.0,57.6
step
	#label Owatanka2
	#completewith next
    .maxlevel 29
	.goto The Barrens,44.2,62.1,75,0
	.goto The Barrens,49.2,62.6,75,0
	.goto The Barrens,49.6,60.0,75,0
	>>在该区域周围搜索Owatanka(蓝雷蜥蜴)。如果你找到他，抢走他的尾钉并开始任务。如果你找不到他，跳过这个任务
	.collect 5102,1,884 --Collect Owatanka's Tailspike
    .use 5102
	.accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
	.unitscan Owatanka
step << Warrior
    >>杀死该地区的Silithid暴徒。抢走他们的Twitching Antenna。速度要快，因为他们有15米的持续时间
	.goto The Barrens,48.1,70.3
	.complete 1824,1 --Twitching Antenna (5)
step << Warrior
    >>在大楼里
	.goto The Barrens,44.7,59.4
    .turnin -1824 >>交任务: |cRXP_FRIENDLY_巨人旷野的试炼|r
step << Warrior
    #xprate <1.5
    .goto The Barrens,44.7,59.4
.target Ruga Ragetotem
>>对话: |cRXP_FRIENDLY_鲁迦·暴怒图腾|r
    .accept 1825 >>接任务: |cRXP_LOOT_和索恩格瑞姆交谈|r
step
    #sticky
    #label Washte
    #completewith next
    .goto The Barrens,44.7,74.7,0
    .goto The Barrens,44.7,77.8,0
    .goto The Barrens,47.6,79.8,0
    >>在该区域周围搜索Washte Pawne(红风蛇)。他放弃了一项任务。
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .unitscan Washte Pawne
step << Shaman
	.goto The Barrens,43.4,77.4
>>对话: |cRXP_FRIENDLY_布瑞恩|r
	.turnin 1536 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Brine
	.accept 1534 >>接任务: |cRXP_LOOT_水之召唤|r
step
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
.target Gann Stonespire
>>对话: |cRXP_FRIENDLY_加恩·石塔|r
    .accept 843 >>接任务: |cRXP_LOOT_加恩的报复|r
    .unitscan Gann Stonespire
    .maxlevel 28
step
    #sticky
    #label Washte
    #completewith next
    .goto The Barrens,44.7,74.7,0
    >>在该区域周围搜索Washte Pawne(红风蛇)。他放弃了一项任务。如果你在最后一个地方找不到他，就跳过任务
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .unitscan Washte Pawne
step
    #sticky
    #label Weapons
    .isOnQuest 893
    .goto The Barrens,43.4,78.8,30,0
    .goto The Barrens,40.4,80.8,30,0
    .goto The Barrens,43.8,83.5,30,0
    >>在选择武器区杀死暴徒。追踪者或探路者的暗杀者、先知的魔杖和战争狂乱的盾牌
    .complete 893,1 --Collect Razormane Backstabber (x1)
    .complete 893,2 --Collect Charred Razormane Wand (x1)
    .complete 893,3 --Collect Razormane War Shield (x1)
step
    .isOnQuest 879
	.goto The Barrens,43.4,78.8
    >>库兹绕着山脊走。杀了她，抢了她的头骨。
    .complete 879,1 --Collect Kuz's Skull (x1)
	.unitscan Kuz
step
    .isOnQuest 879
    .goto The Barrens,40.4,80.8
    >>洛克在斜坡上的大楼里。杀掉并掠夺他的头骨。
    .complete 879,3 --Collect Lok's Skull (x1)
	.unitscan Lok Orcbane
step
    .isOnQuest 879
    .goto The Barrens,43.8,83.5
    >>纳克位于山脊的南部。杀掉并掠夺他的头骨。
    .complete 879,2 --Collect Nak's Skull (x1)
	.unitscan Nak
step
    #requires Weapons
    #sticky
    #label Baeldun
    .isOnQuest 843
	.goto The Barrens,48.3,86.2,0,0
    >>为了甘恩的复垦，杀死该地区的矮人
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .complete 843,2 --Kill Bael'dun Foreman (x5)
step
    #requires Weapons
    .isOnQuest 843
	>>杀死探矿者哈兹戈姆。抢他的日记
	.goto The Barrens,48.3,86.2
	.complete 843,3 --Collect Khazgorm's Journal (x1)
step
    #sticky
    #label Washte
    #completewith next
    >>在该区域周围搜索Washte Pawne(红风蛇)。他放弃了一项任务。如果你找不到他，就跳过任务
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .unitscan Washte Pawne
step
    .isOnQuest 843
    .unitscan Gann Stonespire
    #requires Baeldun
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    >>再次在路上找到甘恩
.target Gann Stonespire
>>对话: |cRXP_FRIENDLY_加恩·石塔|r
    .turnin 843 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
step
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
.target Gann Stonespire
>>对话: |cRXP_FRIENDLY_加恩·石塔|r
    .accept 846 >>接任务: |cRXP_LOOT_加恩的报复|r
step
    >>杀掉暴徒并掠夺他们以报仇甘恩
	.goto The Barrens,49.4,84.3
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
step
    #sticky
    #label Washte
    #completewith wpscout1
    >>在该区域周围搜索Washte Pawne(红风蛇)。他放弃了一项任务。如果你找不到他，就跳过任务
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .unitscan Washte Pawne
step
    #label wpscout1
    .isQuestComplete 846
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    >>再次在路上找到甘恩
.target Gann Stonespire
>>对话: |cRXP_FRIENDLY_加恩·石塔|r
    .turnin 846 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
    .unitscan Gann Stonespire
step
    .isQuestTurnedIn 846
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
.target Gann Stonespire
>>对话: |cRXP_FRIENDLY_加恩·石塔|r
    .accept 849 >>接任务: |cRXP_LOOT_加恩的报复|r
step
    .isOnQuest 849
    >>右键单击飞行机器。这有一个很大的范围，你可以从下面很远的地方做，而不是到平台的顶部。
    .goto The Barrens,46.97,85.63
    .complete 849,1 --Collect Bael Modan Flying Machine destroyed (x1)
step
    #sticky
    #label Washte
    #completewith wpscout2
    >>在该区域周围搜索Washte Pawne(红风蛇)。他放弃了一项任务。如果你找不到他，就跳过任务
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .unitscan Washte Pawne
step
    #label wpscout2
    .isOnQuest 849
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    >>再次找到甘恩
.target Gann Stonespire
>>对话: |cRXP_FRIENDLY_加恩·石塔|r
    .turnin 849 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
    .unitscan Gann Stonespire
step
    .goto The Barrens,44.6,59.2
    >>Talk to Mangletooth in the cage
    .isOnQuest 879
>>对话: |cRXP_FRIENDLY_碎牙|r
    .turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r
.target Mangletooth
    .accept 906 >>接任务: |cRXP_LOOT_内奸|r
step
    .goto The Barrens,45.102,57.683
    .isOnQuest 893
>>对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
    .turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.target Tatternack Steelforge
    .accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
step
    .isOnQuest 885
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
step
    .isOnQuest 884
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
step
    .isOnQuest 883
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 883 >>交任务: |cRXP_FRIENDLY_拉克塔曼尼|r
step
    .goto The Barrens,51.5,30.3
    .fly Crossroads >>飞向十字路口
step
    .isOnQuest 906
    .goto The Barrens,51.5,30.9
.target Thork
>>对话: |cRXP_FRIENDLY_索克|r
    .turnin 906 >>交任务: |cRXP_FRIENDLY_内奸|r
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 25-26 石爪山脉
#next 26-30灰谷/千针石林
#version 1
#group RestedXP部落1-30
#xprate <1.5

step
    .goto The Barrens,51.5,30.3
    .fly Sun Rock >>飞到石爪山
step
    .goto Stonetalon Mountains,45.90,60.40
.target Braelyn Firehand
>>对话: |cRXP_FRIENDLY_布莱林·火拳|r
    .accept 1087 >>接任务: |cRXP_LOOT_塞纳留斯的遗产|r
step
    .goto Stonetalon Mountains,47.30,64.30
.target Tsunaman
>>对话: |cRXP_FRIENDLY_苏纳曼|r
    .accept 6393 >>接任务: |cRXP_LOOT_元素战争|r
step
    .goto Stonetalon Mountains,47.40,58.40
.target Tammra Windfield
>>对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
    .accept 6301 >>接任务: |cRXP_LOOT_生生不息|r
step
    .goto Stonetalon Mountains,47.30,61.10
.target Maggran Earthbinder
>>对话: |cRXP_FRIENDLY_马格兰|r
    .accept 5881 >>接任务: |cRXP_LOOT_召回卫兵|r
    .accept 6282 >>接任务: |cRXP_LOOT_鹰身人的威胁|r
step
    .goto Stonetalon Mountains,59.00,62.60
.target Ziz Fizziks
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .accept 1096 >>接任务: |cRXP_LOOT_格雷苏|r
step
	.isOnQuest 1086
    .goto Stonetalon Mountains,66.40,45.40
     >>放置有毒烟雾器
    .complete 1086,1
step
    .goto Stonetalon Mountains,64.48,40.25
    >>爬上山去寻找格伦佐。清除他周围的暴徒，杀死他。
    .complete 1096,1
    .unitscan Gerenzo Wrenchwhistle
step
    .goto Stonetalon Mountains,62.6,40.2
	.vendor >>在平台结束时，从供应商处购买装备升级。他有机会为每个职业升级装备。
step
    .goto Stonetalon Mountains,58.98,62.59
.target Ziz Fizziks
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1096 >>交任务: |cRXP_FRIENDLY_格雷苏|r
step
    .goto Stonetalon Mountains,50.64,36.60,0,0
     >>穿过湖面和湖面时，掠夺盖亚种子。
    .complete 6301,1
step
    .goto Stonetalon Mountains,35.84,13.09
	>>杀死该地区的仙女和暗夜精灵
    .complete 1087,1
    .complete 1087,2
    .complete 1087,3
step
	#completewith next
    .goto Stonetalon Mountains,32.60,67.40,0
     >>杀死火元素。为Increndrite掠夺他们
    .complete 6393,1
step
    .goto Stonetalon Mountains,31.10,61.27
	>>杀死哈比。当你生命值低于20%时，当杀戮者处决你时要小心，低冷却时，Amburses会因大量瞬间伤害而休克，Roguefeets会猛击(大约每10秒一次多次攻击)
    .complete 6282,1
    .complete 6282,2
    .complete 6282,3
    .complete 6282,4
step
	#completewith next
    .goto Stonetalon Mountains,38.7,68.6,50 >>从西侧进入太阳岩度假区
step
    .goto Stonetalon Mountains,46.00,60.50
     >>前往太阳岩度假区
>>对话: |cRXP_FRIENDLY_布莱林·火拳|r
    .turnin 1087 >>交任务: |cRXP_FRIENDLY_塞纳留斯的遗产|r
.target Braelyn Firehand
    .accept 1088 >>接任务: |cRXP_LOOT_奥达努斯|r
step
    .goto Stonetalon Mountains,47.10,61.10
>>对话: |cRXP_FRIENDLY_马格兰|r
    .turnin 6282 >>交任务: |cRXP_FRIENDLY_鹰身人的威胁|r
.target Maggran Earthbinder
    .accept 6283 >>接任务: |cRXP_LOOT_血怒一族|r
step
    .goto Stonetalon Mountains,47.40,58.50
>>对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
    .turnin 6301 >>交任务: |cRXP_FRIENDLY_生生不息|r
.target Tammra Windfield
    .accept 6381 >>接任务: |cRXP_LOOT_新的生命|r
step
	#completewith next
    .goto Stonetalon Mountains,32.60,67.40,0
     >>杀死火元素。为Increndrite掠夺他们
    .complete 6393,1
step
	#sticky
	#completewith Ripper
    .goto Stonetalon Mountains,31.10,61.27,0
	>>在烧焦谷的土堆里种树
	.complete 6381,1
step
    .goto Stonetalon Mountains,32.60,67.40
     >>杀死火元素。为Increndrite掠夺他们
    .complete 6393,1
step
    #label Ripper
    .goto Stonetalon Mountains,30.75,61.91
    .complete 6283,1
    .unitscan Bloodfury Ripper
step
    .goto Stonetalon Mountains,31.10,61.27
	>>在烧焦谷的土堆里种树
	.complete 6381,1
step
    .goto Stonetalon Mountains,38.7,68.6,50,0
    .goto Stonetalon Mountains,47.20,64.40
     >>返回太阳岩度假区
.target Tsunaman
>>对话: |cRXP_FRIENDLY_苏纳曼|r
    .turnin 6393 >>交任务: |cRXP_FRIENDLY_元素战争|r
step
    .isQuestComplete 6283
    .goto Stonetalon Mountains,47.19,61.15
.target Maggran Earthbinder
>>对话: |cRXP_FRIENDLY_马格兰|r
    .turnin 6283 >>交任务: |cRXP_FRIENDLY_血怒一族|r
step
    .goto Stonetalon Mountains,47.46,58.37
.target Tammra Windfield
>>对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
    .turnin 6381 >>交任务: |cRXP_FRIENDLY_新的生命|r
]])


RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 26-30灰谷/千针石林
#version 1
#group RestedXP部落1-30
#next RestedXP 部落 30-45\30-33 希尔斯布莱德丘陵/阿拉希高地/闪光平原
#xprate <1.5

step
    .goto Stonetalon Mountains,45.2,69.8,-1
    .goto The Barrens,51.6,30.4,-1
	.fly Orgrimmar >>飞往奥格瑞玛
step << Paladin
    #completewith next
    .goto Orgrimmar,32.4,35.8
.trainer >>去训练你的职业技能
step << Shaman
    #completewith next
    .goto Orgrimmar,38.6,36.0
.trainer >>去训练你的职业技能
step << Hunter
    #completewith next
    .goto Orgrimmar,66.046,18.526
.trainer >>去训练你的职业技能
step << Hunter
    #completewith next
    .goto Orgrimmar,66.3,14.8
.trainer >>去训练你的宠物法术吧
step << Warrior
    #completewith next
    .goto Orgrimmar,79.7,31.4
.trainer >>去训练你的职业技能
step << Rogue
    #completewith next
    .goto Orgrimmar,44.0,54.6
.trainer >>去训练你的职业技能
step << Warlock
    #completewith next
    .goto Orgrimmar,47.983,45.933
.trainer >>去训练你的职业技能
step << Mage
    #completewith next
    .goto Orgrimmar,38.8,85.6
.trainer >>去训练你的职业技能
step << Priest
    #completewith next
    .goto Orgrimmar,35.6,87.8
.trainer >>去训练你的职业技能
step << Orc !Warlock wotlk
	.money <5.00
	.goto Orgrimmar,63.3,12.8
	.train 149 >>前往荣誉谷。乘坐火车并购买您的坐骑
step << Troll !Warlock wotlk
	.money <5.00
	.goto Durotar,55.2,75.5
	.train 533 >>前往Durotar的Sen'jin村乘坐火车并购买您的坐骑
step
    #completewith fp12
    .goto Orgrimmar,16.2,62.2,30  >>前往: |cRXP_PICK_杜隆塔尔|r through the west exit
step
    #completewith fp12
    .goto Ashenvale,94.7,76.8,30  >>沿着河边跑
step
    #completewith fp12
    .goto Ashenvale,90.8,66.9,30  >>在这里跑上坡道
step
    #completewith fp12
    .goto Ashenvale,89.2,68.4,30  >>爬上斜坡。小心28/29级蜘蛛暴徒
step
    #completewith fp12
    .goto Ashenvale,88.5,64.9,40  >>跑向伐木营地
step
    #completewith fp12
    .goto Ashenvale,81.7,62.9,80  >>穿过营地跑到这里
step
    #label fp12
    .goto Ashenvale,73.2,61.6
    .fp Splintertree >>获取Splinterree Post飞行路径
step
.target Pixel
>>对话: |cRXP_FRIENDLY_皮克希尔|r
    .accept 6441 >>接任务: |cRXP_LOOT_萨特之角|r
    .goto Ashenvale,73.1,61.5
.target Senani Thunderheart
>>对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
    .turnin 6383 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
    .goto Ashenvale,73.8,61.5
step << Rogue
    #completewith next
    .isOnQuest 216
    .goto Ashenvale,74.0,60.6
	.home >>将炉石设置为Splinterree Post
step
    .goto Ashenvale,73.6,60.0
.target Mastok Wrilehiss
>>对话: |cRXP_FRIENDLY_马斯托克·维尔西斯|r
    .accept 25 >>接任务: |cRXP_LOOT_石爪山的困境|r
step << BloodElf
    .goto Ashenvale,71.3,67.8
.target Advisor Sunsworn
>>对话: |cRXP_FRIENDLY_顾问萨苏恩·誓日|r
    .turnin 9428 >>交任务: |cRXP_FRIENDLY_前往碎木岗哨|r
    .isOnQuest 9428
step
    .goto Ashenvale,71.105,68.118
.target Kuray'bin
>>对话: |cRXP_FRIENDLY_库莱比|r
    .accept 6503 >>接任务: |cRXP_LOOT_灰谷先驱者|r
step
 >>杀死在该地区潜行的灰谷先锋。
.goto Ashenvale,72.5,72.5,40,0
    .goto Ashenvale,76.3,71.1,40,0
    .goto Ashenvale,76.3,67.3,40,0
    .goto Ashenvale,72.5,72.5
    .complete 6503,1 --Kill Ashenvale Outrunner (x9)
    .unitscan Ashenvale Outrunner
step
    .goto Ashenvale,68.3,75.3
.target Torek
>>对话: |cRXP_FRIENDLY_托雷克|r
    .accept 6544 >>接任务: |cRXP_LOOT_托雷克的突袭|r
    >>如果他不在那里，他可以花几分钟来重生
step
    >>跟随Torek。这个任务可能有点难。它会在建筑内产生一个波浪敌人。您可能需要跳过。
    >>尽可能跑进大楼。让Torek干掉一些暴徒。如果你死了，放弃这个任务。
    * Use your voidwalker here << Warlock
    .goto Ashenvale,64.6,75.3
    .complete 6544,1 --Take Silverwing Outpost.
step
    #sticky
    #completewith next
	.goto Ashenvale,72.3,49.8,50 >>沿着河边跑到这里
step
    >>杀死该地区的萨特尔斯。抢走他们的角
.goto Ashenvale,68.2,54.0
    .complete 6441,1 --Collect Satyr Horns (x16)
step
    #xprate <1.1
    .goto Ashenvale,62.07,51.32
	>>兵马俑可能很难对付，你应该试着炸开他，掠夺他，然后从大楼里跳下来。
    .complete 1088,1 --Ordanus' Head (1)
step
    #sticky
    #completewith next
    >>杀死笑姐妹直到她们掉下一个蚀刻的药水
    .collect 5867 --Collect Etched Phial (x1)
step
    .use 16304 >>寻找黑影(一只黑豹)并掠夺她以获得黑影之头，然后点击它接受任务。
	.goto Ashenvale,62.2,49.6,40,0
    .goto Ashenvale,58.0,56.2,40,0
    .goto Ashenvale,51.9,54.3,40,0
    .goto Ashenvale,61.2,51.5,40,0
	.goto Ashenvale,62.2,49.6,40,0
    .goto Ashenvale,58.0,56.2,40,0
    .goto Ashenvale,51.9,54.3,40,0
    .goto Ashenvale,61.2,51.5
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >>接任务: |cRXP_LOOT_萨杜布拉的头颅|r
	.unitscan Shadumbra
step
    >>杀死笑姐妹直到她们掉下蚀刻的药水
    .goto Ashenvale,61.3,51.9
    .collect 5867 --Collect Etched Phial (x1)
step << Rogue
    .goto Ashenvale,16.3,29.8,90 >>前往Zoram'gar前哨。途中一定要避开阿斯特拉纳卫队
step << Rogue
    #completewith next
    .goto Ashenvale,12.3,33.8
    .fp Zoram >>获取Zoram'gar前哨飞行路线
step << Rogue
    .goto Ashenvale,11.8,34.7
.target Karang Amakkar
>>对话: |cRXP_FRIENDLY_卡拉恩·阿玛卡|r
    .accept 216 >>接任务: |cRXP_WARN_蓟皮熊怪的麻烦|r
step << Rogue
    >>Talk to the trolls in the hut
    .goto Ashenvale,11.6,34.9
.target Mitsuwa
>>对话: |cRXP_FRIENDLY_米苏瓦|r
    .accept 6462 >>接任务: |cRXP_LOOT_巨魔符咒|r
step << Rogue
    .isQuestComplete 6562
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6562 >>交任务: |cRXP_FRIENDLY_帮助耶努萨克雷|r
step << Rogue
    >>Accepting this quest starts an escort. Follow him
    .goto Ashenvale,12.1,34.4
.target Muglash
>>对话: |cRXP_FRIENDLY_穆格拉什|r
    .accept 6641 >>接任务: |cRXP_WARN_鞭笞者沃尔沙|r
step << Rogue
    >>单击钎焊器。会有纳加海浪产卵。一旦沃沙出来，让莫格拉什在与他战斗之前先发脾气。
    .goto Ashenvale,9.8,27.4
    .complete 6641,1 --Defeat Vorsha the Lasher
    .isOnQuest 6641
step
    #requires Phial
	.goto Ashenvale,38.5,36.1,50 >>跑到Thistlefur村
    .isOnQuest 216
step
    #sticky
    #completewith next
    >>在前往洞穴的途中杀死一些伏波族人
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .complete 216,1 --Kill Thistlefur Avenger (x8)
    .isOnQuest 216
step
    .goto Ashenvale,38.4,30.6,30 >>撞上Thistlefur Hold
    .isOnQuest 216
step
    >>掠夺隧道内的小箱子。
    .complete 6462,1 --Collect Troll Charm (x8)
    .isOnQuest 6462
step
    >>这将启动护送。准备好后启动。
    .goto Ashenvale,41.5,34.5
.target Ruul Snowhoof
>>对话: |cRXP_FRIENDLY_鲁尔·雪蹄|r
    .accept 6482 >>接任务: |cRXP_LOOT_鲁尔的自由|r
    .isOnQuest 216
step
    #completewith escortfi
    >>在护送鲁尔时杀死任务暴徒
    .complete 216,2 --Kill Thistlefur Shaman (x8)
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .isOnQuest 216
step
    #label escortfi
    .goto Ashenvale,38.5,36.4
    .complete 6482,1 --Escort Ruul from the Thistlefurs.
    .isOnQuest 6482
step
    >>完成杀死Furbolgs
    .complete 216,2 --Kill Thistlefur Shaman (x8)
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .isOnQuest 216
step << Shaman
    .use 7767 >>填充水膜
    .goto Ashenvale,33.5,67.5
    .complete 1534,1 --Filled Blue Waterskin (1)
step
    .goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
    .goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
    .goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
    .goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
    .goto Ashenvale,44.3,68.6
    .use 16303 >>寻找乌尔桑古斯(熊)。他顺时针巡逻。为乌尔桑戈斯之爪杀死并掠夺他，然后点击它接受任务。
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >>接任务: |cRXP_LOOT_乌萨苟斯的爪子|r
	.unitscan Ursangous
step
    #sticky
    #label Tideress
    .use 16408 >>杀死湖心附近的守卫。抢她一个被污染的水球，然后点击它接受任务
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>接任务: |cRXP_LOOT_被污染的水元素|r
	.unitscan Tideress
step
    #sticky
    #completewith next
    >>杀死湖中的水元素
    .complete 25,1 --Kill Befouled Water Elemental (x12)
step
    >>在湖心的凉亭下奔跑
	.goto Ashenvale,48.93,69.56
    .complete 25,2 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost.
step
    >>杀死湖中的水元素
	.goto Ashenvale,48.9,69.6
    .complete 25,1 --Kill Befouled Water Elemental (x12)
step
    #requires Tideress
	.use 5867 >>使用早期月光井的蚀刻Phial
	.goto Ashenvale,60.2,72.9
    .complete 1195,1 --Collect Filled Etched Phial (x1)
step
    #xprate <1.5
    .goto Ashenvale,71.2,68.1
.target Kuray'bin
>>对话: |cRXP_FRIENDLY_库莱比|r
    .turnin 6503 >>交任务: |cRXP_FRIENDLY_灰谷先驱者|r
step
    .goto Ashenvale,72.4,72.1,40,0
    .goto Ashenvale,75.7,70.0,40,0
    .goto Ashenvale,78.2,65.5,40,0
    .goto Ashenvale,72.4,72.1,40,0
    .goto Ashenvale,75.7,70.0,40,0
    .goto Ashenvale,78.2,65.5,40,0
    .goto Ashenvale,75.3,72.0,0
	.use 16305 >>找夏普塔隆(大鸟)。他顺时针巡逻。杀了他，抢走了他的利爪。接受它的任务。将他单独降到大约60%的生命值，然后风筝将他带到亡灵营地杀死他。
    .collect 16305,1,2 --Collect Sharptalon's Claw
    .accept 2 >>接任务: |cRXP_LOOT_沙普塔隆的爪子|r
	.unitscan Sharptalon
step
    .isQuestComplete 6544
    >>回镇上去
.target Ertog Ragetusk
>>对话: |cRXP_FRIENDLY_埃尔托格·怒齿|r
    .turnin 6544 >>交任务: |cRXP_FRIENDLY_托雷克的突袭|r
    .goto Ashenvale,73.1,62.5
step
    .goto Ashenvale,73.8,61.5
.target Senani Thunderheart
>>对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
    .turnin 2 >>交任务: |cRXP_FRIENDLY_沙普塔隆的爪子|r
    .turnin 24 >>交任务: |cRXP_FRIENDLY_萨杜布拉的头颅|r
    .turnin 23 >>交任务: |cRXP_FRIENDLY_乌萨苟斯的爪子|r
    .turnin 247 >>交任务: |cRXP_FRIENDLY_完成狩猎|r
step
    .goto Ashenvale,73.7,60.0
.target Mastok Wrilehiss
>>对话: |cRXP_FRIENDLY_马斯托克·维尔西斯|r
    .turnin 25 >>交任务: |cRXP_FRIENDLY_石爪山的困境|r
    .turnin 1918 >>交任务: |cRXP_FRIENDLY_被污染的水元素|r
step
    .goto Ashenvale,73.7,60.0
    .abandon 1918 >>放弃被污染的元素
    .destroy 16408 >>摧毁: |cRXP_ENEMY_被污染的水球|r
step
    #xprate <1.5
    .goto Ashenvale,73.7,60.0
    .isOnQuest 216
.target Mastok Wrilehiss
>>对话: |cRXP_FRIENDLY_马斯托克·维尔西斯|r
    .accept 824 >>接任务: |cRXP_LOOT_陶土议会的耶努萨克雷|r
step
    >>前往客栈
    .goto Ashenvale,74.114,60.917
.target Yama Snowhoof
>>对话: |cRXP_FRIENDLY_雅玛·雪蹄|r
    .turnin 6482 >>交任务: |cRXP_FRIENDLY_鲁尔的自由|r
    .isOnQuest 6482
step
    #xprate >1.499
    .goto Ashenvale,71.2,68.1
.target Kuray'bin
>>对话: |cRXP_FRIENDLY_库莱比|r
    .turnin 6503 >>交任务: |cRXP_FRIENDLY_灰谷先驱者|r
step
    .goto Ashenvale,73.1,61.5
.target Pixel
>>对话: |cRXP_FRIENDLY_皮克希尔|r
    .turnin 6441 >>交任务: |cRXP_FRIENDLY_萨特之角|r
step
    #xprate <1.5
	#completewith next
    .isOnQuest 216
    .goto Ashenvale,73.2,61.5
    .fly Zoram'gar >>飞往佐拉姆加前哨
step
    #xprate <1.5
    .goto Ashenvale,11.897,34.535
.target Karang Amakkar
>>对话: |cRXP_FRIENDLY_卡拉恩·阿玛卡|r
    .turnin 216 >>交任务: |cRXP_FRIENDLY_蓟皮熊怪的麻烦|r
    .isOnQuest 216
step
    #xprate <1.5
    .goto Ashenvale,11.7,34.8
.target Mitsuwa
>>对话: |cRXP_FRIENDLY_米苏瓦|r
    .turnin 6462 >>交任务: |cRXP_FRIENDLY_巨魔符咒|r
    .isOnQuest 6462
step
    #xprate <1.5
    .isQuestTurnedIn 6462
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 824 >>交任务: |cRXP_FRIENDLY_陶土议会的耶努萨克雷|r
step << Rogue
    #label zoramend
    #requires wrathtailhead
    >>返回佐拉姆加前哨。
    .goto Ashenvale,12.223,34.216
.target Warsong Runner
>>对话: |cRXP_FRIENDLY_战歌信使|r
    .turnin 6641 >>交任务: |cRXP_FRIENDLY_鞭笞者沃尔沙|r
    .isQuestComplete 6641
step << Rogue
    .goto Ashenvale,11.59,34.27
.target Je'neu Sancrea
>>对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .accept 6921 >>接任务: |cRXP_LOOT_废墟之间|r
    .accept 6563 >>接任务: |cRXP_WARN_阿库麦尔水晶|r
step << Rogue
    .goto Ashenvale,14.0,15.0,100 >>前往Blackfathom Deeps的入口
step << Rogue
    .goto Ashenvale,13.15,12.96
	>>杀死布莱克法索姆潮汐女祭司直到湿气音符掉落。开始任务
	.collect 16790,1,6564
    .accept 6564 >>接任务: |cRXP_WARN_上古之神的仆从|r
step << Rogue
    .goto Ashenvale,17.04,12.29
	>>潜入地牢，掠夺墙上的20个蓝宝石
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step << Rogue
	#completewith next
	+要独奏这个任务，你需要以两种方式正确演奏。首先，你不需要死气沉沉，这意味着在你与老板争吵之前，你应该充分呼吸。第二件事要注意的是，你需要尽可能地踢出每一个冰雹，并在踢过之后使用回避。他的大部分损失将来自霜冻。记住，你可以消失，5分钟后再试一次，只要你不气死。
	.link https://youtu.be/ehXV0stmDrM?t=202 >>单击此处获取有关此部分的指南
step << Rogue
	>>一路潜行到月光废墟，然后在桥下游泳，为老板做准备(使用你所有的增益)
	>>掠夺深渊核心，这就产生了首领。
	>>从阿奎尼斯男爵手中抢走地球仪。接受任务
	.collect 16762,1,6922
	.accept 6922 >>接任务: |cRXP_LOOT_阿奎尼斯男爵|r
step << Rogue
    .hs >>壁炉到Splinterree Post
	>>如果需要，购买食物/水
step << Druid
#completewith next
    .cast 18960 >>Use the spell 前往: |cRXP_PICK_月光林地|r
    .goto Moonglade,52.526,40.565
	.trainer >>去训练你的职业技能
step << !Rogue
    #completewith next
    .hs >>使用你的炉石来雷霆断崖
step << Rogue
    .goto Ashenvale,73.2,61.6
    .fly Orgrimmar >>飞往奥格瑞玛
step << Rogue
    #completewith flytimebabyyy
    .goto Orgrimmar,44.0,54.6
	.trainer >>去训练你的职业技能
step << Rogue
    #label flytimebabyyy
	.goto Orgrimmar,45.120,63.889,-1
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
step
	.goto Thunder Bluff,55.2,51.5
>>对话: |cRXP_FRIENDLY_赞金·石蹄|r
    .turnin 1195 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.target Zangen Stonehoof
    .accept 1196 >>接任务: |cRXP_WARN_神圣之火|r
step << Warrior tbc/Paladin/Shaman
    .goto Thunder Bluff,54.0,57.3
    .vendor >>如果你在希尔斯布莱德丘陵没有得到一把无情的斧头，就买一把吧
    .collect 12249,1
step << Hunter
    .goto Thunder Bluff,46.9,45.7
    .vendor >>如果商店里有Sturdy Recurve，那就去买。
    .collect 11306,1
step << Druid
    .goto Thunder Bluff,77.0,29.9
	.trainer >>去训练你的职业技能
.target Turak Runetotem
>>对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
	.turnin 31 >>交任务: |cRXP_FRIENDLY_水栖形态|r << tbc
step << Hunter
	#completewith hearth
    .goto Thunder Bluff,59.1,86.9
	.trainer >>去训练你的职业技能
step << Hunter
	#completewith hearth
    .goto Thunder Bluff,54.1,83.9
	.trainer >>去训练你的宠物法术吧
step << Warrior
	#completewith hearth
    .goto Thunder Bluff,57.6,85.5
	.trainer >>去训练你的职业技能
step << Shaman
	#completewith hearth
    .goto Thunder Bluff,22.813,20.893
	.trainer >>去训练你的职业技能
step
    #xprate <1.1
	.isOnQuest 1086
    .goto Thunder Bluff,22.80,20.80
.target Apothecary Zamah
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1086 >>交任务: |cRXP_FRIENDLY_地精空港|r
step << Priest
	#completewith hearth
    .goto Thunder Bluff,24.6,22.6
	.trainer >>去训练你的职业技能
step << Mage
	#completewith hearth
    .goto Thunder Bluff,25.2,20.9
	.trainer >>去训练你的职业技能
step
    .goto Thunder Bluff,61.0,81.0
.target Melor Stonehoof
>>对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .accept 1131 >>接任务: |cRXP_LOOT_钢齿土狼|r
step << Rogue
    #label hearth
	#completewith next
	.goto Thunder Bluff,45.814,64.711
	.home >>将您的炉石设置为雷霆崖
step
    >>前往图腾塔
    .goto Thunder Bluff,46.8,50.1
    .fly Camp Taurajo >>飞往陶拉霍营地
step << Shaman
    .goto The Barrens,43.4,77.4
>>对话: |cRXP_FRIENDLY_布瑞恩|r
    .turnin 1534 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Brine
    .accept 220 >>接任务: |cRXP_LOOT_水之召唤|r
step
	.isOnQuest 5881
    .goto The Barrens,44.00,92.00
.target Grish Longrunner
>>对话: |cRXP_FRIENDLY_瑞什·远行者|r
    .turnin 5881 >>交任务: |cRXP_FRIENDLY_召回卫兵|r
step
    .goto Thousand Needles,32.2,22.2
    >>向南朝向千针
.target Brave Moonhorn
>>对话: |cRXP_FRIENDLY_卫兵穆赫·月角|r
    .accept 4542 >>接任务: |cRXP_LOOT_给乱风岗的紧急信件|r
step
    #sticky
    #completewith next
    .use 12564 >>注意Galak Messenger。如果你看到了，杀了他，抢走笔记，接受任务。如果你找不到他，你也可以找他。
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
    .unitscan Galak Messenger
step
    #sticky
    #completewith next
    >>乘电梯下来，然后跑到Freewind Post
    .goto Thousand Needles,47.1,48.3,60
step
    >>Accept quests around Freewind Post
.target Magistrix Elosai
>>对话: |cRXP_FRIENDLY_魔导师艾洛塞|r
    .accept 9431 >>接任务: |cRXP_LOOT_另一条路|r
    .goto Thousand Needles,46.1,50.5
    .accept 5147 >>接任务: |cRXP_LOOT_通缉：阿纳克·恐怖图腾|r
    .goto Thousand Needles,45.9,50.9
step
    .goto Thousand Needles,46.1,51.7
    .isOnQuest 1196
>>对话: |cRXP_FRIENDLY_拉乌·峭壁信使|r
    .turnin 1196 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.target Rau Cliffrunner
    .accept 1197 >>接任务: |cRXP_WARN_神圣之火|r
step
    .goto Thousand Needles,45.6,50.8
>>对话: |cRXP_FRIENDLY_峭壁卫兵图林·长角|r
    .turnin 4542 >>交任务: |cRXP_FRIENDLY_给乱风岗的紧急信件|r
.target Cliffwatcher Longhorn
    .accept 4841 >>接任务: |cRXP_LOOT_清除半人马|r
step
.target Elu
>>对话: |cRXP_FRIENDLY_艾鲁|r
    .accept 4767 >>接任务: |cRXP_LOOT_驭风者|r
    .goto Thousand Needles,44.8,49.1
.target Hagar Lightninghoof
>>对话: |cRXP_FRIENDLY_哈加尔·雷蹄|r
    .accept 4821 >>接任务: |cRXP_LOOT_异型卵|r
    .goto Thousand Needles,44.7,50.2
step << Hunter
#completewith next
    .goto Thousand Needles,44.9,50.7
    .vendor >>如果商店里有密集短裤，就去买。
    .collect 11305,1
step
    .goto Thousand Needles,45.1,49.2
    .fp Freewind Post >>获取Freewind Post飞行路径
step
    #sticky
    #completewith next
    .isOnQuest 1197
    >>进入Galak洞穴。沿着左边跑。杀死途中的半人马
    .goto Thousand Needles,44.0,37.4,40
step
    #sticky
    #completewith next
    >>杀死该地区的半人马
    .goto Thousand Needles,41.3,37.7,0,0
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .complete 4841,1 --Kill Galak Scout (x12)
    .complete 4841,2 --Kill Galak Wrangler (x10)
step
    >>掠夺洞穴系统末端的铜器。一旦你到了山洞的十字路口，向左拐。
    .goto Thousand Needles,42.0,31.5
    .complete 1197,1 --Collect Cloven Hoof (x1)
step
    >>杀死该地区的半人马
    .goto Thousand Needles,41.3,37.7
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .complete 4841,1 --Kill Galak Scout (x12)
    .complete 4841,2 --Kill Galak Wrangler (x10)
step
    #sticky
    #completewith next
    >>沿着这条小路跑，然后进入洞穴
    .goto Thousand Needles,54.6,44.3,30
step
    .goto Thousand Needles,53.9,41.5
.target Dorn Plainstalker
>>对话: |cRXP_FRIENDLY_多恩·平原行者|r
    .accept 1149 >>接任务: |cRXP_LOOT_信仰的试炼|r
step
    .isOnQuest 1149
    >>从木平台的一端跳下来，你不会死的。
    .goto Thousand Needles,26.4,32.6,15
step
    .goto Thousand Needles,53.9,41.7
>>对话: |cRXP_FRIENDLY_多恩·平原行者|r
    .turnin 1149 >>交任务: |cRXP_FRIENDLY_信仰的试炼|r
.target Dorn Plainstalker
    .accept 1150 >>接任务: |cRXP_LOOT_耐力的试炼|r
step
	#sticky
	#label Kobolds
    .goto Thousand Needles,65.74,49.89,90,0
    .goto Thousand Needles,67.87,58.33,90,0
    .goto Thousand Needles,66.03,62.14,90,0
    .goto Thousand Needles,58.95,57.84,90,0
    .goto Thousand Needles,65.74,49.89
     >>杀死你遇到的所有科波德人。掠夺他们以获取矿石样本
    .complete 1153,1
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
    >>杀死雷霆博德金斯。掠夺他们净化地球
    .goto Thousand Needles,65.2,62.4,0,0
    .complete 9431,1 --Collect Purifying Earth (x2)
step
    #requires Kobolds
    >>寻找外星人蛋。这是其中一个营地里的一件可掠夺物品。它看起来像蜘蛛蛋。
    .goto Thousand Needles,56.3,50.4,20,0
    .goto Thousand Needles,52.4,55.2,20,0
    .goto Thousand Needles,37.7,56.1,20,0
    .goto Thousand Needles,56.3,50.4,20,0
    .goto Thousand Needles,52.4,55.2,20,0
    .goto Thousand Needles,37.7,56.1
    .complete 4821,1 --Collect Alien Egg (x1)
step
    >>返回Freewind Post
    .goto Thousand Needles,45.6,50.8
>>对话: |cRXP_FRIENDLY_峭壁卫兵图林·长角|r
    .turnin 4841 >>交任务: |cRXP_FRIENDLY_清除半人马|r
.target Cliffwatcher Longhorn
    .accept 5064 >>接任务: |cRXP_LOOT_恐怖图腾的密信|r
step
    .goto Thousand Needles,46.1,51.7
.target Rau Cliffrunner
>>对话: |cRXP_FRIENDLY_拉乌·峭壁信使|r
    .turnin 1197 >>交任务: |cRXP_FRIENDLY_神圣之火|r
step
    .goto Thousand Needles,44.7,50.3
>>对话: |cRXP_FRIENDLY_哈加尔·雷蹄|r
    .turnin 4821 >>交任务: |cRXP_FRIENDLY_异型卵|r
.target Hagar Lightninghoof
    .accept 4865 >>接任务: |cRXP_LOOT_狂热之蛇|r
step
    #label exitfreewind33
    .isOnQuest 1150
    .goto Thousand Needles,27.7,50.0,20 >>从Freewind Point往下走，然后沿着这条小路跑
step
    .isOnQuest 1150
    .goto Thousand Needles,27.3,51.2,20 >>进入洞穴
    >>记住，这里的小妖精可以保持沉默 << Priest/Warlock/Druid/Paladin/Mage/Shaman
step
    >>走到洞穴的尽头，打开板条箱。杀死格伦卡并掠夺她
    .goto Thousand Needles,25.9,54.6
    .complete 1150,1 --Collect Grenka's Claw (x1)
step
    .isOnQuest 4767
    >>离开洞穴，然后沿着这条小路跑
    .goto Thousand Needles,13.9,31.7,25
step
    #sticky
    #label Eggs
    #completewith Paoka
    >>掠夺该地区地面上的鸡蛋。掠夺你看到的任何东西
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    .isOnQuest 4767
    .goto Thousand Needles,13.2,39.7,20 >>沿着这条路跑
step
        >>这将启动护送。准备好后启动。开始前试着吃5-6个鸡蛋，这样你就可以在出去的路上吃完。
    .goto Thousand Needles,17.8,40.6
.target Pao'ka Swiftmountain
>>对话: |cRXP_FRIENDLY_帕奥卡·迅山|r
    .accept 4770 >>接任务: |cRXP_LOOT_回家|r
step
    #label Paoka
    >>护送保卡下山。当三只飞龙到达该区域的中部时会产卵。
    .goto Thousand Needles,14.6,32.7
    .complete 4770,1 --Escort Pao'ka from Highperch
step
    .goto Thousand Needles,10.8,34.7
    >>回去把剩下的怀文蛋抢走
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
.goto Thousand Needles,21.5,32.3
>>对话: |cRXP_FRIENDLY_莫特加·火鬃|r
    .turnin 4865 >>交任务: |cRXP_FRIENDLY_狂热之蛇|r
.target Motega Firemane
    .accept 5062 >>接任务: |cRXP_LOOT_神圣之火|r
>>对话: |cRXP_FRIENDLY_维兹罗|r
    .turnin 9431 >>交任务: |cRXP_FRIENDLY_另一条路|r
.target Wizlo Bearingshiner
    .accept 5151 >>接任务: |cRXP_LOOT_超适应齿轮|r
    .accept 9433 >>接任务: |cRXP_LOOT_月亮井的水|r
    .turnin 4770 >>交任务: |cRXP_FRIENDLY_回家|r
step
    #sticky
    #completewith steelsnap
 >>留心Steelsnap。他在该地区巡逻。
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
#sticky
#completewith messenger
.use 12564 >>找到巡逻该区域的Galak Messenger。杀了他，抢了他的纸条。
    .collect 12564,1,4881 --Collect Assassination Note (x1)
.accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
step
    #label steelsnap
    .use 23675 >>使用隐藏在窗台上方灌木丛中的Robotron控制单元。
    >>进入机器人后，你可以走到月光井，并使用宠物动作栏按钮收集水。
    * Note: the quest arrow won't move when controlling the robot. Click the buff off once you're done.
    .goto Thousand Needles,12.0,18.8,15,0
    .goto Thousand Needles,10.7,17.6,15,0
    .goto Thousand Needles,9.5,18.7,10,0
    .goto Feralas,89.6,46.3
    .complete 9433,1 --Collect Thalanaar Moonwell Water (x1)
step
    #xprate <1.5
    .goto Thousand Needles,18.7,22.2
    .xp 28+25000 >>升级到25000+/33900xp
step
    #label messenger
>>搜索Steelsnap(Hyena)。他逆时针巡逻
	.goto Thousand Needles,10.9,23.2,40,0
    .goto Thousand Needles,17.1,18.4,40,0
    .goto Thousand Needles,18.3,26.8,40,0
    .goto Thousand Needles,15.2,30.5,40,0
    .goto Thousand Needles,18.3,26.8,40,0
    .goto Thousand Needles,17.1,18.4,40,0
	.goto Thousand Needles,10.9,23.2,40,0
    .goto Thousand Needles,17.1,18.4,40,0
    .goto Thousand Needles,18.3,26.8,40,0
    .goto Thousand Needles,15.2,30.5
	.complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    .goto Thousand Needles,21.5,32.5
>>对话: |cRXP_FRIENDLY_维兹罗|r
    .turnin 9433 >>交任务: |cRXP_FRIENDLY_月亮井的水|r
.target Wizlo Bearingshiner
    .accept 9434 >>接任务: |cRXP_LOOT_测试药剂|r
step
.use 12564 >>搜索Galak Messenger。他从一个营地出发，上路，然后去另一个营地
    .goto Thousand Needles,18.4,22.2,40,0
    .goto Thousand Needles,25.2,33.8,40,0
    .goto Thousand Needles,36.0,29.0,40,0
    .goto Thousand Needles,39.6,33.6,40,0
    .goto Thousand Needles,36.0,29.0,40,0
    .goto Thousand Needles,25.2,33.8,40,0
    .goto Thousand Needles,18.4,22.2,40,0
    .goto Thousand Needles,25.2,33.8,40,0
    .goto Thousand Needles,36.0,29.0,40,0
    .goto Thousand Needles,39.6,33.6
    .collect 12564,1,4881 --Collect Assassination Note (x1)
    .accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
	.unitscan Galak Messenger
step
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4
    >>在水池里来回走动，在水边和水下采集黄色植物。
    >>元素免疫霜冻伤害并高度抵抗火焰。尽量避免他们 << Mage
    .complete 5062,1 --Collect Incendia Agave (x10)
step
	#completewith next
    .hs >>火炉到雷霆崖
    .cooldown item,6948,>0
step << Druid
	#completewith next
    .goto Thunder Bluff,77.0,29.9
    .trainer >>去训练你的职业技能
step << Hunter
	#completewith next
    .goto Thunder Bluff,59.1,86.9
    .trainer >>去训练你的职业技能
step << Hunter
	#completewith next
    .goto Thunder Bluff,54.1,83.9
    .trainer >>去训练你的宠物法术吧
step << Warrior
	#completewith next
    .goto Thunder Bluff,57.6,85.5
    .trainer >>去训练你的职业技能
step << Shaman
	#completewith next
    .goto Thunder Bluff,22.813,20.893
    .trainer >>去训练你的职业技能
step << Priest
	#completewith next
    .goto Thunder Bluff,24.6,22.6
    .trainer >>去训练你的职业技能
step << Mage
	#completewith next
    .goto Thunder Bluff,25.2,20.9
    .trainer >>去训练你的职业技能
step
    .goto Thunder Bluff,61.4,80.8
.target Melor Stonehoof
>>对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .turnin 1131 >>交任务: |cRXP_FRIENDLY_钢齿土狼|r
step
    .goto Thunder Bluff,60.8,81.5
.target Melor Stonehoof
>>对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .accept 1136 >>接任务: |cRXP_LOOT_霜喉雪人|r
step
    .goto Thunder Bluff,69.851,30.910
.target Magatha Grimtotem
>>对话: |cRXP_FRIENDLY_玛加萨·恐怖图腾|r
    .turnin 5062 >>交任务: |cRXP_FRIENDLY_神圣之火|r
step
    .goto Thunder Bluff,70.1,30.9
.target Magatha Grimtotem
>>对话: |cRXP_FRIENDLY_玛加萨·恐怖图腾|r
    .accept 5088 >>接任务: |cRXP_LOOT_阿利卡拉|r
step << Tauren wotlk
    .money <5.00
    .goto Mulgore,47.5,58.5
    .train 713 >>前往血蹄村。坐火车，买你的坐骑
step << Tauren tbc
    #level 30
    .money <35.00
    .goto Mulgore,47.5,58.5
    .train 713 >>前往血蹄村。坐火车，买你的坐骑
step
	#completewith next
    .goto Thunder Bluff,46.9,49.4
    .isOnQuest 879
    .fly Camp Taurajo >>飞往陶拉霍营地
step
    .goto The Barrens,45.10,57.70
.target Tatternack Steelforge
>>对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
    .turnin 1153 >>交任务: |cRXP_FRIENDLY_新的矿石样本|r
step
    #completewith next
    .goto The Barrens,44.4,59.0
    .fly Freewind Post >>飞到Freewind Post
step
    #label flyskip
.target Elu
>>对话: |cRXP_FRIENDLY_艾鲁|r
    .turnin 4767 >>交任务: |cRXP_FRIENDLY_驭风者|r
    .goto Thousand Needles,44.8,49.0
.target Magistrix Elosai
>>对话: |cRXP_FRIENDLY_魔导师艾洛塞|r
    .turnin 9434 >>交任务: |cRXP_FRIENDLY_测试药剂|r
    .goto Thousand Needles,46.2,50.5
step << !Warrior
	#completewith next
    .goto Thousand Needles,46.1,51.5
    .home >>将您的炉石设置为Freewind Post
step
    #sticky
    #completewith OreSample
    >>在执行其他任务时杀死你看到的科波德斯。掠夺他们以获取未经提炼的矿石样本
    .collect 5842,1 --Collect Unrefined Ore Sample (x1)
step
    .goto Thousand Needles,54.0,41.4
    >>前往东北洞穴
>>对话: |cRXP_FRIENDLY_多恩·平原行者|r
    .turnin 1150 >>交任务: |cRXP_FRIENDLY_耐力的试炼|r
.target Dorn Plainstalker
    .accept 1151 >>接任务: |cRXP_LOOT_力量的试炼|r
step
    >>杀死洛克阿利姆(岩石元素)。掠夺他的碎片。他在西部千针周围巡逻了一大圈。
    .goto Thousand Needles,29.3,33.6,40,0
    .goto Thousand Needles,27.1,28.7,40,0
    .goto Thousand Needles,22.5,31.3,40,0
    .goto Thousand Needles,17.5,27.0,40,0
    .goto Thousand Needles,12.8,20.9,40,0
    .goto Thousand Needles,9.3,21.0,40,0
    .goto Thousand Needles,21.1,40.6,40,0
    .goto Thousand Needles,34.3,37.5,40,0
    .goto Thousand Needles,33.2,53.5,40,0
    .goto Thousand Needles,29.3,33.6,40,0
    .goto Thousand Needles,27.1,28.7,40,0
    .goto Thousand Needles,22.5,31.3,40,0
    .goto Thousand Needles,17.5,27.0,40,0
    .goto Thousand Needles,12.8,20.9,40,0
    .goto Thousand Needles,9.3,21.0,40,0
    .goto Thousand Needles,21.1,40.6,40,0
    .goto Thousand Needles,34.3,37.5,40,0
    .unitscan Rok'Alim the Pounder
    .complete 1151,1 --Collect Fragments of Rok'Alim (x1)
step
	.goto Thousand Needles,31.2,36.9,30 >>沿着这条路跑
    .isOnQuest 5064
step
>>爬上山，穿过桥去寻找音符。掠夺箱子
    .goto Thousand Needles,32.0,32.6
    .complete 5064,1 --Collect Secret Note #1 (x1)
step
    .goto Thousand Needles,33.9,39.9
    .complete 5064,2 --Collect Secret Note #2 (x1)
step
    .goto Thousand Needles,39.3,41.6
    .complete 5064,3 --Collect Secret Note #3 (x1)
step
    .use 12785 >>清除篝火周围的暴徒，然后点燃篝火，然后杀死阿里卡拉。掠夺她
    .goto Thousand Needles,37.9,35.3
    .complete 5088,1 --Collect Arikara Serpent Skin (x1)
    .complete 5088,2 --Light the Sacred Fire of Life
step
    >>杀死Arnak Grimtotem。抢走他的蹄子
.goto Thousand Needles,38.6,27.4
    .complete 5147,1 --Collect Arnak's Hoof (x1)
	.unitscan Arnak Grimtotem
step
    .goto Thousand Needles,38.1,26.6
.target Lakota Windsong
>>对话: |cRXP_FRIENDLY_拉克塔·风歌|r
    .accept 4904 >>接任务: |cRXP_LOOT_终获解救|r
step
    >>跟随拉科塔，在整个护送过程中保护她。暴徒将定期在平台上滋生。
    .goto Thousand Needles,30.7,37.1
    .complete 4904,1 --Escort Lakota Windsong from the Darkcloud Pinnacle.
step
>>打开豹笼并杀死它。确保有冷却液/药剂可用
    .goto Thousand Needles,23.3,23.3
    .complete 5151,1 --Collect Hypercapacitor Gizmo (x1)
step
    .isOnQuest 4881
	>>当你接受任务的下一部分时，护送会开始。
	.goto Thousand Needles,21.3,32.0
.target Kanati Greycloud
>>对话: |cRXP_FRIENDLY_卡纳提·灰云|r
	.turnin 4881 >>交任务: |cRXP_FRIENDLY_暗杀计划|r
step
    .isQuestTurnedIn 4881
	>>当你接受任务的下一部分时，护送会开始。
	.goto Thousand Needles,21.3,32.0
.target Kanati Greycloud
>>对话: |cRXP_FRIENDLY_卡纳提·灰云|r
	.accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
step
    .isOnQuest 4966
	>>将产生3个暴徒。让卡纳提挑衅，然后干脆杀了他们
	.goto Thousand Needles,21.4,31.8
    .complete 4966,1 --Protect Kanati Greycloud
step
    .isQuestComplete 4966
	.goto Thousand Needles,21.4,31.8
.target Kanati Greycloud
>>对话: |cRXP_FRIENDLY_卡纳提·灰云|r
    .turnin 4966 >>交任务: |cRXP_FRIENDLY_保护卡纳提·灰云|r
step
    #label OreSample
.goto Thousand Needles,21.5,32.3
.target Motega Firemane
>>对话: |cRXP_FRIENDLY_莫特加·火鬃|r
    .turnin 5088 >>交任务: |cRXP_FRIENDLY_阿利卡拉|r
.target Wizlo Bearingshiner
>>对话: |cRXP_FRIENDLY_维兹罗|r
    .turnin 5151 >>交任务: |cRXP_FRIENDLY_超适应齿轮|r
step
    >>杀死该地区的Kobolds。掠夺他们以获取未经提炼的矿石样本
.goto Thousand Needles,9.2,21.0
    .collect 5842,1 --Collect Unrefined Ore Sample (x1)
step
    >>跑向费拉拉斯。我们将获得稍后的飞行路线
	.goto Feralas,88.9,41.2,50,0
    .goto Feralas,75.4,44.3
    .fp Mojache >>获取Mojache营地飞行路线
step
	#completewith next
    .goto Feralas,75.4,44.4
    .fly Freewind Post >>飞到Freewind Post
step
    .goto Thousand Needles,45.7,50.8
.target Cliffwatcher Longhorn
>>对话: |cRXP_FRIENDLY_峭壁卫兵图林·长角|r
    .turnin 5064 >>交任务: |cRXP_FRIENDLY_恐怖图腾的密信|r
    .turnin 5147 >>交任务: |cRXP_FRIENDLY_通缉：阿纳克·恐怖图腾|r
step
    .goto Thousand Needles,46.0,51.5
.target Thalia Amberhide
>>对话: |cRXP_FRIENDLY_萨利亚|r
    .turnin 4904 >>交任务: |cRXP_FRIENDLY_终获解救|r
step
    .goto Thousand Needles,53.9,41.4
.target Dorn Plainstalker
>>对话: |cRXP_FRIENDLY_多恩·平原行者|r
    .turnin 1151 >>交任务: |cRXP_FRIENDLY_力量的试炼|r
step
    .goto Thousand Needles,67.6,64.0
    .xp 30 >>升级到30级
step
    .isOnQuest 1146
    .goto Thousand Needles,67.6,64.0
>>对话: |cRXP_FRIENDLY_摩克塔·克林|r
    .turnin 1146 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.target Moktar Krin
    .accept 1147 >>接任务: |cRXP_LOOT_疯狂的虫群|r
step
    .xp <33,1
    >>Accept quests around the racetrack
.target Kravel Koalbeard
>>对话: |cRXP_FRIENDLY_克拉维尔·浓须|r
	.accept 1110 >>接任务: |cRXP_LOOT_火箭车零件|r
    .goto Thousand Needles,77.8,77.2
.target Fizzle Brassbolts
>>对话: |cRXP_FRIENDLY_菲兹尔·铜栓|r
	.accept 1104 >>接任务: |cRXP_LOOT_含盐的蝎毒|r
    .goto Thousand Needles,77.9,77.2
.target Wizzle Brassbolts
>>对话: |cRXP_FRIENDLY_维兹尔·铜栓|r
    .accept 1105 >>接任务: |cRXP_LOOT_硬化龟壳|r
    .goto Thousand Needles,78.1,77.1
step
    .goto Thousand Needles,77.787,77.270
.target Kravel Koalbeard
>>对话: |cRXP_FRIENDLY_克拉维尔·浓须|r
    .accept 1111 >>接任务: |cRXP_WARN_码头管理员迪兹维格|r
    .accept 5762 >>接任务: |cRXP_LOOT_赫米特·奈辛瓦里|r
step
    .xp <33,1
.target Pozzik
>>对话: |cRXP_FRIENDLY_普兹克|r
    .accept 1176 >>接任务: |cRXP_LOOT_减轻负重|r
    .goto Thousand Needles,80.2,75.8
.target Trackmaster Zherin
>>对话: |cRXP_FRIENDLY_赛道管理员泽尔林|r
    .accept 1175 >>接任务: |cRXP_LOOT_安全隐患|r
    .goto Thousand Needles,81.7,78.0
step
    .xp <33,1
	#sticky
	#completewith ShimmeringF
	>>把龟肉留着以后找。
	.collect 3712,10
step
    .isOnQuest 1175
   >>杀死该地区的Gazers。也杀死一些你看到的水晶皮
	.goto Thousand Needles,78.4,89.1
	.complete 1175,3 --Kill Saltstone Gazer (x6)
step
	#label ShimmeringF
    .isOnQuest 1110
	>>圈出杀戮和收集闪光平地任务的区域
	.complete -1110,1 --Collect Rocket Car Parts (x30)
	.complete -1104,1 --Collect Salty Scorpid Venom (x6)
	.complete -1176,1 --Collect Hollow Vulture Bone (x10)
    .complete -1105,1 --Collect Hardened Tortoise Shell (x9)
	.complete -1175,1 --Kill Saltstone Basilisk (x10)
	.complete -1175,2 --Kill Saltstone Crystalhide (x10)
step
	#sticky
	#label partsoftheswarm
    .isOnQuest 1110
	>>升级硅磷脂生物直到你得到一个开裂的硅磷脂甲壳。点击它接受任务。
	.collect 5877,1,1148
	.accept 1148 >>接任务: |cRXP_LOOT_虫群的样本|r
step
    .isQuestTurnedIn 1146
    .goto Thousand Needles,67.8,85.7
	.complete -1148,1 --Collect Silithid Heart (x1)
    .complete -1148,2 --Collect Silithid Talon (x5)
    .complete -1147,3 --Kill Silithid Invader (x5)
    .complete -1147,1 --Kill Silithid Searcher (x5)
    .complete -1148,3 --Collect Intact Silithid Carapace (x3)
    .complete -1147,2 --Kill Silithid Hive Drone (x5)
step
	#requires partsoftheswarm
    .turnin -1147 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
    .goto Thousand Needles,67.582,63.944
step
    .turnin -1110 >>交任务: |cRXP_FRIENDLY_火箭车零件|r
    .goto Thousand Needles,77.8,77.2
    .turnin -1104 >>交任务: |cRXP_FRIENDLY_含盐的蝎毒|r
    .goto Thousand Needles,78.0,77.1
    .turnin -1105 >>交任务: |cRXP_FRIENDLY_硬化龟壳|r
    .goto Thousand Needles,78.1,77.1
step
    .xp <33,1
    .isQuestTurnedIn 1104
.target Wizzle Brassbolts
>>对话: |cRXP_FRIENDLY_维兹尔·铜栓|r
    .accept 1107 >>接任务: |cRXP_LOOT_坚硬的尾鳍|r
.target Fizzle Brassbolts
>>对话: |cRXP_FRIENDLY_菲兹尔·铜栓|r
    .accept 1106 >>接任务: |cRXP_LOOT_流放者马特克|r
step
    .isOnQuest 1176
    .goto Thousand Needles,80.2,75.8
>>对话: |cRXP_FRIENDLY_普兹克|r
    .turnin 1176 >>交任务: |cRXP_FRIENDLY_减轻负重|r
.target Pozzik
    .accept 1178 >>接任务: |cRXP_LOOT_地精赞助商|r
step
    .isOnQuest 1175
    .goto Thousand Needles,81.6,78.0
.target Trackmaster Zherin
>>对话: |cRXP_FRIENDLY_赛道管理员泽尔林|r
    .turnin 1175 >>交任务: |cRXP_FRIENDLY_安全隐患|r
step
    .isOnQuest 1152
    .goto Tanaris,51.6,25.4
    .abandon 1152 >>放弃知识测试
step
    .goto Tanaris,51.6,25.4
    .fp Gadgetzan >>获取Gadgetzan飞行路线
step << tbc
    #completewith next
    +如果您可以访问此服务器上的gold，请尽快将gold邮寄给自己，以便进行挂载训练！
step
    .zoneskip Tanaris,1
	#completewith next
    .hs >>Hearth to Freewind Post公司公司 << !Warrior
    .hs >>火炉或飞向雷霆崖 << Warrior
    .cooldown item,6948,>0
step << !Warrior
    .goto Thousand Needles,45.1,49.2,-1
    .goto Tanaris,51.6,25.4,-1
    .fly Camp Taurajo >>飞往陶拉霍营地
step << Warrior
    #completewith next
    .goto Thousand Needles,45.1,49.2,-1
    .goto Tanaris,51.6,25.4,-1
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .zoneskip Thunder Bluff
step << Warrior
    .isOnQuest 1145
	#completewith next
    .goto Thunder Bluff,57.4,87.2
.target Darnath Bladesinger
.target Wu Shen
.target Kelv Sternhammer
.target Baltus Fowler
.target Sorek
.target Torm Ragetotem
>>对话: |cRXP_FRIENDLY_托姆·暴怒图腾|r
-->>对话: |cRXP_FRIENDLY_索瑞克|r
-->>对话: |cRXP_FRIENDLY_巴尔图斯·弗勒|r
-->>对话: |cRXP_FRIENDLY_凯夫·重锤|r
-->>对话: |cRXP_FRIENDLY_武神|r
-->>对话: |cRXP_FRIENDLY_达纳斯·刃歌|r
    .accept 1718 >>接任务: |cRXP_LOOT_岛民|r
    .trainer >>去训练你的职业技能
step << Warrior
    .isOnQuest 1153
    .goto Thunder Bluff,47.003,49.832
    .fly Camp Taurajo >>飞往陶拉霍营地
step << !Warrior
    .isOnQuest 1153
    .goto The Barrens,44.9,59.1
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .isOnQuest 1153
    .goto The Barrens,45.102,57.683
.target Tatternack Steelforge
>>对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
    .turnin 1153 >>交任务: |cRXP_FRIENDLY_新的矿石样本|r
step
    #completewith swarmgrows
    .goto The Barrens,44.4,59.1,-1
    .goto Thunder Bluff,47.003,49.832,-1
    .fly Crossroads >>飞向十字路口
step
    #label swarmgrows
    .isQuestAvailable 1145
    .goto The Barrens,51.1,29.7
.target Korran
>>对话: |cRXP_FRIENDLY_科兰|r
    .accept 1145 >>接任务: |cRXP_LOOT_疯狂的虫群|r
step << !Shaman !Warrior
    .maxlevel 32
    .goto The Barrens,52.0,29.8
    .home >>将您的炉石设置为十字路口
step
    .isOnQuest 1148
    .goto The Barrens,51.1,29.6
>>对话: |cRXP_FRIENDLY_科兰|r
    .turnin 1148 >>交任务: |cRXP_FRIENDLY_虫群的消息|r
.target Korran
    .accept 1184 >>接任务: |cRXP_LOOT_虫群的样本|r
step
	#completewith next
    .goto The Barrens,51.5,30.3
    .fly Ratchet >>飞到棘轮
step
    .goto The Barrens,63.3,38.4
>>对话: |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 1111 >>交任务: |cRXP_FRIENDLY_码头管理员迪兹维格|r
.target Wharfmaster Dizzywig
    .accept 1112 >>接任务: |cRXP_LOOT_给克拉维尔的零件|r
step << Warrior
    .isOnQuest 874
    .goto The Barrens,65.8,43.8
>>对话: |cRXP_FRIENDLY_玛伦·星眼|r
    .turnin 874 >>交任务: |cRXP_FRIENDLY_玛伦·星眼|r
.target Mahren Skyseer
    .accept 873 >>接任务: |cRXP_LOOT_依沙瓦克|r
step << Warrior
    .isOnQuest 873
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2
    >>在水中寻找Isha Awak(红门槛)。杀死并掠夺它的心脏
    .complete 873,1 --Heart of Isha Awak (1)
	.unitscan Isha Awak
step << Warrior
    .isOnQuest 1718
    >>游到岛上
    .goto The Barrens,68.6,49.2
>>对话: |cRXP_FRIENDLY_克兰诺克·马克雷德|r
    .turnin 1718 >>交任务: |cRXP_FRIENDLY_岛民|r
.target Klannoc Macleod
    .accept 1719 >>接任务: |cRXP_LOOT_格斗考验|r
step << Warrior
    .isOnQuest 1719
    .goto The Barrens,68.6,48.7
    .complete 1719,1 --Step on the grate to begin the Affray (1)
    .complete 1719,2 --Big Will (1)
step << Warrior tbc
    .isOnQuest 1719
    .goto The Barrens,68.6,49.2
>>对话: |cRXP_FRIENDLY_克兰诺克·马克雷德|r
    .turnin 1719 >>交任务: |cRXP_FRIENDLY_格斗考验|r
.target Klannoc Macleod
    .accept 1791 >>接任务: |cRXP_LOOT_捕风者|r
step << Warrior wotlk
    #xprate >1.499
    .isOnQuest 1719
    .goto The Barrens,68.6,49.2
.target Klannoc Macleod
>>对话: |cRXP_FRIENDLY_克兰诺克·马克雷德|r
    .turnin 1719 >>交任务: |cRXP_FRIENDLY_格斗考验|r
step << Warrior
    .isOnQuest 873
    .goto The Barrens,65.8,43.8
.target Mahren Skyseer
>>对话: |cRXP_FRIENDLY_玛伦·星眼|r
    .turnin 873 >>交任务: |cRXP_FRIENDLY_依沙瓦克|r
step << Warrior
    .abandon 1838 >>抛弃残忍的盔甲
step
    .xp <33,1
    #completewith next
	+Go to the dock. 前往: |cRXP_PICK_荆棘谷|r
   .goto The Barrens,63.7,38.6,15,0
	.goto The Barrens,63.7,38.6
step
    .xp <33,1
	.maxlevel 36
	.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step << Shaman
    .xp <33,1
	.maxlevel 36
	#label Protection
	#completewith BigStick
 .goto Stranglethorn Vale,28.3,75.5
    .vendor >>去小贩那里，如果商店里有保护人员或大棒，就去买。
    .collect 12252,1
step << Shaman
    .xp <33,1
	.maxlevel 36
	#label BigStick
	#completewith Protection
 .goto Stranglethorn Vale,28.3,75.5
    .collect 12251,1
step
    .xp <33,1
    .goto Stranglethorn Vale,26.4,73.5
>>对话: |cRXP_FRIENDLY_码头管理员罗兹基尔|r
    .turnin 1180 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.target Wharfmaster Lozgil
    .accept 1181 >>接任务: |cRXP_LOOT_地精赞助商|r
step
    .xp <33,1
	>>前往建筑物的第二层
    .goto Stranglethorn Vale,28.293,77.591
.target Drizzlik
>>对话: |cRXP_FRIENDLY_崔斯里克|r
    .accept 575 >>接任务: |cRXP_LOOT_供与求|r
step
    .xp <33,1
	>>去客栈吧，这个任务在底层
    .goto Stranglethorn Vale,27.0,77.2
.target Crank Fizzlebub
>>对话: |cRXP_FRIENDLY_克兰克·菲兹巴布|r
    .accept 605 >>接任务: |cRXP_LOOT_歌唱水晶碎片|r
step
    .xp <33,1
	>>这些任务在客栈的顶层
	.goto Stranglethorn Vale,27.1,77.3
.target Kebok
>>对话: |cRXP_FRIENDLY_科博克|r
    .accept 189 >>接任务: |cRXP_LOOT_血顶巨魔的耳朵|r
    .accept 213 >>接任务: |cRXP_LOOT_恶性竞争|r
.target Krazek
>>对话: |cRXP_FRIENDLY_克拉兹克|r
    .accept 201 >>接任务: |cRXP_LOOT_调查营地|r
step
    .xp <33,1
    .goto Stranglethorn Vale,27.2,76.9
>>对话: |cRXP_FRIENDLY_大财主里维加兹|r
    .turnin 1181 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.target Baron Revilgaz
    .accept 1182 >>接任务: |cRXP_LOOT_地精赞助商|r
step << Rogue
    .xp <33,1

	#completewith next
    .goto Stranglethorn Vale,26.8,77.2
	.trainer >>去训练你的职业技能
step
    .xp <33,1

    .goto Stranglethorn Vale,26.9,77.0
    .fp Booty Bay >>获取Booty Bay飞行路线
step
    .xp <33,1
    #completewith next
	+去码头。把船带回棘轮。
   .goto The Barrens,63.7,38.6,15,0
	.goto The Barrens,63.7,38.6
step
    .xp <33,1
	.maxlevel 36
	.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .xp >33,1
    .goto Ashenvale,73.2,61.5,-1
    .goto The Barrens,63.1,37.1,-1
    .fly Orgrimmar >>飞往奥格瑞玛
step << Paladin
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,32.4,35.8
    .trainer >>去训练你的职业技能
step << Shaman
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,38.6,36.0
    .trainer >>去训练你的职业技能
step << Shaman
    .xp >33,1
    .isOnQuest 1145
    .goto Orgrimmar,37.8,37.4
.target Searn Firewarder
>>对话: |cRXP_FRIENDLY_希尔恩·火结|r
    .accept 1531 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Hunter
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,66.046,18.526
    .trainer >>去训练你的职业技能
step << Hunter
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,66.3,14.8
    .trainer >>去训练你的宠物法术吧
step << Rogue
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,44.0,54.6
    .trainer >>去训练你的职业技能
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .accept 2996 >>接任务: |cRXP_LOOT_寻找斯坦哈德|r
    .trainer >>训练你的职业技能
    .target Gan'rul Bloodeye
step << Warlock
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,47.5,46.7
    .vendor >>买你的宠物书
	.collect 16368,1 --Grimoire of Lash of Pain (Rank 2): 0/1
step
    .xp >33,1
    .isOnQuest 1145
    .goto Orgrimmar,49.8,47.6
.target Craven Drok
>>对话: |cRXP_FRIENDLY_克拉文·德洛克|r
    .accept 1431 >>接任务: |cRXP_LOOT_联盟关系|r
step
    .xp >33,1
    .isOnQuest 1145
    .goto Orgrimmar,75.229,34.240
>>对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
    .turnin 1145 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.target Belgrom Rockmaul
    .accept 1146 >>接任务: |cRXP_LOOT_疯狂的虫群|r
step << Mage
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,38.8,85.6
    .trainer >>去训练你的职业技能
step << Priest
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,35.6,87.8
    .trainer >>去训练你的职业技能
step
    .xp >33,1
    .isOnQuest 1145
    .goto Orgrimmar,22.4,52.8
>>对话: |cRXP_FRIENDLY_科尔丹|r
    .turnin 1431 >>交任务: |cRXP_FRIENDLY_联盟关系|r
.target Keldran
    .accept 1432 >>接任务: |cRXP_LOOT_联盟关系|r
step << Orc !Warlock tbc
	#sticky
	#completewith next
	.money <35.00
	.goto Orgrimmar,63.3,12.8
	.train 149 >>前往荣誉谷。乘坐火车并购买您的坐骑
step << Troll !Warlock tbc
	#sticky
	#completewith next
	.money <35.00
	.goto Durotar,55.2,75.5
	.train 533 >>前往Durotar的Sen'jin村乘坐火车并购买您的坐骑
step << Warlock
    #completewith next
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    .fly Ratchet >>飞到棘轮
    .target Doras
    .zoneskip The Barrens
step << Warlock
    .goto The Barrens,62.63,35.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
    .turnin 2996 >>交任务: |cRXP_FRIENDLY_寻找斯坦哈德|r
    .accept 1801 >>接任务: |cRXP_LOOT_阴谋之书|r
    .target Strahad Farsan
step << Warlock
    .goto The Barrens,63.08,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Bragok
    .zoneskip Orgrimmar
    .zoneskip Durotar
step << Shaman
    .isOnQuest 874
	#completewith next
    .goto Orgrimmar,45.120,63.889
    .fly Ratchet >>飞到棘轮
step << Shaman
    .isOnQuest 874
    .goto The Barrens,65.8,43.8
>>对话: |cRXP_FRIENDLY_玛伦·星眼|r
    .turnin 874 >>交任务: |cRXP_FRIENDLY_玛伦·星眼|r
.target Mahren Skyseer
    .accept 873 >>接任务: |cRXP_LOOT_依沙瓦克|r
step << Shaman
    .isOnQuest 220
    .goto The Barrens,65.8,43.8
>>对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
    .turnin 220 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Islen Waterseer
    .accept 63 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman
    .isOnQuest 873
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2
    >>在水中寻找Isha Awak(红门槛)。杀死并掠夺它的心脏
    .complete 873,1 --Heart of Isha Awak (1)
	.unitscan Isha Awak
step << Shaman
    .isOnQuest 873
    .goto The Barrens,65.8,43.8
.target Mahren Skyseer
>>对话: |cRXP_FRIENDLY_玛伦·星眼|r
    .turnin 873 >>交任务: |cRXP_FRIENDLY_依沙瓦克|r
step << Tauren tbc
    .money <35.00
    .goto The Barrens,63.1,37.1,-1
    .goto Orgrimmar,45.120,63.889,-1
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r, we're going to train riding
step << Tauren tbc
    .money <35.00
    .goto Mulgore,47.5,58.5
    .train 713 >>沿着电梯走下去，然后去血蹄村。坐火车，买你的坐骑
step << Warrior/Shaman
	#completewith next
    .goto The Barrens,63.1,37.1,-1
    .goto Thunder Bluff,47.003,49.832,-1
    .fly Orgrimmar >>飞往奥格瑞玛
step << Tauren
    #completewith next
    .goto Thunder Bluff,47.003,49.832,-1
    .fly Orgrimmar >>飞往奥格瑞玛
step << Shaman
    .isQuestAvailable 1531
    .goto Orgrimmar,37.957,37.729
.target Searn Firewarder
>>对话: |cRXP_FRIENDLY_希尔恩·火结|r
    .accept 1531 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Warrior
	#completewith next
	.goto Orgrimmar,81.5,19.6
	.train 2567 >>从河岸扔来的火车
step << Warrior/Shaman
	#completewith next
    .xp <33,1
    .goto Orgrimmar,54.097,68.407
    .home >>将你的炉石置于力量谷
step << Undead !Warlock tbc
    .money <35.00
    .goto Durotar,50.8,13.7
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    >>如果你能传送到幽暗城，跳过这一步 << Mage
step << Undead !Warlock tbc
    .money <35.00
    .goto Tirisfal Glades,60.1,52.6
    .train 554 >>乘坐火车并购买您的坐骑
    .zoneskip Tirisfal Glades,1
step << Blood Elf !Warlock tbc
    .money <35.00
    .goto Durotar,50.8,13.7
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    >>如果你可以传送到地下城或银月，请跳过此步骤 << Mage
step << Blood Elf !Warlock tbc
    .money <35.00
    .goto Undercity,66.3,4.5,30,0
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .zoneskip Orgrimmar
step << Blood Elf !Warlock tbc
    .money <35.00
    .goto Eversong Woods,61.1,54.7,5,0
    .goto Eversong Woods,61.4,54.0
    .train 33388 >>离开银月城，然后乘火车去买你的坐骑。
    .zoneskip Orgrimmar
step << Blood Elf !Warlock tbc
    .goto Silvermoon City,49.4,14.3
    >>如果可以的话，传送到幽暗城 << Mage
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Orgrimmar
step << Blood Elf !Warlock tbc
    .goto Tirisfal Glades,61.9,59.1
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
    .zoneskip Tirisfal Glades,1
step << Undead !Warlock tbc
    .goto Tirisfal Glades,61.9,59.1
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
    .zoneskip Tirisfal Glades,1
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 22-25 Hillsbrad Foothills JJ
#version 1
#group RestedXP部落1-30
#next 25-27阿什维尔JJ
#xprate >1.4999

step << Orc Shaman wotlk/Orc Warrior wotlk
    .goto Orgrimmar,69.41,13.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r
    .skill riding,75 >>火车|T136103:0|t（学徒骑马）
    .target Kildar
    .money <4.5
step << Orc Shaman wotlk/Orc Warrior wotlk
    .goto Orgrimmar,69.38,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥古纳罗|r
    +|cRXP_BUY_从他那里买任何你喜欢的|r|T132224:0|t[Wolf]|cRXP_Buy_|r
	.target Ogunaro Wolfrunner
    .itemcount 1132,<1 --Horn of the Timber Wolf
    .itemcount 5665,<1 --Horn of the Dire Wolf
    .itemcount 5668,<1 --Horn of the Brown Wolf
    .itemcount 46099,<1 --Horn of the Black Wolf
    .money <0.9
    .skill riding,<75,1
step << Orc Shaman wotlk/Orc Warrior wotlk
    .cast 55884 >>使用|T132224:0|t[木狼之角]学习
    .use 1132
    .itemcount 1132,1
step << Orc Shaman wotlk/Orc Warrior wotlk
    .cast 55884 >>使用|T132266:0|t[恶狼之角]学习
    .use 5665
    .itemcount 5665,1
step << Orc Shaman wotlk/Orc Warrior wotlk
    .cast 55884 >>使用|T132224:0|t[褐狼之角]学习
    .use 5668
    .itemcount 5668,1
step << Orc Shaman wotlk/Orc Warrior wotlk
    .cast 55884 >>使用|T132224:0|t[黑狼之角]学习
    .use 46099
    .itemcount 46099,1
step << Orc Shaman wotlk/Orc Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132224:0|t[Timber Wolf]|cRXP_WARN_拖动到动作栏中|r
    .cast 580 >>安装您的|T132224:0|t[木狼]
    .train 580,3
step << Orc Shaman wotlk/Orc Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132266:0|t[Dire Wolf]|cRXP_WARN_拖动到动作栏中|r
    .cast 6653 >>安装您的|T132266:0|t[Dire Wolf]
    .train 6653,3
step << Orc Shaman wotlk/Orc Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132224:0|t[Brown Wolf]|cRXP_WARN_拖动到动作栏中|r
    .cast 6654 >>安装您的|T132224:0|t[棕色狼]
    .train 6654,3
step << Orc Shaman wotlk/Orc Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132224:0|t[黑狼]|cRXP_WARN_拖动到动作栏中|r
    .cast 64658 >>安装您的|T132224:0|t[黑狼]
    .train 64658,3
step << Shaman/Warrior
    .goto Orgrimmar,54.10,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
    .home >>将您的炉石设置为Orgrimmar
    .target Innkeeper Gryshka
step << Troll Shaman wotlk/Troll Warrior wotlk
    #completewith next
    .goto Durotar,49.41,20.97,35,0
    .goto Durotar,50.21,26.30,35,0
    .goto Durotar,49.93,28.80,35,0
    .goto Durotar,52.26,34.68,35,0
    .goto Durotar,55.28,75.48,50 >>向|cRXP_FRIENDLY_Xar'Ti|r行进
    .money <4.5
step << Troll Shaman wotlk/Troll Warrior wotlk
    .goto Durotar,55.28,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r
    .skill riding,75 >>火车|T136103:0|t（学徒骑马）
    .target Xar'Ti
    .money <4.5
step << Troll Shaman wotlk/Troll Warrior wotlk
    .goto Durotar,55.23,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖尼尔|r
    +|cRXP_BUY_从他那里买任何你喜欢的|r|T132253:0|t[Raptor Whistle]|cRXP_Buy_|r
	.target Zjolnir
    .itemcount 8588,<1 --Whistle of the Emerald Raptor
    .itemcount 8591,<1 --Whistle of the Turquoise Raptor
    .itemcount 8592,<1 --Whistle of the Violet Raptor
    .money <0.9
    .skill riding,<75,1
step << Troll Shaman wotlk/Troll Warrior wotlk
    .cast 55884 >>使用|T132253:0|t[翡翠猛禽的哨声]学习它
    .use 8588
    .itemcount 8588,1
step << Troll Shaman wotlk/Troll Warrior wotlk
    .cast 55884 >>使用|T132253:0|t[绿松石猛禽的哨声]学习它
    .use 8591
    .itemcount 8591,1
step << Troll Shaman wotlk/Troll Warrior wotlk
    .cast 55884 >>使用|T132253:0|t[紫罗兰猛禽的哨声]学习它
    .use 8592
    .itemcount 8592,1
step << Troll Shaman wotlk/Troll Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132253:0|t[Emerald Raptor]|cRXP_WARN_拖动到动作栏中|r
    .cast 8395 >>安装您的|T132253:0|t[翡翠猛禽]
    .train 8395,3
step << Troll Shaman wotlk/Troll Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132253:0|t[Turquoise Raptor]|cRXP_WARN_拖动到动作栏中|r
    .cast 10796 >>安装您的|T132253:0|t[绿松石猛禽]
    .train 10796,3
step << Troll Shaman wotlk/Troll Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132253:0|t[Violet Raptor]|cRXP_WARN_拖动到动作栏中|r
    .cast 10799 >>安装您的|T132253:0|t[紫罗兰猛禽]
    .train 10799,3
step << Shaman/Warrior
    #completewith next
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Durotar,50.61,13.27
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step << Shaman/Warrior
    #label TZeppelin
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
    .zoneskip Silverpine Forest
step
    #completewith next
    .goto Tirisfal Glades,56.30,66.20,30,0
    .goto Silverpine Forest,66.34,5.27
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
step
    #completewith next
    .goto Silverpine Forest,48.45,38.18,30,0
    .goto Silverpine Forest,46.19,41.28,30,0
    .goto Silverpine Forest,42.80,40.87,30 >>前往|cRXP_FRIENDLY_Renferrel|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师伦弗利尔|r, |cRXP_FRIENDLY_姆拉|r << Warrior/Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师伦弗利尔|r << !Warrior !Shaman
    .accept 493 >>接任务: |cRXP_LOOT_前往希尔斯布莱德丘陵|r
    .goto Silverpine Forest,42.80,40.87
    .turnin 3301 >>交任务: |cRXP_FRIENDLY_茉拉·符文图腾|r << Warrior/Shaman
    .goto Silverpine Forest,42.90,41.99 << Warrior/Shaman
    .target Apothecary Renferrel
    .target Mura Runetotem << Warrior/Shaman
step << Warrior/Shaman
    .goto Silverpine Forest,44.19,42.67
    >>点击地面上的|cRXP_PICK_Yuriv墓碑|r
    .turnin 264 >>交任务: |cRXP_FRIENDLY_至死方休|r
step
    .goto Silverpine Forest,45.62,42.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .fp The Sepulcher >>获得the Sepulcher飞行路线
    .target Karos Razok
--VV Skip Sepulcher section and go through the islands/Dalaran bubble? 493/494 are breadcrumbs (about 3k xp) and the Sepulcher fp is not needed
step
    #completewith next
    .goto Silverpine Forest,46.33,44.30,30,0
    .goto Silverpine Forest,61.47,67.47,40,0
    .goto Silverpine Forest,67.14,79.06,40,0
    .goto Hillsbrad Foothills,20.79,47.40,40 >>向|cRXP_FRIENDLY_Lesh|r行进
    >>|cRXP_WARN_小心途中的|cRXP_ENEMY_Dalaran巫师|r，因为他们施放|r|T135846:0|t[Frostbolt]|cRXP-WARN_这会减慢你的速度|r
step
    .goto Hillsbrad Foothills,20.79,47.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵莱什|r
    .accept 494 >>接任务: |cRXP_LOOT_进攻的时机|r
    .target Deathstalker Lesh
step
    .goto Hillsbrad Foothills,60.14,18.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
    .fp Tarren Mill >>获取Tarren Mill飞行路线
    .target Zarise
step << Shaman/Warrior
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, Wanted Poster, |cRXP_FRIENDLY_克鲁斯克|r
    .turnin 1065 >>交任务: |cRXP_FRIENDLY_塔伦米尔之旅|r
    .accept 1066 >>接任务: |cRXP_LOOT_无辜者之血|r
    .turnin 493 >>交任务: |cRXP_FRIENDLY_前往希尔斯布莱德丘陵|r
    .accept 496 >>接任务: |cRXP_LOOT_受难药剂|r
    .accept 501 >>接任务: |cRXP_LOOT_痛苦药剂|r
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 494 >>交任务: |cRXP_FRIENDLY_进攻的时机|r
    .accept 527 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .accept 549 >>接任务: |cRXP_LOOT_通缉：辛迪加成员|r
    .goto Hillsbrad Foothills,62.65,20.76
    .accept 498 >>接任务: |cRXP_LOOT_拯救行动|r
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target High Executor Darthalia
    .target Krusk
step << !Shaman !Warrior
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, |cRXP_FRIENDLY_顾问达斯多恩|r, Wanted Poster, |cRXP_FRIENDLY_克鲁斯克|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, Wanted Poster, |cRXP_FRIENDLY_克鲁斯克|r << !BloodElf
    .turnin 493 >>交任务: |cRXP_FRIENDLY_前往希尔斯布莱德丘陵|r
    .accept 496 >>接任务: |cRXP_LOOT_受难药剂|r
    .accept 501 >>接任务: |cRXP_LOOT_痛苦药剂|r
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 494 >>交任务: |cRXP_FRIENDLY_进攻的时机|r
    .accept 527 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 9425 >>交任务: |cRXP_FRIENDLY_前往塔伦米尔|r << BloodElf
    .goto Hillsbrad Foothills,62.58,20.81 << BloodElf
    .accept 549 >>接任务: |cRXP_LOOT_通缉：辛迪加成员|r
    .goto Hillsbrad Foothills,62.65,20.76
    .accept 498 >>接任务: |cRXP_LOOT_拯救行动|r
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target High Executor Darthalia
    .target Advisor Duskingdawn << BloodElf
    .target Krusk
step << Shaman/Warrior
    #xprate <1.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, Wanted Poster, |cRXP_FRIENDLY_克鲁斯克|r, Wanted Poster
    .turnin 1065 >>交任务: |cRXP_FRIENDLY_塔伦米尔之旅|r
    .accept 1066 >>接任务: |cRXP_LOOT_无辜者之血|r
    .turnin 493 >>交任务: |cRXP_FRIENDLY_前往希尔斯布莱德丘陵|r
    .accept 496 >>接任务: |cRXP_LOOT_受难药剂|r
    .accept 501 >>接任务: |cRXP_LOOT_痛苦药剂|r
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 494 >>交任务: |cRXP_FRIENDLY_进攻的时机|r
    .accept 527 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .accept 549 >>接任务: |cRXP_LOOT_通缉：辛迪加成员|r
    .goto Hillsbrad Foothills,62.65,20.76
    .accept 498 >>接任务: |cRXP_LOOT_拯救行动|r
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .accept 567 >>接任务: |cRXP_LOOT_危险！|r
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,62.57,19.64
    .target Apothecary Lydon
    .target High Executor Darthalia
    .target Krusk
step << !Shaman !Warrior
    #xprate <1.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, |cRXP_FRIENDLY_顾问达斯多恩|r, Wanted Poster, |cRXP_FRIENDLY_克鲁斯克|r, Wanted Poster  << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, Wanted Poster, |cRXP_FRIENDLY_克鲁斯克|r, Wanted Poster << !BloodElf
    .turnin 493 >>交任务: |cRXP_FRIENDLY_前往希尔斯布莱德丘陵|r
    .accept 496 >>接任务: |cRXP_LOOT_受难药剂|r
    .accept 501 >>接任务: |cRXP_LOOT_痛苦药剂|r
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 494 >>交任务: |cRXP_FRIENDLY_进攻的时机|r
    .accept 527 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 9425 >>交任务: |cRXP_FRIENDLY_前往塔伦米尔|r << BloodElf
    .goto Hillsbrad Foothills,62.58,20.81 << BloodElf
    .accept 549 >>接任务: |cRXP_LOOT_通缉：辛迪加成员|r
    .goto Hillsbrad Foothills,62.65,20.76
    .accept 498 >>接任务: |cRXP_LOOT_拯救行动|r
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .accept 567 >>接任务: |cRXP_LOOT_危险！|r
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,62.57,19.64
    .target Apothecary Lydon
    .target High Executor Darthalia
    .target Advisor Duskingdawn << BloodElf
    .target Krusk
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[甜瓜汁]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133970:0|t[羊排]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[瓜汁]|cRXP_Buy_和|r|T133970:0|t[Mutton Chops]|cRXP-Buy_|r << Paladin/Shaman
    .collect 1205,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Melon Juice (20)
    .collect 3770,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Mutton Chop (20)
    .collect 3770,10,1145,1 << Paladin/Shaman --Mutton Chop (10)
    .target Innkeeper Shay
    .money <0.2000 << !Paladin !Shaman
    .money <0.3000 << Paladin/Shaman
    .xp <20,1
    .xp >25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133969:0|t[Wild Hog Shanks]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[甜油桃]|cRXP_Buy_和|r|T133969:0|t[Wild Hog Shanks]|cRX|r << Paladin/Shaman
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Sweet Nectar (20)
    .collect 3771,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Wild Hog Shank (20)
    .collect 3771,10,1145,1 << Paladin/Shaman --Wild Hog Shank (10)
    .target Innkeeper Shay
    .money <0.4000 << !Paladin !Shaman
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
    .collect 2515,1000,498,1 --Sharp Arrow (1000)
    .target Kayren Soothallow
    .money <0.0240 << BloodElf
    .money <0.0250 << Troll/Orc
    .isOnQuest 498
    .xp >25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
    .collect 3030,2000,498,1 --Razor Arrow (2000)
    .target Kayren Soothallow
    .money <0.2850 << BloodElf
    .money <0.3000 << Troll/Orc
    .isOnQuest 498
    .xp <25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
    .collect 3030,1000,498,1 --Razor Arrow (1000)
    .target Kayren Soothallow
    .money <0.1425 << BloodElf
    .money <0.1500 << Troll/Orc
    .isOnQuest 498
    .xp <25,1
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
    >>|cRXP_BUY_从他那里购买|r|T135324:0|t[长剑]|cRXP_Buy_|r
    .collect 923,1,885,1 --Longsword (1)
    .target Ott
    .money <0.8307 << !Undead/!BloodElf
    .money <0.8722 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .skill riding,<75,1 << wotlk
step << Shaman/Warrior
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
    >>|cRXP_BUY_从他那里购买|r|T132408:0|t[Merciless Axe]|cRXP_Buy_如果它用完了|r
    .vendor >>供应商和维修
    .target Ott
    .money <3.0343 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
step << Shaman/Warrior
    #completewith Durnholde1
    +装备|T132408:0|t[无情之斧]
    .use 12249
    .itemcount 12249,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
    .xp <26,1
step << Rogue
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
    >>|cRXP_BUY_从他那里购买|r|T135640:0|t[宽刃刀]|cRXP_Buy_如果它用完了|r
    .vendor >>供应商和维修
    .target Ott
    .money <2.8372 << BloodElf/Undead
    .money <2.6953 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
step << Rogue
    #completewith Durnholde1
    +装备|T135640:0|t[宽刃刀]
    .use 12247
    .itemcount 12247,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
    .xp <27,1
step << Rogue wotlk
    #completewith Durnholde1
    .cast 8679 >>在武器上使用|T132273:0|t[即时毒药]
    .itemcount 6947,2
step
    #completewith Durnholde1
    >>杀死|cRXP_ENEMY_邪恶灰熊|r和|cRXX_ENEMY_灰熊|r.掠夺它们的|cRXD_Loot_Tongues|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_Elder灰熊|r，因为它们不值得杀死|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
	#completewith next
	>>杀死|cRXP_ENEMY_Forest Moss Creeper|r。掠夺它们的|cRXX_Loot_Ichor|r
    >>|cRXP_WARN_避免|cRXP_ENEMY_Giant Moss Creeper|r，因为它们还不值得杀死|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
step
    #label Durnholde1
	.goto Hillsbrad Foothills,76.72,46.22,60 >>前往Durnhold Keep
    .isOnQuest 549
step
    #completewith Drull
	>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate守望者|r << !Shaman !Warrior
    >>杀死|cRXP_ENEMY_Syndicate盗贼|r、|cRXD_ENEMY_Syndicate守望者|r和|cRXP_ENEMY_辛迪加阴影法师|r。掠夺|cRXT_ENEMY_辛迪加影子法师|r的|cRXP_Loot_无辜之血小瓶|r << Shaman/Warrior
    .complete 549,1 --Kill Syndicate Rogue (x10)
	.complete 549,2 --Kill Syndicate Watchman (x10)
	.complete 1066,1 << Shaman/Warrior --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Rogue
    .mob Syndicate Watchman
    .mob Syndicate Shadow Mage << Shaman/Warrior
step
    #completewith Togthar
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    >>杀死|cRXP_ENEMY_Jailer Eston|r。抢走他的|cRXX_Loot_铁钥匙|r
    >>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'tar|r的兵营前找到|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19
	>>杀死|cRXP_ENEMY_Jailr Marlgen|r。抢走他的|cRXX_Loot_金钥匙|r
    >>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'tar|r的前面或塔的底部找到|r
    .collect 3499,1,498,2 --Burnished Gold Key (1)
    .mob Jailor Marlgen
step
    #label Togthar
	.goto Hillsbrad Foothills,79.79,39.65
    >>单击地面上的|cRXP_PICK_Ball and Chain |r
    .complete 498,2 --Rescue Tog'thar (1)
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_从她那里购买|r|T134590:0|t[跟踪裤]|cRXP_Buy_和|r|T132603:0|t[Wolf Bracers]|cRXP-Buy_（如果有的话）|r
    .vendor >>供应商和维修
    .target Kris Legace
    .money <1.1374
    .itemcount 4831,<1
    .itemcount 4794,<1
    .itemStat 7,LEVEL,<26
    .itemStat 9,LEVEL,<25
--VV shows vendor twice
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_向她购买|r|T134590:0|t[Stalking Pants]|cRXP_Buy_|r
    .vendor >>供应商和维修
    .target Kris Legace
    .money <0.7859
    .itemcount 4831,<1
    .itemStat 7,LEVEL,<26
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_从她那里购买|r|T132603:0|t[Wolf Bracers]|cRXP_Buy_|r
    .vendor >>供应商和维修
    .target Kris Legace
    .money <0.3515
    .itemcount 4794,<1
    .itemStat 9,LEVEL,<25
step << Rogue/Hunter/Shaman
    #completewith Drull
    +装备|T134590:0|t[跟踪裤]|cRXP_BUY_和|r|T132603:0|t[Wolf Braces]
    .use 4831
    .use 4794
    .itemcount 4831,1
    .itemcount 4794,1
    .itemStat 7,LEVEL,<26
    .itemStat 9,LEVEL,<25
step << Rogue/Hunter/Shaman
    #completewith Drull
    +装备|T134590:0|t[跟踪裤]
    .use 4831
    .itemcount 4831,1
    .itemStat 7,LEVEL,<26
step << Rogue/Hunter/Shaman
    #completewith Drull
    +配备|T132603:0|t[狼式撑杆]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,LEVEL,<25
step
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63
    >>杀死|cRXP_ENEMY_Jailer Eston|r。抢走他的|cRXX_Loot_铁钥匙|r
    >>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'tar|r的兵营前找到，也可以在|r|cRXP-FRIENDLY_Drull前找到|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #label Drull
    .goto Hillsbrad Foothills,75.33,41.50
    >>单击地面上的|cRXP_PICK_Ball and Chain |r
    .complete 498,1 --Rescue Drull (1)
step
    .goto Hillsbrad Foothills,75.29,40.17,40,0
    .goto Hillsbrad Foothills,76.53,41.00,30,0
    .goto Hillsbrad Foothills,77.28,43.55,35,0
    .goto Hillsbrad Foothills,78.98,45.09,35,0
    .goto Hillsbrad Foothills,79.58,46.88,20,0
    .goto Hillsbrad Foothills,80.97,46.77,20,0
    .goto Hillsbrad Foothills,81.82,45.15,20,0
    .goto Hillsbrad Foothills,82.24,42.50,35,0
    .goto Hillsbrad Foothills,80.69,44.07,8,0
    .goto Hillsbrad Foothills,81.10,43.85,8,0
    .goto Hillsbrad Foothills,81.92,39.69,35,0
    .goto Hillsbrad Foothills,83.83,40.78,35,0
    .goto Hillsbrad Foothills,80.67,42.47,30,0
    .goto Hillsbrad Foothills,79.70,43.22,30,0
    .goto Hillsbrad Foothills,79.69,39.76,30,0
    .goto Hillsbrad Foothills,78.25,41.30,30,0
    .goto Hillsbrad Foothills,77.58,39.23,30,0
    .goto Hillsbrad Foothills,78.01,43.37,30,0
    .goto Hillsbrad Foothills,76.47,46.62,30,0
    .goto Hillsbrad Foothills,75.29,40.17
	>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate守望者|r << !Shaman !Warrior
    >>杀死|cRXP_ENEMY_Syndicate盗贼|r、|cRXD_ENEMY_Syndicate守望者|r和|cRXP_ENEMY_辛迪加阴影法师|r。掠夺|cRXT_ENEMY_辛迪加影子法师|r的|cRXP_Loot_无辜之血小瓶|r << Shaman/Warrior
    .complete 549,1,7 --Kill Syndicate Rogue (x10)
	.complete 549,2,7 --Kill Syndicate Watchman (x10)
	.complete 1066,1,4 << Shaman/Warrior --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Rogue
    .mob Syndicate Watchman
    .mob Syndicate Shadow Mage << Shaman/Warrior
step
    #label ExitDurnholde
    #completewith Syndicate1
	.goto Hillsbrad Foothills,76.72,46.22,45 >>退出Durnhold Keep
    .isOnQuest 549
step
    #requires ExitDurnholde
    #completewith Syndicate1
    >>杀死|cRXP_ENEMY_邪恶灰熊|r和|cRXX_ENEMY_灰熊|r.掠夺它们的|cRXD_Loot_Tongues|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_Elder灰熊|r，因为它们不值得杀死|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
    #requires ExitDurnholde
	#completewith next
	>>杀死|cRXP_ENEMY_Forest Moss Creeper|r。掠夺它们的|cRXX_Loot_Ichor|r
    >>|cRXP_WARN_避免|cRXP_ENEMY_Giant Moss Creeper|r，因为它们还不值得杀死|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
step
    #label Syndicate1
    .goto Hillsbrad Foothills,67.06,46.27,40,0
    .goto Hillsbrad Foothills,66.04,45.78,40,0
    .goto Hillsbrad Foothills,64.87,47.17,40,0
    .goto Hillsbrad Foothills,66.13,48.44,40,0
    .goto Hillsbrad Foothills,67.11,50.53,40,0
    .goto Hillsbrad Foothills,76.51,46.31,40,0
    .goto Hillsbrad Foothills,75.29,40.17,20,0
    .goto Hillsbrad Foothills,76.53,41.00,30,0
    .goto Hillsbrad Foothills,77.28,43.55,35,0
    .goto Hillsbrad Foothills,78.98,45.09,35,0
    .goto Hillsbrad Foothills,79.58,46.88,20,0
    .goto Hillsbrad Foothills,80.97,46.77,20,0
    .goto Hillsbrad Foothills,81.82,45.15,20,0
    .goto Hillsbrad Foothills,82.24,42.50,35,0
    .goto Hillsbrad Foothills,80.69,44.07,8,0
    .goto Hillsbrad Foothills,81.10,43.85,8,0
    .goto Hillsbrad Foothills,81.92,39.69,35,0
    .goto Hillsbrad Foothills,83.83,40.78,35,0
    .goto Hillsbrad Foothills,80.67,42.47,30,0
    .goto Hillsbrad Foothills,79.70,43.22,30,0
    .goto Hillsbrad Foothills,79.69,39.76,30,0
    .goto Hillsbrad Foothills,78.25,41.30,30,0
    .goto Hillsbrad Foothills,77.58,39.23,30,0
    .goto Hillsbrad Foothills,78.01,43.37,30,0
    .goto Hillsbrad Foothills,76.47,46.62,30,0
    .goto Hillsbrad Foothills,75.29,40.17
	>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate守望者|r << !Shaman !Warrior
    >>杀死|cRXP_ENEMY_Syndicate盗贼|r、|cRXD_ENEMY_Syndicate守望者|r和|cRXP_ENEMY_辛迪加阴影法师|r。掠夺|cRXT_ENEMY_辛迪加影子法师|r的|cRXP_Loot_无辜之血小瓶|r << Shaman/Warrior
    .complete 549,1 --Kill Syndicate Rogue (x10)
	.complete 549,2 --Kill Syndicate Watchman (x10)
	.complete 1066,1 << Shaman/Warrior --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Rogue
    .mob Syndicate Watchman
    .mob Syndicate Shadow Mage << Shaman/Warrior
step
    #completewith HFields1
    >>杀死|cRXP_ENEMY_邪恶灰熊|r和|cRXX_ENEMY_灰熊|r.掠夺它们的|cRXD_Loot_Tongues|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_Elder灰熊|r，因为它们不值得杀死|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
	#completewith HFields1
    .goto Hillsbrad Foothills,62.93,38.53,45,0
    .goto Hillsbrad Foothills,62.16,39.83,45,0
    .goto Hillsbrad Foothills,60.92,38.20,45,0
    .goto Hillsbrad Foothills,59.23,34.19,45,0
    .goto Hillsbrad Foothills,58.77,28.98,45,0
    .goto Hillsbrad Foothills,57.15,30.80,45,0
	>>杀死|cRXP_ENEMY_Forest Moss Creeper|r。掠夺它们的|cRXX_Loot_Ichor|r
    >>|cRXP_WARN_避免|cRXP_ENEMY_Giant Moss Creeper|r，因为它们还不值得杀死|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
step
    #completewith HFields1
    .goto Hillsbrad Foothills,54.77,28.72,45,0
    .goto Hillsbrad Foothills,52.93,29.45,45,0
    .goto Hillsbrad Foothills,54.29,31.75,45,0
    .goto Hillsbrad Foothills,51.28,35.37,45,0
    .goto Hillsbrad Foothills,43.36,39.38,45,0
    .goto Hillsbrad Foothills,42.56,40.19,45,0
    .goto Hillsbrad Foothills,40.91,44.23,45,0
    .goto Hillsbrad Foothills,39.92,45.83,45,0
    .goto Hillsbrad Foothills,37.97,44.59,45,0
    .goto Hillsbrad Foothills,39.88,40.56,45,0
    .goto Hillsbrad Foothills,38.45,38.77,45,0
    .goto Hillsbrad Foothills,38.70,36.71,45,0
    .goto Hillsbrad Foothills,39.79,34.43,45,0
	>>杀死|cRXP_ENEMY_饥饿的山狮|r。掠夺它们的|cRXX_Loot_Blood|r
    .complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
    #label HFields1
    .goto Hillsbrad Foothills,36.02,39.19,80 >>前往希尔斯布莱德球场
    .isOnQuest 527
step
    #xprate <1.7
    #completewith Farmhands
    .line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
    >>杀死|cRXP_ENEMY_Citizen Wilkes |r
    >>|cRXP_WARN_他在镇上的道路上巡逻|r
	.complete 567,2 --Kill Citizen Wilkes (x1)
    .unitscan Citizen Wilkes
step
	#completewith Getz
	>>杀死|cRXP_ENEMY_Hillsbrad农民|r和|cRXP_ENEMY_Hilsbrad农场工人|r
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob Hillsbrad Farmer
    .mob Hillsbrad Farmhand
step
    #completewith next
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    >>杀死|cRXP_ENEMY_Farmer Getz|r
    >>|cRXP_WARN_他可以在房子里、田野里或谷仓里找到|r
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
step
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78,10,0
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78,10,0
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78,10,0
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78
    >>杀死|cRXP_ENEMY_Farmer Ray|r
    >>|cRXP_WARN_他可以在葡萄园里找到，也可以在房子的一楼和二楼找到|r
    .complete 527,3 --Farmer Ray (1)
    .mob Farmer Ray
step
    #label Getz
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70
    >>杀死|cRXP_ENEMY_Farmer Getz|r
    >>|cRXP_WARN_他可以在房子里、田野里或谷仓里找到|r
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
step
    #label Farmhands
#loop
	.line Hillsbrad Foothills,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	>>杀死|cRXP_ENEMY_Hillsbrad农民|r和|cRXP_ENEMY_Hilsbrad农场工人|r
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob Hillsbrad Farmer
    .mob Hillsbrad Farmhand
step
	#completewith BearT
	>>杀死|cRXP_ENEMY_Forest Moss Creeper|r和|cRXX_ENEMY_Giant Moss Creeps|r。掠夺它们的|cRXD_Loot_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
step
    #completewith next
    >>杀死|cRXP_ENEMY_邪恶灰熊|r和|cRXX_ENEMY_灰熊|r.掠夺它们的|cRXD_Loot_Tongues|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_Elder灰熊|r，因为它们不值得杀死|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
#loop
	.line Hillsbrad Foothills,39.79,34.43,38.70,36.71,38.45,38.77,39.88,40.56,37.97,44.59,39.92,45.83,40.91,44.23,42.56,40.19,43.36,39.38,51.28,35.37,54.29,31.75,52.93,29.45,54.77,28.72
	.goto Hillsbrad Foothills,39.79,34.43,45,0
	.goto Hillsbrad Foothills,38.70,36.71,45,0
	.goto Hillsbrad Foothills,38.45,38.77,45,0
	.goto Hillsbrad Foothills,39.88,40.56,45,0
	.goto Hillsbrad Foothills,37.97,44.59,45,0
	.goto Hillsbrad Foothills,39.92,45.83,45,0
	.goto Hillsbrad Foothills,40.91,44.23,45,0
	.goto Hillsbrad Foothills,42.56,40.19,45,0
	.goto Hillsbrad Foothills,43.36,39.38,45,0
	.goto Hillsbrad Foothills,51.28,35.37,45,0
	.goto Hillsbrad Foothills,54.29,31.75,45,0
	.goto Hillsbrad Foothills,52.93,29.45,45,0
	.goto Hillsbrad Foothills,54.77,28.72,45,0
	>>杀死|cRXP_ENEMY_饥饿的山狮|r。掠夺它们的|cRXX_Loot_Blood|r
    .complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
    #label BearT
#loop
	.line Hillsbrad Foothills,40.88,33.87,40.86,37.40,40.85,39.42,38.50,38.04,37.68,41.23,38.71,42.66,40.40,44.65,44.39,41.34,45.23,39.62,43.87,37.01,49.75,34.33,52.06,36.86,51.91,32.97,52.39,29.27,57.38,22.85,57.09,25.67,58.08,28.07,56.88,28.85,59.68,30.90,57.71,34.06,59.89,36.74,62.63,37.64,64.73,38.03,66.52,34.52
	.goto Hillsbrad Foothills,40.88,33.87,45,0
	.goto Hillsbrad Foothills,40.86,37.40,45,0
	.goto Hillsbrad Foothills,40.85,39.42,45,0
	.goto Hillsbrad Foothills,38.50,38.04,45,0
	.goto Hillsbrad Foothills,37.68,41.23,45,0
	.goto Hillsbrad Foothills,38.71,42.66,45,0
	.goto Hillsbrad Foothills,40.40,44.65,45,0
	.goto Hillsbrad Foothills,44.39,41.34,45,0
	.goto Hillsbrad Foothills,45.23,39.62,45,0
	.goto Hillsbrad Foothills,43.87,37.01,45,0
	.goto Hillsbrad Foothills,49.75,34.33,45,0
	.goto Hillsbrad Foothills,52.06,36.86,45,0
	.goto Hillsbrad Foothills,51.91,32.97,45,0
	.goto Hillsbrad Foothills,52.39,29.27,45,0
	.goto Hillsbrad Foothills,57.38,22.85,45,0
	.goto Hillsbrad Foothills,57.09,25.67,45,0
	.goto Hillsbrad Foothills,58.08,28.07,45,0
	.goto Hillsbrad Foothills,56.88,28.85,45,0
	.goto Hillsbrad Foothills,59.68,30.90,45,0
	.goto Hillsbrad Foothills,57.71,34.06,45,0
	.goto Hillsbrad Foothills,59.89,36.74,45,0
	.goto Hillsbrad Foothills,62.63,37.64,45,0
	.goto Hillsbrad Foothills,64.73,38.03,45,0
	.goto Hillsbrad Foothills,66.52,34.52,45,0
    >>杀死|cRXP_ENEMY_邪恶灰熊|r和|cRXX_ENEMY_灰熊|r.掠夺它们的|cRXD_Loot_Tongues|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_Elder灰熊|r，因为它们不值得杀死|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
#loop
	.line Hillsbrad Foothills,62.85,38.74,62.24,39.96,60.92,37.92,59.62,33.33,56.88,29.73,59.80,27.72,57.63,24.16,56.47,16.42,59.36,14.55,60.54,13.67,62.65,12.90,64.43,10.22,65.18,6.93,65.31,5.76,66.90,9.02,70.39,8.89,68.86,10.18,67.35,12.95,71.38,19.81,71.78,21.89,64.85,24.92,66.68,28.15,69.76,31.89,67.62,37.65,62.85,38.74
	.goto Hillsbrad Foothills,62.85,38.74,45,0
	.goto Hillsbrad Foothills,62.24,39.96,45,0
	.goto Hillsbrad Foothills,60.92,37.92,45,0
	.goto Hillsbrad Foothills,59.62,33.33,45,0
	.goto Hillsbrad Foothills,56.88,29.73,45,0
	.goto Hillsbrad Foothills,59.80,27.72,45,0
	.goto Hillsbrad Foothills,57.63,24.16,45,0
	.goto Hillsbrad Foothills,56.47,16.42,45,0
	.goto Hillsbrad Foothills,59.36,14.55,45,0
	.goto Hillsbrad Foothills,60.54,13.67,45,0
	.goto Hillsbrad Foothills,62.65,12.90,45,0
	.goto Hillsbrad Foothills,64.43,10.22,45,0
	.goto Hillsbrad Foothills,65.18,6.93,45,0
	.goto Hillsbrad Foothills,65.31,5.76,45,0
	.goto Hillsbrad Foothills,66.90,9.02,45,0
	.goto Hillsbrad Foothills,70.39,8.89,45,0
	.goto Hillsbrad Foothills,68.86,10.18,45,0
	.goto Hillsbrad Foothills,67.35,12.95,45,0
	.goto Hillsbrad Foothills,71.38,19.81,45,0
	.goto Hillsbrad Foothills,71.78,21.89,45,0
	.goto Hillsbrad Foothills,64.85,24.92,45,0
	.goto Hillsbrad Foothills,66.68,28.15,45,0
	.goto Hillsbrad Foothills,69.76,31.89,45,0
	.goto Hillsbrad Foothills,67.62,37.65,45,0
	.goto Hillsbrad Foothills,62.85,38.74,45,0
	>>杀死|cRXP_ENEMY_Forest Moss Creeper|r和|cRXX_ENEMY_Giant Moss Creeps|r。掠夺它们的|cRXD_Loot_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, |cRXP_FRIENDLY_乌比|r, Darthalia, |cRXP_FRIENDLY_克鲁斯克|r
    .turnin 1066 >>交任务: |cRXP_FRIENDLY_无辜者之血|r << Shaman/Warrior
    .turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
    .accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
    .turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
    .accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
    .accept 1067 >>接任务: |cRXP_WARN_返回雷霆崖|r << Shaman/Warrior
    .accept 509 >>接任务: |cRXP_LOOT_苦楚药剂|r
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
    .goto Hillsbrad Foothills,61.53,19.16
    .turnin 527 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
    .accept 528 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
	.turnin 549 >>交任务: |cRXP_FRIENDLY_通缉：辛迪加成员|r
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 498 >>交任务: |cRXP_FRIENDLY_拯救行动|r
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target Umpi
    .target High Executor Darthalia
    .target Krusk
    .xp <24,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, |cRXP_FRIENDLY_乌比|r, Darthalia, |cRXP_FRIENDLY_克鲁斯克|r
    .turnin 1066 >>交任务: |cRXP_FRIENDLY_无辜者之血|r << Shaman/Warrior
    .turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
    .accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
    .turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
    .accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
    .accept 1067 >>接任务: |cRXP_WARN_返回雷霆崖|r << Shaman/Warrior
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
    .goto Hillsbrad Foothills,61.53,19.16
    .turnin 527 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
    .accept 528 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
	.turnin 549 >>交任务: |cRXP_FRIENDLY_通缉：辛迪加成员|r
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 498 >>交任务: |cRXP_FRIENDLY_拯救行动|r
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target Umpi
    .target High Executor Darthalia
    .target Krusk
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
    .collect 2515,1000,1145,1 --Sharp Arrow (1000)
    .target Kayren Soothallow
    .money <0.0240 << BloodElf
    .money <0.0250 << Troll/Orc
    .xp >25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
    .collect 3030,2000,1145,1 --Razor Arrow (2000)
    .target Kayren Soothallow
    .money <0.2850 << BloodElf
    .money <0.3000 << Troll/Orc
    .xp <25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
    .collect 3030,1000,1145,1 --Razor Arrow (1000)
    .target Kayren Soothallow
    .money <0.1425 << BloodElf
    .money <0.1500 << Troll/Orc
    .xp <25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[甜瓜汁]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133970:0|t[羊排]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[瓜汁]|cRXP_Buy_和|r|T133970:0|t[Mutton Chops]|cRXP-Buy_|r << Paladin/Shaman
    .collect 1205,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Melon Juice (20)
    .collect 3770,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Mutton Chop (20)
    .collect 3770,10,1145,1 << Paladin/Shaman --Mutton Chop (10)
    .target Innkeeper Shay
    .money <0.2000 << !Paladin !Shaman
    .money <0.3000 << Paladin/Shaman
    .xp <20,1
    .xp >25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133969:0|t[Wild Hog Shanks]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[甜油桃]|cRXP_Buy_和|r|T133969:0|t[Wild Hog Shanks]|cRX|r << Paladin/Shaman
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Sweet Nectar (20)
    .collect 3771,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Wild Hog Shank (20)
    .collect 3771,10,1145,1 << Paladin/Shaman --Wild Hog Shank (10)
    .target Innkeeper Shay
    .money <0.4000 << !Paladin !Shaman
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step
    .goto Hillsbrad Foothills,62.11,19.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
    .accept 546 >>接任务: |cRXP_LOOT_死亡的纪念品|r
    .target Deathguard Samsa
step
    #xprate <1.7
    #completewith Peasants
    >>杀死|cRXP_ENEMY_Hillsbrad人类|r。掠夺他们的|cRXX_Loot_Sulls|r
    .complete 546,1 --Hillsbrad Human Skull (30)
step
    #xprate >1.6999
    #completewith Peasants
    >>杀死|cRXP_ENEMY_Hillsbrad人类|r。掠夺他们的|cRXX_Loot_Sulls|r
    .complete 546,1 --Hillsbrad Human Skull (30)
step
    #xprate <1.7
    #completewith Peasants
    .line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
    >>杀死|cRXP_ENEMY_Citizen Wilkes |r
    >>|cRXP_WARN_他在镇上的道路上巡逻|r
	.complete 567,2 --Kill Citizen Wilkes (x1)
    .unitscan Citizen Wilkes
step
    #label ERStanley
	.goto Hillsbrad Foothills,32.67,35.33
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦雷|r
    >>|cRXP_WARN_等待RP结束，然后杀死|r|cRXP_ENEMY_Enraged Stanley|r
    >>|cRXP_WARN_杀死|r|cRXP_ENEMY_Enraged Stanley|r|cRXP_WARN_获得完整任务的经验|r
    .turnin 502 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
    .timer 9,Stanley RP (BE ALERT)
    .mob Stanley
step
    #xprate <1.7
    #completewith next
	>>杀死|cRXP_ENEMY_Hillsbrad农民|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    #xprate <1.7
    #label Kalaba
	.goto Hillsbrad Foothills,36.00,46.50
    >>杀死|cRXP_ENEMY_Farmer Kalaba|r
    .complete 567,4 --Kill Farmer Kalaba (x1)
    .mob Farmer Kalaba
    .unitscan Enraged Stanley
step
    #label Peasants
#loop
	.line Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,36.03,44.40,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	>>杀死|cRXP_ENEMY_Hillsbrad农民|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
    .unitscan Enraged Stanley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
    .accept 509 >>接任务: |cRXP_LOOT_苦楚药剂|r
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .target Apothecary Lydon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r, Darthalia
    .turnin 546 >>交任务: |cRXP_FRIENDLY_死亡的纪念品|r
    .goto Hillsbrad Foothills,62.11,19.68
    .turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
    .accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .target Deathguard Samsa
    .target High Executor Darthalia
    .isQuestComplete 546
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
    .turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
    .accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .target High Executor Darthalia
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[甜瓜汁]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133970:0|t[羊排]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[瓜汁]|cRXP_Buy_和|r|T133970:0|t[Mutton Chops]|cRXP-Buy_|r << Paladin/Shaman
    .collect 1205,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Melon Juice (20)
    .collect 3770,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Mutton Chop (20)
    .collect 3770,10,1145,1 << Paladin/Shaman --Mutton Chop (10)
    .target Innkeeper Shay
    .money <0.2000 << !Paladin !Shaman
    .money <0.3000 << Paladin/Shaman
    .xp <20,1
    .xp >25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133969:0|t[Wild Hog Shanks]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[甜油桃]|cRXP_Buy_和|r|T133969:0|t[Wild Hog Shanks]|cRX|r << Paladin/Shaman
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Sweet Nectar (20)
    .collect 3771,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Wild Hog Shank (20)
    .collect 3771,10,1145,1 << Paladin/Shaman --Wild Hog Shank (10)
    .target Innkeeper Shay
    .money <0.4000 << !Paladin !Shaman
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << Shaman/Warrior
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
    >>|cRXP_BUY_从他那里购买|r|T132408:0|t[Merciless Axe]|cRXP_Buy_如果它用完了|r
    .vendor >>供应商和维修
    .target Ott
    .money <3.0343 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
step << Shaman/Warrior
    #completewith Verringtan
    +装备|T132408:0|t[无情之斧]
    .use 12249
    .itemcount 12249,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
    .xp <26,1
step << Rogue
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
    >>|cRXP_BUY_从他那里购买|r|T135640:0|t[宽刃刀]|cRXP_Buy_如果它用完了|r
    .vendor >>供应商和维修
    .target Ott
    .money <2.8372 << BloodElf/Undead
    .money <2.6953 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
step << Rogue
    #completewith Verringtan
    +装备|T135640:0|t[宽刃刀]
    .use 12247
    .itemcount 12247,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
    .xp <27,1
step
#loop
	.line Hillsbrad Foothills,64.24,59.25,66.03,61.63,64.51,63.41,62.90,62.04,64.24,59.25
	.goto Hillsbrad Foothills,64.24,59.25,45,0
	.goto Hillsbrad Foothills,66.03,61.63,45,0
	.goto Hillsbrad Foothills,64.51,63.41,45,0
	.goto Hillsbrad Foothills,62.90,62.04,45,0
	.goto Hillsbrad Foothills,64.24,59.25,45,0
    >>在地面上掠夺|cRXP_Loot_Mudnosus Blossoms|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_Mudsouth Gnolls|r cast|r|T136090:0|t[吊泥]|cRXP-WARN_（减少50%的命中几率，持续15秒）|r << Rogue/Warrior/Paladin
    .complete 509,1 --Mudsnout Blossoms (6)
step
    #completewith Blacksmith
    >>杀死|cRXP_ENEMY_Hillsbrad人类|r。掠夺他们的|cRXX_Loot_Sulls|r
    .complete 546,1 --Hillsbrad Human Skull (30)
step
    #completewith Verringtan
    >>杀死|cRXP_ENEMY_Hillsbrad学徒铁匠|r
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
    .mob Hillsbrad Apprentice Blacksmith
step
    #completewith next
	.goto Hillsbrad Foothills,32.56,45.95,0
	>>杀死|cRXP_ENEMY_Blacksmith Verringtan|r
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
    .mob Blacksmith Verringtan
step
    .goto Hillsbrad Foothills,32.01,45.45
    >>在地面上抢劫内部的|cRXP_PICK_运铁|r
    .complete 529,3 --Collect Shipment of Iron (x1)
step
    #label Verringtan
	.goto Hillsbrad Foothills,32.56,45.95,15,0
	.goto Hillsbrad Foothills,32.20,45.65,15,0
	.goto Hillsbrad Foothills,32.11,44.43,15,0
#loop
	.line Hillsbrad Foothills,32.56,45.95,32.20,45.65,32.11,44.33,32.56,45.95
	.goto Hillsbrad Foothills,32.56,45.95,20,0
	.goto Hillsbrad Foothills,32.20,45.65,20,0
	.goto Hillsbrad Foothills,32.11,44.33,20,0
	.goto Hillsbrad Foothills,32.56,45.95,20,0
	>>杀死|cRXP_ENEMY_Blacksmith Verringtan|r
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
    .mob Blacksmith Verringtan
step
    #label Blacksmith
#loop
	.line Hillsbrad Foothills,31.96,45.83,32.69,45.10,31.15,43.91,31.10,46.75,31.89,46.72,31.96,45.83
	.goto Hillsbrad Foothills,31.96,45.83,25,0
	.goto Hillsbrad Foothills,32.69,45.10,25,0
	.goto Hillsbrad Foothills,31.15,43.91,25,0
	.goto Hillsbrad Foothills,31.10,46.75,25,0
	.goto Hillsbrad Foothills,31.89,46.72,25,0
	.goto Hillsbrad Foothills,31.96,45.83,25,0
    >>杀死|cRXP_ENEMY_Hillsbrad学徒铁匠|r
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
    .mob Hillsbrad Apprentice Blacksmith
step
#loop
	.line Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,36.03,44.40,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
    >>杀死|cRXP_ENEMY_Hillsbrad人类|r。掠夺他们的|cRXX_Loot_Sulls|r
    .complete 546,1 --Hillsbrad Human Skull (30)
    .mob Hillsbrad Peasant
    .mob Hillsbrad Farmer
    .mob Hillsbrad Footman
    .mob Hillsbrad Councilman
    .mob Hillsbrad Apprentice Blacksmith
step << skip
    #xprate 1.49-1.58
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+14275 >>升级到25级和14275+/28900xp << !Shaman !Warrior
    .xp 25+16000 >>升级到25级和18475+/28900xp << Shaman/Warrior
    .isOnQuest 546
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf !Shaman !Warrior
--1.5x, on SOD and Darkhan
step << skip
    #xprate 1.49-1.58
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+18100 >>升级到25级和18100+/28900xp << !Shaman !Warrior
    .xp 25+22300 >>升级到25级和22300+/28900xp << Shaman/Warrior
    .isQuestTurnedIn 546
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf !Shaman !Warrior
--1.5x, on Darkhan
step << !Shaman !Warrior skip
    #xprate 1.49-1.58
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+16750 >>升级到25级和16750+/28900xp
    .isOnQuest 546
    .isQuestAvailable 9167 << !Shaman !Warrior
--1.5x, on SOD
step << !Shaman !Warrior skip
    #xprate 1.49-1.58
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+20575 >>升级到25级和20575+/28900xp
    .isQuestTurnedIn 546
    .isQuestAvailable 9167 << !Shaman !Warrior
--1.5x on neither
step << skip
    #xprate 1.59-1.68
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+13300 >>升级到25级和13300+/28900xp << !Shaman !Warrior
    .xp 25+17780 >>升级到25级和17780+/28900xp << Shaman/Warrior
    .isOnQuest 546
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf !Shaman !Warrior
--1.6x, on SOD and Darkhan
step << skip
    #xprate 1.59-1.68
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+17380 >>升级到25级和17380+/28900xp << !Shaman !Warrior
    .xp 25+21860 >>升级到25级和21860+/28900xp << Shaman/Warrior
    .isQuestTurnedIn 546
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf !Shaman !Warrior
--1.6x, on Darkhan
step << !Shaman !Warrior skip
    #xprate 1.59-1.68
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+15940 >>升级到25级和15940+/28900xp
    .isOnQuest 546
    .isQuestAvailable 9167 << !Shaman !Warrior
--1.6x, on SOD
step << !Shaman !Warrior skip
    #xprate 1.59-1.68
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+20020 >>升级到25级和20020+/28900xp
    .isQuestTurnedIn 546
    .isQuestAvailable 9167 << !Shaman !Warrior
--1.6x on neither
step << skip
    #xprate >1.6999
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+12325 >>升级到25级和12325+/28900xp << !Shaman !Warrior
    .xp 25+17085 >>升级到25级和17085+/28900xp << Shaman/Warrior
    .isOnQuest 546
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf !Shaman !Warrior
--1.7x, on SOD and Darkhan
step << skip
    #xprate >1.6999
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+16660 >>升级到25级和16660+/28900xp << !Shaman !Warrior
    .xp 25+21420 >>升级到25级和21420+/28900xp << Shaman/Warrior
    .isQuestTurnedIn 546
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf !Shaman !Warrior
--1.7x, on Darkhan
step << !Shaman !Warrior skip
    #xprate >1.6999
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+15130 >>升级到25级和15130+/28900xp
    .isOnQuest 546
    .isQuestAvailable 9167 << !Shaman !Warrior
--1.7x, on SOD
step << !Shaman !Warrior skip
    #xprate >1.6999
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+19465 >>升级到25级和19465+/28900xp
    .isQuestTurnedIn 546
    .isQuestAvailable 9167 << !Shaman !Warrior
--1.7x on neither
step << !Orc/!Warrior
    #completewith Battle
    .goto Hillsbrad Foothills,47.01,31.20 << wotlk
    >>前往Yeti洞穴。死在东边 << wotlk
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Darthalia, |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r, Lydon
    .turnin 529 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 546 >>交任务: |cRXP_FRIENDLY_死亡的纪念品|r
    .goto Hillsbrad Foothills,62.11,19.68
    .turnin 509 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
    .accept 513 >>接任务: |cRXP_LOOT_苦楚药剂|r
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .target High Executor Darthalia
    .target Deathguard Samsa
    .target Apothecary Lydon
    .isQuestAvailable 546
step
    #xprate >1.6999
    #label Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r and |cRXP_FRIENDLY_Lydon|r
    .turnin 529 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 509 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
    .accept 513 >>接任务: |cRXP_LOOT_苦楚药剂|r
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .target High Executor Darthalia
    .target Apothecary Lydon
step
    #xprate <1.7
    #label Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r and |cRXP_FRIENDLY_Lydon|r
    .turnin 529 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
    .accept 532 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 509 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
    .accept 513 >>接任务: |cRXP_LOOT_苦楚药剂|r
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .target High Executor Darthalia
    .target Apothecary Lydon
step << Shaman/Warrior
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
    >>|cRXP_BUY_从他那里购买|r|T132408:0|t[Merciless Axe]|cRXP_Buy_如果它用完了|r
    .vendor >>供应商和维修
    .target Ott
    .money <3.0343 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
step << Shaman/Warrior
    #completewith Verringtan
    +装备|T132408:0|t[无情之斧]
    .use 12249
    .itemcount 12249,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
    .xp <26,1
step << Rogue
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
    >>|cRXP_BUY_从他那里购买|r|T135640:0|t[宽刃刀]|cRXP_Buy_如果它用完了|r
    .vendor >>供应商和维修
    .target Ott
    .money <2.8372 << BloodElf/Undead
    .money <2.6953 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
step << Rogue
    #completewith Verringtan
    +装备|T135640:0|t[宽刃刀]
    .use 12247
    .itemcount 12247,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
    .xp <27,1
step << Druid
	#completewith next
	.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
	.zoneskip Moonglade
    .xp <26,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 1850 >>训练你的职业技能
	.target Loganaar
    .xp <26,1
step << BloodElf Mage wotlk
    .cast 32272 >>演员阵容|T135761:0|t[电传：银月亮]传送到银月亮城
    .zoneskip Silvermoon City
    .money <4.5
    .itemcount 17031,1
    .skill riding,75,1
step << !Shaman !Warrior
    #completewith Durotar
    .hs >>炉膛到地下城
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
    .zoneskip Orgrimmar
    .zoneskip Silvermoon City << BloodElf Mage wotlk
    .train 3563,1 << Troll Mage
step << Mage
    #completewith ElixirA
    .cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
    .zoneskip Undercity
    .itemcount 17031,1
    .train 3563,3
step << Mage
    #completewith next
    .goto Undercity,68.25,40.67,15,0
    .goto Undercity,66.06,30.63,20,0
    .goto Undercity,67.27,23.68,20,0
    .goto Undercity,82.77,15.85,20 >>前往|cRXP_FRIENDLY_Hannah|r
    .train 3563,1
step << Mage
    .goto Undercity,82.77,15.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜|r
    >>|cRXP_BUY_从她那里购买|r|T134419:0|t[传送符文]|cRXP_Buy_|r
    .collect 17031,1,496,1 --Rune of Teleportation (1)
    .target Hannah Akeley
    .train 3563,1
step << Mage
    .goto Undercity,84.19,15.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱克斯顿·莫泰姆|r, 他在楼上
    .train 3563 >>列车|T135766:0|t[电传：Undercity]
    .target Lexington Mortaim
    .train 3563,1
step << !Shaman !Warrior
    #completewith next
    .goto Undercity,63.77,47.25,15,0 << !Mage
    .goto Undercity,65.43,56.36,30,0 << !Mage
    .goto Undercity,64.78,64.48,30,0 << !Mage
    .goto Undercity,52.68,77.65,15,0
    .goto Undercity,51.15,80.09,12,0
    .goto Undercity,49.06,78.17,12,0
    .goto Undercity,47.80,75.46,15,0
    .goto Undercity,48.81,69.28,20 >>前往|cRXP_FRIENDLY_Faranell|r
step << !Shaman !Warrior
    #label ElixirA
    .goto Undercity,48.81,69.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
    .turnin 513 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
step << Troll Mage
    .cast 3567 >>演员阵容|T135759:0|t[传送：奥格瑞玛]传送到奥格瑞玛
    .zoneskip Orgrimmar
    .itemcount 17031,1
    .train 3567,3
step << !Shaman !Warrior
    #completewith Durotar
    .goto Undercity,46.26,72.32
    .goto Undercity,67.88,14.97,30 >>|cRXP_WARN_跑到书架上。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=c0DFOlRQrKs >>|cRXP_WARN_单击此处|r
    .zoneskip Orgrimmar << Troll Mage
    .isQuestAvailable 885
step << BloodElf !Warlock !Paladin wotlk
    .goto Undercity,59,91,11.32,20,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
    .money <4.5
    .skill riding,75,1
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
step << BloodElf !Warlock !Paladin wotlk
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,75.63,58.34,20,0
    .goto Silvermoon City,73.22,59.91,20,0
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>前往: |cRXP_PICK_永歌森林|r
    .money <4.5
    .skill riding,75,1
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.38,53.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_佩拉斯卡米|r
    .skill riding,75 >>火车|T136103:0|t（学徒骑马）
	.target Perascamin
    .money <4.5
    .skill riding,75,1
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.09,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维奈丝特拉|r
    +|cRXP_BUY_从她那里买任何你喜欢的|r|T132228:0|t[Hawkstrader]|cRXP_Buy_|r
	.target Winaestra
    .itemcount 28927,<1 --Red Hawkstrider
    .itemcount 29220,<1 --Blue Hawkstrider
    .itemcount 29221,<1 --Black Hawkstrider
    .itemcount 29222,<1 --Purple Hawkstrider
    .money <0.9
    .skill riding,<75,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >>使用|T132227:0|t[红鹰]学习它
    .use 28927
    .itemcount 28927,1
    .skill riding,75,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >>使用|T132229:0|t[蓝鹰]学习
    .use 29220
    .itemcount 29220,1
    .skill riding,75,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >>使用|T132228:0|t[黑鹰]学习
    .use 29221
    .itemcount 29221,1
    .skill riding,75,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >>使用|T132231:0|t[紫色鹰爪]学习
    .use 29222
    .itemcount 29222,1
    .skill riding,75,1
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132227:0|t[红鹰步行者]|cRXP_WARN_拖动到动作栏中|r
    .cast 34795 >>安装您的|T132227:0|t[红色鹰嘴鹬]
    .train 34795,3
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132229:0|t[Blue Hawkstrader]|cRXP_WARN_拖动到动作栏中|r
    .cast 35020 >>安装您的|T132229:0|t[蓝鹰]
    .train 35020,3
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132228:0|t[Black Hawkstrader]|cRXP_WARN_拖动到动作栏中|r
    .cast 29221 >>安装您的|T132228:0|t[黑色鹰爪]
    .train 29221,3
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132231:0|t[Purple Hawkstrader]|cRXP_WARN_拖动到动作栏中|r
    .cast 29222 >>装上您的|T132231:0|t[紫色鹰爪]
    .train 29222,3
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
step << BloodElf !Warlock !Paladin wotlk
    #completewith Durotar
    .hs >>炉膛到地下城
	.cooldown item,6948,>0
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << BloodElf !Warlock !Paladin wotlk
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30 >>乘电梯返回Tirisfal
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << !Shaman !Warrior
    .goto Undercity,66.21,4.90,15,0
    .goto Tirisfal Glades,61.73,64.87
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Durotar
    .zoneskip Orgrimmar
    .itemcount 17031,1 << Troll Mage
    .train 3567,1 << Troll Mage
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,60.08,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velma|r
    .skill riding,75 >>火车|T136103:0|t（学徒骑马）
    .target Velma Warnam
    .money <4.5
    .skill riding,75,1
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,59.87,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_撒迦利亚·普斯特|r
    +|cRXP_BUY_从他那里买任何你喜欢的|r|T132264:0|t[Skeletal Horse]|cRXP_Buy_|r
	.target Zachariah Post
    .itemcount 13331,<1 --Red Skeletal Horse
    .itemcount 13332,<1 --Blue Skeletal Horse
    .itemcount 13333,<1 --Brown Skeletal Horse
    .itemcount 46308,<1 --Brown Skeletal Horse
    .money <0.9
    .skill riding,<75,1
step << !Warlock Undead wotlk
    .cast 55884 >>使用|T132264:0|t[红色骷髅马]学习
    .use 13331
    .itemcount 13331,1
    .skill riding,75,1
step << !Warlock Undead wotlk
    .cast 55884 >>使用|T132264:0|t[蓝色骷髅马]学习
    .use 13332
    .itemcount 13332,1
    .skill riding,75,1
step << !Warlock Undead wotlk
    .cast 55884 >>使用|T132264:0|t[棕色骷髅马]学习它
    .use 13333
    .itemcount 13333,1
    .skill riding,75,1
step << !Warlock Undead wotlk
    .cast 55884 >>使用|T132264:0|t[黑色骷髅马]学习
    .use 46308
    .itemcount 46308,1
    .skill riding,75,1
step << !Warlock Undead wotlk
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132264:0|t[红骷髅马]|cRXP_WARN_拖动到动作栏中|r
    .cast 17462 >>骑上您的|T132264:0|t[红色骷髅马]
    .train 17462,3
    .zoneskip Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << !Warlock Undead wotlk
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132264:0|t[Blue Skeletal Horse]|cRXP_WARN_拖动到动作栏中|r
    .cast 17463 >>骑上您的|T132264:0|t[蓝色骷髅马]
    .train 17463,3
    .zoneskip Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << !Warlock Undead wotlk
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132264:0|t[Brown Skeletal Horse]|cRXP_WARN_拖动到动作栏中|r
    .cast 17464 >>骑上您的|T132264:0|t[棕色骷髅马]
    .train 17464,3
    .zoneskip Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << !Warlock Undead wotlk
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132264:0|t[黑骨马]|cRXP_WARN_拖动到动作栏中|r
    .cast 64977 >>骑上您的|T132264:0|t[黑色骷髅马]
    .train 64977,3
    .zoneskip Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << !Shaman !Warrior
    #label Durotar
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
    .zoneskip Orgrimmar
    .itemcount 17031,1 << Troll Mage
    .train 3567,1 << Troll Mage
]])


RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 25-27阿什维尔JJ
#version 1
#group RestedXP部落1-30
#next 27-28南部贫瘠JJ
#xprate >1.4999

step << Shaman/Warrior
    #completewith OrgTrain
    .hs >>前往: 奥格瑞玛
step << Troll Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮菲瑞多|r, 他在楼下
    .train 120 >>训练你的职业技能
    .target Pephredo
    .xp <26,1
    .train 3567,3
    .zoneskip Orgrimmar,1
step << Mage
    #completewith Horthus
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,50.93,67.97,30,0
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,45.78,57.19,20,0
    .goto Orgrimmar,45.44,56.55,10 >>前往|cRXP_FRIENDLY_Horthus|r
    .itemcount 17031,<2
    .train 3567,1 << Troll Mage
step << Troll Mage
    #completewith Horthus
    .goto Orgrimmar,39.53,75.82,30,0
    .goto Orgrimmar,42.68,62.42,30,0
    .goto Orgrimmar,45.57,57.46,20,0
    .goto Orgrimmar,45.44,56.55,10 >>前往|cRXP_FRIENDLY_Horthus|r
    .train 3567,3
    .zoneskip Durotar
step << Mage
    #label Horthus
    .goto Orgrimmar,45.44,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍苏斯|r
    >>|cRXP_BUY_从他那里购买|r|T134419:0|t[传送符文]|cRXP_Buy_|r
    .collect 17031,2,496,1 --Rune of Teleportation (2)
    .money <0.1900
    .target Horthus
step << Troll Mage
    #completewith MeetingTW
    #label MageRune1
    .goto Orgrimmar,41.83,61.66,6,0
    .goto Orgrimmar,42.01,60.77,6,0
    .goto Orgrimmar,41.73,62.41,8,0
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>向上爬塔，然后前往Grommash Hold
    .zoneskip Durotar
    .isOnQuest 9813
step << !Troll Mage
    #completewith OrgFP
    #label MageRune1
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>向上行进至|cRXP_FRIENDLY_Doras|r
    .zoneskip Durotar
step << !Shaman !Warrior !Troll !Orc
    #completewith OrgFP
    #requires MageRune1 << Mage
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,51.01,68.03,30,0
    .goto Orgrimmar,49.72,66.08,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>向上行进至|cRXP_FRIENDLY_Doras|r
step << !Shaman !Warrior !Troll !Orc
    #label OrgFP
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    .fp Orgrimmar >>获取Orgrimmar飞行路线
    .target Doras
step << !Shaman !Warrior
    #completewith MeetingTW
    #label ValleyOW
    #requires MageRune1 << Troll Mage
    .goto Orgrimmar,49.59,94.74,30,0 << Orc/Troll
    .goto Orgrimmar,49.42,90.90,30,0 << Orc/Troll
    .goto Orgrimmar,52.26,88.65,30,0 << Orc/Troll
    .goto Orgrimmar,42.63,61.99,15,0 << Orc/Troll
    .goto Orgrimmar,41.83,61.66,6,0 << Orc/Troll
    .goto Orgrimmar,42.01,60.77,6,0 << Orc/Troll
    .goto Orgrimmar,41.73,62.41,8,0 << Orc/Troll
    .goto Orgrimmar,41.91,64.30,15,0 << !Orc !Troll
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>向上爬塔，然后前往Grommash Hold << Orc/Troll
    .goto Orgrimmar,39.50,37.17,20 >>穿过大桥，然后前往格罗玛什码头 << !Orc !Troll
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
step << !Shaman !Warrior
    #label MeetingTW << !BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r, Dawnsinger
    .turnin 9626 >>交任务: |cRXP_FRIENDLY_觐见酋长|r << BloodElf
    .accept 9627 >>接任务: |cRXP_LOOT_部落的盟约|r << BloodElf
    .turnin 9813 >>交任务: |cRXP_FRIENDLY_觐见酋长|r << !BloodElf
    .goto Orgrimmar,31.62,37.82
    .accept 9428 >>接任务: |cRXP_LOOT_前往碎木岗哨|r << BloodElf
    .goto Orgrimmar,31.62,38.39 << BloodElf
    .target Thrall
    .target Ambassador Dawnsinger << BloodElf
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
step << BloodElf
    #label MeetingTW
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r, Dawnsinger
    .accept 9627 >>接任务: |cRXP_LOOT_部落的盟约|r << BloodElf
    .goto Orgrimmar,31.62,37.82
    .accept 9428 >>接任务: |cRXP_LOOT_前往碎木岗哨|r << BloodElf
    .goto Orgrimmar,31.62,38.39 << BloodElf
    .target Thrall
    .target Ambassador Dawnsinger << BloodElf
    .isQuestTurnedIn 9626 << BloodElf
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派雷亚诺|r
    .train 5599 >>训练你的职业技能
    .target Master Pyreanor
    .xp <24,1
    .xp >26,1
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派雷亚诺|r
    .train 10298 >>训练你的职业技能
    .target Master Pyreanor
    .xp <26,1
step << Shaman
    #completewith OrgTrain
    .goto Orgrimmar,42.63,61.99,15,0 << Orc/Troll
    .goto Orgrimmar,41.83,61.66,6,0 << Orc/Troll
    .goto Orgrimmar,42.01,60.77,6,0 << Orc/Troll
    .goto Orgrimmar,41.73,62.41,8,0 << Orc/Troll
    .goto Orgrimmar,41.91,64.30,15,0 << !Orc !Troll
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,38.81,36.38,20 >>前往|cRXP_FRIENDLY_Kardris|r << Orc/Troll
step << Shaman
    .goto Orgrimmar,38.81,36.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8046 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <24,1
    .xp >26,1
step << Shaman
    #label OrgTrain
    .goto Orgrimmar,38.81,36.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8030 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <26,1
step << Troll Mage
    #completewith OrgTrain
    .cast 3567 >>演员：T135759:0，然后下楼
    .itemcount 17031,2
step << Mage/Priest/Rogue/Warlock
    #completewith OrgTrain
    .goto Orgrimmar,42.30,37.44,20,0
    .goto Orgrimmar,40.96,45.16,20,0
    .goto Orgrimmar,40.01,51.88,20,0 << Rogue/Warlock
    .goto Orgrimmar,42.29,56.98,20,0 << Rogue/Warlock
    .goto Orgrimmar,43.82,56.28,20,0 << Rogue/Warlock
    .goto Orgrimmar,43.61,53.40,15,0 << Rogue
    .goto Orgrimmar,38.66,56.48,20,0 << Mage/Priest
    .goto Orgrimmar,41.17,67.04,20,0 << Mage/Priest
    .goto Orgrimmar,38.78,77.83,15,0 << Mage
    .goto Orgrimmar,38.72,83.38,12,0 << Mage
    .goto Orgrimmar,38.36,85.56,15 >>前往|cRXP_FRIENDLY_Pephredo|r << Mage
    .goto Orgrimmar,35.59,87.80,15 >>前往|cRXP_FRIENDLY_Ur'kyo|r << Priest
    .goto Orgrimmar,43.05,53.73,10 >>向|cRXP_FRIENDLY_Shenthul|r行进 << Rogue
    .goto Orgrimmar,48.25,45.27,15 >>前往|cRXP_FRIENDLY_Grol'dar|r << Warlock
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮菲瑞多|r
    .train 2139 >>训练你的职业技能
    .target Pephredo
    .xp <24,1
    .xp >26,1
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮菲瑞多|r
    .train 120 >>训练你的职业技能
    .target Pephredo
    .xp <26,1
step << Priest
    #label OrgTrain
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔库|r
    .train 1245 >>训练你的职业技能
    .target Ur'kyo
    .xp <24,1
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .turnin 10794 >>交任务: |cRXP_FRIENDLY_碎手盗贼|r
    .accept 2460 >>接任务: |cRXP_WARN_碎手军礼|r
    .train 6762 >>训练你的职业技能
    .target Shenthul
    .train 6762,1
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .turnin 10794 >>交任务: |cRXP_FRIENDLY_碎手盗贼|r
    .accept 2460 >>接任务: |cRXP_WARN_碎手军礼|r
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|cRXP_WARN_目标|cRXP_FRIENDLY_Shenthul|r向他致敬|r
    .complete 2460,1 --Shattered Salute Performed
    .target Shenthul
	.emote salute,3401
step << Rogue
    #label OrgTrain
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .turnin 2460 >>交任务: |cRXP_FRIENDLY_碎手军礼|r
    .accept 2458 >>接任务: |cRXP_LOOT_卧底密探|r
    .target Shenthul
step << !BloodElf Rogue tbc
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .train 921 >>火车|T133644:0|t[拾取口袋]，稍后进行任务
    .train 1784 >>训练|T132320:0|t[潜行]稍后进行任务
    .train 921,1
    .train 1784,1
    .target Shenthul
step << !BloodElf Rogue tbc
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .train 1784 >>训练|T132320:0|t[潜行]稍后进行任务
    .target Shenthul
step << !BloodElf Rogue tbc
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .train 921 >>火车|T133644:0|t[拾取口袋]，稍后进行任务
    .target Shenthul
step << Rogue wotlk
    .goto Orgrimmar,42.09,49.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷库尔|r
    >>|cRXP_BUY_从他那里购买|r|T132273:0|t[瞬毒II]|cRXP_Buy_|r
    .collect 6949,10,25,1 --Instant Poison (10)
    .target Rekkul
 step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗达尔|r
    .train 6223 >>训练你的职业技能
    .target Grol'dar
    .xp <24,1
    .xp >26,1
step << Warlock
    #label OrgTrain
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗达尔|r
    .train 1456 >>训练你的职业技能
    .target Grol'dar
    .xp <26,1
step << Warlock
    .goto Orgrimmar,48.25,45.27
    .abandon 10605 >>放弃卡伦丁传票
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r, |cRXP_FRIENDLY_卡祖尔|r
    .accept 1507 >>接任务: |cRXP_WARN_噬魂者|r
    .goto Orgrimmar,48.25,45.27
    .turnin 1507 >>交任务: |cRXP_FRIENDLY_噬魂者|r
    .accept 1508 >>接任务: |cRXP_LOOT_盲眼卡祖尔|r
    .accept 65601 >>接任务: |cRXP_LOOT_要爱就会受伤害|r
    .goto Orgrimmar,47.05,46.43
    .target Gan'rul Bloodeye
    .target Cazul
step << Warlock
    #completewith next
    .goto Orgrimmar,45.37,51.02,15,0
    .goto Orgrimmar,44.07,53.50,15,0
    .goto Orgrimmar,43.82,56.28,20,0
    .goto Orgrimmar,39.24,54.35,20,0
    .goto Orgrimmar,38.14,60.48,10,0
    .goto Orgrimmar,37.04,59.45,10 >>前往|cRXP_FRIENDLY_Zankaja|r
step << Warlock
    .goto Orgrimmar,37.04,59.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞卡沙|r
    .turnin 1508 >>交任务: |cRXP_FRIENDLY_盲眼卡祖尔|r
    .accept 1509 >>接任务: |cRXP_LOOT_多格兰的消息|r
    .target Zankaja
step << Warlock
    #completewith next
    .goto Orgrimmar,42.01,63.34,30,0
    .goto Orgrimmar,52.99,57.59,30,0
    .goto Orgrimmar,55.88,56.81,30,0
    .goto Orgrimmar,61.49,50.55,15,0
    .goto Orgrimmar,63.65,49.93,15 >>向|cRXP_FRIENDLY_Magar|r行进
step << Warlock
    .goto Orgrimmar,63.65,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛加尔|r
    .turnin 65601 >>交任务: |cRXP_FRIENDLY_要爱就会受伤害|r
    .accept 65610 >>接任务: |cRXP_LOOT_希望你还在|r
    .target Magar
step << Mage
    #completewith next
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>上楼前往|cRXP_FRIENDLY_Thuul|r
step << Mage
    #label OrgTrain
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索乌|r
    .train 3567 >>火车|T135759:0|t[电传：Orgrimar]
    .target Thuul
step << Hunter/Warrior
    #completewith OrgTrain
    .goto Orgrimmar,63.08,39.25,40,0
    .goto Orgrimmar,64.31,38.12,30,0
    .goto Orgrimmar,66.07,40.04,30,0
    .goto Orgrimmar,76.76,33.04,30,0 << Warrior
    .goto Orgrimmar,79.13,32.80,30,0 << Warrior
    .goto Orgrimmar,80.39,32.38,20 >>前往|cRXP_FRIENDLY_Sorek|r << Warrior
    .goto Orgrimmar,72.25,21.42,30,0 << Hunter
    .goto Orgrimmar,67.60,14.89,15,0 << Hunter
    .goto Orgrimmar,66.05,18.52,20 >>前往|cRXP_FRIENDLY_Ormak|r << Hunter
    .train 580,3 << Orc Hunter/Orc Warrior
    .train 6653,3 << Orc Hunter/Orc Warrior
    .train 6654,3 << Orc Hunter/Orc Warrior
    .train 64658,3 << Orc Hunter/Orc Warrior
step << !Warlock Orc wotlk
    #completewith next
    .goto Orgrimmar,63.08,39.25,40,0 << !Warrior
    .goto Orgrimmar,64.31,38.12,30,0 << !Warrior
    .goto Orgrimmar,66.07,40.04,30,0 << !Warrior
    .goto Orgrimmar,76.33,32.64,30,0 << Warrior
    .goto Orgrimmar,72.16,26.66,30,0 << Warrior
    .goto Orgrimmar,72.25,21.42,30,0
    .goto Orgrimmar,69.41,13.11,20 >>前往|cRXP_FRIENDLY_Kildar|r
    .money <4.5
    .skill riding,75,1
step << !Warlock Orc wotlk
    .goto Orgrimmar,69.41,13.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r
    .skill riding,75 >>火车|T136103:0|t（学徒骑马）
    .target Kildar
    .money <4.5
    .skill riding,75,1
step << !Warlock Orc wotlk
    .goto Orgrimmar,69.38,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥古纳罗|r
    +|cRXP_BUY_从他那里买任何你喜欢的|r|T132224:0|t[Wolf]|cRXP_Buy_|r
	.target Ogunaro Wolfrunner
    .itemcount 1132,<1 --Horn of the Timber Wolf
    .itemcount 5665,<1 --Horn of the Dire Wolf
    .itemcount 5668,<1 --Horn of the Brown Wolf
    .itemcount 46099,<1 --Horn of the Black Wolf
    .money <0.9
    .skill riding,<75,1
step << !Warlock Orc wotlk
    .cast 55884 >>使用|T132224:0|t[木狼之角]学习
    .use 1132
    .itemcount 1132,1
    .skill riding,75,1
step << !Warlock Orc wotlk
    .cast 55884 >>使用|T132266:0|t[恶狼之角]学习
    .use 5665
    .itemcount 5665,1
    .skill riding,75,1
step << !Warlock Orc wotlk
    .cast 55884 >>使用|T132224:0|t[褐狼之角]学习
    .use 5668
    .itemcount 5668,1
    .skill riding,75,1
step << !Warlock Orc wotlk
    .cast 55884 >>使用|T132224:0|t[黑狼之角]学习
    .use 46099
    .itemcount 46099,1
    .skill riding,75,1
step << Orc wotlk !Warlock
    #completewith RatchetFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132224:0|t[Timber Wolf]|cRXP_WARN_拖动到动作栏中|r
    .cast 580 >>安装您的|T132224:0|t[木狼]
    .train 580,3
step << Orc wotlk !Warlock
    #completewith RatchetFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132266:0|t[Dire Wolf]|cRXP_WARN_拖动到动作栏中|r
    .cast 6653 >>安装您的|T132266:0|t[Dire Wolf]
    .train 6653,3
step << Orc wotlk !Warlock
    #completewith RatchetFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132224:0|t[Brown Wolf]|cRXP_WARN_拖动到动作栏中|r
    .cast 6654 >>安装您的|T132224:0|t[棕色狼]
    .train 6654,3
step << Orc wotlk !Warlock
    #completewith RatchetFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132224:0|t[黑狼]|cRXP_WARN_拖动到动作栏中|r
    .cast 64658 >>安装您的|T132224:0|t[黑狼]
    .train 64658,3
step << Warrior
    .goto Orgrimmar,80.39,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索瑞克|r
    .train 6574 >>训练你的职业技能
    .target Sorek
    .train 6574,1
    .xp <24,1
    .xp >26,1
step << Warrior
    .goto Orgrimmar,80.39,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索瑞克|r
    .train 6178 >>训练你的职业技能
    .target Sorek
    .train 6178,1
    .xp <26,1
step << Warrior
    #label OrgTrain
    .goto Orgrimmar,80.39,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索瑞克|r
    .accept 1823 >>接任务: |cRXP_LOOT_和鲁迦交谈|r
    .target Sorek
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
    .train 14323 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <22,1
    .xp >26,1
step << Hunter
    #label OrgTrain
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
    .train 3045 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <26,1
step << Shaman/Warrior/Paladin
    #completewith HanashiWepT
    .goto Orgrimmar,63.08,39.25,40,0 << Paladin
    .goto Orgrimmar,64.31,38.12,30,0 << Paladin
    .goto Orgrimmar,66.07,40.04,30,0 << Paladin
    .goto Orgrimmar,74.19,25.89,30,0 << Paladin
    .goto Orgrimmar,76.76,22.12,30,0 << Paladin/Shaman/Warrior
    .goto Orgrimmar,81.53,19.64,10 >>前往|cRXP_FRIENDLY_Hanashi |r
step << Shaman
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 196 >>列车1h轴
    .train 197 >>列车2h轴
    .target Hanashi
    .money <0.1900
    .train 196,1
    .train 197,1
step << Shaman
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 196 >>列车1h轴
    .money <0.0950
    .target Hanashi
step << Warrior/Paladin
    #label HanashiWepT
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 197 >>列车2h轴
    .money <0.0950 << Warrior
    .money <0.1 << Paladin
    .target Hanashi
step << Rogue tbc
    .goto Orgrimmar,53.63,64.69,20,0
    .goto Orgrimmar,55.75,64.87,20,0
    .goto Orgrimmar,50.68,70.37,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wabang|r
    +|cRXP_BUY_从AH购买|r|T134437:0|t[抗毒液]|cRXP_Buy_或|r|T134437:0| t[强抗毒液]| cRXP_Buy_（如果便宜的话）。这将节省您以后的时间|r
    >>|cRXP_WARN_如果你负担不起，跳过这一步|r
    .itemcount 6452,<1
    .itemcount 6453,<1
    .target Auctioneer Wabang
step
    #completewith RatchetFP
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,48.50,95.12,30,0 << !Troll
    .goto Orgrimmar,48.50,95.12,30 >>前往: |cRXP_PICK_杜隆塔尔|r << Troll wotlk
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r << !Troll
    .zoneskip Orgrimmar,1
    .money <4.5 << Troll wotlk
    .skill riding,75,1 << Troll Warrior wotlk/Troll Shaman wotlk
step << Troll wotlk
    #completewith next
    .goto Durotar,49.41,20.97,35,0
    .goto Durotar,50.21,26.30,35,0
    .goto Durotar,49.93,28.80,35,0
    .goto Durotar,52.26,34.68,35,0
    .goto Durotar,55.28,75.48,50 >>向|cRXP_FRIENDLY_Xar'Ti|r行进
    .money <4.5
    .skill riding,75,1
step << Troll wotlk
    .goto Durotar,55.28,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r
    .skill riding,75 >>火车|T136103:0|t（学徒骑马）
    .target Xar'Ti
    .money <4.5
    .skill riding,75,1
step << Troll wotlk
    .goto Durotar,55.23,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖尼尔|r
    +|cRXP_BUY_从他那里买任何你喜欢的|r|T132253:0|t[Raptor Whistle]|cRXP_Buy_|r
	.target Zjolnir
    .itemcount 8588,<1 --Whistle of the Emerald Raptor
    .itemcount 8591,<1 --Whistle of the Turquoise Raptor
    .itemcount 8592,<1 --Whistle of the Violet Raptor
    .money <0.9
    .skill riding,<75,1
step << Troll wotlk
    .cast 55884 >>使用|T132253:0|t[翡翠猛禽的哨声]学习它
    .use 8588
    .itemcount 8588,1
    .skill riding,75,1
step << Troll wotlk
    .cast 55884 >>使用|T132253:0|t[绿松石猛禽的哨声]学习它
    .use 8591
    .itemcount 8591,1
    .skill riding,75,1
step << Troll wotlk
    .cast 55884 >>使用|T132253:0|t[紫罗兰猛禽的哨声]学习它
    .use 8592
    .itemcount 8592,1
    .skill riding,75,1
step << Troll wotlk
    #completewith RatchetFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132253:0|t[Emerald Raptor]|cRXP_WARN_拖动到动作栏中|r
    .cast 8395 >>安装您的|T132253:0|t[翡翠猛禽]
    .train 8395,3
    .zoneskip Orgrimmar
step << Troll wotlk
    #completewith RatchetFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132253:0|t[Turquoise Raptor]|cRXP_WARN_拖动到动作栏中|r
    .cast 10796 >>安装您的|T132253:0|t[绿松石猛禽]
    .train 10796,3
    .zoneskip Orgrimmar
step << Troll wotlk
    #completewith RatchetFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132253:0|t[Violet Raptor]|cRXP_WARN_拖动到动作栏中|r
    .cast 10799 >>安装您的|T132253:0|t[紫罗兰猛禽]
    .train 10799,3
    .zoneskip Orgrimmar
step << Warrior/Shaman
    #completewith next
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>向上行进至|cRXP_FRIENDLY_Doras|r
step << Warrior/Shaman
    #completewith Torek1
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    .fly Crossroads >>飞向十字路口 << Warrior
    .fly Camp Taurajo >>飞往陶拉霍营地 << Shaman
    .target Doras
    .zoneskip Orgrimmar,1
step << Troll
    #completewith next
    .goto Durotar,46.94,69.10,100,0
    .goto Durotar,46.02,69.32,40,0
    .goto Durotar,41.38,73.54,15,0
    .goto Durotar,66.29,35.94,30,0
    .goto The Barrens,63.08,37.16,30 >>前往|cRXP_FRIENDLY_Bragok|r
    .zoneskip Durotar,1
step
    #label RatchetFP
    .goto The Barrens,63.08,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fp Ratchet >>获取棘轮飞行路径 << !Shaman !Warrior
    .fly Crossroads >>飞向十字路口 << Troll Warrior wotlk
    .fly Camp Taurajo >>飞往陶拉霍营地 << Troll Shaman wotlk
    .target Bragok
    .zoneskip Orgrimmar << Troll Warrior wotlk/Troll Shaman wotlk
step << Shaman
    #completewith ShamanCross
    .goto The Barrens,44.33,61.78,40,0
    .goto The Barrens,44.06,62.18,40,0
    .goto The Barrens,45.57,62.95,40,0
    .goto The Barrens,45.75,62.52,40,0
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
step << Shaman
    #completewith ShamanCross
    .goto The Barrens,44.76,74.79,45,0
    >>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]
    >>|cRXP_WARN_使用|T135992:0|t[|cRXP_LOOT_Washte Pawne‘s Feather|r]开始任务|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .use 5103
    .unitscan Washte Pawne
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>前往|cRXP_FRIENDLY_Brine|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞恩|r
    .turnin 1535 >>交任务: |cRXP_FRIENDLY_水之召唤|r
    .accept 1536 >>接任务: |cRXP_LOOT_水之召唤|r
    .target Brine
step << Shaman
    .goto The Barrens,44.86,59.13,70 >>前往|cRXP_FRIENDLY_Jorn|r
    .isOnQuest 884
step << Shaman
    .goto The Barrens,44.86,59.13,70 >>前往|cRXP_FRIENDLY_Jorn|r
    .isOnQuest 885
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 884
    .isOnQuest 885
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 884
step << Shaman
    #label ShamanCross
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 885
step << Shaman
    .goto The Barrens,44.44,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>飞向十字路口
    .target Omusa Thunderhorn
step << Rogue tbc
    #completewith next
	.goto The Barrens,62.80,39.13,30,0
	.goto The Barrens,62.80,40.03,30,0
	.goto The Barrens,64.19,45.49,8,0
	.goto The Barrens,64.89,45.37,6,0
	.goto The Barrens,64.87,45.53,6,0
	.goto The Barrens,64.86,45.37,6,0
	.goto The Barrens,65.04,45.42,5 >>在开锁船内旅行
step << Rogue tbc
    .goto The Barrens,65.04,45.42
    >>锁上飞船一楼的|cRXP_PICK_Buccaneer的Strongboxes|r
    .skill lockpicking,80 >>将你的开锁水平调整到80
step << Warlock
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_曼科里克|r
    .accept 4921 >>接任务: |cRXP_LOOT_在战斗中失踪|r
    .target Mankrik
step << Warrior
    #completewith next
    .goto The Barrens,52.02,30.14,15,0
    .goto The Barrens,51.99,29.89,15 >>前往|cRXP_FRIENDLY_Boorand|r
step << Warrior/Shaman/Warlock
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
step << Warlock
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹罗格|r
    .turnin 1509 >>交任务: |cRXP_FRIENDLY_多格兰的消息|r
    .accept 1510 >>接任务: |cRXP_LOOT_多格兰的消息|r
    .target Gazrog
step << Warlock
    .goto The Barrens,51.50,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fp Crossroads >>获得the Crossroads飞行路线
    .target Devrak
step << !Shaman !Warrior
    .goto The Barrens,51.07,29.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
    .accept 868 >>接任务: |cRXP_LOOT_蝎卵|r
    .target Korran
step << Warlock
    #completewith next
    .goto The Barrens,39.22,29.56,90,0
    .goto Stonetalon Mountains,82.17,98.27
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
step << Warlock
    #completewith next
    .goto Stonetalon Mountains,82.17,98.27,30,0
    .goto Stonetalon Mountains,79.92,98.27,30,0
    .goto Stonetalon Mountains,77.14,98.63,30,0
    .goto Stonetalon Mountains,75.03,97.10,15,0
    .goto Stonetalon Mountains,73.25,95.13,20 >>前往|cRXP_FRIENDLY_Ken'zigla|r
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯兹格拉|r
    .turnin 1510 >>交任务: |cRXP_FRIENDLY_多格兰的消息|r
    .accept 1511 >>接任务: |cRXP_WARN_肯兹格拉的伤药|r
    .target Ken'zigla
step << Warlock
    #completewith MankrikW
    .hs >>炉膛到十字路口
	.cooldown item,6948,>0
step << Warlock
    #completewith next
    .goto Stonetalon Mountains,73.02,93.82,15,0
    .goto Stonetalon Mountains,75.23,95.36,15,0
    .goto Stonetalon Mountains,76.23,97.68,20,0
    .goto Stonetalon Mountains,77.14,98.63,30,0
    .goto Stonetalon Mountains,79.92,98.27,30,0
    .goto Stonetalon Mountains,82.87,98.65,30,0
    .goto The Barrens,39.22,29.56
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
	.cooldown item,6948,<0
step << Warlock
    #completewith next
    .goto The Barrens,37.62,28.45,30,0
    .goto The Barrens,39.13,30.35,45,0
    .goto The Barrens,41.77,33.27,45,0
    .goto The Barrens,49.33,50.32,20 >>前往|cRXP_FRIENDLY_Beated Corpse|r
	.cooldown item,6948,<0
step << !Shaman !Warrior !Warlock
    .goto The Barrens,51.50,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fp Crossroads >>获得the Crossroads飞行路线
    .target Devrak
step << !Shaman !Warrior !Warlock
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_曼科里克|r
    .accept 4921 >>接任务: |cRXP_LOOT_在战斗中失踪|r
    .target Mankrik
step << !Shaman !Warrior
    #label MankrikW
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血肉模糊的尸体|r
    .complete 4921,1 --Find Mankrik's Wife
    .target Beaten Corpse
    .skipgossip 10668,1
step << !Shaman !Warrior
    #completewith Silithid
    >>杀死|cRXP_ENEMY_Aean Swiftriver|r。为她掠夺她|T134939:0|t[|cRXP-Loot_运行卷轴|r]
    >>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Runed Scroll|r]开始任务|r
    >>|cRXP_WARN_试着分开拉她。如果可能的话，把她带向陶拉霍营的警卫|r
    >>|cRXP_WARN_如果你找不到她或杀了她，跳过这一步|r
    .link https://youtu.be/H-IwZ6P-ldY?t=71 >>|cRXP_WARN_点击此处获取如何拆分拉动的指南|r
    .collect 10621,1,3513,1 --Collect Runed Scroll
    .accept 3513 >>接任务: |cRXP_LOOT_符文卷轴|r
    .use 5099
    .unitscan Aean Swiftriver
step << !Shaman !Warrior
    #completewith Weapons
    .goto The Barrens,50.07,52.96,45,0
    .goto The Barrens,49.99,53.44,45,0
    .goto The Barrens,46.07,49.11,45,0
    .goto The Barrens,46.20,49.74,45,0
    .goto The Barrens,45.39,52.31,45,0
    .goto The Barrens,45.14,52.37,45,0
    .goto The Barrens,45.12,52.73,45,0
    >>杀死|cRXP_ENEMY_Lakota'mani|r。为|T132318:0|t[|cRXP-Loot_Hoof|r]掠夺他
    >>|cRXP_WARN_使用|T132318:0|t[|cRXP_LOOT_Hoop of Lakota'mani|r]开始任务|r
    .collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
    .accept 883 >>接任务: |cRXP_LOOT_拉克塔曼尼|r
    .use 5099
    .unitscan Lakota'Mani
step << !Shaman !Warrior
    #label Weapons
    .goto The Barrens,45.10,57.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
    .accept 893 >>接任务: |cRXP_LOOT_野猪人的武器|r
    .target Tatternack Steelforge
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Jorn, |cRXP_FRIENDLY_步兵劳格玛|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r << !Warlock
    .turnin 883 >>交任务: |cRXP_FRIENDLY_拉克塔曼尼|r
    .accept 1130 >>接任务: |cRXP_WARN_梅洛的关注|r
    .goto The Barrens,44.86,59.13
    .turnin 1511 >>交任务: |cRXP_FRIENDLY_肯兹格拉的伤药|r << Warlock
    .accept 1515 >>接任务: |cRXP_WARN_多格兰之囚|r << Warlock
    .goto The Barrens,44.62,59.27 << Warlock
    .target Jorn Skyseer
    .target Grunt Logmar << Warlock
    .isOnQuest 883
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Jorn, |cRXP_FRIENDLY_步兵劳格玛|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r << !Warlock
    .accept 1130 >>接任务: |cRXP_WARN_梅洛的关注|r
    .goto The Barrens,44.86,59.13
    .turnin 1511 >>交任务: |cRXP_FRIENDLY_肯兹格拉的伤药|r << Warlock
    .accept 1515 >>接任务: |cRXP_WARN_多格兰之囚|r << Warlock
    .goto The Barrens,44.62,59.27 << Warlock
    .target Jorn Skyseer
    .target Grunt Logmar << Warlock
step << !Shaman !Warrior
    .goto The Barrens,44.44,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>获得Taurajo营地飞行路线
    .target Omusa Thunderhorn
step << Warlock
    .goto The Barrens,43.30,47.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_步兵多格兰|r
    .turnin 1515 >>交任务: |cRXP_FRIENDLY_多格兰之囚|r
    .accept 1512 >>接任务: |cRXP_LOOT_爱的礼物|r
    .target Grunt Dogran
step << !Shaman !Warrior
    #completewith next
    .goto The Barrens,44.33,61.78,40,0
    .goto The Barrens,44.06,62.18,40,0
    .goto The Barrens,45.57,62.95,40,0
    .goto The Barrens,45.75,62.52,40,0
    .goto The Barrens,49.67,59.54,40,0
    .goto The Barrens,49.42,61.04,40,0
    .goto The Barrens,49.18,61.45,40,0
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
step << !Shaman !Warrior
    #label Silithid
    .goto The Barrens,45.05,69.93,50 >>走向巨人的领域
    .isOnQuest 868
step << !Shaman !Warrior
    #completewith next
    >>杀死|cRXP_ENEMY_Silithid Harvester |r。为|T134321:0|t[|cRXP-Loot_HHarvester的头部|r]掠夺它
    >>|cRXP_WARN_使用|T134321:0|t[|cRXP_LOOT_Harvester的头|r]开始任务|r
    >>|cRXP_WARN_如果找不到他，请跳过此任务|r
    .collect 5138,1,897,1 --Collect Harvester's Head
    .accept 897 >>接任务: |cRXP_LOOT_收割者|r
    .use 5138
    .unitscan Silithid Harvester
step << !Shaman !Warrior
    #label Eggs
    .goto The Barrens,45.05,69.93,35,0
    .goto The Barrens,43.48,69.94,35,0
    .goto The Barrens,42.60,69.67,35,0
    .goto The Barrens,42.83,70.07,35,0
    .goto The Barrens,42.69,71.25,35,0
    .goto The Barrens,42.91,71.50,35,0
    .goto The Barrens,43.37,70.61,35,0
    .goto The Barrens,44.12,71.30,35,0
    .goto The Barrens,44.06,72.51,35,0
    .goto The Barrens,45.29,72.01,35,0
    .goto The Barrens,47.41,70.07,35,0
    .goto The Barrens,47.86,70.86,35,0
    .goto The Barrens,47.83,71.14,35,0
    .goto The Barrens,48.54,70.11,35,0
    .goto The Barrens,45.05,69.93
    >>打开地面上的|cRXP_PICK_Silithid土丘|r。为|cRXP_Loot_Silithid Egg|r掠夺它们
    >>|cRXP_WARN_尽量避免与附近的|cRXP_ENEMY_Silithi|r交战|r
    .complete 868,1 --Silithid Egg (12)
step << !Shaman !Warrior
    #optional
    #completewith JornTravel
    .goto The Barrens,48.79,70.00,60,0
    >>杀死|cRXP_ENEMY_Silithid Harvester |r。为|T134321:0|t[|cRXP-Loot_HHarvester的头部|r]掠夺它
    >>|cRXP_WARN_使用|T134321:0|t[|cRXP_LOOT_Harvester的头|r]开始任务|r
    >>|cRXP_WARN_如果找不到他，请跳过此任务|r
    .collect 5138,1,897,1 --Collect Harvester's Head
    .accept 897 >>接任务: |cRXP_LOOT_收割者|r
    .use 5138
    .unitscan Silithid Harvester
 step << !Shaman !Warrior
    #completewith JornTravel
    >>杀死|cRXP_ENEMY_Aean Swiftriver|r。为她掠夺她|T134939:0|t[|cRXP-Loot_运行卷轴|r]
    >>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Runed Scroll|r]开始任务|r
    >>|cRXP_WARN_试着分开拉她。如果可能的话，把她带向陶拉霍营的警卫|r
    >>|cRXP_WARN_如果你找不到她或杀了她，跳过这一步|r
    .link https://youtu.be/H-IwZ6P-ldY?t=71 >>|cRXP_WARN_点击此处获取如何拆分拉动的指南|r
    .collect 10621,1,3513,1 --Collect Runed Scroll
    .accept 3513 >>接任务: |cRXP_LOOT_符文卷轴|r
    .use 5099
    .unitscan Aean Swiftriver
step << !Shaman !Warrior
    #completewith JornTravel
    .goto The Barrens,44.33,61.78,40,0
    .goto The Barrens,44.06,62.18,40,0
    .goto The Barrens,45.57,62.95,40,0
    .goto The Barrens,45.75,62.52,40,0
    .goto The Barrens,49.67,59.54,40,0
    .goto The Barrens,49.42,61.04,40,0
    .goto The Barrens,49.18,61.45,40,0
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
step << !Shaman !Warrior
    .goto The Barrens,44.86,59.13,70 >>前往|cRXP_FRIENDLY_Jorn|r
    .isOnQuest 897
step << !Shaman !Warrior
    #label JornTravel
    .goto The Barrens,44.86,59.13,70 >>前往|cRXP_FRIENDLY_Jorn|r
    .isOnQuest 884
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 884
    .isOnQuest 897
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 884
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 897
step << !Shaman !Warrior
    #label Mulgore
    .goto Mulgore,67.45,59.23
    .zone Mulgore >>前往: |cRXP_PICK_莫高雷|r
step << Tauren !Shaman !Warrior wotlk
    .goto Mulgore,47.65,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kar|r
    .skill riding,75 >>火车|T136103:0|t（学徒骑马）
    .target Kar Stormsinger
    .money <4.5
step << Tauren !Shaman !Warrior wotlk
    .goto Mulgore,47.49,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harb|r
    +|cRXP_BUY_从他那里买任何你喜欢的|r|T132243:0|t[Kodo]|cRXP_Buy_|r
	.target Harb Clawhoof
    .itemcount 15277,<1 --Gray Kodo
    .itemcount 15290,<1 --Brown Kodo
    .itemcount 46100,<1 --White Kodo
    .money <0.9
    .skill riding,<75,1
step << Tauren !Shaman !Warrior wotlk
    .cast 55884 >>使用|T132243:0|t[Gray Kodo]学习
    .use 15277
    .itemcount 15277,1
step << Tauren !Shaman !Warrior wotlk
    .cast 55884 >>使用|T132245:0|t[Brown Kodo]学习
    .use 15290
    .itemcount 15290,1
step << Tauren !Shaman !Warrior wotlk
    .cast 55884 >>使用|T132243:0|t[White Kodo]学习
    .use 46100
    .itemcount 46100,1
step << Tauren !Shaman !Warrior wotlk
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132243:0|t[Gray Kodo]|cRXP_WARN_拖动到动作栏中|r
    .cast 18989 >>安装您的|T132243:0|t[灰色Kodo]
    .train 18989,3
step << Tauren !Shaman !Warrior wotlk
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132245:0|t[Brown Kodo]|cRXP_WARN_拖动到动作栏中|r
    .cast 18990 >>安装您的|T132245:0|t[棕色Kodo]
    .train 18990,3
step << Tauren !Shaman !Warrior wotlk
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132243:0|t[White Kodo]|cRXP_WARN_拖动到动作栏中|r
    .cast 64657 >>安装您的|T132243:0|t[白色Kodo]
    .train 64657,3
step << !Shaman !Warrior
    #completewith next
    .goto Mulgore,41.35,36.94,40,0
    .goto Thunder Bluff,31.81,66.06,20 >>前往雷霆崖电梯
step << Warlock tbc/Rogue wotlk
    .goto Thunder Bluff,40.93,62.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 227 >>火车杆 << Warlock
    .train 198 >>火车梅斯 << Rogue
    .train 266 >>训练枪 << Rogue
    .money <0.2 << Rogues
    .target Ansekhwa
step << Rogue wotlk
    .goto Thunder Bluff,40.93,62.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 198 >>火车梅斯
    .money <0.1
    .target Ansekhwa
step << Warlock !tbc/!Shaman !Warrior
    #completewith Pala
    .goto Thunder Bluff,36.57,63.35,30,0 << !Rogue/!wotlk
    .goto Thunder Bluff,41.89,61.84,30,0 << !Rogue/!wotlk
    .goto Thunder Bluff,45.05,62.49,20,0
    .goto Thunder Bluff,45.81,64.71,15 >>前往|cRXP_FRIENDLY_Pala|r
step << !Shaman !Warrior
    .goto Thunder Bluff,45.81,64.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pala|r
    >>|cRXP_BUY_从她那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从她那里购买|r|T133994:0|t[Stormfind Brie]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从她那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_和|r|T133994:0|t[Stormfind Brie]|cRX|r << Paladin
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin --Sweet Nectar (20)
    .collect 1707,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin --Stormwind Brie (20)
    .collect 1707,10,1145,1 << Paladin --Stormwind Brie (10)
    .target Innkeeper Pala
    .money <0.4000 << !Paladin
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << !Shaman !Warrior
    #label Pala
    .goto Thunder Bluff,45.81,64.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pala|r
	.home >>将您的炉石设置为雷霆崖
    .target Innkeeper Pala
    .isQuestAvailable 1195
step << skip
	#completewith next
	.goto Thunder Bluff,76.477,27.221
.target Turak Runetotem
>>对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
	.accept 27 >>接任务: |cRXP_WARN_必修的课程|r << tbc
	.trainer >>去训练你的职业技能
--VV Druid - not worth it
step << !Shaman !Warrior
    #completewith next
    .goto Thunder Bluff,46.85,66.08,8,0
    .goto Thunder Bluff,46.84,67.98,8,0
    .goto Thunder Bluff,54.27,76.87,15,0
    .goto Thunder Bluff,61.54,80.92,15 >>前往|cRXP_FRIENDLY_Melor|r
step << !Shaman !Warrior
    .goto Thunder Bluff,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .turnin 1130 >>交任务: |cRXP_FRIENDLY_梅洛的关注|r
    .accept 1131 >>接任务: |cRXP_LOOT_钢齿土狼|r
    .target Melor Stonehoof
step << !Shaman !Warrior
    #completewith next
    .goto Thunder Bluff,61.85,75.43,12,0
    .goto Thunder Bluff,54.97,51.39,15 >>前往|cRXP_FRIENDLY_Zangen|r
step << !Shaman !Warrior
    .goto Thunder Bluff,54.97,51.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞金·石蹄|r
    .accept 1195 >>接任务: |cRXP_WARN_神圣之火|r
    .target Zangen Stonehoof
step << Druid
    #completewith next
    .goto Thunder Bluff,58.80,46.32,20,0
    .goto Thunder Bluff,59.61,43.59,12,0
    .goto Thunder Bluff,60.12,42.51,12,0
    .goto Thunder Bluff,61.28,41.66,8,0
    .goto Thunder Bluff,61.50,40.33,10,0
    .goto Thunder Bluff,74.32,30.21,20,0
    .goto Thunder Bluff,76.79,31.79,15 >>向|cRXP_FRIENDLY_Kym|r行进
step << Druid
    .goto Thunder Bluff,76.79,31.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯姆·蛮鬃|r
    .train 1850 >>训练你的职业技能
	.target Kym Wildmane
step << !Shaman !Warrior
    #completewith next
    .goto Thunder Bluff,47.22,49.54,8,0
    .goto Thunder Bluff,46.22,49.14,6,0
    .goto Thunder Bluff,46.01,49.90,6,0
    .goto Thunder Bluff,47.00,49.83
    >>爬上塔楼
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >>获得雷霆崖飞行路线 << !Tauren
    .fly Crossroads >>飞到十字路口
    .target Tal
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_曼科里克|r, |cRXP_FRIENDLY_科兰|r
    .turnin 4921 >>交任务: |cRXP_FRIENDLY_在战斗中失踪|r
    .goto The Barrens,51.95,31.58
    .turnin 868 >>交任务: |cRXP_FRIENDLY_蝎卵|r
    .goto The Barrens,51.07,29.63
    .target Mankrik
    .target Korran
step << !Shaman !Warrior
    .goto Ashenvale,68.34,75.30 << !Rogue
    .goto The Barrens,55.44,5.56 << Rogue
    .destroy 5058 >>摧毁: |cRXP_ENEMY_异种蝎卵|r, 它在你的背包中. 不再需要它了
step << Rogue
    .goto The Barrens,55.38,5.36,60 >>前往|cRXP_ENEMY_Fizzule|r
    >>|cRXP_WARN_不要攻击他。如果你这样做了就逃跑|r
    .target Taskmaster Fizzule
    .isOnQuest 2458
step << Rogue
    .goto The Barrens,55.44,5.56
    .cast 10113 >>使用|T134536:0|t[火炬枪]
    >>|cRXP_WARN_It has a 60 yard range|r
    >>|cRXP_WARN_不要攻击他。如果你这样做了就逃跑|r
    .target Taskmaster Fizzule
    .use 8051
    .isOnQuest 2458
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|cRXP_WARN_目标|cRXP_ENEMY_Fizzule|r在40码范围内向他致敬，使他变得友好|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头费苏勒|r
    .turnin 2458 >>交任务: |cRXP_FRIENDLY_卧底密探|r
    .accept 2478 >>接任务: |cRXP_LOOT_基本不可能的任务|r << tbc
    .target Taskmaster Fizzule
	.emote SALUTE,7233
    .use 8051
step << Rogue wotlk
    #completewith next
    .destroy 8051 >>摧毁: |cRXP_ENEMY_信号枪|r
    .destroy 8066 >>摧毁: |cRXP_ENEMY_费苏勒的哨子|r, 它在你的背包中. 不再需要它了
step << Rogue tbc
    #completewith Drones
    +装备|T135344:0|t[利刃匕首]
    >>|cRXP_WARN_如果你已经装备了更好的匕首，请跳过这一步|r
    .use 30504
    .itemcount 30504,1
step << Rogue tbc
    .goto The Barrens,54.80,5.97
    >>在|T132320:0|t[潜行]中，在|cRXP_ENEMY_Silixiz|r上施放|T133644:0|t[拾取口袋]，以掠夺他的|cRXP_loot_Tower钥匙|r
    >>如果他转向你，退后，走到他身后，然后再次尝试着去抓他
    >>|cRXP_WARN_Do NOT kill him|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue tbc
    #label Drones
    .goto The Barrens,54.88,5.80,8,0
    .goto The Barrens,54.71,5.75
    >>|cRXP_WARN_投掷|r|T132282:0|t[Ambush]|cRXP_WARN_on |cRXP-ENEMY_Mutatied Venture Co.无人机|r以立即杀死它|r
    >>逃跑，然后将|T132282:0|t[伏击]扔到另一个|cRXP_ENEMY_变异风险公司无人机|r如果你太弱而无法正常杀死它
    .complete 2478,1 --变异创业公司无人机 (2)
    .mob 变异创业公司无人机
step << Rogue tbc
#loop
	.line The Barrens,54.70,5.84,54.80,5.78,54.71,5.61,54.67,5.57,54.70,5.84
	.goto The Barrens,54.70,5.84,6,0
	.goto The Barrens,54.80,5.78,6,0
	.goto The Barrens,54.71,5.61,6,0
	.goto The Barrens,54.67,5.57,6,0
	.goto The Barrens,54.70,5.84,6,0
    >>|cRXP_WARN_如果你之前装备了匕首，重新装备你的主武器|r
    >>上楼去。杀死|cRXP_ENEMY_Venture Co.巡逻者|r.|cRXP-WARN_Cast 1连击点|r|T132302:0|t[破裂]|cRXP_WARN_to每次造成50%伤害|r
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob Venture Co. Patroller
step << Rogue tbc
#loop
	.line The Barrens,54.63,5.64,54.65,5.78,54.74,5.83,54.82,5.74,54.81,5.59,54.71,5.55
	.goto The Barrens,54.63,5.64,6,0
	.goto The Barrens,54.65,5.78,6,0
	.goto The Barrens,54.74,5.83,6,0
	.goto The Barrens,54.82,5.74,6,0
	.goto The Barrens,54.81,5.59,6,0
	.goto The Barrens,54.71,5.55,6,0
    >>上楼去。杀死|cRXP_ENEMY_Venture Co.Lookouts|r.|cRXP-WARN_Cast 1组合点|r|T132292:0|t[驱逐]|cRXP_WARN_to每次造成50%伤害|r
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob Venture Co. Lookout
step << Rogue tbc
    #completewith Mixture
    +装备|T135344:0|t[利刃匕首]
    >>|cRXP_WARN_如果你已经装备了更好的匕首，请跳过这一步|r
    .use 30504
    .itemcount 30504,1
step << Rogue tbc
    #label Mixture
    .goto The Barrens,54.75,5.59
    >>|cRXP_WARN_去塔楼的顶层。确保你的冷却装置已经启动|r
    >>杀死|cRXP_ENEMY_Grand Foreman Puzik Gallywix|r。掠夺他的|cRXX_Loot_Head |r
    >>|cRXP_WARN_施放|r|T132282:0|t[伏击]于|cRXP_ENEMY_Gallywix|r，|cRXP-WARN_然后重新装备主武器|r
    >>确保你记得使用你的冷却液，如|T136205:0|t[躲避]和药水（如果你有）
    >>|cRXP_WARN_如果你不能杀了他，就寻求帮助。现在完成这个任务很重要|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
step << Rogue tbc
	.goto The Barrens,54.76,5.56
    >>|cRXP_WARN_塔楼顶层的锁芯|cRXP_PICK_Gallywix的锁箱|r。为|r|cRXP_Loot_Zanzil的混合物掠夺它|r
    >>|cRXP_WARN_在|cRXP_ENEMY_Gallywix|r重生之前快速执行此操作|r
	.complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue tbc
    >>使用|T134437:0|t[抗毒液]治疗|T136230:0|t[Touch of Zanzil]
    .itemcount 6452,1
    .use 6452
--VV NOTE some of this section might need to be changed depending on the route
step << Rogue tbc
    >>使用|T134437:0|t[强力抗毒素]治疗|T136230:0|t[Touch of Zanzil]
    .itemcount 6453,1
    .use 6453
step << Rogue tbc
    #label PoisonCleanse
    >>您现在将拥有持续一周的|T136230:0|t[赞齐尔之触]debuff|cRXP_WARN_Closely follow the route to remove|r
    +或者，让附近的友军|cRXP_friendly_Paladins|r施放|T135953:0|t[Cleanse]，|cRXP_friendly_Druids|r投掷|T136068:0|t[Exivath Poines]，|cRXP_RIENDLY_Shamans|r向你施放|T136068:0|t[Cure Toxins]，以移除你的|T136230:0|t[TTouch of Zanzil]debuff。这将为您节省大量时间
    >>|cRXP_WARN_如果发生这种情况，请单击此步骤|r
    .itemcount 6452,<1
    .itemcount 6453,<1
step << Rogue tbc
    #completewith PoisonCleanse
	.goto The Barrens,61.21,5.54,80,0
	.goto The Barrens,60.90,3.82,10,0
	.goto The Barrens,60.51,3.80,10,0 >>前往Boulder Lode矿场
    .zoneskip Orgrimmar
step << Rogue tbc
    #label LogoutSkipRogue
    #completewith PoisonCleanse
    .zone Orgrimmar >>|cRXP_WARN_前往: |cRXP_PICK_奥格瑞玛|r|r
    .link https://www.youtube.com/watch?v=UyGnwTEFGyM >>|cRXP_WARN_单击此处|r
step << Rogue tbc
    #requires LogoutSkipRogue
    #completewith next
	.goto Orgrimmar,40.55,63.82,20,0
	.goto Orgrimmar,38.94,54.58,20,0
	.goto Orgrimmar,41.99,56.86,20,0
	.goto Orgrimmar,43.76,56.37,20,0
    .goto Orgrimmar,43.61,53.40,15,0
    .goto Orgrimmar,43.05,53.73,10 >>向|cRXP_FRIENDLY_Shenthul|r行进
step << Rogue tbc
    #label PossibleBNP
    #completewith PoisonCleanse
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .turnin 2478 >>交任务: |cRXP_FRIENDLY_基本不可能的任务|r
    .accept 2479 >>接任务: |cRXP_WARN_希诺特的帮助|r
    .target Shenthul
step << Rogue tbc
    #requires PossibleBNP
    #label AVAH2
    #completewith PoisonCleanse
    .goto Orgrimmar,53.63,64.69,20,0
    .goto Orgrimmar,55.75,64.87,20,0
    .goto Orgrimmar,50.68,70.37,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wabang|r
    +|cRXP_BUY_从AH购买|r|T134437:0|t[抗毒液]|cRXP_Buy_或|r|T134437:0| t[强抗毒液]| cRXP_Buy_（如果便宜的话）。这将节省您以后的时间|r
    >>|cRXP_WARN_如果你负担不起，跳过这一步|r
    .itemcount 6452,<1
    .itemcount 6453,<1
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
step << Rogue tbc
    #requires AVAH2
    #completewith PoisonCleanse
    >>使用|T134437:0|t[抗毒液]治疗|T136230:0|t[Touch of Zanzil]
    .itemcount 6452,1
    .use 6452
step << Rogue tbc
    #requires AVAH2
    #label Antivenomuse2
    #completewith PoisonCleanse
    >>使用|T134437:0|t[强力抗毒素]治疗|T136230:0|t[Touch of Zanzil]
    .itemcount 6453,1
    .use 6453
step << Rogue tbc
    #requires Antivenomuse2
    #completewith next
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Durotar,50.61,13.27
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step << Rogue tbc
    #label TirisZeppR
    #requires Antivenomuse2
    #completewith PoisonCleanse
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
step << Rogue tbc
    #requires TirisZeppR
    #completewith PoisonCleanse
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>乘电梯到地下城
step << Rogue tbc
    #requires TirisZeppR
    #label FlyTarrenR
    #completewith PoisonCleanse
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fly Tarren Mill >>飞往塔伦磨坊
    .target Michael Garrett
step << Rogue tbc
    #requires FlyTarrenR
    #label Hinott1
    #completewith PoisonCleanse
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.63,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge|r
    .turnin 2479 >>交任务: |cRXP_FRIENDLY_希诺特的帮助|r
    .accept 2480 >>接任务: |cRXP_WARN_希诺特的帮助|r
    .timer 30,Hinott's Assistance RP
    .target Serge Hinott
step << Rogue tbc
    #requires Hinott1
    #label Hinott2
    #completewith PoisonCleanse
    .goto Hillsbrad Foothills,61.59,18.95
    >>|cRXP_WARN_等待RP|r
    .complete 2480,1 --Cure Completed
step << Rogue tbc
    #requires Hinott2
    #label Hinott3
    #completewith PoisonCleanse
    .goto Hillsbrad Foothills,61.59,18.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge|r
    .turnin 2480 >>交任务: |cRXP_FRIENDLY_希诺特的帮助|r
    .target Serge Hinott
step << Rogue tbc
    #label HinottOil
    #completewith PoisonCleanse
    >>使用|T134807:0|t[希诺特油]治愈|T136230:0|t[Touch of Zanzil]
    .use 8095
    .itemcount 8095,1
step << Rogue tbc
    #requires HinottOil
    #completewith Torek
    .hs >>火炉到雷霆崖
    .zoneskip The Barrens
step << Rogue tbc
    #requires HinottOil
    #completewith next
    .goto Thunder Bluff,46.22,49.14,6,0
    .goto Thunder Bluff,46.01,49.90,6,0
    .goto Thunder Bluff,47.00,49.83
    >>爬上塔楼
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >>飞到十字路口
    .target Tal
step << Rogue !tbc
    .goto The Barrens,49.16,12.48,40,0
    .goto The Barrens,48.12,5.42,100 >>前往|cRXP_FRIENDLY_Kadrak|r
step
    #requires HinottOil << Rogue tbc
    #completewith next
    .goto The Barrens,48.16,5.33,6,0
    .goto The Barrens,48.11,5.24,6 >>向上爬塔
step
    #requires HinottOil << Rogue tbc
    .goto The Barrens,48.12,5.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德拉克|r
    .turnin 3513 >>交任务: |cRXP_FRIENDLY_符文卷轴|r
    .isOnQuest 3513
step
    #requires HinottOil << Rogue tbc
    #completewith next
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
step << Warlock
#loop
	.line Ashenvale,67.36,82.59,67.30,80.85,66.61,79.75,65.53,79.62,65.16,80.23,65.74,81.65,65.66,82.72,66.61,84.10,67.03,83.39,67.36,82.59
	.goto Ashenvale,67.36,82.59,40,0
	.goto Ashenvale,67.30,80.85,40,0
	.goto Ashenvale,66.61,79.75,40,0
	.goto Ashenvale,65.53,79.62,40,0
	.goto Ashenvale,65.16,80.23,40,0
	.goto Ashenvale,65.74,81.65,40,0
	.goto Ashenvale,65.66,82.72,40,0
	.goto Ashenvale,66.61,84.10,40,0
	.goto Ashenvale,67.03,83.39,40,0
	.goto Ashenvale,67.36,82.59,40,0
    >>杀死|cRXP_ENEMY_Shadebrush搬石者|r和|cRXD_ENEMY_Shadowbrush树皮开膛手|r。掠夺它们以获得|cRXP_Loot_Wised围巾|r
    .complete 65610,1 --Withered Scarf
    .mob Shadethicket Stone Mover
    .mob Shadethicket Bark Ripper
step
    #label Torek1
    #requires HinottOil << Rogue tbc
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托雷克|r
    >>|cRXP_WARN_如果他没有起来，跳过这一步|r
    >>如果你还没有一个|cRXP_FRIENDLY_Voidwalker|r，在接受任务之前施放|T136221:0|t[召唤虚空行者] << Warlock
    .accept 6544 >>接任务: |cRXP_LOOT_托雷克的突袭|r
    .target Torek
step
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>关注|cRXP_FRIENDLY_Torek|r
    >>让|cRXP_FRIENDLY_TORK|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r坦克|cRXP_ENEMY_Silverwing Warriors|r和|cRXD_ENEMY_ SilverwingSentinel|r
    >>当你清空大楼时，向阳台跑去。当|cRXP_ENEMY_Duriel|r到来时，让|cRXP_FRIENDLY_Torek|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r在你造成伤害之前发动攻击
    >>|cRXP_WARN_如果你死了，跳过这一步|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
    .isOnQuest 6544
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库莱比|r, Sunsworn << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库莱比|r << !BloodElf
    .accept 6503 >>接任务: |cRXP_LOOT_灰谷先驱者|r
    .goto Ashenvale,71.10,68.12
    .turnin 9428 >>交任务: |cRXP_FRIENDLY_前往碎木岗哨|r << BloodElf
    .goto Ashenvale,71.33,67.69 << BloodElf
    .target Kuray'bin
    .target Advisor Sunsworn << BloodElf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r, |cRXP_FRIENDLY_马斯托克·维尔西斯|r, |cRXP_FRIENDLY_皮克希尔|r << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r, |cRXP_FRIENDLY_马斯托克·维尔西斯|r << Shaman/Warrior
    .turnin 6382 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r << Shaman/Warrior
    .turnin 6383 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
    .goto Ashenvale,73.45,63.56,30,0
    .goto Ashenvale,73.78,61.46
    .accept 25 >>接任务: |cRXP_LOOT_石爪山的困境|r
    .goto Ashenvale,73.55,60.58,12,0
    .goto Ashenvale,73.67,60.01
    .accept 6441 >>接任务: |cRXP_LOOT_萨特之角|r << !Shaman !Warrior
    .goto Ashenvale,73.06,61.48 << !Shaman !Warrior
    .target Senani Thunderheart
    .target Mastok Wrilehiss
    .target Pixel << !Shaman !Warrior
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
    .fp Splintertree Post >>获取Splinterree Post飞行路径
    .target Vhulgra
step
    .goto Ashenvale,73.03,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔托格·怒齿|r
    .turnin 6544 >>交任务: |cRXP_FRIENDLY_托雷克的突袭|r
    .target Ertog Ragetusk
    .isQuestComplete 6544
step
    .abandon 6544 >>放弃托瑞克的袭击
step
    #completewith next
    .goto Ashenvale,75.25,71.86,0
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>杀死|cRXP_ENEMY_Sharptalon |r。掠夺他|T136063:0|t[|cRXD_Loot_Sharptalon的爪|r]
    >>|cRXP_WARN_使用|T136063:0|t[|cRXP_LOOT_Sharptalon的爪|r]开始任务|r
    >>|cRXP_ENEMY_Sharptalon|r稍微巡视一下
    >>|cRXP_WARN_如果你正在努力杀死他，风筝|cRXP_ENEMY_Sharptalon|r会回到Splintertree哨所或被遗忘者营地。如果你这样做，确保你造成50%以上的伤害才能获得信用|r
    .collect 16305,1,2,1 --Sharptalon's Claw (1)
    .accept 2 >>接任务: |cRXP_LOOT_沙普塔隆的爪子|r
    .unitscan Sharptalon
    .use 16305
--VV yes the quest ID is actually 2
step
    .goto Ashenvale,76.15,67.60,15,0
    .goto Ashenvale,76.03,69.02,15,0
    .goto Ashenvale,76.25,70.62,15,0
    .goto Ashenvale,75.76,71.61,15,0
    .goto Ashenvale,75.57,70.33,15,0
    .goto Ashenvale,75.20,70.62,15,0
    .goto Ashenvale,74.37,69.31,15,0
    .goto Ashenvale,73.61,70.91,15,0
    .goto Ashenvale,72.96,70.34,15,0
    .goto Ashenvale,72.66,69.46,15,0
    .goto Ashenvale,72.09,70.17,15,0
    .goto Ashenvale,71.07,72.60,15,0
    .goto Ashenvale,71.92,73.64,15,0
    .goto Ashenvale,72.53,72.58,15,0
    .goto Ashenvale,72.32,74.64,15,0
    .goto Ashenvale,73.36,74.43,15,0
    .goto Ashenvale,73.85,75.03,15,0
    .goto Ashenvale,76.15,67.60
    >>杀死|cRXP_ENEMY_Ashenvale Outrunners|r
    >>|cRXP_WARN_They are stealthed|r
    .complete 6503,1 --Kill Ashenvale Outrunner (x9)
    .mob Ashenvale Outrunner
step
    .goto Ashenvale,78.24,65.72,45,0
    .goto Ashenvale,77.93,65.93,45,0
    .goto Ashenvale,77.60,66.33,45,0
    .goto Ashenvale,77.35,66.96,45,0
    .goto Ashenvale,76.93,68.04,45,0
    .goto Ashenvale,76.11,68.95,45,0
    .goto Ashenvale,75.94,69.80,45,0
    .goto Ashenvale,75.26,69.96,45,0
    .goto Ashenvale,74.86,70.06,45,0
    .goto Ashenvale,74.36,70.10,45,0
    .goto Ashenvale,73.33,70.61,45,0
    .goto Ashenvale,72.94,70.67,45,0
    .goto Ashenvale,72.50,70.60,45,0
    .goto Ashenvale,72.08,70.47,45,0
    .goto Ashenvale,71.46,70.10,45,0
    .goto Ashenvale,78.24,65.72
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>杀死|cRXP_ENEMY_Sharptalon |r。掠夺他|T136063:0|t[|cRXD_Loot_Sharptalon的爪|r]
    >>|cRXP_WARN_使用|T136063:0|t[|cRXP_LOOT_Sharptalon的爪|r]开始任务|r
    >>|cRXP_ENEMY_Sharptalon|r稍微巡视一下
    >>|cRXP_WARN_如果你正在努力杀死他，风筝|cRXP_ENEMY_Sharptalon|r会回到Splintertree哨所或被遗忘者营地。如果你这样做，确保你造成50%以上的伤害才能获得信用|r
    .collect 16305,1,2,1 --Sharptalon's Claw (1)
    .accept 2 >>接任务: |cRXP_LOOT_沙普塔隆的爪子|r
    .unitscan Sharptalon
    .use 16305
step << !Shaman !Warrior
    #completewith next
    .goto Ashenvale,72.54,50.48,40,0
    .goto Ashenvale,71.90,49.60,40,0
    .goto Ashenvale,71.90,49.60,50 >>前往夜间跑步
step << !Shaman !Warrior
#loop
	.line Ashenvale,68.84,53.16,67.41,55.32,66.70,57.09,66.23,55.16,66.58,51.68,66.62,54.28,67.15,54.63,67.96,54.20,68.84,53.16
	.goto Ashenvale,68.84,53.16,40,0
	.goto Ashenvale,67.41,55.32,40,0
	.goto Ashenvale,66.70,57.09,40,0
	.goto Ashenvale,66.23,55.16,40,0
	.goto Ashenvale,66.58,51.68,40,0
	.goto Ashenvale,66.62,54.28,40,0
	.goto Ashenvale,67.15,54.63,40,0
	.goto Ashenvale,67.96,54.20,40,0
	.goto Ashenvale,68.84,53.16,40,0
    >>杀死|cRXP_ENEMY_Felmusk Shadowspeaker|r、|cRXD_ENEMY_Felmusk Satyrs|r和|cRXP_ENEMY_ Felmusk Felswarns|r。掠夺他们的|cRXP_Loot_Satyr Horns|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_Felmusk Shadowspeakers |r cast|r|T132092:0|t[Shadowspeaker Slash]|cRXP-WARN_（廉价射击）并被偷走|r
    >>|cRXP_WARN_非常小心，因为所有的Felmusk演员|r|T136119:0|t[压倒性的斯坦奇]，|cRXP_WARN_an立即投6秒静音|r
    .complete 6441,1 --Collect Satyr Horns (x16)
    .mob Felmusk Shadowstalker
    .mob Felmusk Felsworn
    .mob Felmusk Satyr
--VV bad quest but its to help with xp gate later (shimmering 32, stv 35). Shaman/Warriors get about a level ahead so they can skip it
step
    #completewith next
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38,
    >>杀死|cRXP_ENEMY_Shadumbla|r。掠夺她|T132225:0|t[|cRXD_Loot_Shadumbla's Head|r]
    >>|cRXP_WARN_使用|T132225:0|t[|cRXP_LOOT_Shadumbra的头|r]开始任务|r
    >>|cRXP_ENEMY_Shadumbra|r在周围稍微巡逻
    .collect 16304,1,24,1 --Collect Shadumbra's Head
	.accept 24 >>接任务: |cRXP_LOOT_萨杜布拉的头颅|r
	.unitscan Shadumbra
    .use 16304
step
    #label Etched
    .goto Ashenvale,62.24,49.50,40,0
    .goto Ashenvale,61.58,50.20,40,0
    .goto Ashenvale,61.39,51.40,40,0
    .goto Ashenvale,61.53,52.59,40,0
    .goto Ashenvale,60.86,52.57,40,0
    .goto Ashenvale,60.42,53.10,40,0
    .goto Ashenvale,59.92,53.53,40,0
    .goto Ashenvale,59.84,54.42,40,0
    .goto Ashenvale,60.42,55.23,40,0
    .goto Ashenvale,60.34,56.01,40,0
    .goto Ashenvale,59.84,55.60,40,0
    .goto Ashenvale,59.83,56.26,40,0
    .goto Ashenvale,59.29,56.97,40,0
    .goto Ashenvale,59.11,56.29,40,0
    .goto Ashenvale,58.62,56.80,40,0
    .goto Ashenvale,58.67,56.11,40,0
    .goto Ashenvale,58.10,56.16,40,0
    .goto Ashenvale,58.65,55.37,40,0
    .goto Ashenvale,58.65,54.51,40,0
    .goto Ashenvale,62.24,49.50
    >>杀死|cRXP_ENEMY_Laughing Sisters|r。为|T134776:0|t[|cRXP-Loot_Ecched Phial|r]掠夺她们
    .collect 5867,1,1195,1 --Etched Phial (1)
    .mob Laughing Sister
step
    #label Shadumbra
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
    .goto Ashenvale,60.94,51.53,40,0
    .goto Ashenvale,60.49,52.41,40,0
    .goto Ashenvale,59.83,53.40,40,0
    .goto Ashenvale,59.55,53.71,40,0
    .goto Ashenvale,59.26,54.25,40,0
    .goto Ashenvale,59.10,54.76,40,0
    .goto Ashenvale,58.80,55.24,40,0
    .goto Ashenvale,58.17,55.57,40,0
    .goto Ashenvale,57.91,55.90,40,0
    .goto Ashenvale,57.54,56.03,40,0
    .goto Ashenvale,56.93,56.06,40,0
    .goto Ashenvale,56.37,55.90,40,0
    .goto Ashenvale,56.16,55.46,40,0
    .goto Ashenvale,55.62,55.41,40,0
    .goto Ashenvale,54.80,55.09,40,0
    .goto Ashenvale,54.06,54.91,40,0
    .goto Ashenvale,53.01,54.54,40,0
    .goto Ashenvale,52.68,54.42,40,0
    .goto Ashenvale,52.24,54.38,40,0
    .goto Ashenvale,62.39,49.80
    >>杀死|cRXP_ENEMY_Shadumbla|r。掠夺她|T132225:0|t[|cRXD_Loot_Shadumbla's Head|r]
    >>|cRXP_WARN_使用|T132225:0|t[|cRXP_LOOT_Shadumbra的头|r]开始任务|r
    >>|cRXP_ENEMY_Shadumbra|r在周围稍微巡逻
    .collect 16304,1,24,1 --Collect Shadumbra's Head
	.accept 24 >>接任务: |cRXP_LOOT_萨杜布拉的头颅|r
	.unitscan Shadumbra
    .use 16304
step << Shaman
    .goto Ashenvale,33.55,67.47
    >>在凉亭下使用|T132821:0|t[空蓝色水皮]
    .complete 1534,1 --Filled Blue Waterskin (1)
    .use 7767
step
    .line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
    .goto Ashenvale,39.81,62.94,40,0
    .goto Ashenvale,39.65,63.74,40,0
    .goto Ashenvale,39.77,65.40,40,0
    .goto Ashenvale,40.22,66.23,40,0
    .goto Ashenvale,41.41,66.56,40,0
    .goto Ashenvale,41.46,67.44,40,0
    .goto Ashenvale,41.55,67.71,40,0
    .goto Ashenvale,41.79,68.28,40,0
    .goto Ashenvale,42.08,68.71,40,0
    .goto Ashenvale,42.46,68.39,40,0
    .goto Ashenvale,43.33,68.09,40,0
    .goto Ashenvale,43.78,68.86,40,0
    .goto Ashenvale,39.81,62.94
    >>杀死|cRXP_ENEMY_Ursangous|r。掠夺他|T132941:0|t[|cRXX_Loot_Ursangous的爪子|r]
    >>|cRXP_WARN_使用|T132941:0|t[|cRXP_LOOT_Ursangous的爪|r]开始任务|r
    >>|cRXP_ENEMY_Ursangous|r在周围稍微巡逻
    .collect 16303,1,23,1 --Collect Ursangous's Paw (x1)
    .accept 23 >>接任务: |cRXP_LOOT_乌萨苟斯的爪子|r
    .unitscan Ursangous
    .use 16303
step << !Warrior !Shaman
    #completewith next
    .cast 7840 >>在水中使用|T134754:0|t[游泳速度药剂]，以更快的速度游泳
    .use 6372
    .itemcount 6372,1
--VV from ghostlands
step
    #completewith Tideress
    >>杀死|cRXP_ENEMY_被污染的水元素|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    #completewith next
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,45.84,70.67,40,0
    .goto Ashenvale,46.07,70.83,40,0
    .goto Ashenvale,46.53,70.80,40,0
    .goto Ashenvale,46.72,70.63,40,0
    .goto Ashenvale,47.22,70.44,40,0
    .goto Ashenvale,47.57,70.42,40,0
    .goto Ashenvale,47.79,69.90,40,0
    .goto Ashenvale,48.04,69.67,40,0
    .goto Ashenvale,48.71,69.54,40,0
    >>杀死|cRXP_ENEMY_Tideres|r。掠夺她获得|T136222:0|t[|cRXX_Loot_Befounded Water Globe|r]
    >>|cRXP_WARN_使用|T136222:0|t[|cRXP_LOOT_Befoud Water Globe|r]开始任务|r
    >>|cRXP_ENEMY_Tideres|r在岛上和水下巡逻
    .collect 16408,1,1918,1 --Collect Befouled Water Globe (x1)
    .accept 1918 >>接任务: |cRXP_LOOT_被污染的水元素|r
    .use 16408
    .unitscan Tideress
step
	.goto Ashenvale,48.93,69.56
    >>去凉亭下面
    .complete 25,2 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost
step
    #label Tideress
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,48.36,69.74,40,0
    .goto Ashenvale,48.43,70.14,40,0
    .goto Ashenvale,48.93,70.82,40,0
    .goto Ashenvale,49.49,70.76,40,0
    .goto Ashenvale,50.21,70.36,40,0
    .goto Ashenvale,50.47,70.43,40,0
    .goto Ashenvale,50.54,71.08,40,0
    .goto Ashenvale,50.74,71.31,40,0
    .goto Ashenvale,51.42,70.86,40,0
    .goto Ashenvale,52.13,71.14,40,0
    .goto Ashenvale,52.18,71.60,40,0
    .goto Ashenvale,52.08,72.10,40,0
    .goto Ashenvale,45.84,70.67
    >>杀死|cRXP_ENEMY_Tideres|r。掠夺她获得|T136222:0|t[|cRXX_Loot_Befounded Water Globe|r]
    >>|cRXP_WARN_使用|T136222:0|t[|cRXP_LOOT_Befoud Water Globe|r]开始任务|r
    >>|cRXP_ENEMY_Tideres|r在岛上和水下巡逻
    .collect 16408,1,1918,1 --Collect Befouled Water Globe (x1)
    .accept 1918 >>接任务: |cRXP_LOOT_被污染的水元素|r
    .use 16408
    .unitscan Tideress
step
#loop
	.line Ashenvale,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,52.13,71.14,52.18,71.60,52.08,72.10,45.84,70.67,48.36,69.74
	.goto Ashenvale,48.36,69.74,50,0
	.goto Ashenvale,48.43,70.14,50,0
	.goto Ashenvale,48.93,70.82,50,0
	.goto Ashenvale,49.49,70.76,50,0
	.goto Ashenvale,50.21,70.36,50,0
	.goto Ashenvale,50.47,70.43,50,0
	.goto Ashenvale,50.54,71.08,50,0
	.goto Ashenvale,50.74,71.31,50,0
	.goto Ashenvale,51.42,70.86,50,0
	.goto Ashenvale,52.13,71.14,50,0
	.goto Ashenvale,52.18,71.60,50,0
	.goto Ashenvale,52.08,72.10,50,0
	.goto Ashenvale,45.84,70.67,50,0
	.goto Ashenvale,48.36,69.74,50,0
    >>杀死|cRXP_ENEMY_被污染的水元素|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    .goto Ashenvale,60.20,72.90
	>>在Moonwell中使用|T134776:0|t[|cRXP_LOOT_Etched Phial|r]
    .complete 1195,1 --Collect Filled Etched Phial (x1)
    .use 5867
step
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托雷克|r
    >>如果你还没有一个|cRXP_FRIENDLY_Voidwalker|r，在接受任务之前施放|T136221:0|t[召唤虚空行者] << Warlock
    >>|cRXP_FRIENDLY_Torek|r|cRXP_WARN_has a 5 minutes respawn time|r
    .accept 6544 >>接任务: |cRXP_LOOT_托雷克的突袭|r
    .target Torek
step
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>关注|cRXP_FRIENDLY_Torek|r
    >>让|cRXP_FRIENDLY_TORK|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r坦克|cRXP_ENEMY_Silverwing Warriors|r和|cRXD_ENEMY_ SilverwingSentinel|r
    >>当你清空大楼时，向阳台跑去。当|cRXP_ENEMY_Duriel Moonfire|r到来时，让|cRXP_FRIENDLY_Torek|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r在你造成伤害之前发动攻击
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step
    #completewith next
    .goto Ashenvale,61.06,71.96,10,0
    .goto Ashenvale,61.38,72.48,15,0
    .goto Ashenvale,71.10,68.12,20 >>前往|cRXP_FRIENDLY_Kuray'bin|r
    .isQuestTurnedIn 6544
step
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库莱比|r
    .turnin 6503 >>交任务: |cRXP_FRIENDLY_灰谷先驱者|r
    .target Kuray'bin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r, |cRXP_FRIENDLY_马斯托克·维尔西斯|r, |cRXP_FRIENDLY_皮克希尔|r, |cRXP_FRIENDLY_埃尔托格·怒齿|r << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r, |cRXP_FRIENDLY_马斯托克·维尔西斯|r, |cRXP_FRIENDLY_埃尔托格·怒齿|r << Shaman/Warrior
    .turnin 2 >>交任务: |cRXP_FRIENDLY_沙普塔隆的爪子|r
    .turnin 23 >>交任务: |cRXP_FRIENDLY_乌萨苟斯的爪子|r
    .turnin 24 >>交任务: |cRXP_FRIENDLY_萨杜布拉的头颅|r
    .turnin 247 >>交任务: |cRXP_FRIENDLY_完成狩猎|r
    .goto Ashenvale,73.45,63.56,30,0
    .goto Ashenvale,73.78,61.46
    .turnin 25 >>交任务: |cRXP_FRIENDLY_石爪山的困境|r
    .turnin 1918 >>交任务: |cRXP_FRIENDLY_被污染的水元素|r
    .goto Ashenvale,73.55,60.58,12,0
    .goto Ashenvale,73.67,60.01
    .turnin 6441 >>交任务: |cRXP_FRIENDLY_萨特之角|r << !Shaman !Warrior
    .goto Ashenvale,73.06,61.48 << !Shaman !Warrior
    .turnin 6544 >>交任务: |cRXP_FRIENDLY_托雷克的突袭|r
    .goto Ashenvale,73.03,62.47
    .target Senani Thunderheart
    .target Mastok Wrilehiss
    .target Pixel << !Shaman !Warrior
    .target Ertog Ragetusk
    .isOnQuest 6544
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r, |cRXP_FRIENDLY_马斯托克·维尔西斯|r, |cRXP_FRIENDLY_皮克希尔|r << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r, |cRXP_FRIENDLY_马斯托克·维尔西斯|r << Shaman/Warrior
    .turnin 2 >>交任务: |cRXP_FRIENDLY_沙普塔隆的爪子|r
    .turnin 23 >>交任务: |cRXP_FRIENDLY_乌萨苟斯的爪子|r
    .turnin 24 >>交任务: |cRXP_FRIENDLY_萨杜布拉的头颅|r
    .turnin 247 >>交任务: |cRXP_FRIENDLY_完成狩猎|r
    .goto Ashenvale,73.45,63.56,30,0
    .goto Ashenvale,73.78,61.46
    .turnin 25 >>交任务: |cRXP_FRIENDLY_石爪山的困境|r
    .turnin 1918 >>交任务: |cRXP_FRIENDLY_被污染的水元素|r
    .goto Ashenvale,73.55,60.58,12,0
    .goto Ashenvale,73.67,60.01
    .turnin 6441 >>交任务: |cRXP_FRIENDLY_萨特之角|r << !Shaman !Warrior
    .goto Ashenvale,73.06,61.48 << !Shaman !Warrior
    .target Senani Thunderheart
    .target Mastok Wrilehiss
    .target Pixel << !Shaman !Warrior
step << Druid
	#completewith next
	.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
	.zoneskip Moonglade
    .xp <28,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 2091 >>训练你的职业技能
	.target Loganaar
    .xp <28,1
step << Mage
	#completewith next
	.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
    .zoneskip Undercity
    .train 3563,1
    .xp <28,1
step << Mage
    .goto Undercity,85.14,10.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
	.train 759 >>训练你的职业技能
	.target Anastasia Hartwell
    .xp <28,1
step << Mage
    .goto Undercity,82.77,15.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜|r
    .vendor >>|cRXP_BUY_从她那里购买最多20个|r|T134419:0|t[Teleportation符文]|cRXP_Buy_|r
    .target Horthus
    .itemcount 17031,<20
    .target Hannah Akeley
step
    #completewith SacredF1
    .abandon 1918 >>放弃被污染的元素
    .destroy 16408 >>摧毁: |cRXP_ENEMY_被污染的水球|r, 它在你的背包中. 不再需要它了
step
    .hs >>炉膛到十字路口 << Shaman/Warrior
    .hs >>火炉到雷霆崖 << !Shaman !Warrior
    .cooldown item,6948,>0
step << !Shaman !Warrior
    #completewith SacredF1
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .cooldown item,6948,<0
    .target Vhulgra
    .zoneskip Ashenvale,1
step << !Shaman !Warrior
    .goto Thunder Bluff,45.81,64.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pala|r
    >>|cRXP_BUY_从她那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从她那里购买|r|T133994:0|t[Stormfind Brie]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_从她那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_和|r|T133994:0|t[Stormfind Brie]|cRX|r << Paladin/Shaman
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin --Sweet Nectar (20)
    .collect 1707,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin --Stormwind Brie (20)
    .collect 1707,10,1145,1 << Paladin --Stormwind Brie (10)
    .target Innkeeper Pala
    .money <0.4000 << !Paladin !Shaman
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << Shaman/Warrior
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133976:0|t[Goldenbark Apples]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_和|r|T133976:0|t[Goldenbark Apples]|cRX|r << Paladin/Shaman
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Sweet Nectar (20)
    .collect 4539,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Goldenbark Apple (20)
    .collect 4539,10,1145,1 << Paladin/Shaman --Goldenbark Apple (10)
    .target Innkeeper Boorand Plainswind
    .money <0.4000 << !Paladin !Shaman
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << Warrior/Shaman
    .goto The Barrens,51.07,29.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
    .accept 1145 >>接任务: |cRXP_LOOT_疯狂的虫群|r
    .target Korran
    .xp <29,1
step << Warrior/Shaman
    #completewith SacredF1
    .goto The Barrens,51.50,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Devrak
    .zoneskip The Barrens,1
step << Shaman/Warrior
    #completewith next
    .goto Thunder Bluff,45.81,64.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pala|r
	.home >>将您的炉石设置为雷霆崖
    .target Innkeeper Pala
step
    #label SacredF1
    .goto Thunder Bluff,54.97,51.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞金·石蹄|r
    .turnin 1195 >>交任务: |cRXP_FRIENDLY_神圣之火|r
    .accept 1196 >>接任务: |cRXP_WARN_神圣之火|r
    .target Zangen Stonehoof
step << Shaman/Warrior
    #completewith next
    .goto Thunder Bluff,29.51,29.81,10,0
    .goto Thunder Bluff,28.39,25.55,10,0
    .goto Thunder Bluff,22.83,20.88,20 >>前往洞穴内的|cRXP_FRIENDLY_Zama|r
step << Shaman/Warrior
    .goto Thunder Bluff,22.83,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
	.turnin 1067 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
    .target Apothecary Zamah
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 27-28南部贫瘠JJ
#version 1
#group RestedXP部落1-30
#next 28-30万针JJ
#xprate >1.4999

step << Hunter
    .goto Thunder Bluff,59.14,86.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
    .train 14319 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <28,1
step << Warrior
    .goto Thunder Bluff,57.57,85.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
    .train 871 >>训练你的职业技能
    .target Ker Ragetotem
    .xp <28,1
 step << Shaman
	#completewith next
    .goto Thunder Bluff,29.81,29.96,15,0
    .goto Thunder Bluff,25.35,30.97,20,0
    .goto Thunder Bluff,25.35,30.97,20 >>向|cRXP_FRIENDLY_Siln|r和|cRXP-FRIENDLY_Tigor|r行进
step << Shaman
    .goto Thunder Bluff,22.83,21.13,-1
    .goto Thunder Bluff,23.63,18.80,-1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩·逐星|r, |cRXP_FRIENDLY_提戈尔·逐星|r
	.train 52129 >>训练你的职业技能 << wotlk
	.train 8008 >>训练你的职业技能 << tbc
	.target Siln Skychaser
	.target Tigor Skychaser
    .xp <28,1
step << Priest
    #completewith next
    .goto Thunder Bluff,29.51,29.81,10,0
    .goto Thunder Bluff,28.39,25.55,10,0
    .goto Thunder Bluff,25.65,20.69,20 >>进入洞穴，朝向|cRXP_FRIENDLY_Cobb|r
step << Priest
    .goto Thunder Bluff,25.65,20.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cobb|r
	.train 15430 >>训练你的职业技能
	.target Father Cobb
    .xp <28,1
step
    .goto Thunder Bluff,46.22,49.14,6,0
    .goto Thunder Bluff,46.01,49.90,6,0
    .goto Thunder Bluff,47.00,49.83
    >>爬上塔楼
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Tal
    .skill riding,<75,1 << Tauren wotlk
    .zoneskip Thunder Bluff,1
step << Tauren wotlk
    .goto Mulgore,47.65,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kar|r
    .skill riding,75 >>火车|T136103:0|t（学徒骑马）
    .target Kar Stormsinger
    .money <4.5
step << Tauren wotlk
    .goto Mulgore,47.49,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harb|r
    +|cRXP_BUY_从他那里买任何你喜欢的|r|T132243:0|t[Kodo]|cRXP_Buy_|r
	.target Harb Clawhoof
    .itemcount 15277,<1 --Gray Kodo
    .itemcount 15290,<1 --Brown Kodo
    .itemcount 46100,<1 --White Kodo
    .money <0.9
    .skill riding,<75,1
step << Tauren wotlk
    .cast 55884 >>使用|T132243:0|t[Gray Kodo]学习
    .use 15277
    .itemcount 15277,1
    .skill riding,75,1
step << Tauren wotlk
    .cast 55884 >>使用|T132245:0|t[Brown Kodo]学习
    .use 15290
    .itemcount 15290,1
    .skill riding,75,1
step << Tauren wotlk
    .cast 55884 >>使用|T132243:0|t[White Kodo]学习
    .use 46100
    .itemcount 46100,1
    .skill riding,75,1
step << Tauren wotlk
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132243:0|t[Gray Kodo]|cRXP_WARN_拖动到动作栏中|r
    .cast 18989 >>安装您的|T132243:0|t[灰色Kodo]
    .train 18989,3
    .zoneskip Mulgore,1
step << Tauren wotlk
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
step << Tauren wotlk
    .goto The Barrens,41.40,58.55
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .zoneskip Mulgore,1
step
#loop
	.line The Barrens,50.07,52.96,49.99,53.44,46.07,49.11,46.20,49.74,45.39,52.31,45.14,52.37,45.12,52.73,50.07,52.96
	.goto The Barrens,50.07,52.96,40,0
	.goto The Barrens,49.99,53.44,40,0
	.goto The Barrens,46.07,49.11,40,0
	.goto The Barrens,46.20,49.74,40,0
	.goto The Barrens,45.39,52.31,40,0
	.goto The Barrens,45.14,52.37,40,0
	.goto The Barrens,45.12,52.73,40,0
	.goto The Barrens,50.07,52.96,40,0
    >>杀死|cRXP_ENEMY_Lakota'mani|r。为|T132318:0|t[|cRXP-Loot_Hoof|r]掠夺他
    >>|cRXP_WARN_使用|T132318:0|t[|cRXP_LOOT_Hoop of Lakota'mani|r]开始任务|r
    .collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
    .accept 883 >>接任务: |cRXP_LOOT_拉克塔曼尼|r
    .use 5099
    .unitscan Lakota'Mani
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r and |cRXP_FRIENDLY_Ruga|r << Warrior
    .turnin 883 >>交任务: |cRXP_FRIENDLY_拉克塔曼尼|r
    .goto The Barrens,44.86,59.13
    .turnin 1823 >>交任务: |cRXP_FRIENDLY_和鲁迦交谈|r << Warrior
-- .accept 1824 >>接任务: |cRXP_LOOT_巨人旷野的试炼|r
    .goto The Barrens,44.80,59.22,6,0 << Warrior
    .goto The Barrens,44.67,59.42 << Warrior
    .target Jorn Skyseer
    .target Ruga Ragetotem << Warrior
    .isOnQuest 883 << Warrior
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruga|r
    .turnin 1823 >>交任务: |cRXP_FRIENDLY_和鲁迦交谈|r
--  .accept 1824 >>接任务: |cRXP_LOOT_巨人旷野的试炼|r
    .goto The Barrens,44.80,59.22,6,0
    .goto The Barrens,44.67,59.42
    .target Ruga Ragetotem
step
#loop
	.line The Barrens,44.33,61.78,44.06,62.18,45.57,62.95,45.75,62.52,49.67,59.54,49.42,61.04,49.18,61.45,44.33,61.78
	.goto The Barrens,44.33,61.78,40,0
	.goto The Barrens,44.06,62.18,40,0
	.goto The Barrens,45.57,62.95,40,0
	.goto The Barrens,45.75,62.52,40,0
	.goto The Barrens,49.67,59.54,40,0
	.goto The Barrens,49.42,61.04,40,0
	.goto The Barrens,49.18,61.45,40,0
	.goto The Barrens,44.33,61.78,40,0
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
step << skip
    #completewith next
    >>杀死|cRXP_ENEMY_Silithid Harvester |r。为|T134321:0|t[|cRXP-Loot_HHarvester的头部|r]掠夺它
    >>|cRXP_WARN_使用|T134321:0|t[|cRXP_LOOT_Harvester的头|r]开始任务|r
    >>|cRXP_WARN_如果找不到他，请跳过此任务|r
    .collect 5138,1,897,1 --Collect Harvester's Head
    .accept 897 >>接任务: |cRXP_LOOT_收割者|r
    .use 5138
    .unitscan Silithid Harvester
step << skip
#loop
	.line The Barrens,45.17,69.08,43.87,68.84,42.17,69.65,42.35,71.85,42.77,72.28,43.86,72.06,45.38,72.25,45.17,69.08
	.goto The Barrens,45.17,69.08,40,0
	.goto The Barrens,43.87,68.84,40,0
	.goto The Barrens,42.17,69.65,40,0
	.goto The Barrens,42.35,71.85,40,0
	.goto The Barrens,42.77,72.28,40,0
	.goto The Barrens,43.86,72.06,40,0
	.goto The Barrens,45.38,72.25,40,0
	.goto The Barrens,45.17,69.08,40,0
    >>杀死|cRXP_ENEMY_Silithid保护器|r，|cRXD_ENEMY_Silithid Swarmers |r，| cRXP__ENEMY_Silihid Creepers |r和|cRXP_ENEMY_ Silithid Grubs|r。掠夺它们的|T133027:0|t[Twitching Antenna]
    >>|cRXP_WARN_注意：|T133027:0|t[Twitching Antenna]只有15分钟的持续时间，在此任务期间不要AFK或注销|r
    .complete 1824,1 --Twitching Antenna (5)
    .mob Silithid Protector
    .mob Silithid Swarmer
    .mob Silithid Creeper
    .mob Silithid Grub
step << skip
    .goto The Barrens,45.17,69.08,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruga|r
    >>|cRXP_WARN_注意：|T133027:0|t[Twitching Antenna]只有15分钟的持续时间，在此任务期间不要AFK或注销|r
    >>|cRXP_WARN_如果你的|T133027:0|t[Twitching Antenna]消失，返回巨人球场，再收集5个|r
    .turnin 1824 >>交任务: |cRXP_FRIENDLY_巨人旷野的试炼|r
    .goto The Barrens,44.80,59.22,6,0
    .goto The Barrens,44.67,59.42
    .target Ruga Ragetotem
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 897
step
    #optional
    #completewith next
    .goto The Barrens,45.19,69.55,45,0
    .goto The Barrens,42.74,69.72,45,0
    .goto The Barrens,43.47,71.19,45,0
    .goto The Barrens,44.69,72.32,45,0
    .goto The Barrens,48.87,69.96,45,0
    >>杀死|cRXP_ENEMY_Silithid Harvester |r。为|T134321:0|t[|cRXP-Loot_HHarvester的头部|r]掠夺它
    >>|cRXP_WARN_使用|T134321:0|t[|cRXP_LOOT_Harvester的头|r]开始任务|r
    >>|cRXP_WARN_如果找不到他，请跳过此任务|r
    .collect 5138,1,897,1 --Collect Harvester's Head
    .accept 897 >>接任务: |cRXP_LOOT_收割者|r
    .use 5138
    .unitscan Silithid Harvester
step << Shaman
    #completewith next
    .goto The Barrens,44.76,74.79,45,0
    >>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]
    >>|cRXP_WARN_使用|T135992:0|t[|cRXP_LOOT_Washte Pawne‘s Feather|r]开始任务|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .use 5103
    .unitscan Washte Pawne
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>前往|cRXP_FRIENDLY_Brine|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞恩|r
    .turnin 1534 >>交任务: |cRXP_FRIENDLY_水之召唤|r
    .accept 220 >>接任务: |cRXP_LOOT_水之召唤|r
    .target Brine
step
    #completewith next
    .goto The Barrens,44.76,74.79,45,0 << !Shaman
    >>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]
    >>|cRXP_WARN_使用|T135992:0|t[|cRXP_LOOT_Washte Pawne‘s Feather|r]开始任务|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .use 5103
    .unitscan Washte Pawne
step
    #label Gann1
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
    .accept 843 >>接任务: |cRXP_LOOT_加恩的报复|r
    .target Gann Stonespire
step << Shaman/Warrior
    #completewith Lok
    >>杀死|cRXP_ENEMY_Razormane跟踪者|r和|cRXX_ENEMY_拉佐曼探路者|r。为|T135640:0|t[|cRXD_Loot_Razarmane Backstager|r]掠夺它们
    >>|cRXP_WARN_|cRXP_ENEMY_Razomane跟踪者|r被窃取|r
    >>杀死|cRXP_ENEMY_Razormane Seers|r。为|T135139:0|t[|cRXP-Loot_Charred Razorman Wand|r]掠夺它们
    >>杀死|cRXP_ENEMY_Razormane Warfrenzies|r。为|T134955:0|t[|cRXX_Loot_Razarmane War Shield |r]掠夺它们
    .complete 893,1 --Collect Razormane Backstabber (x1)
    .complete 893,2 --Collect Charred Razormane Wand (x1)
    .complete 893,3 --Collect Razormane War Shield (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
    .mob Razormane Seer
    .mob Razormane Warfrenzy
step << Shaman/Warrior
    #completewith next
    .goto The Barrens,44.85,78.81,45,0
    .goto The Barrens,44.44,78.97,45,0
    >>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]
    >>|cRXP_WARN_使用|T135992:0|t[|cRXP_LOOT_Washte Pawne‘s Feather|r]开始任务|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .use 5103
    .unitscan Washte Pawne
step << Shaman/Warrior
    .goto The Barrens,44.06,80.02,45,0
    .goto The Barrens,43.91,80.46,45,0
    .goto The Barrens,44.03,80.38,45,0
    .goto The Barrens,44.16,80.46,45,0
    .goto The Barrens,44.31,80.79,45,0
    .goto The Barrens,44.66,80.49,45,0
    .goto The Barrens,45.10,80.30,45,0
    .goto The Barrens,45.52,80.47,45,0
    .goto The Barrens,45.46,80.91,45,0
    .goto The Barrens,44.83,80.95,45,0
    .goto The Barrens,44.15,81.44,45,0
    .goto The Barrens,43.79,81.40,45,0
    .goto The Barrens,43.63,80.97,45,0
    .goto The Barrens,43.49,80.48,45,0
    .goto The Barrens,43.24,80.49,45,0
    .goto The Barrens,42.82,80.23,45,0
    .goto The Barrens,42.65,79.87,45,0
    .goto The Barrens,43.07,78.98,45,0
    .goto The Barrens,43.48,78.95,45,0
    .goto The Barrens,43.66,79.12,45,0
    .goto The Barrens,43.80,79.46,45,0
    .goto The Barrens,44.43,78.71,45,0
    .goto The Barrens,44.89,78.87,45,0
    .goto The Barrens,45.12,79.20,45,0
    .goto The Barrens,45.05,79.75,45,0
    .goto The Barrens,44.83,79.87,45,0
    .goto The Barrens,44.37,79.85
#loop
	.line The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
	.goto The Barrens,44.37,79.85,45,0
	.goto The Barrens,44.83,79.87,45,0
	.goto The Barrens,45.05,79.75,45,0
	.goto The Barrens,45.12,79.20,45,0
	.goto The Barrens,44.89,78.87,45,0
	.goto The Barrens,44.43,78.71,45,0
	.goto The Barrens,43.80,79.46,45,0
	.goto The Barrens,43.66,79.12,45,0
	.goto The Barrens,43.48,78.95,45,0
	.goto The Barrens,43.07,78.98,45,0
	.goto The Barrens,42.65,79.87,45,0
	.goto The Barrens,42.82,80.23,45,0
	.goto The Barrens,43.24,80.49,45,0
	.goto The Barrens,43.49,80.48,45,0
	.goto The Barrens,43.63,80.97,45,0
	.goto The Barrens,43.79,81.40,45,0
	.goto The Barrens,44.15,81.44,45,0
	.goto The Barrens,44.83,80.95,45,0
	.goto The Barrens,45.46,80.91,45,0
	.goto The Barrens,45.52,80.47,45,0
	.goto The Barrens,45.10,80.30,45,0
	.goto The Barrens,44.66,80.49,45,0
	.goto The Barrens,44.31,80.79,45,0
	.goto The Barrens,44.16,80.46,45,0
	.goto The Barrens,44.03,80.38,45,0
	.goto The Barrens,43.91,80.46,45,0
	.goto The Barrens,44.06,80.02,45,0
	.goto The Barrens,44.37,79.85,45,0
    >>杀死|cRXP_ENEMY_Kuz|r。掠夺他|cRXX_Loot_Kuz的头骨|r
    >>|cRXP_ENEMY_Kuz|r稍微巡视一下
    .complete 879,1 --Kuz's Skull (1)
    .unitscan Kuz
step << Shaman/Warrior
    #completewith next
    .goto The Barrens,43.14,80.75,45,0
    .goto The Barrens,43.35,81.16,45,0
    >>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]
    >>|cRXP_WARN_使用|T135992:0|t[|cRXP_LOOT_Washte Pawne‘s Feather|r]开始任务|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .use 5103
    .unitscan Washte Pawne
step << Shaman/Warrior
    #label Lok
    .goto The Barrens,40.31,80.70,20,0
    .goto The Barrens,40.14,80.56
    >>杀死|cRXP_ENEMY_Lok Orbane|r。掠夺他|cRXD_Loot_Lok的头骨|r
    .complete 879,3 --Lok's Skull (1)
    .mob Lok Orcbane
step << !Shaman !Warrior
    #completewith WandShield
    .goto The Barrens,44.85,78.81,45,0
    .goto The Barrens,44.44,78.97,45,0
    .goto The Barrens,43.14,80.75,45,0
    .goto The Barrens,43.35,81.16,45,0
    >>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]
    >>|cRXP_WARN_使用|T135992:0|t[|cRXP_LOOT_Washte Pawne‘s Feather|r]开始任务|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .use 5103
    .unitscan Washte Pawne
step
    #completewith next
    >>杀死|cRXP_ENEMY_Razormane跟踪者|r和|cRXX_ENEMY_拉佐曼探路者|r。为|T135640:0|t[|cRXD_Loot_Razarmane Backstager|r]掠夺它们
    >>|cRXP_WARN_|cRXP_ENEMY_Razomane跟踪者|r被窃取|r
    .complete 893,1 --Collect Razormane Backstabber (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #label WandShield
#loop
	.line The Barrens,42.57,78.81,42.12,78.48,41.49,78.69,41.22,79.72,40.91,80.60,40.55,80.84,41.62,80.92,41.54,82.28,42.48,82.28,42.57,78.81
	.goto The Barrens,42.57,78.81,45,0
	.goto The Barrens,42.12,78.48,45,0
	.goto The Barrens,41.49,78.69,45,0
	.goto The Barrens,41.22,79.72,45,0
	.goto The Barrens,40.91,80.60,45,0
	.goto The Barrens,40.55,80.84,45,0
	.goto The Barrens,41.62,80.92,45,0
	.goto The Barrens,41.54,82.28,45,0
	.goto The Barrens,42.48,82.28,45,0
	.goto The Barrens,42.57,78.81,45,0
    >>杀死|cRXP_ENEMY_Razormane Seers|r。为|T135139:0|t[|cRXP-Loot_Charred Razorman Wand|r]掠夺它们
    >>杀死|cRXP_ENEMY_Razormane Warfrenzies|r。为|T134955:0|t[|cRXX_Loot_Razarmane War Shield |r]掠夺它们
    .complete 893,2 --Collect Charred Razormane Wand (x1)
    .complete 893,3 --Collect Razormane War Shield (x1)
    .mob Razormane Seer
    .mob Razormane Warfrenzy
step << Shaman/Warrior
#loop
	.line The Barrens,44.07,83.34,43.54,83.14,43.60,83.69,44.07,83.34
	.goto The Barrens,44.07,83.34,30,0
	.goto The Barrens,43.54,83.14,30,0
	.goto The Barrens,43.60,83.69,30,0
	.goto The Barrens,44.07,83.34,30,0
    >>杀死|cRXP_ENEMY_Nak|r。掠夺他|cRXX_Loot_Nak的头骨|r
    .complete 879,2 --Lok's Skull (1)
    .mob Nak
step
    .goto The Barrens,44.09,83.70,15,0
    .goto The Barrens,44.15,83.34,15,0
    .goto The Barrens,44.38,83.05,15,0
    .goto The Barrens,44.22,82.67,15,0
    .goto The Barrens,44.10,82.38,15,0
    .goto The Barrens,43.85,82.25,15,0
    .goto The Barrens,43.76,80.84,40,0
    .goto The Barrens,44.14,80.03,40,0
    .goto The Barrens,44.17,81.02,40,0
    .goto The Barrens,44.66,81.18,40,0
    .goto The Barrens,45.08,80.34,40,0
    .goto The Barrens,45.48,79.89,40,0
    .goto The Barrens,44.09,83.70,15,0
    .goto The Barrens,44.15,83.34,15,0
    .goto The Barrens,44.38,83.05,15,0
    .goto The Barrens,44.22,82.67,15,0
    .goto The Barrens,44.10,82.38,15,0
    .goto The Barrens,43.85,82.25,15,0
    .goto The Barrens,43.76,80.84,40,0
    .goto The Barrens,44.14,80.03,40,0
    .goto The Barrens,44.17,81.02,40,0
    .goto The Barrens,44.66,81.18,40,0
    .goto The Barrens,45.08,80.34,40,0
    .goto The Barrens,45.48,79.89
    >>杀死|cRXP_ENEMY_Razormane跟踪者|r和|cRXX_ENEMY_拉佐曼探路者|r。为|T135640:0|t[|cRXD_Loot_Razarmane Backstager|r]掠夺它们
    >>|cRXP_WARN_|cRXP_ENEMY_Razomane跟踪者|r被窃取|r
    .complete 893,1 --Collect Razormane Backstabber (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #completewith next
    >>杀死|cRXP_ENEMY_Bael-dun挖掘机|r和|cRXX_ENEMY_Bael-dun工头|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob Bael'dun Excavator
    .mob Bael'dun Foreman
step
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19,15,0
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19,15,0
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19,15,0
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19
	>>杀死|cRXP_ENEMY_Explorer Khazgorm|r。掠夺他获取|cRXD_Loot_Khazgorm的日志|r
	.complete 843,3 --Collect Khazgorm's Journal (x1)
    .mob Prospector Khazgorm
step
#loop
	.line The Barrens,47.22,84.98,47.28,85.74,47.60,85.66,48.43,86.34,48.03,85.46,47.94,84.86,47.37,84.01,46.92,84.22,46.99,85.82,47.22,84.98
	.goto The Barrens,47.22,84.98,30,0
	.goto The Barrens,47.28,85.74,30,0
	.goto The Barrens,47.60,85.66,30,0
	.goto The Barrens,48.43,86.34,30,0
	.goto The Barrens,48.03,85.46,30,0
	.goto The Barrens,47.94,84.86,30,0
	.goto The Barrens,47.37,84.01,30,0
	.goto The Barrens,46.92,84.22,30,0
	.goto The Barrens,46.99,85.82,30,0
	.goto The Barrens,47.22,84.98,30,0
    >>杀死|cRXP_ENEMY_Bael-dun挖掘机|r和|cRXX_ENEMY_Bael-dun工头|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob Bael'dun Excavator
    .mob Bael'dun Foreman
step
    #xprate <1.7
#loop
	.line The Barrens,47.22,84.98,47.28,85.74,47.60,85.66,48.43,86.34,48.03,85.46,47.94,84.86,47.37,84.01,46.92,84.22,46.99,85.82,47.22,84.98
	.goto The Barrens,47.22,84.98,40,0
	.goto The Barrens,47.28,85.74,40,0
	.goto The Barrens,47.60,85.66,40,0
	.goto The Barrens,48.43,86.34,40,0
	.goto The Barrens,48.03,85.46,40,0
	.goto The Barrens,47.94,84.86,40,0
	.goto The Barrens,47.37,84.01,40,0
	.goto The Barrens,46.92,84.22,40,0
	.goto The Barrens,46.99,85.82,40,0
	.goto The Barrens,47.22,84.98,40,0
    .xp 27+15500 >>升级到15500+/32200xp
step
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.12,81.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
    .turnin 843 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
    .accept 846 >>接任务: |cRXP_LOOT_加恩的报复|r
    .target Gann Stonespire
step
    #completewith next
    .goto The Barrens,47.21,79.35,45,0
    .goto The Barrens,47.22,79.72,45,0
    >>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]
    >>|cRXP_WARN_使用|T135992:0|t[|cRXP_LOOT_Washte Pawne‘s Feather|r]开始任务|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .use 5103
    .unitscan Washte Pawne
step
    .goto The Barrens,48.63,84.49,110 >>前往Bael Modan
    .isOnQuest 846
step
    #completewith TearMoons
    .goto The Barrens,48.63,84.49,45,0
    >>杀死|cRXP_ENEMY_Bael'dun矮人|r。掠夺他们的|cRXP_Loot_硝酸甘油|r、|cRXD_Loot_木浆|r和|cRXP-Loot_硝酸钠|r
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
    .mob Bael'dun Rifleman
    .mob Bael'dun Soldier
    .mob Bael'dun Officer
step
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
    .accept 857 >>接任务: |cRXP_LOOT_众月之泪|r
    .target Feegly the Exiled
step
    #completewith next
    .goto The Barrens,48.87,85.62,10,0
    .goto The Barrens,49.09,85.37,10,0
    .goto The Barrens,48.85,84.88,15 >>前往Bael Modan
    .isOnQuest 846
step
    #completewith next
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.43,84.28,6 >>下到Baeldun的底层
step
    .goto The Barrens,49.13,84.25
    >>打开|cRXP_PICK_General Twinbraid的Strongbox |r。为|cRXP _Loot_Tear of the Moons而掠夺它|r
    >>|cRXP_WARN_小心，因为在|cRXP_ENEMY_General Twinbraid|r的房间里很容易过度充气|r
    >>|cRXP_WARN_直接拉除|cRXP_ENEMY_General Twinbraid|r以外的任何暴徒|r
    >>|cRXP_WARN_确保您的冷却液可用|r
    .complete 857,1 --Tear of the Moons (1)
step
    #completewith next
    .goto The Barrens,49.43,84.28,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,48.75,84.63,20 >>退出Baeldun的商店
step
    #label TearMoons
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
    .turnin 857 >>交任务: |cRXP_FRIENDLY_众月之泪|r
    .target Feegly the Exiled
step
#loop
	.line The Barrens,48.96,84.36,48.88,84.02,49.28,83.76,49.22,84.21,49.47,84.41,49.09,84.67,48.96,84.36
	.goto The Barrens,48.96,84.36,20,0
	.goto The Barrens,48.88,84.02,20,0
	.goto The Barrens,49.28,83.76,20,0
	.goto The Barrens,49.22,84.21,20,0
	.goto The Barrens,49.47,84.41,20,0
	.goto The Barrens,49.09,84.67,20,0
	.goto The Barrens,48.96,84.36,20,0
    >>杀死|cRXP_ENEMY_Bael'dun矮人|r。掠夺他们的|cRXP_Loot_硝酸甘油|r、|cRXD_Loot_木浆|r和|cRXP-Loot_硝酸钠|r
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
    .mob Bael'dun Rifleman
    .mob Bael'dun Soldier
    .mob Bael'dun Officer
step
    #xprate <1.7 << !Shaman !Warrior
    #completewith WeaponsOC
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
    .turnin 846 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
    .accept 849 >>接任务: |cRXP_LOOT_加恩的报复|r
    .target Gann Stonespire
step << !Shaman !Warrior
    #xprate >1.6999
    #completewith next
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
    .turnin 846 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
    .accept 849 >>接任务: |cRXP_LOOT_加恩的报复|r
    .target Gann Stonespire
step
#loop
	.line The Barrens,44.85,78.81,44.44,78.97,43.14,80.75,43.35,81.16,47.22,79.72,47.21,79.35,44.76,74.79,44.85,78.81
	.goto The Barrens,44.85,78.81,45,0
	.goto The Barrens,44.44,78.97,45,0
	.goto The Barrens,43.14,80.75,45,0
	.goto The Barrens,43.35,81.16,45,0
	.goto The Barrens,47.22,79.72,45,0
	.goto The Barrens,47.21,79.35,45,0
	.goto The Barrens,44.76,74.79,45,0
	.goto The Barrens,44.85,78.81,45,0
    >>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]
    >>|cRXP_WARN_使用|T135992:0|t[|cRXP_LOOT_Washte Pawne‘s Feather|r]开始任务|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
    .use 5103
    .unitscan Washte Pawne
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn, |cRXP_FRIENDLY_碎牙|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn << !Shaman !Warrior
    .turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
    .accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
    .goto The Barrens,45.10,57.68
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
    .turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
    .goto The Barrens,44.86,59.13
    .turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r << Shaman/Warrior
    .accept 906 >>接任务: |cRXP_LOOT_内奸|r << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 884
    .isOnQuest 885
    .isOnQuest 897
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn, |cRXP_FRIENDLY_碎牙|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn << !Shaman !Warrior
    .turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
    .accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
    .goto The Barrens,45.10,57.68
    .turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
    .turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
    .goto The Barrens,44.86,59.13
    .turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r << Shaman/Warrior
    .accept 906 >>接任务: |cRXP_LOOT_内奸|r << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 885
    .isOnQuest 897
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn, |cRXP_FRIENDLY_碎牙|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn << !Shaman !Warrior
    .turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
    .accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
    .goto The Barrens,45.10,57.68
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
    .goto The Barrens,44.86,59.13
    .turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r << Shaman/Warrior
    .accept 906 >>接任务: |cRXP_LOOT_内奸|r << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 884
    .isOnQuest 897
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn, |cRXP_FRIENDLY_碎牙|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn << !Shaman !Warrior
    .turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
    .accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
    .goto The Barrens,45.10,57.68
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
    .goto The Barrens,44.86,59.13
    .turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r << Shaman/Warrior
    .accept 906 >>接任务: |cRXP_LOOT_内奸|r << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 884
    .isOnQuest 885
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn, |cRXP_FRIENDLY_碎牙|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn << !Shaman !Warrior
    .turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
    .accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
    .goto The Barrens,45.10,57.68
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .goto The Barrens,44.86,59.13
    .turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r << Shaman/Warrior
    .accept 906 >>接任务: |cRXP_LOOT_内奸|r << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 884
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn, |cRXP_FRIENDLY_碎牙|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn << !Shaman !Warrior
    .turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
    .accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
    .goto The Barrens,45.10,57.68
    .turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
    .goto The Barrens,44.86,59.13
    .turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r << Shaman/Warrior
    .accept 906 >>接任务: |cRXP_LOOT_内奸|r << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 885
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn, |cRXP_FRIENDLY_碎牙|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, Jorn << !Shaman !Warrior
    .turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
    .accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
    .goto The Barrens,45.10,57.68
    .turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
    .goto The Barrens,44.86,59.13
    .turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r << Shaman/Warrior
    .accept 906 >>接任务: |cRXP_LOOT_内奸|r << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 897
step
    #xprate <1.7 << !Shaman !Warrior
    #label WeaponsOC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r, |cRXP_FRIENDLY_碎牙|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r << !Shaman !Warrior
    .turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
    .accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
    .goto The Barrens,45.10,57.68
    .turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r << Shaman/Warrior
    .accept 906 >>接任务: |cRXP_LOOT_内奸|r << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Mangletooth << Shaman/Warrior
step
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.12,81.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
    .turnin 846 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
    .accept 849 >>接任务: |cRXP_LOOT_加恩的报复|r
    .target Gann Stonespire
step
    .goto The Barrens,46.97,85.63
    >>点击平台顶部的|cRXP_PICK_Bael Modan飞行机|r
    >>|cRXP_WARN_这有50码的射程|r
    .complete 849,1 --Collect Bael Modan Flying Machine destroyed (x1)
step
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.12,81.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
    .turnin 849 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
    .target Gann Stonespire
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 28-30万针JJ
#version 1
#group RestedXP部落1-30
#next RestedXP部落30-45\30-32 希尔斯布莱德丘陵/Arathi JJ
#xprate >1.4999

step
    .goto Thousand Needles,32.24,22.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵穆赫·月角|r
    .accept 4542 >>接任务: |cRXP_LOOT_给乱风岗的紧急信件|r
    .target Brave Moonhorn
step
    #completewith Freewind1
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.61,31.49,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>杀死|cRXP_ENEMY_Galak信使|r。掠夺他获得|T133473:0|t[|cRXP_Loot_Assassination Note|r]
    >>|cRXP_WARN_使用|T133473:0|t[|cRXP_LOOT_Assassination Note|r]开始任务|r
    >>|cRXP_WARN_他在Splithoof Crag（东半人马营地）产卵|r
    .collect 12564,1,4881,1 --Collect Assassination Note
    .accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
    .use 12564
    .unitscan Galak Messenger
--VV 18.32,22.10 west camp end
step
    #completewith next
    .goto Thousand Needles,34.17,26.08,45 >>乘电梯到千针 << !Mage !Paladin
    .goto Thousand Needles,34.17,26.08,45 >>跳下去。在撞击底部之前施放|T135736:0|t[闪烁]，以避免受到坠落伤害 << Mage
    .goto Thousand Needles,34.17,26.08,45 >>跳下去。在撞击底部之前施放|T135964:0|t[保护祝福]，以避免受到坠落伤害 << Paladin
    .zoneskip Thousand Needles,1
step
    #label Freewind1
    #completewith next
    .goto Thousand Needles,46.73,48.27,30 >>前往Freewind Post的电梯
    .zoneskip Thousand Needles,1
step
    .goto Thousand Needles,45.91,49.91,25 >>乘电梯到Freewind
    .zoneskip Thousand Needles,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Elosai, Wanted Poster, Rau, Longhorn, Hagar, |cRXP_FRIENDLY_艾鲁|r
    .accept 9431 >>接任务: |cRXP_LOOT_另一条路|r
    .goto Thousand Needles,46.21,50.39
    .accept 5147 >>接任务: |cRXP_LOOT_通缉：阿纳克·恐怖图腾|r
    .goto Thousand Needles,46.00,50.86
    .turnin 1196 >>交任务: |cRXP_FRIENDLY_神圣之火|r
    .accept 1197 >>接任务: |cRXP_WARN_神圣之火|r
    .goto Thousand Needles,45.97,51.10,8,0
    .goto Thousand Needles,46.14,51.72
    .turnin 4542 >>交任务: |cRXP_FRIENDLY_给乱风岗的紧急信件|r
    .accept 4841 >>接任务: |cRXP_LOOT_清除半人马|r
    .goto Thousand Needles,45.70,50.63,8,0
    .goto Thousand Needles,45.65,50.80
    .accept 4821 >>接任务: |cRXP_LOOT_异型卵|r
    .goto Thousand Needles,44.64,50.29
    .accept 4767 >>接任务: |cRXP_LOOT_驭风者|r
    .goto Thousand Needles,44.83,48.95,8,0
    .goto Thousand Needles,45.05,48.90
    .target Magistrix Elosai
    .target Rau Cliffrunner
    .target Cliffwatcher Longhorn
    .target Hagar Lightninghoof
    .target Elu
    .itemStat 18,QUALITY,>7 << Hunter
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>18.95 << Hunter
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elosai|r, the |cRXP_FRIENDLY_Wanted Poster|r, |cRXP_FRIENDLY_Rau|r, and |cRXP_FRIENDLY_Longhorn|r
    .accept 9431 >>接任务: |cRXP_LOOT_另一条路|r
    .goto Thousand Needles,46.21,50.39
    .accept 5147 >>接任务: |cRXP_LOOT_通缉：阿纳克·恐怖图腾|r
    .goto Thousand Needles,46.00,50.86
    .turnin 1196 >>交任务: |cRXP_FRIENDLY_神圣之火|r
    .accept 1197 >>接任务: |cRXP_WARN_神圣之火|r
    .goto Thousand Needles,45.97,51.10,8,0
    .goto Thousand Needles,46.14,51.72
    .turnin 4542 >>交任务: |cRXP_FRIENDLY_给乱风岗的紧急信件|r
    .accept 4841 >>接任务: |cRXP_LOOT_清除半人马|r
    .goto Thousand Needles,45.70,50.63,8,0
    .goto Thousand Needles,45.65,50.80
    .accept 4821 >>接任务: |cRXP_LOOT_异型卵|r
    .goto Thousand Needles,44.64,50.29
    .accept 4767 >>接任务: |cRXP_LOOT_驭风者|r
    .goto Thousand Needles,44.83,48.95,8,0
    .goto Thousand Needles,45.05,48.90
    .target Magistrix Elosai
    .target Rau Cliffrunner
    .target Cliffwatcher Longhorn
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
    .vendor 9551 >>|cRXP_BUY_从他那里购买|r|T135495:0|t[密集短弓]|cRXP_Buy_|r
    .collect 3030,2000,4767,1 --Sharp Arrow (2000)
    .target Starn
    .itemcount 3030,<2000
    .money <2.8814
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
--    .collect 11305,1,4767,1 --Dense Shortbow (1)
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
    .collect 3030,2000,4767,1 --Sharp Arrow (2000)
    .target Starn
    .itemcount 3030,<2000
    .money <0.3000
step << Hunter
    #completewith Freewind12
    +当你达到30级时，记得装备|T135495:0|t[密集短弓]
    .use 11305
    .itemcount 11305,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
    .xp >30,1
step << Hunter
    #completewith Freewind12
    +装备|T135495:0|t[密集短弓]
    .use 11305
    .itemcount 11305,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
    .xp <30,1
step << Hunter
    #label Freewind12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Hagar, |cRXP_FRIENDLY_艾鲁|r
    .accept 4821 >>接任务: |cRXP_LOOT_异型卵|r
    .goto Thousand Needles,44.64,50.29
    .accept 4767 >>接任务: |cRXP_LOOT_驭风者|r
    .goto Thousand Needles,44.83,48.95,8,0
    .goto Thousand Needles,45.05,48.90
    .target Hagar Lightninghoof
    .target Elu
step
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
    .fp Freewind Post >>获取Freewind Post飞行路径
    .target Nyse
step
    #completewith Clovenhoof
    >>杀死|cRXP_ENEMY_Galak侦察兵|r、|cRXD_ENEMY_加拉克牧马人|r和|cRXP_ENEMY_加拉克追风者|r
    >>杀死你看到的每一个|cRXP_ENEMY_Galak Scout|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob Galak Scout
    .mob Galak Wrangler
    .mob Galak Windchaser
step
    #label Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.12,37.22,20 >>进入洞穴
step
    #requires Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.44,36.32,12,0
    .goto Thousand Needles,43.14,35.19,12,0
    .goto Thousand Needles,42.11,34.54,12,0
    .goto Thousand Needles,42.01,31.47,20 >>前往|cRXP_PICK_Ancient Brazier |r
step
    #label Clovenhoof
    .goto Thousand Needles,42.01,31.47
    >>打开|cRXP_PICK_Ancient Brazier|r。为|cRXP _Loot_Cloven Hoof|r打开它
    .complete 1197,1 --Collect Cloven Hoof (x1)
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.46,32.60,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>杀死|cRXP_ENEMY_Galak信使|r。掠夺他获得|T133473:0|t[|cRXP_Loot_Assassination Note|r]
    >>|cRXP_WARN_使用|T133473:0|t[|cRXP_LOOT_Assassination Note|r]开始任务|r
    >>|cRXP_WARN_他在Splithoof Crag（东半人马营地）产卵|r
    .collect 12564,1,4881,1 --Collect Assassination Note
    .accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
    .use 12564
    .unitscan Galak Messenger
step
#loop
	.line Thousand Needles,43.12,36.86,41.18,34.83,40.42,34.45,39.00,32.56,39.68,34.93,39.76,35.82,39.32,36.93,40.43,37.96,41.04,39.03,41.12,41.34,42.33,40.54,42.84,39.09,44.15,40.72,44.98,41.03,45.66,43.81,47.23,41.98,48.57,43.53,49.39,41.24,48.14,40.43,47.11,40.29,45.89,40.32,44.43,38.36,,43.12,36.86
	.goto Thousand Needles,43.12,36.86,40,0
	.goto Thousand Needles,41.18,34.83,40,0
	.goto Thousand Needles,40.42,34.45,40,0
	.goto Thousand Needles,39.00,32.56,40,0
	.goto Thousand Needles,39.68,34.93,40,0
	.goto Thousand Needles,39.76,35.82,40,0
	.goto Thousand Needles,39.32,36.93,40,0
	.goto Thousand Needles,40.43,37.96,40,0
	.goto Thousand Needles,41.04,39.03,40,0
	.goto Thousand Needles,41.12,41.34,40,0
	.goto Thousand Needles,42.33,40.54,40,0
	.goto Thousand Needles,42.84,39.09,40,0
	.goto Thousand Needles,44.15,40.72,40,0
	.goto Thousand Needles,44.98,41.03,40,0
	.goto Thousand Needles,45.66,43.81,40,0
	.goto Thousand Needles,47.23,41.98,40,0
	.goto Thousand Needles,48.57,43.53,40,0
	.goto Thousand Needles,49.39,41.24,40,0
	.goto Thousand Needles,48.14,40.43,40,0
	.goto Thousand Needles,47.11,40.29,40,0
	.goto Thousand Needles,45.89,40.32,40,0
	.goto Thousand Needles,44.43,38.36,40,0
	.goto Thousand Needles,43.12,36.86,40,0
    >>杀死|cRXP_ENEMY_Galak侦察兵|r、|cRXD_ENEMY_加拉克牧马人|r和|cRXP_ENEMY_加拉克追风者|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob Galak Scout
    .mob Galak Wrangler
    .mob Galak Windchaser
step
    #xprate <1.7 << !Shaman !Warrior
    #completewith next
    >>杀死|cRXP_ENEMY_Gravelsnout Surveyors|r、|cRXD_ENEMY_Gravelsnout Diggers|r和|cRXP_ENEMY_Gibblesnik|r（如果他在上面）。掠夺它们以获取|cRXP_OOT_Ore Sample|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
    #completewith next
    .goto Thousand Needles,54.57,44.36,12,0
    .goto Thousand Needles,53.71,42.59,10,0
    .goto Thousand Needles,53.95,41.49,10 >>前往|cRXP_FRONDLY_Dorn|r
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
    .accept 1149 >>接任务: |cRXP_LOOT_信仰的试炼|r
    .timer 7,Test of Faith RP
    .target Dorn Plainstalker
step
    .goto Thousand Needles,26.63,34.23
    >>|cRXP_WARN_等待RP|r
    >>|cRXP_WARN_从木平台的末端跳下。你将被传送而不是死于坠落伤害|r
    .complete 1149,1 --Explore Zone (1)
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
    .turnin 1149 >>交任务: |cRXP_FRIENDLY_信仰的试炼|r
    .accept 1150 >>接任务: |cRXP_LOOT_耐力的试炼|r
    .target Dorn Plainstalker
step
    #xprate <1.7 << !Shaman !Warrior
    #completewith Purifying
    .line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
    .line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
    .line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
    .line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
    .line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
    .goto Thousand Needles,52.65,48.02,40,0
    >>杀死|cRXP_ENEMY_Gravelsnout Surveyors|r、|cRXD_ENEMY_Gravelsnout Diggers|r和|cRXP_ENEMY_Gibblesnik|r（如果他在上面）。掠夺它们以获取|cRXP_OOT_Ore Sample|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
    #completewith next
    .goto Thousand Needles,56.36,50.39,20,0
    >>掠夺地面上的|cRXP_Loot_外星蛋|r
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #label Purifying
    .goto Thousand Needles,59.92,54.32,40,0
    .goto Thousand Needles,60.42,58.75,40,0
    .goto Thousand Needles,63.80,57.08,40,0
    .goto Thousand Needles,64.02,60.43,40,0
    .goto Thousand Needles,65.36,61.78,40,0
    .goto Thousand Needles,68.14,60.31,40,0
    .goto Thousand Needles,65.63,50.60,40,0
    .goto Thousand Needles,64.09,48.19,40,0
    .goto Thousand Needles,59.92,54.32,40,0
    .goto Thousand Needles,60.42,58.75,40,0
    .goto Thousand Needles,63.80,57.08,40,0
    .goto Thousand Needles,64.02,60.43,40,0
    .goto Thousand Needles,65.36,61.78,40,0
    .goto Thousand Needles,68.14,60.31,40,0
    .goto Thousand Needles,65.63,50.60,40,0
    .goto Thousand Needles,64.09,48.19
    >>杀死|cRXP_ENEMY_Thundering Boulderkins|r。掠夺他们的|cRXX_Loot_净化地球|r
    .complete 9431,1 --Collect Purifying Earth (x2)
    .mob Thundering Boulderkin
step
    #xprate <1.7 << !Shaman !Warrior
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
    .goto Thousand Needles,59.79,58.16
    >>杀死|cRXP_ENEMY_Gravelsnout Surveyors|r、|cRXD_ENEMY_Gravelsnout Diggers|r和|cRXP_ENEMY_Gibblesnik|r（如果他在上面）。掠夺它们以获取|cRXP_OOT_Ore Sample|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39
    >>掠夺地面上的|cRXP_Loot_外星蛋|r
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #completewith next
    .goto Thousand Needles,46.73,48.27,30 >>前往Freewind Post的电梯
    .zoneskip Thousand Needles,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r, |cRXP_FRIENDLY_Longhorn|r, and |cRXP_FRIENDLY_Hagar|r
    .turnin 1197 >>交任务: |cRXP_FRIENDLY_神圣之火|r
    .goto Thousand Needles,45.97,51.10,8,0
    .goto Thousand Needles,46.14,51.72
    .turnin 4841 >>交任务: |cRXP_FRIENDLY_清除半人马|r
    .accept 5064 >>接任务: |cRXP_LOOT_恐怖图腾的密信|r
    .goto Thousand Needles,45.70,50.63,8,0
    .goto Thousand Needles,45.65,50.80
    .turnin 4821 >>交任务: |cRXP_FRIENDLY_异型卵|r
    .accept 4865 >>接任务: |cRXP_LOOT_狂热之蛇|r
    .goto Thousand Needles,44.64,50.29
    .target Magistrix Elosai
    .target Rau Cliffrunner
    .target Cliffwatcher Longhorn
    .target Hagar Lightninghoof
    .itemStat 18,QUALITY,>7 << Hunter
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>18.95 << Hunter
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r and |cRXP_FRIENDLY_Longhorn|r
    .turnin 1197 >>交任务: |cRXP_FRIENDLY_神圣之火|r
    .goto Thousand Needles,45.97,51.10,8,0
    .goto Thousand Needles,46.14,51.72
    .turnin 4841 >>交任务: |cRXP_FRIENDLY_清除半人马|r
    .accept 5064 >>接任务: |cRXP_LOOT_恐怖图腾的密信|r
    .goto Thousand Needles,45.70,50.63,8,0
    .goto Thousand Needles,45.65,50.80
    .target Magistrix Elosai
    .target Rau Cliffrunner
    .target Cliffwatcher Longhorn
    .itemStat 18,QUALITY,<7 << Hunter
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95 << Hunter
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
    .vendor 9551 >>|cRXP_BUY_从他那里购买|r|T135495:0|t[密集短弓]|cRXP_Buy_|r
    .collect 3030,2000,4767,1 --Sharp Arrow (2000)
    .target Starn
    .itemcount 3030,<2000
    .money <2.8814
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
--    .collect 11305,1,4767,1 --Dense Shortbow (1)
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
    .collect 3030,2000,4767,1 --Sharp Arrow (2000)
    .target Starn
    .itemcount 3030,<2000
    .money <0.3000
step << Hunter
    #completewith Freewind12
    +当你达到30级时，记得装备|T135495:0|t[密集短弓]
    .use 11305
    .itemcount 11305,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
    .xp >30,1
step << Hunter
    #completewith Freewind12
    +装备|T135495:0|t[密集短弓]
    .use 11305
    .itemcount 11305,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
    .xp <30,1
step << Hunter
    .goto Thousand Needles,44.64,50.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hagar|r
    .turnin 4821 >>交任务: |cRXP_FRIENDLY_异型卵|r
    .accept 4865 >>接任务: |cRXP_LOOT_狂热之蛇|r
    .target Hagar Lightninghoof
step
    #label GrenkaCave
    #completewith Grenka
    .goto Thousand Needles,27.59,49.86,12,0
    .goto Thousand Needles,28.65,51.30,12,0
    .goto Thousand Needles,27.29,51.30,12 >>前往|cRXP_ENEMY_Grenka|r洞穴
step
    #completewith Grenka
    +|cRXP_WARN_小心|cRXP_ENEMY_Screeching Windcaller|r cast|r|T136022:0|t[Gust-of Wind]|cRXP_WARN_，在距离|cRXD_ENEMY_Screeching风铃手|r 10码以内的4秒AoE眩晕，以及|cRXX_ENEMY_ Screechining Harpies|r cast| r|T136122:0|t[Deafening Screech]|cRX P_WARN_ 8秒沉默|r
step
    #label HarpyFood
    #requires GrenkaCave
    #completewith Grenka
    .goto Thousand Needles,26.89,52.07,12,0
    .goto Thousand Needles,26.34,52.68,12,0
    .goto Thousand Needles,26.66,53.55,12,0
    .goto Thousand Needles,27.14,54.07,12,0
    .goto Thousand Needles,26.97,55.09,12,0
    .goto Thousand Needles,25.84,54.78,20 >>前往|cRXP_PICK_Harpy Foods |r
step
    #requires HarpyFood
    #completewith next
    .goto Thousand Needles,25.84,54.78
    .cast 6478 >>打开地面上的|cRXP_PICK_Harpy Foods |r召唤|cRXP_ENEMY_Grenka|r
    .isOnQuest 1150
step
    #label Grenka
    .goto Thousand Needles,26.16,55.89,15,0
    .goto Thousand Needles,26.69,55.62,15,0
    .goto Thousand Needles,25.90,55.23
    >>杀死|cRXP_ENEMY_Grenka Bloodscrear|r。掠夺她|cRXX_Loot_Grenka的爪|r
    .complete 1150,1 --Collect Grenka's Claw (x1)
    .mob Grenka Bloodscreech
step
    .xp 29 >>升级到29级
step
    #completewith next
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>杀死|cRXP_ENEMY_Steelsnap|r。掠夺他|cRXX_Loot_Stelsnap's Rib|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    #completewith next
    .goto Thousand Needles,14.41,32.44,20,0
    .goto Thousand Needles,14.04,32.37,12,0
    .goto Thousand Needles,14.04,32.37,20 >>前往高鲈
step
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    >>地面上的织机|cRXP_Loot_High Wyvern蛋|r
    .complete 4767,1,6 --Collect Highperch Wyvern Egg (x10)
step
    #completewith Paoka1
    >>地面上的织机|cRXP_Loot_High Wyvern蛋|r
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    #completewith next
    .goto Thousand Needles,13.18,39.55,15,0
    .goto Thousand Needles,13.52,40.27,15,0
    .goto Thousand Needles,14.01,40.27,15,0
    .goto Thousand Needles,14.92,39.63,15,0
    .goto Thousand Needles,16.46,41.09,25,0
    .goto Thousand Needles,17.89,40.57,20 >>沿着小路往上跑。前往|cRXP_FRIENDLY_Pao'ka|r
step
    #label Paoka1
    .goto Thousand Needles,17.89,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka|r to begin the escort
    .accept 4770 >>接任务: |cRXP_LOOT_回家|r
    .target Pao'ka Swiftmountain
step
    #completewith next
    >>地面上的织机|cRXP_Loot_High Wyvern蛋|r
    >>|cRXP_WARN_在护送|r|cRXP_FRIENDLY_Pao'ka时，请确保您正在执行此操作|r
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    .goto Thousand Needles,11.06,34.95,40,0
    .goto Thousand Needles,15.17,32.66
    >>|cRXP_WARN_护送|r|cRXP_FRIENDLY_Pao'ka|r
    >>|cRXP_WARN_一旦|cRXP_FRIENDLY_Pao'ka|r到达高位栖息的中部，三只高位栖息的Wyvern就会产卵。你只需要攻击东部的一个，其他的就会消失|r
    .complete 4770,1 --Escort Pao'ka from Highperch
step
    #completewith next
    .goto Thousand Needles,14.41,32.44,20,0
    .goto Thousand Needles,14.04,32.37,12,0
    .goto Thousand Needles,14.04,32.37,20 >>前往高鲈
step
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    >>地面上的织机|cRXP_Loot_High Wyvern蛋|r
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    #completewith Panel
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>杀死|cRXP_ENEMY_Steelsnap|r。掠夺他|cRXX_Loot_Stelsnap's Rib|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    .goto Thousand Needles,21.06,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laer|r
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r|T133964:0|t[Multgore Spice Bread]|cRXP_Buy_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r|T132799:0|t[Sweet Nectar]|cRXP_Buy_和|r|T133964:0|t[Multgore Spice Bread]|cRX|r << Paladin
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin --Sweet Nectar (20)
    .collect 4544,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin --Mulgore Spice Bread (20)
    .collect 4544,10,1145,1 << Paladin --Mulgore Spice Bread (10)
    .target Laer Stepperunner
    .money <0.4000 << !Paladin
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r, |cRXP_FRIENDLY_Motega|r, and |cRXP_FRIENDLY_Wizlo|r
    >>|cRXP_WARN_Turn in quickly, as turning in "Assassination Plot" will summon three |cRXP_ENEMY_Galak Assassins|r that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .turnin 4881 >>交任务: |cRXP_FRIENDLY_暗杀计划|r
    .accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
    .goto Thousand Needles,21.25,32.05
    .turnin 4865 >>交任务: |cRXP_FRIENDLY_狂热之蛇|r
    .accept 5062 >>接任务: |cRXP_LOOT_神圣之火|r
    .turnin 4770 >>交任务: |cRXP_FRIENDLY_回家|r
    .goto Thousand Needles,21.43,32.35,5,0
    .goto Thousand Needles,21.54,32.35
    .turnin 9431 >>交任务: |cRXP_FRIENDLY_另一条路|r
    .accept 9433 >>接任务: |cRXP_LOOT_月亮井的水|r
    .accept 5151 >>接任务: |cRXP_LOOT_超适应齿轮|r
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
    .turnin 4865 >>交任务: |cRXP_FRIENDLY_狂热之蛇|r
    .accept 5062 >>接任务: |cRXP_LOOT_神圣之火|r
    .turnin 4770 >>交任务: |cRXP_FRIENDLY_回家|r
    .goto Thousand Needles,21.43,32.35,5,0
    .goto Thousand Needles,21.54,32.35
    .turnin 9431 >>交任务: |cRXP_FRIENDLY_另一条路|r
    .accept 9433 >>接任务: |cRXP_LOOT_月亮井的水|r
    .accept 5151 >>接任务: |cRXP_LOOT_超适应齿轮|r
    .goto Thousand Needles,21.43,32.55
    .target Kanati Greycloud
    .target Motega Firemane
    .target Wizlo Bearingshiner
    .isQuestTurnedIn 4881
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motega|r and |cRXP_FRIENDLY_Wizlo|r
    .turnin 4865 >>交任务: |cRXP_FRIENDLY_狂热之蛇|r
    .accept 5062 >>接任务: |cRXP_LOOT_神圣之火|r
    .turnin 4770 >>交任务: |cRXP_FRIENDLY_回家|r
    .goto Thousand Needles,21.43,32.35,5,0
    .goto Thousand Needles,21.54,32.35
    .turnin 9431 >>交任务: |cRXP_FRIENDLY_另一条路|r
    .accept 9433 >>接任务: |cRXP_LOOT_月亮井的水|r
    .accept 5151 >>接任务: |cRXP_LOOT_超适应齿轮|r
    .goto Thousand Needles,21.43,32.55
    .target Motega Firemane
    .target Wizlo Bearingshiner
step
    .goto Thousand Needles,21.25,32.05
    >>杀死|cRXP_ENEMY_Galak刺客|r以保护|cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >>交任务: |cRXP_FRIENDLY_保护卡纳提·灰云|r
    .isQuestComplete 4966
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>杀死|cRXP_ENEMY_Galak信使|r。掠夺他获得|T133473:0|t[|cRXP_Loot_Assassination Note|r]
    >>|cRXP_WARN_使用|T133473:0|t[|cRXP_LOOT_Assassination Note|r]开始任务|r
    >>|cRXP_WARN_他在Splithoof Crag（东半人马营地）产卵|r
    .collect 12564,1,4881,1 --Collect Assassination Note
    .accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
    .use 12564
    .unitscan Galak Messenger
step
    #label Panel
    .goto Thousand Needles,11.99,18.89,15,0
    .goto Thousand Needles,11.53,18.10,15,0
    .goto Thousand Needles,10.62,17.87,15,0
    .goto Thousand Needles,9.44,18.69,8 >>朝向|cRXP_PICK_隐藏控制面板|r
    .isOnQuest 9433
step
    .goto Thousand Needles,9.44,18.69,0
    .goto Feralas,89.55,46.30
    >>使用|cRXP_PICK_Hidded Control Panel |r旁边的|T132995:0|t[Robotron Control Unit]来调用|cRXP-FRIENDLY_Robotron|r
    >>在月井内使用“收集水”（4）掠夺|cRXP_loot_Talanaar月井水|r
    >>掠夺|cRXP_LOOT_Talanaar Moonwell水|r后，解散|cRXT_FRIENDLY_Robotron|r
    .complete 9433,1 --Collect Thalanaar Moonwell Water (x1)
    .use 23675
step
    #completewith DipMoon
    .goto Thousand Needles,38.46,32.60,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>杀死|cRXP_ENEMY_Galak信使|r。掠夺他获得|T133473:0|t[|cRXP_Loot_Assassination Note|r]
    >>|cRXP_WARN_使用|T133473:0|t[|cRXP_LOOT_Assassination Note|r]开始任务|r
    >>|cRXP_WARN_他在Splithoof Crag（东半人马营地）产卵|r
    .collect 12564,1,4881,1 --Collect Assassination Note
    .accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
    .use 12564
    .unitscan Galak Messenger
step
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    .goto Thousand Needles,11.50,21.61,40,0
    .goto Thousand Needles,11.88,20.90,40,0
    .goto Thousand Needles,12.89,19.97,40,0
    .goto Thousand Needles,14.49,20.04,40,0
    .goto Thousand Needles,15.69,18.65,40,0
    .goto Thousand Needles,16.20,18.53,40,0
    .goto Thousand Needles,16.70,18.61,40,0
    .goto Thousand Needles,17.28,18.93,40,0
    .goto Thousand Needles,17.66,19.46,40,0
    .goto Thousand Needles,17.96,20.18,40,0
    .goto Thousand Needles,17.87,20.78,40,0
    .goto Thousand Needles,17.54,21.49,40,0
    .goto Thousand Needles,17.24,22.32,40,0
    .goto Thousand Needles,17.66,22.98,40,0
    .goto Thousand Needles,18.11,23.65,40,0
    .goto Thousand Needles,18.57,24.07,40,0
    .goto Thousand Needles,18.68,24.68,40,0
    .goto Thousand Needles,18.64,25.90,40,0
    .goto Thousand Needles,18.48,26.74,40,0
    .goto Thousand Needles,17.82,27.50,40,0
    .goto Thousand Needles,17.19,29.60,40,0
    .goto Thousand Needles,15.67,31.56,40,0
    .goto Thousand Needles,15.08,31.63,40,0
    .goto Thousand Needles,14.34,30.13,40,0
    .goto Thousand Needles,13.75,28.54,40,0
    .goto Thousand Needles,13.36,26.97,40,0
    .goto Thousand Needles,13.01,26.31,40,0
    .goto Thousand Needles,11.91,25.02,40,0
    .goto Thousand Needles,11.55,24.44,40,0
    .goto Thousand Needles,11.49,24.07,40,0
    .goto Thousand Needles,11.16,23.21,40,0
    .goto Thousand Needles,11.20,22.29,40,0
    .goto Thousand Needles,11.50,21.61
    >>杀死|cRXP_ENEMY_Steelsnap|r。掠夺他|cRXX_Loot_Stelsnap's Rib|r
    >>|cRXP_WARN_他逆时针巡逻|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r and |cRXP_FRIENDLY_Wizlo|r
    >>|cRXP_WARN_Turn in quickly, as turning in "Assassination Plot" will summon three |cRXP_ENEMY_Galak Assassins|r that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .turnin 4881 >>交任务: |cRXP_FRIENDLY_暗杀计划|r
    .accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
    .goto Thousand Needles,21.25,32.05
    .turnin 9433 >>交任务: |cRXP_FRIENDLY_月亮井的水|r
    .accept 9434 >>接任务: |cRXP_LOOT_测试药剂|r
    .goto Thousand Needles,21.43,32.55
    .target Kanati Greycloud
    .target Wizlo Bearingshiner
    .isOnQuest 4881
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r and |cRXP_FRIENDLY_Wizlo|r
    >>|cRXP_WARN_Turn in quickly, as turning in "Assassination Plot" will summon three |cRXP_ENEMY_Galak Assassins|r that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
    .goto Thousand Needles,21.25,32.05
    .turnin 9433 >>交任务: |cRXP_FRIENDLY_月亮井的水|r
    .accept 9434 >>接任务: |cRXP_LOOT_测试药剂|r
    .goto Thousand Needles,21.43,32.55
    .target Kanati Greycloud
    .target Wizlo Bearingshiner
    .isQuestTurnedIn 4881
    .isQuestAvailable 4966
step
    #label DipMoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizlo|r
    .turnin 9433 >>交任务: |cRXP_FRIENDLY_月亮井的水|r
    .accept 9434 >>接任务: |cRXP_LOOT_测试药剂|r
    .goto Thousand Needles,21.43,32.55
    .target Wizlo Bearingshiner
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .turnin 4881 >>交任务: |cRXP_FRIENDLY_暗杀计划|r
    .accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
    .target Kanati Greycloud
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
    .target Kanati Greycloud
    .isQuestTurnedIn 4881
step
    .goto Thousand Needles,21.25,32.05
    >>杀死|cRXP_ENEMY_Galak刺客|r以保护|cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >>交任务: |cRXP_FRIENDLY_保护卡纳提·灰云|r
    .isQuestComplete 4966
 step
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,18.32,22.10,0
    .goto Thousand Needles,18.32,22.10,40,0
    .goto Thousand Needles,18.72,22.53,40,0
    .goto Thousand Needles,18.47,23.06,40,0
    .goto Thousand Needles,18.70,24.42,40,0
    .goto Thousand Needles,18.63,26.19,40,0
    .goto Thousand Needles,18.98,26.71,40,0
    .goto Thousand Needles,19.46,27.04,40,0
    .goto Thousand Needles,19.96,27.67,40,0
    .goto Thousand Needles,20.45,27.87,40,0
    .goto Thousand Needles,20.83,28.26,40,0
    .goto Thousand Needles,22.05,30.61,40,0
    .goto Thousand Needles,24.56,32.76,40,0
    .goto Thousand Needles,25.29,34.23,40,0
    .goto Thousand Needles,27.34,34.02,40,0
    .goto Thousand Needles,28.24,33.37,40,0
    .goto Thousand Needles,28.64,33.43,40,0
    .goto Thousand Needles,29.24,33.96,40,0
    .goto Thousand Needles,29.51,33.89,40,0
    .goto Thousand Needles,30.69,32.43,40,0
    .goto Thousand Needles,31.55,30.61,40,0
    .goto Thousand Needles,32.29,30.52,40,0
    .goto Thousand Needles,33.27,30.86,40,0
    .goto Thousand Needles,33.81,30.12,40,0
    .goto Thousand Needles,34.25,29.49,40,0
    .goto Thousand Needles,35.19,28.11,40,0
    .goto Thousand Needles,35.84,28.59,40,0
    .goto Thousand Needles,36.57,29.47,40,0
    .goto Thousand Needles,37.34,29.29,40,0
    .goto Thousand Needles,38.81,31.73,40,0
    .goto Thousand Needles,39.51,33.43
    >>杀死|cRXP_ENEMY_Galak信使|r。掠夺他获得|T133473:0|t[|cRXP_Loot_Assassination Note|r]
    >>|cRXP_WARN_使用|T133473:0|t[|cRXP_LOOT_Assassination Note|r]开始任务|r
    >>|cRXP_WARN_他在Splithoof Crag（东半人马营地）产卵|r
    .collect 12564,1,4881,1 --Collect Assassination Note
    .accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
    .use 12564
    .unitscan Galak Messenger
step
    #xprate <1.7
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .turnin 4881 >>交任务: |cRXP_FRIENDLY_暗杀计划|r
    .accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
    .target Kanati Greycloud
    .isOnQuest 4881
    .xp >30,1
step
    #xprate <1.7
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
    .target Kanati Greycloud
    .isQuestTurnedIn 4881
step
    #xprate <1.7
    .goto Thousand Needles,21.25,32.05
    >>杀死|cRXP_ENEMY_Galak刺客|r以保护|cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    #xprate <1.7
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >>交任务: |cRXP_FRIENDLY_保护卡纳提·灰云|r
    .isQuestComplete 4966
step
#loop
	.line Thousand Needles,36.58,38.77,37.77,38.17,36.63,36.23,34.96,33.22,33.37,32.85,33.67,34.09,34.88,34.82,35.62,36.20,36.05,37.41,36.58,38.77
	.goto Thousand Needles,36.58,38.77,30,0
	.goto Thousand Needles,37.77,38.17,30,0
	.goto Thousand Needles,36.63,36.23,30,0
	.goto Thousand Needles,34.96,33.22,30,0
	.goto Thousand Needles,33.37,32.85,30,0
	.goto Thousand Needles,33.67,34.09,30,0
	.goto Thousand Needles,34.88,34.82,30,0
	.goto Thousand Needles,35.62,36.20,30,0
	.goto Thousand Needles,36.05,37.41,30,0
	.goto Thousand Needles,36.58,38.77,30,0
    >>在地面和水下掠夺|cRXP_PICK_香龙舌兰植物|r
    >>|cRXP_ENEMY_烫伤元素|r和|cRXP__ENEMY_沸腾元素|r对霜损伤免疫，并且具有高度的耐火性。尽量避开他们/使用奥术 << Mage
    >>|cRXP_WARN_小心|cRXP_ENEMY_沸腾元素|r铸造|r|T132156:0|t[蒸汽喷射]|cRXP-WARN_，在10秒内减少30%的命中率|r << Warrior/Rogue/Paladin
    >>|cRXP_WARN_小心|cRXP_ENEMY_Scalding Elements|r cast|r|T135807:0|t[Scald]|cRXP-WARN_，立即造成150点火焰伤害并使你眩晕4秒|r
    .complete 5062,1 --Collect Incendia Agave (x10)
step
    #xprate 1.48-1.58
#loop
	.line Thousand Needles,36.58,38.77,37.77,38.17,36.63,36.23,34.96,33.22,33.37,32.85,33.67,34.09,34.88,34.82,35.62,36.20,36.05,37.41,36.58,38.77
	.goto Thousand Needles,36.58,38.77,30,0
	.goto Thousand Needles,37.77,38.17,30,0
	.goto Thousand Needles,36.63,36.23,30,0
	.goto Thousand Needles,34.96,33.22,30,0
	.goto Thousand Needles,33.37,32.85,30,0
	.goto Thousand Needles,33.67,34.09,30,0
	.goto Thousand Needles,34.88,34.82,30,0
	.goto Thousand Needles,35.62,36.20,30,0
	.goto Thousand Needles,36.05,37.41,30,0
	.goto Thousand Needles,36.58,38.77,30,0
    .xp 29+29325 >>升级到29325+/36300xp
step
    #xprate 1.59-1.68
#loop
	.line Thousand Needles,36.58,38.77,37.77,38.17,36.63,36.23,34.96,33.22,33.37,32.85,33.67,34.09,34.88,34.82,35.62,36.20,36.05,37.41,36.58,38.77
	.goto Thousand Needles,36.58,38.77,30,0
	.goto Thousand Needles,37.77,38.17,30,0
	.goto Thousand Needles,36.63,36.23,30,0
	.goto Thousand Needles,34.96,33.22,30,0
	.goto Thousand Needles,33.37,32.85,30,0
	.goto Thousand Needles,33.67,34.09,30,0
	.goto Thousand Needles,34.88,34.82,30,0
	.goto Thousand Needles,35.62,36.20,30,0
	.goto Thousand Needles,36.05,37.41,30,0
	.goto Thousand Needles,36.58,38.77,30,0
    .xp 29+28860 >>升级到28860+/36300xp
step
	#completewith next
    .hs >>火炉到雷霆崖
step
    #completewith next
    .goto Thunder Bluff,46.85,66.08,8,0
    .goto Thunder Bluff,46.84,67.98,8,0
    .goto Thunder Bluff,54.27,76.87,15,0
    .goto Thunder Bluff,61.54,80.92,15 >>前往|cRXP_FRIENDLY_Melor|r
step
    .goto Thunder Bluff,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .turnin 1131 >>交任务: |cRXP_FRIENDLY_钢齿土狼|r
    .accept 1136 >>接任务: |cRXP_LOOT_霜喉雪人|r
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,54.97,51.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
    .train 5384 >>训练你的职业技能
    .target Urek Thunderhorn
step << Warrior
    .goto Thunder Bluff,57.23,87.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
    .accept 1718 >>接任务: |cRXP_LOOT_岛民|r
    .train 7369 >>训练你的职业技能
    .target Torm Ragetotem
    .train 7369,1
step << Warrior
    .goto Thunder Bluff,57.23,87.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
    .accept 1718 >>接任务: |cRXP_LOOT_岛民|r
    .target Torm Ragetotem
 step
    #completewith next
    .goto Thunder Bluff,61.92,75.32,15,0
    .goto Thunder Bluff,60.98,62.92,15,0
    .goto Thunder Bluff,58.88,46.58,15,0
    .goto Thunder Bluff,60.12,42.63,12,0
    .goto Thunder Bluff,61.27,41.59,10,0
    .goto Thunder Bluff,61.45,40.15,10,0
    .goto Thunder Bluff,68.96,33.92,15,0
    .goto Thunder Bluff,69.86,30.91,10 >>前往|cRXP_FRIENDLY_Magatha|r
step
    .goto Thunder Bluff,69.86,30.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
    .turnin 5062 >>交任务: |cRXP_FRIENDLY_神圣之火|r
    .accept 5088 >>接任务: |cRXP_LOOT_阿利卡拉|r
    .target Magatha Grimtotem
step << Druid
    .goto Thunder Bluff,76.79,31.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯姆·蛮鬃|r
    .train 5234 >>训练你的职业技能
	.target Kym Wildmane
step << Mage
    #completewith next
    .goto Thunder Bluff,67.69,28.87,15,0
    .goto Thunder Bluff,55.85,34.51,15,0
    .goto Thunder Bluff,42.83,39.15,15,0
    .goto Thunder Bluff,39.72,38.40,12,0
    .goto Thunder Bluff,38.70,36.98,12,0
    .goto Thunder Bluff,37.68,37.26,12,0
    .goto Thunder Bluff,29.51,29.81,10,0
    .goto Thunder Bluff,28.39,25.55,10,0
    .goto Thunder Bluff,22.50,16.90,20 >>前往|cRXP_FRIENDLY_Birgitte|r
step << Mage
    .goto Thunder Bluff,22.50,16.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔吉特·克兰斯顿|r
    .train 3566 >>火车|T135765:0|t[电传：雷霆崖]
    .target Birgitte Cranston
step << Mage
    .goto Thunder Bluff,22.77,14.50
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
	.train 7302 >>训练你的职业技能
	.target Archmage Shymm
step
    .goto Thunder Bluff,46.22,49.14,6,0
    .goto Thunder Bluff,46.01,49.90,6,0
    .goto Thunder Bluff,47.00,49.83
    >>爬上塔楼
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Tal
    .zoneskip Thunder Bluff,1
    .skill riding,<75,1 << Tauren
    .isOnQuest 1145
step
    #completewith TheSwarm
    .goto Thunder Bluff,46.22,49.14,6,0
    .goto Thunder Bluff,46.01,49.90,6,0
    .goto Thunder Bluff,47.00,49.83
    >>爬上塔楼
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >>飞向十字路口
    .target Tal
    .zoneskip Thunder Bluff,1
    .skill riding,<75,1 << Tauren
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
    .itemcount 15277,<1 --Gray Kodo
    .itemcount 15290,<1 --Brown Kodo
    .itemcount 46100,<1 << wotlk --White Kodo
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
    --Added in wotlk
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
--Added in wotlk
step << Tauren
    #completewith next
    .goto The Barrens,41.40,58.55
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .zoneskip Mulgore,1
step << Tauren !Warrior !Shaman
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
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
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
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
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
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
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
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
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
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
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
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
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
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
    #xprate >1.6999
    #label CampTStone
    .goto The Barrens,45.10,57.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
    .turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
    .accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
    .target Tatternack Steelforge
    .zoneskip Thunder Bluff
step << Tauren
    #xprate <1.7 << !Warrior !Shaman
    #label CampTStone
    .goto The Barrens,45.10,57.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
    .turnin 1153 >>交任务: |cRXP_FRIENDLY_新的矿石样本|r
    .target Tatternack Steelforge
    .zoneskip Thunder Bluff
step << Tauren
    .goto The Barrens,44.44,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
    .isOnQuest 1145
step << Tauren
    #completewith next
    .goto The Barrens,44.44,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>飞向十字路口
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step
    #label TheSwarm
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r, |cRXP_FRIENDLY_索克|r << Warrior/Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r << !Warrior !Shaman
    .accept 1145 >>接任务: |cRXP_LOOT_疯狂的虫群|r
    .goto The Barrens,51.07,29.63
    .turnin 906 >>交任务: |cRXP_FRIENDLY_内奸|r << Warrior/Shaman
    .goto The Barrens,51.50,30.87 << Warrior/Shaman
    .target Korran
    .target Thork << Warrior/Shaman
step << Mage
    #label TeleportOrg
    #completewith TheSwarmOrg
    .cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
    .itemcount 17031,1
    .zoneskip Orgrimmar
    .train 3567,3
step << Shaman
    #xprate <1.7
    #completewith TheSwarmOrg
    .goto The Barrens,51.50,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Ratchet >>飞到棘轮
    .target Devrak
    .zoneskip The Barrens,1
step << Shaman
    #xprate <1.7
    .goto The Barrens,65.51,47.32,70,0
    .goto The Barrens,64.21,50.70,70,0
    .goto The Barrens,63.63,53.85,70,0
#loop
	.line The Barrens,65.51,47.32,64.21,50.70,63.63,53.85
	.goto The Barrens,65.51,47.32,70,0
	.goto The Barrens,64.21,50.70,70,0
	.goto The Barrens,63.63,53.85,70,0
    >>杀死|cRXP_ENEMY_Isha Awak|r。为Isha Awak的|cRXP_Loot_心脏而掠夺他|r
    .complete 873,1 --Heart of Isha Awak
    .unitscan Isha Awak
step << Shaman
    #xprate <1.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Mahreen, |cRXP_FRIENDLY_水之先知伊斯伦|r
    .turnin 873 >>交任务: |cRXP_FRIENDLY_依沙瓦克|r
    .goto The Barrens,65.84,43.86
    .turnin 220 >>交任务: |cRXP_FRIENDLY_水之召唤|r
    .accept 63 >>接任务: |cRXP_LOOT_水之召唤|r
    .goto The Barrens,65.83,43.77
    .target Mahren Skyseer
    .target Islen Waterseer
step << Shaman
    #xprate <1.7
    #completewith TheSwarmOrg
    .goto The Barrens,63.08,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Bragok
    .zoneskip Orgrimmar
step
    #xprate >1.6999 << Shaman
    #requires TeleportOrg << Mage
    #completewith TheSwarmOrg
    .goto The Barrens,51.50,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Devrak
    .zoneskip The Barrens,1
step << Priest/Rogue tbc/Warlock/Paladin/Shaman
    #label OrgTrainGoto
    #completewith OrgTrain
    .goto Orgrimmar,41.89,64.39,20,0
    .goto Orgrimmar,39.58,75.87,20,0 << Priest
    .goto Orgrimmar,38.99,57.73,20,0 << !Priest
    .goto Orgrimmar,39.78,54.65,20,0 << Rogue/Warlock
    .goto Orgrimmar,42.33,56.99,20,0 << Rogue/Warlock
    .goto Orgrimmar,43.78,56.45,20,0 << Rogue/Warlock
    .goto Orgrimmar,43.53,53.37,15,0 << Rogue tbc
    .goto Orgrimmar,40.07,48.51,20,0 << Paladin/Shaman
    .goto Orgrimmar,42.22,37.47,20,0 << Paladin/Shaman
    .goto Orgrimmar,39.50,36.89,20,0 << Paladin/Shaman
    .goto Orgrimmar,35.70,37.26,20,0 << Paladin
    .goto Orgrimmar,35.59,87.80,15 >>前往|cRXP_FRIENDLY_Ur'kyo|r << Priest
    .goto Orgrimmar,38.81,36.38,15 >>前往|cRXP_FRIENDLY_Kardris|r << Shaman
    .goto Orgrimmar,32.29,35.74,15 >>向|cRXP_FRIENDLY_Pyreanor|r行进 << Paladin
    .goto Orgrimmar,43.05,53.73,10 >>向|cRXP_FRIENDLY_Shenthul|r行进 << Rogue tbc
    .goto Orgrimmar,48.25,45.27,15 >>前往|cRXP_FRIENDLY_Grol'dar|r << Warlock
    .isOnQuest 2478 << Rogue tbc
step << Mage
    #completewith next
    .goto Orgrimmar,41.89,64.39,20,0
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>上楼前往|cRXP_FRIENDLY_Thuul|r
step << Mage
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索乌|r
    .train 3567 >>火车|T135759:0|t[电传：Orgrimar]
    .target Thuul
step << Rogue
    #requires OrgTrainGoto
    #completewith OrgTrain
    .goto Orgrimmar,41.89,64.39,20,0
    .goto Orgrimmar,38.99,57.73,20,0
    .goto Orgrimmar,39.78,54.65,20,0
    .goto Orgrimmar,42.33,56.99,20,0
    .goto Orgrimmar,43.78,56.45,20,0
    .goto Orgrimmar,43.90,54.63,15 >>向|cRXP_FRIENDLY_Ormok|r行进
step << Priest
    #label OrgTrain
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔库|r
    .train 602 >>训练你的职业技能
    .target Ur'kyo
step << Shaman
    #label OrgTrain
    .goto Orgrimmar,38.81,36.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 556 >>训练你的职业技能
    .target Kardris Dreamseeker
step << Shaman
    .goto Orgrimmar,37.97,37.72
>>对话: |cRXP_FRIENDLY_希尔恩·火结|r
    .accept 1531 >>接任务: |cRXP_LOOT_空气的召唤|r
    .target Searn Firewarder
step << Paladin
    #label OrgTrain
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派雷亚诺|r
    .train 10298 >>训练你的职业技能
    .target Master Pyreanor
step << Rogue tbc
    #label OrgTrain
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .turnin 2478 >>交任务: |cRXP_FRIENDLY_基本不可能的任务|r
    .train 1760 >>训练你的职业技能
    .target Shenthul
    .isOnQuest 2478
step << Rogue
    #label OrgTrain
    .goto Orgrimmar,43.90,54.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
    .train 1760 >>训练你的职业技能
    .target Ormok
step << Warlock
    #label OrgTrain
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗达尔|r
    .train 1086 >>训练你的职业技能 << wotlk
    .train 5784 >>列车|T136103:0|t[召唤费尔斯蒂德] << tbc
    .target Grol'dar
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .turnin 1512 >>交任务: |cRXP_FRIENDLY_爱的礼物|r
    .accept 1513 >>接任务: |cRXP_LOOT_誓缚|r
    .accept 2996 >>接任务: |cRXP_LOOT_寻找斯坦哈德|r
    .turnin 65610 >>交任务: |cRXP_FRIENDLY_希望你还在|r
    .accept 65604 >>接任务: |cRXP_LOOT_誓缚|r
    .target Gan'rul Bloodeye
step << Warlock
    #completewith Succubus
    .goto Orgrimmar,49.43,50.00
    .cast 9224 >>使用|T133290:0|t[Dogran的吊坠]召唤一个|cRXP_ENEMY_Summed Sucubus|r
    .use 6626
step << Warlock
    #completewith Incubus
    .goto Orgrimmar,49.43,50.00
    .cast 366902 >>使用|T133693:0|t[Withered Scarf]召唤一个|cRXP_ENEMY_Summed Incubus|r
    .use 190187
step << Warlock
    #label Succubus
    .goto Orgrimmar,49.43,50.00
    >>杀死|cRXP_ENEMY_召唤的女妖|r
    .complete 1513,1 --Summoned Succubus (1)
    .mob Summoned Succubus
step << Warlock
    #label Incubus
    .goto Orgrimmar,49.43,50.00
    >>杀死|cRXP_ENEMY_Summed Incubus|r
    .complete 65604,1 --Summoned Succubus (1)
    .mob Summoned Incubus
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .turnin 1513 >>交任务: |cRXP_FRIENDLY_誓缚|r
    .turnin 65604 >>交任务: |cRXP_FRIENDLY_誓缚|r
    .target Gan'rul Bloodeye
step << Mage
    .goto Orgrimmar,45.44,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍苏斯|r
    >>|cRXP_BUY_从他那里购买|r|T134419:0|t[传送符文]|cRXP_Buy_|r
    .collect 17031,2,25,1 --Rune of Teleportation (2)
    .money <0.1900
    .target Horthus
step
    #completewith next
    .goto Orgrimmar,62.56,38.52,20,0 << Paladin/Shaman
    .goto Orgrimmar,62.98,39.35,20,0 << !Paladin !Shaman
    .goto Orgrimmar,64.34,38.17,20,0
    .goto Orgrimmar,75.23,34.24,20 >>前往|cRXP_FRIENDLY_Belgrom|r
step
    .goto Orgrimmar,75.23,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
    .turnin 1145 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
    .accept 1146 >>接任务: |cRXP_LOOT_疯狂的虫群|r
    .target Belgrom Rockmaul
step << Orc !Warlock
    .goto Orgrimmar,69.41,13.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r
    .skill riding,75 >>火车|T136103:0|t（学徒骑马）
    .target Kildar
    .money <4.5 << wotlk
    .money <42.25 << tbc
    .skill riding,75,1
step << Orc !Warlock
    .goto Orgrimmar,69.38,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥古纳罗|r
    +|cRXP_BUY_从他那里买任何你喜欢的|r|T132224:0|t[Wolf]|cRXP_Buy_|r
	.target Ogunaro Wolfrunner
    .itemcount 1132,<1 --Horn of the Timber Wolf
    .itemcount 5665,<1 --Horn of the Dire Wolf
    .itemcount 5668,<1 --Horn of the Brown Wolf
    .itemcount 46099,<1 << wotlk --Horn of the Black Wolf
    .money <0.9 << wotlk
    .money <9.0000 << tbc
    .skill riding,<75,1
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
step << Orc !Warlock
    .cast 55884 >>使用|T132224:0|t[黑狼之角]学习
    .use 46099
    .itemcount 46099,1
    .skill riding,75,1
step << Orc !Warlock
    #completewith OrgFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132224:0|t[Timber Wolf]|cRXP_WARN_拖动到动作栏中|r
    .cast 580 >>安装您的|T132224:0|t[木狼]
    .train 580,3
step << Orc !Warlock
    #completewith OrgFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132266:0|t[Dire Wolf]|cRXP_WARN_拖动到动作栏中|r
    .cast 6653 >>安装您的|T132266:0|t[Dire Wolf]
    .train 6653,3
step << Orc !Warlock
    #completewith OrgFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132224:0|t[Brown Wolf]|cRXP_WARN_拖动到动作栏中|r
    .cast 6654 >>安装您的|T132224:0|t[棕色狼]
    .train 6654,3
step << Orc !Warlock wotlk
    #completewith OrgFP
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132224:0|t[黑狼]|cRXP_WARN_拖动到动作栏中|r
    .cast 64658 >>安装您的|T132224:0|t[黑狼]
    .train 64658,3
step
    #xprate <1.7 << !Undead
    .goto Orgrimmar,54.10,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
    .home >>将您的炉石设置为Orgrimmar
    .target Innkeeper Gryshka
step << Warlock
    #xprate <1.7
    #completewith next
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
    #completewith next
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    .fly Ratchet >>飞到棘轮
    .target Doras
    .zoneskip The Barrens
step << Warlock
    #xprate <1.7
    .goto The Barrens,62.63,35.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
    .turnin 2996 >>交任务: |cRXP_FRIENDLY_寻找斯坦哈德|r
    .accept 1801 >>接任务: |cRXP_LOOT_阴谋之书|r
    .target Strahad Farsan
step << Warlock
    #xprate <1.7
    .hs >>前往: 奥格瑞玛
    .cooldown item,6948,>0
    .zoneskip Orgrimmar
    .zoneskip Durotar
step << Warlock
    #xprate <1.7
    .goto The Barrens,63.08,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Orgrimmar >>飞往奥格瑞玛
	.cooldown item,6948,<0
    .target Bragok
    .zoneskip Orgrimmar
    .zoneskip Durotar
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
    .itemcount 13331,<1 --Red Skeletal Horse
    .itemcount 13332,<1 --Blue Skeletal Horse
    .itemcount 13333,<1 --Brown Skeletal Horse
    .itemcount 46308,<1 --Brown Skeletal Horse
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
]])
