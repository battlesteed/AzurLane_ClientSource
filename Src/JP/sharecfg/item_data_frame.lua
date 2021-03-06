pg = pg or {}
pg.item_data_frame = {
	[0] = {
		name = "デフォルト",
		time_second = 0,
		id = 0,
		time_limit_type = 0,
		desc = "デフォルトのフレーム。秘書艦がケッコン済み艦船\nの場合は「ケッコン」仕様になります",
		scene = {}
	},
	[101] = {
		name = "一周年記念",
		time_second = 0,
		id = 101,
		time_limit_type = 0,
		desc = "<color=#ffffff>First　Anniversary！</color>\n「再誕の暁」使用で開放可能",
		scene = {}
	},
	[300] = {
		name = "カリスマ指揮官",
		time_second = 2592000,
		id = 300,
		time_limit_type = 1,
		desc = "<color=#ffffff>カムバックミッションの累計Pt入手数報酬で開放可能\n（30日限定）</color>",
		scene = {}
	},
	[301] = {
		name = "フレンドシップ",
		time_second = 2592000,
		id = 301,
		time_limit_type = 1,
		desc = "<color=#ffffff>カムバックミッションで開放可能（30日限定）</color>",
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
