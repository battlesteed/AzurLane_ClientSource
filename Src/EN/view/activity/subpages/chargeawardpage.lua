slot0 = class("ChargeAwardPage", import("...base.BaseActivityPage"))

function slot0.OnInit(slot0)
	slot0.bg = slot0:findTF("bg")
	slot0.charge = slot0:findTF("charge")
	slot0.take = slot0:findTF("take")
	slot0.finish = slot0:findTF("finish")
end

function slot0.OnDataSetting(slot0)
	return
end

function slot0.OnFirstFlush(slot0)
	LoadImageSpriteAsync(slot0:GetBgImg(), slot0.bg)
	onButton(slot0, slot0.charge, function ()
		slot0:emit(ActivityMediator.EVENT_GO_SCENE, SCENE.CHARGE, {
			wrap = ChargeScene.TYPE_DIAMOND
		})
	end)
	onButton(slot0, slot0.take, function ()
		slot0:emit(ActivityMediator.EVENT_OPERATION, {
			cmd = 1,
			activity_id = slot0.activity.id
		})
	end)
end

function slot0.OnUpdateFlush(slot0)
	setActive(slot0.charge, slot0.activity.data2 == 0 and slot0.activity.data1 == 0)
	setButtonEnabled(slot0.take, slot0.activity.data2 == 0)
	setActive(slot0.take, slot0.activity.data1 > 0)
	setActive(slot0.finish, slot0.activity.data2 == 1)
end

function slot0.OnDestroy(slot0)
	clearImageSprite(slot0.bg)
end

return slot0
