slot0 = class("PreCombatLayer", import("..base.BaseUI"))
slot1 = import("..ship.FormationUI")
slot0.FORM_EDIT = "EDIT"
slot0.FORM_PREVIEW = "PREVIEW"
slot0.ObjectiveList = {
	"battle_preCombatLayer_victory",
	"battle_preCombatLayer_undefeated",
	"battle_preCombatLayer_sink_limit",
	"battle_preCombatLayer_time_hold",
	"battle_preCombatLayer_time_limit",
	"battle_preCombatLayer_boss_destruct",
	"battle_preCombatLayer_damage_before_end",
	"battle_result_defeat_all_enemys"
}

function slot0.getUIName(slot0)
	return "PreCombatUI"
end

function slot0.init(slot0)
	slot0.eventTriggers = {}
	slot0._startBtn = slot0:findTF("right/start")
	slot0._popup = slot0:findTF("right/start/popup")
	slot0._costText = slot0:findTF("right/start/popup/Text")
	slot0._moveLayer = slot0:findTF("moveLayer")
	slot1 = slot0:findTF("middle")
	slot0._autoToggle = slot0:findTF("auto_toggle")
	slot0._fleetInfo = slot1:Find("fleet_info")
	slot0._fleetNameText = slot1:Find("fleet_info/fleet_name/Text")
	slot0._fleetNumText = slot1:Find("fleet_info/fleet_number")

	setActive(slot0._fleetInfo, slot0.contextData.system ~= SYSTEM_DUEL)

	slot0._mainGS = slot1:Find("gear_score/main/Text")
	slot0._vanguardGS = slot1:Find("gear_score/vanguard/Text")
	slot0._gridTFs = {
		vanguard = {},
		main = {}
	}
	slot0._gridFrame = slot1:Find("mask/GridFrame")

	for slot5 = 1, 3, 1 do
		slot0._gridTFs[Fleet.VANGUARD][slot5] = slot0._gridFrame:Find("vanguard_" .. slot5)
		slot0._gridTFs[Fleet.MAIN][slot5] = slot0._gridFrame:Find("main_" .. slot5)
	end

	slot0._nextPage = slot0:findTF("middle/nextPage")
	slot0._prevPage = slot0:findTF("middle/prevPage")
	slot0._heroContainer = slot1:Find("HeroContainer")
	slot0._checkBtn = slot1:Find("checkBtn")
	slot0._blurPanel = slot0:findTF("blur_panel")
	slot0.topPanel = slot0:findTF("top", slot0._blurPanel)
	slot0.topPanelBg = slot0:findTF("top_bg", slot0._blurPanel)
	slot0._backBtn = slot0:findTF("back_btn", slot0.topPanel)
	slot0._playerResOb = slot0:findTF("playerRes", slot0.topPanel)
	slot0._resPanel = PlayerResource.New()

	tf(slot0._resPanel._go):SetParent(tf(slot0._playerResOb), false)

	slot0._spoilsContainer = slot0:findTF("right/infomation/atlasloot/spoils/items/items_container")
	slot0._item = slot0:getTpl("right/infomation/atlasloot/spoils/items/item_tpl")
	slot0._goals = slot0:findTF("right/infomation/target/goal")
	slot0._heroInfo = slot0:getTpl("heroInfo")
	slot0._starTpl = slot0:getTpl("star_tpl")
	slot0._middle = slot0:findTF("middle")
	slot0._right = slot0:findTF("right")

	setAnchoredPosition(slot0._middle, {
		x = -840
	})
	setAnchoredPosition(slot0._right, {
		x = 470
	})

	slot0.guideDesc = slot0:findTF("guideDesc", slot0._middle)

	if slot0.contextData.stageId then
		slot0:SetStageID(slot0.contextData.stageId)
	end

	slot0._attachmentList = {}
end

function slot0.SetPlayerInfo(slot0, slot1)
	slot0._resPanel:setResources(slot1)
end

function slot0.SetShips(slot0, slot1)
	slot0._shipVOs = slot1
end

function slot0.SetStageID(slot0, slot1)
	removeAllChildren(slot0._spoilsContainer)

	slot0._stageID = slot1

	for slot7, slot8 in ipairs(slot3) do
		updateDrop(cloneTplTo(slot0._item, slot0._spoilsContainer), {
			id = slot8[2],
			type = slot8[1]
		})
	end

	function slot4(slot0, slot1)
		if type(slot0) == "table" then
			setActive(slot1, true)
			setWidgetText(slot1, i18n(slot0.ObjectiveList[slot0[1]], slot0[2]))
		else
			setActive(slot1, false)
		end
	end

	slot5 = {
		findTF(slot0._goals, "goal_tpl"),
		findTF(slot0._goals, "goal_sink"),
		findTF(slot0._goals, "goal_time")
	}
	slot7 = 1

	for slot11, slot12 in ipairs(slot6) do
		if type(slot12) ~= "string" then
			slot4(slot12, slot5[slot7])

			slot7 = slot7 + 1
		end
	end

	for slot11 = slot7, #slot5, 1 do
		slot4("", slot5[slot11])
	end

	setActive(slot0.guideDesc, slot2.guide_desc and #slot2.guide_desc > 0)

	if slot2.guide_desc and #slot2.guide_desc > 0 then
		setText(slot0.guideDesc, slot2.guide_desc)
	end
end

function slot0.SetFleets(slot0, slot1)
	slot0._fleetVOs = {}

	_.each(slot2, function (slot0)
		slot0._fleetVOs[slot0.id] = slot0
	end)
	slot0:CheckLegalFleet()
end

function slot0.SetCurrentFleet(slot0, slot1)
	slot0._currentFleetVO = slot0._fleetVOs[slot1]

	slot0:CheckLegalFleet()

	for slot5, slot6 in ipairs(slot0._legalFleetIdList) do
		if slot0._currentFleetVO.id == slot6 then
			slot0._curFleetIndex = slot5

			break
		end
	end
end

function slot0.CheckLegalFleet(slot0)
	slot0._legalFleetIdList = {}

	for slot4, slot5 in pairs(slot0._fleetVOs) do
		if #slot5.ships > 0 and slot5.id ~= FleetProxy.PVP_FLEET_ID then
			table.insert(slot0._legalFleetIdList, slot5.id)
		end
	end

	table.sort(slot0._legalFleetIdList)
end

function slot0.MarkEdited(slot0)
	slot0._editedFlag = true
end

function slot0.UpdateFleetView(slot0, slot1)
	slot0:displayFleetInfo()
	slot0:resetGrid(Fleet.VANGUARD)
	slot0:resetGrid(Fleet.MAIN)
	SetActive(slot0._gridTFs[TeamType.Main][1]:Find("flag"), true)

	if slot1 then
		slot0:loadAllCharacter()
	else
		slot0:setAllCharacterPos(true)
	end
end

function slot0.uiStartAnimating(slot0)
	shiftPanel(slot0._middle, 0, nil, slot2, slot1, true, true)
	shiftPanel(slot0._right, 0, nil, 0.3, 0, true, true)
end

function slot0.uiExitAnimating(slot0)
	shiftPanel(slot0._middle, -840, nil, nil, nil, true, true)
	shiftPanel(slot0._right, 470, nil, nil, nil, true, true)
end

function slot0.didEnter(slot0)
	onButton(slot0, slot0._backBtn, function ()
		if slot0._currentForm == slot1.FORM_EDIT and slot0._editedFlag then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				hideNo = false,
				zIndex = -100,
				content = i18n("battle_preCombatLayer_save_confirm"),
				onYes = function ()
					slot0:emit(PreCombatMediator.ON_COMMIT_EDIT, function ()
						pg.TipsMgr:GetInstance():ShowTips(i18n("battle_preCombatLayer_save_success"))

						GetOrAddComponent(slot0._tf, typeof(CanvasGroup)).interactable = false

						slot0:uiExitAnimating()
						LeanTween.delayedCall(0.3, System.Action(function ()
							slot0:emit(slot1.ON_CLOSE)
						end))
					end)
				end,
				onNo = function ()
					slot0:emit(PreCombatMediator.ON_ABORT_EDIT)

					GetOrAddComponent(slot0._tf, typeof(CanvasGroup)).interactable = false

					slot0:uiExitAnimating()
					LeanTween.delayedCall(0.3, System.Action(function ()
						slot0:emit(slot1.ON_CLOSE)
					end))
				end
			})
		else
			GetOrAddComponent(slot0._tf, typeof(CanvasGroup)).interactable = false

			slot0:uiExitAnimating()
			LeanTween.delayedCall(0.3, System.Action(function ()
				slot0:emit(slot1.ON_CLOSE)
			end))
		end
	end, SFX_CANCEL)
	onButton(slot0, slot0._startBtn, function ()
		if slot0._currentForm == slot1.FORM_EDIT and slot0._editedFlag then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				hideNo = false,
				zIndex = -100,
				content = i18n("battle_preCombatLayer_save_march"),
				onYes = function ()
					slot0:emit(PreCombatMediator.ON_COMMIT_EDIT, function ()
						pg.TipsMgr:GetInstance():ShowTips(i18n("battle_preCombatLayer_save_success"))
						pg.TipsMgr.GetInstance().ShowTips:emit(PreCombatMediator.ON_START, slot0._currentFleetVO.id)
					end)
				end
			})
		else
			slot0:emit(PreCombatMediator.ON_START, slot0._currentFleetVO.id)
		end
	end, SFX_UI_WEIGHANCHOR)
	onButton(slot0, slot0._nextPage, function ()
		slot0:emit(PreCombatMediator.ON_CHANGE_FLEET, slot0._legalFleetIdList[slot0._curFleetIndex + 1])
	end, SFX_PANEL)
	onButton(slot0, slot0._prevPage, function ()
		slot0:emit(PreCombatMediator.ON_CHANGE_FLEET, slot0._legalFleetIdList[slot0._curFleetIndex - 1])
	end, SFX_PANEL)
	slot0:UpdateFleetView(true)

	if slot0.contextData.form == slot0.FORM_EDIT then
		slot0._editedFlag = true

		slot0:switchToEditMode()

		if slot0._characterList then
			slot0:enabledTeamCharacter(Fleet.VANGUARD, true)
			slot0:enabledTeamCharacter(Fleet.MAIN, true)
		end

		slot0:setAllCharacterPos(false)
	else
		slot0:swtichToPreviewMode()
	end

	slot0.contextData.form = nil

	pg.UIMgr.GetInstance():BlurPanel(slot0._tf)

	if slot0.contextData.system == SYSTEM_DUEL then
		setActive(slot0._autoToggle, false)
	else
		setActive(slot0._autoToggle, true)
		onToggle(slot0, slot0._autoToggle, function (slot0)
			slot0:emit(PreCombatMediator.ON_AUTO, {
				isOn = not slot0,
				toggle = slot0._autoToggle
			})
		end, SFX_PANEL, SFX_PANEL)
		triggerToggle(slot0._autoToggle, ys.Battle.BattleState.IsAutoBotActive())
	end

	onNextTick(function ()
		slot0:uiStartAnimating()
	end)

	if slot0.contextData.system == SYSTEM_ACT_BOSS then
		PoolMgr.GetInstance():GetUI("al_bg01", true, function (slot0)
			slot0:SetActive(true)
			setParent(slot0, slot0._tf)
			slot0.transform:SetAsFirstSibling()
		end)
	end

	if slot0._currentForm == slot0.FORM_PREVIEW and slot0.contextData.system == SYSTEM_DUEL and #slot0._currentFleetVO.mainShips <= 0 then
		triggerButton(slot0._checkBtn)
	end
end

function slot0.onBackPressed(slot0)
	playSoundEffect(SFX_CANCEL)
	triggerButton(slot0._backBtn)
end

function slot0.swtichToPreviewMode(slot0)
	slot0._editedFlag = nil
	slot0._currentForm = slot0.FORM_PREVIEW
	slot0._checkBtn:GetComponent("Button").interactable = true

	setActive(slot0._checkBtn:Find("save"), false)
	setActive(slot0._checkBtn:Find("edit"), true)
	slot0:resetGrid(Fleet.VANGUARD)
	slot0:resetGrid(Fleet.MAIN)
	slot0:setAllCharacterPos(false)
	onButton(slot0, slot0._checkBtn, function ()
		slot0:switchToEditMode()

		if slot0.switchToEditMode._characterList then
			slot0:enabledTeamCharacter(Fleet.VANGUARD, true)
			slot0.enabledTeamCharacter:enabledTeamCharacter(Fleet.MAIN, true)
		end

		slot0:setAllCharacterPos(false)
	end, SFX_PANEL)
	slot0:disableAllStepper()
	slot0:SetFleetStepper()

	if slot0._characterList then
		slot0:enabledTeamCharacter(Fleet.VANGUARD, false)
		slot0:enabledTeamCharacter(Fleet.MAIN, false)
	end
end

function slot0.switchToEditMode(slot0)
	slot0._currentForm = slot0.FORM_EDIT
	slot0._checkBtn:GetComponent("Button").interactable = true

	setActive(slot0._checkBtn:Find("save"), true)
	setActive(slot0._checkBtn:Find("edit"), false)
	onButton(slot0, slot0._checkBtn, function ()
		slot0:emit(PreCombatMediator.ON_COMMIT_EDIT, function ()
			if slot0._editedFlag then
				pg.TipsMgr:GetInstance():ShowTips(i18n("battle_preCombatLayer_save_success"))
			end

			slot0:swtichToPreviewMode()
		end)
	end, SFX_CONFIRM)

	if slot0.contextData.system ~= SYSTEM_HP_SHARE_ACT_BOSS then
		slot0:EnableAddGrid(Fleet.MAIN)
		slot0:EnableAddGrid(Fleet.VANGUARD)
	end

	slot1(slot0._characterList.vanguard)
	slot1(slot0._characterList.main)

	slot0._shiftIndex = nil

	slot0:disableAllStepper()
end

function slot0.switchToShiftMode(slot0, slot1, slot2)
	slot0:disableAllStepper()

	slot0._checkBtn:GetComponent("Button").interactable = false

	for slot6 = 1, 3, 1 do
		setActive(slot0._gridTFs[Fleet.VANGUARD][slot6].Find(slot7, "tip"), false)
		setActive(slot0._gridTFs[Fleet.MAIN][slot6].Find(slot8, "tip"), false)
		setActive(slot0._gridTFs[slot2][slot6]:Find("shadow"), false)
	end

	for slot7, slot8 in ipairs(slot3) do
		if slot8 ~= slot1 then
			LeanTween.moveLocalY(go(slot8), slot0._gridTFs[slot2][slot7].localPosition.y - 80, 0.5)

			slot10 = tf(slot8):Find("mouseChild"):GetComponent("EventTriggerListener")
			slot0.eventTriggers[slot10] = true

			slot10:AddPointEnterFunc(function ()
				for slot3, slot4 in ipairs(ipairs) do
					if slot4 == slot1 then
						slot2:shift(slot2._shiftIndex, slot3, slot3)

						break
					end
				end
			end)
		else
			slot0._shiftIndex = slot7
			tf(slot8):Find("mouseChild"):GetComponent(typeof(Image)).enabled = false
		end

		slot8:GetComponent("SpineAnimUI"):SetAction("normal", 0)
	end
end

function slot0.loadAllCharacter(slot0)
	removeAllChildren(slot0._heroContainer)

	slot0._characterList = {
		vanguard = {},
		main = {}
	}
	slot0._infoList = {
		vanguard = {},
		main = {}
	}

	function slot1(slot0, slot1, slot2, slot3)
		slot5 = slot0._shipVOs[slot1].getConfigTable(slot4)

		if slot0.exited then
			PoolMgr.GetInstance():ReturnSpineChar(slot4:getPrefab(), slot0)

			return
		end

		for slot10, slot11 in pairs(slot6) do
			if slot11.attachment_combat_ui[1] ~= "" then
				ResourceMgr.Inst:getAssetAsync("Effect/" .. slot12, slot12, UnityEngine.Events.UnityAction_UnityEngine_Object(function (slot0)
					if slot0.exited then
					else
						slot1 = Object.Instantiate(slot0)
						slot0._attachmentList[#slot0._attachmentList + 1] = slot1

						tf(slot1):SetParent(tf(slot1))

						tf(slot1).localPosition = BuildVector3(slot2.attachment_combat_ui[2])
					end
				end), true, true)
			end
		end

		slot0._characterList[slot2][slot3] = slot0

		tf(slot0):SetParent(slot0._heroContainer, false)

		tf(slot0).localScale = Vector3(0.65, 0.65, 1)

		pg.ViewUtils.SetLayer(tf(slot0), Layer.UI)

		slot0:GetComponent("SkeletonGraphic").raycastTarget = false

		slot0:enabledCharacter(slot0, true, slot7, slot2)
		slot0:setCharacterPos(slot2, slot3, slot0)
		slot0:sortSiblingIndex()

		slot8 = cloneTplTo(slot0._heroInfo, slot0)

		setAnchoredPosition(slot8, {
			x = 0,
			y = 0
		})

		slot8.localScale = Vector3(2, 2, 1)

		SetActive(slot8, true)

		slot8.name = "info"
		slot10 = findTF(slot9, "stars")
		slot11 = slot0._shipVOs[slot1].energy <= Ship.ENERGY_MID
		slot12 = findTF(slot9, "energy")

		if slot11 then
			slot17, slot14 = slot7:getEnergyPrint()

			if not GetSpriteFromAtlas("energy", slot13) then
				warning("找不到疲劳")
			end

			setImageSprite(slot12, slot15)
		end

		setActive(slot12, slot11 and slot0.contextData.system ~= SYSTEM_DUEL)

		for slot17 = 1, slot7:getStar(), 1 do
			cloneTplTo(slot0._starTpl, slot10)
		end

		if not GetSpriteFromAtlas("shiptype", shipType2print(slot7:getShipType())) then
			warning("找不到船形, shipConfigId: " .. slot7.configId)
		end

		setImageSprite(findTF(slot9, "type"), slot14, true)
		setText(findTF(slot9, "frame/lv_contain/lv"), slot7.level)
	end

	slot3(slot0._currentFleetVO.vanguardShips, Fleet.VANGUARD)
	slot3(slot0._currentFleetVO.mainShips, Fleet.MAIN)
	pg.UIMgr:GetInstance():LoadingOn()
	parallelAsync({}, function (slot0)
		pg.UIMgr:GetInstance():LoadingOff()
	end)
end

function slot0.setAllCharacterPos(slot0, slot1)
	for slot5, slot6 in ipairs(slot0._characterList.vanguard) do
		slot0:setCharacterPos(Fleet.VANGUARD, slot5, slot6, slot1)
	end

	for slot5, slot6 in ipairs(slot0._characterList.main) do
		slot0:setCharacterPos(Fleet.MAIN, slot5, slot6, slot1)
	end

	slot0:sortSiblingIndex()
end

function slot0.setCharacterPos(slot0, slot1, slot2, slot3, slot4)
	SetActive(slot3, true)

	slot6 = slot0._gridTFs[slot1][slot2].localPosition

	LeanTween.cancel(go(slot3))

	if slot4 then
		tf(slot3).localPosition = Vector3(slot6.x + 2, slot6.y - 80, slot6.z)

		LeanTween.moveLocalY(go(slot3), slot6.y - 110, 0.5):setDelay(0.5)
	else
		tf(slot3).localPosition = Vector3(slot6.x + 2, slot6.y - 110, slot6.z)
	end

	SetActive(slot5:Find("shadow"), true)
	slot3:GetComponent("SpineAnimUI"):SetAction("stand", 0)
end

function slot0.resetGrid(slot0, slot1)
	slot2 = slot0._currentFleetVO:getTeamByName(slot1)

	for slot7, slot8 in ipairs(slot3) do
		SetActive(slot8:Find("shadow"), false)
		SetActive(slot8:Find("tip"), false)
	end
end

function slot0.EnableAddGrid(slot0, slot1)
	slot3 = slot0._gridTFs[slot1]

	if #slot0._currentFleetVO:getTeamByName(slot1) < 3 then
		slot6 = slot3[slot4 + 1].Find(slot5, "tip")
		slot6:GetComponent("Button").enabled = true

		onButton(slot0, slot6, function ()
			slot0:emit(PreCombatMediator.CHANGE_FLEET_SHIP, nil, slot0._currentFleetVO, slot0)
		end, SFX_UI_FORMATION_ADD)

		slot6.localScale = Vector3(0, 0, 1)

		SetActive(slot6, true)
		LeanTween.value(go(slot6), 0, 1, 1):setOnUpdate(System.Action_float(function (slot0)
			slot0.localScale = Vector3(slot0, slot0, 1)
		end)):setEase(LeanTweenType.easeOutBack)
	end
end

function slot0.shift(slot0, slot1, slot2, slot3)
	slot6 = slot0._currentFleetVO:getTeamByName(slot3)
	tf(slot7).localPosition = Vector3(slot0._gridTFs[slot3][slot1].localPosition.x + 2, slot0._gridTFs[slot3][slot1].localPosition.y - 80, slot0._gridTFs[slot3][slot1].localPosition.z)

	LeanTween.cancel(go(slot0._characterList[slot3][slot2]))

	slot0._characterList[slot3][slot2] = slot0._characterList[slot3][slot1]
	slot0._characterList[slot3][slot1] = slot0._characterList[slot3][slot2]
	slot6[slot2] = slot6[slot1]
	slot6[slot1] = slot6[slot2]
	slot0._shiftIndex = slot2

	slot0:sortSiblingIndex()

	return
end

function slot0.sortSiblingIndex(slot0)
	slot1 = 3
	slot2 = 0

	while slot1 > 0 do
		slot4 = slot0._characterList[Fleet.VANGUARD][slot1]

		if slot0._characterList[Fleet.MAIN][slot1] then
			tf(slot3):SetSiblingIndex(slot2)

			slot2 = slot2 + 1
		end

		if slot4 then
			tf(slot4):SetSiblingIndex(slot2)

			slot2 = slot2 + 1
		end

		slot1 = slot1 - 1
	end

	return
end

function slot0.enabledTeamCharacter(slot0, slot1, slot2)
	slot4 = slot0._currentFleetVO:getTeamByName(slot1)

	for slot8, slot9 in ipairs(slot3) do
		slot0:enabledCharacter(slot9, slot2, slot0._shipVOs[slot4[slot8]], slot1)
	end

	return
end

function slot0.enabledCharacter(slot0, slot1, slot2, slot3, slot4)
	if slot2 then
		slot5, slot6, slot7, slot8 = tf(slot1):Find("mouseChild")

		if slot5 then
			SetActive(slot5, true)
		else
			tf(slot5):SetParent(tf(slot1))

			tf(slot5).localPosition = Vector3.zero
			slot0.eventTriggers[GetOrAddComponent(slot5, "EventTriggerListener")] = true

			GetOrAddComponent(slot5, "ModelDrag").Init(slot6)

			slot9 = GameObject("mouseChild").GetComponent(slot5, typeof(RectTransform))
			slot9.sizeDelta = Vector2(2.5, 2.5)
			slot9.pivot = Vector2(0.5, 0)
			slot9.anchoredPosition = Vector2(0, 0)
			GetOrAddComponent(slot5, "UILongPressTrigger").longPressThreshold = 1

			pg.DelegateInfo.Add(slot0, GetOrAddComponent(slot5, "UILongPressTrigger").onLongPressed)
			GetOrAddComponent(slot5, "UILongPressTrigger").onLongPressed:AddListener(function ()
				if slot0.contextData.system ~= SYSTEM_HP_SHARE_ACT_BOSS then
					slot0:emit(PreCombatMediator.OPEN_SHIP_INFO, slot1.id, slot0._currentFleetVO)
				end

				return
			end)
			pg.DelegateInfo.Add(slot0, GetOrAddComponent(slot5, "ModelDrag").onModelClick)
			GetOrAddComponent(slot5, "ModelDrag").onModelClick:AddListener(function ()
				if slot0.contextData.system ~= SYSTEM_HP_SHARE_ACT_BOSS then
					playSoundEffect(SFX_UI_CLICK)
					playSoundEffect:emit(PreCombatMediator.CHANGE_FLEET_SHIP, playSoundEffect, slot0._currentFleetVO, )
				end

				return
			end)
			GetOrAddComponent(slot5, "EventTriggerListener").AddBeginDragFunc(slot8, function ()
				screenWidth = UnityEngine.Screen.width
				screenHeight = UnityEngine.Screen.height
				widthRate = rtf(slot0._tf).rect.width / screenWidth
				heightRate = rtf(slot0._tf).rect.height / screenHeight

				LeanTween.cancel(go(go))
				LeanTween.cancel:switchToShiftMode(LeanTween.cancel, )
				LeanTween.cancel:GetComponent("SpineAnimUI"):SetAction("tuozhuai", 0)
				tf(LeanTween.cancel.GetComponent("SpineAnimUI")):SetParent(slot0._moveLayer, false)
				playSoundEffect(SFX_UI_HOME_DRAG)

				return
			end)
			GetOrAddComponent(slot5, "EventTriggerListener").AddDragFunc(slot8, function (slot0, slot1)
				rtf(slot0).anchoredPosition = Vector2((slot1.position.x - screenWidth / 2) * widthRate + 20, (slot1.position.y - screenHeight / 2) * heightRate - 20)

				return
			end)
			GetOrAddComponent(slot5, "EventTriggerListener"):AddDragEndFunc(function (slot0, slot1)
				slot0:GetComponent("SpineAnimUI"):SetAction("tuozhuai", 0)

				function slot2()
					tf(tf):SetParent(slot1._heroContainer, false)
					tf(tf):emit(PreCombatMediator.CHANGE_FLEET_SHIPS_ORDER, slot1._currentFleetVO)
					tf(tf):switchToEditMode()
					tf(tf):sortSiblingIndex()

					return
				end

				if slot1.contextData.system ~= SYSTEM_HP_SHARE_ACT_BOSS and (slot1.position.x > UnityEngine.Screen.width * 0.65 or slot1.position.y < UnityEngine.Screen.height * 0.25) then
					if not slot1._currentFleetVO:canRemove(slot2) then
						slot3, slot4 = slot1._currentFleetVO:getShipPos(slot2)

						pg.TipsMgr:GetInstance():ShowTips(i18n("ship_formationUI_removeError_onlyShip", slot2:getConfigTable().name, slot1._currentFleetVO.name, Fleet.C_TEAM_NAME[slot4]))
						slot2()
					else
						pg.MsgboxMgr.GetInstance():ShowMsgBox({
							hideNo = false,
							zIndex = -100,
							content = i18n("battle_preCombatLayer_quest_leaveFleet", slot2:getConfigTable().name),
							onYes = function ()
								for slot4, slot5 in ipairs(slot0) do
									if slot5 == slot2 then
										PoolMgr.GetInstance():ReturnSpineChar(slot3:getPrefab(), slot2)
										table.remove(slot0, slot4)

										break
									end
								end

								slot0:emit(PreCombatMediator.REMOVE_SHIP, , slot0._currentFleetVO)
								slot0:switchToEditMode()
								slot0:sortSiblingIndex()

								return
							end,
							onNo = slot2
						})
					end
				else
					slot2()
				end

				playSoundEffect(SFX_UI_HOME_PUT)

				return
			end)
		end
	else
		if not IsNil(tf(slot1):Find("mouseChild")) then
			setActive(slot5, false)
		end
	end

	return
end

function slot0.displayFleetInfo(slot0)
	slot1 = slot0._currentFleetVO:GetPropertiesSum()

	setActive(slot0._popup, slot0.contextData.system ~= SYSTEM_DUEL)
	slot0.tweenNumText(slot0._costText, slot0._currentFleetVO:GetCostSum().oil)
	slot0.tweenNumText(slot0._vanguardGS, slot0._currentFleetVO:GetGearScoreSum(Fleet.VANGUARD))
	slot0.tweenNumText(slot0._mainGS, slot0._currentFleetVO:GetGearScoreSum(Fleet.MAIN))
	setText(slot0._fleetNameText, slot0.defaultFleetName(slot0._currentFleetVO))
	setText(slot0._fleetNumText, slot0._currentFleetVO.id)

	return
end

function slot0.SetFleetStepper(slot0)
	if slot0.contextData.system ~= SYSTEM_DUEL and slot0.contextData.system ~= SYSTEM_HP_SHARE_ACT_BOSS then
		SetActive(slot0._nextPage, slot0._curFleetIndex < #slot0._legalFleetIdList)
		SetActive(slot0._prevPage, slot0._curFleetIndex > 1)
	else
		SetActive(slot0._nextPage, false)
		SetActive(slot0._prevPage, false)
	end

	return
end

function slot0.disableAllStepper(slot0)
	SetActive(slot0._nextPage, false)
	SetActive(slot0._prevPage, false)

	return
end

function slot0.recycleCharacterList(slot0, slot1, slot2)
	for slot6, slot7 in ipairs(slot1) do
		if slot2[slot6] then
			PoolMgr.GetInstance():ReturnSpineChar(slot0._shipVOs[slot7]:getPrefab(), slot2[slot6])

			slot2[slot6] = nil
		end
	end

	return
end

function slot0.willExit(slot0)
	if slot0.eventTriggers then
		for slot4, slot5 in pairs(slot0.eventTriggers) do
			ClearEventTrigger(slot4)
		end

		slot0.eventTriggers = nil
	end

	if slot0.tweens then
		cancelTweens(slot0.tweens)
	end

	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf)
	slot0:recycleCharacterList(slot0._currentFleetVO.mainShips, slot0._characterList[Fleet.MAIN])
	slot0:recycleCharacterList(slot0._currentFleetVO.vanguardShips, slot0._characterList[Fleet.VANGUARD])

	if slot0._resPanel then
		slot0._resPanel:exit()

		slot0._resPanel = nil
	end

	for slot4, slot5 in ipairs(slot0._attachmentList) do
		Object.Destroy(slot5)
	end

	slot0._attachmentList = nil

	return
end

return slot0
