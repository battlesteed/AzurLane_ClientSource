pg = pg or {}
pg.strategy_data_template = {
	{
		buff_id = 100,
		name = "단종진",
		type = 1,
		id = 1,
		icon = "1",
		desc = "다음 전투에서 모든 함선의 포격, 뇌장+15%, 기동-10%",
		arg = {}
	},
	{
		buff_id = 110,
		name = "복종진",
		type = 1,
		id = 2,
		icon = "2",
		desc = "다음 전투에서 모든 함선의 기동+30%, 포격, 뇌장-5%",
		arg = {}
	},
	{
		buff_id = 120,
		name = "윤형진",
		type = 1,
		id = 3,
		icon = "3",
		desc = "다음 전투에서 모든 함선의 대공+20%",
		arg = {}
	},
	{
		buff_id = 0,
		name = "긴급수리",
		type = 2,
		id = 4,
		icon = "4",
		desc = "전투에 참여할 수 있는 함선의 HP를 10% 회복",
		arg = {
			healthy,
			10
		}
	},
	[9] = {
		buff_id = 0,
		name = "교환",
		type = 2,
		id = 9,
		icon = "9",
		desc = "与友方队伍交换位置",
		arg = {
			exchange
		}
	},
	[90] = {
		buff_id = 90,
		name = "위기일발!",
		type = 90,
		id = 90,
		icon = "90",
		desc = "다음 전투중 키즈나 아이가 방해한다 : 잠수함 요청/함재기 공격/ 어뢰발사/주포 발사 스킬 마비(자율 모드 포함), 방해중인 키즈나 아이를 연속해서 클릭하면 제거할 수 있다.",
		arg = {}
	},
	[91] = {
		buff_id = 91,
		name = "위기 회피~",
		type = 90,
		id = 91,
		icon = "91",
		desc = "위기회피~ 전투 중 방해하지 않는다.",
		arg = {}
	},
	[10001] = {
		buff_id = 200,
		name = "완벽보급",
		type = 1000,
		id = 10001,
		icon = "10001",
		desc = "탄약 충분, 상태 양호, 모든 함선의 대미지+10%",
		arg = {}
	},
	[10002] = {
		buff_id = 210,
		name = "탄약고갈",
		type = 1000,
		id = 10002,
		icon = "10002",
		desc = "탄약 고갈, 보급 필요, 모든 함선의 대미지-50%",
		arg = {}
	},
	[10011] = {
		buff_id = 220,
		name = "제공권 확보",
		type = 1001,
		id = 10011,
		icon = "10011",
		desc = "함대전원 항공 속성의 의한 대미지가 20% 상승, 항공 속성의 의한 받는 대미지가 10% 감소, 명중이 10% 상승, 매복 공격을 받을 확률이 8%감소한다(연소,침수 대미지는 대미지 상승 및 감소 영향을 받지 않음).",
		arg = {
			800
		}
	},
	[10012] = {
		buff_id = 230,
		name = "제공권 우세",
		type = 1001,
		id = 10012,
		icon = "10012",
		desc = "함대전원 항공 속성의 의한 대미지가 12% 상승, 항공 속성의 의한 받는 대미지가 6% 감소, 명중이 5% 상승, 매복 공격을 받을 확률이 5%감소한다(연소,침수 대미지는 대미지 상승 및 감소 영향을 받지 않음).",
		arg = {
			500
		}
	},
	[10013] = {
		buff_id = 240,
		name = "백중지간",
		type = 1001,
		id = 10013,
		icon = "10013",
		desc = "함대전원 항공 속성의 의한 대미지가 6% 상승, 항공 속성의 의한 받는 대미지가 3% 감소한다(연소,침수 대미지는 대미지 상승 및 감소 영향을 받지 않음).",
		arg = {
			0
		}
	},
	[10014] = {
		buff_id = 250,
		name = "제공권 열세",
		type = 1001,
		id = 10014,
		icon = "10014",
		desc = "함대전원 항공 속성의 의한 대미지가 12% 상승, 항공 속성의 의한 받는 대미지가 6% 감소, 명중과 기동이 5% 감소한다(연소,침수 대미지는 대미지 상승 및 감소 영향을 받지 않음). ",
		arg = {
			0
		}
	},
	[10015] = {
		buff_id = 260,
		name = "제공권 상실",
		type = 1001,
		id = 10015,
		icon = "10015",
		desc = "함대전원 항공 속성의 의한 대미지가 20% 상승, 항공 속성의 의한 받는 대미지가 10% 감소, 명중과 기동이 8% 감소한다(연소,침수 대미지는 대미지 상승 및 감소 영향을 받지 않음).",
		arg = {
			0
		}
	},
	all = {
		1,
		2,
		3,
		4,
		9,
		90,
		91,
		10001,
		10002,
		10011,
		10012,
		10013,
		10014,
		10015
	}
}

return
