slot0 = class("RedPocketShipPage", import("...base.BaseActivityPage"))
slot1 = 7
slot2 = {
	[0] = 705.6,
	807.608,
	897.5893,
	987.5705,
	1077.552,
	1167.533,
	1257.514,
	1387.6
}

function slot0.OnInit(slot0)
	slot0.bg = slot0:findTF("bg")
	slot0.tip = slot0:findTF("tip")
	slot0.btn = slot0:findTF("btn")
	slot0.mainAward = slot0:findTF("main_award")
	slot0.subAward = slot0:findTF("sub_award")
	slot0.itemIcon = slot0:findTF("icon")
	slot0.slider = slot0:findTF("slider")
	slot0.uilist = UIItemList.New(slot0.subAward, slot0:findTF("1", slot0.subAward))
end

function slot0.OnFirstFlush(slot0)
	slot1 = slot0.activity
	slot2 = LoadImageSpriteAsync
	slot3 = slot0:GetBgImg() or "clutter/U556"

	slot2(slot3, slot0.bg)
	onButton(slot0, slot0.tip, function ()
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			type = MSGBOX_TYPE_HELP,
			helps = pg.gametip.metalgearsub_help_tip.tip
		})

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.btn, function ()
		slot0:emit(ActivityMediator.GO_DODGEM, slot1:getConfig("config_client").stage_ids[math.min(slot0.progess + 1, slot0.maxday)])

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.mainAward, function ()
		slot0:emit(BaseUI.ON_DROP, slot0)

		return
	end, SFX_PANEL)

	slot5 = {
		type = slot0.activity:getConfig("config_client")[1][1],
		id = slot0.activity.getConfig("config_client")[1][2],
		count = slot0.activity.getConfig("config_client")[1][3]
	}

	onButton(slot0, slot0.itemIcon, function ()
		slot0:emit(BaseUI.ON_DROP, slot0)

		return
	end, SFX_PANEL)
	slot0.uilist:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			if LeanTween.isTweening(slot2) then
				LeanTween.cancel(slot2)
			end

			if slot1 < slot0.progess then
				setImageAlpha(slot2, 1)
			else
				LeanTween.alpha(slot2, 1, 1):setFrom(0.4):setEase(LeanTweenType.easeInOutSine):setLoopPingPong()
			end
		else
			if slot0 == UIItemList.EventExcess and LeanTween.isTweening(slot2) then
				LeanTween.cancel(slot2)
			end
		end

		return
	end)

	return

	slot3 = "clutter/U556"
end

function slot0.OnUpdateFlush(slot0)
	slot2 = pg.TimeMgr.GetInstance()
	slot0.progess = math.min(slot0.activity.data2, slot0)
	slot0.maxday = math.min(slot2:DiffDay(slot0.activity.data1, slot2:GetServerTime()) + 1, slot0)

	slot0.uilist:align(math.min(slot0.maxday, slot0 - 1))
	setSlider(slot0.slider, slot1[0], slot1[slot0], slot1[slot0.progess])

	slot3 = setActive
	slot4 = findTF(slot0.mainAward, "dis")

	if slot0.activity.data4 and slot1.data4 ~= 0 then
		slot5 = false
	else
		slot5 = true
	end

	slot3(slot4, slot5)

	slot3 = setActive
	slot4 = findTF(slot0.mainAward, "dis/lock")

	if slot0.maxday >= slot0 then
		slot5 = false
	else
		slot5 = true
	end

	slot3(slot4, slot5)

	slot3 = setActive
	slot4 = findTF(slot0.mainAward, "get")

	if slot1.data4 <= 0 then
		slot5 = false
	else
		slot5 = true
	end

	slot3(slot4, slot5)

	if slot1.data4 == 0 and slot0 <= slot0.progess then
		slot0:emit(ActivityMediator.EVENT_OPERATION, {
			cmd = 3,
			activity_id = slot1.id
		})
	else
		if defaultValue(slot1.data2_list[1], 0) > 0 or defaultValue(slot1.data2_list[2], 0) > 0 then
			slot0:emit(ActivityMediator.EVENT_OPERATION, {
				cmd = 2,
				activity_id = slot1.id
			})
		end
	end

	return
end

function slot0.OnDestroy(slot0)
	clearImageSprite(slot0.bg)

	return
end

return slot0
