return {
	{
		desc = "与{namecode:91}同在一个舰队时，自身航空性能提高15.0%",
		addition = {
			"15.0%(+2.2%)"
		}
	},
	{
		desc = "与{namecode:91}同在一个舰队时，自身航空性能提高17.2%",
		addition = {
			"17.2%(+2.2%)"
		}
	},
	{
		desc = "与{namecode:91}同在一个舰队时，自身航空性能提高19.4%",
		addition = {
			"19.4%(+2.2%)"
		}
	},
	{
		desc = "与{namecode:91}同在一个舰队时，自身航空性能提高21.6%",
		addition = {
			"21.6%(+2.2%)"
		}
	},
	{
		desc = "与{namecode:91}同在一个舰队时，自身航空性能提高23.8%",
		addition = {
			"23.8%(+2.2%)"
		}
	},
	{
		desc = "与{namecode:91}同在一个舰队时，自身航空性能提高26.0%",
		addition = {
			"26.0%(+2.2%)"
		}
	},
	{
		desc = "与{namecode:91}同在一个舰队时，自身航空性能提高28.2%",
		addition = {
			"28.2%(+2.2%)"
		}
	},
	{
		desc = "与{namecode:91}同在一个舰队时，自身航空性能提高30.4%",
		addition = {
			"30.4%(+2.2%)"
		}
	},
	{
		desc = "与{namecode:91}同在一个舰队时，自身航空性能提高32.6%",
		addition = {
			"32.6%(+2.4%)"
		}
	},
	{
		desc = "与{namecode:91}同在一个舰队时，自身航空性能提高35.0%",
		addition = {
			"35.0%"
		}
	},
	desc_get = "与{namecode:91}同在一个舰队时，自身航空性能提高15.0%(满级35.0%)",
	name = "{namecode:100}",
	init_effect = "",
	id = 10440,
	time = 0,
	picture = "",
	desc = "与{namecode:91}同在一个舰队时，自身航空性能提高$1",
	stack = 1,
	color = "yellow",
	icon = 10440,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onStartGame"
			},
			arg_list = {
				check_target = "TargetTemplate",
				minTargetNumber = 1,
				skill_id = 10440,
				target = "TargetSelf",
				targetTemplateIDList = {
					307011,
					307012,
					307013,
					307014,
					307091,
					307092,
					307093,
					307094
				}
			}
		}
	}
}
