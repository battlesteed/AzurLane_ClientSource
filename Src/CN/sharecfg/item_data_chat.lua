pg = pg or {}
pg.item_data_chat = {
	[0] = {
		name = "默认装扮",
		time_second = 0,
		id = 0,
		time_limit_type = 0,
		desc = "不设置任何聊天气泡",
		scene = {}
	},
	[101] = {
		name = "一周年纪念",
		time_second = 0,
		id = 101,
		time_limit_type = 0,
		desc = "献给所有一年间持续奋斗在港区的指挥官们\n<color=#A7A7AAFF>开启「再诞·曙光」纪念币获取</color>",
		scene = {}
	},
	[301] = {
		name = "回归者",
		time_second = 2592000,
		id = 301,
		time_limit_type = 1,
		desc = "指挥部欢迎您的归来，期待您今后的活跃，指挥官\n<color=#A7A7AAFF>有效期30天</color>",
		scene = {}
	},
	all = {
		0,
		101,
		301
	}
}

return
