slot0 = class("BuildShipDetailLayer", import("..base.BaseUI"))
slot1 = 10
slot2 = 2
slot3 = 1
slot4 = {
	"resources/1",
	"resources/2",
	"resources/3",
	"resources/1"
}

function slot0.getUIName(slot0)
	return "BuildShipDetailUI1"
end

function slot0.setItems(slot0, slot1)
	slot0.itemVO = slot1[ITEM_ID_EQUIP_QUICK_FINISH] or {
		count = 0,
		id = ITEM_ID_EQUIP_QUICK_FINISH
	}
end

function slot0.setWorkCount(slot0, slot1)
	slot0.workCount = slot1
end

function slot0.setBuildSpeedUpRemind(slot0, slot1)
	slot0.isStopSpeedUpRemind = slot1
end

slot0.MODEL_INDEX = 2

function slot0.setProjectList(slot0, slot1)
	slot0.projectList = slot1
	slot0.MODEL = (slot0.MODEL_INDEX < #slot0.projectList and slot1) or slot2
end

function slot0.init(slot0)
	slot0.UIMgr = pg.UIMgr.GetInstance()
	slot0.multLineTF = slot0:findTF("list_mult_line")
	slot0.multLineContain = slot0:findTF("list_mult_line/content")
	slot0.multLineTpl = slot0:getTpl("project_tpl", slot0.multLineContain)
	slot0.singleLineTF = slot0:findTF("list_single_line")
	slot0.singleLineContain = slot0:findTF("list_single_line/content")
	slot0.singleLineTpl = slot0:getTpl("project_tpl", slot0.singleLineContain)
	slot0.listCountTF = slot0:findTF("title/value")
	slot0.quickCount = slot0:findTF("quick_count")
	slot0.quickCountTF = slot0:findTF("quick_count/value")
	slot0.noneBg = slot0:findTF("none_bg")
	slot0.allLaunch = slot0:findTF("all_launch")
	slot0.aniBgTF = slot0:findTF("aniBg")
end

function slot0.updatePlayer(slot0, slot1)
	slot0._player = slot1
end

function slot0.didEnter(slot0)
	slot0.projectTFs = {}

	slot0:initProjectList()
	slot0:updateItem()
	slot0:updateListCount()
	slot0.aniBgTF.transform:SetParent(GameObject.Find("Overlay/UIOverlay").transform, false)
	onButton(slot0, slot0.allLaunch, function ()
		if slot0:getNeedCount() > 0 and not slot0.isStopSpeedUpRemind then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				showStopRemind = true,
				content = i18n("ship_buildShipScene_quest_quickFinish", slot0, (slot0.itemVO.count == 0 and COLOR_RED) or COLOR_GREEN, slot0.itemVO.count),
				stopRamindContent = i18n("common_dont_remind_dur_login"),
				onYes = function ()
					slot0:emit(BuildShipDetailMediator.LAUNCH_ALL, slot1.stopRemindToggle.isOn)
				end
			})

			return
		end

		slot0:emit(BuildShipDetailMediator.LAUNCH_ALL)
	end, SFX_UI_BUILDING_FASTBUILDING)
	onButton(slot0, slot0.quickCount, function ()
		shoppingBatch(61009, {
			id = pg.shop_template[61009].effect_args[1]
		}, 9, "build_ship_quickly_buy_tool")
	end)
end

function slot0.onBackPressed(slot0)
	if slot0.isPlayAnim then
		return
	end

	slot0:emit(slot0.ON_BACK_PRESSED, true)
end

function slot0.getNeedCount(slot0)
	slot1 = 0

	for slot5, slot6 in ipairs(slot0.projectList) do
		if slot6.state ~= BuildShip.FINISH then
			slot1 = slot1 + 1
		end
	end

	return slot1
end

function slot0.updateListCount(slot0)
	setText(slot0.listCountTF, slot0.workCount)
end

function slot0.updateItem(slot0)
	setText(slot0.quickCountTF, slot0.itemVO.count)
end

function slot0.initProjectList(slot0)
	slot1 = pairs
	slot2 = slot0.buildTimers or {}

	for slot4, slot5 in slot1(slot2) do
		pg.TimeMgr.GetInstance():RemoveTimer(slot5)
	end

	slot0.buildTimers = {}

	removeAllChildren(slot0.multLineContain)
	removeAllChildren(slot0.singleLineContain)
	setActive(slot0.multLineTF, slot0.MODEL == slot0)
	setActive(slot0.singleLineTF, slot0.MODEL == setActive)

	if #slot0.projectList > 0 then
		if slot0.MODEL == slot0 then
			slot0:initMultLine()
		elseif slot0.MODEL ==  then
			slot0:initSingleLine()
		end
	end

	setActive(slot0.noneBg, #slot0.projectList <= 0)
end

function slot0.initMultLine(slot0)
	for slot4, slot5 in pairs(slot0.projectList) do
		slot0.projectTFs[slot4] = cloneTplTo(slot0.multLineTpl, slot0.multLineContain, "project_" .. slot4)

		slot0:updateProject(slot4, slot5)
	end
end

function slot0.initSingleLine(slot0)
	slot1 = #slot0.projectList

	for slot5, slot6 in pairs(slot0.projectList) do
		slot0.projectTFs[slot5] = cloneTplTo(slot0.singleLineTpl, slot0.singleLineContain, "project_" .. slot5)

		slot0:updateProject(slot5, slot6)
	end
end

function slot0.updateProject(slot0, slot1, slot2)
	if IsNil(slot0.projectTFs[slot1]) then
		return
	end

	setActive(slot6, false)
	setActive(slot0:findTF("frame/buiding", slot3), slot2.state == BuildShip.ACTIVE)
	setActive(slot0:findTF("frame/finished", slot3), slot2.state == BuildShip.FINISH)

	slot3:GetComponent("CanvasGroup").alpha = (slot2.state == BuildShip.INACTIVE and 0.6) or 1
	slot9 = tonumber(pg.ship_data_create_material[slot2.type].ship_icon)

	for slot14 = 0, slot0:findTF("ship_modal", slot4).childCount - 1, 1 do
		setActive(slot10:GetChild(slot14), false)
	end

	if slot2.state == BuildShip.ACTIVE then
		if not slot0:findTF("ship_modal/ship_model_" .. slot9) then
			PoolMgr.GetInstance():GetUI("shipModelBuliding" .. slot9, true, function (slot0)
				slot0.transform:SetParent(slot0, false)

				slot0.transform.localPosition = Vector3(1, 1, 1)
				slot0.transform.localScale = Vector3(1, 1, 1)

				slot0.transform:SetAsFirstSibling()

				slot0.name = "ship_model_" .. 

				setActive(slot0, true)
			end)
		else
			setActive(slot11, true)
		end

		slot12 = slot0:findTF("timer/Text", slot4)

		onButton(slot0, slot0:findTF("quick_btn", slot4), function ()
			slot0, slot1, slot2 = BuildShip.canQuickBuildShip(BuildShip.canQuickBuildShip)

			if not slot0 then
				if slot2 then
					GoShoppingMsgBox(i18n("switch_to_shop_tip_1"), ChargeScene.TYPE_ITEM, slot2)
				else
					pg.TipsMgr:GetInstance():ShowTips(slot1)
				end

				return
			end

			if slot1.isStopSpeedUpRemind then
				slot1:emit(BuildShipDetailMediator.ON_QUICK, slot0)
			else
				pg.MsgboxMgr.GetInstance():ShowMsgBox({
					showStopRemind = true,
					content = i18n("ship_buildShipScene_quest_quickFinish", 1, (slot1.itemVO.count == 0 and COLOR_RED) or COLOR_GREEN, slot1.itemVO.count),
					stopRamindContent = i18n("dont_remind_session"),
					onYes = function ()
						slot0:emit(BuildShipDetailMediator.ON_QUICK, slot0, slot2.stopRemindToggle.isOn)
					end
				})
			end
		end, SFX_UI_BUILDING_FASTBUILDING)

		function slot13()
			pg.TimeMgr.GetInstance():RemoveTimer(slot0.buildTimers[pg.TimeMgr.GetInstance()])

			pg.TimeMgr.GetInstance().RemoveTimer.buildTimers[pg.TimeMgr.GetInstance()] = nil

			setActive(nil, false)
			setActive(pg.TimeMgr.GetInstance(), true)
		end

		function slot14(slot0)
			setText(slot0, pg.TimeMgr.GetInstance():DescCDTime(slot0))
		end

		if slot0.buildTimers[slot1] then
			pg.TimeMgr.GetInstance():RemoveTimer(slot0.buildTimers[slot1])

			slot0.buildTimers[slot1] = nil
		end

		slot0.buildTimers[slot1] = pg.TimeMgr.GetInstance():AddTimer("timer" .. slot1, 0, 1, function ()
			if slot0:getLeftTime() <= 0 then
				slot1()
			else
				slot2(slot0)
			end
		end)

		return
	end

	if slot2.state == BuildShip.FINISH then
		slot0:setSpriteTo(slot0[tonumber(slot8.ship_icon)], slot0:findTF("ship_modal", slot5), false)
		onButton(slot0, slot11, function ()
			slot0:emit(BuildShipDetailMediator.ON_LAUNCHED, slot0)
		end, SFX_PANEL)
		onButton(slot0, slot3, function ()
			triggerButton(triggerButton)
		end, SFX_PANEL)
	elseif slot2.state == BuildShip.INACTIVE then
		setActive(slot6, true)
		setActive(slot4, false)
		setActive(slot5, false)
	end
end

function slot0.playGetShipAnimate(slot0, slot1, slot2)
	slot4 = slot0.projectList
	slot5 = slot2 or 1
	slot0.isPlayAnim = true

	function slot6()
		slot0 = slot0._tf:GetComponent("DftAniEvent")

		slot0:SetStartEvent(function (slot0)
			setActive(slot0.buildAni, true)
		end)
		slot0:SetEndEvent(function (slot0)
			slot0()
		end)
		slot0:SetTriggerEvent(function (slot0)
			slot0.buildAni:SetActive(false)
		end)

		slot0.enabled = true
		slot0.aniPlay = true

		if function (slot0)
			slot0.buildAni.SetActive(false)
		end and slot3.build_voice ~= "" then
			slot0:playCV(slot3.build_voice)
		end
	end

	slot8 = slot0
	slot7 = slot0.findTF
	slot9 = pg.ship_data_create_material[slot0._tf:GetComponent("Animator")[function ()
		slot0.isPlayAnim = false

		if false then
			slot1()

			slot1 = nil
		end

		if not slot0.buildAni or slot0.exited then
			return
		end

		slot2.enabled = false
		slot2.aniPlay = false

		setActive(slot0.aniBgTF, false)

		if setActive.buildAni then
			Destroy(slot0.buildAni)

			Destroy.buildAni = nil
		end

		slot0:stopCV()

		return
	end].type].build_anim or "Building"

	if slot7(slot8, slot9 .. "(Clone)") then
		slot0.buildAni = go(slot7)
	end

	if not slot0.buildAni and not slot0.onLoading then
		slot0.onLoading = true

		PoolMgr.GetInstance():GetUI(slot3.build_anim or "Building", true, function (slot0)
			slot0.onLoading = false

			slot0:SetActive(false)

			slot0.buildAni = slot0

			slot0.buildAni.transform:SetParent(GameObject.Find("Overlay/UIOverlay").transform, false)
			setActive(slot0.buildAni, false)
			onButton(slot0, slot0.buildAni, function ()
				slot0()

				return
			end)
			onButton()

			return
		end)
	else
		if slot0.onLoading then
		else
			slot6()
			onButton(slot0, slot0.buildAni, function ()
				slot0()

				return
			end)
		end
	end
end

function slot0.willExit(slot0)
	for slot4, slot5 in pairs(slot0.buildTimers) do
		pg.TimeMgr.GetInstance():RemoveTimer(slot5)
	end

	if slot0.aniBgTF then
		SetParent(slot0.aniBgTF, slot0._tf)
	end

	slot0.buildTimers = nil

	slot0:stopCV()

	if slot0.loadedCVBankName then
		pg.CriMgr.UnloadCVBank(slot0.loadedCVBankName)

		slot0.loadedCVBankName = nil
	end

	if slot0.buildAni then
		Destroy(slot0.buildAni)

		slot0.buildAni = nil
	end

	slot0.onLoading = false

	return
end

function slot0.playCV(slot0, slot1)
	voiceContent = "event:/cv/build/" .. slot1

	if voiceContent then
		function slot2()
			slot0:stopCV()

			slot0.stopCV._currentVoice = playSoundEffect(voiceContent)

			return
		end

		if slot0.loadedCVBankName then
			slot2()
		else
			pg.CriMgr:LoadCV("build", function ()
				slot0 = pg.CriMgr.GetCVBankName(pg.CriMgr.GetCVBankName)

				if pg.CriMgr.GetCVBankName.exited then
					pg.CriMgr.UnloadCVBank(slot0)
				else
					slot2()

					if slot2._currentVoice then
						slot1.loadedCVBankName = slot0
					end
				end

				return
			end)
		end
	end

	return
end

function slot0.stopCV(slot0)
	if slot0._currentVoice then
		slot0._currentVoice:Stop(true)
	end

	slot0._currentVoice = nil

	return
end

return slot0
