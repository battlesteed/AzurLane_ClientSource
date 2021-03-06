slot0 = class("SettingsMediator", import("..base.ContextMediator"))
slot0.ON_LOGOUT = "SettingsMediaotr:ON_LOGOUT"
slot0.ON_VOTE = "SettingsMediator:ON_VOTE"

function slot0.register(slot0)
	slot0:bind(slot0.ON_LOGOUT, function (slot0)
		slot0:sendNotification(GAME.LOGOUT, {
			code = 0
		})
	end)

	slot2 = getProxy(PlayerProxy):getData()
end

function slot0.listNotificationInterests(slot0)
	return {
		PlayerProxy.UPDATED,
		GAME.EXCHANGECODE_USE_SUCCESS
	}
end

function slot0.handleNotification(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == GAME.EXCHANGECODE_USE_SUCCESS then
		slot0.viewComponent:clearExchangeCode()
	end
end

return slot0
