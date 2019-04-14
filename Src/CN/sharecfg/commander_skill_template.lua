pg = pg or {}
pg.commander_skill_template = {
	[10011] = {
		name = "31节的正义",
		exp = 1,
		next_id = 10012,
		id = 10011,
		icon = "1001",
		lv = 1,
		desc = {
			{
				1,
				"所在舰队中有三艘驱逐时，地图移动力+1"
			},
			{
				2,
				"当作为司令位指挥喵，接触非旗舰敌方单位时，若队伍中有驱逐，则有15%概率发射一次鱼雷打击(地图)(Lv2生效)"
			},
			{
				3,
				"作为司令位指挥喵，当编队中存在驱逐且未进入交战状态时，可选择相邻位置与敌方交战中的己方舰队，与之互换所在位置代替其与敌方交战。(Lv3生效)"
			}
		},
		effect_tactic = {
			100111
		}
	},
	[10012] = {
		name = "31节的正义",
		exp = 3,
		next_id = 10013,
		id = 10012,
		icon = "1001",
		lv = 2,
		desc = {
			{
				1,
				"所在舰队中有三艘驱逐时，地图移动力+1"
			},
			{
				2,
				"当作为司令位指挥喵，接触非旗舰敌方单位时，若队伍中有驱逐，则有15%概率发射一次鱼雷打击(地图)"
			},
			{
				3,
				"作为司令位指挥喵，当编队中存在驱逐且未进入交战状态时，可选择相邻位置与敌方交战中的己方舰队，与之互换所在位置代替其与敌方交战。(Lv3生效)"
			}
		},
		effect_tactic = {
			100111,
			100112
		}
	},
	[10013] = {
		name = "31节的正义",
		exp = 0,
		next_id = 0,
		id = 10013,
		icon = "1001",
		lv = 3,
		desc = {
			{
				1,
				"所在舰队中有三艘驱逐时，地图移动力+1"
			},
			{
				2,
				"当作为司令位指挥喵，接触非旗舰敌方单位时，若队伍中有驱逐，则有15%概率发射一次鱼雷打击(地图)"
			},
			{
				3,
				"作为司令位指挥喵，编队中存在驱逐且未进入交战状态时，可选择相邻位置与敌方交战中的己方舰队，与之互换所在位置代替其与敌方交战"
			}
		},
		effect_tactic = {
			100111,
			100112,
			100113
		}
	},
	[11011] = {
		name = "5英寸的勇气",
		exp = 1,
		next_id = 11012,
		id = 11011,
		icon = "1101",
		lv = 1,
		desc = {
			{
				1,
				"当作为司令位指挥喵，接触非旗舰敌方单位时，若队伍中有驱逐，则有15%概率发射一次鱼雷打击(地图)"
			},
			{
				2,
				"先锋领舰为驱逐时，靠近敌人可以发射一轮特殊弹幕I(Lv2生效)"
			},
			{
				3,
				"特殊弹幕I 强化为 特殊弹幕II(Lv3生效)"
			}
		},
		effect_tactic = {
			110111
		}
	},
	[11012] = {
		name = "5英寸的勇气",
		exp = 3,
		next_id = 11013,
		id = 11012,
		icon = "1101",
		lv = 2,
		desc = {
			{
				1,
				"当作为司令位指挥喵，接触非旗舰敌方单位时，若队伍中有驱逐，则有15%概率发射一次鱼雷打击(地图)"
			},
			{
				2,
				"先锋领舰为驱逐时，战斗中靠近敌人时发射一轮特殊弹幕I，每场战斗一次"
			},
			{
				3,
				"特殊弹幕I 强化为 特殊弹幕II(Lv3生效)"
			}
		},
		effect_tactic = {
			110111,
			110112
		}
	},
	[11013] = {
		name = "5英寸的勇气",
		exp = 0,
		next_id = 0,
		id = 11013,
		icon = "1101",
		lv = 3,
		desc = {
			{
				1,
				"当作为司令位指挥喵，接触非旗舰敌方单位时，若队伍中有驱逐，则有15%概率发射一次鱼雷打击(地图)"
			},
			{
				2,
				"先锋领舰为驱逐时，战斗中靠近敌人时发射一轮特殊弹幕I，每场战斗一次"
			},
			{
				3,
				"特殊弹幕I 强化为 特殊弹幕II"
			}
		},
		effect_tactic = {
			110111,
			110113
		}
	},
	[11021] = {
		name = "幸运之翼",
		exp = 1,
		next_id = 11022,
		id = 11021,
		icon = "1102",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的装填属性(效果小)"
			},
			{
				2,
				"所在舰队遭遇空袭时，依据指挥喵战术属性，有概率回避此次空袭伤害(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			110211
		}
	},
	[11022] = {
		name = "幸运之翼",
		exp = 3,
		next_id = 11023,
		id = 11022,
		icon = "1102",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的装填属性(效果小)"
			},
			{
				2,
				"所在舰队遭遇空袭时，依据指挥喵战术属性，有概率回避此次空袭伤害"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			110211,
			110212
		}
	},
	[11023] = {
		name = "幸运之翼",
		exp = 0,
		next_id = 0,
		id = 11023,
		icon = "1102",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的装填属性(效果小)"
			},
			{
				2,
				"所在舰队遭遇空袭时，依据指挥喵战术属性，有概率回避此次空袭伤害"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)"
			}
		},
		effect_tactic = {
			110211,
			110212,
			110213
		}
	},
	[12011] = {
		name = "空母后勤",
		exp = 1,
		next_id = 12012,
		id = 12011,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻航、正航的装填属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果小)(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			120111
		}
	},
	[12012] = {
		name = "空母后勤",
		exp = 3,
		next_id = 12013,
		id = 12012,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻航、正航的装填属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			120111,
			120112
		}
	},
	[12013] = {
		name = "空母后勤",
		exp = 0,
		next_id = 0,
		id = 12013,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻航、正航的装填属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)"
			}
		},
		effect_tactic = {
			120111,
			120112,
			120113
		}
	},
	[12021] = {
		name = "雷达侦察",
		exp = 1,
		next_id = 12022,
		id = 12021,
		icon = "def",
		lv = 1,
		desc = {
			{
				1,
				"依据指挥喵后勤属性，降低所在舰队遭遇伏击的概率"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的命中属性(效果小)(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			120121
		}
	},
	[12022] = {
		name = "雷达侦察",
		exp = 3,
		next_id = 12023,
		id = 12022,
		icon = "def",
		lv = 2,
		desc = {
			{
				1,
				"依据指挥喵后勤属性，降低所在舰队遭遇伏击的概率"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的命中属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			120121,
			120122
		}
	},
	[12023] = {
		name = "雷达侦察",
		exp = 0,
		next_id = 0,
		id = 12023,
		icon = "def",
		lv = 3,
		desc = {
			{
				1,
				"依据指挥喵后勤属性，降低所在舰队遭遇伏击的概率"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的命中属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)"
			}
		},
		effect_tactic = {
			120121,
			120122,
			120123
		}
	},
	[20011] = {
		name = "尽忠职守",
		exp = 1,
		next_id = 20012,
		id = 20011,
		icon = "2001",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、防空属性(效果中)"
			},
			{
				2,
				"作为参谋位指挥喵，舰队在沿岸区域(不可通行的岛屿陆地旁)交战时，依据指挥喵战术属性，提高所在舰队全员的炮击属性(效果中)(Lv2生效)"
			},
			{
				3,
				"依据指挥喵战术属性，提高所在舰队成员对战列、战巡、航战造成的伤害(Lv3生效)"
			}
		},
		effect_tactic = {
			200111
		}
	},
	[20012] = {
		name = "尽忠职守",
		exp = 3,
		next_id = 20013,
		id = 20012,
		icon = "2001",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、防空属性(效果中)"
			},
			{
				2,
				"作为参谋位指挥喵，舰队在沿岸区域(不可通行的岛屿陆地旁)交战时，依据指挥喵战术属性，提高所在舰队全员的炮击属性(效果中)"
			},
			{
				3,
				"依据指挥喵战术属性，提高所在舰队成员对战列、战巡、航战造成的伤害(Lv3生效)"
			}
		},
		effect_tactic = {
			200111,
			200112
		}
	},
	[20013] = {
		name = "尽忠职守",
		exp = 0,
		next_id = 0,
		id = 20013,
		icon = "2001",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、防空属性(效果中)"
			},
			{
				2,
				"作为参谋位指挥喵，舰队在沿岸区域(不可通行的岛屿陆地旁)交战时，依据指挥喵战术属性，提高所在舰队全员的炮击属性(效果中)"
			},
			{
				3,
				"依据指挥喵战术属性，提高所在舰队成员对战列、战巡、航战造成的伤害"
			}
		},
		effect_tactic = {
			200111,
			200112,
			200113
		}
	},
	[21011] = {
		name = "物资拦截者",
		exp = 1,
		next_id = 21012,
		id = 21011,
		icon = "2101",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵，与运输舰队交战时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的炮击属性(效果大)(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的雷击属性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			210111
		}
	},
	[21012] = {
		name = "物资拦截者",
		exp = 3,
		next_id = 21013,
		id = 21012,
		icon = "2101",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵，与运输舰队交战时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的炮击属性(效果大)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的雷击属性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			210111,
			210112
		}
	},
	[21013] = {
		name = "物资拦截者",
		exp = 0,
		next_id = 0,
		id = 21013,
		icon = "2101",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵，与运输舰队交战时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的炮击属性(效果大)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的雷击属性(效果中)"
			}
		},
		effect_tactic = {
			210111,
			210112,
			210113
		}
	},
	[21021] = {
		name = "斥候猎手",
		exp = 1,
		next_id = 21022,
		id = 21021,
		icon = "2102",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵，与侦查舰队交战时，依据指挥喵战术属性，提高所在舰队中驱逐的命中属性(效果中)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的机动属性(效果小)(Lv2生效)"
			},
			{
				3,
				"距离自身3格范围内存在敌方侦察舰队时，当前舰队移动力+1(Lv3生效)"
			}
		},
		effect_tactic = {
			210211
		}
	},
	[21022] = {
		name = "斥候猎手",
		exp = 3,
		next_id = 21023,
		id = 21022,
		icon = "2102",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵，与侦查舰队交战时，依据指挥喵战术属性，提高所在舰队中驱逐的命中属性(效果中)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的机动属性(效果小)"
			},
			{
				3,
				"距离自身3格范围内存在敌方侦察舰队时，当前舰队移动力+1(Lv3生效)"
			}
		},
		effect_tactic = {
			210211,
			210212
		}
	},
	[21023] = {
		name = "斥候猎手",
		exp = 0,
		next_id = 0,
		id = 21023,
		icon = "2102",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵，与侦查舰队交战时，依据指挥喵战术属性，提高所在舰队中驱逐的命中属性(效果中)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的机动属性(效果小)"
			},
			{
				3,
				"距离自身3格范围内存在敌方侦察舰队时，当前舰队移动力+1"
			}
		},
		effect_tactic = {
			210211,
			210212,
			210213
		}
	},
	[22011] = {
		name = "战列后勤",
		exp = 1,
		next_id = 22012,
		id = 22011,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的装填属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的命中属性(效果小)(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的炮击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			220111
		}
	},
	[22012] = {
		name = "战列后勤",
		exp = 3,
		next_id = 22013,
		id = 22012,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的装填属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的命中属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的炮击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			220111,
			220112
		}
	},
	[22013] = {
		name = "战列后勤",
		exp = 0,
		next_id = 0,
		id = 22013,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的装填属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的命中属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的炮击属性(效果小)"
			}
		},
		effect_tactic = {
			220111,
			220112,
			220113
		}
	},
	[22021] = {
		name = "巡洋战术",
		exp = 1,
		next_id = 22022,
		id = 22021,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的命中属性(效果小)(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的机动属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			220211
		}
	},
	[22022] = {
		name = "巡洋战术",
		exp = 3,
		next_id = 22023,
		id = 22022,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的命中属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的机动属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			220211,
			220212
		}
	},
	[22023] = {
		name = "巡洋战术",
		exp = 0,
		next_id = 0,
		id = 22023,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的命中属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡的机动属性(效果小)"
			}
		},
		effect_tactic = {
			220211,
			220212,
			220213
		}
	},
	[30011] = {
		name = "反击的一拳",
		exp = 1,
		next_id = 30012,
		id = 30011,
		icon = "3001",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空、装填属性(效果小)"
			},
			{
				2,
				"依据指挥喵后勤属性，降低受到伏击的概率(Lv2生效)"
			},
			{
				3,
				"进入战斗时，若主力舰队仅剩下一艘轻航或正航，且无其他主力舰，则首轮空袭装填速度加快8%，同时首轮空袭时触发额外的鱼雷机编队攻击(Lv3生效)"
			}
		},
		effect_tactic = {
			300111
		}
	},
	[30012] = {
		name = "反击的一拳",
		exp = 3,
		next_id = 30013,
		id = 30012,
		icon = "3001",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空、装填属性(效果小)"
			},
			{
				2,
				"依据指挥喵后勤属性，降低受到伏击的概率"
			},
			{
				3,
				"进入战斗时，若主力舰队仅剩下一艘轻航或正航，且无其他主力舰，则首轮空袭装填速度加快8%，同时首轮空袭时触发额外的鱼雷机编队攻击(Lv3生效)"
			}
		},
		effect_tactic = {
			300111,
			300112
		}
	},
	[30013] = {
		name = "反击的一拳",
		exp = 0,
		next_id = 0,
		id = 30013,
		icon = "3001",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空、装填属性(效果小)"
			},
			{
				2,
				"依据指挥喵后勤属性，降低受到伏击的概率"
			},
			{
				3,
				"进入战斗时，若主力舰队仅剩下一艘轻航或正航，且无其他主力舰，则首轮空袭装填速度加快8%，同时首轮空袭时触发额外的鱼雷机编队攻击"
			}
		},
		effect_tactic = {
			300111,
			300112,
			300113
		}
	},
	[31011] = {
		name = "必杀·三段击",
		exp = 1,
		next_id = 31012,
		id = 31011,
		icon = "3101",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)(Lv2生效)"
			},
			{
				3,
				"若所在舰队中有轻航或正航，当接触非旗舰敌方单位时，有15%的概率发射一次空袭打击（地图），伤害依据指挥喵战术属性、双方等级、战斗力决定(Lv3生效)"
			}
		},
		effect_tactic = {
			310111
		}
	},
	[31012] = {
		name = "必杀·三段击",
		exp = 3,
		next_id = 31013,
		id = 31012,
		icon = "3101",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)"
			},
			{
				3,
				"若所在舰队中有轻航或正航，当接触非旗舰敌方单位时，有15%的概率发射一次空袭打击（地图），伤害依据指挥喵战术属性、双方等级、战斗力决定(Lv3生效)"
			}
		},
		effect_tactic = {
			310111,
			310112
		}
	},
	[31013] = {
		name = "必杀·三段击",
		exp = 0,
		next_id = 0,
		id = 31013,
		icon = "3101",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)"
			},
			{
				3,
				"若所在舰队中有轻航或正航，当接触非旗舰敌方单位时，有15%的概率发射一次空袭打击（地图），伤害依据指挥喵战术属性、双方等级、战斗力决定"
			}
		},
		effect_tactic = {
			310111,
			310112,
			310113
		}
	},
	[31021] = {
		name = "野性的直觉",
		exp = 1,
		next_id = 31022,
		id = 31021,
		icon = "3102",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中驱逐的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的雷击属性(效果中)(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵，先锋舰队只有一艘舰船且为驱逐时，依据指挥喵指挥属性，提高所在舰队中驱逐的雷击属性(效果大)(Lv3生效)"
			}
		},
		effect_tactic = {
			310211
		}
	},
	[31022] = {
		name = "野性的直觉",
		exp = 3,
		next_id = 31023,
		id = 31022,
		icon = "3102",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中驱逐的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的雷击属性(效果中)"
			},
			{
				3,
				"作为参谋位指挥喵，先锋舰队只有一艘舰船且为驱逐时，依据指挥喵指挥属性，提高所在舰队中驱逐的雷击属性(效果大)(Lv3生效)"
			}
		},
		effect_tactic = {
			310211,
			310212
		}
	},
	[31023] = {
		name = "野性的直觉",
		exp = 0,
		next_id = 0,
		id = 31023,
		icon = "3102",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中驱逐的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的雷击属性(效果中)"
			},
			{
				3,
				"作为参谋位指挥喵，先锋舰队只有一艘舰船且为驱逐时，依据指挥喵指挥属性，提高所在舰队中驱逐的雷击属性(效果大)"
			}
		},
		effect_tactic = {
			310211,
			310212,
			310213
		}
	},
	[32011] = {
		name = "巡洋指挥",
		exp = 1,
		next_id = 32012,
		id = 32011,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的雷击属性(效果小)(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的雷击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			320111
		}
	},
	[32012] = {
		name = "巡洋指挥",
		exp = 3,
		next_id = 32013,
		id = 32012,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的雷击属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的雷击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			320111,
			320112
		}
	},
	[32013] = {
		name = "巡洋指挥",
		exp = 0,
		next_id = 0,
		id = 32013,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的雷击属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的雷击属性(效果小)"
			}
		},
		effect_tactic = {
			320111,
			320112,
			320113
		}
	},
	[32021] = {
		name = "战列后勤",
		exp = 1,
		next_id = 32022,
		id = 32021,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的命中属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的防空属性(效果小)(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的炮击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			320211
		}
	},
	[32022] = {
		name = "战列后勤",
		exp = 3,
		next_id = 32023,
		id = 32022,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的命中属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的防空属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的炮击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			320211,
			320212
		}
	},
	[32023] = {
		name = "战列后勤",
		exp = 0,
		next_id = 0,
		id = 32023,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的命中属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的防空属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的炮击属性(效果小)"
			}
		},
		effect_tactic = {
			320211,
			320212,
			320213
		}
	},
	[40011] = {
		name = "静寂的狩猎者",
		exp = 1,
		next_id = 40012,
		id = 40011,
		icon = "4001",
		lv = 1,
		desc = {
			{
				1,
				"依据指挥喵指挥、后勤属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)"
			},
			{
				2,
				"狩猎范围等级+1(Lv2生效)"
			},
			{
				3,
				"依据指挥喵战术属性，提高鱼雷打击（地图）的伤害(Lv3生效)"
			}
		},
		effect_tactic = {
			400111
		}
	},
	[40012] = {
		name = "静寂的狩猎者",
		exp = 3,
		next_id = 40013,
		id = 40012,
		icon = "4001",
		lv = 2,
		desc = {
			{
				1,
				"依据指挥喵指挥、后勤属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)"
			},
			{
				2,
				"狩猎范围等级+1"
			},
			{
				3,
				"依据指挥喵战术属性，提高鱼雷打击（地图）的伤害(Lv3生效)"
			}
		},
		effect_tactic = {
			400111,
			400112
		}
	},
	[40013] = {
		name = "静寂的狩猎者",
		exp = 0,
		next_id = 0,
		id = 40013,
		icon = "4001",
		lv = 3,
		desc = {
			{
				1,
				"依据指挥喵指挥、后勤属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)"
			},
			{
				2,
				"狩猎范围等级+1"
			},
			{
				3,
				"依据指挥喵战术属性，提高鱼雷打击（地图）的伤害"
			}
		},
		effect_tactic = {
			400111,
			400112,
			400113
		}
	},
	[41011] = {
		name = "海之铁骑士",
		exp = 1,
		next_id = 41012,
		id = 41011,
		icon = "4101",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的命中属性(效果中)(Lv2生效)"
			},
			{
				3,
				"与主力舰队交战时，依据指挥喵战术属性，降低旗舰受到的伤害(Lv3生效)"
			}
		},
		effect_tactic = {
			410111
		}
	},
	[41012] = {
		name = "海之铁骑士",
		exp = 3,
		next_id = 41013,
		id = 41012,
		icon = "4101",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的命中属性(效果中)"
			},
			{
				3,
				"与主力舰队交战时，依据指挥喵战术属性，降低旗舰受到的伤害(Lv3生效)"
			}
		},
		effect_tactic = {
			410111,
			410112
		}
	},
	[41013] = {
		name = "海之铁骑士",
		exp = 0,
		next_id = 0,
		id = 41013,
		icon = "4101",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的命中属性(效果中)"
			},
			{
				3,
				"与主力舰队交战时，依据指挥喵战术属性，降低旗舰受到的伤害"
			}
		},
		effect_tactic = {
			410111,
			410112,
			410113
		}
	},
	[41021] = {
		name = "海之勇者",
		exp = 1,
		next_id = 41022,
		id = 41021,
		icon = "4102",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的命中属性(效果中)(Lv2生效)"
			},
			{
				3,
				"狩猎范围等级+1(Lv3生效)"
			}
		},
		effect_tactic = {
			410211
		}
	},
	[41022] = {
		name = "海之勇者",
		exp = 3,
		next_id = 41023,
		id = 41022,
		icon = "4102",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的命中属性(效果中)"
			},
			{
				3,
				"狩猎范围等级+1(Lv3生效)"
			}
		},
		effect_tactic = {
			410211,
			410212
		}
	},
	[41023] = {
		name = "海之勇者",
		exp = 0,
		next_id = 0,
		id = 41023,
		icon = "4102",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的命中属性(效果中)"
			},
			{
				3,
				"狩猎范围等级+1"
			}
		},
		effect_tactic = {
			410211,
			410212,
			410213
		}
	},
	[42011] = {
		name = "巡洋后勤",
		exp = 1,
		next_id = 42012,
		id = 42011,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			420111
		}
	},
	[42012] = {
		name = "巡洋后勤",
		exp = 3,
		next_id = 42013,
		id = 42012,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			420111,
			420112
		}
	},
	[42013] = {
		name = "巡洋后勤",
		exp = 0,
		next_id = 0,
		id = 42013,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的炮击属性(效果小)"
			}
		},
		effect_tactic = {
			420111,
			420112,
			420113
		}
	},
	[42021] = {
		name = "驱逐指挥",
		exp = 1,
		next_id = 42022,
		id = 42021,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中驱逐的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中驱逐的命中属性(效果小)(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的雷击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			420211
		}
	},
	[42022] = {
		name = "驱逐指挥",
		exp = 3,
		next_id = 42023,
		id = 42022,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中驱逐的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中驱逐的命中属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的雷击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			420211,
			420212
		}
	},
	[42023] = {
		name = "驱逐指挥",
		exp = 0,
		next_id = 0,
		id = 42023,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中驱逐的机动属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中驱逐的命中属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的雷击属性(效果小)"
			}
		},
		effect_tactic = {
			420211,
			420212,
			420213
		}
	},
	all = {
		10011,
		10012,
		10013,
		11011,
		11012,
		11013,
		11021,
		11022,
		11023,
		12011,
		12012,
		12013,
		12021,
		12022,
		12023,
		20011,
		20012,
		20013,
		21011,
		21012,
		21013,
		21021,
		21022,
		21023,
		22011,
		22012,
		22013,
		22021,
		22022,
		22023,
		30011,
		30012,
		30013,
		31011,
		31012,
		31013,
		31021,
		31022,
		31023,
		32011,
		32012,
		32013,
		32021,
		32022,
		32023,
		40011,
		40012,
		40013,
		41011,
		41012,
		41013,
		41021,
		41022,
		41023,
		42011,
		42012,
		42013,
		42021,
		42022,
		42023
	}
}

return
