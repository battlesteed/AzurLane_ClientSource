pg = pg or {}
pg.commander_skill_effect_template = {
	{
		id = 1,
		name = "技能模板",
		effect_type = "move_speed",
		args = {
			1
		},
		condition = {
			{
				"count",
				{
					1
				},
				1,
				3
			}
		}
	},
	{
		id = 2,
		name = "技能模板",
		effect_type = "attack",
		args = {
			"torpedo",
			10000,
			200
		},
		condition = {
			{
				"dd_count",
				1,
				3
			}
		}
	},
	{
		id = 3,
		name = "技能模板",
		effect_type = "strategy",
		args = {
			9,
			1
		},
		condition = {
			{
				"dd_count",
				1,
				3
			},
			{
				"around_combat_ally",
				1
			}
		}
	},
	{
		id = 4,
		name = "技能模板",
		effect_type = "battle_buff",
		args = {
			20001
		},
		condition = {
			{
				"dd_head"
			}
		}
	},
	{
		id = 5,
		name = "技能模板",
		effect_type = "airfight_doge",
		args = {
			5000
		},
		condition = {}
	},
	{
		id = 6,
		name = "技能模板",
		effect_type = "ambush_doge",
		args = {
			5000
		},
		condition = {}
	},
	{
		id = 7,
		name = "技能模板",
		effect_type = "move_speed",
		args = {
			1
		},
		condition = {
			{
				"around_enemy",
				3,
				1
			}
		}
	},
	{
		id = 8,
		name = "技能模板",
		effect_type = "battle_buff",
		args = {
			20002
		},
		condition = {
			{
				"battle_buff_not_active",
				20003
			}
		}
	},
	{
		id = 9,
		name = "技能模板",
		effect_type = "attack",
		args = {
			"airfight",
			5000,
			200
		},
		condition = {}
	},
	{
		id = 10,
		name = "技能模板",
		effect_type = "battle_buff",
		args = {
			20004
		},
		condition = {
			{
				"dd_count",
				1,
				1
			},
			{
				"vang_count",
				1,
				1
			}
		}
	},
	{
		id = 11,
		name = "技能模板",
		effect_type = "hunt_lv",
		args = {
			1
		},
		condition = {}
	},
	{
		id = 12,
		name = "技能模板",
		effect_type = "torpedo_power_up",
		args = {
			0.01,
			2800
		},
		condition = {
			{
				"pos",
				1
			}
		}
	},
	{
		id = 13,
		name = "技能模板",
		effect_type = "battle_buff",
		args = {
			20005
		},
		condition = {
			{
				"around_enemy",
				0,
				2
			}
		}
	},
	{
		id = 14,
		name = "技能模板",
		effect_type = "battle_buff",
		args = {
			40010,
			5000
		},
		condition = {}
	},
	[100111] = {
		id = 100111,
		name = "31节的正义",
		effect_type = "move_speed",
		args = {
			1
		},
		condition = {
			{
				"count",
				{
					1
				},
				3,
				3
			}
		}
	},
	[100112] = {
		id = 100112,
		name = "31节的正义",
		effect_type = "attack",
		args = {
			"torpedo",
			102,
			1500,
			0.3,
			600
		},
		condition = {
			{
				"count",
				{
					1
				},
				1,
				3
			},
			{
				"pos",
				1
			}
		}
	},
	[100113] = {
		id = 100113,
		name = "31节的正义",
		effect_type = "strategy",
		args = {
			9,
			1
		},
		condition = {
			{
				"count",
				{
					1
				},
				1,
				3
			},
			{
				"pos",
				1
			},
			{
				"around_combat_ally",
				1
			}
		}
	},
	[110111] = {
		id = 110111,
		name = "5英寸的勇气",
		effect_type = "attack",
		args = {
			"torpedo",
			102,
			1500,
			0.3,
			600
		},
		condition = {
			{
				"count",
				{
					1
				},
				1,
				3
			},
			{
				"pos",
				1
			}
		}
	},
	[110112] = {
		id = 110112,
		name = "5英寸的勇气",
		effect_type = "battle_buff",
		args = {
			40000
		},
		condition = {
			{
				"dd_head"
			}
		}
	},
	[110113] = {
		id = 110113,
		name = "5英寸的勇气",
		effect_type = "battle_buff",
		args = {
			40002
		},
		condition = {
			{
				"dd_head"
			}
		}
	},
	[110211] = {
		id = 110211,
		name = "幸运之翼",
		effect_type = "battle_buff",
		args = {
			442610
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[110212] = {
		id = 110212,
		name = "幸运之翼",
		effect_type = "airfight_doge",
		args = {
			102,
			0.05,
			10,
			250
		},
		condition = {}
	},
	[110213] = {
		id = 110213,
		name = "幸运之翼",
		effect_type = "battle_buff",
		args = {
			441320
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[120111] = {
		id = 120111,
		name = "空母后勤",
		effect_type = "battle_buff",
		args = {
			443610
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[120112] = {
		id = 120112,
		name = "空母后勤",
		effect_type = "battle_buff",
		args = {
			441310
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[120113] = {
		id = 120113,
		name = "空母后勤",
		effect_type = "battle_buff",
		args = {
			442810
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[120121] = {
		id = 120121,
		name = "雷达侦察",
		effect_type = "ambush_doge",
		args = {
			101,
			0.05,
			10,
			250
		},
		condition = {}
	},
	[120122] = {
		id = 120122,
		name = "雷达侦察",
		effect_type = "battle_buff",
		args = {
			422810
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[120123] = {
		id = 120123,
		name = "雷达侦察",
		effect_type = "battle_buff",
		args = {
			421110
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[200111] = {
		id = 200111,
		name = "尽忠职守",
		effect_type = "battle_buff",
		args = {
			40020
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[200112] = {
		id = 200112,
		name = "尽忠职守",
		effect_type = "battle_buff",
		args = {
			40040
		},
		condition = {
			{
				"pos",
				2
			},
			{
				"around_land",
				1
			}
		}
	},
	[200113] = {
		id = 200113,
		name = "尽忠职守",
		effect_type = "battle_buff",
		args = {
			40030
		},
		condition = {}
	},
	[210111] = {
		id = 210111,
		name = "物资拦截者",
		effect_type = "battle_buff",
		args = {
			423910
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[210112] = {
		id = 210112,
		name = "物资拦截者",
		effect_type = "battle_buff",
		args = {
			422130
		},
		condition = {
			{
				"around_enemy",
				0,
				{
					10,
					11,
					12
				}
			},
			{
				"pos",
				2
			}
		}
	},
	[210113] = {
		id = 210113,
		name = "物资拦截者",
		effect_type = "battle_buff",
		args = {
			421220
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[210211] = {
		id = 210211,
		name = "斥候猎手",
		effect_type = "battle_buff",
		args = {
			412820
		},
		condition = {
			{
				"around_enemy",
				0,
				{
					1,
					2,
					3
				}
			},
			{
				"pos",
				2
			}
		}
	},
	[210212] = {
		id = 210212,
		name = "斥候猎手",
		effect_type = "battle_buff",
		args = {
			413920
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[210213] = {
		id = 210213,
		name = "斥候猎手",
		effect_type = "move_speed",
		args = {
			1
		},
		condition = {
			{
				"around_enemy",
				3,
				{
					1,
					2,
					3
				}
			}
		}
	},
	[220111] = {
		id = 220111,
		name = "战列后勤",
		effect_type = "battle_buff",
		args = {
			433610
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[220112] = {
		id = 220112,
		name = "战列后勤",
		effect_type = "battle_buff",
		args = {
			433810
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[220113] = {
		id = 220113,
		name = "战列后勤",
		effect_type = "battle_buff",
		args = {
			433110
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[220211] = {
		id = 220211,
		name = "巡洋战术",
		effect_type = "battle_buff",
		args = {
			422110
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[220212] = {
		id = 220212,
		name = "巡洋战术",
		effect_type = "battle_buff",
		args = {
			422810
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[220213] = {
		id = 220213,
		name = "巡洋战术",
		effect_type = "battle_buff",
		args = {
			422910
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[300111] = {
		id = 300111,
		name = "反击的一拳",
		effect_type = "battle_buff",
		args = {
			40110
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[300112] = {
		id = 300112,
		name = "反击的一拳",
		effect_type = "ambush_doge",
		args = {
			103,
			0.05,
			10,
			250
		},
		condition = {}
	},
	[300113] = {
		id = 300113,
		name = "反击的一拳",
		effect_type = "battle_buff",
		args = {
			40120
		},
		condition = {
			{
				"count",
				{
					6,
					7
				},
				1,
				1
			}
		}
	},
	[310111] = {
		id = 310111,
		name = "必杀·三段击",
		effect_type = "battle_buff",
		args = {
			442810
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[310112] = {
		id = 310112,
		name = "必杀·三段击",
		effect_type = "battle_buff",
		args = {
			441320
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[310113] = {
		id = 310113,
		name = "必杀·三段击",
		effect_type = "attack",
		args = {
			"airfight",
			102,
			1500,
			0.3,
			600
		},
		condition = {
			{
				"count",
				{
					6,
					7
				},
				1,
				3
			}
		}
	},
	[310211] = {
		id = 310211,
		name = "野性的直觉",
		effect_type = "battle_buff",
		args = {
			411910
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[310212] = {
		id = 310212,
		name = "野性的直觉",
		effect_type = "battle_buff",
		args = {
			413220
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[310213] = {
		id = 310213,
		name = "野性的直觉",
		effect_type = "battle_buff",
		args = {
			40150
		},
		condition = {
			{
				"count",
				{
					1
				},
				1,
				1
			},
			{
				"pos",
				2
			}
		}
	},
	[320111] = {
		id = 320111,
		name = "巡洋指挥",
		effect_type = "battle_buff",
		args = {
			421110
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[320112] = {
		id = 320112,
		name = "巡洋指挥",
		effect_type = "battle_buff",
		args = {
			423210
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[320113] = {
		id = 320113,
		name = "巡洋指挥",
		effect_type = "battle_buff",
		args = {
			421210
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[320211] = {
		id = 320211,
		name = "战列后勤",
		effect_type = "battle_buff",
		args = {
			433810
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[320212] = {
		id = 320212,
		name = "战列后勤",
		effect_type = "battle_buff",
		args = {
			431410
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[320213] = {
		id = 320213,
		name = "战列后勤",
		effect_type = "battle_buff",
		args = {
			432110
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[400111] = {
		id = 400111,
		name = "静寂的狩猎者",
		effect_type = "battle_buff",
		args = {
			40180
		},
		condition = {
			{
				"insubteam",
				1
			}
		}
	},
	[400112] = {
		id = 400112,
		name = "静寂的狩猎者",
		effect_type = "hunt_lv",
		args = {
			1
		},
		condition = {
			{
				"insubteam",
				1
			}
		}
	},
	[400113] = {
		id = 400113,
		name = "静寂的狩猎者",
		effect_type = "torpedo_power_up",
		args = {
			102,
			0.1,
			10,
			125
		},
		condition = {
			{
				"insubteam",
				1
			}
		}
	},
	[410111] = {
		id = 410111,
		name = "海之铁骑士",
		effect_type = "battle_buff",
		args = {
			431910
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[410112] = {
		id = 410112,
		name = "海之铁骑士",
		effect_type = "battle_buff",
		args = {
			432820
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[410113] = {
		id = 410113,
		name = "海之铁骑士",
		effect_type = "battle_buff",
		args = {
			40200
		},
		condition = {
			{
				"around_enemy",
				0,
				{
					4,
					5,
					6
				}
			}
		}
	},
	[410211] = {
		id = 410211,
		name = "海之勇者",
		effect_type = "battle_buff",
		args = {
			451210
		},
		condition = {
			{
				"pos",
				2
			},
			{
				"insubteam",
				1
			}
		}
	},
	[410212] = {
		id = 410212,
		name = "海之勇者",
		effect_type = "battle_buff",
		args = {
			451820
		},
		condition = {
			{
				"pos",
				2
			},
			{
				"insubteam",
				1
			}
		}
	},
	[410213] = {
		id = 410213,
		name = "海之勇者",
		effect_type = "hunt_lv",
		args = {
			1
		},
		condition = {
			{
				"insubteam",
				1
			}
		}
	},
	[420111] = {
		id = 420111,
		name = "巡洋后勤",
		effect_type = "battle_buff",
		args = {
			423910
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[420112] = {
		id = 420112,
		name = "巡洋后勤",
		effect_type = "battle_buff",
		args = {
			423110
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[420113] = {
		id = 420113,
		name = "巡洋后勤",
		effect_type = "battle_buff",
		args = {
			421110
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[420211] = {
		id = 420211,
		name = "驱逐指挥",
		effect_type = "battle_buff",
		args = {
			411910
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[420212] = {
		id = 420212,
		name = "驱逐指挥",
		effect_type = "battle_buff",
		args = {
			412810
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	[420213] = {
		id = 420213,
		name = "驱逐指挥",
		effect_type = "battle_buff",
		args = {
			413210
		},
		condition = {
			{
				"pos",
				2
			}
		}
	},
	all = {
		1,
		2,
		3,
		4,
		5,
		6,
		7,
		8,
		9,
		10,
		11,
		12,
		13,
		14,
		100111,
		100112,
		100113,
		110111,
		110112,
		110113,
		110211,
		110212,
		110213,
		120111,
		120112,
		120113,
		120121,
		120122,
		120123,
		200111,
		200112,
		200113,
		210111,
		210112,
		210113,
		210211,
		210212,
		210213,
		220111,
		220112,
		220113,
		220211,
		220212,
		220213,
		300111,
		300112,
		300113,
		310111,
		310112,
		310113,
		310211,
		310212,
		310213,
		320111,
		320112,
		320113,
		320211,
		320212,
		320213,
		400111,
		400112,
		400113,
		410111,
		410112,
		410113,
		410211,
		410212,
		410213,
		420111,
		420112,
		420113,
		420211,
		420212,
		420213
	}
}

return
