pg = pg or {}
pg.item_data_frame = {
	[0] = {
		name = "默认装扮",
		time_second = 0,
		id = 0,
		time_limit_type = 0,
		desc = "<color=#ffffff>不设置任何头像框</color>\n该状态下将誓约角色设置为秘书舰，可显示誓约头像框",
		scene = {}
	},
	[101] = {
		name = "一周年纪念",
		time_second = 0,
		id = 101,
		time_limit_type = 0,
		desc = "<color=#ffffff>献给所有一年间持续奋斗在港区的指挥官们</color>\n开启「再诞·曙光」纪念币获取",
		scene = {}
	},
	[300] = {
		name = "召集者",
		time_second = 2592000,
		id = 300,
		time_limit_type = 1,
		desc = "<color=#ffffff>感谢您对于动员指令的响应，指挥官</color>\n有效期30天",
		scene = {}
	},
	[301] = {
		name = "回归者",
		time_second = 2592000,
		id = 301,
		time_limit_type = 1,
		desc = "<color=#ffffff>指挥部欢迎您的归来，期待您今后的活跃，指挥官</color>\n有效期30天",
		scene = {}
	},
	all = {
		0,
		101,
		300,
		301
	}
}

return
