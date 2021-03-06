slot0 = class("SwichSkinLayer", import("..base.BaseUI"))

function slot0.setShip(slot0, slot1)
	slot0.shipVO = slot1
end

function slot0.setShipSkin(slot0, slot1)
	slot0.shipVO.skinId = slot1
end

function slot0.setSkinList(slot0, slot1)
	slot0.skinList = slot1
	slot0.skins = slot0:getGroupSkinList(slot0.shipVO.groupId)
	slot0.owns = slot0:getGroupOwnSkins(slot0.shipVO.groupId)
end

function slot0.getUIName(slot0)
	return "SwichSkinLayer"
end

function slot0.back(slot0)
	slot0:emit(slot0.ON_CLOSE)
end

function slot0.init(slot0)
	return
end

function slot0.didEnter(slot0)
	slot0:initSelectSkinPanel()

	if slot0.shipVO and #slot0.skins > 1 then
		slot0:openSelectSkinPanel()
	end
end

function slot0.initSelectSkinPanel(slot0)
	slot0.skinPanel = slot0._tf

	onButton(slot0, slot1, function ()
		slot0:back()
	end)
	onButton(slot0, slot2, function ()
		slot0:back()
	end)

	slot0.skinScroll = slot0:findTF("select_skin/style_scroll", slot0.skinPanel)
	slot0.skinContainer = slot0:findTF("view_port", slot0.skinScroll)
	slot0.skinCard = slot0._go:GetComponent(typeof(ItemList)).prefabItem[0]

	setActive(slot0.skinCard, false)

	slot0.skinCardMap = {}
end

function slot0.openSelectSkinPanel(slot0)
	for slot4 = slot0.skinContainer.childCount, #slot0.skins - 1, 1 do
		cloneTplTo(slot0.skinCard, slot0.skinContainer)
	end

	for slot4 = #slot0.skins, slot0.skinContainer.childCount - 1, 1 do
		setActive(slot0.skinContainer:GetChild(slot4), false)
	end

	slot1 = slot0.skinContainer.childCount

	for slot5, slot6 in ipairs(slot0.skins) do
		if not slot0.skinCardMap[slot0.skinContainer:GetChild(slot5 - 1)] then
			slot0.skinCardMap[slot7] = ShipSkinCard.New(slot7.gameObject)
		end

		slot8:updateData(slot0.shipVO, slot6, slot0.owns[slot6.id])
		slot8:updateSkin(slot6, slot9)
		slot8:updateUsing(slot0.shipVO.skinId == slot6.id)
		removeOnButton(slot7)

		slot13 = ((slot6.shop_id > 0 and pg.shop_template[slot6.shop_id]) or nil) and not pg.TimeMgr.GetInstance():inTime((slot6.shop_id > 0 and pg.shop_template[slot6.shop_id]) or nil.time)
		slot14 = slot6.id == slot0.shipVO.skinId
		slot15 = slot6.id == slot0.shipVO:getConfig("skin_id") or (((slot0.shipVO:proposeSkinOwned(slot6) or table.contains(slot0.skinList, slot6.id) or (slot0.shipVO:getRemouldSkinId() == slot6.id and slot0.shipVO:isRemoulded())) and 1) or 0) >= 1 or slot6.skin_type == 3

		onButton(slot0, slot7, function ()
			if slot0 then
				slot1:back()
			elseif slot2 then
				slot1:emit(SwichSkinMediator.CHANGE_SKIN, slot3, (slot3.id == slot1.shipVO:getConfig("skin_id") and 0) or slot3.id)
				slot1:back()
			elseif slot4 then
				if slot5 then
					pg.TipsMgr.GetInstance():ShowTips(i18n("common_skin_out_of_stock"))
				else
					slot0 = Goods.New({
						shop_id = slot4.id
					}, Goods.TYPE_SKIN)
					slot1 = slot0:getConfig("resource_num")

					if slot0:isDisCount() then
						slot1 = slot1 * (100 - slot0:getConfig("discount")) / 100
					end

					pg.MsgboxMgr.GetInstance():ShowMsgBox({
						content = i18n("text_buy_fashion_tip", slot1, HXSet.hxLan(slot3.name)),
						onYes = function ()
							slot0:emit(SwichSkinMediator.BUY_ITEM, slot1.id, 1)
						end
					})
				end
			end
		end)
		setActive(slot7, true)
	end
end

function slot0.isCurrentShipExistSkin(slot0, slot1)
	if slot1 then
		if #slot0.skins > 1 then
			return true
		elseif #slot0.skins == 1 then
			return false
		end
	end
end

function slot0.getGroupSkinList(slot0, slot1)
	for slot6 = #ShipGroup.getSkinList(slot1), 1, -1 do
		if slot2[slot6].skin_type == 3 then
			table.remove(slot2, slot6)
		end
	end

	if ShipGroup.GetGroupConfig(slot1).trans_skinz ~= 0 then
		slot4 = false

		if getProxy(CollectionProxy):getShipGroup(slot1) then
			for slot9, slot10 in ipairs(slot2) do
				if slot10.skin_type == Ship.SKIN_TYPE_REMAKE and slot5.trans then
					slot4 = true

					break
				end
			end
		end

		if not slot4 then
			for slot9 = #slot2, 1, -1 do
				if slot2[slot9].id == slot3 then
					table.remove(slot2, slot9)

					break
				end
			end
		end
	end

	return slot2
end

function slot0.getGroupOwnSkins(slot0, slot1)
	slot2 = {}
	slot3 = slot0.skinList

	if getProxy(CollectionProxy):getShipGroup(slot1) then
		for slot9, slot10 in ipairs(slot5) do
			if slot10.skin_type == Ship.SKIN_TYPE_DEFAULT or table.contains(slot3, slot10.id) or (slot10.skin_type == Ship.SKIN_TYPE_REMAKE and slot4.trans) or (slot10.skin_type == Ship.SKIN_TYPE_PROPOSE and slot4.married == 1) then
				slot2[slot10.id] = true
			end
		end
	end

	return slot2
end

function slot0.willExit(slot0)
	for slot4, slot5 in pairs(slot0.skinCardMap) do
		slot5:clear()
	end
end

return slot0
