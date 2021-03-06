slot0 = class("CommandRoomScene", import("..base.BaseUI"))
slot0.MODE_VIEW = 1
slot0.MODE_SELECT = 2
slot0.SELECT_MODE_SINGLE = 1
slot0.SELECT_MODE_MULTI = 2

function slot0.getUIName(slot0)
	return "CommandRoomUI"
end

function slot0.getBGM(slot0)
	return "backyard"
end

function slot0.setBoxes(slot0, slot1)
	slot0.boxes = slot1
end

function slot0.setPlayer(slot0, slot1)
	slot0.playerVO = slot1
	slot0.commanderBagMax = slot0.playerVO.commanderBagMax

	slot0:updateCapcity()
	slot0:updateGold()
end

function slot0.setCommanders(slot0, slot1)
	slot0.commanderVOs = slot1

	slot0:updateCapcity()
end

function slot0.setReserveBoxCnt(slot0, slot1)
	slot0.reserveBoxCnt = slot1

	if slot0.updateReserveBtn then
		slot0:updateReserveBtn()
	end
end

function slot0.setPools(slot0, slot1)
	slot0.pools = slot1

	slot0:updateRes()
end

function slot0.init(slot0)
	slot0.bgTF = slot0:findTF("background"):GetComponent(typeof(Image))
	slot0.topPanel = slot0:findTF("blur_panel/top")
	slot0.mainTF = slot0:findTF("blur_panel/main")
	slot0.rightPanel = slot0:findTF("blur_panel/main/right_panel")
	slot0.leftPanel = slot0:findTF("blur_panel/main/left_panel")

	setActive(slot0.leftPanel, false)

	slot0.leftPanelCG = slot0.leftPanel:GetComponent(typeof(CanvasGroup))

	setActive(slot0:findTF("box_panel"), false)

	slot0.backBtn = slot0:findTF("blur_panel/top/back_btn")
	slot0.commanderInfo = slot0:findTF("info", slot0.leftPanel)
	slot0.commanderLevelTxt = slot0:findTF("exp/level", slot0.commanderInfo):GetComponent(typeof(Text))
	slot0.commanderExpImg = slot0:findTF("exp/Image", slot0.commanderInfo):GetComponent(typeof(Image))
	slot0.commanderNameTxt = slot0:findTF("name_bg/content/Text", slot0.commanderInfo):GetComponent(typeof(Text))
	slot0.modifyNameBtn = slot0:findTF("name_bg/content/modify", slot0.commanderInfo)

	setActive(slot0.modifyNameBtn, pg.gameset.commander_rename_open.key_value == 1)

	slot0.paintingTF = slot0:findTF("blur_panel/main/left_panel/paint")
	slot0.fleetTF = slot0:findTF("info/line/fleet", slot0.leftPanel)
	slot0.leisureTF = slot0:findTF("info/line/leisure", slot0.leftPanel)
	slot0.labelInBattleTF = slot0:findTF("info/line/inbattle", slot0.leftPanel)
	slot0.rarityImg = slot0:findTF("info/rarity", slot0.leftPanel):GetComponent(typeof(Image))
	slot0.detailBtn = slot0:findTF("info_btn", slot0.commanderInfo)
	slot0.commandersPanel = slot0:findTF("commanders", slot0.rightPanel)
	slot0.selctedPanel = slot0:findTF("commanders/bottom", slot0.rightPanel)
	slot0.selectedNumTxt = slot0:findTF("commanders/bottom/value/Text", slot0.rightPanel):GetComponent(typeof(Text))
	slot0.selectedBtn = slot0:findTF("commanders/bottom/select_btn", slot0.rightPanel)
	slot0.cancelBtn = slot0:findTF("commanders/bottom/cancel_btn", slot0.rightPanel)
	slot0.ascBtn = slot0:findTF("commanders/top/asc_btn", slot0.rightPanel)
	slot0.sortBtn = slot0:findTF("commanders/top/sort_btn", slot0.rightPanel)
	slot0.boxTF = slot0:findTF("commanders/box", slot0.rightPanel)
	slot0.boxClickTF = slot0:findTF("click", slot0.boxTF)
	slot0.capcity = slot0.boxTF:Find("capcity/Text")
	slot0.msgbox = CommaderMsgBox.New(slot0:findTF("box_msg_panel"))
	slot0.resPanel = slot0:findTF("blur_panel/top/res/bg")
	slot0.goldTxt = slot0:findTF("blur_panel/top/res/bg/gold/Text")
	slot0.mode = slot0.contextData.mode or slot0.MODE_VIEW
	slot0.sortData = slot0.contextData.sortData or CommandRoomScene.sortData or {
		asc = true,
		sortData = "id",
		nationData = {},
		rarityData = {}
	}
	slot0.onCommander = slot0.contextData.onCommander or function (slot0)
		return true
	end
	slot0.onSelected = slot0.contextData.onSelected or function (slot0, slot1)
		slot1()
	end
	slot0.onQuit = slot0.contextData.onQuit or function ()
		return
	end

	setActive(slot0.selctedPanel, slot0.mode == slot0.MODE_SELECT)

	slot0.indexPanel = CommanderIndexPanel.New(slot0:findTF("index_panel"))

	slot0.indexPanel:attach(slot0)
	slot0.indexPanel:hide()
	eachChild(slot0.sortBtn, function (slot0)
		setActive(slot0, go(slot0).name == slot0.sortData.sortData)
	end)
	setActive(slot0.boxTF, slot0.mode == slot0.MODE_VIEW)

	slot0.isMultSelectMode = slot0.mode == slot0.MODE_SELECT and slot0.contextData.maxCount > 1

	if slot0.isMultSelectMode then
		setActive(slot0.topPanel, false)
		onButton(slot0, go(slot0.bgTF), function ()
			slot0:emit(slot1.ON_BACK)
		end, SOUND_BACK)
	end

	slot0:enterAnim(function ()
		if slot0.isMultSelectMode then
			setParent(slot0.rightPanel, pg.UIMgr.GetInstance().OverlayMain, true)

			slot0.rightPanel.localPosition = Vector3(setParent.rightPanel.localPosition.x, setParent.rightPanel.localPosition.y, 0)
			pg.UIMgr.GetInstance()._cameraBlur.enabled = true

			slot0.indexPanel:setOverlay()
		end

		slot0:tryPlayStroy()
	end)

	slot0.renamePanel = ComanderRenamePanel.New(slot0, slot0:findTF("rename_panel"))
end

function slot0.finishStroy(slot0, slot1)
	pg.m02:sendNotification(GAME.STORY_UPDATE, {
		storyId = slot1
	})
end

function slot0.tryPlayStroy(slot0)
	seriesAsync({
		function (slot0)
			if pg.StoryMgr:GetInstance():IsPlayed("ZHIHUIMIAO2") then
				slot0()
			else
				pg.StoryMgr:GetInstance():Play("ZHIHUIMIAO2", slot0, true, true)
			end
		end,
		function (slot0)
			if not pg.GuideMgr:GetInstance():isPlayed("NG006") and table.getCount(getProxy(CommanderProxy):getData()) >= 1 then
				slot0:finishStroy("NG006")
				slot0()
			else
				pg.StoryMgr:GetInstance():PlayGuide("NG006", {}, slot0)
			end
		end,
		function (slot0)
			if not pg.GuideMgr:GetInstance():isPlayed("NG007") and getProxy(BagProxy):getItemCountById(20012) ~= 1 then
				slot0:finishStroy("NG007")
				slot0()
			else
				pg.StoryMgr:GetInstance():PlayGuide("NG007", {}, slot0)
			end
		end,
		function (slot0)
			if pg.StoryMgr:GetInstance():IsPlayed("ZHIHUIMIAO3") then
				slot0()
			else
				pg.StoryMgr:GetInstance():Play("ZHIHUIMIAO3", slot0, true, true)
			end
		end,
		function (slot0)
			if not pg.GuideMgr:GetInstance():isPlayed("NG008") and slot0.boxes[1]:getState() ~= CommanderBox.STATE_FINISHED then
				slot0:finishStroy("NG008")
				slot0()
			else
				pg.StoryMgr:GetInstance():PlayGuide("NG008", {}, slot0)
			end
		end,
		function (slot0)
			if pg.StoryMgr:GetInstance():IsPlayed("ZHIHUIMIAO4") then
				slot0()
			else
				pg.StoryMgr:GetInstance():Play("ZHIHUIMIAO4", slot0, true, true)
			end
		end,
		function (slot0)
			if not pg.GuideMgr:GetInstance():isPlayed("NG009") and table.getCount(getProxy(CommanderProxy):getData()) ~= 1 then
				slot0:finishStroy("NG009")
				slot0()
			else
				pg.StoryMgr:GetInstance():PlayGuide("NG009", {}, slot0)
			end
		end
	})
end

function slot0.updateRes(slot0)
	for slot4, slot5 in pairs(slot0.pools) do
		setText(slot0.resPanel:Find(slot5.id).Find(slot6, "Text"), slot5:getItemCount())
	end
end

function slot0.initBoxes(slot0)
	function slot0.updateBoxes(slot0)
		if slot0.boxesPanel:isShow() and slot0.boxes then
			slot0.boxesPanel:update(slot0.boxes)
		end

		if slot0.updateBoxesBtn then
			slot0:updateBoxesBtn()
		end
	end

	function slot0.openBoxPanel(slot0)
		slot0.boxesPanel:update(slot0.boxes)
		slot0.boxesPanel:show()
	end

	function slot0.hideBoxPanel(slot0)
		slot0.boxesPanel:hide()
	end

	slot0:updateCapcity()

	slot0.boxesPanel = CommanderBoxesPanel.New(slot0, slot0:findTF("box_panel"), slot0.pools)

	slot0:hideBoxPanel()

	slot0.reservePanel = CommanderReservePanel.New(slot0, slot0:findTF("buy_panel"))

	slot0.reservePanel:hide()
	onButton(slot0, slot0.boxesPanel._go, function ()
		slot0:hideBoxPanel()
	end, SFX_PANEL)

	function slot0.updateReserveBtn(slot0)
		if not IsNil(slot0:findTF("reserve_btn/Text", slot0.boxTF)) then
			setText(slot1, CommanderConst.MAX_GETBOX_CNT - slot0.reserveBoxCnt .. "/" .. CommanderConst.MAX_GETBOX_CNT)
			setActive(slot0:findTF("reserve_btn/free", slot0.boxTF), slot0.reserveBoxCnt == 0)
		end
	end

	slot0:updateReserveBtn()

	function slot0.updateBoxesBtn(slot0)
		if not IsNil(slot0:findTF("boxes_btn/Text", slot0.boxTF)) then
			setText(slot1, #_.select(slot0.boxes, function (slot0)
				return CommanderBox.STATE_WAITING < slot0:getState()
			end) .. "/" .. #slot0.boxes)
			setActive(slot0:findTF("boxes_btn/tip", slot0.boxTF), _.any(slot0.boxes, function (slot0)
				return slot0:getState() == CommanderBox.STATE_FINISHED
			end))
		end
	end

	slot0:updateBoxesBtn()

	function slot0.playReserveAnim(slot0, slot1, slot2)
		if slot0.reservePanel then
			slot0.reservePanel:playAnim(slot1, slot2)
		else
			slot2()
		end
	end

	onButton(slot0, slot0:findTF("reserve_btn", slot0.boxTF), function ()
		slot0.reservePanel:show()
		slot0.reservePanel.show.reservePanel:update(slot0.reserveBoxCnt)
	end, SFX_PANEL)
	onButton(slot0, slot0:findTF("boxes_btn", slot0.boxTF), function ()
		slot0:openBoxPanel()
	end, SFX_PANEL)
end

function slot0.updateCapcity(slot0)
	if slot0.commanderBagMax and slot0.commanderVOs and slot0.capcity then
		setText(slot0.capcity, table.getCount(slot0.commanderVOs) .. "/" .. slot0.commanderBagMax)
	end
end

function slot0.updateGold(slot0)
	if slot0.goldTxt then
		setText(slot0.goldTxt, slot0.playerVO.gold)
	end
end

slot1 = 0.3

function slot0.enterAnim(slot0, slot1)
	slot0.leftPanelCG.alpha = 0

	LeanTween.value(go(slot0.leftPanel), 0, 1, slot0):setOnUpdate(System.Action_float(function (slot0)
		if slot0.leftPanelCG then
			slot0.leftPanelCG.alpha = slot0
		end
	end)):setOnComplete(System.Action(function ()
		if slot0 then
			slot0()
		end
	end))
end

function slot0.exitAnim(slot0, slot1)
	LeanTween.moveLocalX(go(slot0.rightPanel), 2110, slot0):setFrom(960):setOnComplete(System.Action(slot1))

	return
end

function slot0.didEnter(slot0)
	slot0.helpBtn = slot0:findTF("help_btn")

	onButton(slot0, slot0.modifyNameBtn, function ()
		if not slot0.commanderVOs[slot0.conmmanderId]:canModifyName() then
			slot0:openMsgBox({
				content = i18n("commander_rename_coldtime_tip", slot0:getRenameTimeDesc())
			})
		else
			slot0:opeRenamePanel(slot0)
		end

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.helpBtn, function ()
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			type = MSGBOX_TYPE_HELP,
			helps = pg.gametip.help_command_room.tip
		})

		return
	end, SFX_PANEL)
	setActive(slot0.helpBtn, slot0.MODE_VIEW == slot0.mode)

	if slot0.MODE_VIEW == slot0.mode then
		slot0:initBoxes()
	end

	slot0.selecteds = slot0.contextData.selectedIds or {}

	onButton(slot0, slot0.ascBtn, function ()
		slot0.sortData.asc = not slot0.sortData.asc

		setActive(slot0.ascBtn:Find("asc"), slot0.sortData.asc)
		setActive(slot0.ascBtn:Find("desc"), not slot0.sortData.asc)
		setActive:updateCommanders()

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.sortBtn, function ()
		slot0.indexPanel:show(slot0.sortData)

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.indexPanel.cancelBtn, function ()
		slot0.indexPanel:hide()

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.indexPanel.confirmBtn, function ()
		slot0.sortData = slot0.indexPanel.data
		slot0.sortData.asc = slot0.sortData.asc

		slot0:clearAllSelected()
		slot0:updateCommanders()
		slot0.indexPanel:hide()
		eachChild(slot0.sortBtn, function (slot0)
			setActive(slot0, go(slot0).name == slot0.sortData.sortData)

			return
		end)

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.indexPanel.closeBtn, function ()
		slot0.indexPanel:hide()

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.indexPanel._tf, function ()
		slot0.indexPanel:hide()

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.detailBtn, function ()
		if not slot0.conmmanderId then
			return
		end

		slot0:exitAnim(function ()
			slot0:emit(CommandRoomMediator.ON_DETAIL, slot0.conmmanderId)

			return
		end)

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.backBtn, function ()
		slot0:exitAnim(function ()
			slot0:emit(slot1.ON_BACK)

			return
		end)

		return
	end, SFX_CANCEL)
	onButton(slot0, slot0.selectedBtn, function ()
		if (slot0.contextData.minCount or 1) > #slot0.contextData.minCount or 1.selecteds then
			pg.TipsMgr:GetInstance():ShowTips(i18n("commander_select_min_cnt", slot0))

			return
		end

		slot0.onSelected(slot0.selecteds, function ()
			triggerButton(slot0.backBtn)

			return
		end)

		return
	end, SFX_PANEL)
	onButton(slot0, slot0.cancelBtn, function ()
		triggerButton(slot0.backBtn)

		return
	end, SFX_PANEL)

	slot0.conmmanderId = CommandRoomScene.commanderId or slot0.contextData.conmmanderId or slot0.contextData.activeCommanderId
	CommandRoomScene.commanderId = nil

	slot0:initCommandersPanel()
	triggerButton(slot0.ascBtn, true)
	slot0:updateGold()

	return
end

function slot0.opeRenamePanel(slot0, slot1)
	slot0.renamePanel:open(slot1)

	return
end

function slot0.closeRenamePanel(slot0)
	slot0.renamePanel:close()

	return
end

function slot0.initCommandersPanel(slot0)
	slot0.commanderRect = slot0.commandersPanel:Find("frame/frame"):GetComponent("LScrollRect")
	slot0.cards = {}

	function slot0.commanderRect.onInitItem(slot0)
		slot1 = CommamderCard.New(slot0)

		onButton(slot0, slot1.infoTF, function ()
			if not slot0.commanderVO then
				return
			end

			if slot1.contextData.mode == slot2.MODE_SELECT then
				slot1:checkCommander(slot0.commanderVO)
			else
				slot0:selectedAnim()
				setActive(slot0.mark2, true)

				if slot1.conmmanderId == slot0.commanderVO.id then
					return
				end

				slot1.conmmanderId = slot0.commanderVO.id
				slot1.contextData.conmmanderId = slot0.commanderVO.id.conmmanderId

				slot0.commanderVO.id.conmmanderId:updateCommanderInfo()

				if slot1.card then
					setActive(slot1.card.mark2, false)
				end

				slot1.card = slot1
			end

			return
		end, SFX_PANEL)
		onButton(slot0, slot1.quitTF, function ()
			if not slot0.commanderVO then
				return
			end

			if slot0.commanderVO.id == 0 then
				slot1.onQuit(function ()
					slot0:emit(slot1.ON_BACK)

					return
				end)
			end

			return
		end, SFX_PANEL)

		slot0.cards[slot0] = slot1

		return
	end

	function slot0.commanderRect.onUpdateItem(slot0, slot1)
		if not slot0.cards[slot1] then
			slot0.cards[slot1] = CommamderCard.New(slot1)
		end

		slot2:update(slot0.disPlayCommanderVOs[slot0 + 1])
		slot2:clearSelected()

		if slot0.mode == slot1.MODE_VIEW and slot0.conmmanderId then
			if slot3 and slot3.id == slot0.conmmanderId then
				if slot0.card then
					setActive(slot0.card.mark2, false)
				end

				triggerButton(slot2.infoTF)
				slot0:updateCommanderInfo()

				slot0.card = slot2
			end
		else
			if slot0.mode == slot1.MODE_VIEW and not slot0.conmmanderId and slot0 == 0 then
				triggerButton(slot2.infoTF)
			else
				if slot0.mode == slot1.MODE_SELECT and slot0.conmmanderId and slot0.contextData.maxCount == 1 and slot2.commanderVO and slot2.commanderVO.id == slot0.conmmanderId then
					slot0:checkCommander(slot2.commanderVO)
				end
			end
		end

		if slot0.mode == slot1.MODE_SELECT and slot0.contextData.activeGroupId then
			setActive(slot2.expUp, slot2.commanderVO:isSameGroup(slot0.contextData.activeGroupId))
		end

		setActive(slot2.formationTF, slot3 and slot3.inFleet and not slot3.inBattle)
		setActive(slot2.inbattleTF, slot3 and slot3.inBattle)
		setActive(slot2.mark2, slot2.commanderVO and slot0.conmmanderId == slot2.commanderVO.id)
		setActive(slot2.mark1, (slot2.commanderVO and table.contains(slot0.selecteds, slot2.commanderVO.id) and not slot0.mode == slot1.MODE_SELECT) or (slot0.isMultSelectMode and slot2.commanderVO and table.contains(slot0.selecteds, slot2.commanderVO.id)))

		return
	end

	if slot0.mode == slot0.MODE_SELECT then
		function slot0.commanderRect.onStart()
			if slot0.isMultSelectMode then
				slot0:updateSelecteds()
			end

			slot0:updateSelectCntTxt()

			return
		end
	end

	return
end

function slot0.checkCommander(slot0, slot1)
	slot2 = slot1
	slot3 = slot0.contextData.maxCount or table.getCount(slot0.commanderVOs)

	if table.contains(slot0.selecteds, slot2.id) and slot3 == 1 then
		slot0:updateSelecteds()

		return
	else
		if table.contains(slot0.selecteds, slot2.id) then
			table.remove(slot0.selecteds, table.indexof(slot0.selecteds, slot2.id))
			slot0:updateSelecteds()

			return
		end
	end

	slot4, slot5 = slot0.onCommander(slot2, function ()
		for slot3, slot4 in ipairs(slot0.selecteds) do
			if slot4 == slot1.id then
				table.remove(slot0.selecteds, slot3)

				break
			end
		end

		slot0:updateSelecteds()

		return
	end, function ()
		slot0:emit(CommandRoomMediator.ON_REMARK)
		slot0.emit:updateCommanders()
		slot0.emit.updateCommanders:updateSelecteds()

		return
	end, slot0)

	if not slot4 then
		pg.TipsMgr:GetInstance():ShowTips(slot5)

		return
	end

	if slot3 == 1 then
		slot0.conmmanderId = slot1.id
		slot0.contextData.conmmanderId = slot1.id

		slot0:updateCommanderInfo()
		table.remove(slot0.selecteds, #slot0.selecteds)
	else
		if slot3 <= #slot0.selecteds then
			pg.TipsMgr:GetInstance():ShowTips(i18n("commander_select_max"))

			return
		end
	end

	table.insert(slot0.selecteds, slot1.id)
	slot0:updateSelecteds()

	return
end

function slot0.updateSelecteds(slot0)
	slot1 = slot0.contextData.maxCount or table.getCount(slot0.commanderVOs)

	for slot5, slot6 in pairs(slot0.cards) do
		if slot6.commanderVO then
			setActive((slot1 == 1 and slot6.mark2) or slot6.mark1, table.contains(slot0.selecteds, slot6.commanderVO.id))
		end
	end

	slot0:updateSelectCntTxt()

	return
end

function slot0.updateSelectCntTxt(slot0)
	slot0.selectedNumTxt.text = #slot0.selecteds .. "/" .. (slot0.contextData.maxCount or table.getCount(slot0.commanderVOs))

	return
end

function slot0.updateBg(slot0, slot1)
	if slot0.bg ~= slot1:getConfig("bg") then
		slot0.bg = slot2
		slot0.bgTF.sprite = LoadSprite("bg/commander_bg_" .. slot2)
	end

	return
end

function slot0.updateCommanderInfo(slot0)
	if not slot0.conmmanderId then
		return
	end

	slot0:updateBg(slot2)

	slot0.commanderLevelTxt.text = "LV." .. slot0.commanderVOs[slot0.conmmanderId].level

	if slot0.commanderVOs[slot0.conmmanderId]:isMaxLevel() then
		slot0.commanderExpImg.fillAmount = 1
	else
		slot0.commanderExpImg.fillAmount = slot2.exp / slot2:getNextLevelExp()
	end

	slot0.commanderNameTxt.text = slot2:getName()

	setActive(slot0.leftPanel, true)

	if slot0.painting then
		retPaintingPrefab(slot0.paintingTF, slot0.painting:getPainting())
	end

	setPaintingPrefab(slot0.paintingTF, slot2:getPainting(), "info")

	slot0.painting = slot2

	LoadImageSpriteAsync("CommanderRarity/" .. slot3, slot0.rarityImg, true)

	if slot2.fleetId then
		eachChild(slot0.fleetTF, function (slot0)
			setActive(slot0, go(slot0).name == tostring(slot0.fleetId))

			return
		end)
	end

	setActive(slot0.fleetTF, slot2.fleetId and not slot2.inBattle)
	setActive(slot0.leisureTF, not slot2.inFleet and not slot2.inBattle)
	setActive(slot0.labelInBattleTF, slot2.inBattle)

	return
end

function slot0.updateCommanders(slot0)
	slot0.disPlayCommanderVOs = {}
	slot1 = slot0.sortData

	function slot2(slot0)
		if #slot0.nationData > 0 then
			return table.contains(slot0.nationData, slot0:getConfig("nationality"))
		end

		return true
	end

	function slot3(slot0)
		if #slot0.rarityData > 0 then
			return table.contains(slot0.rarityData, slot0:getRarity())
		end

		return true
	end

	for slot7, slot8 in pairs(slot0.commanderVOs) do
		if not table.contains(slot0.contextData.ignoredIds or {}, slot8.id) and slot2(slot8) and slot3(slot8) then
			table.insert(slot0.disPlayCommanderVOs, slot8)
		end
	end

	table.sort(slot0.disPlayCommanderVOs, function (slot0, slot1)
		if ((slot0.inFleet and 1) or 0) == ((slot1.inFleet and 1) or 0) then
			if ((slot0.contextData.activeCommanderId == slot0.id and 1) or 0) == ((slot0.contextData.activeCommanderId == slot1.id and 1) or 0) then
				if slot1.sortData == "id" then
					if slot1.asc then
						slot6 = {
							slot0.configId < slot1.configId
						}

						if not slot6 then
							slot6 = {
								slot1.configId < slot0.configId
							}
						end
					end

					return slot6[1]
				else
					if slot0["get" .. slot1.sortData](slot0) == slot1["get" .. slot1.sortData](slot1) then
						if slot1.asc then
							slot8 = {
								slot0.configId < slot1.configId
							}

							if not slot8 then
								slot8 = {
									slot1.configId < slot0.configId
								}
							end
						end

						return slot8[1]
					else
						if slot1.asc then
							slot8 = {
								slot6 < slot7
							}

							if not slot8 then
								slot8 = {
									slot7 < slot6
								}
							end
						end

						return slot8[1]
					end
				end
			else
				return slot5 < slot4
			end
		else
			return slot3 < slot2
		end

		return
	end)

	if slot0.contextData.activeCommanderId then
		table.insert(slot0.disPlayCommanderVOs, 1, {
			id = 0
		})
	end

	if slot0.mode == slot0.MODE_VIEW then
		slot5 = #slot0.disPlayCommanderVOs + ((#slot0.disPlayCommanderVOs % 4 > 0 and 4 - #slot0.disPlayCommanderVOs % 4) or 0)

		if slot0.conmmanderId then
			slot6 = 0

			for slot10, slot11 in ipairs(slot0.disPlayCommanderVOs) do
				if slot11.id == slot0.conmmanderId then
					slot6 = slot10

					break
				end
			end

			slot0.commanderRect:SetTotalCount(math.max(12, slot5), math.floor(slot6 / 4) / (#slot0.disPlayCommanderVOs / 4) or slot0.contextData.scrollValue or 0)
		else
			slot0.commanderRect:SetTotalCount(math.max(12, slot5), slot0.contextData.scrollValue or 0)
		end
	else
		if slot0.mode == slot0.MODE_SELECT then
			slot0.commanderRect:SetTotalCount(#slot0.disPlayCommanderVOs, slot0.contextData.scrollValue or 0)
		end
	end

	return
end

function slot0.clearAllSelected(slot0)
	for slot4, slot5 in pairs(slot0.cards) do
		slot5:clearSelected()
	end

	return
end

function slot0.onBackPressed(slot0)
	if slot0.isShowMsgBox then
		slot0:closeMsgBox()

		return
	end

	if slot0.boxesPanel and go(slot0.boxesPanel.buildPoolPanel).activeSelf then
		slot0.boxesPanel:hideBuildPoolPanel()

		return
	end

	if slot0.boxesPanel and slot0.boxesPanel:isShow() then
		slot0.boxesPanel:hide()

		return
	end

	slot0:emit(slot0.ON_BACK_PRESSED)

	return
end

function slot0.openMsgBox(slot0, slot1)
	slot0.isShowMsgBox = true

	slot0.msgbox:openMsgBox(slot1)
	setParent(slot0.msgbox._tf, pg.UIMgr.GetInstance().OverlayMain, true)

	slot0.msgbox._tf.localPosition = Vector3(slot0.msgbox._tf.localPosition.x, slot0.msgbox._tf.localPosition.y, 0)

	return
end

function slot0.closeMsgBox(slot0)
	slot0.isShowMsgBox = nil

	slot0.msgbox:closeMsgBox()
	setParent(slot0.msgbox._tf, pg.UIMgr.GetInstance().UIMain, true)

	slot0.msgbox._tf.localPosition = Vector3(slot0.msgbox._tf.localPosition.x, slot0.msgbox._tf.localPosition.y, 0)

	return
end

function slot0.willExit(slot0)
	if slot0.boxesPanel then
		slot0.boxesPanel:clear()
	end

	if slot0.reservePanel then
		slot0.reservePanel:clear()
	end

	for slot4, slot5 in ipairs(slot0.cards) do
		slot5:clear()
	end

	if slot0.painting then
		retPaintingPrefab(slot0.paintingTF, slot0.painting:getPainting())
	end

	if slot0.mode == slot0.MODE_SELECT and slot0.contextData.maxCount > 1 then
		setParent(slot0.rightPanel, slot0._tf, true)

		pg.UIMgr.GetInstance()._cameraBlur.enabled = false

		setActive(slot0.leftPanel, true)
		slot0.indexPanel:setMainLay()
	end

	slot0.indexPanel:detach()

	if slot0.modelTf and slot0.prefabName then
		PoolMgr.GetInstance():ReturnSpineChar(slot0.prefabName, slot0.modelTf.gameObject)
	end

	slot0.contextData.sortData = slot0.sortData
	slot0.contextData.sortData.asc = not slot0.contextData.sortData.asc
	slot0.contextData.scrollValue = math.min(slot0.commanderRect.value, 1)
	CommandRoomScene.sortData = slot0.contextData.sortData

	return
end

return slot0
