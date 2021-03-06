slot0 = class("CommanderBoxesPanel")

function slot0.Ctor(slot0, slot1, slot2, slot3)
	pg.DelegateInfo.New(slot0)

	slot0._parent = slot1
	slot0._tf = slot2
	slot0._go = go(slot2)
	slot0.closeBtn = slot0._tf:Find("frame/close_btn")
	slot0.boxesList = UIItemList.New(slot0._tf:Find("frame/boxes/mask/content"), slot0._tf:Find("frame/boxes/mask/content/frame"))

	slot0:init()

	slot0.boxCards = {}
	slot0.pools = slot3
	slot0.buildPoolPanel = slot0._tf:Find("buildpool_panel")
	slot0.buildPoolList = UIItemList.New(slot0.buildPoolPanel:Find("frame/bg/content/list"), slot0.buildPoolPanel:Find("frame/bg/content/list/1"))

	setActive(slot0.buildPoolPanel, false)

	slot0.mask = slot0._tf:Find("mask")

	setActive(slot0.mask, false)
end

function slot0.init(slot0)
	onButton(slot0, slot0.closeBtn, function ()
		slot0:hide()
	end, SFX_PANEL)
end

function slot0.update(slot0, slot1)
	slot0.boxes = slot1

	slot0.boxesList:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			if not slot0.boxCards[slot0.boxes[slot1 + 1].id] then
				slot0.boxCards[slot3.id] = CommanderBoxCard.New(slot0, slot2)
			end

			slot0.boxCards[slot3.id]:update(slot3)
		end
	end)
	slot0.boxesList:align(#slot0.boxes)
end

function slot0.show(slot0)
	slot0.activation = true

	setActive(slot0._go, true)
end

function slot0.hide(slot0)
	slot0.activation = false

	setActive(slot0._go, false)
end

function slot0.isShow(slot0)
	return slot0.activation
end

function slot0.showBuildPoolPanel(slot0, slot1)
	setActive(slot0.buildPoolPanel, true)

	if not slot0.isInitBuildPoolPanel then
		slot0.isInitBuildPoolPanel = true

		onButton(slot0, slot0.buildPoolPanel, function ()
			slot0:hideBuildPoolPanel()
		end, SFX_PANEL)
		onButton(slot0, slot0.buildPoolPanel:Find("frame/bg/close_btn"), function ()
			slot0:hideBuildPoolPanel()
		end, SFX_PANEL)
		onButton(slot0, slot0.buildPoolPanel:Find("frame/bg/cancel_btn"), function ()
			slot0:hideBuildPoolPanel()
		end, SFX_PANEL)
	end

	slot3 = 0

	table.sort(slot2, function (slot0, slot1)
		return slot0.id < slot1.id
	end)
	slot0.buildPoolList:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			onToggle(slot1, slot2, function (slot0)
				slot0 = slot0 and slot1
			end, SFX_PANEL)
			setText(slot2:Find("name"), slot0[slot1 + 1].getName(slot3))
			setText(slot2:Find("Text"), "X" .. slot0[slot1 + 1]:getItemCount())

			if slot1 == 0 then
				triggerToggle(slot2, true)
			end
		end
	end)
	slot0.buildPoolList:align(#slot0.pools)
	onButton(slot0, slot0.buildPoolPanel:Find("frame/bg/confirm_btn"), function ()
		if not slot0 or slot0 == 0 then
			return
		end

		slot1._parent:openMsgBox({
			content = slot0:getConsumeDesc(),
			onYes = function ()
				if slot0 then
					slot0(slot1)
				end

				slot2:hideBuildPoolPanel()
			end
		})
	end, SFX_PANEL)
end

function slot0.hideBuildPoolPanel(slot0)
	setActive(slot0.buildPoolPanel, false)
end

function slot0.playFinshedAnim(slot0, slot1, slot2)
	if slot0.boxCards[slot1] then
		slot3:playAnim(slot2)
	else
		slot2()
	end
end

function slot0.clear(slot0)
	pg.DelegateInfo.Dispose(slot0)
	slot0:hideBuildPoolPanel()

	for slot4, slot5 in ipairs(slot0.boxCards) do
		slot5:clear()
	end
end

return slot0
