slot0 = class("CombatLoadMediator", import("..base.ContextMediator"))
slot0.FINISH = "CombatLoadMediator:FINISH"

function slot0.register(slot0)
	slot0:bind(slot0.FINISH, function (slot0, slot1)
		slot0.contextData.loadObs = slot1
		slot0.contextData.prePause = slot0._prePauseBattle

		slot0:sendNotification(GAME.GO_SCENE, SCENE.BATTLE, slot0.contextData)
	end)
end

function slot0.remove(slot0)
	return
end

function slot0.listNotificationInterests(slot0)
	return {
		GAME.PAUSE_BATTLE,
		GAME.STOP_BATTLE_LOADING
	}
end

function slot0.handleNotification(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == GAME.PAUSE_BATTLE then
		slot0._prePauseBattle = true
	elseif slot2 == GAME.STOP_BATTLE_LOADING then
		ys.Battle.BattleResourceManager:GetInstance():Clear()
	end
end

return slot0
