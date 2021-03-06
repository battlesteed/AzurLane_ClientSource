slot0 = class("SkinShopScene", import("..base.BaseUI"))
slot1 = pg.ship_data_group
slot2 = pg.skin_page_template
slot3 = pg.ship_skin_template
slot4 = pg.shop_template
slot0.SHOP_TYPE_COMMON = 1
slot0.SHOP_TYPE_TIMELIMIT = 2
slot0.PAGE_ALL = -1
slot0.PAGE_TIME_LIMIT = -2
slot0.MSGBOXNAME = "SkinShopMsgbox"
slot0.EXSKINNAME = "ExSkinListUI"
slot0.OVERDUENAME = "SkinOverDueUI"
slot5 = {
	{
		"huanzhuangshagndian",
		"huanzhuangshagndian_en"
	},
	{
		"title_01",
		"title_en_01"
	}
}

function slot6(slot0)
	setActive(({
		_go = slot0,
		_tf = tf(slot0),
		_content = ()["_tf"]:Find("content"),
		_mask = ()["_tf"]:Find("mask"),
		_icon = ()["_tf"]:Find("content/main/bg/icon"):GetComponent(typeof(Image)),
		_priceTF = ()["_tf"]:Find("content/main/bg/price"),
		_priceIcon = ()["_priceTF"]:Find("gem"):GetComponent(typeof(Image)),
		_priceTxt = ()["_priceTF"]:Find("gem/Text"):GetComponent(typeof(Text)),
		_opriceTxt = ()["_priceTF"]:Find("originalprice"):GetComponent(typeof(Text)),
		_tagTFs = {
			()["_tf"]:Find("content/top/tags/tag_hot"),
			()["_tf"]:Find("content/top/tags/tag_new"),
			()["_tf"]:Find("content/top/tags/tag_advice"),
			()["_tf"]:Find("content/top/tags/tag_activity"),
			()["_tf"]:Find("content/top/tags/tag_discount"),
			()["_tf"]:Find("content/top/tags/tag_nothing"),
			()["_tf"]:Find("content/top/tags/tag_bought"),
			()["_tf"]:Find("content/top/tags/tag_limit"),
			()["_tf"]:Find("content/top/tags/tag_timelimit")
		},
		update = function (slot0, slot1)
			slot0.goodsVO = slot1
			slot0.shipSkinConfig = slot0[slot1:getSkinId()]

			LoadSpriteAsync("shipYardIcon/" .. slot3, function (slot0)
				slot0._icon.sprite = slot0
			end)

			slot0._priceIcon.sprite = LoadSprite("props/" .. id2res(slot1:getConfig("resource_type")))
			slot5 = slot1:getConfig("resource_num")
			slot6 = (100 - slot1:getConfig("discount")) / 100

			if slot1:isDisCount() then
				slot0._priceTxt.text = slot5 * slot6
			else
				slot0._priceTxt.text = slot5
			end

			slot1._opriceTxt.text = slot5

			setActive(go(slot1._opriceTxt), slot7 and slot6 < 1)

			for slot11, slot12 in pairs(slot0._tagTFs) do
				setActive(slot12, false)
			end

			slot8 = slot1.buyCount == 0

			if slot1:getConfig("genre") == ShopArgs.SkinShopTimeLimit then
				setActive(slot0._tagTFs[9], true)
			elseif slot8 then
				if slot0.goodsVO:getConfig("tag") == 5 then
					setText(slot0._tagTFs[5], slot1:getConfig("discount") .. "%OFF")
				elseif slot0._tagTFs[slot10] then
					setActive(slot0._tagTFs[slot10], true)
				else
					setActive(slot0._tagTFs[6], true)
				end
			else
				setActive(slot0._tagTFs[7], true)
			end
		end,
		updateSelected = function (slot0, slot1)
			slot0._content.localPosition = Vector3(0, (slot1 and -26) or -126, 0)

			setActive(slot0._priceTF, slot1)
			setActive(slot0._mask, not slot1)
		end
	})["_priceTF"], false)

	return 
end

function slot0.getUIName(slot0)
	return "SkinShopUI"
end

function slot0.setSkins(slot0, slot1)
	slot0.skinList = slot1

	slot0:filterSkins()
end

function slot0.setPlayer(slot0, slot1)
	slot0.playerVO = slot1
	slot0.skinTicket = slot0.playerVO:getResource(125)

	slot0._resPanel:setResources(slot1)
end

function slot0.filterSkins(slot0)
	slot0.skinGoodsVOs = {}

	function slot1(slot0)
		slot0:updateBuyCount((getProxy(ShipSkinProxy):getSkinById(slot0:getSkinId()) and not slot2:isExpireType() and 1) or 0)
	end

	for slot5, slot6 in ipairs(pg.shop_template.all) do
		slot7 = true

		if pg.shop_template[slot6].isHX ~= 1 and (pg.shop_template[slot6].genre == ShopArgs.SkinShop or slot8 == ShopArgs.SkinShopTimeLimit) then
			slot1(slot9)

			slot10, slot11 = pg.TimeMgr.GetInstance():inTime(pg.shop_template[slot6].time)

			if slot10 then
				table.insert(slot0.skinGoodsVOs, slot9)
			end
		end
	end

	slot2 = getProxy(ActivityProxy)

	for slot6, slot7 in ipairs(pg.activity_shop_template.all) do
		if pg.activity_shop_template[slot7].commodity_type == DROP_TYPE_SKIN and slot2:getActivityById(slot8.activity) and not slot9:isEnd() then
			slot1(slot10)
			table.insert(slot0.skinGoodsVOs, Goods.New({
				shop_id = slot7
			}, Goods.TYPE_ACTIVITY))
		end
	end

	for slot6, slot7 in ipairs(pg.activity_shop_extra.all) do
		if pg.activity_shop_extra[slot7].commodity_type == DROP_TYPE_SKIN then
			slot9 = slot2:getActivityById(slot8.activity)

			if (slot8.activity == 0 and pg.TimeMgr.GetInstance():inTime(slot8.time)) or (slot9 and not slot9:isEnd()) then
				slot1(slot10)
				table.insert(slot0.skinGoodsVOs, Goods.New({
					shop_id = slot7
				}, Goods.TYPE_ACTIVITY_EXTRA))
			end
		end
	end

	slot0:updateShipRect()
end

function slot0.init(slot0)
	slot0.bottomTF = slot0:findTF("bottom")
	slot0.topTF = slot0:findTF("blur_panel/adapt/top")
	slot0.leftPanel = slot0:findTF("noadapt/left_panel")
	slot0.title = slot0:findTF("title", slot0.topTF)
	slot0.titleEn = slot0:findTF("title_en", slot0.topTF)
	slot0.mainPanel = slot0:findTF("noadapt/main_panel")
	slot0.namePanel = slot0:findTF("name_bg", slot0.mainPanel)
	slot0.nameTxt = slot0:findTF("name_bg/name", slot0.mainPanel):GetComponent(typeof(Text))
	slot0.skinNameTxt = slot0:findTF("name_bg/skin_name", slot0.mainPanel):GetComponent(typeof(Text))
	slot0.charParent = slot0:findTF("char/char", slot0.mainPanel)
	slot0.paintingTF = slot0:findTF("paint", slot0.mainPanel)
	slot0.charBg = slot0:findTF("char/char_info", slot0.mainPanel)
	slot0.tags = slot0:findTF("char/char_info/tags", slot0.mainPanel)
	slot0.limitTxt = slot0:findTF("name_bg/limit_time/Text", slot0.mainPanel):GetComponent(typeof(Text))
	slot0.commonPanel = slot0:findTF("char/common", slot0.mainPanel)
	slot0.buyBtn = slot0:findTF("buy_btn", slot0.commonPanel)
	slot0.activityBtn = slot0:findTF("activty_btn", slot0.commonPanel)
	slot0.gotBtn = slot0:findTF("got_btn", slot0.commonPanel)
	slot0.priceTxt = slot0:findTF("consume/Text", slot0.commonPanel):GetComponent(typeof(Text))
	slot0.originalPriceTxt = slot0:findTF("consume/originalprice/Text", slot0.commonPanel):GetComponent(typeof(Text))
	slot0.timelimtPanel = slot0:findTF("char/timelimt", slot0.mainPanel)
	slot0.timelimitBtn = slot0:findTF("timelimit_btn", slot0.timelimtPanel)
	slot0.timelimitPriceTxt = slot0:findTF("consume/Text", slot0.timelimtPanel):GetComponent(typeof(Text))
	slot0.bg1 = slot0:findTF("bg/bg_1")
	slot0.bg2 = slot0:findTF("bg/bg_2")
	slot0.bgType = false
	slot0.defaultBg = slot0.bg1:GetComponent(typeof(Image)).sprite
	slot0.blurPanel = slot0:findTF("blur_panel")
	slot0._playerResOb = slot0:findTF("blur_panel/adapt/top/playerRes")
	slot0._resPanel = PlayerResource.New()

	tf(slot0._resPanel._go):SetParent(tf(slot0._playerResOb), false)
	setActive(slot0.mainPanel, false)

	Input.multiTouchEnabled = false
	slot0.viewMode = slot0.contextData.type or slot0.SHOP_TYPE_COMMON
end

function slot0.didEnter(slot0)
	setActive(slot0.mainPanel, true)
	slot0:initShips()
	slot0:initSkinPage()
	onButton(slot0, slot0.topTF:Find("back_btn"), function ()
		slot0:emit(slot1.ON_BACK)
	end, SFX_CANCEL)
	onButton(slot0, slot0.bottomTF:Find("bg/right_arr"), function ()
		slot0:onNext()
	end, SFX_PANEL)
	onButton(slot0, slot0.bottomTF:Find("bg/left_arr"), function ()
		slot0:onPrev()
	end, SFX_PANEL)
end

function slot0.initSkinPage(slot0)
	slot0.countByIds = {}

	for slot4, slot5 in ipairs(slot0.all) do
		slot0.countByIds[slot5] = 0
	end

	for slot4, slot5 in ipairs(slot0.skinGoodsVOs) do
		slot0.countByIds[(slot1[slot5:getSkinId()].shop_type_id == 0 and 9999) or slot7] = slot0.countByIds[(slot1[slot5.getSkinId()].shop_type_id == 0 and 9999) or slot7] + 1
	end

	slot1 = slot0:findTF("toggles/mask/content", slot0.leftPanel)
	slot2 = {}

	for slot6, slot7 in ipairs(slot0.all) do
		if slot0.countByIds[slot7] > 0 then
			table.insert(slot2, slot7)
		end
	end

	if slot0.viewMode == slot2.SHOP_TYPE_TIMELIMIT then
		table.insert(slot2, 1, slot2.PAGE_TIME_LIMIT)
	end

	table.insert(slot2, 1, slot2.PAGE_ALL)

	function slot3(slot0)
		slot0.contextData.pageId = slot0
		slot0.isSwitch = true

		slot0:updateShipRect()
		triggerToggle(slot0.skinPageToggles[slot0], true)
	end

	slot4 = {}
	slot5 = math.floor(#slot2 / 2)

	function slot6(slot0)
		if slot0 > 0 then
			slot1 = table.remove(slot0, 1)

			slot1:SetAsLastSibling()
			table.insert(slot0, slot1)
		else
			slot1 = table.remove(slot0, #slot0)

			slot1:SetAsFirstSibling()
			table.insert(slot0, 1, slot1)
		end

		triggerToggle(slot0[slot1]:Find("toggle"), true)
	end

	function slot7()
		slot0[go](tonumber(go(slot0[go]).name))
	end

	slot8 = slot1.parent:Find("0")
	slot0.skinPageToggles = {}

	for slot12, slot13 in ipairs(slot2) do
		slot14 = cloneTplTo(slot8, slot1, slot13)

		setActive(slot14, true)

		slot0.skinPageToggles[slot13] = slot14:Find("toggle")

		onButton(slot0, slot14, function ()
			for slot4, slot5 in ipairs(slot0) do
				if tonumber(go(slot5).name) == slot1 then
					slot0 = slot4

					break
				end
			end

			for slot5 = 1, math.abs(slot1), 1 do
				slot3(slot1)
			end

			slot4()
		end, SFX_PANEL)
		slot0:UpdateTagStyle(slot14, slot0, slot13)
	end

	eachChild(slot1, function (slot0)
		if slot0.gameObject.activeSelf then
			table.insert(slot0, 1, slot0)
		end
	end)
	slot0:addVerticalDrag(slot0.leftPanel, slot6, slot7)
	slot0:UpdateViewMode(slot1)
end

function slot0.UpdateViewMode(slot0, slot1)
	slot2, slot3 = nil

	if slot0.viewMode == slot0.SHOP_TYPE_TIMELIMIT then
		slot2 = slot0.PAGE_TIME_LIMIT
		slot3 = Vector3(35.8, 605.6, 0)
		posPaint = Vector3(-250, -88.3, 0)
	elseif slot0.viewMode == slot0.SHOP_TYPE_COMMON then
		slot2 = slot0.PAGE_ALL
		slot3 = Vector3(217.41, 605.6, 0)
		posPaint = Vector3(-100, -88.3, 0)
	end

	setActive(slot0.leftPanel, slot0.viewMode == slot0.SHOP_TYPE_COMMON)
	triggerButton(slot1:Find(slot2), true)
	setAnchoredPosition(slot0.namePanel, slot3)
	setAnchoredPosition(slot0.paintingTF, posPaint)
	setImageSprite(slot0.title, GetSpriteFromAtlas("ui/SkinShopUI_atlas", slot1[slot0.viewMode][1]), true)
	setImageSprite(slot0.titleEn, GetSpriteFromAtlas("ui/SkinShopUI_atlas", slot1[slot0.viewMode][2]), true)
end

function slot0.UpdateTagStyle(slot0, slot1, slot2, slot3)
	if slot2[slot3] then
		setImageSprite(slot1:Find("name"), GetSpriteFromAtlas("ui/SkinShopUI_atlas", "text_" .. slot2[slot3].res .. "01"), true)
		setImageSprite(slot1:Find("selected/Image"), GetSpriteFromAtlas("ui/SkinShopUI_atlas", "text_" .. slot2[slot3].res), true)
		setText(slot1:Find("eng"), string.upper(slot2[slot3].english_name or ""))
	elseif slot3 == slot0.PAGE_ALL then
		setImageSprite(slot1:Find("name"), GetSpriteFromAtlas("ui/SkinShopUI_atlas", "view_all01"), true)
		setImageSprite(slot1:Find("selected/Image"), GetSpriteFromAtlas("ui/SkinShopUI_atlas", "view_all02"), true)
		setText(slot1:Find("eng"), "ALL")
	end
end

function slot0.updateMainView(slot0, slot1)
	slot0.nameTxt.text = HXSet.hxLan(ShipGroup.getDefaultShipConfig(slot1.shipSkinConfig.ship_group).name)
	slot0.skinNameTxt.text = HXSet.hxLan(slot1.shipSkinConfig.name)

	if slot0.prefabName ~= slot1.shipSkinConfig.prefab then
		slot0:loadChar(slot4)

		slot0.prefabName = slot4
	end

	slot5 = slot2.painting

	if slot0.painting ~= ((slot2.painting_hx ~= "" and slot2.painting_hx) or slot2.painting) then
		slot0:loadPainting(slot5)

		slot0.painting = slot5
	end

	slot6 = false

	eachChild(slot0.tags, function (slot0)
		if table.contains(slot0.tag, tonumber(go(slot0).name)) then
			slot1 = true
		end

		setActive(slot0, slot2)
	end)

	slot7 = Ship.New({
		configId = slot3.id,
		skin_id = slot2.id
	})

	if slot7:getShipBgPrint() ~= slot7:rarity2bgPrintForGet() then
		GetSpriteFromAtlasAsync("bg/star_level_bg_" .. slot8, "", function (slot0)
			if not slot0.exited then
				setImageSprite(slot0:GetCurBgTransform(), slot0)
				slot0:AnimBg()
			end
		end)
	else
		setImageSprite(slot0:GetCurBgTransform(), slot0.defaultBg)
		slot0:AnimBg()
	end

	slot0:updatePrice(slot1)
	slot0:removeShopTimer()
	slot0:addShopTimer(slot1)
	slot0:updateBuyBtn(slot1)
end

function slot0.GetCurBgTransform(slot0)
	slot1 = nil
	slot0.bgType = not slot0.bgType

	return (slot0.bgType or slot0.bg2) and slot0.bg1
end

function slot0.AnimBg(slot0)
	slot1, slot2 = nil

	if slot0.bgType then
		slot1 = slot0.bg2
		slot2 = slot0.bg1
	else
		slot1 = slot0.bg1
		slot2 = slot0.bg2
	end

	slot1:SetAsLastSibling()
	LeanTween.alpha(slot1, 1, 0.8):setFrom(0):setOnComplete(System.Action(function ()
		setImageAlpha(setImageAlpha, 1)
		setImageAlpha(setImageAlpha, 0)
	end))
end

function slot0.onBuyDone(slot0)
	slot1 = false
	slot2 = pairs
	slot3 = slot0.cards or {}

	for slot5, slot6 in slot2(slot3) do
		if slot0.contextData.key and slot6.goodsVO:getKey() == slot0.contextData.key then
			slot0:updateMainView(slot6)

			slot1 = true
		end
	end

	if slot0.contextData.currCard and not slot1 then
		slot0.contextData.currCard:update(slot2)
		slot0:updateMainView(slot0.contextData.currCard)

		slot0.contextData.currCard = nil
	end
end

function slot0.updateBuyBtn(slot0, slot1)
	if slot1.goodsVO:getConfig("genre") == ShopArgs.SkinShopTimeLimit then
		onButton(slot0, slot0.timelimitBtn, function ()
			if getProxy(ShipSkinProxy):getSkinById(slot0.goodsVO:getSkinId()) and not slot1:isExpireType() then
				pg.TipsMgr:GetInstance():ShowTips(i18n("already_have_the_skin"))

				return
			end

			slot1:showTimeLimitSkinWindow(slot0)
		end, SFX_PANEL)
	else
		slot3 = slot1.shipSkinConfig

		setActive(slot0.buyBtn, not (slot1.goodsVO.type == Goods.TYPE_ACTIVITY or slot4 == Goods.TYPE_ACTIVITY_EXTRA) and slot1.goodsVO.buyCount == 0)
		setActive(slot0.gotBtn, not (slot1.goodsVO.type == Goods.TYPE_ACTIVITY or slot4 == Goods.TYPE_ACTIVITY_EXTRA) and not (slot1.goodsVO.buyCount == 0))
		setActive(slot0.activityBtn, slot1.goodsVO.type == Goods.TYPE_ACTIVITY or slot4 == Goods.TYPE_ACTIVITY_EXTRA)
		onButton(slot0, slot0.buyBtn, function ()
			if slot0.goodsVO.type == Goods.TYPE_SKIN then
				slot1 = (100 - slot0:getConfig("discount")) / 100
				slot2 = slot0:getConfig("resource_num")

				if slot0:isDisCount() then
					slot2 = slot1 * slot2
				end

				pg.MsgboxMgr:GetInstance():ShowMsgBox({
					content = i18n("charge_scene_buy_confirm", slot2, HXSet.hxLan(slot1.name)),
					onYes = function ()
						slot0:emit(SkinShopMediator.ON_SHOPPING, slot1.id, 1)
					end
				})
			end
		end, SFX_PANEL)
		onButton(slot0, slot0.activityBtn, function ()
			slot1 = slot0.goodsVO.getConfig(slot0, "time")
			slot3 = getProxy(ActivityProxy):getActivityById(slot0.goodsVO.getConfig(slot0, "activity"))

			if (slot0.goodsVO.getConfig(slot0, "activity") == 0 and pg.TimeMgr.GetInstance():inTime(slot1)) or (slot3 and not slot3:isEnd()) then
				if slot0.type == Goods.TYPE_ACTIVITY then
					slot1:emit(SkinShopMediator.GO_SHOPS_LAYER)
				elseif slot0.type == Goods.TYPE_ACTIVITY_EXTRA then
					if slot0:getConfig("scene") and #slot4 > 0 then
						slot1:emit(SkinShopMediator.OPEN_SCENE, slot4)
					else
						slot1:emit(SkinShopMediator.OPEN_ACTIVITY, slot2)
					end
				end
			else
				pg.TipsMgr:GetInstance():ShowTips(i18n("common_activity_not_start"))
			end
		end, SFX_PANEL)
	end
end

function slot0.showTimeLimitSkinWindow(slot0, slot1)
	slot17, slot18, slot8, slot9 = pg.TimeMgr.GetInstance():parseTimeFrom(slot3)

	pg.MsgboxMgr:GetInstance():ShowMsgBox({
		content = i18n("exchange_limit_skin_tip", slot1.goodsVO:getConfig("resource_num"), pg.ship_skin_template[slot1.goodsVO:getSkinId()].name, slot6, slot7),
		onYes = function ()
			if slot0.skinTicket < slot1 then
				pg.TipsMgr:GetInstance():ShowTips(i18n("common_no_item_1"))

				return
			end

			slot0:emit(SkinShopMediator.ON_SHOPPING, slot2.goodsVO.id, 1)
		end
	})
end

function slot0.addShopTimer(slot0, slot1)
	slot3 = slot1.goodsVO.getSkinId(slot2)

	if slot0.skinTimer then
		slot0.skinTimer:Stop()
	end

	setActive(tf(go(slot0.limitTxt)).parent, false)

	if slot2:getConfig("genre") == ShopArgs.SkinShopTimeLimit then
		setActive(tf(go(slot0.limitTxt)).parent, getProxy(ShipSkinProxy):getSkinById(slot3) and slot4:isExpireType() and not slot4:isExpired())

		if getProxy(ShipSkinProxy).getSkinById(slot3) and slot4.isExpireType() and not slot4.isExpired() then
			slot0.skinTimer = Timer.New(function ()
				slot0.getRemainTime.limitTxt.text = skinTimeStamp(slot0:getRemainTime())
			end, 1, -1)

			slot0.skinTimer:Start()
			slot0.skinTimer.func()
		end

		return
	end

	slot4, slot5 = pg.TimeMgr.GetInstance():inTime(slot2:getConfig("time"))

	if not slot5 then
		setActive(tf(go(slot0.limitTxt)).parent, false)

		return
	end

	slot6 = pg.TimeMgr:GetInstance()
	slot7 = os.time(slot5)
	slot0.shopTimer = Timer.New(function ()
		if slot0:LaterThan(os.server_date("*t", slot0), ) then
			slot2:removeShopTimer()
		end

		if slot3 - slot0 < 0 then
			slot2 = 0
		end

		if math.floor(slot2 / 86400) > 0 then
			slot2.limitTxt.text = i18n("time_remaining_tip") .. slot3 .. i18n("word_date")
		elseif math.floor(slot2 / 3600) > 0 then
			slot2.limitTxt.text = i18n("time_remaining_tip") .. slot4 .. i18n("word_hour")
		elseif math.floor(slot2 / 60) > 0 then
			slot2.limitTxt.text = i18n("time_remaining_tip") .. slot5 .. i18n("word_minute")
		else
			slot2.limitTxt.text = i18n("time_remaining_tip") .. slot2 .. i18n("word_second")
		end
	end, 1, -1)

	slot0.shopTimer:Start()
end

function slot0.removeShopTimer(slot0)
	if slot0.shopTimer then
		slot0.shopTimer:Stop()

		slot0.shopTimer = nil
	end
end

function slot0.updatePrice(slot0, slot1)
	slot2 = slot1.shipSkinConfig

	setActive(slot0.commonPanel, not (slot1.goodsVO.getConfig(slot3, "genre") == ShopArgs.SkinShopTimeLimit))
	setActive(slot0.timelimtPanel, slot1.goodsVO.getConfig(slot3, "genre") == ShopArgs.SkinShopTimeLimit)

	if slot4 then
		slot0.timelimitPriceTxt.text = slot0.skinTicket
	else
		slot5 = (100 - slot3:getConfig("discount")) / 100
		slot6 = slot3:getConfig("resource_num")

		if slot3:isDisCount() then
			slot0.priceTxt.text = slot6 * slot5
		else
			slot0.priceTxt.text = slot6
		end

		slot0.originalPriceTxt.text = slot6

		setActive(tf(go(slot0.originalPriceTxt)).parent, slot3:isDisCount())
	end
end

function slot0.loadPainting(slot0, slot1)
	slot0:recyclePainting()
	setPaintingPrefab(slot0.paintingTF, slot1, "chuanwu")
end

function slot0.recyclePainting(slot0)
	if slot0.painting then
		retPaintingPrefab(slot0.paintingTF, slot0.painting)
	end
end

function slot0.loadChar(slot0, slot1)
	slot0:recycleChar()
	pg.UIMgr:GetInstance():LoadingOn()
	PoolMgr.GetInstance():GetSpineChar(slot1, true, function (slot0)
		pg.UIMgr:GetInstance():LoadingOff()

		slot0.modelTf = tf(slot0)
		slot0.modelTf.localScale = Vector3(0.9, 0.9, 1)
		slot0.modelTf.localPosition = Vector3(0, 0, 0)

		pg.ViewUtils.SetLayer(slot0.modelTf, Layer.UI)
		setParent(slot0.modelTf, slot0.charParent)
		slot0:GetComponent("SpineAnimUI"):SetAction("normal", 0)
	end)
end

function slot0.recycleChar(slot0)
	if not IsNil(slot0.modelTf) then
		slot0.modelTf.gameObject:GetComponent("SpineAnimUI").SetActionCallBack(slot1, nil)
		PoolMgr.GetInstance():ReturnSpineChar(slot0.prefabName, slot0.modelTf.gameObject)
	end

	if slot0.timer then
		slot0.timer:Stop()

		slot0.timer = nil
	end
end

function slot0.initShips(slot0)
	slot0.cards = {}
	slot0.shipRect = slot0.bottomTF:Find("scroll"):GetComponent("LScrollRect")

	function slot0.shipRect.onInitItem(slot0)
		slot1 = slot0(slot0)
		slot1.cards[slot0] = slot1

		onButton(slot1, slot1._tf, function ()
			if slot0.contextData.key == slot1.goodsVO:getKey() then
				return
			end

			if slot0.contextData.key then
				for slot3, slot4 in pairs(slot0.cards) do
					if slot4.goodsVO:getKey() == slot0.contextData.key then
						slot4:updateSelected(false)
					end
				end
			end

			slot1:updateSelected(true)

			slot1.updateSelected.contextData.key = slot1.goodsVO:getKey()
			slot1.updateSelected.contextData.card = slot1.goodsVO.getKey()

			slot1.updateSelected.contextData:updateMainView(slot1.updateSelected.contextData)
		end, SFX_PANEL)
	end

	function slot0.shipRect.onUpdateItem(slot0, slot1)
		if not slot0.cards[slot1] then
			slot0.cards[slot1] = slot1(slot1)
		end

		slot2:update(slot3)
		slot2:updateSelected(slot0.contextData.key == slot2.goodsVO:getKey())
	end

	function slot0.shipRect.onItemsUpdated()
		for slot4, slot5 in pairs(slot0.cards) do
			if slot0.isSwitch and slot0 and slot5.goodsVO.id == slot0.id then
				slot0.isSwitch = nil

				triggerButton(slot5._tf)
			end
		end

		setActive(slot0.mainPanel, slot0)
	end
end

function slot0.onNext(slot0)
	if slot0.index == #slot0.displays then
		return
	end

	slot1 = nil

	for slot5, slot6 in ipairs(slot0.displays) do
		if slot6:getKey() == slot0.contextData.key then
			slot1 = slot5

			break
		end
	end

	if slot1 then
		slot0.index = math.min(slot1 + 1, #slot0.displays)
		slot3 = slot0.displays[math.min(slot1 + 1, #slot0.displays)]

		for slot7, slot8 in pairs(slot0.cards) do
			if slot8.goodsVO:getKey() == slot3:getKey() then
				triggerButton(slot8._tf)

				break
			end
		end

		if slot4() then
			slot0.shipRect:ScrollTo(slot0.shipRect:HeadIndexToValue(slot2 - 1))
		end
	end
end

function slot0.onPrev(slot0)
	if slot0.index == 1 then
		return
	end

	slot1 = nil

	for slot5, slot6 in ipairs(slot0.displays) do
		if slot6:getKey() == slot0.contextData.key then
			slot1 = slot5

			break
		end
	end

	if slot1 then
		slot0.index = math.max(slot1 - 1, 1)
		slot3 = slot0.displays[math.max(slot1 - 1, 1)]

		for slot7, slot8 in pairs(slot0.cards) do
			if slot8.goodsVO:getKey() == slot3:getKey() then
				triggerButton(slot8._tf)

				break
			end
		end

		if slot4() then
			slot0.shipRect:ScrollTo(slot0.shipRect:HeadIndexToValue(slot2 - 1))
		end
	end
end

function slot0.updateShipRect(slot0)
	slot0.card = nil

	if slot0.contextData.pageId and slot0.shipRect then
		slot0.displays = {}

		for slot4, slot5 in ipairs(slot0.skinGoodsVOs) do
			slot8 = (slot0[slot5:getSkinId()].shop_type_id == 0 and 9999) or slot7
			slot9 = slot5:getConfig("genre") == ShopArgs.SkinShopTimeLimit

			if (slot0.contextData.pageId == slot1.PAGE_TIME_LIMIT and slot9) or (not slot9 and (slot0.contextData.pageId == slot1.PAGE_ALL or slot8 == slot0.contextData.pageId)) then
				table.insert(slot0.displays, slot5)
			end
		end

		table.sort(slot0.displays, function (slot0, slot1)
			if ((slot0.buyCount == 0 and 1) or 0) == ((slot1.buyCount == 0 and 1) or 0) then
				if slot0:getConfig("order") == slot1:getConfig("order") then
					return slot0.id < slot1.id
				else
					return slot4 < slot5
				end
			else
				return slot3 < slot2
			end
		end)
		slot0.shipRect:SetTotalCount(#slot0.displays)
	end
end

function slot0.addVerticalDrag(slot0, slot1, slot2, slot3)
	slot4 = GetOrAddComponent(slot1, "EventTriggerListener")
	slot5 = 90
	slot6 = nil
	slot7 = 0
	slot8 = 0

	slot4:AddBeginDragFunc(function (slot0, slot1)
		slot0 = 0
		prev = 0.position.y

		if onBegin then
			onBegin()
		end
	end)
	slot4:AddDragFunc(function (slot0, slot1)
		if slot1.position.y < prev and slot0 ~= 0 then
			slot1 = slot1.position
			slot0 = 0
		elseif prev < slot1.position.y and slot2 ~= 0 then
			slot1 = slot1.position
			slot2 = 0
		end

		slot3 = math.abs(math.floor((slot1.position.y - slot1.y) / slot3))

		if math.floor and slot2 < slot3 then
			slot4(slot3)
		end

		if slot4 and slot3 < slot0 then
			slot0 = slot3

			slot4(slot2)
		end

		prev = slot1.y
	end)
	slot4:AddDragEndFunc(function (slot0, slot1)
		if slot0 then
			slot0()
		end
	end)
end

function slot0.onBackPressed(slot0)
	slot0:emit(slot0.ON_BACK, nil)
end

function slot0.willExit(slot0)
	slot0:recycleChar()
	slot0:recyclePainting()
	slot0:removeShopTimer()
	LeanTween.cancel(go(slot0.bg1))
	LeanTween.cancel(go(slot0.bg2))

	Input.multiTouchEnabled = true

	if slot0.skinTimer then
		slot0.skinTimer:Stop()
	end

	slot0.skinTimer = nil
	slot0.contextData.key = nil
end

return slot0
