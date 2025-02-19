local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 增强字符58-60
#version 1
#group RestedXP部落升级58-60
#defaultfor 58Boost
#next RestedXP部落60-70\60-61地狱火半岛
step << !Druid !Paladin
    .turnin 64046 >>交任务: |cRXP_FRIENDLY_新的开始|r
step << Druid
    .turnin 64047 >>交任务: |cRXP_FRIENDLY_新的开始|r
	.accept 64049 >>Accept Tools for Survival

step << !Druid !Paladin
    .accept 64048 >>Accept Tools for Survival

step << !Paladin
	#sticky
	#completewith next
	>>打开你的艾泽拉斯生存工具包并装备武器。
step << !Druid !Paladin
    .complete 64048,1 --1/1 Open the Survival Kit (1)
    .complete 64048,2 --1/1 Equip a Weapon (1)
step << Druid
    .complete 64049,1 --1/1 Open the Survival Kit (1)
    .complete 64049,2 --1/1 Equip a Weapon (1)

step << !Druid !Paladin
    .turnin 64048 >>Turn in Tools for Survival
    .accept 64050 >>接任务: |cRXP_WARN_战斗训练|r

step << Druid
    .turnin 64049 >>Turn in Tools for Survival
    .accept 64051 >>接任务: |cRXP_WARN_战斗训练|r

step << Warrior
    .train 11581 >>学习霹雳拍击。
step << Rogue
    .train 11269 >>学习埋伏
step << Hunter
    .train 14325 >>学习猎人的印记
step << Shaman
    .train 10473 >>学习霜震
step << Warlock
    .train 11726 >>学习奴役恶魔
step << Priest
	.train 10912 >>学习精神控制
step << BloodElf Priest
    .train 32676 >>学习消费魔法
step << Troll Priest
    .train 9035 >>学习虚弱魔咒的所有等级
    .train 18137 >>学习暗影守卫的所有等级
step << Druid
    .train 9853 >>学习纠缠根
step << Mage
    .train 22783 >>学习法师护甲

step << !Druid !Paladin
	.complete 64050,1 --1/1 Train a Spell (1)
step << Druid
    .complete 64051,1 --1/1 Train a Spell (1)

step << !Druid !Paladin
    .turnin 64050 >>交任务: |cRXP_FRIENDLY_战斗训练|r
    .accept 64052 >>Accept Talented
step << Druid
    .turnin 64051 >>交任务: |cRXP_FRIENDLY_战斗训练|r
step << Druid
    .accept 64053 >>Accept Talented
step << !Druid !Paladin
	>>在升级时指定你想要玩的任何天赋构建。
	.complete 64052,1 --1/1 Spend a Talent Point (1)
step << Druid
	>>在升级时指定你想要玩的任何天赋构建。
    .complete 64053,1 --1/1 Spend a Talent Point (1)

step << !Druid !Paladin
    .turnin 64052 >>Turn in Talented
step << Druid
    .turnin 64053 >>Turn in Talented
step << !Druid !Paladin
	#label nondruidboost
    .accept 64063 >>接任务: |cRXP_LOOT_黑暗之门|r
step << Druid
	#label druidboost
	.accept 64217 >>接任务: |cRXP_LOOT_黑暗之门|r

step << Druid

    .fly Orgrimmar >>飞往奥格瑞玛

step << Mage
    .goto Orgrimmar,38.7,85.5
    >>跑到二楼，将Teleport&Portal列车开往Orgrimmar
	.train 3567 >>电话：Orgrimmar
	.train 11417 >>门户：Orgrimmar
step << Warlock
    .goto Orgrimmar,47.6,46.7,0
	.vendor 5815 >>Talk to Kurgul to purchase your minions Grimoires
step	<<!Paladin
    .goto Orgrimmar,54.5,67.6
    >>从Barket Morag至少购买2堆食物/水。
	.vendor
step << Druid
    .goto Durotar,50.7,12.9
    .complete 64217,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
step << !Druid
    .goto Durotar,50.7,12.9
    .complete 64063,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
step
    #sticky
    #completewith next
+带着齐柏林飞艇去幽暗城
    .goto Durotar,50.8,13.8
step
	.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
	.goto Tirisfal Glades,83.1,68.9
.target High Executor Derrington
>>对话: |cRXP_FRIENDLY_高级执行官德灵顿|r
    .accept 5096 >>接任务: |cRXP_LOOT_误导血色十字军|r
step
	>>掠夺火旁的板条箱。同时保存你在该区域获得的每个骨骼碎片！
	.goto Tirisfal Glades,83.1,68.9
	.collect 12814,1
step
    .goto Tirisfal Glades,83.2,68.6
.target Argent Quartermaster Lightspark
>>对话: |cRXP_FRIENDLY_银色黎明军需官莱斯巴克|r
    .turnin 5405 >>交任务: |cRXP_FRIENDLY_银色黎明委任徽章|r
step
	#sticky
	#completewith next
	>>装备银色黎明委员会饰物。我们需要天灾之石来完成以后的任务。
step
    .goto Tirisfal Glades,83.1,71.6
.target Mehlar Dawnblade
>>对话: |cRXP_FRIENDLY_麦拉·黎明之刃|r
    .accept 9443 >>接任务: |cRXP_LOOT_所谓的光明使者印记|r
step
    .goto Tirisfal Glades,83.3,72.1
.target Mickey Levine
>>对话: |cRXP_FRIENDLY_米克·莱文|r
    .accept 5901 >>接任务: |cRXP_LOOT_瘟疫与你|r
step
	>>这个任务可能很难。慢慢地从帐篷后面把它们清理出来，然后把它摧毁。然后放下横幅。
    .goto Western Plaguelands,40.7,51.7
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.1,68.9
.target High Executor Derrington
>>对话: |cRXP_FRIENDLY_高级执行官德灵顿|r
    .turnin 5096 >>交任务: |cRXP_FRIENDLY_误导血色十字军|r
step
    .goto Tirisfal Glades,83.1,69.2
.target High Executor Derrington
>>对话: |cRXP_FRIENDLY_高级执行官德灵顿|r
    .accept 5098 >>接任务: |cRXP_LOOT_标记哨塔|r
    .accept 5228 >>接任务: |cRXP_LOOT_瘟疫之锅|r

step
    .goto Tirisfal Glades,83.0,71.9
.target Shadow Priestess Vandis
>>对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
    .turnin 5228 >>交任务: |cRXP_FRIENDLY_瘟疫之锅|r
step
    .goto Tirisfal Glades,83.0,71.6
.target Shadow Priestess Vandis
>>对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
    .accept 5229 >>接任务: |cRXP_LOOT_目标：费尔斯通农场|r
step
	>>杀死釜主
    .goto Western Plaguelands,36.5,57.7
    .complete 5229,1 --Felstone Field Cauldron Key (1)
step
    .goto Western Plaguelands,37.2,56.9
    .turnin 5229 >>交任务: |cRXP_FRIENDLY_目标：费尔斯通农场|r
    .accept 5230 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
    .goto Western Plaguelands,38.3,54.1
.target Janice Felstone
>>对话: |cRXP_FRIENDLY_詹妮丝·费尔斯通|r
    .accept 5021 >>接任务: |cRXP_LOOT_迟到总比不到好|r
step
    .goto Western Plaguelands,38.7,55.3
    .turnin 5021 >>交任务: |cRXP_FRIENDLY_迟到总比不到好|r
    .accept 5023 >>接任务: |cRXP_LOOT_迟到总比不到好|r
step
    .goto Tirisfal Glades,83.1,71.9
>>对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
    .turnin 5230 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.target Shadow Priestess Vandis
    .accept 5231 >>接任务: |cRXP_LOOT_目标：达尔松之泪|r


step
    .goto Western Plaguelands,39.5,67.0
.target Chromie
>>对话: |cRXP_FRIENDLY_克罗米|r
    .accept 4971 >>接任务: |cRXP_LOOT_时间问题|r

step
	#sticky
	#completewith wplbf
	+确保你在每座塔之间杀戮和掠夺暴徒以获取骨骼碎片。
step
    .goto Western Plaguelands,40.2,71.5
    .complete 5098,1 --Tower One marked (1)
step
    .goto Western Plaguelands,42.5,66.2
    .complete 5098,2 --Tower Two marked (1)
step
    .goto Western Plaguelands,44.2,63.0
    .complete 5098,3 --Tower Three marked (1)
step
	#label wplbf
	.goto Western Plaguelands,46.7,71.1
    .complete 5098,4 --Tower Four marked (1)
step
	>>使用安多哈尔筒仓附近的颞置换器来产卵寄生虫。
    .goto Western Plaguelands,45.8,63.3
    .complete 4971,1 --Temporal Parasite (10)
step
	>>杀死釜主
    .goto Western Plaguelands,46.2,52.4
    .complete 5231,1 --Dalson's Tears Cauldron Key (1)
step
    .goto Western Plaguelands,46.2,52.1
    .turnin 5231 >>交任务: |cRXP_FRIENDLY_目标：达尔松之泪|r
    .accept 5232 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
    .goto Western Plaguelands,47.8,50.8
    .turnin 5058 >>交任务: |cRXP_FRIENDLY_达尔松夫人的日记|r
step
	>>杀死两栋建筑后面的流浪骷髅，并洗劫屋外钥匙。如果他还没起来，就再磨一些骨头碎片。
	.collect 12738,1
step
	>>使用户外小屋的钥匙将召唤农夫道尔森。杀死/掠夺他。
    .goto Western Plaguelands,48.2,49.7
    .turnin 5059 >>交任务: |cRXP_FRIENDLY_被锁起来的农夫|r
step
	>>杀死Farmer Dalson并抢走他的钥匙。
	.collect 12739,1
step
    .goto Western Plaguelands,47.3,49.7
    .turnin 5060 >>交任务: |cRXP_FRIENDLY_被锁起来的农夫|r
step
    .goto Western Plaguelands,51.920,28.058
.target Kirsta Deepshadow
>>对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
    .accept 6004 >>接任务: |cRXP_LOOT_未竟的事业|r
step
	>>跑去所有不同的斯佳丽营地来完成这件事。
    .goto Western Plaguelands,50.6,41.4
	.goto Western Plaguelands,41.6,53.6,0
	.goto Western Plaguelands,40.0,52.0,0
    .complete 6004,3 --Scarlet Mage (2)
    .complete 6004,1 --Scarlet Medic (2)
    .complete 6004,2 --Scarlet Hunter (2)
	.complete 6004,4 --Scarlet Knight (2)
step
    .goto Western Plaguelands,51.920,28.058
>>对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
    .turnin 6004 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.target Kirsta Deepshadow
    .accept 6023 >>接任务: |cRXP_LOOT_未竟的事业|r
step
    .goto Western Plaguelands,57.5,35.7
    .complete 6023,1 --Huntsman Radley (1)
step
    >>杀死骑士杜根。他可以在塔顶，也可以巡逻到塔前
	.goto Western Plaguelands,55.1,23.6
    .complete 6023,2 --Cavalier Durgen (1)
step
    .goto Western Plaguelands,55.1,23.5
	>>如果罕见的是上升，而你无法组队杀死他，那么就在塔内尽可能高的位置死亡。从顶部掠夺胸部
    .complete 9443,1 --Mark of the Lightbringer (1)
step
    .goto Western Plaguelands,51.920,28.058
>>对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
    .turnin 6023 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.target Kirsta Deepshadow
    .accept 6025 >>接任务: |cRXP_LOOT_未竟的事业|r
step
	>>爬到塔顶。
    .goto Western Plaguelands,45.6,18.7
    .complete 6025,1 --Overlook Hearthglen from a high vantage point (1)
step
    .goto Western Plaguelands,52.0,28.1
.target Kirsta Deepshadow
>>对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
    .turnin 6025 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
step
    .goto Tirisfal Glades,83.1,68.9
>>对话: |cRXP_FRIENDLY_高级执行官德灵顿|r
    .turnin 5098 >>交任务: |cRXP_FRIENDLY_标记哨塔|r
.target High Executor Derrington
    .accept 105 >>接任务: |cRXP_LOOT_啊，安多哈尔！|r
    .accept 838 >>接任务: |cRXP_LOOT_通灵学院|r
step
    .goto Tirisfal Glades,83.2,69.3
>>对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
    .turnin 838 >>交任务: |cRXP_FRIENDLY_通灵学院|r
.target Apothecary Dithers
    .accept 964 >>接任务: |cRXP_LOOT_骸骨碎片|r
step
    .goto Tirisfal Glades,83.218,71.324
>>对话: |cRXP_FRIENDLY_麦拉·黎明之刃|r
    .turnin 9443 >>交任务: |cRXP_FRIENDLY_所谓的光明使者印记|r
.target Mehlar Dawnblade
    .accept 9444 >>接任务: |cRXP_LOOT_亵渎乌瑟尔之墓|r
step
    .goto Tirisfal Glades,83.0,71.9
>>对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
    .turnin 5232 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.target Shadow Priestess Vandis
    .accept 5233 >>接任务: |cRXP_LOOT_目标：嚎哭鬼屋|r


step
    .goto Western Plaguelands,39.5,66.8
>>对话: |cRXP_FRIENDLY_克罗米|r
    .turnin 4971 >>交任务: |cRXP_FRIENDLY_时间问题|r
.target Chromie
    .accept 4972 >>接任务: |cRXP_LOOT_找回时间|r
step
	>>在废墟周围寻找小锁盒。他们通常在破旧建筑的角落里。
    .goto Western Plaguelands,56.5,51.3,40,0
    .goto Western Plaguelands,61.8,52.3,40,0
    .goto Western Plaguelands,68.1,46.8,40,0
    .goto Western Plaguelands,65.3,54.5,40,0
    .goto Western Plaguelands,54.9,63.8,40,0
    .goto Western Plaguelands,55.1,23.6,40,0
    .goto Western Plaguelands,40.8,68.4,40,0
    .goto Western Plaguelands,41.3,65.8,40,0
    .goto Western Plaguelands,44.9,65.8,40,0
    .goto Western Plaguelands,46.5,66.5,40,0
    .goto Western Plaguelands,45.9,70.7,40,0
    .goto Western Plaguelands,46.1,73.6,40,0
    .goto Western Plaguelands,44.5,73.2,40,0
    .goto Western Plaguelands,41.6,73.2,40,0
    .goto Western Plaguelands,56.5,51.3,40,0
    .goto Western Plaguelands,61.8,52.3,40,0
    .goto Western Plaguelands,68.1,46.8,40,0
    .goto Western Plaguelands,65.3,54.5,40,0
    .goto Western Plaguelands,54.9,63.8,40,0
    .goto Western Plaguelands,55.1,23.6,40,0
    .goto Western Plaguelands,40.8,68.4,40,0
    .goto Western Plaguelands,41.3,65.8,40,0
    .goto Western Plaguelands,44.9,65.8,40,0
    .goto Western Plaguelands,46.5,66.5,40,0
    .goto Western Plaguelands,45.9,70.7,40,0
    .goto Western Plaguelands,46.1,73.6,40,0
    .goto Western Plaguelands,44.5,73.2,40,0
    .goto Western Plaguelands,41.6,73.2,40,0
    .complete 4972,1 --Andorhal Watch (5)
step
    .goto Western Plaguelands,49.2,78.4
.target Marlene Redpath
>>对话: |cRXP_FRIENDLY_玛莱恩·雷德帕斯|r
    .accept 5142 >>接任务: |cRXP_LOOT_小帕米拉|r
step
    .goto Western Plaguelands,52.1,83.5
	>>装备光明使者的腐蚀标记。在墓地使用它-你可以通过CC/杀死墓地的暴徒来标记pvp
    .complete 9444,1 --Uther's Tomb Defiled (1)
step
	>>杀死釜主
    .goto Western Plaguelands,52.8,66.2
    .complete 5233,1 --Writhing Haunt Cauldron Key (1)
step
    .goto Western Plaguelands,52.9,65.7
    .turnin 5233 >>交任务: |cRXP_FRIENDLY_目标：嚎哭鬼屋|r
    .accept 5234 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
    .goto Western Plaguelands,53.7,64.6
.target Mulgris Deepriver
>>对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
    .accept 4984 >>接任务: |cRXP_LOOT_大自然的苦楚|r
step
    .goto Western Plaguelands,48.7,47.3,0
	>>狼与食肉潜伏者分享产卵。如果你找不到狼，也把它们杀了。
    .complete 4984,1 --Diseased Wolf (8)
step
    .goto Western Plaguelands,53.7,64.7
>>对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
    .turnin 4984 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
.target Mulgris Deepriver
    .accept 4985 >>接任务: |cRXP_LOOT_大自然的苦楚|r
step
    .goto Western Plaguelands,56.5,51.3,40,0
    .goto Western Plaguelands,61.8,52.3,40,0
    .goto Western Plaguelands,68.1,46.8,40,0
    .goto Western Plaguelands,65.3,54.5,40,0
    .goto Western Plaguelands,54.9,63.8,40,0
    .goto Western Plaguelands,56.5,51.3,40,0
    .goto Western Plaguelands,61.8,52.3,40,0
    .goto Western Plaguelands,68.1,46.8,40,0
    .goto Western Plaguelands,65.3,54.5,40,0
    .goto Western Plaguelands,54.9,63.8,40,0
    .goto Western Plaguelands,56.5,51.3,40,0
    .goto Western Plaguelands,61.8,52.3,40,0
    .goto Western Plaguelands,68.1,46.8,40,0
    .goto Western Plaguelands,65.3,54.5,40,0
    .goto Western Plaguelands,54.9,63.8,40,0
    .goto Western Plaguelands,56.5,51.3,40,0
    .goto Western Plaguelands,61.8,52.3,40,0
    .goto Western Plaguelands,68.1,46.8,40,0
    .goto Western Plaguelands,65.3,54.5,40,0
    .goto Western Plaguelands,54.9,63.8,40,0
    >>找到并杀死8只病灰熊
    .complete 4985,1 --Diseased Grizzly (8)
step
    .goto Eastern Plaguelands,26.6,74.8
.target Nathanos Blightcaller
>>对话: |cRXP_FRIENDLY_纳萨诺斯·凋零者|r
    .accept 6022 >>接任务: |cRXP_LOOT_杀戮的理由|r
step
    .goto Eastern Plaguelands,27.3,85.3
    .accept 6024 >>接任务: |cRXP_LOOT_哈米亚的请求|r
step
    .goto Eastern Plaguelands,36.5,90.9
>>对话: |cRXP_FRIENDLY_帕米拉·雷德帕斯|r
    .turnin 5142 >>交任务: |cRXP_FRIENDLY_小帕米拉|r
.target Pamela Redpath
    .accept 5149 >>接任务: |cRXP_LOOT_帕米拉的洋娃娃|r
step
	>>找到镇上摆放的玩偶部件。把这些碎片放回一起。
    .goto Eastern Plaguelands,38.1,90.5,0
    .complete 5149,1 --Pamela's Doll (1)
step
    .goto Eastern Plaguelands,36.5,90.9
>>对话: |cRXP_FRIENDLY_帕米拉·雷德帕斯|r
    .turnin 5149 >>交任务: |cRXP_FRIENDLY_帕米拉的洋娃娃|r
.target Pamela Redpath
    .accept 5152 >>接任务: |cRXP_LOOT_玛莱恩姑妈|r
    .accept 5241 >>接任务: |cRXP_LOOT_卡林叔叔|r
step
	>>从镇上的亡灵暴徒那里获得7个活腐生物，并在它们过期之前将其转化为凝固腐生物
    .goto Eastern Plaguelands,61.5,71.4
    .complete 6022,1 --Coagulated Rot (1)
step
    .goto Eastern Plaguelands,79.6,63.8
.target Caretaker Alen
>>对话: |cRXP_FRIENDLY_护理者奥林|r
    .accept 6021 >>接任务: |cRXP_LOOT_流亡者塞达尔|r
    .accept 5281 >>接任务: |cRXP_LOOT_永不安息的灵魂|r
step
    .goto Eastern Plaguelands,81.5,59.6
>>对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
    .turnin 5241 >>交任务: |cRXP_FRIENDLY_卡林叔叔|r
.target Carlin Redpath
    .accept 5211 >>接任务: |cRXP_LOOT_达隆郡的保卫者|r
step
    .goto Eastern Plaguelands,81.6,58.1
    .home >>把你的炉石放在光之希望教堂
step
	.goto Eastern Plaguelands,71.0,16.6
	>>退出飞行机器。你会收到一个降落伞。返回Xutjja
	.complete 6024,1 --Hameya's Key (1)
step
	#sticky
	#label dssf
	>>杀死食尸鬼，达罗郡的灵魂就会从尸体中浮现出来。与他们交谈以解放他们的精神。
    .goto Eastern Plaguelands,34.3,30.8
	.goto Eastern Plaguelands,65.5,41.0,0
    .complete 5211,1 --Darrowshire Spirits Freed (15)
step
	>>找到并摧毁Plaguewood周围的白蚁丘。
    .complete 5901,1 --Plagueland Termites (100)
step
	#requires dssf
    .goto Eastern Plaguelands,14.5,33.6
.target Egan
>>对话: |cRXP_FRIENDLY_埃根|r
    .turnin 5281 >>交任务: |cRXP_FRIENDLY_永不安息的灵魂|r
step
	>>从区域内的暴徒那里收集20个仆从的天灾石。
	.collect 12840,20




step <<!Paladin
    #completewith next
    .hs >>光明之心教堂

step
	.goto Eastern Plaguelands,81.4,59.8
.target Duke Nicholas Zverenhoff
>>对话: |cRXP_FRIENDLY_尼古拉斯·瑟伦霍夫公爵|r
	.turnin 5510 >>交任务: |cRXP_FRIENDLY_爪牙的天灾石|r
step
    .goto Eastern Plaguelands,81.0,57.6
.target Dispatch Commander Metz
>>对话: |cRXP_FRIENDLY_物资官员梅兹|r
    .accept 9141 >>接任务: |cRXP_LOOT_梅兹的文书|r
    .turnin 9141 >>交任务: |cRXP_FRIENDLY_梅兹的文书|r
step
    .goto Eastern Plaguelands,81.5,59.8
.target Carlin Redpath
>>对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
    .turnin 5211 >>交任务: |cRXP_FRIENDLY_达隆郡的保卫者|r

step
    .goto Eastern Plaguelands,80.2,57.0
    .fly Undercity >>飞到地下城
step
    .goto Undercity,69.6,43.3
.target Royal Overseer Bauhaus
>>对话: |cRXP_FRIENDLY_皇家管理人巴哈乌斯|r
    .turnin 5023 >>交任务: |cRXP_FRIENDLY_迟到总比不到好|r
step
    .goto Undercity,69.3,43.4
.target Royal Overseer Bauhaus
>>对话: |cRXP_FRIENDLY_皇家管理人巴哈乌斯|r
    .accept 5049 >>接任务: |cRXP_LOOT_杰雷米亚的忧伤|r
step
    .goto Undercity,67.4,43.7
.target Jeremiah Payson
>>对话: |cRXP_FRIENDLY_杰雷米亚·派森|r
    .turnin 5049 >>交任务: |cRXP_FRIENDLY_杰雷米亚的忧伤|r
step
    .goto Undercity,67.5,43.1
.target Jeremiah Payson
.target Ol' Emma
>>对话: |cRXP_FRIENDLY_老艾玛|r
-->>对话: |cRXP_FRIENDLY_杰雷米亚·派森|r
    .accept 5050 >>接任务: |cRXP_LOOT_好运护符|r
step
    .goto Undercity,57.4,91.4
.target Lady Sylvanas Windrunner
>>对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
    .accept 5961 >>接任务: |cRXP_LOOT_女妖之王的勇士|r
step
    .goto Tirisfal Glades,83.0,72.0
>>对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
    .turnin 5234 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.target Shadow Priestess Vandis
    .accept 5235 >>接任务: |cRXP_LOOT_目标：盖罗恩农场|r
step
    .goto Tirisfal Glades,83.2,72.3
>>对话: |cRXP_FRIENDLY_米克·莱文|r
    .turnin 5901 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.target Mickey Levine
    .accept 5902 >>接任务: |cRXP_LOOT_瘟疫与你|r
step
    .goto Tirisfal Glades,83.3,71.3
.target Mehlar Dawnblade
>>对话: |cRXP_FRIENDLY_麦拉·黎明之刃|r
    .turnin 9444 >>交任务: |cRXP_FRIENDLY_亵渎乌瑟尔之墓|r
step
    .goto Western Plaguelands,38.5,54.2
>>对话: |cRXP_FRIENDLY_詹妮丝·费尔斯通|r
    .turnin 5050 >>交任务: |cRXP_FRIENDLY_好运护符|r
.target Janice Felstone
    .accept 5051 >>接任务: |cRXP_LOOT_两半合一|r
step
    .goto Western Plaguelands,38.0,54.6
	>>找一个会咬牙切齿的食尸鬼。杀了他，抢走好运符
    .complete 5051,1 --Good Luck Charm (1)
step
    .goto Western Plaguelands,38.401,54.053
.target Janice Felstone
>>对话: |cRXP_FRIENDLY_詹妮丝·费尔斯通|r
    .turnin 5051 >>交任务: |cRXP_FRIENDLY_两半合一|r
step
    .goto Western Plaguelands,48.9,78.4
>>对话: |cRXP_FRIENDLY_玛莱恩·雷德帕斯|r
    .turnin 5152 >>交任务: |cRXP_FRIENDLY_玛莱恩姑妈|r
.target Marlene Redpath
    .accept 5153 >>接任务: |cRXP_LOOT_古怪的历史学家|r
step
    .goto Western Plaguelands,49.6,76.9
    .complete 5153,1 --Joseph's Wedding Ring (1)
step
    .goto Western Plaguelands,39.5,66.8
>>对话: |cRXP_FRIENDLY_克罗米|r
    .turnin 5153 >>交任务: |cRXP_FRIENDLY_古怪的历史学家|r
.target Chromie
    .accept 5154 >>接任务: |cRXP_LOOT_达隆郡的历史|r
    .turnin 4972 >>交任务: |cRXP_FRIENDLY_找回时间|r
step
	#sticky
    >>继续杀死区域周围的骷髅，直到你有15个骷髅碎片
    .complete 964,1 --Skeletal Fragments (15)
step
    .goto Western Plaguelands,43.4,69.6
	>>寻找正确的书。只有当您将鼠标悬停在正确的书上时，它才会在页面上显示为白色。不是半灰/半白。
    .complete 5154,1 --Annals of Darrowshire (1)

step
    .goto Western Plaguelands,53.7,64.6
.target Mulgris Deepriver
>>对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
    .turnin 4985 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
step
    .goto Western Plaguelands,53.6,64.8
.target Mulgris Deepriver
>>对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
    .accept 4987 >>接任务: |cRXP_LOOT_雕文橡木枝|r
step
	>>杀死釜主
    .goto Western Plaguelands,61.8,59.3
    .complete 5235,1 --Gahrron's Withering Cauldron Key (1)
step
    .goto Western Plaguelands,62.5,58.7
    .turnin 5235 >>交任务: |cRXP_FRIENDLY_目标：盖罗恩农场|r
    .accept 5236 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
    .goto Eastern Plaguelands,28.1,86.2
    .turnin 6024 >>交任务: |cRXP_FRIENDLY_哈米亚的请求|r
step
    .goto Eastern Plaguelands,26.6,74.6
.target Nathanos Blightcaller
>>对话: |cRXP_FRIENDLY_纳萨诺斯·凋零者|r
    .turnin 6022 >>交任务: |cRXP_FRIENDLY_杀戮的理由|r
	.turnin 5961 >>交任务: |cRXP_FRIENDLY_女妖之王的勇士|r
step
    .goto Western Plaguelands,48.3,31.8
    .turnin 5902 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
    .accept 6390 >>接任务: |cRXP_LOOT_瘟疫与你|r
step
    .goto Western Plaguelands,39.5,66.8
.target Chromie
>>对话: |cRXP_FRIENDLY_克罗米|r
    .turnin 5154 >>交任务: |cRXP_FRIENDLY_达隆郡的历史|r
step
    .goto Tirisfal Glades,82.9,72.0
.target Shadow Priestess Vandis
>>对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
    .turnin 5236 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
step
    .goto Tirisfal Glades,83.3,72.1
.target Mickey Levine
>>对话: |cRXP_FRIENDLY_米克·莱文|r
    .turnin 6390 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
step
    .goto Tirisfal Glades,83.2,69.3
.target Apothecary Dithers
>>对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
    .turnin 964 >>交任务: |cRXP_FRIENDLY_骸骨碎片|r
step
    .goto Tirisfal Glades,83.1,68.9
.target High Executor Derrington
>>对话: |cRXP_FRIENDLY_高级执行官德灵顿|r
    .turnin 5238 >>交任务: |cRXP_FRIENDLY_任务完成！|r
step
    #sticky
    #completewith next
+去齐柏林塔。带着齐柏林飞艇去荆棘谷
    .goto Tirisfal Glades,61.9,59.1
step
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step << Druid
    .goto Stranglethorn Vale,32.5,29.3
    .complete 64217,2 --Speak to Thysta at Grom'gol Base Camp (1)
	.fly Stonard >>飞往斯托纳德
step << !Druid
    .goto Stranglethorn Vale,32.5,29.3
    .complete 64063,2 --Speak to Thysta at Grom'gol Base Camp (1)
	.fly Stonard >>飞往斯托纳德
step
	.zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r
step << !Druid
    .goto Blasted Lands,58.1,56.1
    .turnin 64063 >>交任务: |cRXP_FRIENDLY_黑暗之门|r
.target Warlord Dar'toon
>>对话: |cRXP_FRIENDLY_督军达图恩|r
    .accept 9407 >>接任务: |cRXP_LOOT_跨越黑暗之门|r
step << Druid
    .goto Blasted Lands,58.1,56.1
    .turnin 64217 >>交任务: |cRXP_FRIENDLY_黑暗之门|r
.target Warlord Dar'toon
>>对话: |cRXP_FRIENDLY_督军达图恩|r
    .accept 9407 >>接任务: |cRXP_LOOT_跨越黑暗之门|r
]])
