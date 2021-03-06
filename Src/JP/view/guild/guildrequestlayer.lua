slot0 = class("GuildRequestLayer", import("..base.BaseUI"))

function slot0.getUIName(slot0)
	return "GuildRequestUI"
end

function slot0.setRequest(slot0, slot1)
	slot0.requestVOs = slot1
end

function slot0.init(slot0)
	slot0.viewRect = slot0:findTF("request_panel/view")
end

function slot0.didEnter(slot0)
	return
end

function slot0.initRequests(slot0)
	slot0.isInit = true
	slot0.scrollRect = slot0.viewRect:GetComponent("LScrollRect")

	function slot0.scrollRect.onInitItem(slot0)
		slot0:onInitItem(slot0)
	end

	function slot0.scrollRect.onUpdateItem(slot0, slot1)
		slot0:onUpdateItem(slot0, slot1)
	end

	slot0.requestCards = {}

	slot0:sortRequest()
end

function slot0.createRequestCard(slot0, slot1)
	return {
		go = slot1,
		tf = tf(slot1),
		nameTF = ()["tf"]:Find("frame/request_info/name"):GetComponent(typeof(Text)),
		levelTF = ()["tf"]:Find("frame/request_info/level"):GetComponent(typeof(Text)),
		dateTF = ()["tf"]:Find("frame/request_info/date"):GetComponent(typeof(Text)),
		msg = ()["tf"]:Find("frame/request_content/Text"):GetComponent(typeof(Text)),
		iconTF = ()["tf"]:Find("frame/shipicon/icon"):GetComponent(typeof(Image)),
		starsTF = ()["tf"]:Find("frame/shipicon/stars"),
		frameCommon = ()["tf"]:Find("frame/shipicon/frame_common"),
		frameMarry = ()["tf"]:Find("frame/shipicon/frame_marry"),
		starTF = ()["tf"]:Find("frame/shipicon/stars/star"),
		rejectBtn = ()["tf"]:Find("frame/refuse_btn"),
		accpetBtn = ()["tf"]:Find("frame/accpet_btn"),
		update = function (slot0, slot1)
			slot0.requestVO = slot1
			slot0.nameTF.text = slot1.player.name
			slot0.levelTF.text = "Lv." .. slot1.player.level
			slot0.dateTF.text = getOfflineTimeStamp(slot1.timestamp)
			slot0.msg.text = slot1.content

			setActive(slot0.frameCommon, not slot1.player.propose)
			setActive(slot0.frameMarry, slot1.player.propose)

			if pg.ship_data_statistics[slot1.player.icon] then
				LoadSpriteAsync("qicon/" .. slot4, function (slot0)
					slot0.iconTF.sprite = slot0
				end)

				for slot9 = slot0.starsTF.childCount, slot3.star - 1, 1 do
					cloneTplTo(slot0.starTF, slot0.starsTF)
				end

				for slot9 = 1, slot5, 1 do
					setActive(slot0.starsTF:GetChild(slot9 - 1), slot9 <= slot3.star)
				end
			end
		end
	}
end

function slot0.onInitItem(slot0, slot1)
	slot2 = slot0:createRequestCard(slot1)

	onButton(slot0, slot2.accpetBtn, function ()
		slot0:emit(GuildRequestMediator.ACCPET, slot1.requestVO.player.id)
	end, SFX_PANEL)
	onButton(slot0, slot2.rejectBtn, function ()
		slot0:emit(GuildRequestMediator.REJECT, slot1.requestVO.player.id)
	end, SFX_PANEL)

	slot0.requestCards[slot1] = slot2
end

function slot0.onUpdateItem(slot0, slot1, slot2)
	if not slot0.requestCards[slot2] then
		slot0:onInitItem(slot2)

		slot3 = slot0.requestCards[slot2]
	end

	slot3:update(slot0.requestVOs[slot1 + 1])
end

function slot0.sortRequest(slot0)
	table.sort(slot0.requestVOs, function (slot0, slot1)
		return slot0.timestamp < slot1.timestamp
	end)
	slot0.scrollRect:SetTotalCount(#slot0.requestVOs, 0)
end

function slot0.addRequest(slot0, slot1)
	table.insert(slot0.requestVOs, slot1)
	slot0:sortRequest()
end

function slot0.deleteRequest(slot0, slot1)
	for slot5, slot6 in ipairs(slot0.requestVOs) do
		if slot6.player.id == slot1 then
			table.remove(slot0.requestVOs, slot5)

			break
		end
	end

	slot0:sortRequest()
end

function slot0.onBackPressed(slot0)
	playSoundEffect(SFX_CANCEL)
	slot0:emit(slot0.ON_BACK)
end

function slot0.willExit(slot0)
	return
end

return slot0
