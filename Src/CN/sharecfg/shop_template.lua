pg = pg or {}
pg.shop_template = {
	{
		group_type = 0,
		resource_num = 100,
		desc = "100钻石扩展装备容量+20",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "equip_bag_size",
		group = 0,
		num = 20,
		discount = 0,
		resource_type = 14,
		id = 1,
		genre = "",
		discount_time = {},
		limit_args = {}
	},
	{
		group_type = 0,
		resource_num = 200,
		desc = "200钻石扩展船坞容量+10",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "ship_bag_size",
		group = 0,
		num = 10,
		discount = 0,
		resource_type = 14,
		id = 2,
		genre = "",
		discount_time = {},
		limit_args = {}
	},
	{
		group_type = 0,
		resource_num = 300,
		desc = "300钻石扩展后宅休息床位+1",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "dorm_exp_pos",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 3,
		genre = "",
		discount_time = {},
		limit_args = {
			{
				"number",
				2,
				2
			}
		}
	},
	{
		group_type = 0,
		resource_num = 500,
		desc = "500钻石扩展后宅休息床位+1",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "dorm_exp_pos",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 4,
		genre = "",
		discount_time = {},
		limit_args = {
			{
				"number",
				3,
				3
			}
		}
	},
	{
		group_type = 0,
		resource_num = 100,
		desc = "扩展食物容量,前10次扩展每次消耗100钻石",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "dorm_food_max",
		group = 0,
		num = 2000,
		discount = 0,
		resource_type = 14,
		id = 5,
		genre = "backyard_food_extend",
		discount_time = {},
		limit_args = {
			"count",
			0,
			9
		}
	},
	{
		group_type = 0,
		resource_num = 200,
		desc = "扩展食物容量,第11次以后扩展消耗200钻石",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "dorm_food_max",
		group = 0,
		num = 2000,
		discount = 0,
		resource_type = 14,
		id = 6,
		genre = "backyard_food_extend",
		discount_time = {},
		limit_args = {
			"count",
			10,
			24
		}
	},
	{
		group_type = 0,
		resource_num = -1,
		desc = "升级贸易港",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "tradingport_level",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 7,
		genre = "",
		discount_time = {},
		limit_args = {}
	},
	{
		group_type = 0,
		resource_num = -1,
		desc = "升级炼油厂",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "oilfield_level",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 8,
		genre = "",
		discount_time = {},
		limit_args = {}
	},
	{
		group_type = 0,
		resource_num = -1,
		desc = "商业街升级",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "shop_street_level",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 9,
		genre = "",
		discount_time = {},
		limit_args = {}
	},
	{
		group_type = 0,
		resource_num = 50,
		desc = "刷新商业街",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "shop_street_flash",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 10,
		genre = "shop_street_upgrade",
		discount_time = {},
		limit_args = {
			"count",
			0,
			3
		}
	},
	{
		group_type = 0,
		resource_num = 100,
		desc = "刷新商业街",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "shop_street_flash",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 11,
		genre = "shop_street_upgrade",
		discount_time = {},
		limit_args = {
			"count",
			4,
			9
		}
	},
	{
		group_type = 0,
		resource_num = 100,
		desc = "花费100钻石购买3000物资",
		type = 1,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 3000,
		discount = 0,
		resource_type = 14,
		id = 12,
		genre = "",
		discount_time = {},
		limit_args = {},
		effect_args = {
			1
		}
	},
	{
		group_type = 0,
		resource_num = 50,
		desc = "花费50钻石购买500石油",
		type = 1,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = -1,
		discount = 0,
		resource_type = 14,
		id = 13,
		genre = "buy_oil",
		discount_time = {},
		limit_args = {
			"count",
			0,
			1
		},
		effect_args = {
			2
		}
	},
	{
		group_type = 0,
		resource_num = 100,
		desc = "花费100钻石购买500石油",
		type = 1,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = -1,
		discount = 0,
		resource_type = 14,
		id = 14,
		genre = "buy_oil",
		discount_time = {},
		limit_args = {
			"count",
			2,
			5
		},
		effect_args = {
			2
		}
	},
	{
		group_type = 0,
		resource_num = 200,
		desc = "花费200钻石购买500石油",
		type = 1,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = -1,
		discount = 0,
		resource_type = 14,
		id = 15,
		genre = "buy_oil",
		discount_time = {},
		limit_args = {
			"count",
			6,
			9
		},
		effect_args = {
			2
		}
	},
	{
		group_type = 0,
		resource_num = 400,
		desc = "花费400钻石购买500石油",
		type = 1,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = -1,
		discount = 0,
		resource_type = 14,
		id = 16,
		genre = "buy_oil",
		discount_time = {},
		limit_args = {
			"count",
			10,
			15
		},
		effect_args = {
			2
		}
	},
	{
		group_type = 0,
		resource_num = 500,
		desc = "500钻石扩展后宅休息栏位+1",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "dorm_fix_pos",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 17,
		genre = "",
		discount_time = {},
		limit_args = {}
	},
	{
		group_type = 0,
		resource_num = 800,
		desc = "800钻石扩展后宅休息床位+1",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "dorm_exp_pos",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 18,
		genre = "",
		discount_time = {},
		limit_args = {
			{
				"number",
				4,
				4
			}
		}
	},
	{
		group_type = 0,
		resource_num = 500,
		desc = "500钻石购买扩展后宅二层家具",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "dorm_floor",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 19,
		genre = "",
		discount_time = {},
		limit_args = {
			{
				"count",
				1,
				1
			},
			{
				"level",
				3
			}
		}
	},
	{
		group_type = 0,
		resource_num = -1,
		desc = "升级大讲堂",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "class_room_level",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 20,
		genre = "",
		discount_time = {},
		limit_args = {}
	},
	{
		group_type = 0,
		resource_num = 500,
		desc = "500钻石开启战术学院第三技能学习栏位",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "skill_room_pos",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 21,
		genre = "skill_room_upgrade",
		discount_time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {
			{
				"number",
				2,
				2
			}
		}
	},
	[23] = {
		group_type = 0,
		resource_num = 200,
		desc = "200钻石扩展指挥喵容量+10",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "commander_bag_size",
		group = 0,
		num = 10,
		discount = 0,
		resource_type = 14,
		id = 23,
		genre = "",
		discount_time = {},
		limit_args = {}
	},
	[21001] = {
		group_type = 0,
		resource_num = 1500,
		desc = "1500物资购买1个快速完成工具",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 21001,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			15003
		}
	},
	[21002] = {
		group_type = 0,
		resource_num = 600,
		desc = "600物资购买1个舰艇攻击教材T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 21002,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16001
		}
	},
	[21003] = {
		group_type = 0,
		resource_num = 600,
		desc = "600物资购买1个舰艇防御教材T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 21003,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16011
		}
	},
	[21004] = {
		group_type = 0,
		resource_num = 600,
		desc = "600物资购买1个舰艇辅助教材T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 21004,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16021
		}
	},
	[21005] = {
		group_type = 0,
		resource_num = 750,
		desc = "750物资购买1个通用部件T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21005,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17001
		}
	},
	[21006] = {
		group_type = 0,
		resource_num = 750,
		desc = "750物资购买1个主炮部件T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21006,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17011
		}
	},
	[21007] = {
		group_type = 0,
		resource_num = 750,
		desc = "750物资购买1个鱼雷部件T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21007,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17021
		}
	},
	[21008] = {
		group_type = 0,
		resource_num = 750,
		desc = "750物资购买1个防空炮部件T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21008,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17031
		}
	},
	[21009] = {
		group_type = 0,
		resource_num = 750,
		desc = "750物资购买1个舰载机部件T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21009,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17041
		}
	},
	[21010] = {
		group_type = 0,
		resource_num = 1200,
		desc = "1200物资购买1个舰艇攻击教材T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 21010,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16002
		}
	},
	[21011] = {
		group_type = 0,
		resource_num = 1200,
		desc = "1200物资购买1个舰艇防御教材T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 21011,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16012
		}
	},
	[21012] = {
		group_type = 0,
		resource_num = 1200,
		desc = "1200物资购买1个舰艇辅助教材T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 21012,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16022
		}
	},
	[21013] = {
		group_type = 0,
		resource_num = 1500,
		desc = "1500物资购买1个通用部件T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21013,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17002
		}
	},
	[21014] = {
		group_type = 0,
		resource_num = 1500,
		desc = "1500物资购买1个主炮部件T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21014,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17012
		}
	},
	[21015] = {
		group_type = 0,
		resource_num = 1500,
		desc = "1500物资购买1个鱼雷部件T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21015,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17022
		}
	},
	[21016] = {
		group_type = 0,
		resource_num = 1500,
		desc = "1500物资购买1个防空炮部件T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21016,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17032
		}
	},
	[21017] = {
		group_type = 0,
		resource_num = 1500,
		desc = "1500物资购买1个舰载机部件T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21017,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17042
		}
	},
	[21018] = {
		group_type = 0,
		resource_num = 2400,
		desc = "2400物资购买1个舰艇攻击教材T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 21018,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16003
		}
	},
	[21019] = {
		group_type = 0,
		resource_num = 2400,
		desc = "2400物资购买1个舰艇防御教材T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 21019,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16013
		}
	},
	[21020] = {
		group_type = 0,
		resource_num = 2400,
		desc = "2400物资购买1个舰艇辅助教材T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 21020,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16023
		}
	},
	[21021] = {
		group_type = 0,
		resource_num = 3000,
		desc = "3000物资购买1个通用部件T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21021,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17003
		}
	},
	[21022] = {
		group_type = 0,
		resource_num = 3000,
		desc = "3000物资购买1个主炮部件T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21022,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17013
		}
	},
	[21023] = {
		group_type = 0,
		resource_num = 3000,
		desc = "3000物资购买1个鱼雷部件T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21023,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17023
		}
	},
	[21024] = {
		group_type = 0,
		resource_num = 3000,
		desc = "3000物资购买1个防空炮部件T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21024,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17033
		}
	},
	[21025] = {
		group_type = 0,
		resource_num = 3000,
		desc = "3000物资购买1个舰载机部件T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 21025,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			17043
		}
	},
	[21026] = {
		group_type = 0,
		resource_num = 2000,
		desc = "2000物资购买1个心智模型",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 21026,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			20001
		}
	},
	[21027] = {
		group_type = 0,
		resource_num = 300,
		desc = "300物资购买10个酸素可乐",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 10,
		discount = 0,
		resource_type = 1,
		id = 21027,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			50001
		}
	},
	[21028] = {
		group_type = 0,
		resource_num = 900,
		desc = "900物资购买10个秘制冷却水",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 10,
		discount = 0,
		resource_type = 1,
		id = 21028,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			50002
		}
	},
	[21029] = {
		group_type = 0,
		resource_num = 1500,
		desc = "1500物资购买10个鱼雷天妇罗",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 10,
		discount = 0,
		resource_type = 1,
		id = 21029,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			50003
		}
	},
	[21030] = {
		group_type = 0,
		resource_num = 3000,
		desc = "3000物资购买10个西瓜",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 10,
		discount = 0,
		resource_type = 1,
		id = 21030,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			50004
		}
	},
	[21031] = {
		group_type = 0,
		resource_num = 6000,
		desc = "6000物资购买10个皇家料理",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 10,
		discount = 0,
		resource_type = 1,
		id = 21031,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			50005
		}
	},
	[21032] = {
		group_type = 0,
		resource_num = 12000,
		desc = "12000物资购买10个满汉全席",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 10,
		discount = 0,
		resource_type = 1,
		id = 21032,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			50006
		}
	},
	[23001] = {
		group_type = 0,
		resource_num = 2000,
		desc = "2000功勋兑换1个心智模型",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 23001,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			20001
		}
	},
	[24001] = {
		group_type = 0,
		resource_num = 20,
		desc = "20钻石购买1个快速完成工具",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 24001,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			15003
		}
	},
	[24002] = {
		group_type = 0,
		resource_num = 40,
		desc = "40钻石购买2个快速完成工具",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 2,
		discount = 0,
		resource_type = 14,
		id = 24002,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			15003
		}
	},
	[24003] = {
		group_type = 0,
		resource_num = 30,
		desc = "30钻石购买1个心智模型",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 24003,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			20001
		}
	},
	[24004] = {
		group_type = 0,
		resource_num = 60,
		desc = "60钻石购买2个心智模型",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 2,
		discount = 0,
		resource_type = 14,
		id = 24004,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			20001
		}
	},
	[24005] = {
		group_type = 0,
		resource_num = 20,
		desc = "20钻石购买1个舰艇攻击教材T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 24005,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16001
		}
	},
	[24006] = {
		group_type = 0,
		resource_num = 20,
		desc = "20钻石购买1个舰艇防御教材T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 24006,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16011
		}
	},
	[24007] = {
		group_type = 0,
		resource_num = 20,
		desc = "20钻石购买1个舰艇辅助教材T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 24007,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16021
		}
	},
	[24008] = {
		group_type = 0,
		resource_num = 40,
		desc = "40钻石购买1个舰艇攻击教材T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 24008,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16002
		}
	},
	[24009] = {
		group_type = 0,
		resource_num = 40,
		desc = "40钻石购买1个舰艇防御教材T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 24009,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16012
		}
	},
	[24010] = {
		group_type = 0,
		resource_num = 40,
		desc = "40钻石购买1个舰艇辅助教材T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 24010,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16022
		}
	},
	[24011] = {
		group_type = 0,
		resource_num = 80,
		desc = "80钻石购买1个舰艇攻击教材T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 24011,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16003
		}
	},
	[24012] = {
		group_type = 0,
		resource_num = 80,
		desc = "80钻石购买1个舰艇防御教材T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 24012,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16013
		}
	},
	[24013] = {
		group_type = 0,
		resource_num = 80,
		desc = "80钻石购买1个舰艇辅助教材T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 24013,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			16023
		}
	},
	[31011] = {
		group_type = 0,
		resource_num = 80,
		desc = "80物资兑换1个克洛希德科技箱T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31011,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30011
		}
	},
	[31012] = {
		group_type = 0,
		resource_num = 400,
		desc = "400物资兑换1个克洛希德科技箱T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31012,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30012
		}
	},
	[31013] = {
		group_type = 0,
		resource_num = 2000,
		desc = "2000物资兑换1个克洛希德科技箱T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31013,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30013
		}
	},
	[31014] = {
		group_type = 0,
		resource_num = 5000,
		desc = "5000物资兑换1个克洛希德科技箱T4",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31014,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30014
		}
	},
	[31111] = {
		group_type = 0,
		resource_num = 400,
		desc = "400物资兑换5个克洛希德科技箱T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31111,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30011
		}
	},
	[31112] = {
		group_type = 0,
		resource_num = 2000,
		desc = "2000物资兑换5个克洛希德科技箱T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31112,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30012
		}
	},
	[31113] = {
		group_type = 0,
		resource_num = 10000,
		desc = "10000物资兑换5个克洛希德科技箱T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31113,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30013
		}
	},
	[31114] = {
		group_type = 0,
		resource_num = 25000,
		desc = "25000物资兑换5个克洛希德科技箱T4",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31114,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30014
		}
	},
	[31021] = {
		group_type = 0,
		resource_num = 80,
		desc = "80物资兑换1个威斯克科技箱T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31021,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30021
		}
	},
	[31022] = {
		group_type = 0,
		resource_num = 400,
		desc = "400物资兑换1个威斯克科技箱T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31022,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30022
		}
	},
	[31023] = {
		group_type = 0,
		resource_num = 2000,
		desc = "2000物资兑换1个威斯克科技箱T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31023,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30023
		}
	},
	[31024] = {
		group_type = 0,
		resource_num = 5000,
		desc = "5000物资兑换1个威斯克科技箱T4",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31024,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30024
		}
	},
	[31121] = {
		group_type = 0,
		resource_num = 400,
		desc = "400物资兑换5个威斯克科技箱T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31121,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30021
		}
	},
	[31122] = {
		group_type = 0,
		resource_num = 2000,
		desc = "2000物资兑换5个威斯克科技箱T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31122,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30022
		}
	},
	[31123] = {
		group_type = 0,
		resource_num = 10000,
		desc = "10000物资兑换5个威斯克科技箱T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31123,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30023
		}
	},
	[31124] = {
		group_type = 0,
		resource_num = 25000,
		desc = "25000物资兑换5个威斯克科技箱T4",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31124,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30024
		}
	},
	[31031] = {
		group_type = 0,
		resource_num = 80,
		desc = "80物资兑换1个藏王重工科技箱T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31031,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30031
		}
	},
	[31032] = {
		group_type = 0,
		resource_num = 400,
		desc = "400物资兑换1个藏王重工科技箱T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31032,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30032
		}
	},
	[31033] = {
		group_type = 0,
		resource_num = 2000,
		desc = "2000物资兑换1个藏王重工科技箱T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31033,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30033
		}
	},
	[31034] = {
		group_type = 0,
		resource_num = 5000,
		desc = "5000物资兑换1个藏王重工科技箱T4",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31034,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30034
		}
	},
	[31131] = {
		group_type = 0,
		resource_num = 400,
		desc = "400物资兑换5个藏王重工科技箱T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31131,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30031
		}
	},
	[31132] = {
		group_type = 0,
		resource_num = 2000,
		desc = "2000物资兑换5个藏王重工科技箱T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31132,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30032
		}
	},
	[31133] = {
		group_type = 0,
		resource_num = 10000,
		desc = "10000物资兑换5个藏王重工科技箱T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31133,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30033
		}
	},
	[31134] = {
		group_type = 0,
		resource_num = 25000,
		desc = "25000物资兑换5个藏王重工科技箱T4",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31134,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30034
		}
	},
	[31041] = {
		group_type = 0,
		resource_num = 80,
		desc = "80物资兑换1个伯鲁克科技箱T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31041,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30041
		}
	},
	[31042] = {
		group_type = 0,
		resource_num = 400,
		desc = "400物资兑换1个伯鲁克科技箱T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31042,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30042
		}
	},
	[31043] = {
		group_type = 0,
		resource_num = 2000,
		desc = "2000物资兑换1个伯鲁克科技箱T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31043,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30043
		}
	},
	[31044] = {
		group_type = 0,
		resource_num = 5000,
		desc = "5000物资兑换1个伯鲁克科技箱T4",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31044,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30044
		}
	},
	[31141] = {
		group_type = 0,
		resource_num = 400,
		desc = "400物资兑换5个伯鲁克科技箱T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31141,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30041
		}
	},
	[31142] = {
		group_type = 0,
		resource_num = 2000,
		desc = "2000物资兑换5个伯鲁克科技箱T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31142,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30042
		}
	},
	[31143] = {
		group_type = 0,
		resource_num = 10000,
		desc = "10000物资兑换5个伯鲁克科技箱T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31143,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30043
		}
	},
	[31144] = {
		group_type = 0,
		resource_num = 25000,
		desc = "25000物资兑换5个伯鲁克科技箱T4",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 1,
		id = 31144,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30044
		}
	},
	[31988] = {
		group_type = 0,
		resource_num = 7000,
		desc = "7000物资兑换1个绊爱联动外观装备箱",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31988,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30313
		}
	},
	[31989] = {
		group_type = 0,
		resource_num = 7000,
		desc = "7000物资兑换1个外观装备箱",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31989,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30312
		}
	},
	[31990] = {
		group_type = 0,
		resource_num = 7000,
		desc = "7000物资兑换1个外观装备箱",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31990,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30311
		}
	},
	[31991] = {
		group_type = 0,
		resource_num = 7000,
		desc = "7000物资兑换1个外观装备箱",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31991,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30310
		}
	},
	[31992] = {
		group_type = 0,
		resource_num = 7000,
		desc = "7000物资兑换1个外观装备箱",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31992,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30309
		}
	},
	[31993] = {
		group_type = 0,
		resource_num = 7000,
		desc = "7000物资兑换1个外观装备箱",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31993,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30308
		}
	},
	[31994] = {
		group_type = 0,
		resource_num = 7000,
		desc = "7000物资兑换1个外观装备箱",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31994,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30307
		}
	},
	[31995] = {
		group_type = 0,
		resource_num = 7000,
		desc = "7000物资兑换1个外观装备箱",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31995,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30306
		}
	},
	[31996] = {
		group_type = 0,
		resource_num = 7000,
		desc = "7000物资兑换1个外观装备箱",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31996,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30305
		}
	},
	[31997] = {
		group_type = 0,
		resource_num = 7000,
		desc = "7000物资兑换1个外观装备箱",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31997,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30304
		}
	},
	[31998] = {
		group_type = 0,
		resource_num = 7000,
		desc = "7000物资兑换1个海王星联动外观装备箱",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31998,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30303
		}
	},
	[31999] = {
		group_type = 0,
		resource_num = 7000,
		desc = "7000物资兑换1个外观装备箱",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 1,
		id = 31999,
		genre = "shopping_street",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30302
		}
	},
	[33011] = {
		group_type = 0,
		resource_num = 100,
		desc = "100功勋兑换1个克洛希德科技箱T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33011,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30011
		}
	},
	[33012] = {
		group_type = 0,
		resource_num = 300,
		desc = "300功勋兑换1个克洛希德科技箱T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33012,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30012
		}
	},
	[33013] = {
		group_type = 0,
		resource_num = 600,
		desc = "600功勋兑换1个克洛希德科技箱T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33013,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30013
		}
	},
	[33014] = {
		group_type = 0,
		resource_num = 1500,
		desc = "1500功勋兑换1个克洛希德科技箱T4",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33014,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30014
		}
	},
	[33021] = {
		group_type = 0,
		resource_num = 100,
		desc = "100功勋兑换1个威斯克科技箱T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33021,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30021
		}
	},
	[33022] = {
		group_type = 0,
		resource_num = 300,
		desc = "300功勋兑换1个威斯克科技箱T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33022,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30022
		}
	},
	[33023] = {
		group_type = 0,
		resource_num = 600,
		desc = "600功勋兑换1个威斯克科技箱T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33023,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30023
		}
	},
	[33024] = {
		group_type = 0,
		resource_num = 1500,
		desc = "1500功勋兑换1个威斯克科技箱T4",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33024,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30024
		}
	},
	[33031] = {
		group_type = 0,
		resource_num = 100,
		desc = "100功勋兑换1个藏王重工科技箱T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33031,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30031
		}
	},
	[33032] = {
		group_type = 0,
		resource_num = 300,
		desc = "300功勋兑换1个藏王重工科技箱T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33032,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30032
		}
	},
	[33033] = {
		group_type = 0,
		resource_num = 600,
		desc = "600功勋兑换1个藏王重工科技箱T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33033,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30033
		}
	},
	[33034] = {
		group_type = 0,
		resource_num = 1500,
		desc = "1500功勋兑换1个藏王重工科技箱T4",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33034,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30034
		}
	},
	[33041] = {
		group_type = 0,
		resource_num = 100,
		desc = "100功勋兑换1个伯鲁克科技箱T1",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33041,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30041
		}
	},
	[33042] = {
		group_type = 0,
		resource_num = 300,
		desc = "300功勋兑换1个伯鲁克科技箱T2",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33042,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30042
		}
	},
	[33043] = {
		group_type = 0,
		resource_num = 600,
		desc = "600功勋兑换1个伯鲁克科技箱T3",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33043,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30043
		}
	},
	[33044] = {
		group_type = 0,
		resource_num = 1500,
		desc = "1500功勋兑换1个伯鲁克科技箱T4",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 33044,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			30044
		}
	},
	[43001] = {
		group_type = 0,
		resource_num = 20000,
		desc = "8000功勋兑换埃尔德里奇",
		type = 4,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 43001,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			101261
		}
	},
	[43002] = {
		group_type = 0,
		resource_num = 20000,
		desc = "8000功勋兑换南达科他",
		type = 4,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 43002,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			105141
		}
	},
	[43003] = {
		group_type = 0,
		resource_num = 3000,
		desc = "3000功勋兑换试做型布里",
		type = 4,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 43003,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			100001
		}
	},
	[43004] = {
		group_type = 0,
		resource_num = 15000,
		desc = "10000功勋兑换泛用型布里MKII",
		type = 4,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 3,
		id = 43004,
		genre = "arena_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			100011
		}
	},
	[50002] = {
		group_type = 0,
		resource_num = 50,
		desc = "50钻石购买1个快速建造工具",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 50002,
		genre = "",
		discount_time = {},
		limit_args = {},
		effect_args = {
			15003
		}
	},
	[50003] = {
		group_type = 0,
		resource_num = 50,
		desc = "50钻石购买1个休息加速工具",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 50003,
		genre = "",
		discount_time = {},
		limit_args = {},
		effect_args = {
			15004
		}
	},
	[50004] = {
		group_type = 0,
		resource_num = 10,
		desc = "10石油购买1个酸素可乐",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 2,
		id = 50004,
		genre = "",
		discount_time = {},
		limit_args = {},
		effect_args = {
			50001
		}
	},
	[50005] = {
		group_type = 0,
		resource_num = 20,
		desc = "20石油购买1个秘制冷却水",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 2,
		id = 50005,
		genre = "",
		discount_time = {},
		limit_args = {},
		effect_args = {
			50002
		}
	},
	[50006] = {
		group_type = 0,
		resource_num = 30,
		desc = "30石油购买1个鱼雷天妇罗",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 2,
		id = 50006,
		genre = "",
		discount_time = {},
		limit_args = {},
		effect_args = {
			50003
		}
	},
	[50007] = {
		group_type = 0,
		resource_num = 50,
		desc = "50石油购买1个西瓜",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 2,
		id = 50007,
		genre = "",
		discount_time = {},
		limit_args = {},
		effect_args = {
			50004
		}
	},
	[50008] = {
		group_type = 0,
		resource_num = 10,
		desc = "10钻石购买1个皇家料理",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 50008,
		genre = "",
		discount_time = {},
		limit_args = {},
		effect_args = {
			50005
		}
	},
	[50009] = {
		group_type = 0,
		resource_num = 20,
		desc = "20钻石购买1个满汉全席",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 50009,
		genre = "",
		discount_time = {},
		limit_args = {},
		effect_args = {
			50006
		}
	},
	[50011] = {
		group_type = 0,
		resource_num = 100,
		desc = "100家具币购买一个扩展证",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 6,
		id = 50011,
		genre = "backyard_upgrade",
		discount_time = {},
		limit_args = {
			{
				"count",
				0,
				0
			}
		},
		effect_args = {
			15005
		}
	},
	[50012] = {
		group_type = 0,
		resource_num = 500,
		desc = "500家具币购买一个扩展证",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 6,
		id = 50012,
		genre = "backyard_upgrade",
		discount_time = {},
		limit_args = {
			{
				"count",
				1,
				1
			}
		},
		effect_args = {
			15005
		}
	},
	[50013] = {
		group_type = 0,
		resource_num = 1000,
		desc = "1000家具币购买一个扩展证",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 6,
		id = 50013,
		genre = "backyard_upgrade",
		discount_time = {},
		limit_args = {
			{
				"count",
				2,
				2
			}
		},
		effect_args = {
			15005
		}
	},
	[60001] = {
		group_type = 0,
		resource_num = 300,
		desc = "300钻石购买10级礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60001,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"level",
				10
			},
			{
				"time",
				1
			}
		},
		effect_args = {
			40005
		}
	},
	[60002] = {
		group_type = 0,
		resource_num = 600,
		desc = "600钻石购买20级礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60002,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"level",
				20
			},
			{
				"time",
				1
			}
		},
		effect_args = {
			40006
		}
	},
	[60003] = {
		group_type = 0,
		resource_num = 1000,
		desc = "1000钻石购买30级礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60003,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"level",
				30
			},
			{
				"time",
				1
			}
		},
		effect_args = {
			40007
		}
	},
	[60004] = {
		group_type = 0,
		resource_num = 2000,
		desc = "2000钻石购买50级礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60004,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"level",
				50
			},
			{
				"time",
				1
			}
		},
		effect_args = {
			40008
		}
	},
	[60005] = {
		group_type = 1,
		resource_num = 400,
		desc = "400钻石购买1个日常补给礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 1,
		group_buy_count = 1,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "always",
		group = 1,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60005,
		genre = "gift_package",
		discount_time = {},
		limit_args = {},
		effect_args = {
			40009
		}
	},
	[60006] = {
		group_type = 1,
		resource_num = 900,
		desc = "900钻石购买1个高科技补给礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 1,
		group_buy_count = 1,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "always",
		group = 2,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60006,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"level",
				30
			}
		},
		effect_args = {
			40010
		}
	},
	[60007] = {
		group_type = 0,
		resource_num = 2000,
		desc = "2000钻石购买70级礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60007,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"level",
				70
			},
			{
				"time",
				1
			}
		},
		effect_args = {
			40011
		}
	},
	[60101] = {
		group_type = 1,
		resource_num = 600,
		desc = "600钻石购买限时建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 2,
		group_buy_count = 1,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "stop",
		group = 3,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60101,
		genre = "gift_package",
		discount_time = {},
		limit_args = {},
		effect_args = {
			40001
		}
	},
	[60102] = {
		group_type = 0,
		resource_num = 233,
		desc = "233钻石购买bilibili特别补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "stop",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60102,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				2
			}
		},
		effect_args = {
			40002
		}
	},
	[60103] = {
		group_type = 0,
		resource_num = 200,
		desc = "200钻石购买夏日特别补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60103,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40003
		},
		time = {
			{
				{
					2017,
					7,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2017,
					8,
					22
				},
				{
					13,
					59,
					59
				}
			}
		}
	},
	[60104] = {
		group_type = 1,
		resource_num = 980,
		desc = "980钻石购买夏日建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 2,
		group_buy_count = 1,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 4,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60104,
		genre = "gift_package",
		discount_time = {},
		limit_args = {},
		effect_args = {
			40004
		},
		time = {
			{
				{
					2017,
					7,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2017,
					8,
					22
				},
				{
					13,
					59,
					59
				}
			}
		}
	},
	[60105] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时礼包-比翼双飞",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60105,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40100
		},
		time = {
			{
				{
					2017,
					8,
					23
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2017,
					9,
					4
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60106] = {
		group_type = 0,
		resource_num = 200,
		desc = "200钻石购买红染攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60106,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40003
		},
		time = {
			{
				{
					2017,
					9,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2017,
					10,
					12
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60107] = {
		group_type = 1,
		resource_num = 980,
		desc = "980钻石购买红染建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 2,
		group_buy_count = 1,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 5,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60107,
		genre = "gift_package",
		discount_time = {},
		limit_args = {},
		effect_args = {
			40004
		},
		time = {
			{
				{
					2017,
					9,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2017,
					10,
					12
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60108] = {
		group_type = 0,
		resource_num = 500,
		desc = "500钻石购买家具币礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60108,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40101
		},
		time = {
			{
				{
					2017,
					12,
					19
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					1,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60114] = {
		group_type = 0,
		resource_num = 120,
		desc = "200钻石购买攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60114,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40105
		},
		time = {
			{
				{
					2017,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					1,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60115] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60115,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				2
			}
		},
		effect_args = {
			40104
		},
		time = {
			{
				{
					2017,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					1,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60117] = {
		group_type = 0,
		resource_num = 500,
		desc = "500钻石购买家具币礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60117,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40106
		},
		time = {
			{
				{
					2017,
					10,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					2,
					23
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60118] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时礼包-比翼双飞",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 0,
		time = "stop",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60118,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40100
		}
	},
	[60119] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "stop",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60119,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40104
		}
	},
	[60120] = {
		group_type = 0,
		resource_num = 120,
		desc = "200钻石购买凛冬王冠攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "stop",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60120,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40105
		}
	},
	[60121] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买凛冬王冠建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "stop",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60121,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40104
		}
	},
	[60122] = {
		group_type = 0,
		resource_num = 120,
		desc = "200钻石购买红染攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "stop",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60122,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40105
		}
	},
	[60123] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买红染建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "stop",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60123,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40104
		}
	},
	[60124] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买限时攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60124,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				2
			}
		},
		effect_args = {
			40105
		},
		time = {
			{
				{
					2018,
					5,
					17
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					5,
					29
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60125] = {
		group_type = 0,
		resource_num = 200,
		desc = "200钻石购买长门陆奥攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60125,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40107
		},
		time = {
			{
				{
					2018,
					6,
					7
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					20
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60126] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买长门陆奥建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60126,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40108
		},
		time = {
			{
				{
					2018,
					6,
					7
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					20
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60127] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时礼包-比翼双飞",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60127,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40100
		},
		time = {
			{
				{
					2018,
					6,
					7
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					20
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60128] = {
		group_type = 0,
		resource_num = 200,
		desc = "200钻石购买异色格攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60128,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40109
		},
		time = {
			{
				{
					2018,
					6,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					7,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60129] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买异色格建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60129,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40110
		},
		time = {
			{
				{
					2018,
					6,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					7,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60130] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买限时攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60130,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				2
			}
		},
		effect_args = {
			40105
		},
		time = {
			{
				{
					2018,
					7,
					17
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					7,
					24
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60131] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买法系攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "stop",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60131,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40111
		}
	},
	[60132] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买法系建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "stop",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60132,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40112
		}
	},
	[60133] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时礼包-比翼双飞",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60133,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40100
		},
		time = {
			{
				{
					2018,
					9,
					21
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60134] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买周年庆攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60134,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				2
			}
		},
		effect_args = {
			40105
		},
		time = {
			{
				{
					2018,
					9,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					11
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60135] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买坠落之翼攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60135,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40113
		},
		time = {
			{
				{
					2018,
					10,
					25
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					11,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60136] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买坠落之翼建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60136,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40114
		},
		time = {
			{
				{
					2018,
					10,
					25
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					11,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60137] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买梦幻的交汇攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60137,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40115
		},
		time = {
			{
				{
					2018,
					11,
					29
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					12
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60138] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买梦幻的交汇建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60138,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40116
		},
		time = {
			{
				{
					2018,
					11,
					29
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					12
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60139] = {
		group_type = 0,
		resource_num = 500,
		desc = "500钻石购买家具币礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60139,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40106
		},
		time = {
			{
				{
					2018,
					11,
					29
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					12
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60140] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买限时攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60140,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40117
		},
		time = {
			{
				{
					2018,
					12,
					13
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					19
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60141] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60141,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40118
		},
		time = {
			{
				{
					2018,
					12,
					13
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					19
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60142] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买限时攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60142,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40117
		},
		time = {
			{
				{
					2018,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					26
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60143] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60143,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40118
		},
		time = {
			{
				{
					2018,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					26
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60144] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买限时攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60144,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40117
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60145] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60145,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40118
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60146] = {
		group_type = 0,
		resource_num = 500,
		desc = "500钻石购买家具币礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60146,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				2
			}
		},
		effect_args = {
			40106
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60147] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时礼包-比翼双飞",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60147,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40100
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60148] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买限时攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60148,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40117
		},
		time = {
			{
				{
					2019,
					1,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60149] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60149,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40118
		},
		time = {
			{
				{
					2019,
					1,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60150] = {
		group_type = 0,
		resource_num = 500,
		desc = "500钻石购买家具币礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60150,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				2
			}
		},
		effect_args = {
			40106
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60151] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时礼包-比翼双飞",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60151,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40100
		},
		time = {
			{
				{
					2019,
					2,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					20
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60152] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买限时攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60152,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40117
		},
		time = {
			{
				{
					2019,
					1,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					3,
					6
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60153] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60153,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40118
		},
		time = {
			{
				{
					2019,
					1,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					3,
					6
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60154] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买限时攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60154,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				2
			}
		},
		effect_args = {
			40117
		},
		time = {
			{
				{
					2019,
					3,
					7
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					3,
					19
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60155] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买限时攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60155,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				2
			}
		},
		effect_args = {
			40117
		},
		time = {
			{
				{
					2019,
					3,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					3,
					27
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60156] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60156,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40118
		},
		time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60157] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买限时攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60157,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40117
		},
		time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60158] = {
		group_type = 0,
		resource_num = 980,
		desc = "980钻石购买限时建造补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60158,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40118
		},
		time = {
			{
				{
					2019,
					4,
					26
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[60159] = {
		group_type = 0,
		resource_num = 120,
		desc = "120钻石购买限时攻略补给",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 60159,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				5
			}
		},
		effect_args = {
			40117
		},
		time = {
			{
				{
					2019,
					4,
					26
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[61001] = {
		group_type = 0,
		resource_num = 200,
		desc = "200钻石扩展船坞容量+10",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "ship_bag_size",
		group = 0,
		num = 10,
		discount = 0,
		resource_type = 14,
		id = 61001,
		genre = "gem_shop",
		discount_time = {},
		limit_args = {}
	},
	[61002] = {
		group_type = 0,
		resource_num = 100,
		desc = "100钻石扩展装备容量+20",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "equip_bag_size",
		group = 0,
		num = 20,
		discount = 0,
		resource_type = 14,
		id = 61002,
		genre = "gem_shop",
		discount_time = {},
		limit_args = {}
	},
	[61003] = {
		group_type = 0,
		resource_num = 300,
		desc = "300钻石购买11个心智魔方",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 11,
		discount = 0,
		resource_type = 14,
		id = 61003,
		genre = "gem_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			20001
		}
	},
	[61004] = {
		group_type = 0,
		resource_num = 200,
		desc = "200钻石购买11个快速完成工具",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 11,
		discount = 0,
		resource_type = 14,
		id = 61004,
		genre = "gem_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			15003
		}
	},
	[61005] = {
		group_type = 0,
		resource_num = 100,
		desc = "花费100钻石购买3000物资",
		type = 1,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 3000,
		discount = 0,
		resource_type = 14,
		id = 61005,
		genre = "gem_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			1
		}
	},
	[61006] = {
		group_type = 0,
		resource_num = 450,
		desc = "花费450钻石购买15000物资",
		type = 1,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 15000,
		discount = 0,
		resource_type = 14,
		id = 61006,
		genre = "gem_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			1
		}
	},
	[61007] = {
		group_type = 0,
		resource_num = 600,
		desc = "600钻石购买1个誓约之戒",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 61007,
		genre = "gem_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			15006
		}
	},
	[61008] = {
		group_type = 0,
		resource_num = 300,
		desc = "300钻石购买11个心智魔方",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 11,
		discount = 0,
		resource_type = 14,
		id = 61008,
		genre = "",
		discount_time = {},
		limit_args = {},
		effect_args = {
			20001
		}
	},
	[61009] = {
		group_type = 0,
		resource_num = 200,
		desc = "200钻石购买11个快速完成工具",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 4,
		time = "always",
		group = 0,
		num = 11,
		discount = 0,
		resource_type = 14,
		id = 61009,
		genre = "",
		discount_time = {},
		limit_args = {},
		effect_args = {
			15003
		}
	},
	[61010] = {
		group_type = 0,
		resource_num = 300,
		desc = "300钻石购买1个改名卡",
		type = 2,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 0,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 61010,
		genre = "gem_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			15009
		}
	},
	[61011] = {
		group_type = 0,
		resource_num = 500,
		desc = "500钻石购买家具币礼包",
		type = 2,
		is_auto_use = 1,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 61011,
		genre = "gift_package",
		discount_time = {},
		limit_args = {
			{
				"time",
				1
			}
		},
		effect_args = {
			40106
		},
		time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[61012] = {
		group_type = 0,
		resource_num = 80,
		desc = "80钻石扩展猫窝容量+5",
		type = 0,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 0,
		time = "always",
		effect_args = "commander_bag_size",
		group = 0,
		num = 5,
		discount = 0,
		resource_type = 14,
		id = 61012,
		genre = "gem_shop",
		discount_time = {},
		limit_args = {
			{
				"level",
				40
			}
		}
	},
	[70001] = {
		group_type = 0,
		resource_num = 800,
		desc = "购买皮肤:虚幻的幸福",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70001,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					2,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					20
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			213011
		}
	},
	[70002] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:沙滩狂想曲",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70002,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			303112
		}
	},
	[70003] = {
		group_type = 0,
		resource_num = 600,
		desc = "购买皮肤:乐园的彼岸花",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70003,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			307011
		}
	},
	[70004] = {
		group_type = 0,
		resource_num = 600,
		desc = "购买皮肤:常夏的杀生石",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70004,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			307021
		}
	},
	[70005] = {
		group_type = 0,
		resource_num = 800,
		desc = "购买皮肤:照耀太阳的淑女",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70005,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			204031
		}
	},
	[70007] = {
		group_type = 0,
		resource_num = 600,
		desc = "购买皮肤:七海的憩日",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70007,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			107031
		}
	},
	[70008] = {
		group_type = 0,
		resource_num = 800,
		desc = "购买皮肤:未来的海滨上将",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70008,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			205041
		}
	},
	[70009] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:盛夏进行曲",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70009,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			303121
		}
	},
	[70011] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:阳光照耀着温莎",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70011,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			205061
		}
	},
	[70013] = {
		group_type = 0,
		resource_num = 800,
		desc = "购买皮肤:月宫玉兔",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70013,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					21
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					9,
					27
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			502022
		}
	},
	[70014] = {
		group_type = 0,
		resource_num = 800,
		desc = "购买皮肤:桂花玉兔",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70014,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					21
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					9,
					27
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			502032
		}
	},
	[70017] = {
		group_type = 0,
		resource_num = 600,
		desc = "购买皮肤:万圣节·祥凤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70017,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			306051
		}
	},
	[70018] = {
		group_type = 0,
		resource_num = 800,
		desc = "购买皮肤:万圣节·克利夫兰",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70018,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			102091
		}
	},
	[70019] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:万圣节·绫波",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70019,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301051
		}
	},
	[70020] = {
		group_type = 0,
		resource_num = 600,
		desc = "购买皮肤:万圣节·阳炎",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70020,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301171
		}
	},
	[70021] = {
		group_type = 0,
		resource_num = 800,
		desc = "购买皮肤:下午茶光辉",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70021,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			207031
		}
	},
	[70022] = {
		group_type = 0,
		resource_num = 650,
		desc = "购买皮肤:下午茶雷",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70022,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301111
		}
	},
	[70023] = {
		group_type = 0,
		resource_num = 650,
		desc = "购买皮肤:下午茶电",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70023,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301121
		}
	},
	[70024] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:埃尔德里奇圣诞皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70024,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					26
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			101261
		}
	},
	[70025] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:企业圣诞皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70025,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					26
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			107061
		}
	},
	[70026] = {
		group_type = 0,
		resource_num = 680,
		desc = "购买皮肤:山城圣诞皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70026,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					26
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			305022
		}
	},
	[70027] = {
		group_type = 0,
		resource_num = 680,
		desc = "购买皮肤:小天鹅圣诞皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70027,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					26
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			201102
		}
	},
	[70028] = {
		group_type = 0,
		resource_num = 680,
		desc = "购买皮肤:圣地亚哥圣诞皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70028,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					26
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			102081
		}
	},
	[70029] = {
		group_type = 0,
		resource_num = 600,
		desc = "购买皮肤:睦月圣诞皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70029,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					26
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301321
		}
	},
	[70030] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:爱宕春节皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70030,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			303122
		}
	},
	[70031] = {
		group_type = 0,
		resource_num = 680,
		desc = "购买皮肤:苍龙春节皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70031,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			307031
		}
	},
	[70032] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:赤城春节皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70032,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			307012
		}
	},
	[70033] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:加贺春节皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70033,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			307022
		}
	},
	[70034] = {
		group_type = 0,
		resource_num = 680,
		desc = "购买皮肤:拉菲春节皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70034,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			101172
		}
	},
	[70035] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:明石春节皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70035,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			312011
		}
	},
	[70036] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:欧根春节皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70036,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			403032
		}
	},
	[70037] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:夕立春节皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70037,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301141
		}
	},
	[70038] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:绀紫之心礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70038,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					13
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			10100051
		}
	},
	[70039] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:圣黑之心礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70039,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					13
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			10100061
		}
	},
	[70040] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:群白之心礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70040,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					13
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			10100071
		}
	},
	[70041] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:翡绿之心礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70041,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					13
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			10100081
		}
	},
	[70042] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:高雄旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 5,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70042,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			303113
		}
	},
	[70043] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:欧若拉旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 5,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70043,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			202151
		}
	},
	[70044] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:吸血鬼旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 5,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70044,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			201231
		}
	},
	[70045] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:独角兽旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 5,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70045,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			206032
		}
	},
	[70046] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:长春旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 5,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70046,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			501031
		}
	},
	[70047] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:圣路易斯旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 5,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70047,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			102131
		}
	},
	[70048] = {
		group_type = 0,
		resource_num = 680,
		desc = "购买皮肤:扶桑旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 5,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70048,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			305011
		}
	},
	[70049] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:尼古拉斯护士服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70049,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			101311
		}
	},
	[70050] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:埃尔德里奇校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70050,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					3,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					4,
					4
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			101262
		}
	},
	[70051] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:爱丁堡校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70051,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					3,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					4,
					4
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			202111
		}
	},
	[70052] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:苍龙校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70052,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					3,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					4,
					4
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			307032
		}
	},
	[70053] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:飞龙校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70053,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					3,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					4,
					4
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			307041
		}
	},
	[70054] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:火奴鲁鲁校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70054,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					3,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					4,
					4
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			102121
		}
	},
	[70055] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:吹雪校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70055,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					3,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					4,
					4
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301011
		}
	},
	[70056] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:Z1校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70056,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					3,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					4,
					4
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			401011
		}
	},
	[70057] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:雪风皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70057,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301161
		}
	},
	[70058] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:谷风皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70058,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301621
		}
	},
	[70059] = {
		group_type = 0,
		resource_num = 800,
		desc = "购买皮肤:斯佩伯爵校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 2,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70059,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					5,
					9
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					15
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			403051
		}
	},
	[70060] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:雾岛校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 6,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70060,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			304041
		},
		time = {
			{
				{
					2018,
					5,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					6,
					21
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70061] = {
		group_type = 0,
		resource_num = 800,
		desc = "购买皮肤:绫波私服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70061,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301053
		}
	},
	[70062] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:白露女仆",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70062,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					3,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					3,
					27
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301131
		}
	},
	[70063] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:夕暮女仆",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70063,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					3,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					3,
					27
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301261
		}
	},
	[70064] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:卯月",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70064,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301351
		}
	},
	[70065] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:光荣JK",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70065,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					10,
					18
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					24
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			207061
		}
	},
	[70066] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:阿卡司塔皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70066,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					10,
					18
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					24
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			201021
		}
	},
	[70067] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:朝潮校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70067,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301631
		},
		time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70068] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:榛名校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70068,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			304031
		},
		time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70069] = {
		group_type = 0,
		resource_num = 800,
		desc = "购买皮肤:江风皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70069,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301491
		},
		time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70070] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:文月睡衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70070,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301381
		},
		time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70071] = {
		group_type = 0,
		resource_num = 800,
		desc = "购买皮肤:君主礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70071,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			299021
		}
	},
	[70072] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:高雄JK",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70072,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			303114
		}
	},
	[70073] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:爱宕JK",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70073,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			303123
		}
	},
	[70076] = {
		group_type = 0,
		resource_num = 1180,
		desc = "购买皮肤:Z46泳装",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70076,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			401461
		},
		time = {
			{
				{
					2018,
					6,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					7,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70077] = {
		group_type = 0,
		resource_num = 1180,
		desc = "购买皮肤:齐柏林泳装",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70077,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			407011
		},
		time = {
			{
				{
					2018,
					6,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					7,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70078] = {
		group_type = 0,
		resource_num = 1180,
		desc = "购买皮肤:提尔比茨皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70078,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			405021
		},
		time = {
			{
				{
					2018,
					8,
					9
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					8,
					19
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70079] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:U47皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70079,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			408021
		},
		time = {
			{
				{
					2018,
					6,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					7,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70081] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:Z25泳装",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70081,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			401251
		},
		time = {
			{
				{
					2018,
					6,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					7,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70082] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:阿斯托利亚校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 6,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70082,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					1,
					17
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					23
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			103081
		},
		time = {
			{
				{
					2019,
					1,
					17
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					23
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70083] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:昆西泳装",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 6,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70083,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					1,
					17
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					23
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			103091
		},
		time = {
			{
				{
					2019,
					1,
					17
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					23
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70084] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:文森斯睡衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 6,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70084,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					1,
					17
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					23
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			103101
		},
		time = {
			{
				{
					2019,
					1,
					17
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					23
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70085] = {
		group_type = 0,
		resource_num = 1080,
		desc = "购买皮肤:埃米尔·贝尔汀-泳装 ",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70085,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			802011
		},
		time = {
			{
				{
					2018,
					7,
					26
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					8,
					8
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70086] = {
		group_type = 0,
		resource_num = 1080,
		desc = "购买皮肤:敦刻尔克泳装",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70086,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			904011
		},
		time = {
			{
				{
					2018,
					8,
					2
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					8,
					8
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70087] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:福尔班常服 ",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70087,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			801021
		},
		time = {
			{
				{
					2018,
					7,
					26
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					8,
					8
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70089] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:皇家方舟泳装",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70089,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					8,
					15
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					8,
					21
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			207021
		}
	},
	[70090] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:三笠皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 2,
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70090,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					4,
					4
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			305111
		},
		time = {
			{
				{
					2019,
					4,
					4
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70091] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:比叡睡衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 2,
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70091,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					4,
					4
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			304021
		},
		time = {
			{
				{
					2019,
					4,
					4
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70092] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:滨风校服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 2,
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70092,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					4,
					4
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301611
		},
		time = {
			{
				{
					2019,
					4,
					4
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70093] = {
		group_type = 0,
		resource_num = 1180,
		desc = "购买皮肤:半人马泳装",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70093,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					8,
					30
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					9,
					5
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			206041
		}
	},
	[70095] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:女灶神泳装",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "stop",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70095,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					6
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					9,
					12
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			112011
		}
	},
	[70096] = {
		group_type = 0,
		resource_num = 1080,
		desc = "购买皮肤:吹雪礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70096,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301013
		}
	},
	[70097] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:欧若拉礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70097,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			202152
		}
	},
	[70098] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:伊丽莎白礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70098,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			205011
		}
	},
	[70099] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:阿贾克斯礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70099,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			202031
		}
	},
	[70100] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:明石礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70100,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			312012
		}
	},
	[70101] = {
		group_type = 0,
		resource_num = 1080,
		desc = "购买皮肤:克利夫兰礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70101,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			102092
		}
	},
	[70102] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:女将礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70102,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			201011
		}
	},
	[70103] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:南达科他礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70103,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			105141
		}
	},
	[70104] = {
		group_type = 0,
		resource_num = 1180,
		desc = "购买皮肤:大凤礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70104,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			307071
		}
	},
	[70105] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:U81礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70105,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			408011
		}
	},
	[70106] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:光辉礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70106,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					7
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			207032
		}
	},
	[70107] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:纽卡斯尔皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70107,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			202191
		}
	},
	[70108] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:晓皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70108,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					9,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					4
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301091
		}
	},
	[70109] = {
		group_type = 0,
		resource_num = 1080,
		desc = "购买皮肤:火奴鲁鲁皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70109,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					10,
					11
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					17
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			102122
		},
		time = {
			{
				{
					2018,
					10,
					11
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70110] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:神通皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70110,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					10,
					11
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					17
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			302131
		},
		time = {
			{
				{
					2018,
					10,
					11
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					10,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70111] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:霍比皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70111,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			101361
		},
		time = {
			{
				{
					2018,
					10,
					25
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					11,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70112] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:科尔克皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70112,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			101371
		},
		time = {
			{
				{
					2018,
					10,
					25
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					11,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70113] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤:明尼阿波利斯皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70113,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			103131
		},
		time = {
			{
				{
					2018,
					10,
					25
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					11,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70114] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:五十铃皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70114,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			302051
		},
		time = {
			{
				{
					2018,
					10,
					30
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					11,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70115] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:恐怖皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70115,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			213021
		},
		time = {
			{
				{
					2018,
					10,
					30
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					11,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70116] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤:纳尔逊皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70116,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			205031
		},
		time = {
			{
				{
					2018,
					10,
					30
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					11,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70117] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤:康克德浴衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70117,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2018,
					11,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					11,
					20
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			102181
		}
	},
	[70118] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：久远皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70118,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			10300011
		},
		time = {
			{
				{
					2018,
					11,
					29
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					12
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70119] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：喵音皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70119,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			10300021
		},
		time = {
			{
				{
					2018,
					11,
					29
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					12
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70120] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：乌璐露皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70120,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			10300041
		},
		time = {
			{
				{
					2018,
					11,
					29
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					12
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70121] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：萨拉娜皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70121,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			10300051
		},
		time = {
			{
				{
					2018,
					11,
					29
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					12
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70122] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：露露缇耶皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70122,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			10300031
		},
		time = {
			{
				{
					2018,
					11,
					29
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					12
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70123] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：芙米露露皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70123,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			10300061
		},
		time = {
			{
				{
					2018,
					11,
					29
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					12
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70125] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤：斯佩常服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 1,
		time_second = 0,
		order = 2,
		time = "always",
		group = 0,
		num = 1,
		discount = 20,
		resource_type = 14,
		id = 70125,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					5,
					9
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					15
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			403052
		}
	},
	[70126] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：圣诞尼古拉斯",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70126,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			101312
		},
		time = {
			{
				{
					2018,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					26
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70127] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：圣诞厌战",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70127,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			205021
		},
		time = {
			{
				{
					2018,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					26
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70128] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：圣诞浦风",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70128,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301591
		},
		time = {
			{
				{
					2018,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					26
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70129] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：圣诞火奴鲁鲁",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70129,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			102123
		},
		time = {
			{
				{
					2018,
					12,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2018,
					12,
					26
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70130] = {
		group_type = 0,
		resource_num = 1180,
		desc = "购买皮肤：埃尔德里奇浴衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70130,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			101263
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70131] = {
		group_type = 0,
		resource_num = 1180,
		desc = "购买皮肤：伊吹浴衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70131,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			399011
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70132] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：出云浴衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70132,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			399021
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70133] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：威尔士浴衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70133,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			205062
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70134] = {
		group_type = 0,
		resource_num = 1080,
		desc = "购买皮肤：圣路易斯浴衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70134,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			102132
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70135] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：矶风新年",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70135,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301601
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70136] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：海伦娜浴衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70136,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			102051
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70137] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：蒙彼利埃浴衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70137,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			102141
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70138] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：足柄浴衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70138,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			303091
		},
		time = {
			{
				{
					2018,
					12,
					27
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70139] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤：初春冬装",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 10,
		resource_type = 14,
		id = 70139,
		genre = "skin_shop",
		discount_time = {
			{
				{
					2019,
					1,
					10
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					16
				},
				{
					23,
					59,
					59
				}
			}
		},
		limit_args = {},
		effect_args = {
			301211
		}
	},
	[70140] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：文森斯JK-悠哉进行曲",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70140,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			103102
		},
		time = {
			{
				{
					2019,
					1,
					17
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					1,
					23
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70141] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：胜利-常服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70141,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			207041
		},
		time = {
			{
				{
					2019,
					1,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70142] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤：谢菲尔德-常服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70142,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			202081
		},
		time = {
			{
				{
					2019,
					1,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70143] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：约克公爵-晚礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70143,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			205072
		},
		time = {
			{
				{
					2019,
					1,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70144] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：牙买加-常服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70144,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			202171
		},
		time = {
			{
				{
					2019,
					1,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70145] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：天狼星-晚礼服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70145,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			202201
		},
		time = {
			{
				{
					2019,
					1,
					24
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70146] = {
		group_type = 0,
		resource_num = 1180,
		desc = "购买皮肤：贝尔法斯特旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70146,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			202121
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70147] = {
		group_type = 0,
		resource_num = 1080,
		desc = "购买皮肤：拉菲春节",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70147,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			101173
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70148] = {
		group_type = 0,
		resource_num = 1080,
		desc = "购买皮肤：太原-春节",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70148,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			501041
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70149] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：企业-春节",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70149,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			107062
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70150] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：半人马-旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70150,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			206042
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70151] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：君主旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70151,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			299022
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70152] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：夕暮旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70152,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301262
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70153] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：绫波春节",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70153,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301054
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70154] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：列克星敦旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70154,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			107021
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70156] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：马拉尼旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70156,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			101392
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70157] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：库拉索旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70157,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			202211
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70158] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：杓鹬旗袍",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70158,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			202221
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70159] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：追赶者春节",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70159,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			206051
		},
		time = {
			{
				{
					2019,
					1,
					31
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					13
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70160] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：扶桑人妻",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70160,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			305012
		},
		time = {
			{
				{
					2019,
					2,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					20
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70161] = {
		group_type = 0,
		resource_num = 1080,
		desc = "购买皮肤：独角兽JK",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70161,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			206033
		},
		time = {
			{
				{
					2019,
					2,
					14
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					2,
					20
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70162] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：香格里拉皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70162,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			107381
		},
		time = {
			{
				{
					2019,
					2,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					3,
					6
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70163] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：独立皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 7,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70163,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			107221
		},
		time = {
			{
				{
					2019,
					2,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					3,
					6
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70164] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：波特兰JK",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70164,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			103061
		}
	},
	[70165] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：印第安纳波利斯JK",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 0,
		order = 8,
		time = "always",
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70165,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			103071
		}
	},
	[70171] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：三笠春装",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 1,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70171,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			305112
		},
		time = {
			{
				{
					2019,
					4,
					4
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70172] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：小天鹅皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 3,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70172,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			201104
		},
		time = {
			{
				{
					2019,
					3,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					3,
					27
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70166] = {
		group_type = 0,
		resource_num = 880,
		desc = "购买皮肤：长门睡衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 3,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70166,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			305051
		},
		time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70167] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：金刚浴衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 4,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70167,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			304011
		},
		time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70168] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：宵月运动服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 4,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70168,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301581
		},
		time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70170] = {
		group_type = 0,
		resource_num = 800,
		desc = "购买皮肤：光辉韩服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 3,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70170,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			207033
		},
		time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70173] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：陆奥战国皮肤",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 4,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70173,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			305061
		},
		time = {
			{
				{
					2019,
					3,
					28
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					4,
					17
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70174] = {
		group_type = 0,
		resource_num = 780,
		desc = "购买皮肤：绊爱浴衣",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 3,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70174,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			10400011
		},
		time = {
			{
				{
					2019,
					4,
					26
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70175] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤：拉菲coco",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 3,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70175,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			101174
		},
		time = {
			{
				{
					2019,
					4,
					26
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					8
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70176] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤：标枪coco",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 3,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70176,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			201213
		},
		time = {
			{
				{
					2019,
					4,
					26
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					8
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70177] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤：凌波coco",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 3,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70177,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301055
		},
		time = {
			{
				{
					2019,
					4,
					26
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					8
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70178] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤：Z23coco",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 3,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70178,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			401233
		},
		time = {
			{
				{
					2019,
					4,
					26
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					8
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70179] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤：萨拉托加爱酱联动",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 3,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70179,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			107033
		},
		time = {
			{
				{
					2019,
					4,
					26
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70180] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤：鞍山海军",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 3,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70180,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			501011
		},
		time = {
			{
				{
					2019,
					4,
					26
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70181] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤：孟菲斯常服",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 1,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70181,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			102161
		},
		time = {
			{
				{
					2019,
					5,
					9
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[70182] = {
		group_type = 0,
		resource_num = 700,
		desc = "购买皮肤：布什小画家",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 2,
		time_second = 0,
		order = 1,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 14,
		id = 70182,
		genre = "skin_shop",
		discount_time = {},
		limit_args = {},
		effect_args = {
			101331
		},
		time = {
			{
				{
					2019,
					5,
					9
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					15
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[90001] = {
		group_type = 0,
		resource_num = 1,
		desc = "限时皮肤体验：光辉-永不落幕的茶会",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 172800,
		order = 1,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 125,
		id = 90001,
		genre = "skin_shop_timelimit",
		discount_time = {},
		limit_args = {},
		effect_args = {
			207031
		},
		time = {
			{
				{
					2019,
					5,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					30
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[90002] = {
		group_type = 0,
		resource_num = 1,
		desc = "限时皮肤体验：夕暮-女仆练习生",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 172800,
		order = 2,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 125,
		id = 90002,
		genre = "skin_shop_timelimit",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301261
		},
		time = {
			{
				{
					2019,
					5,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					30
				},
				{
					23,
					59,
					59
				}
			}
		}
	},
	[90003] = {
		group_type = 0,
		resource_num = 1,
		desc = "限时皮肤体验：卯月-贪睡的天使",
		type = 6,
		is_auto_use = 0,
		group_limit = 0,
		group_buy_count = 0,
		tag = 0,
		time_second = 172800,
		order = 3,
		group = 0,
		num = 1,
		discount = 0,
		resource_type = 125,
		id = 90003,
		genre = "skin_shop_timelimit",
		discount_time = {},
		limit_args = {},
		effect_args = {
			301351
		},
		time = {
			{
				{
					2019,
					5,
					20
				},
				{
					0,
					0,
					0
				}
			},
			{
				{
					2019,
					5,
					30
				},
				{
					23,
					59,
					59
				}
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
		15,
		16,
		17,
		18,
		19,
		20,
		21,
		23,
		21001,
		21002,
		21003,
		21004,
		21005,
		21006,
		21007,
		21008,
		21009,
		21010,
		21011,
		21012,
		21013,
		21014,
		21015,
		21016,
		21017,
		21018,
		21019,
		21020,
		21021,
		21022,
		21023,
		21024,
		21025,
		21026,
		21027,
		21028,
		21029,
		21030,
		21031,
		21032,
		23001,
		24001,
		24002,
		24003,
		24004,
		24005,
		24006,
		24007,
		24008,
		24009,
		24010,
		24011,
		24012,
		24013,
		31011,
		31012,
		31013,
		31014,
		31111,
		31112,
		31113,
		31114,
		31021,
		31022,
		31023,
		31024,
		31121,
		31122,
		31123,
		31124,
		31031,
		31032,
		31033,
		31034,
		31131,
		31132,
		31133,
		31134,
		31041,
		31042,
		31043,
		31044,
		31141,
		31142,
		31143,
		31144,
		31988,
		31989,
		31990,
		31991,
		31992,
		31993,
		31994,
		31995,
		31996,
		31997,
		31998,
		31999,
		33011,
		33012,
		33013,
		33014,
		33021,
		33022,
		33023,
		33024,
		33031,
		33032,
		33033,
		33034,
		33041,
		33042,
		33043,
		33044,
		43001,
		43002,
		43003,
		43004,
		50002,
		50003,
		50004,
		50005,
		50006,
		50007,
		50008,
		50009,
		50011,
		50012,
		50013,
		60001,
		60002,
		60003,
		60004,
		60005,
		60006,
		60007,
		60101,
		60102,
		60103,
		60104,
		60105,
		60106,
		60107,
		60108,
		60114,
		60115,
		60117,
		60118,
		60119,
		60120,
		60121,
		60122,
		60123,
		60124,
		60125,
		60126,
		60127,
		60128,
		60129,
		60130,
		60131,
		60132,
		60133,
		60134,
		60135,
		60136,
		60137,
		60138,
		60139,
		60140,
		60141,
		60142,
		60143,
		60144,
		60145,
		60146,
		60147,
		60148,
		60149,
		60150,
		60151,
		60152,
		60153,
		60154,
		60155,
		60156,
		60157,
		60158,
		60159,
		61001,
		61002,
		61003,
		61004,
		61005,
		61006,
		61007,
		61008,
		61009,
		61010,
		61011,
		61012,
		70001,
		70002,
		70003,
		70004,
		70005,
		70007,
		70008,
		70009,
		70011,
		70013,
		70014,
		70017,
		70018,
		70019,
		70020,
		70021,
		70022,
		70023,
		70024,
		70025,
		70026,
		70027,
		70028,
		70029,
		70030,
		70031,
		70032,
		70033,
		70034,
		70035,
		70036,
		70037,
		70038,
		70039,
		70040,
		70041,
		70042,
		70043,
		70044,
		70045,
		70046,
		70047,
		70048,
		70049,
		70050,
		70051,
		70052,
		70053,
		70054,
		70055,
		70056,
		70057,
		70058,
		70059,
		70060,
		70061,
		70062,
		70063,
		70064,
		70065,
		70066,
		70067,
		70068,
		70069,
		70070,
		70071,
		70072,
		70073,
		70076,
		70077,
		70078,
		70079,
		70081,
		70082,
		70083,
		70084,
		70085,
		70086,
		70087,
		70089,
		70090,
		70091,
		70092,
		70093,
		70095,
		70096,
		70097,
		70098,
		70099,
		70100,
		70101,
		70102,
		70103,
		70104,
		70105,
		70106,
		70107,
		70108,
		70109,
		70110,
		70111,
		70112,
		70113,
		70114,
		70115,
		70116,
		70117,
		70118,
		70119,
		70120,
		70121,
		70122,
		70123,
		70125,
		70126,
		70127,
		70128,
		70129,
		70130,
		70131,
		70132,
		70133,
		70134,
		70135,
		70136,
		70137,
		70138,
		70139,
		70140,
		70141,
		70142,
		70143,
		70144,
		70145,
		70146,
		70147,
		70148,
		70149,
		70150,
		70151,
		70152,
		70153,
		70154,
		70156,
		70157,
		70158,
		70159,
		70160,
		70161,
		70162,
		70163,
		70164,
		70165,
		70171,
		70172,
		70166,
		70167,
		70168,
		70170,
		70173,
		70174,
		70175,
		70176,
		70177,
		70178,
		70179,
		70180,
		70181,
		70182,
		90001,
		90002,
		90003
	}
}

return
