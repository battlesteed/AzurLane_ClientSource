slot0 = class("LevelScene", import("..base.BaseUI"))
slot1 = 0.5

function slot0.getUIName(slot0)
	return "LevelMainScene"
end

function slot0.preload(slot0, slot1)
	slot0.maps = getProxy(ChapterProxy):getMaps()

	if slot0.maps[slot0:selectMap(slot2)]:getConfig("bg") and #slot5 > 0 then
		GetSpriteFromAtlasAsync("levelmap/" .. slot4:getConfig("bg"), "", slot1)
	elseif slot4:getConfig("animtor") == 1 then
		PoolMgr.GetInstance():GetUI(slot4:getConfig("ani_name"), true, function (slot0)
			slot0:SetActive(false)

			slot0.tornadoTF = slot0
			slot0.aniName = slot0

			slot0()
		end)
	end
end

function slot0.init(slot0)
	slot0:initData()
	slot0:initUI()
	slot0:initEvents()
	slot0:updateClouds()
end

function slot0.initData(slot0)
	slot0.tweens = {}
	slot0.mapItemTimer = {}
	slot0.mapWidth = 1920
	slot0.mapHeight = 1440
	slot0.levelCamIndices = 1
	slot0.frozenCount = 0
	slot0.contextData.huntingRangeVisibility = 2
end

function slot0.initUI(slot0)
	slot0.topPanel = slot0:findTF("top")
	slot0.canvasGroup = slot0.topPanel:GetComponent("CanvasGroup")
	slot0.canvasGroup.blocksRaycasts = not slot0.canvasGroup.blocksRaycasts
	slot0.canvasGroup.blocksRaycasts = not slot0.canvasGroup.blocksRaycasts
	slot0.topChapter = slot0:findTF("top_chapter", slot0.topPanel)
	slot0.topChapterLine = slot0:findTF("main/title_chapter_lines")
	slot0.chapterName = slot0:findTF("title_chapter/name", slot0.topChapter)
	slot0.chapterNoTitle = slot0:findTF("title_chapter/chapter", slot0.topChapter)
	slot0.resChapter = slot0:findTF("resources", slot0.topChapter)
	slot0.resPanel = PlayerResource.New()

	slot0.resPanel:setParent(slot0.resChapter, false)
	setActive(slot0.topChapter, true)
	setActive(slot0.topChapterLine, true)

	slot0.leftChapter = slot0:findTF("main/left_chapter")
	slot0.leftCanvasGroup = slot0.leftChapter:GetComponent(typeof(CanvasGroup))
	slot0.btnPrev = slot0:findTF("btn_prev", slot0.leftChapter)
	slot0.btnPrevCol = slot0:findTF("btn_prev/prev_image", slot0.leftChapter)
	slot0.eliteBtn = slot0:findTF("buttons/btn_elite", slot0.leftChapter)
	slot0.normalBtn = slot0:findTF("buttons/btn_normal", slot0.leftChapter)
	slot0.actNormalBtn = slot0:findTF("buttons/btn_act_normal/bg", slot0.leftChapter)
	slot0.actEliteBtn = slot0:findTF("buttons/btn_act_elite/bg", slot0.leftChapter)
	slot0.actExtraBtn = slot0:findTF("buttons/btn_act_extra/bg", slot0.leftChapter)
	slot0.actExtraBtnAnim = slot0:findTF("usm", slot0.actExtraBtn)
	slot0.remasterBtn = slot0:findTF("buttons/btn_remaster", slot0.leftChapter)
	slot0.remasterTipTF = slot0:findTF("tip", slot0.remasterBtn)

	setActive(slot0.actNormalBtn.parent, false)
	setActive(slot0.actEliteBtn.parent, false)

	slot0.escortBar = slot0:findTF("escort_bar", slot0.leftChapter)
	slot0.eliteQuota = slot0:findTF("elite_quota", slot0.leftChapter)

	setActive(slot0.eliteQuota, false)
	setActive(slot0.leftChapter, true)

	slot0.rightChapter = slot0:findTF("main/right_chapter")
	slot0.rightCanvasGroup = slot0.rightChapter:GetComponent(typeof(CanvasGroup))
	slot0.eventContainer = slot0:findTF("event_btns/event_container", slot0.rightChapter)
	slot0.btnSpecial = slot0:findTF("btn_special", slot0.eventContainer)

	setActive(slot0.btnSpecial, true)

	slot0.dailyBtn = slot0:findTF("daily_button", slot0.eventContainer)
	slot0.militaryExerciseBtn = slot0:findTF("btn_pvp", slot0.eventContainer)
	slot0.shamBtn = slot0:findTF("sham_button", slot0.eventContainer)
	slot0.mirrorBtn = slot0:findTF("btn_mirror", slot0.eventContainer)
	slot0.escortBtn = slot0:findTF("btn_escort", slot0.eventContainer)
	slot0.activityBtn = slot0:findTF("event_btns/activity_btn", slot0.rightChapter)
	slot0.ptTotal = slot0:findTF("event_btns/pt_text", slot0.rightChapter)
	slot0.ticketTxt = slot0:findTF("event_btns/tickets/Text", slot0.rightChapter)
	slot0.actExchangeShopBtn = slot0:findTF("event_btns/btn_exchange", slot0.rightChapter)
	slot0.signalBtn = slot0:findTF("btn_signal", slot0.rightChapter)

	setActive(slot0.signalBtn, false)

	slot0.btnNext = slot0:findTF("btn_next", slot0.rightChapter)
	slot0.btnNextCol = slot0:findTF("btn_next/next_image", slot0.rightChapter)
	slot0.countDown = slot0:findTF("event_btns/count_down", slot0.rightChapter)
	slot0.actExtraRank = slot0:findTF("event_btns/act_extra_rank", slot0.rightChapter)

	setActive(slot0.rightChapter, true)

	slot0.damageText = slot0:findTF("damage", slot0.topPanel)

	setActive(slot0.damageText, false)

	slot0.mapHelpBtn = slot0:findTF("help_button", slot0.topPanel)

	setActive(slot0.mapHelpBtn, false)

	slot0.avoidText = slot0:findTF("text_avoid", slot0.topPanel)
	slot0.commanderTinkle = slot0:findTF("neko_tinkle", slot0.topPanel)

	setActive(slot0.commanderTinkle, false)

	slot0.spResult = slot0:findTF("sp_result", slot0.topPanel)

	setActive(slot0.spResult, false)

	slot0.helpPage = slot0:findTF("help_page", slot0.topPanel)
	slot0.helpImage = slot0:findTF("icon", slot0.helpPage)
	slot0.helpBtn = slot0:findTF("help_button", slot0.bottomStage)

	setActive(slot0.helpPage, false)

	slot0.map = slot0:findTF("map")
	slot0.UIFXList = slot0:findTF("map/UI_FX_list")

	for slot5 = 0, slot0.UIFXList:GetComponentsInChildren(typeof(Renderer)).Length - 1, 1 do
		slot1[slot5].sortingOrder = -1
	end

	slot0.levelCam = GameObject.Find("LevelCamera").transform.GetComponent(slot2, typeof(Camera))
	slot0.uiMain = GameObject.Find("LevelCamera").transform.Find(slot2, "Canvas/UIMain")

	setActive(slot0.uiMain, false)

	GetOrAddComponent(slot0.uiMain, typeof(Image)).color = Color.New(0, 0, 0, 0.5)
	slot0.uiCam = GameObject.Find("UICamera"):GetComponent(typeof(Camera))
	slot0.levelGrid = slot0.uiMain:Find("LevelGrid")

	setActive(slot0.levelGrid, true)
	RemoveComponent(slot0.levelGrid, typeof(Image))

	slot0.dragLayer = slot0.levelGrid:Find("DragLayer") or cloneTplTo(slot0.levelGrid, slot0.levelGrid, "DragLayer")
	slot0.dragLayer.localEulerAngles = Vector3.zero
	slot0.float = slot0:findTF("float")
	slot0.clouds = slot0:findTF("clouds", slot0.float)
	slot0.chapters = slot0:findTF("levels", slot0.float)
	slot0.chapterTpl = slot0:findTF("level_tpl", slot0.float)
	slot0.escortChapters = slot0:findTF("escort_levels", slot0.float)
	slot0.escortChapterTpl = slot0:findTF("escort_level_tpl", slot0.float)

	setActive(slot0.clouds, true)
	setActive(slot0.chapterTpl, false)
	setActive(slot0.escortChapters, true)
	setActive(slot0.escortChapterTpl, false)

	slot0.resources = slot0:findTF("resources"):GetComponent("ItemList")
	slot0.arrowTarget = slot0.resources.prefabItem[0]
	slot0.bombEnemyTpl = slot0.resources.prefabItem[1]
	slot0.boxTpl = slot0.resources.prefabItem[2]
	slot0.championTpl = slot0.resources.prefabItem[3]
	slot0.deadTpl = slot0.resources.prefabItem[4]
	slot0.enemyTpl = slot0.resources.prefabItem[5]
	slot0.oniTpl = slot0.resources.prefabItem[6]
	slot0.rivalTpl = slot0.resources.prefabItem[7]
	slot0.shipTpl = slot0.resources.prefabItem[8]
	slot0.subTpl = slot0.resources.prefabItem[9]
	slot0.supplyTpl = slot0.resources.prefabItem[10]
	slot0.transportTpl = slot0.resources.prefabItem[11]
	slot0.transportTargetTpl = slot0.resources.prefabItem[12]

	setText(slot0:findTF("fighting/Text", slot0.enemyTpl), i18n("ui_word_levelui2_inevent"))
	setActive(slot0.arrowTarget, false)
	setActive(slot0.resources, false)
	setAnchoredPosition(slot0.topChapter, {
		y = 0
	})
	setAnchoredPosition(slot0.leftChapter, {
		x = 0
	})
	setAnchoredPosition(slot0.rightChapter, {
		x = 0
	})
end

function slot0.initEvents(slot0)
	slot0:bind(LevelUIConst.OPEN_COMMANDER_PANEL, function (slot0, slot1, slot2, slot3)
		slot0:openCommanderPanel(slot1, slot2, slot3)
	end)
	slot0:bind(LevelUIConst.TRACK_CHAPTER, function (slot0, slot1, slot2)
		slot0:trackChapter(slot1, slot2)
	end)
	slot0:bind(LevelUIConst.HANDLE_SHOW_MSG_BOX, function (slot0, slot1)
		slot0:HandleShowMsgBox(slot1)
	end)
	slot0:bind(LevelUIConst.DO_AMBUSH_WARNING, function (slot0, slot1)
		slot0:doAmbushWarning(slot1)
	end)
	slot0:bind(LevelUIConst.DISPLAY_AMBUSH_INFO, function (slot0, slot1)
		slot0:displayAmbushInfo(slot1)
	end)
	slot0:bind(LevelUIConst.DISPLAY_STRATEGY_INFO, function (slot0, slot1)
		slot0:displayStrategyInfo(slot1)
	end)
	slot0:bind(LevelUIConst.FROZEN, function (slot0, slot1)
		slot0:frozen(slot1)
	end)
	slot0:bind(LevelUIConst.UN_FROZEN, function (slot0)
		slot0:unfrozen()
	end)
	slot0:bind(LevelUIConst.IS_FROZEN, function (slot0)
		slot0.levelStageView.isFrozen = slot0:isfrozen()
	end)
	slot0:bind(LevelUIConst.DESTROY_LEVEL_STAGE_VIEW, function (slot0)
		slot0.levelStageView:Destroy()
	end)
	slot0:bind(LevelUIConst.DO_TRACKING, function (slot0, slot1)
		slot0:doTracking(slot1)
	end)
	slot0:bind(LevelUIConst.SWITCH_TO_MAP, function ()
		slot0:switchToMap()
	end)
end

function slot0.updateBattleActivitys(slot0, slot1)
	slot0.battleActivitys = slot1
end

function slot0.updateBattleActivity(slot0, slot1)
	slot2 = Map.New({
		id = slot1
	})
	slot0.battleActivity = slot0.battleActivitys[1]
	slot3 = slot2:getConfig("on_activity")

	if slot2:getConfig("on_activity") ~= 0 then
		for slot7, slot8 in ipairs(slot0.battleActivitys) do
			if slot8.id == slot3 then
				slot0.battleActivity = slot8

				break
			end
		end
	end
end

function slot0.updatePtActivity(slot0, slot1)
	slot0.ptActivity = slot1

	slot0:updateActivityRes()
end

function slot0.updateActivityRes(slot0)
	slot2 = findTF(slot0.ptTotal, "icon/Image")

	if findTF(slot0.ptTotal, "Text") and slot2 and slot0.ptActivity then
		setText(slot1, "x" .. slot0.ptActivity.data1)
		GetImageSpriteFromAtlasAsync(pg.item_data_statistics[id2ItemId(tonumber(slot0.ptActivity:getConfig("config_id")))].icon, "", slot2, true)
	end
end

function slot0.updateBossBattleAct(slot0, slot1)
	slot0.bossBattleActivity = slot1

	if slot0.activityBossBattlePanel then
		slot0.activityBossBattlePanel:update(slot0.bossBattleActivity)
	end
end

function slot0.didEnter(slot0)
	slot0.openedCommanerSystem = not LOCK_COMMANDER and pg.SystemOpenMgr:GetInstance():isOpenSystem(slot0.player.level, "CommandRoomMediator")

	onButton(slot0, slot0:findTF("back_button", slot0.topChapter), function ()
		if slot0.contextData.map and (slot0:isActivity() or slot0:isEscort()) then
			slot0:emit(LevelMediator2.ON_SWITCH_NORMAL_MAP)

			return
		else
			slot0:emit(slot1.ON_BACK)
		end
	end, SFX_CANCEL)
	onButton(slot0, slot0.btnSpecial, function ()
		if slot0:isfrozen() then
			return
		end

		slot0:emit(LevelMediator2.ON_OPEN_EVENT_SCENE)
	end, SFX_PANEL)
	onButton(slot0, slot0.dailyBtn, function ()
		if slot0:isfrozen() then
			return
		end

		DailyLevelProxy.dailyLevelId = nil

		DailyLevelProxy:emit(LevelMediator2.ON_DAILY_LEVEL)
	end, SFX_PANEL)
	onButton(slot0, slot0.militaryExerciseBtn, function ()
		if slot0:isfrozen() then
			return
		end

		slot0:emit(LevelMediator2.ON_OPEN_MILITARYEXERCISE)
	end, SFX_PANEL)
	onButton(slot0, slot0.shamBtn, function ()
		if slot0:isfrozen() then
			return
		end

		slot0, slot1 = pg.SystemOpenMgr:GetInstance():isOpenSystem(slot0.player.level, "ShamPreCombatMediator")

		if slot0 then
			slot0:emit(LevelMediator2.ON_OPEN_SHAM)
		else
			pg.TipsMgr:GetInstance():ShowTips(slot1)
		end
	end, SFX_PANEL)
	onButton(slot0, slot0.normalBtn:Find("bg"), function ()
		if slot0:isfrozen() then
			return
		end

		slot0:setMap(slot0.contextData.map:getBindMap())
	end, SFX_PANEL)
	onButton(slot0, slot0.eliteBtn:Find("bg"), function ()
		if slot0:isfrozen() then
			return
		end

		if slot0.contextData.map:getBindMap() == 0 then
			pg.TipsMgr:GetInstance():ShowTips(i18n("elite_disable_unusable"))

			if getProxy(ChapterProxy):getUseableMaxEliteMap() then
				slot0:setMap(slot1.configId)
				pg.TipsMgr:GetInstance():ShowTips(i18n("elite_warp_to_latest_map"))
			end
		elseif slot0.contextData.map:isEliteEnabled() then
			slot0:setMap(slot0.contextData.map:getBindMap())
		else
			pg.TipsMgr:GetInstance():ShowTips(i18n("elite_disable_unsatisfied"))
		end
	end, SFX_UI_WEIGHANCHOR_HARD)
	onButton(slot0, slot0.remasterBtn:Find("bg"), function ()
		if slot0:isfrozen() then
			return
		end

		slot0:displayRemasterPanel()
		getProxy(ChapterProxy):setRemasterTip(false)
		SetActive(slot0.remasterTipTF, false)
	end, SFX_PANEL)
	onButton(slot0, slot0.escortBtn, function ()
		if slot0:isfrozen() then
			return
		end

		slot0, slot1 = pg.SystemOpenMgr:GetInstance():isOpenSystem(slot0.player.level, "Escort")

		if not slot0 then
			pg.TipsMgr:GetInstance():ShowTips(slot1)

			return
		end

		if not slot0.contextData.map:isEscort() then
			if #getProxy(ChapterProxy).escortMaps == 0 or _.any(slot4, function (slot0)
				return slot0:shouldFetch()
			end) then
				slot0:emit(LevelMediator2.ON_FETCH_ESCORT)
			else
				slot0:setMap(slot4[1].id)
			end
		end
	end, SFX_PANEL)
	onButton(slot0, slot0.signalBtn, function ()
		if slot0:isfrozen() then
			return
		end

		slot0:displaySignalPanel()
	end, SFX_PANEL)
	setActive(slot0:findTF("lock", slot0.btnSpecial), not pg.SystemOpenMgr:GetInstance():isOpenSystem(slot0.player.level, "EventMediator"))
	setGray(slot0.btnSpecial, not pg.SystemOpenMgr.GetInstance().isOpenSystem(slot0.player.level, "EventMediator"), true)
	setActive(slot0:findTF("lock", slot0.dailyBtn), not pg.SystemOpenMgr:GetInstance():isOpenSystem(slot0.player.level, "DailyLevelMediator"))
	setGray(slot0.dailyBtn, not pg.SystemOpenMgr.GetInstance().isOpenSystem(slot0.player.level, "DailyLevelMediator"), true)
	setActive(slot0:findTF("lock", slot0.militaryExerciseBtn), not pg.SystemOpenMgr:GetInstance():isOpenSystem(slot0.player.level, "MilitaryExerciseMediator"))
	setGray(slot0.militaryExerciseBtn, not pg.SystemOpenMgr.GetInstance().isOpenSystem(slot0.player.level, "MilitaryExerciseMediator"), true)

	if OPEN_ESCORT then
		setActive(slot0:findTF("lock", slot0.escortBtn), not pg.SystemOpenMgr:GetInstance():isOpenSystem(slot0.player.level, "Escort"))
		setGray(slot0.escortBtn, not pg.SystemOpenMgr.GetInstance().isOpenSystem(slot0.player.level, "Escort"), true)
		setActive(slot0.escortBtn, true)
	else
		setActive(slot0.escortBtn, false)
	end

	setActive(slot0.shamBtn, not ChapterConst.ActivateMirror and getProxy(ChapterProxy).getShamChapter(slot4):isOpen())

	if slot6 then
		setText(slot0:findTF("day", slot0.shamBtn), slot5:getRestDays())
	end

	setActive(slot0:findTF("lock", slot0.shamBtn), not pg.SystemOpenMgr:GetInstance():isOpenSystem(slot0.player.level, "ShamPreCombatMediator"))
	setGray(slot0.shamBtn, not pg.SystemOpenMgr.GetInstance().isOpenSystem(slot0.player.level, "ShamPreCombatMediator"), true)
	slot0:emit(LevelMediator2.ON_EVENT_LIST_UPDATE)

	if slot0.contextData.editEliteChapter then
		slot0:displayFleetEdit(slot0.contextData.editEliteChapter)

		slot0.contextData.editEliteChapter = nil
	end

	for slot13, slot14 in ipairs(getProxy(ContextProxy).getContextByMediator(slot8, LevelMediator2).children) do
		function slot14.onRemoved()
			slot0:onSubLayerClose()
		end
	end

	if #slot9.children > 0 then
		slot0:onSubLayerOpen()
	else
		slot0:onSubLayerClose()
	end

	if not slot0.contextData.isSwitchToChapter then
		slot0:tryPlaySubGuide()
	end

	if slot0.contextData.selectedChapterVO then
		slot0:displayFleetSelect(slot0.contextData.selectedChapterVO)
	end

	if slot4:ifShowRemasterTip() then
		SetActive(slot0.remasterTipTF, true)
	else
		SetActive(slot0.remasterTipTF, false)
	end

	if slot0.contextData.open_remaster then
		slot0:displayRemasterPanel(slot0.contextData.open_remaster)

		slot0.contextData.open_remaster = nil
	end
end

function slot0.tryPlaySubGuide(slot0)
	slot1 = false

	if slot0.subRefreshCount > 0 and slot0.player.level >= 20 then
		slot3 = getProxy(ChapterProxy).getChapterById(slot2, 304)

		if not pg.StoryMgr:GetInstance():IsPlayed("NG001") and slot3:isClear() then
			if slot2:getActiveChapter() then
				slot0:emit(LevelMediator2.ON_OP, {
					type = ChapterConst.OpRetreat
				})
			end

			if slot0.contextData.map:isActivity() then
				slot0:emit(LevelMediator2.ON_SWITCH_NORMAL_MAP)
			end

			slot1 = true

			pg.StoryMgr:GetInstance():PlayGuide("NG001")
		end
	end

	if not slot1 and not pg.StoryMgr:GetInstance():IsPlayed("NG002") then
		slot3 = getProxy(FleetProxy):getFleetById(11)

		if getProxy(TaskProxy):getTaskById(10302) and slot2:isFinish() and not slot2:isReceive() and slot3:isEmpty() then
			if getProxy(ChapterProxy):getActiveChapter() then
				slot0:switchToMap()
			end

			pg.StoryMgr:GetInstance():PlayGuide("NG002", (_.any(getProxy(BayProxy):getShips(), function (slot0)
				return slot0 and slot0.configId == 308031
			end) and {
				2
			}) or {
				2,
				1
			})

			slot1 = true
		end
	end
end

function slot0.onBackPressed(slot0)
	if slot0:isfrozen() or (slot0.levelAmbushView and slot0.levelAmbushView:CheckState(BaseSubView.STATES.INITED)) then
		return
	end

	playSoundEffect(SFX_CANCEL)

	if slot0.levelInfoView and slot0.levelInfoView:CheckState(BaseSubView.STATES.INITED) then
		slot0:hideChapterPanel()

		return
	end

	if slot0.levelFleetView and slot0.levelFleetView:CheckState(BaseSubView.STATES.INITED) then
		slot0:hideFleetEdit()

		return
	end

	if slot0.levelSignalView and slot0.levelSignalView:CheckState(BaseSubView.STATES.INITED) then
		slot0:hideSignalPanel()

		return
	end

	if slot0.levelStrategyView and slot0.levelStrategyView:CheckState(BaseSubView.STATES.INITED) then
		slot0:hideStrategyInfo()

		return
	end

	if slot0.levelRepairView and slot0.levelRepairView:CheckState(BaseSubView.STATES.INITED) then
		slot0:hideRepairWindow()

		return
	end

	if slot0.levelRemasterView and slot0.levelRemasterView:CheckState(BaseSubView.STATES.INITED) then
		slot0:hideRemasterPanel()

		return
	end

	if isActive(slot0.helpPage) then
		setActive(slot0.helpPage, false)

		return
	end

	if slot0.contextData.chapterVO and slot1:getDataType() ~= ChapterConst.TypeGuild then
		slot0:switchToMap()

		return
	end

	triggerButton(slot0:findTF("back_button", slot0.topChapter))
end

function slot0.selectMap(slot0, slot1)
	if not slot0.contextData.mapIdx then
		if Map.lastMap and slot1[Map.lastMap] then
			slot2 = Map.lastMap
		else
			for slot6, slot7 in pairs(slot1) do
				if slot7:isUnlock() and slot7:getMapType() == Map.SCENARIO then
					slot2 = slot7.id
				end
			end
		end
	end

	return slot2
end

function slot0.setMaps(slot0, slot1)
	slot0.maps = slot1

	slot0:initMapBtn(slot0.btnPrev, -1)
	slot0:initMapBtn(slot0.btnNext, 1)
	slot0:setMap(slot0:selectMap(slot1))
end

function slot0.setShipGroups(slot0, slot1)
	slot0.shipGroups = slot1
end

function slot0.setShips(slot0, slot1)
	slot0.shipVOs = slot1
end

function slot0.updateRes(slot0, slot1)
	slot0.resPanel:setResources(slot1)

	slot0.player = slot1
end

function slot0.setEliteQuota(slot0, slot1, slot2)
	slot3 = slot2 - slot1
	slot5 = slot0:findTF("bg/Text", slot0.eliteQuota):GetComponent(typeof(Text))

	if slot1 == slot2 then
		slot5.color = Color.red
	else
		slot5.color = Color.New(0.47, 0.89, 0.27)
	end

	slot5.text = slot3 .. "/" .. slot2
end

function slot0.updateSubInfo(slot0, slot1, slot2)
	slot0.subRefreshCount = slot1
	slot0.subProgress = slot2

	setText(slot0.signalBtn:Find("nums"), slot0.subRefreshCount)
end

function slot0.updateLastFleet(slot0, slot1)
	slot0.lastFleetIndex = slot1
end

function slot0.updateEvent(slot0, slot1)
	setActive(slot0:findTF("tip", slot0.btnSpecial), slot1:hasFinishState())
end

function slot0.updateFleet(slot0, slot1)
	slot0.fleets = slot1
end

function slot0.updateChapterVO(slot0, slot1, slot2)
	if slot1:getDataType() == ChapterConst.TypeNone then
		slot0.maps[slot1:getConfig("map")].updateChapter(slot5, slot1)
		slot0.maps[slot1.getConfig("map")]:updateChapters(slot0.maps[slot1.getConfig("map") - 1])

		if not slot0.contextData.chapterVO then
			if slot0.contextData.mapIdx == slot4 then
				slot0:updateMapItems()
			end

			if slot0.levelSignalView and slot0.levelSignalView:CheckState(BaseSubView.STATES.INITED) then
				slot0.levelSignalView:ActionInvoke("flush")
			end
		end
	end

	if slot0.contextData.chapterVO and slot0.contextData.chapterVO:getDataType() == slot3 and slot0.contextData.chapterVO.id == slot1.id and slot1.active then
		slot0:setChapter(slot1)

		slot4 = false
		slot5 = false

		if slot2 < 0 or bit.band(slot2, ChapterConst.DirtyFleet) > 0 then
			slot0.levelStageView:updateStageFleet()
			slot0.levelStageView:updateAmbushRate(slot1.fleet.line, true)

			slot5 = true

			if slot0.grid then
				slot0.grid:clearFleets()
				slot0.grid:initFleets()

				slot4 = true
			end
		end

		if (slot2 < 0 or bit.band(slot2, ChapterConst.DirtyChampion) > 0) and slot0.grid then
			slot0.grid:updateFleets()
			slot0.grid:clearChampions()
			slot0.grid:initChampions()

			slot4 = true
		end

		if slot2 < 0 or bit.band(slot2, ChapterConst.DirtyAchieve) > 0 then
			slot0.levelStageView:updateStageAchieve()
		end

		if slot2 < 0 or bit.band(slot2, ChapterConst.DirtyAttachment) > 0 then
			slot0.levelStageView:updateAmbushRate(slot1.fleet.line, true)

			if slot3 == ChapterConst.TypeSham then
				slot0.levelStageView:updateShamProgress()
			end

			if slot0.grid then
				if slot2 >= 0 and bit.band(slot2, ChapterConst.DirtyFleet) <= 0 then
					slot0.grid:updateFleet(slot1.findex)
				end

				slot0.grid:updateAttachments()

				if slot2 < 0 or bit.band(slot2, ChapterConst.DirtyAutoAction) > 0 then
					slot0.grid:updateQuadCells(ChapterConst.QuadStateNormal)
				else
					slot4 = true
				end
			end
		end

		if slot2 < 0 or bit.band(slot2, ChapterConst.DirtyStrategy) > 0 then
			slot0.levelStageView:updateStageStrategy()

			slot5 = true

			slot0.levelStageView:updateStageBarrier()
		end

		if slot2 < 0 or bit.band(slot2, ChapterConst.DirtyAutoAction) > 0 then
			slot0.levelStageView:tryAutoAction()
		elseif slot4 then
			slot0.grid:updateQuadCells(ChapterConst.QuadStateNormal)
		end

		if slot5 then
			slot0.levelStageView:updateFleetBuff()
		end
	end
end

function slot0.updateClouds(slot0)
	slot0.cloudRTFs = {}
	slot0.cloudRects = {}
	slot0.cloudTimer = {}

	for slot4 = 1, 6, 1 do
		table.insert(slot0.cloudRTFs, slot6)
		table.insert(slot0.cloudRects, rtf(slot5).rect.width)
	end

	slot0:initCloudsPos()

	for slot4, slot5 in ipairs(slot0.cloudRTFs) do
		slot6 = slot0.cloudRects[slot4]
		slot7 = slot0.initPositions[slot4] or Vector2(0, 0)
		slot10 = nil
		LeanTween.moveX(slot5, slot0.mapWidth, slot9):setRepeat(-1):setOnCompleteOnRepeat(true):setOnComplete(System.Action(function ()
			slot0 = slot1.cloudRects[slot2]
			slot3.anchoredPosition = Vector2(-slot1.cloudRects[slot2], slot4.y)

			slot5:setFrom(-slot1.cloudRects[slot2]):setTime((slot1.mapWidth + slot1.cloudRects[slot2]) / slot6)

			return
		end)).passed = math.random() * (slot0.mapWidth + slot6) / (30 - slot7.y / 20)
		slot0.cloudTimer[slot4] = LeanTween.moveX(slot5, slot0.mapWidth, slot9).setRepeat(-1).setOnCompleteOnRepeat(true).setOnComplete(System.Action(function ()
			slot0 = slot1.cloudRects[slot2]
			slot3.anchoredPosition = Vector2(-slot1.cloudRects[slot2], slot4.y)

			slot5.setFrom(-slot1.cloudRects[slot2]).setTime((slot1.mapWidth + slot1.cloudRects[slot2]) / slot6)

			return
		end)).uniqueId
		slot7 = Vector2(0, 0)
	end
end

function slot0.updateCouldAnimator(slot0)
	if slot0.contextData.map:getConfig("animtor") == 1 then
		slot1 = slot0.contextData.map:getConfig("ani_name")

		if slot0.tornadoTF and slot0.aniName ~= slot1 then
			slot0:destroyCloudAnimator()
		end

		function slot2()
			slot0.tornadoTF.transform.localScale = Vector3(slot0.tornadoTF.transform.parent.rect.width / slot0.tornadoTF.transform.rect.width, slot0.tornadoTF.transform.parent.rect.height / slot0.tornadoTF.transform.rect.height, 1)

			return
		end

		if IsNil(slot0.tornadoTF) then
			if slot0.animtorLoading then
				return
			end

			slot0.animtorLoading = slot1

			PoolMgr.GetInstance():GetUI(slot1, true, function (slot0)
				if not slot0.contextData then
					return
				end

				if slot0.animtorLoading ~= slot0.contextData.map:getConfig("ani_name") then
					slot0.animtorLoading = nil

					return
				end

				slot0.animtorLoading = nil
				slot3 = slot0
				slot2 = slot0.SetActive

				if slot0.contextData.map:getConfig("animtor") == 1 then
					slot4 = not slot0.isSubLayerOpen
				else
					slot4 = false

					if false then
						slot4 = true
					end
				end

				slot2(slot3, slot4)

				slot0.tornadoTF = slot0

				setParent(slot0, slot0:findTF("map"))
				tf(slot0.tornadoTF):SetSiblingIndex(1)

				slot0.aniName = slot1

				slot0()

				return
			end)
		else
			setParent(slot0.tornadoTF, slot0:findTF("map"))
			tf(slot0.tornadoTF):SetSiblingIndex(1)
			setActive(slot0.tornadoTF, true)
			slot2()
		end

		return
	end

	if not IsNil(slot0.tornadoTF) then
		setActive(slot0.tornadoTF, false)
	end
end

function slot0.updateActivityBtns(slot0)
	slot1 = slot0.contextData.map:isActivity()
	slot2 = slot0.contextData.map:isRemaster()
	slot3 = slot0.contextData.map:getConfig("type")

	if slot0.battleActivity then
		slot4 = not slot0.battleActivity:isEnd()
	end

	slot5 = setActive
	slot6 = slot0.activityBtn

	if not slot1 then
		slot7 = slot4
	else
		slot7 = false

		if false then
			slot7 = true
		end
	end

	slot5(slot6, slot7)

	if slot0.contextData.map:isEscort() then
		setActive(slot0.activityBtn, false)
	end

	slot7 = setActive
	slot8 = slot0.signalBtn

	if getProxy(ChapterProxy).getChapterById(slot5, 304) and slot6:isClear() then
		if slot3 ~= Map.SCENARIO and slot3 ~= Map.ELITE then
			slot9 = false
		else
			slot9 = true
		end
	end

	slot7(slot8, slot9)

	slot7 = false
	slot9 = nil

	if ActivityLevelConst.hasExtraMap(slot0.maps) then
		slot10 = _.any

		if not slot0.battleActivitys then
			slot11 = {}
		end

		slot7 = slot10(slot11, function (slot0)
			if slot0.id == slot0:getConfig("on_activity") then
				slot1 = slot0:getConfig("type")
			end

			if slot0.id ~= slot0:getConfig("on_activity") then
				slot1 = false
			else
				slot1 = true
			end

			return slot1
		end)
	end

	if slot7 then
		if slot3 ~= Map.ACT_EXTRA then
			slot10 = false
		else
			slot10 = true
		end
	end

	slot11 = slot0.contextData.map:existHardMap()
	slot13 = ActivityLevelConst.isClearMaps(slot12, Map.ACTIVITY_EASY)
	slot14 = ActivityLevelConst.isClearMaps(slot12, Map.ACTIVITY_HARD)
	slot15 = setActive
	slot16 = slot0.actExtraBtn.parent

	if slot7 and slot1 then
		if not slot10 then
			slot17 = not slot2
		else
			slot17 = false

			if false then
				slot17 = true
			end
		end
	end

	slot15(slot16, slot17)

	slot15 = setActive
	slot16 = slot0.actEliteBtn.parent

	if slot11 and (slot3 ~= Map.ACTIVITY_EASY or (not slot4 and not slot2)) and slot1 then
		slot17 = slot10
	end

	slot15(slot16, slot17)

	slot15 = setActive
	slot16 = slot0.actNormalBtn.parent

	if (slot3 ~= Map.ACTIVITY_HARD or (not slot4 and not slot2)) and slot1 then
		slot17 = slot10
	end

	slot15(slot16, slot17)

	slot15 = setActive
	slot16 = slot0.actExtraRank

	if slot1 then
		slot17 = slot10
	end

	slot15(slot16, slot17)

	slot15 = setActive
	slot16 = slot0.remasterBtn

	if OPEN_REMASTER then
		if slot3 ~= Map.SCENARIO and slot3 ~= Map.ELITE then
			slot17 = slot2

			if slot2 then
				slot17 = false
			end
		else
			slot17 = true
		end
	end

	slot15(slot16, slot17)
	setActive(slot0.ticketTxt.parent, slot2)

	if slot2 then
		setText(slot0.ticketTxt, slot5.remasterTickets .. " / " .. pg.gameset.reactivity_ticket_max.key_value)
	end

	if slot1 then
		setActive(slot0.eliteQuota, false)
		slot0:updateActivityRes()
	end

	if ActivityConst.BATTLE_MAP_TYPE == Map.SINGLE_MAP then
		setActive(slot0.ptTotal, false)
		setActive(slot0.actExchangeShopBtn, false)
		setActive(slot0.mirrorBtn, false)
		setActive(slot0.eventContainer, true)
	else
		if ActivityConst.BATTLE_MAP_TYPE == Map.MUTIL_MAP then
			slot15 = setActive
			slot16 = slot0.ptTotal

			if not ActivityConst.HIDE_PT_PANELS then
				if slot0.ptActivity and not slot0.ptActivity:isEnd() and slot1 then
					slot17 = not slot2
				end
			else
				slot17 = false

				if false then
					slot17 = true
				end
			end

			slot15(slot16, slot17)

			slot15 = setActive
			slot16 = slot0.actExchangeShopBtn

			if slot1 then
				if not ActivityConst.HIDE_PT_PANELS then
					if slot4 then
						slot17 = not slot2
					end
				else
					slot17 = false

					if false then
						slot17 = true
					end
				end
			end

			slot15(slot16, slot17)
			setActive(slot0.mirrorBtn, false)
			setActive(slot0.eventContainer, not slot1)
		end
	end

	if not slot11 or not slot14 then
		if not slot11 then
			slot15 = slot13
		else
			slot15 = false

			if false then
				slot15 = true
			end
		end
	end

	if slot7 and slot1 and not slot10 and slot15 then
		setActive(slot0.actExtraBtnAnim, true)
	else
		setActive(slot0.actExtraBtnAnim, false)
	end

	slot0:updateCountDown()
	slot0:registerActBtn()

	if slot1 and not slot10 then
		Map.lastMapForActivity = slot0.contextData.mapIdx
	end

	return
end

function slot0.updateBossBattleMsg(slot0, slot1)
	if slot0.activityBossBattlePanel then
		slot0.activityBossBattlePanel:updateMsg(slot1)
	end

	return
end

function slot0.updateCountDown(slot0)
	if slot0.newChapterCDTimer then
		slot0.newChapterCDTimer:Stop()

		slot0.newChapterCDTimer = nil
	end

	slot1 = 0

	if slot0.contextData.map:isRemaster() then
		if slot0.contextData.map.remasterId == getProxy(ChapterProxy):getActiveRemaster() then
			slot1 = math.max(slot2.remasterTime - pg.TimeMgr.GetInstance():GetServerTime(), 0)
		end

		setActive(slot0.countDown, true)

		slot3 = setText
		slot4 = slot0.countDown:Find("title")
		slot5 = i18n

		if slot1 > 0 then
			slot6 = "levelScene_chapter_open_count_down"
		else
			slot6 = "levelScene_chapter_not_open"
		end

		slot3(slot4, slot5(slot6))
	else
		if slot0.contextData.map:isActivity() then
			slot2 = getProxy(ActivityProxy)
			slot3 = pg.TimeMgr.GetInstance()

			_.each(pg.chapter_template.all, function (slot0)
				if (pg.expedition_data_by_map[pg.chapter_template[slot0].map].type == Map.ACTIVITY_HARD or slot2.type == Map.ACTIVITY_HARD) and pg.activity_template[slot1.act_id] and slot3.time and #slot3.time == 3 and slot0:parseTimeFromConfig(slot3.time[2]) - slot0:GetServerTime() > 0 then
					if slot1 == 0 then
						slot1 = slot4
					else
						slot1 = math.min(slot1, slot4)
					end
				end

				return
			end)

			slot4 = setActive
			slot5 = slot0.countDown

			if slot1 <= 0 then
				slot6 = false
			else
				slot6 = true
			end

			slot4(slot5, slot6)
			setText(slot0.countDown:Find("title"), i18n("levelScene_new_chapter_coming"))
		else
			setActive(slot0.countDown, false)
		end
	end

	if slot1 > 0 then
		setText(slot0.countDown:Find("time"), pg.TimeMgr.GetInstance():DescCDTime(slot1))

		slot0.newChapterCDTimer = Timer.New(function ()
			if slot0 - 1 <= 0 then
				slot1:updateCountDown()

				if not slot1.contextData.chapterVO then
					slot1 = getProxy(ChapterProxy).getMaps(slot0)

					slot1:setMaps(slot1)
					slot1:setMap(slot1.contextData.mapIdx)
				end
			else
				setText(slot1.countDown:Find("time"), pg.TimeMgr.GetInstance():DescCDTime(setText))
			end

			return
		end, 1, -1)

		slot0.newChapterCDTimer:Start()
	else
		setText(slot0.countDown:Find("time"), "")
	end

	return
end

function slot0.updateEscortInfo(slot0)
	setActive(slot0.escortBar, slot0.contextData.map.isEscort(slot1))
	setActive(slot0.mapHelpBtn, slot0.contextData.map:isEscort())

	if slot0.contextData.map:isEscort() then
		slot2 = getProxy(ChapterProxy)

		setText(slot0.escortBar:Find("times/text"), slot2:getMaxEscortChallengeTimes() - slot2.escortChallengeTimes .. "/" .. slot3)
		onButton(slot0, slot0.mapHelpBtn, function ()
			slot0:HandleShowMsgBox({
				type = MSGBOX_TYPE_HELP,
				helps = i18n("levelScene_escort_help_tip")
			})

			return
		end, SFX_PANEL)
	end

	return
end

function slot0.registerActBtn(slot0)
	if slot0.isRegisterBtn then
		return
	end

	slot0.isRegisterBtn = true

	onButton(slot0, slot0.actExtraRank, function ()
		if slot0:isfrozen() then
			return
		end

		slot0:emit(LevelMediator2.ON_EXTRA_RANK)

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.actExtraBtn, function ()
		if slot0:isfrozen() then
			return
		end

		slot0:emit(LevelMediator2.ON_ENTER_EXTRA_CHAPTER)

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.activityBtn, function ()
		if slot0:isfrozen() then
			return
		end

		slot0:emit(LevelMediator2.ON_ACTIVITY_MAP)

		return
	end, SFX_UI_CLICK)
	onButton(slot0, slot0.actExchangeShopBtn, function ()
		if slot0:isfrozen() then
			return
		end

		slot0:emit(LevelMediator2.GO_ACT_SHOP)

		return
	end, SFX_UI_CLICK)
	onButton(slot0, slot0.mirrorBtn, function ()
		if slot0:isfrozen() then
			return
		end

		slot0, slot1 = pg.SystemOpenMgr:GetInstance():isOpenSystem(slot0.player.level, "ShamPreCombatMediator")

		if slot0 then
			slot0:emit(LevelMediator2.ON_OPEN_SHAM)
		else
			pg.TipsMgr:GetInstance():ShowTips(slot1)
		end

		return
	end, SFX_UI_CLICK)

	function slot1()
		for slot4, slot5 in pairs(slot0.maps) do
			if slot5:getActiveChapter() then
				slot0 = slot6:getConfig("name")

				break
			end
		end

		if slot0 then
			slot0:HandleShowMsgBox({
				modal = true,
				hideNo = true,
				content = i18n("activity_level_inwarime_tip", slot0)
			})

			return true
		end

		return false
	end

	function slot2(slot0, slot1)
		if ActivityLevelConst.getMapsByType(slot0.maps, slot0, slot1)[1] and slot0.maps[slot3.id - 1] and not slot4:isClearForActivity() then
			return false
		end

		return true
	end

	onButton(slot0, slot0.actEliteBtn, function ()
		if slot0:isfrozen() then
			return
		end

		if slot0.contextData.map:isRemaster() then
			if slot0.maps[slot0:getBindMap() - 1] and not slot2:isClearForActivity() then
				pg.TipsMgr:GetInstance():ShowTips(i18n("battle_levelScene_lock"))

				return
			end

			slot0:setMap(slot0:getBindMap())

			return
		end

		if slot1() then
			return
		end

		if not slot2(Map.ACTIVITY_HARD, slot0.battleActivity.id) then
			pg.TipsMgr:GetInstance():ShowTips(i18n("battle_levelScene_lock"))

			return
		end

		slot0:emit(LevelMediator2.ON_SWITCH_ACT_MAP, slot0.battleActivity.id, Map.ACTIVITY_HARD)

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.actNormalBtn, function ()
		if slot0:isfrozen() then
			return
		end

		if slot0.contextData.map:isRemaster() then
			slot0:setMap(slot0:getBindMap())

			return
		end

		if slot1() then
			return
		end

		if not slot2(Map.ACTIVITY_EASY, slot0.battleActivity.id) then
			pg.TipsMgr:GetInstance():ShowTips(i18n("battle_levelScene_lock"))

			return
		end

		slot0:emit(LevelMediator2.ON_SWITCH_ACT_MAP, slot0.battleActivity.id, Map.ACTIVITY_EASY)

		return
	end, SFX_PANEL)

	return
end

function slot0.destroyCloudAnimator(slot0)
	if not IsNil(slot0.tornadoTF) then
		slot0.tornadoTF.transform.localScale = Vector3.one

		PoolMgr.GetInstance():ReturnUI(slot0.aniName, slot0.tornadoTF)

		slot0.tornadoTF = nil
	end

	return
end

function slot0.initCloudsPos(slot0, slot1)
	slot0.initPositions = {}

	if not slot1 then
		slot2 = 1
	end

	slot3 = pg.expedition_data_by_map[slot2].clouds_pos

	for slot7, slot8 in ipairs(slot0.cloudRTFs) do
		if slot3[slot7] then
			slot8.anchoredPosition = Vector2(slot9[1], slot9[2])

			table.insert(slot0.initPositions, slot8.anchoredPosition)
		else
			setActive(slot8, false)
		end
	end

	return
end

function slot0.initMapBtn(slot0, slot1, slot2)
	onButton(slot0, slot1, function ()
		if slot0:isfrozen() then
			return
		end

		if slot0.maps[slot0.contextData.mapIdx + slot1] then
			if slot1:getMapType() == Map.ELITE and not slot1:isEliteEnabled() then
				slot0 = slot0.maps[slot1:getBindMap()].id

				pg.TipsMgr:GetInstance():ShowTips(i18n("elite_disable_unusable"))
			end

			if slot2 == Map.ACTIVITY_EASY or slot2 == Map.ACTIVITY_HARD then
				if slot0.maps[slot0 - 1] and not slot3:isClearForActivity() then
					pg.TipsMgr:GetInstance():ShowTips(i18n("levelScene_map_lock"))

					return
				else
					if not slot1:isUnlock() then
						pg.TipsMgr:GetInstance():ShowTips(i18n("battle_levelScene_lock_1"))

						return
					end
				end
			end

			if not slot1:isUnlock() then
				slot3 = i18n("levelScene_map_lock")

				if slot0.maps[slot0 - 1] and slot4:isClear() then
					slot3 = i18n("levelScene_chapter_unlock_tip", slot1:getConfig("level_limit"))
				end

				pg.TipsMgr:GetInstance():ShowTips(slot3)

				return
			end

			slot0:setMap(slot0)
		end

		return
	end, SFX_PANEL)

	return
end

function slot0.setMap(slot0, slot1)
	slot0.contextData.mapIdx = slot1
	slot0.contextData.map = slot0.maps[slot1]

	slot0:updateBattleActivity(slot1)
	slot0:updateMap()
	slot0:tryPlayMapStory()

	return
end

function slot0.updateMap(slot0)
	playBGM(slot0.contextData.map.getConfig(slot1, "bgm"))

	if slot0.contextData.map:getConfig("bg") and #slot2 > 0 then
		GetSpriteFromAtlasAsync("levelmap/" .. slot2, "", function (slot0)
			if not IsNil(slot0.map) and slot1 == slot0.contextData.map then
				setImageSprite(slot0.map, slot0, true)

				slot0.float.sizeDelta = slot0.map.sizeDelta
				slot0.float.localPosition = slot0.map.localPosition
			end

			return
		end)

		GetComponent(slot0.map, "Image").enabled = true
	else
		setImageSprite(slot0.map, nil)
		slot0:updateCouldAnimator()
	end

	setActive(slot0.btnPrev, slot3)
	setActive(slot0.btnNext, slot4)

	slot5 = Color.New(0.5, 0.5, 0.5, 1)
	slot6 = setImageColor
	slot7 = slot0.btnPrevCol

	if not slot0.maps[slot1.id - 1] or not slot3:isUnlock() or not Color.white then
		slot8 = slot5
	end

	slot6(slot7, slot8)

	slot6 = setImageColor
	slot7 = slot0.btnNextCol

	if not slot4 or not slot4:isUnlock() or not Color.white then
		slot8 = slot5
	end

	slot6(slot7, slot8)
	setText(slot0.chapterName, string.split(slot1:getConfig("name"), "||")[1])

	if slot1:isEscort() then
		clearImageSprite(slot0.chapterNoTitle, nil)
	else
		setImageSprite(slot0.chapterNoTitle, GetSpriteFromAtlas("chapterno", "chapter" .. slot1:getMapTitleNumber()), true)
	end

	setActive(slot0.topChapter:Find("type_chapter"), not slot1:isEscort())
	setActive(slot0.topChapter:Find("type_escort"), slot1:isEscort())
	slot0:updateEscortInfo()

	if not slot0.contextData.chapterVO or not slot7.active then
		slot0:updateMapItems()
		slot0:switchDifficulty()
		slot0:updateActivityBtns()
		slot0:updateCouldAnimator()
	end

	if slot0.contextData.openChapterId then
		if slot0.chapterTFsById[slot0.contextData.openChapterId] then
			slot10 = slot8:Find("sub")
			slot11 = triggerButton

			if not isActive(slot8:Find("main")) or not slot9 then
				slot12 = slot10
			end

			slot11(slot12)
		end

		slot0.contextData.openChapterId = nil
	end

	return
end

function slot0.updateMapItems(slot0)
	for slot4 = 1, slot0.UIFXList.childCount, 1 do
		if slot0.UIFXList:GetChild(slot4 - 1) then
			setActive(slot5, false)
		end
	end

	if slot0.contextData.map:getConfig("cloud_suffix") == "" then
		setActive(slot0.clouds, false)
	else
		setActive(slot0.clouds, true)

		for slot6, slot7 in ipairs(slot1:getConfig("clouds_pos")) do
			slot0.cloudRTFs[slot6].GetComponent(slot8, typeof(Image)).enabled = false

			GetSpriteFromAtlasAsync("clouds/cloud_" .. slot6 .. "_" .. slot2, "", function (slot0)
				if not slot0.exited and not IsNil(IsNil) and slot2 == slot0.contextData.map then
					slot1.enabled = true
					slot1.sprite = slot0

					slot1:SetNativeSize()

					slot0.cloudRects[slot3] = slot4.rect.width
				end

				return
			end)
		end
	end

	setActive(slot0.chapters, false)
	setActive(slot0.escortChapters, false)

	if slot1:isEscort() then
		setActive(slot0.escortChapters, true)

		slot6 = UIItemList.New(slot0.escortChapters, slot0.escortChapterTpl)

		slot6:make(function (slot0, slot1, slot2)
			if slot0 == UIItemList.EventUpdate then
				slot1:updateEscortItem(slot2, slot0[slot1 + 1].escortId, slot0[slot1 + 1].chapter)
			end

			return
		end)
		slot6:align(#_.detect(getProxy(ChapterProxy).escortMaps, function (slot0)
			if slot0.id ~= slot0.id then
				slot1 = false
			else
				slot1 = true
			end

			return slot1
		end).chapters)

		return
	end

	setActive(slot0.chapters, true)

	slot0.chapterTFsById = {}

	_.each(Chapter.bindConfigTable().all, function (slot0)
		if slot0:getChapter(slot0) and slot1:getConfig("map") == slot0.id and slot1:isValid() then
			table.insert(slot1, slot1)
		end

		return
	end)

	slot5 = UIItemList.New(slot0.chapters, slot0.chapterTpl)

	slot5:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			slot1:updateMapItem(slot2, slot0[slot1 + 1])

			slot2.name = "Chapter_" .. slot0[slot1 + 1].id
			slot1.chapterTFsById[slot0[slot1 + 1].id] = slot2
		else
			if slot0 == UIItemList.EventExcess and slot1.mapItemTimer[slot2] then
				slot1.mapItemTimer[slot2]:Stop()

				slot1.mapItemTimer[slot2] = nil
			end
		end

		return
	end)
	slot5:align(#{})
end

function slot0.updateEscortItem(slot0, slot1, slot2, slot3)
	slot1.name = "chapter_" .. slot3.id
	slot1.anchoredPosition = Vector2(slot0.escortChapters.rect.width * tonumber(pg.escort_template[slot2].pos_x), slot0.escortChapters.rect.height * tonumber(pg.escort_template[slot2].pos_y))
	slot7 = slot1:Find("fighting")

	if getProxy(ChapterProxy).getActiveChapter(slot5) then
		if slot6.id ~= slot3.id then
			slot8 = false
		else
			slot8 = true
		end
	end

	setActive(slot7, slot8)
	slot0:DeleteTween("fighting" .. slot3.id)

	if slot8 then
		setImageAlpha(slot7, 1)
		slot0:RecordTween("fighting" .. slot3.id, LeanTween.alpha(slot7, 0, 0.5):setEase(LeanTweenType.easeInOutSine):setLoopPingPong().uniqueId)
	end

	GetImageSpriteFromAtlasAsync("levelmap/mapquad/" .. slot4.pic, "", slot1, true)

	slot9 = slot1:Find("anim")
	slot11 = {
		Color.green,
		Color.yellow,
		Color.red
	}

	if not table.indexof(pg.gameset.gardroad_count.description[1], slot2) then
		slot12 = 1
	end

	slot12 = slot11[slot12]

	for slot17 = 0, slot9:GetComponentsInChildren(typeof(Image)).Length - 1, 1 do
		slot13[slot17].color = slot12
	end

	setImageColor(slot1, slot12)
	onButton(slot0, slot1, function ()
		if slot0 then
			if slot0.id == slot1.id then
				slot2:switchToChapter(slot2.switchToChapter)
			else
				pg.TipsMgr:GetInstance():ShowTips(i18n("levelScene_chapter_strategying", slot0:getConfig("chapter_name")))
			end
		else
			slot2:displayChapterPanel(slot2.displayChapterPanel, Vector3(slot3.transform.localPosition.x, slot3.transform.localPosition.y))
		end

		return
	end, SFX_PANEL)

	return
end

function slot0.updateChapterTF(slot0, slot1)
	slot3 = slot0.contextData.map:getChapter(slot1)

	if slot0.chapterTFsById[slot1] and slot3 then
		slot0:updateMapItem(slot2, slot3)
	end

	return
end

function slot0.updateMapItem(slot0, slot1, slot2, slot3)
	setAnchoredPosition(slot1, {
		x = slot0.mapWidth * slot2:getConfigTable().pos_x,
		y = slot0.mapHeight * slot2.getConfigTable().pos_y
	})

	if slot0.mapItemTimer[slot1] then
		slot0.mapItemTimer[slot1]:Stop()

		slot0.mapItemTimer[slot1] = nil
	end

	slot5 = findTF(slot1, "main")
	slot6 = findTF(slot1, "sub")

	if slot2:getPlayType() == ChapterConst.TypeMainSub then
		setActive(slot5, false)
		setActive(slot6, true)

		slot7 = findTF(slot6, "mask/count_down")
		slot0.mapItemTimer[slot1] = Timer.New(slot8, 1, -1)

		slot0.mapItemTimer[slot1]:Start()
		slot8()

		slot9 = findTF(slot6, "fighting")
		slot10 = GetOrAddComponent(slot9, "CanvasGroup")

		setText(findTF(slot9, "Text"), i18n("tag_level_fighting"))

		slot12 = GetOrAddComponent(slot9, "CanvasGroup")

		setText(findTF(slot11, "Text"), i18n("tag_level_oni"))
		setActive(slot9, false)
		setActive(slot11, false)
		slot0:DeleteTween("fighting" .. slot2.id)

		slot6:GetComponent("Animator").enabled = true

		slot6:GetComponent("DftAniEvent"):SetEndEvent(function (slot0)
			slot0.enabled = false

			if slot0.active then
				if slot1:existOni() then
					slot2 = slot3
					slot4 = slot5
				end

				setActive(slot2, true)

				slot4.alpha = 1

				slot6:RecordTween("fighting" .. slot1.id, LeanTween.alphaCanvas(LeanTween.alphaCanvas, 0, 0.5):setFrom(1):setEase(LeanTweenType.easeInOutSine):setLoopPingPong().uniqueId)
			end

			return
		end)
	else
		setActive(slot5, true)
		setActive(slot6, false)

		slot7 = findTF(slot5, "circle/clear_flag")
		slot9 = GetOrAddComponent(slot8, "CanvasGroup")

		setText(findTF(slot8, "Text"), i18n("tag_level_fighting"))

		slot11 = GetOrAddComponent(slot10, "CanvasGroup")

		setText(findTF(slot10, "Text"), i18n("tag_level_oni"))

		slot12 = findTF(slot5, "circle/progress")
		slot13 = findTF(slot5, "circle/progress_text")
		slot14 = findTF(slot5, "circle/stars")

		setText(findTF(slot5, "info/bk/title_form/title_index"), slot4.chapter_name .. "  ")
		setText(findTF(slot5, "info/bk/title_form/title"), string.split(slot4.name, "|")[1])

		slot16 = setText
		slot17 = findTF(slot5, "info/bk/title_form/title_en")

		if not string.split(slot4.name, "|")[2] then
			slot18 = ""
		end

		slot16(slot17, slot18)
		setFillAmount(slot12, slot2.progress / 100)
		setText(slot13, string.format("%d%%", slot2.progress))
		setActive(slot14, slot2:existAchieve())

		if slot2:existAchieve() then
			for slot19, slot20 in ipairs(slot2.achieves) do
				setActive(slot14:Find("star" .. slot19 .. "/light"), ChapterConst.IsAchieved(slot20))
			end
		end

		slot0:DeleteTween("fighting" .. slot2.id)
		setActive(slot8, false)
		setActive(slot10, false)
		setActive(slot7, false)
		setActive(slot13, true)

		if not slot2:isUnlock() and not slot2:activeAlways() then
			setActive(slot5, false)
		else
			setActive(slot5, true)

			if slot2.active then
				if slot2:existOni() then
					slot8 = slot10
					slot9 = slot11
				end

				setActive(slot8, true)

				slot9.alpha = 1

				slot0:RecordTween("fighting" .. slot2.id, LeanTween.alphaCanvas(slot9, 0, 0.5):setFrom(1):setEase(LeanTweenType.easeInOutSine):setLoopPingPong().uniqueId)
			else
				if slot2:isClear() then
					setActive(slot7, true)
					setActive(slot13, false)
				end
			end
		end

		slot17 = findTF(slot5, "circle")

		LeanTween.cancel(go(slot17))

		slot17.localScale = Vector3.zero

		LeanTween.scale(slot17, Vector3(1, 1, 1), 0.2):setDelay(0.3)
		setAnchoredPosition(slot18, {
			x = -1 * slot5:Find("info").rect.width
		})
		shiftPanel(slot18, 0, nil, 0.4, 0.4, true, true, nil, slot3)

		slot20 = 0

		for slot24, slot25 in ipairs(slot19) do
			slot20 = slot20 + pg.expedition_data_template[slot25].bonus_time
		end

		slot21 = findTF(slot5, "mark")

		if not slot0.markRawPos then
			slot0.markRawPos = slot21.anchoredPosition
		end

		slot21.anchoredPosition = slot0.markRawPos
		slot22 = math.max(slot20 - slot2.todayDefeatCount, 0)

		if slot0.contextData.map:isRemaster() or slot20 <= 0 or slot22 <= 0 then
			slot23 = false
		else
			slot23 = true
		end

		slot24 = slot2:getOniChapterInfo()

		setActive(slot21:Find("bonus"), slot23)
		setActive(slot21, slot23)

		if slot23 then
			slot26 = slot21.anchoredPosition.y
			slot21:GetComponent(typeof(CanvasGroup)).alpha = 0

			LeanTween.cancel(go(slot21))
			LeanTween.value(go(slot21), 0, 1, 0.2):setOnUpdate(System.Action_float(function (slot0)
				slot0.alpha = slot0
				slot0.anchoredPosition.y = slot2 * slot0
				slot0.anchoredPosition.anchoredPosition = slot0.anchoredPosition

				return
			end)):setEase(LeanTweenType.easeOutSine):setDelay(0.7)
		end
	end

	slot7 = onButton
	slot8 = slot0

	if not isActive(slot5) or not slot5 then
		slot9 = slot6
	end

	slot7(slot8, slot9, function ()
		if slot0:isfrozen() then
			return
		end

		if not slot1:isUnlock() then
			pg.TipsMgr:GetInstance():ShowTips(i18n("levelScene_tracking_error_pre", slot1:getPrevChapterName()))

			return
		end

		if slot0.player.level < slot1:getConfig("unlocklevel") then
			pg.TipsMgr:GetInstance():ShowTips(i18n("levelScene_chapter_level_limit", slot0))

			return
		end

		slot1 = nil

		for slot5, slot6 in pairs(slot0.maps) do
			if slot6:getActiveChapter() then
				break
			end
		end

		if slot1 and slot1 ~= slot1 then
			slot0:emit(LevelMediator2.ON_STRATEGYING_CHAPTER)

			return
		end

		if slot1.active then
			slot0:switchToChapter(slot1)
		else
			slot0:displayChapterPanel(slot1, Vector3(slot2.localPosition.x - 10, slot2.localPosition.y + 150))
		end

		return
	end, SFX_UI_WEIGHANCHOR_SELECT)

	return
end

function slot0.tryPlayMapStory(slot0)
	if slot0.contextData.map:getConfig("enter_story") and slot1 ~= "" and not pg.SystemOpenMgr:GetInstance().active then
		pg.StoryMgr.GetInstance():Play(slot1, function (slot0)
			if not slot0 then
				if slot0.contextData.map:getConfig("guide_id") and slot1 ~= "" then
					pg.StoryMgr.GetInstance():PlayGuide(slot1)
				else
					pg.SystemOpenMgr:GetInstance():notification(slot0.player.level)
				end
			else
				pg.SystemOpenMgr:GetInstance():notification(slot0.player.level)
			end

			return
		end)
	else
		pg.SystemOpenMgr:GetInstance():notification(slot0.player.level)
	end

	return
end

function slot0.displaySignalPanel(slot0)
	slot0.levelSignalView = LevelSignalView.New(slot0.topPanel, slot0.event, slot0.contextData)

	slot0.levelSignalView:Load()
	slot0.levelSignalView:ActionInvoke("set", slot0.maps, slot0.subRefreshCount, slot0.subProgress)
	slot0.levelSignalView:ActionInvoke("setCBFunc", function ()
		slot0:hideSignalPanel()
		slot0.hideSignalPanel:emit(LevelMediator2.ON_REFRESH_SUB_CHAPTER)

		return
	end, function (slot0)
		slot0:hideSignalPanel()

		if slot0.active then
			slot0:switchToChapter(slot0)
		else
			if slot0.contextData.mapIdx ~= slot0:getConfig("map") then
				slot0:setMap(slot0:getConfig("map"))
			end
		end

		return
	end, function ()
		slot0:hideSignalPanel()

		return
	end)

	return
end

function slot0.hideSignalPanel(slot0)
	slot0.levelSignalView:Destroy()

	return
end

function slot0.displaySpResult(slot0, slot1, slot2)
	setActive(slot0.spResult, true)

	slot4 = slot0
	slot3 = slot0.doPlayAnim

	if slot1 == 1 then
		slot5 = "SpUnitWin"
	else
		slot5 = "SpUnitLose"
	end

	slot3(slot4, slot5, function (slot0)
		onButton(slot0, slot0, function ()
			removeOnButton(removeOnButton)
			setActive(setActive, false)
			setActive:hideSpResult()
			false()

			return
		end, SFX_PANEL)

		return
	end)

	return
end

function slot0.hideSpResult(slot0)
	setActive(slot0.spResult, false)

	return
end

function slot0.displayBombResult(slot0, slot1)
	setActive(slot0.spResult, true)
	slot0:doPlayAnim("SpBombRet", function (slot0)
		onButton(slot0, slot0, function ()
			removeOnButton(removeOnButton)
			setActive(setActive, false)
			setActive:hideBombResult()
			false()

			return
		end, SFX_PANEL)

		return
	end, function (slot0)
		setText(slot0.transform:Find("right/name_bg/en"), slot0.contextData.chapterVO.modelCount)

		return
	end)

	return
end

function slot0.hideBombResult(slot0)
	setActive(slot0.spResult, false)

	return
end

function slot0.displayChapterPanel(slot0, slot1, slot2)
	slot0.levelInfoView = LevelInfoView.New(slot0.topPanel, slot0.event, slot0.contextData)

	slot0.levelInfoView:Load()
	slot0.levelInfoView:ActionInvoke("set", slot1, slot2)
	slot0.levelInfoView:ActionInvoke("setCBFunc", function (slot0)
		if slot0.player.ship_bag_max <= getProxy(BayProxy).getShipCount(slot1) then
			NoPosMsgBox(i18n("switch_to_shop_tip_noDockyard"), openDockyardClear, gotoChargeScene, openDockyardIntensify)

			return
		end

		slot0:hideChapterPanel()

		slot3 = slot1:clone()
		slot3.loopFlag = slot0

		if slot3:getConfig("type") == Chapter.CustomFleet then
			slot0:displayFleetEdit(slot3)
		else
			slot0:displayFleetSelect(slot3)
		end

		return
	end, function ()
		slot0:hideChapterPanel()

		return
	end)

	return
end

function slot0.hideChapterPanel(slot0)
	if slot0.levelInfoView and slot0.levelInfoView:CheckState(BaseSubView.STATES.INITED) then
		slot0.levelInfoView:Destroy()
	end

	return
end

function slot0.displayFleetSelect(slot0, slot1)
	slot2 = nil

	if slot0.contextData.selectedFleetIDs then
		slot2 = slot0.contextData.selectedFleetIDs
	else
		slot2 = slot1:selectFleets(slot0.lastFleetIndex, slot0.fleets)
	end

	slot0.levelFleetView = LevelFleetView.New(slot0.topPanel, slot0.event, slot0.contextData)

	slot0.levelFleetView:Load()
	slot0.levelFleetView:ActionInvoke("setOpenCommanderTag", slot0.openedCommanerSystem)
	slot0.levelFleetView:ActionInvoke("set", slot1, slot0.fleets, slot2)
	slot0.levelFleetView:ActionInvoke("setCBFunc", function (slot0)
		if slot0:getConfig("npc_data") then
			slot4 = getProxy(TaskProxy):getTaskById(slot1[3])

			if slot1[3] == 0 or (slot4 and not slot4:isFinish()) then
				slot8 = slot1.fleets[slot0[1]]
				slot7 = slot1.fleets[slot0[1]].getTeamByName

				if pg.ship_data_by_type[pg.ship_data_statistics[slot1[1]].type].team_type ~= TeamType.Vanguard or not Fleet.VANGUARD then
					slot9 = Fleet.MAIN
				end

				if #slot7(slot8, slot9) == 3 then
					slot1:HandleShowMsgBox({
						modal = true,
						hideNo = true,
						content = i18n("chapter_tip_with_npc", slot5.name)
					})

					return
				end
			end
		end

		slot2 = false
		slot3 = ""

		for slot7, slot8 in ipairs(slot0) do
			slot2, slot3 = slot1.fleets[slot8]:GetEnergyStatus()

			if slot9 then
				break
			end
		end

		function slot4()
			slot0:hideFleetSelect()

			if not slot0:isValid() then
				return
			end

			slot0:trackChapter(slot0, function ()
				slot0:emit(LevelMediator2.ON_TRACKING, slot1.id, , slot1.loopFlag)

				return
			end)

			return
		end

		if slot2 then
			slot1:HandleShowMsgBox({
				content = slot3,
				onYes = slot4
			})
		else
			slot4()
		end

		slot1.contextData.selectedChapterVO = nil
		slot1.contextData.selectedFleetIDs = nil

		return
	end, function ()
		slot0.contextData.selectedChapterVO = nil
		slot0.contextData.contextData.selectedFleetIDs = nil

		slot0.contextData.contextData:hideFleetSelect()

		return
	end)

	return
end

function slot0.hideFleetSelect(slot0)
	if slot0.levelCMDFormationView and slot0.levelCMDFormationView._state ~= 5 then
		slot0.levelCMDFormationView:Destroy()
	end

	slot0.levelFleetView:Destroy()

	return
end

function slot0.displayFleetEdit(slot0, slot1)
	slot0.levelFleetView = LevelFleetView.New(slot0.topPanel, slot0.event, slot0.contextData)

	slot0.levelFleetView:Load()
	slot0.levelFleetView:ActionInvoke("setOpenCommanderTag", slot0.openedCommanerSystem)
	slot0.levelFleetView:ActionInvoke("setHardShipVOs", slot0.shipVOs)
	slot0.levelFleetView:ActionInvoke("setCBFuncOnHard", slot2)
	slot0.levelFleetView:ActionInvoke("setOnHard", slot1)

	return
end

function slot0.hideFleetEdit(slot0, slot1)
	if slot1 then
		slot0:emit(LevelMediator2.ON_UPDATE_CUSTOM_FLEET, slot1.id)
	end

	if slot0.levelCMDFormationView and slot0.levelCMDFormationView._state ~= 5 then
		slot0.levelCMDFormationView:Destroy()
	end

	if slot0.levelFleetView and slot0.levelFleetView._state ~= 5 then
		slot0.levelFleetView:Destroy()
	end

	return
end

function slot0.isCrossStoryLimit(slot0, slot1)
	slot2 = true

	if slot1 ~= "" and #slot1 > 0 then
		slot2 = _.all(slot1, function (slot0)
			if slot0[1] == 1 then
				if getProxy(TaskProxy):getTaskById(slot0[2]) then
					slot3 = not slot2:isFinish()
				end

				return slot3
			end

			return false
		end)
	end

	return slot2
end

function slot0.switchDifficulty(slot0)
	slot2 = slot0.contextData.map.getConfig(slot1, "type")

	if slot0.contextData.map:getConfig("uifx") ~= "" then
		setActive(slot0:findTF(slot3, slot0.UIFXList), true)
	end

	if Map.EVENT == slot2 then
		setActive(slot0.normalBtn, false)
		setActive(slot0.eliteBtn, false)
	else
		slot4 = setActive
		slot5 = slot0.normalBtn

		if slot2 ~= Map.ELITE then
			slot6 = false
		else
			slot6 = true
		end

		slot4(slot5, slot6)

		slot4 = setActive
		slot5 = slot0.eliteQuota

		if slot2 ~= Map.ELITE then
			slot6 = false
		else
			slot6 = true
		end

		slot4(slot5, slot6)

		slot4 = setActive
		slot5 = slot0.eliteBtn

		if slot2 ~= Map.SCENARIO then
			slot6 = false
		else
			slot6 = true
		end

		slot4(slot5, slot6)

		slot6 = setActive
		slot7 = slot0.eliteBtn:Find("bg/pic_activity")

		if getProxy(ActivityProxy).getActivityById(slot4, ActivityConst.ELITE_AWARD_ACTIVITY_ID) then
			slot8 = not slot5:isEnd()
		end

		slot6(slot7, slot8)
	end

	slot4 = pairs

	if not slot0.chapterTFsById then
		slot5 = {}
	end

	for slot7, slot8 in slot4(slot5) do
		if slot1:getChapter(slot7) and (slot9:isUnlock() or slot9:activeAlways()) then
			setActive(slot8, true)
		else
			setActive(slot8, false)
		end
	end

	return
end

function slot0.trackChapter(slot0, slot1, slot2)
	slot3 = nil

	coroutine.wrap(function ()
		slot1 = getProxy(ChapterProxy)

		if slot0.contextData.map:isRemaster() and slot0.remasterId ~= slot1:getActiveRemaster() then
			slot0:HandleShowMsgBox({
				content = i18n("levelScene_activate_remaster"),
				onYes = function ()
					onNextTick(onNextTick)

					return
				end
			})
			coroutine.yield()

			if slot1.remasterTickets <= 0 then
				pg.TipsMgr.GetInstance():ShowTips(i18n("levelScene_remaster_tickets_not_enough"))

				return
			end

			slot0:emit(LevelMediator2.ON_ACTIVATE_REMASTER, slot0.remasterId, function ()
				onNextTick(onNextTick)

				return
			end)
			coroutine.yield()
		end

		slot3 = slot2:getConfig("enter_story_limit")

		if slot2:getConfig("enter_story") and slot2 ~= "" and slot0:isCrossStoryLimit(slot3) then
			pg.StoryMgr.GetInstance():Play(slot2, function ()
				onNextTick(onNextTick)

				return
			end)
			coroutine.yield()
		end

		if slot3 then
			slot3()
		end

		return
	end)()

	return
end

function slot0.setChapter(slot0, slot1)
	slot2 = nil

	if slot1 then
		slot2 = slot1.id

		if slot1:getDataType() == ChapterConst.TypeNone then
			slot1 = slot0.maps[slot0.contextData.mapIdx]:getChapter(slot2)
		end
	end

	slot0.contextData.chapterId = slot2
	slot0.contextData.chapterVO = slot1

	return
end

function slot0.switchToChapter(slot0, slot1, slot2)
	slot0:frozen(function ()
		slot0.levelStageView:tryAutoAction()

		return
	end)

	slot4 = slot0.contextData.map:getConfig("type")

	if (slot1:getDataType() == ChapterConst.TypeSham and slot4 ~= Map.SHAM) or (slot3 == ChapterConst.TypeGuild and slot4 ~= Map.GUILD_BOSS) then
		slot0.contextData.chapterMapIdx = slot0.contextData.mapIdx
	end

	if slot0.contextData.mapIdx ~= slot1:getConfig("map") then
		slot0:setMap(slot1:getConfig("map"))
	end

	slot0:setChapter(slot1)
	setActive(slot0.clouds, false)
	setActive(slot0.chapters, false)
	setActive(slot0.escortChapters, false)

	slot0.leftCanvasGroup.blocksRaycasts = false
	slot0.rightCanvasGroup.blocksRaycasts = false

	slot0:onSubLayerContextChange()

	slot0.levelStageView = LevelStageView.New(slot0.topPanel, slot0.event, slot0.contextData)

	slot0.levelStageView:Load()
	slot0.levelStageView:ActionInvoke("SetSeriesOperation", slot5)
	slot0.levelStageView:ActionInvoke("SwitchToChapter", slot1)

	return
end

function slot0.switchToMap(slot0)
	slot2 = ChapterConst.TypeNone

	if slot0.contextData.chapterVO then
		slot2 = slot1:getDataType()
	end

	slot3 = getProxy(ChapterProxy)

	if slot1:getMapType() == Map.ESCORT and (#slot3.escortMaps == 0 or _.any(slot4, function (slot0)
		return slot0:shouldFetch()
	end)) then
		slot0:emit(LevelMediator2.ON_FETCH_ESCORT)

		return
	end

	if slot3.subNextReqTime < pg.TimeMgr.GetInstance():GetServerTime() then
		slot0:emit(LevelMediator2.ON_FETCH_SUB_CHAPTER)

		return
	end

	slot0:frozen()
	slot0:destroyGrid()
	slot0:RecordTween("mapScale", LeanTween.value(go(slot0.map), slot0.map.localScale, Vector3.New(1, 1, 1), slot0):setOnUpdateVector3(function (slot0)
		slot0.map.localScale = slot0
		slot0.float.localScale = slot0

		return
	end):setOnComplete(System.Action(function ()
		if not slot0.contextData.chapterVO and slot0.levelStageView and slot0.levelStageView:CheckState(BaseSubView.STATES.INITED) then
			slot0.levelStageView:Destroy()
		end

		slot0:unfrozen()

		return
	end)):setEase(LeanTweenType.easeOutSine).uniqueId)

	slot5 = LeanTween.value(go(slot0.map), slot0.map.pivot, Vector2.zero, slot0)

	slot5:setOnUpdateVector2(function (slot0)
		slot0.map.pivot = slot0
		slot0.float.pivot = slot0

		return
	end):setEase(LeanTweenType.easeOutSine)
	slot0:RecordTween("mapPivot", slot5.uniqueId)
	setActive(slot0.topChapter, true)
	setActive(slot0.topChapterLine, true)
	setActive(slot0.leftChapter, true)
	setActive(slot0.rightChapter, true)
	shiftPanel(slot0.leftChapter, 0, 0, 0.3, 0, true, nil, LeanTweenType.easeOutSine)
	shiftPanel(slot0.rightChapter, 0, 0, 0.3, 0, true, nil, LeanTweenType.easeOutSine)
	shiftPanel(slot0.topChapter, 0, 0, 0.3, 0, true, nil, LeanTweenType.easeOutSine)
	slot0.levelStageView:ShiftPanelToChapter(0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0.topPanel, slot0._tf)

	if slot0.ambushWarning and slot0.ambushWarning.activeSelf then
		slot0.ambushWarning:SetActive(false)
		slot0:unfrozen()
	end

	slot0:onSubLayerContextChange()
	slot0:setChapter(nil)
	slot0:updateEscortInfo()

	if slot2 == ChapterConst.TypeSham then
		slot0.contextData.mapIdx = slot0.contextData.chapterMapIdx
		slot0.contextData.chapterMapIdx = nil

		slot0:setMap(slot0:selectMap(slot0.maps))
	else
		if slot2 == ChapterConst.TypeNone then
			slot0:updateMapItems()
			slot0:switchDifficulty()
			slot0:updateActivityBtns()
			slot0:updateCouldAnimator()
		end
	end

	return
end

function slot0.displayAmbushInfo(slot0, slot1)
	slot0.levelAmbushView = LevelAmbushView.New(slot0.topPanel, slot0.event, slot0.contextData)

	slot0.levelAmbushView:Load()
	slot0.levelAmbushView:ActionInvoke("SetFuncOnComplete", slot1)

	return
end

function slot0.hideAmbushInfo(slot0)
	if slot0.levelAmbushView and slot0.levelAmbushView:CheckState(BaseSubView.STATES.INITED) then
		slot0.levelAmbushView:Destroy()
	end

	return
end

function slot0.doAmbushWarning(slot0, slot1)
	slot0:frozen()

	function slot2()
		slot0.ambushWarning:SetActive(true)

		slot0 = tf(slot0.ambushWarning)

		slot0:SetParent(pg.UIMgr:GetInstance().OverlayMain.transform, false)
		slot0:SetSiblingIndex(1)

		slot1 = slot0:GetComponent("DftAniEvent")

		slot1:SetTriggerEvent(function (slot0)
			slot0()

			return
		end)
		slot1:SetEndEvent(function (slot0)
			slot0.ambushWarning:SetActive(false)
			slot0:unfrozen()

			return
		end)
		playSoundEffect(SFX_UI_WARNING)
		Timer.New(function ()
			playSoundEffect(SFX_UI_WARNING)

			return
		end, 1, 1):Start()

		return
	end

	if not slot0.ambushWarning then
		PoolMgr.GetInstance():GetUI("ambushwarnui", true, function (slot0)
			slot0:SetActive(true)

			slot0.ambushWarning = slot0

			slot0()

			return
		end)
	else
		slot2()
	end

	return
end

function slot0.destroyAmbushWarn(slot0)
	if slot0.ambushWarning then
		PoolMgr.GetInstance():ReturnUI("ambushwarnui", slot0.ambushWarning)

		slot0.ambushWarning = nil
	end

	return
end

function slot0.displayStrategyInfo(slot0, slot1)
	slot0.levelStrategyView = LevelStrategyView.New(slot0.topPanel, slot0.event, slot0.contextData)

	slot0.levelStrategyView:Load()
	slot0.levelStrategyView:ActionInvoke("set", slot1)
	slot0.levelStrategyView:ActionInvoke("setCBFunc", function ()
		slot3 = pg.strategy_data_template[slot1.id]

		if not slot0.contextData.chapterVO.fleet:canUseStrategy(slot0.contextData.chapterVO.getDataType(slot0)) then
			return
		end

		slot4 = slot2:getNextStgUser(slot1.id)

		if slot3.type == ChapterConst.StgTypeForm then
			slot0:emit(LevelMediator2.ON_OP, {
				type = ChapterConst.OpStrategy,
				id = slot4,
				arg1 = slot1.id
			})
		else
			if slot3.type == ChapterConst.StgTypeConsume then
				slot0:emit(LevelMediator2.ON_OP, {
					type = ChapterConst.OpStrategy,
					id = slot4,
					arg1 = slot1.id
				})
			end
		end

		slot0:hideStrategyInfo()

		return
	end, function ()
		slot0:hideStrategyInfo()

		return
	end)

	return
end

function slot0.selectStrategyTarget(slot0, slot1, slot2)
	slot5 = slot0.contextData.chapterVO.fleet.line
	slot6 = {}

	if slot1.id == ChapterConst.StrategyAirStrike then
		slot6 = slot3:calcAreaCells(slot5.row, slot5.column, slot1.arg[2], slot1.arg[3])
	else
		if slot1.id == ChapterConst.StrategyCannon then
			slot6 = slot3:calcAreaCells(slot5.row, slot5.column, 0, slot1.arg[2])
		end
	end

	_.each(slot6, function (slot0)
		slot0.grid:shiningTarget(slot0.row, slot0.column, true)

		return
	end)
	slot0.grid:updateQuadCells(ChapterConst.QuadStateStrategy, _.filter(slot6, function (slot0)
		return not slot0:existFleet(nil, slot0.row, slot0.column)
	end), function (slot0)
		_.each(slot0, function (slot0)
			slot0.grid:shiningTarget(slot0.row, slot0.column, false)

			return
		end)

		if slot0 and _.any(slot0, function (slot0)
			if slot0.row ~= slot0.row or slot0.column ~= slot0.column then
				slot1 = false
			else
				slot1 = true
			end

			return slot1
		end) and slot2:existEnemy(ChapterConst.SubjectPlayer, slot0.row, slot0.column) then
			slot3(slot0.row, slot0.column)
		else
			slot1.grid:updateQuadCells(ChapterConst.QuadStateNormal)
		end

		return
	end)

	return
end

function slot0.selectSquareBarrieredCell(slot0, slot1, slot2)
	slot0.grid:updateQuadCells(ChapterConst.QuadStateStrategy, slot0.contextData.chapterVO.calcSquareBarrierCells(slot3, slot0.contextData.chapterVO.fleet.line.row, slot0.contextData.chapterVO.fleet.line.column, slot1), function (slot0)
		if slot0 and _.any(slot0, function (slot0)
			if slot0.row ~= slot0.row or slot0.column ~= slot0.column then
				slot1 = false
			else
				slot1 = true
			end

			return slot1
		end) then
			slot1(slot0.row, slot0.column)
		else
			slot2.grid:updateQuadCells(ChapterConst.QuadStateNormal)
		end

		return
	end)

	return
end

function slot0.hideStrategyInfo(slot0)
	slot0.levelStrategyView:Destroy()

	return
end

function slot0.displayRepairWindow(slot0, slot1)
	slot4 = getProxy(ChapterProxy)
	slot5, slot6, slot7, slot8 = nil

	if slot0.contextData.chapterVO.getDataType(slot2) == ChapterConst.TypeSham then
		slot5 = slot2.repairTimes
		slot6, slot7, slot8 = ChapterConst.GetShamRepairParams()
	else
		if slot3 == ChapterConst.TypeNone then
			slot5 = slot4.repairTimes
			slot6, slot7, slot8 = ChapterConst.GetRepairParams()
		end
	end

	slot0.levelRepairView = LevelRepairView.New(slot0.topPanel, slot0.event, slot0.contextData)

	slot0.levelRepairView:Load()
	slot0.levelRepairView:ActionInvoke("set", slot5, slot6, slot7, slot8)
	slot0.levelRepairView:ActionInvoke("setCBFunc", function ()
		if slot0 - math.min(math.min, slot0) == 0 and slot2.player:getTotalGem() < slot3 then
			pg.TipsMgr:GetInstance():ShowTips(i18n("common_no_rmb"))

			return
		end

		slot2:emit(LevelMediator2.ON_OP, {
			type = ChapterConst.OpRepair,
			id = slot4.fleet.id,
			arg1 = slot4.fleet.id.id
		})
		slot2:hideRepairWindow()

		return
	end, function ()
		slot0:hideRepairWindow()

		return
	end)

	return
end

function slot0.hideRepairWindow(slot0)
	slot0.levelRepairView:Destroy()

	return
end

function slot0.displayRemasterPanel(slot0, slot1)
	slot2 = getProxy(ChapterProxy)
	slot3 = {}
	slot4 = pg.TimeMgr.GetInstance()

	for slot8, slot9 in ipairs(pg.re_map_template.all) do
		table.insert(slot3, pg.re_map_template[slot9])
	end

	slot0.levelRemasterView = LevelRemasterView.New(slot0.topPanel, slot0.event, slot0.contextData)

	slot0.levelRemasterView:Load()

	slot6 = slot0.levelRemasterView
	slot5 = slot0.levelRemasterView.ActionInvoke
	slot7 = "set"
	slot8 = slot3
	slot9 = slot2.remasterTickets

	if not slot1 then
		slot10 = 1
	end

	slot5(slot6, slot7, slot8, slot9, slot10)
	slot0.levelRemasterView:ActionInvoke("setCBFunc", function (slot0)
		slot0:setMap(pg.chapter_template[slot0.config_data[1]].map)
		slot0:hideRemasterPanel()

		return
	end, function ()
		slot0:hideRemasterPanel()

		return
	end)

	return
end

function slot0.hideRemasterPanel(slot0)
	slot0.levelRemasterView:Destroy()

	return
end

function slot0.initGrid(slot0)
	setActive(slot0.uiMain, true)

	slot0.levelGrid.localEulerAngles = Vector3(slot0.contextData.chapterVO.theme.angle, 0, 0)
	slot0.grid = LevelGrid.New(slot0.dragLayer)

	slot0.grid:attach(slot0)
	slot0.grid:setItems(slot0.shipTpl, slot0.subTpl, slot0.transportTpl, slot0.transportTargetTpl, slot0.enemyTpl, slot0.deadTpl, slot0.boxTpl, slot0.supplyTpl, slot0.rivalTpl, slot0.championTpl, slot0.spineTpl, slot0.oniTpl, slot0.oniTargetTpl, slot0.bombEnemyTpl, slot0.arrowTarget)

	function slot0.grid.onCellClick(slot0)
		slot0:clickGridCell(slot0)

		return
	end

	if slot0.contextData.chapterVO.getDataType(slot1) == ChapterConst.TypeNone then
		function slot0.grid.onShipStepChange(slot0)
			slot0.levelStageView:updateAmbushRate(slot0)

			return
		end
	end

	function slot0.grid.onShipArrived()
		slot0:overrideChapter()
		slot0.levelStageView:updateAmbushRate(slot0.overrideChapter.contextData.chapterVO.fleet.line, true)
		slot0.levelStageView:updateStageStrategy()

		return
	end

	slot0.grid:initAll()
	slot0:tryFocusForGuide()
	slot0:enableLevelCamera()

	return
end

function slot0.tryFocusForGuide(slot0)
	if pg.GuideMgr:GetInstance():isRuning() and slot0.contextData.chapterVO:findChapterCell(ChapterConst.AttachBoss) then
		slot0.grid:focusOnCell(slot2)
	end

	return
end

function slot0.destroyGrid(slot0)
	if slot0.grid then
		slot0.grid:detach()

		slot0.grid = nil

		slot0:disableLevelCamera()
		setActive(slot0.dragLayer, true)
		setActive(slot0.uiMain, false)
	end

	return
end

function slot0.clickGridCell(slot0, slot1)
	if not slot0:isfrozen() then
		slot0.levelStageView:clickGridCell(slot1)
	end

	return
end

function slot0.doTracking(slot0, slot1)
	slot0:frozen()

	function slot2()
		slot0.radar:SetActive(true)

		slot0 = tf(slot0.radar)

		slot0:SetParent(slot0.topPanel, false)
		slot0:SetSiblingIndex(1)
		slot0:GetComponent("DftAniEvent").SetEndEvent(slot1, function (slot0)
			slot0.radar:SetActive(false)
			slot0:unfrozen()
			slot0.unfrozen()

			return
		end)
		playSoundEffect(SFX_UI_WEIGHANCHOR_SEARCH)

		return
	end

	if not slot0.radar then
		PoolMgr.GetInstance():GetUI("RadarEffectUI", true, function (slot0)
			slot0:SetActive(true)

			slot0.radar = slot0

			slot0()

			return
		end)
	else
		slot2()
	end

	return
end

function slot0.destroyTracking(slot0)
	if slot0.radar then
		PoolMgr.GetInstance():ReturnUI("RadarEffectUI", slot0.radar)

		slot0.radar = nil
	end

	return
end

function slot0.doPlayAirStrike(slot0, slot1, slot2, slot3)
	function slot4()
		slot0.playing = true

		slot0:frozen()
		slot0.frozen.airStrike:SetActive(true)

		slot0 = tf(slot0.airStrike)

		slot0:SetParent(pg.UIMgr:GetInstance().OverlayMain.transform, false)
		slot0:SetAsLastSibling()

		slot2 = slot0:Find("words/be_striked")

		if setActive ~= ChapterConst.SubjectChampion then
			slot3 = false
		else
			slot3 = true
		end

		slot1(slot2, slot3)

		slot2 = slot0:Find("words/strike_enemy")

		if setActive ~= ChapterConst.SubjectPlayer then
			slot3 = false
		else
			slot3 = true
		end

		slot1(slot2, slot3)
		slot0:GetComponent("DftAniEvent"):SetEndEvent(function ()
			slot0.playing = false

			SetActive(slot0.airStrike, false)

			if slot0.airStrike then
				slot1()
			end

			slot0:unfrozen()

			return
		end)

		if slot0.GetComponent("DftAniEvent").SetEndEvent then
			onButton(slot0, slot0, slot1, SFX_PANEL)
		else
			removeOnButton(slot0)
		end

		playSoundEffect(SFX_UI_WARNING)

		return
	end

	if not slot0.airStrike then
		PoolMgr.GetInstance():GetUI("AirStrike", true, function (slot0)
			slot0:SetActive(true)

			slot0.airStrike = slot0

			slot0()

			return
		end)
	else
		slot4()
	end

	return
end

function slot0.destroyAirStrike(slot0)
	if slot0.airStrike then
		slot0.airStrike:GetComponent("DftAniEvent").SetEndEvent(slot1, nil)
		PoolMgr.GetInstance():ReturnUI("AirStrike", slot0.airStrike)

		slot0.airStrike = nil
	end

	return
end

function slot0.doPlayAnim(slot0, slot1, slot2, slot3)
	if not slot0.uiAnims then
		slot4 = {}
	end

	slot0.uiAnims = slot4

	function slot5()
		slot0.playing = true

		slot0:frozen()
		slot0:SetActive(true)

		if true then
			slot2(slot1)
		end

		slot0 = tf(slot1)

		slot0:SetParent(slot0.topPanel, false)
		slot0:SetAsLastSibling()
		slot0:GetComponent("DftAniEvent").SetEndEvent(slot1, function (slot0)
			slot0.playing = false

			slot0(false)
			slot0:unfrozen()

			return
		end)
		playSoundEffect(SFX_UI_WARNING)

		return
	end

	if not slot0.uiAnims[slot1] then
		PoolMgr.GetInstance():GetUI(slot1, true, function (slot0)
			slot0:SetActive(true)

			slot0.uiAnims[] = slot0
			slot2 = slot0.uiAnims[]

			true()

			return
		end)
	else
		slot5()
	end

	return
end

function slot0.destroyUIAnims(slot0)
	if slot0.uiAnims then
		for slot4, slot5 in pairs(slot0.uiAnims) do
			slot5:GetComponent("DftAniEvent").SetEndEvent(slot6, nil)
			PoolMgr.GetInstance():ReturnUI(slot4, slot5)
		end

		slot0.uiAnims = nil
	end

	return
end

function slot0.doPlayTorpedo(slot0, slot1)
	function slot2()
		slot0.playing = true

		slot0:frozen()
		slot0.frozen.torpetoAni:SetActive(true)

		slot0 = tf(slot0.torpetoAni)

		slot0:SetParent(slot0.topPanel, false)
		slot0:SetAsLastSibling()
		slot0:GetComponent("DftAniEvent").SetEndEvent(slot1, function (slot0)
			slot0.playing = false

			SetActive(slot0.torpetoAni, false)

			if SetActive then
				slot1()
			end

			slot0:unfrozen()

			return
		end)
		playSoundEffect(SFX_UI_WARNING)

		return
	end

	if not slot0.torpetoAni then
		PoolMgr.GetInstance():GetUI("Torpeto", true, function (slot0)
			slot0:SetActive(true)

			slot0.torpetoAni = slot0

			slot0()

			return
		end)
	else
		slot2()
	end

	return
end

function slot0.destroyTorpedo(slot0)
	if slot0.torpetoAni then
		slot0.torpetoAni:GetComponent("DftAniEvent").SetEndEvent(slot1, nil)
		PoolMgr.GetInstance():ReturnUI("Torpeto", slot0.torpetoAni)

		slot0.torpetoAni = nil
	end

	return
end

function slot0.doPlayStrikeAnim(slot0, slot1, slot2, slot3)
	if not slot0.strikeAnims then
		slot4 = {}
	end

	slot0.strikeAnims = slot4
	slot4, slot5, slot6 = nil

	function slot7()
		if coroutine.status(coroutine.status) == "suspended" then
			slot0, slot1 = coroutine.resume(coroutine.resume)
		end

		return
	end

	slot6 = coroutine.create(function ()
		slot0.playing = true

		slot0:frozen()
		setActive(slot0, true)

		slot1 = tf(slot0)
		slot3 = findTF(slot1, "mask/painting")
		slot4 = findTF(slot1, "ship")

		setParent(slot2, slot3:Find("fitter"), false)
		setParent(slot3, slot4, false)
		setActive(slot4, false)
		setActive(slot2, false)
		slot1:SetParent(pg.UIMgr:GetInstance().OverlayMain.transform, false)
		slot1:SetAsLastSibling()

		slot5 = slot1:GetComponent("DftAniEvent")
		slot6 = slot3:GetComponent("SpineAnimUI")
		slot7 = slot6:GetComponent("SkeletonGraphic")

		slot5:SetStartEvent(function (slot0)
			slot0:SetAction("attack", 0)

			slot0.SetAction.freeze = true

			return
		end)
		slot5:SetTriggerEvent(function (slot0)
			slot0.freeze = false

			slot0:SetActionCallBack(function (slot0)
				if slot0 == "action" then
				else
					if slot0 == "finish" then
						slot0.freeze = true
					end
				end

				return
			end)

			return
		end)
		slot5:SetEndEvent(function (slot0)
			slot0.freeze = false

			slot0()

			return
		end)
		onButton(slot0, slot1, slot4, SFX_CANCEL)
		coroutine.yield()
		retPaintingPrefab(slot3, slot5:getPainting())
		PoolMgr.GetInstance():ReturnSpineChar(slot5:getPrefab(), slot3)
		setActive(slot0, false)

		slot0.playing = false

		slot0:unfrozen()

		if slot6 then
			slot6()
		end

		return
	end)

	function slot8()
		if slot0.strikeAnims[slot1] and slot2 and slot3 then
			slot4()
		end

		return
	end

	PoolMgr.GetInstance():GetPainting(slot1:getPainting(), true, function (slot0)
		slot0 = slot0

		slot1()

		return
	end)
	PoolMgr.GetInstance():GetSpineChar(slot1:getPrefab(), true, function (slot0)
		slot0.transform.localScale = Vector3.one

		slot0.transform()

		return
	end)

	if not slot0.strikeAnims[slot2] then
		PoolMgr.GetInstance():GetUI(slot2, true, function (slot0)
			slot0.strikeAnims[] = slot0

			slot0.strikeAnims()

			return
		end)
	end

	return
end

function slot0.destroyStrikeAnim(slot0)
	if slot0.strikeAnims then
		for slot4, slot5 in pairs(slot0.strikeAnims) do
			slot5:GetComponent("DftAniEvent").SetEndEvent(slot6, nil)
			PoolMgr.GetInstance():ReturnUI(slot4, slot5)
		end

		slot0.strikeAnims = nil
	end

	return
end

function slot0.doSignalSearch(slot0, slot1)
	slot0:frozen()

	function slot2()
		slot0.playing = true

		slot0.signalAni:SetActive(true)

		slot0 = tf(slot0.signalAni)

		slot0:SetParent(slot0.topPanel, false)
		slot0:SetAsLastSibling()
		slot0:GetComponent("DftAniEvent").SetEndEvent(slot1, function (slot0)
			slot0.playing = false

			SetActive(slot0.signalAni, false)

			if SetActive then
				slot1()
			end

			slot0:unfrozen()

			return
		end)
		playSoundEffect(SFX_UI_WARNING)

		return
	end

	if not slot0.signalAni then
		PoolMgr.GetInstance():GetUI("SignalUI", true, function (slot0)
			slot0:SetActive(true)

			slot0.signalAni = slot0

			slot0()

			return
		end)
	else
		slot2()
	end

	return
end

function slot0.destroySignalSearch(slot0)
	if slot0.signalAni then
		slot0.signalAni:GetComponent("DftAniEvent").SetEndEvent(slot1, nil)
		PoolMgr.GetInstance():ReturnUI("SignalUI", slot0.signalAni)

		slot0.signalAni = nil
	end

	return
end

function slot0.doPlayCommander(slot0, slot1, slot2)
	slot0:frozen()
	setActive(slot0.commanderTinkle, true)

	slot4 = setText
	slot5 = slot0.commanderTinkle:Find("name")

	if #slot1:getSkills() <= 0 or not slot3[1]:getConfig("name") then
		slot6 = ""
	end

	slot4(slot5, slot6)
	setImageSprite(slot0.commanderTinkle:Find("icon"), GetSpriteFromAtlas("commanderhrz/" .. slot1:getConfig("painting"), ""))

	slot0.commanderTinkle:GetComponent(typeof(CanvasGroup)).alpha = 0
	slot5 = Vector2(248, 237)

	LeanTween.value(go(slot0.commanderTinkle), 0, 1, 0.5):setOnUpdate(System.Action_float(function (slot0)
		slot0.commanderTinkle.localPosition.x = slot1.x + -100 * (1 - slot0)
		slot0.commanderTinkle.localPosition = slot0.commanderTinkle.localPosition
		slot0.commanderTinkle.alpha = slot0

		return
	end)):setEase(LeanTweenType.easeOutSine)
	LeanTween.value(go(slot0.commanderTinkle), 0, 1, 0.3):setDelay(0.7):setOnUpdate(System.Action_float(function (slot0)
		slot0.commanderTinkle.localPosition.x = slot1.x + 100 * slot0
		slot0.commanderTinkle.localPosition = slot0.commanderTinkle.localPosition
		slot0.commanderTinkle.alpha = 1 - slot0

		return
	end)):setOnComplete(System.Action(function ()
		if slot0 then
			slot0()
		end

		slot1:unfrozen()

		return
	end))

	return
end

function slot0.strikeEnemy(slot0, slot1, slot2, slot3)
	slot0:frozen()

	slot0.damageText.position = slot0.uiCam:ScreenToWorldPoint(slot5)
	slot0.damageText.localPosition.y = slot0.damageText.localPosition.y + 40
	slot0.damageText.localPosition.z = 0

	slot0:easeDamage(slot0.damageText.localPosition, slot2, function ()
		slot0:unfrozen()
		slot0()

		return
	end)

	return
end

function slot0.easeDamage(slot0, slot1, slot2, slot3)
	slot0:frozen()
	setText(slot0.damageText, slot2)
	setActive(slot0.damageText, true)

	slot0.damageText.localPosition = slot1

	LeanTween.value(go(slot0.damageText), 0, 1, 1):setOnUpdate(System.Action_float(function (slot0)
		slot0.damageText.localPosition.y = slot1.y + 60 * slot0
		slot0.damageText.localPosition = slot0.damageText.localPosition

		setTextAlpha(slot0.damageText, 1 - slot0)

		return
	end)):setOnComplete(System.Action(function ()
		setActive(slot0.damageText, false)
		setActive:unfrozen()

		if setActive then
			slot1()
		end

		return
	end))

	return
end

function slot0.easeAvoid(slot0, slot1, slot2)
	slot0:frozen()

	slot0.avoidText.position = slot0.uiCam:ScreenToWorldPoint(slot3)
	slot0.avoidText.localPosition.z = 0
	slot0.avoidText.localPosition = slot0.avoidText.localPosition

	setActive(slot0.avoidText, true)

	slot5 = slot0.avoidText:Find("avoid")

	LeanTween.value(go(slot0.avoidText), 0, 1, 1):setOnUpdate(System.Action_float(function (slot0)
		slot0.avoidText.localPosition.y = slot1.y + 100 * slot0
		slot0.avoidText.localPosition = slot0.avoidText.localPosition

		setImageAlpha(slot0.avoidText, 1 - slot0)
		setImageAlpha(setImageAlpha, 1 - slot0)

		return
	end)):setOnComplete(System.Action(function ()
		setActive(slot0.avoidText, false)
		setActive:unfrozen()

		if setActive then
			slot1()
		end

		return
	end))

	return
end

function slot0.overrideChapter(slot0)
	slot0:emit(LevelMediator2.ON_OVERRIDE_CHAPTER)

	return
end

function slot0.onSubLayerOpen(slot0)
	setActive(slot0.topPanel, false)
	slot0:disableLevelCamera()

	slot0.visibilityForPreCombat = {
		leftChapter = isActive(slot0.leftChapter),
		rightChapter = isActive(slot0.rightChapter),
		clouds = isActive(slot0.clouds),
		chapters = isActive(slot0.chapters)
	}

	for slot4, slot5 in pairs(slot0.visibilityForPreCombat) do
		setActive(slot0[slot4], false)
	end

	slot2 = slot0.contextData.map.getConfig(slot1, "bg")

	if slot0.tornadoTF and slot2 and #slot2 > 0 then
		setActive(slot0.tornadoTF, false)
	end

	slot0.isSubLayerOpen = true

	return
end

function slot0.onSubLayerClose(slot0)
	if not slot0.exited then
		slot0:enableLevelCamera()

		if #getProxy(ContextProxy).getContextByMediator(slot1, LevelMediator2).children == 0 then
			setActive(slot0.topPanel, true)

			if slot0.visibilityForPreCombat then
				for slot6, slot7 in pairs(slot0.visibilityForPreCombat) do
					setActive(slot0[slot6], slot7)
				end

				slot0.visibilityForPreCombat = nil
			end
		end
	end

	if slot0.tornadoTF and slot0.contextData.map:getConfig("animtor") == 1 then
		setActive(slot0.tornadoTF, true)
	end

	slot0.isSubLayerOpen = nil

	return
end

function slot0.onSubLayerContextChange(slot0)
	slot0.visibilityForPreCombat = nil

	return
end

function slot0.popStageStrategy(slot0)
	if slot0:findTF("event/collapse", slot0.levelStageView.rightStage).anchoredPosition.x <= 1 then
		triggerButton(slot1)
	end

	return
end

function slot0.resetLevelGrid(slot0)
	slot0.dragLayer.localPosition = Vector3.zero

	return
end

function slot0.frozen(slot0, slot1)
	if slot1 then
		slot0.fcall = slot1
	end

	slot0.frozenCount = slot0.frozenCount + 1
	slot2 = slot0.canvasGroup

	if slot0.frozenCount ~= 0 then
		slot3 = false
	else
		slot3 = true
	end

	slot2.blocksRaycasts = slot3

	return
end

function slot0.unfrozen(slot0)
	if slot0.exited then
		return
	end

	slot0.frozenCount = slot0.frozenCount - 1
	slot1 = slot0.canvasGroup

	if slot0.frozenCount ~= 0 then
		slot2 = false
	else
		slot2 = true
	end

	slot1.blocksRaycasts = slot2

	if slot0.frozenCount == 0 and slot0.fcall then
		slot0.fcall = nil

		slot0.fcall()
	end

	return
end

function slot0.isfrozen(slot0)
	if slot0.frozenCount <= 0 then
		slot1 = false
	else
		slot1 = true
	end

	return slot1
end

function slot0.enableLevelCamera(slot0)
	slot0.levelCamIndices = math.max(slot0.levelCamIndices - 1, 0)

	if slot0.levelCamIndices == 0 then
		slot0.levelCam.enabled = true
	end

	return
end

function slot0.disableLevelCamera(slot0)
	slot0.levelCamIndices = slot0.levelCamIndices + 1

	if slot0.levelCamIndices > 0 then
		slot0.levelCam.enabled = false
	end

	return
end

function slot0.RecordTween(slot0, slot1, slot2)
	slot0.tweens[slot1] = slot2

	return
end

function slot0.DeleteTween(slot0, slot1)
	if slot0.tweens[slot1] then
		LeanTween.cancel(slot2)

		slot0.tweens[slot1] = nil
	end

	return
end

function slot0.openCommanderPanel(slot0, slot1, slot2, slot3)
	slot4 = nil

	if not slot3 then
		function slot4(slot0)
			slot0.contextData.commanderSelected = {
				chapterId = slot1,
				fleetId = slot2.id
			}

			slot0:emit(LevelMediator2.ON_SELECT_COMMANDER, slot0, slot2.id, slot0.emit)
			slot0:closeCommanderPanel()

			return
		end
	else
		function slot4(slot0)
			slot0.contextData.eliteCommanderSelected = {
				index = slot1,
				pos = slot0,
				chapterId = 
			}

			slot0:emit(LevelMediator2.ON_SELECT_ELITE_COMMANDER, slot0.emit, slot0, slot0)
			slot0:closeCommanderPanel()

			return
		end
	end

	slot0.levelCMDFormationView = LevelCMDFormationView.New(slot0.topPanel, slot0.event, slot0.contextData)

	slot0.levelCMDFormationView:Load()
	slot0.levelCMDFormationView:ActionInvoke("update", slot1, slot4)
	slot0.levelCMDFormationView:ActionInvoke("open")

	return
end

function slot0.closeCommanderPanel(slot0)
	slot0.levelCMDFormationView:close()

	return
end

function slot0.HandleShowMsgBox(slot0, slot1)
	slot1.blurLevelCamera = true

	pg.MsgboxMgr.GetInstance():ShowMsgBox(slot1)

	return
end

function slot0.updatePoisonAreaTip(slot0)
	slot1 = slot0.contextData.chapterVO

	function getTypeEvent(slot0)
		slot1 = {}

		if not pg.map_event_list[slot0.id] then
			slot2 = {}
		end

		slot3 = nil

		if slot0:isLoop() then
			if not slot2.event_list_loop then
				slot3 = {}
			end
		else
			if not slot2.event_list then
				slot3 = {}
			end
		end

		for slot7, slot8 in ipairs(slot3) do
			if pg.map_event_template[slot8].c_type == slot0 then
				table.insert(slot1, slot9)
			end
		end

		return slot1
	end

	if getTypeEvent(ChapterConst.EvtType_Poison) then
		for slot6, slot7 in ipairs(slot2) do
			if slot7.round_gametip ~= nil and slot8 ~= "" and slot1:getRoundNum() == slot8[1] then
				pg.TipsMgr.GetInstance():ShowTips(i18n(slot8[2]))
			end
		end
	end

	return
end

function slot0.willExit(slot0)
	if slot0.contextData.chapterVO then
		pg.UIMgr.GetInstance():UnblurPanel(slot0.topPanel, slot0._tf)
	end

	if slot0.levelFleetView and slot0.levelFleetView.selectIds then
		slot0.contextData.selectedFleetIDs = {}

		for slot4, slot5 in pairs(slot0.levelFleetView.selectIds) do
			for slot9, slot10 in pairs(slot5) do
				slot0.contextData.selectedFleetIDs[#slot0.contextData.selectedFleetIDs + 1] = slot10
			end
		end
	end

	if slot0.levelStageView and slot0.levelStageView:CheckState(BaseSubView.STATES.INITED) then
		slot0.levelStageView:Destroy()
	end

	slot0:hideChapterPanel()
	slot0:hideFleetEdit()
	slot0:hideSpResult()
	slot0:hideBombResult()
	slot0:destroyGrid()
	slot0:destroyAmbushWarn()
	slot0:destroyAirStrike()
	slot0:destroyTorpedo()
	slot0:destroyStrikeAnim()
	slot0:destroyTracking()
	slot0:destroyCloudAnimator()
	slot0:destroyUIAnims()

	for slot4, slot5 in pairs(slot0.mapItemTimer) do
		if slot5 then
			slot5:Stop()
		end
	end

	slot0.mapItemTimer = nil

	for slot4, slot5 in pairs(slot0.tweens) do
		LeanTween.cancel(slot5)
	end

	slot0.tweens = nil

	if slot0.cloudTimer then
		_.each(slot0.cloudTimer, function (slot0)
			LeanTween.cancel(slot0)

			return
		end)

		slot0.cloudTimer = nil
	end

	if slot0.newChapterCDTimer then
		slot0.newChapterCDTimer:Stop()

		slot0.newChapterCDTimer = nil
	end

	if slot0.resPanel then
		slot0.resPanel:exit()

		slot0.resPanel = nil
	end

	if slot0.resPanel1 then
		slot0.resPanel1:exit()

		slot0.resPanel1 = nil
	end

	if slot0.activityBossBattlePanel then
		slot0.activityBossBattlePanel:clear()
	end

	LeanTween.cancel(go(slot0.damageText))

	slot0.map.localScale = Vector3.one
	slot0.map.pivot = Vector2.zero
	slot0.float.localScale = Vector3.one
	slot0.float.pivot = Vector2.zero

	clearImageSprite(slot0.map)
	_.each(slot0.cloudRTFs, function (slot0)
		clearImageSprite(slot0)

		return
	end)

	if getProxy(ChapterProxy) then
		if not slot0.contextData.map:isActivity() and not slot2:isSham() and not slot2:isGuildBoss() and not slot2:isEscort() then
			slot1:recordLastMap(ChapterProxy.LAST_MAP, slot2.id)
		end

		if Map.lastMapForActivity then
			slot1:recordLastMap(ChapterProxy.LAST_MAP_FOR_ACTIVITY, Map.lastMapForActivity)
		end
	end

	return
end

return slot0
