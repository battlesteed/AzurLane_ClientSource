return {
	{},
	time = 0,
	name = "全弹发射",
	init_effect = "",
	id = 29311,
	picture = "",
	desc = "进入战斗后，触发专属弹幕-U47I",
	stack = 1,
	color = "red",
	icon = 29310,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onSubmarineRaid"
			},
			arg_list = {
				quota = 1,
				skill_id = 29311,
				target = "TargetSelf"
			}
		}
	}
}
