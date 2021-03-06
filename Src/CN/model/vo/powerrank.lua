slot0 = class("PowerRank", import(".PlayerAttire"))
slot0.TYPE_POWER = 1
slot0.TYPE_COLLECTION = 2
slot0.TYPE_PT = 3
slot0.TYPE_PLEDGE = 4
slot0.TYPE_CHALLENGE = 5
slot0.TYPE_EXTRA_CHAPTER = 6
slot0.TYPE_ACT_BOSS_BATTLE = 7
slot0.TYPE_MILITARY_RANK = 8
slot0.typeInfo = {
	{
		title_word = {
			5,
			8,
			7,
			1
		},
		score_icon = {
			"ui/billboardui_atlas",
			"power_icon"
		},
		act_type = ActivityConst.ACTIVITY_TYPE_PT_RANK
	},
	{
		title_word = {
			5,
			8,
			7,
			2
		}
	},
	{
		title_word = {
			5,
			8,
			7,
			2
		},
		score_icon = {
			"ui/commonui_atlas",
			"pt_icon"
		},
		act_type = ActivityConst.ACTIVITY_TYPE_PT_RANK
	},
	{
		title_word = {
			5,
			8,
			7,
			3
		}
	},
	{
		title_word = {
			5,
			8,
			7,
			4
		},
		act_type = ActivityConst.ACTIVITY_TYPE_CHALLENGE_RANK
	},
	{
		title_word = {
			5,
			8,
			7,
			4
		},
		act_type = ActivityConst.ACTIVITY_TYPE_EXTRA_CHAPTER_RANK
	},
	{
		title_word = {
			5,
			8,
			7,
			4
		},
		act_type = ActivityConst.ACTIVITY_TYPE_BOSS_BATTLE
	},
	{
		title_word = {
			5,
			8,
			6,
			9
		},
		act_type = {
			"ui/billboardui_atlas",
			"rank_icon"
		}
	}
}

function slot0.Ctor(slot0, slot1, slot2)
	slot0.super.Ctor(slot0, slot1)

	slot0.id = slot1.user_id or slot1.id
	slot0.power = slot1.point or slot1.score or 0
	slot0.name = slot1.name
	slot0.lv = slot1.lv or slot1.level
	slot0.arenaRank = slot1.arena_rank or slot1.rank or 0
	slot0.type = slot2
end

function slot0.getPainting(slot0)
	return (pg.ship_skin_template[slot0.skinId] and slot1.painting) or "unknown"
end

function slot0.getRank(slot0)
	return slot0.rank
end

function slot0.setRank(slot0, slot1)
	slot0.rank = slot1
end

function slot0.getPowerTxt(slot0)
	if slot0.TYPE_POWER == slot0.type then
		return math.floor(slot0.power^0.667)
	elseif slot0.TYPE_COLLECTION == slot0.type then
		return string.format("%0.01f", slot0.power / getProxy(CollectionProxy):getCollectionTotal() * 100) .. "%"
	elseif slot0.TYPE_MILITARY_RANK == slot0.type then
		return slot0.power + SeasonInfo.INIT_POINT
	else
		return slot0.power
	end
end

function slot0.getTitleWord(slot0, slot1)
	slot2 = {}

	for slot6 = 1, 4, 1 do
		table.insert(slot2, i18n("ranking_word_" .. slot0.typeInfo[slot1].title_word[slot6]))
	end

	if slot1 == slot0.TYPE_PT then
		slot2[4] = pg.gameset.activity_res_id.description
	end

	return slot2
end

function slot0.getScoreIcon(slot0, slot1)
	return slot0.typeInfo[slot1].score_icon
end

function slot0.getActivityIdByRankType(slot0, slot1)
	return (_.detect(getProxy(ActivityProxy):getActivitiesByType(slot0.typeInfo[slot1].act_type), function (slot0)
		return not slot0:isEnd() and (slot0 ~= slot1.TYPE_PT or tonumber(slot0:getConfig("config_data")) > 0)
	end) and slot2.id) or nil
end

return slot0
