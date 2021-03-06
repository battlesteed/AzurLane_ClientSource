ys = ys or {}
slot1 = ys.Battle.BattleEvent
slot2 = ys.Battle.BattleFormulas
slot3 = ys.Battle.BattleConst
slot4 = ys.Battle.BattleConfig
slot5 = ys.Battle.BattleDataFunction
slot6 = ys.Battle.BattleAttr
slot7 = ys.Battle.BattleVariable
slot8 = singletonClass("BattleDataProxy", ys.MVC.Proxy)
ys.Battle.BattleDataProxy = slot8
slot8.__name = "BattleDataProxy"

function slot8.Ctor(slot0)
	slot0.super.Ctor(slot0)
end

function slot8.InitBattle(slot0, slot1)
	slot0:SetupCalculateDamage()
	slot0:SetupDamageKamikazeAir()
	slot0:SetupDamageKamikazeShip()
	slot0:SetupDamageCrush()
	slot0.Init()
	slot0:InitData(slot1)
	slot0:DispatchEvent(slot1.Event.New(slot2.STAGE_DATA_INIT_FINISH))
	slot0._cameraUtil:Initialize()
	slot0._cameraUtil:SetMapData(slot0:GetTotalBounds())
	slot0:InitUserShipsData(slot0._battleInitData.MainUnitList, slot0._battleInitData.VanguardUnitList, slot3.FRIENDLY_CODE, slot0._battleInitData.SubUnitList)
	slot0:SetSubmarinAidData()
	slot0._cameraUtil:SetFocusFleet(slot0:GetFleetByIFF(slot3.FRIENDLY_CODE))
	slot0:StatisticsInit(slot0._fleetList[slot3.FRIENDLY_CODE]:GetUnitList())
	slot0:SetFlagShipID(slot0:GetFleetByIFF(slot3.FRIENDLY_CODE):GetFlagShip())
	slot0:DispatchEvent(slot1.Event.New(slot2.COMMON_DATA_INIT_FINISH, {}))
end

function slot8.Start(slot0)
	slot0._startTimeStamp = pg.TimeMgr.GetInstance():GetCombatTime()
end

function slot8.TirggerBattleStartBuffs(slot0)
	for slot4, slot5 in pairs(slot0._fleetList) do
		slot7 = slot5:GetFlagShip()
		slot8 = slot5:GetScoutList()
		slot9 = slot8[1]
		slot10 = slot8[#slot8]

		for slot14, slot15 in ipairs(slot6) do
			underscore.each(slot0._battleInitData.ChapterBuffIDs or {}, function (slot0)
				slot1:AddBuff(slot0.Battle.BattleBuffUnit.New(slot0))
			end)
			slot15:TriggerBuff(slot1.BuffEffectType.ON_START_GAME)

			if slot15 == slot7 then
				slot15:TriggerBuff(slot1.BuffEffectType.ON_FLAG_SHIP)
			elseif slot15 == slot9 then
				slot15:TriggerBuff(slot1.BuffEffectType.ON_LEADER)
			elseif slot15 == slot10 then
				slot15:TriggerBuff(slot1.BuffEffectType.ON_REAR)
			else
				slot15:TriggerBuff(slot1.BuffEffectType.ON_CONSORT)
			end
		end
	end
end

function slot8.InitAllFleetUnitsWeaponCD(slot0)
	for slot4, slot5 in pairs(slot0._fleetList) do
		for slot10, slot11 in ipairs(slot6) do
			slot0.InitUnitWeaponCD(slot11)
		end
	end
end

function slot8.InitUnitWeaponCD(slot0)
	slot0:CheckWeaponInitial()
end

function slot8.GetInitData(slot0)
	return slot0._battleInitData
end

function slot8.GetDungeonData(slot0)
	return slot0._dungeonInfo
end

function slot8.InitData(slot0, slot1)
	slot0.FrameIndex = 1
	slot0._friendlyCode = 1
	slot0._foeCode = -1
	slot0.FRIENDLY_CODE = 1
	slot0.FOE_CODE = -1
	slot0._completelyRepress = false
	slot0._repressReduce = 1
	slot0._repressLevel = 0
	slot0._repressEnemyHpRant = 1
	slot0._friendlyShipList = {}
	slot0._foeShipList = {}
	slot0._friendlyAircraftList = {}
	slot0._foeAircraftList = {}
	slot0._fleetList = {}
	slot0._freeShipList = {}
	slot0._teamList = {}
	slot0._unitList = {}
	slot0._unitCount = 0
	slot0._bulletList = {}
	slot0._bulletCount = 0
	slot0._aircraftList = {}
	slot0._aircraftCount = 0
	slot0._AOEList = {}
	slot0._AOECount = 0
	slot0._wallList = {}
	slot0._wallIndex = 0
	slot0._shelterList = {}
	slot0._shelterIndex = 0
	slot0._enemySubmarineCount = 0
	slot0._airFighterList = {}
	slot0._currentStageIndex = 1
	slot0._battleInitData = slot1
	slot0._expeditionID = slot1.StageTmpId
	slot0._expeditionTmp = pg.expedition_data_template[slot0._expeditionID]

	slot0:SetDungeonLevel(slot0._expeditionTmp.level)

	slot0._dungeonID = slot0._expeditionTmp.dungeon_id
	slot0._dungeonInfo = slot1.GetDungeonTmpDataByID(slot0._dungeonID)
	slot0._mapId = slot0._expeditionTmp.map_id
	slot0._commander = slot1.CommanderList or {}
	slot0._subCommander = slot1.SubCommanderList or {}
	slot0._commanderBuff = slot0.initCommanderBuff(slot0._commander)
	slot0._subCommanderBuff = slot0.initCommanderBuff(slot0._subCommander)

	if slot0._battleInitData.battleType == SYSTEM_SCENARIO and slot0._battleInitData.RepressInfo then
		if slot0._battleInitData.RepressInfo.repressMax <= slot0._battleInitData.RepressInfo.repressCount then
			slot0._completelyRepress = true
		end

		slot0:SetRepressReduce(slot2.ChapterRepressReduce(slot2.repressReduce))

		slot0._repressLevel = slot2.repressLevel
		slot0._repressEnemyHpRant = slot2.repressEnemyHpRant
	end

	slot0._dropInfo = slot3.Battle.BattleDrops.New(slot1.DropInfoList)

	slot0:InitStageData()

	slot0._cldSystem = slot3.Battle.BattleCldSystem.New(slot0)
	slot0._cameraUtil = slot3.Battle.BattleCameraUtil:GetInstance()
end

function slot8.initCommanderBuff(slot0)
	slot1 = {}

	for slot5, slot6 in ipairs(slot0) do
		slot8 = slot6[1].getSkills(slot7)[1]:getLevel()

		for slot12, slot13 in ipairs(slot6[2]) do
			table.insert(slot1, {
				id = slot13,
				level = slot8,
				commander = slot7
			})
		end
	end

	return slot1
end

function slot8.InitStageData(slot0)
	slot0._currentStageData = slot0._dungeonInfo.stages[slot0._currentStageIndex]
	slot0._countDown = slot0._currentStageData.timeCount
	slot0._totalLeftBound = slot0._currentStageData.totalArea[1]
	slot0._totalRightBound = slot0._currentStageData.totalArea[1] + slot0._currentStageData.totalArea[3]
	slot0._totalUpperBound = slot0._currentStageData.totalArea[2] + slot0._currentStageData.totalArea[4]
	slot0._totalLowerBound = slot0._currentStageData.totalArea[2]
	slot0._leftZoneLeftBound = slot0._currentStageData.playerArea[1]
	slot0._leftZoneRightBound = slot0._currentStageData.playerArea[1] + slot0._currentStageData.playerArea[3]
	slot0._leftZoneUpperBound = slot0._currentStageData.playerArea[2] + slot0._currentStageData.playerArea[4]
	slot0._leftZoneLowerBound = slot0._currentStageData.playerArea[2]
	slot0._rightZoneLeftBound = slot0._leftZoneRightBound
	slot0._rightZoneRightBound = slot0._totalRightBound
	slot0._rightZoneUpperBound = slot0._leftZoneUpperBound
	slot0._rightZoneLowerBound = slot0._leftZoneLowerBound
	slot0._bulletUpperBound = slot0._totalUpperBound + 3
	slot0._bulletLowerBound = slot0._totalLowerBound - 10
	slot0._bulletLeftBound = slot0._totalLeftBound - 10
	slot0._bulletRightBound = slot0._totalRightBound + 10
end

function slot8.Clear(slot0)
	for slot4, slot5 in pairs(slot0._teamList) do
		slot0:KillNPCTeam(slot5)
	end

	slot0._teamList = nil

	for slot4, slot5 in pairs(slot0._bulletList) do
		slot0:RemoveBulletUnit(slot4)
	end

	slot0._bulletList = nil

	for slot4, slot5 in pairs(slot0._unitList) do
		slot0:KillUnit(slot4)
	end

	slot0._unitList = nil

	for slot4, slot5 in pairs(slot0._aircraftList) do
		slot0:KillAircraft(slot4)
	end

	slot0._aircraftList = nil

	for slot4, slot5 in pairs(slot0._fleetList) do
		slot5:Dispose()

		slot0._fleetList[slot4] = nil
	end

	slot0._fleetList = nil

	for slot4, slot5 in pairs(slot0._AOEList) do
		slot0:RemoveAreaOfEffect(slot4)
	end

	slot0._AOEList = nil

	slot0._cldSystem:Dispose()

	slot0._cldSystem = nil

	slot0._dropInfo:Dispose()

	slot0._dropInfo = nil
	slot0._dungeonInfo = nil
	slot0._flagShipUnit = nil
	slot0._friendlyShipList = nil
	slot0._foeShipList = nil
	slot0._friendlyAircraftList = nil
	slot0._foeAircraftList = nil
	slot0._fleetList = nil
	slot0._freeShipList = nil
	slot0._countDown = nil
	slot0._lastUpdateTime = nil
	slot0._statistics = nil
	slot0._battleInitData = nil
	slot0._currentStageData = nil

	slot0:ClearFormulas()
	slot0.ClearDungeonCfg(slot0._dungeonID)
end

function slot8.DeactiveProxy(slot0)
	slot0._state = nil

	slot0:Clear()
	slot0.Battle.BattleDataProxy.super.DeactiveProxy(slot0)
end

function slot8.InitUserShipsData(slot0, slot1, slot2, slot3, slot4)
	if slot0._battleInitData.battleType == SYSTEM_SUBMARINE_RUN then
		for slot8, slot9 in ipairs(slot4) do
			slot0:SpawnManualSub(slot9, slot3)
		end
	end

	for slot8, slot9 in ipairs(slot2) do
		slot10 = slot0:SpawnVanguard(slot9, slot3)
	end

	for slot8, slot9 in ipairs(slot1) do
		slot10 = slot0:SpawnMain(slot9, slot3)
	end

	slot0:GetFleetByIFF(slot3):SetSubUnitData(slot4)
end

function slot8.SetSubmarinAidData(slot0)
	slot0:GetFleetByIFF(slot0.FRIENDLY_CODE):SetSubAidData(slot0._battleInitData.TotalSubAmmo, slot0._battleInitData.SubFlag)
end

function slot8.CelebrateVictory(slot0, slot1)
	slot2 = nil
	slot2 = (slot1 ~= slot0:GetFoeCode() or slot0._foeShipList) and slot0._friendlyShipList

	for slot6, slot7 in pairs(slot2) do
		slot7:StateChange(slot0.Battle.UnitState.STATE_VICTORY)
	end
end

function slot8.GetVanguardBornCoordinate(slot0, slot1)
	if slot1 == slot0.FRIENDLY_CODE then
		return slot0._currentStageData.fleetCorrdinate
	elseif slot1 == slot0.FOE_CODE then
		return slot0._currentStageData.rivalCorrdinate
	end
end

function slot8.GetTotalBounds(slot0)
	return slot0._totalUpperBound, slot0._totalLowerBound, slot0._totalLeftBound, slot0._totalRightBound
end

function slot8.GetTotalRightBound(slot0)
	return slot0._totalRightBound
end

function slot8.GetTotalLowerBound(slot0)
	return slot0._totalLowerBound
end

function slot8.GetUnitBoundByIFF(slot0, slot1)
	if slot1 == slot0.FRIENDLY_CODE then
		return slot0._leftZoneUpperBound, slot0._leftZoneLowerBound, slot0._leftZoneLeftBound, slot0.MaxRight, slot0.MaxLeft, slot0._leftZoneRightBound
	elseif slot1 == slot0.FOE_CODE then
		return slot0._rightZoneUpperBound, slot0._rightZoneLowerBound, slot0._rightZoneLeftBound, slot0._rightZoneRightBound, slot0._rightZoneLeftBound, slot0.MaxRight
	end
end

function slot8.GetFleetBoundByIFF(slot0, slot1)
	if slot1 == slot0.FRIENDLY_CODE then
		return slot0._leftZoneUpperBound, slot0._leftZoneLowerBound, slot0._leftZoneLeftBound, slot0._leftZoneRightBound
	elseif slot1 == slot0.FOE_CODE then
		return slot0._rightZoneUpperBound, slot0._rightZoneLowerBound, slot0._rightZoneLeftBound, slot0._rightZoneRightBound
	end
end

function slot8.ShiftFleetBound(slot0, slot1, slot2)
	slot1:SetBound(slot0:GetFleetBoundByIFF(slot2))

	slot3, slot4, slot5, slot6, slot7, slot8 = slot0:GetUnitBoundByIFF(slot2)

	for slot13, slot14 in ipairs(slot9) do
		slot14:SetBound(slot3, slot4, slot5, slot6, slot7, slot8)
	end
end

function slot8.GetFleetByIFF(slot0, slot1)
	if slot0._fleetList[slot1] == nil then
		slot2 = slot0.Battle.BattleFleetVO.New(slot1)
		slot0._fleetList[slot1] = slot2

		slot2:SetBound(slot0:GetFleetBoundByIFF(slot1))
		slot2:SetTotalBound(slot0:GetTotalBounds())
		slot2:CalcSubmarineBaseLine(slot0._battleInitData.battleType)
	end

	return slot0._fleetList[slot1]
end

function slot8.GetFleetList(slot0)
	return slot0._fleetList
end

function slot8.GetCommander(slot0)
	return slot0._commander
end

function slot8.GetStageInfo(slot0)
	return slot0._currentStageData
end

function slot8.GetDungeonLevel(slot0)
	return slot0._dungeonLevel
end

function slot8.SetDungeonLevel(slot0, slot1)
	slot0._dungeonLevel = slot1
end

function slot8.IsCompletelyRepress(slot0)
	return slot0._completelyRepress
end

function slot8.SetRepressReduce(slot0, slot1)
	slot0._repressReduce = slot1
end

function slot8.GetRepressLevel(slot0)
	return slot0._repressLevel
end

slot8.checkCld = true

function slot8.Update(slot0, slot1)
	slot0.FrameIndex = slot0.FrameIndex + 1

	slot0:UpdateCountDown(slot1)

	for slot5, slot6 in pairs(slot0._fleetList) do
		slot6:UpdateMotion()
	end

	slot0.checkCld = not slot0.checkCld

	for slot5, slot6 in pairs(slot0._unitList) do
		if slot0.checkCld then
			slot0._cldSystem:UpdateShipCldTree(slot6)
		end

		if slot6:IsAlive() then
			slot6:Update(slot1)
		end
	end

	for slot5, slot6 in pairs(slot0._bulletList) do
		slot7 = slot6:GetSpeed()
		slot8 = slot6:GetPosition()
		slot9 = slot6:GetType()

		if slot6:GetOutBound() and ((slot0._bulletRightBound < slot8.x and slot7.x > 0) or (slot8.z < slot0._bulletLowerBound and slot7.z < 0)) then
			slot0:RemoveBulletUnit(slot6:GetUniqueID())
		elseif slot8.x < slot0._bulletLeftBound and slot7.x < 0 and slot9 ~= slot0.BulletType.BOMB then
			slot0:RemoveBulletUnit(slot6:GetUniqueID())
		else
			slot6:Update(slot1)

			if slot6.GetCurrentState and slot6:GetCurrentState() == slot1.Battle.BattleShrapnelBulletUnit.STATE_SPLIT then
			elseif (slot10 and slot0._bulletUpperBound < slot8.z and slot7.z > 0) or slot6:IsOutRange(slot1) then
				if slot6:GetExist() then
					slot6:OutRange()
				else
					slot0:RemoveBulletUnit(slot6:GetUniqueID())
				end
			elseif slot0.checkCld then
				slot0._cldSystem:UpdateBulletCld(slot6)
			end
		end
	end

	for slot5, slot6 in pairs(slot0._aircraftList) do
		slot6:Update(slot1)

		slot7, slot8 = slot6:GetIFF()

		if slot7 == slot2.FRIENDLY_CODE then
			slot8 = slot0._totalRightBound
		elseif slot7 == slot2.FOE_CODE then
			slot8 = slot0._totalLeftBound
		end

		if math.abs(slot8) < slot6:GetPosition().x * slot7 and slot6:GetSpeed().x * slot7 > 0 then
			slot6:OutBound()
		else
			slot0._cldSystem:UpdateAircraftCld(slot6)
		end

		if not slot6:IsAlive() then
			slot0:KillAircraft(slot6:GetUniqueID())
		end
	end

	for slot5, slot6 in pairs(slot0._AOEList) do
		slot0._cldSystem:UpdateAOECld(slot6)
		slot6:Settle()

		if slot6:GetActiveFlag() == false then
			slot0:RemoveAreaOfEffect(slot6:GetUniqueID())
		end
	end

	if slot0.checkCld then
		for slot5, slot6 in pairs(slot0._shelterList) do
			if not slot6:IsWallActive() then
				slot0:RemoveShelter(slot6:GetUniqueID())
			else
				slot6:Update(slot1)
			end
		end

		for slot5, slot6 in pairs(slot0._wallList) do
			if slot6:IsActive() then
				slot0._cldSystem:UpdateWallCld(slot6)
			end
		end
	end

	for slot5, slot6 in pairs(slot0._foeShipList) do
		if slot6:GetPosition().x + slot6:GetBoxSize().x < slot0._leftZoneLeftBound then
			slot6:SetDeathReason(slot0.UnitDeathReason.TOUCHDOWN)
			slot6:DeadAction()
			slot0:KillUnit(slot6:GetUniqueID())
			slot0:HandleShipMissDamage(slot6, slot0._fleetList[slot2.FRIENDLY_CODE])
		end
	end
end

function slot8.UpdateAutoComponent(slot0, slot1)
	for slot5, slot6 in pairs(slot0._fleetList) do
		slot6:UpdateAutoComponent(slot1)
	end

	for slot5, slot6 in pairs(slot0._teamList) do
		if slot6:IsFatalDamage() then
			slot0:KillNPCTeam(slot5)
		else
			slot6:UpdateMotion()
		end
	end

	for slot5, slot6 in pairs(slot0._freeShipList) do
		slot6:UpdateOxygen(slot1)
		slot6:UpdateWeapon(slot1)
		slot6:UpdatePhaseSwitcher()
	end
end

function slot8.UpdateEscapeOnly(slot0, slot1)
	for slot5, slot6 in pairs(slot0._foeShipList) do
		slot6:Update(slot1)
	end
end

function slot8.UpdateCountDown(slot0, slot1)
	slot0._lastUpdateTime = slot0._lastUpdateTime or slot1

	if slot0._countDown - (slot1 - slot0._lastUpdateTime) <= 0 then
		slot2 = 0
	end

	if math.floor(slot0._countDown - slot2) == 0 or slot2 == 0 then
		slot0:DispatchEvent(slot0.Event.New(slot1.UPDATE_COUNT_DOWN, {}))
	end

	slot0._countDown = slot2
	slot0._totalTime = slot1 - slot0._startTimeStamp
	slot0._lastUpdateTime = slot1
end

function slot8.SpawnMonster(slot0, slot1, slot2, slot3, slot4)
	slot5 = slot0:GenerateUnitID()
	slot7 = {}

	for slot11, slot12 in ipairs(slot0.GetMonsterTmpDataFromID(slot1.monsterTemplateID).equipment_list) do
		slot7[#slot7 + 1] = {
			id = slot12
		}
	end

	slot9 = slot6.random_equipment_list

	if slot6.random_nub ~= nil and slot9 ~= nil then
		if slot8 > #slot9 then
			for slot13, slot14 in ipairs(slot9) do
				slot7[#slot7 + 1] = {
					id = slot14
				}
			end
		else
			for slot13 = 1, slot8, 1 do
				slot7[#slot7 + 1] = {
					id = slot9[math.random(1, #slot9)]
				}

				table.remove(slot9, math.random(1, #slot9))
			end
		end
	end

	slot10 = slot0.CreateBattleUnitData(slot5, slot3, slot4, slot1.monsterTemplateID, nil, slot7, slot1.extraInfo, nil, slot0._completelyRepress, slot0._repressReduce, slot0._repressEnemyHpRant, nil, nil)

	slot10:SetPosition(slot11)
	slot10:SetAI(slot1.pilotAITemplateID or slot6.pilot_ai_template_id)
	slot0:setShipUnitBound(slot10)

	if table.contains(TeamType.SubShipType, slot6.type) then
		slot10:InitOxygen()
		slot0:UpdateHostileSubmarine(true)
	end

	slot0._freeShipList[slot5] = slot10
	slot0._unitList[slot5] = slot10

	slot0._cldSystem:InitShipCld(slot10)
	slot10:SummonSickness(slot2.SUMMONING_SICKNESS_DURATION)

	if slot1.moveCast then
		slot10:SetMoveCast()
	end

	if slot10:GetIFF() == slot3.FRIENDLY_CODE then
		slot0._friendlyShipList[slot5] = slot10
	else
		slot0._foeShipList[slot5] = slot10

		slot10:SetWaveIndex(slot2)
	end

	if slot1.reinforce then
		slot10:Reinforce()
	end

	if slot1.reinforceDelay then
		slot10:SetReinforceCastTime(slot1.reinforceDelay)
	end

	if slot1.team then
		slot0:GetNPCTeam(slot1.team):AppendUnit(slot10)
	end

	if slot1.phase then
		slot4.Battle.BattleUnitPhaseSwitcher.New(slot10):SetTemplateData(slot1.phase)
	end

	slot0:DispatchEvent(slot4.Event.New(slot5.ADD_UNIT, {
		type = slot3,
		unit = slot10,
		bossData = slot1.bossData,
		extraInfo = slot1.extraInfo
	}))

	slot13 = slot1.buffList or {}

	for slot17, slot18 in ipairs(slot13) do
		slot10:AddBuff(slot4.Battle.BattleBuffUnit.New(slot18))
	end

	slot14 = slot0._battleInitData.AffixBuffList or {}

	if slot1.affix then
		for slot18, slot19 in ipairs(slot14) do
			slot10:AddBuff(slot4.Battle.BattleBuffUnit.New(slot19))
		end
	end

	slot10:CheckWeaponInitial()
end

function slot8.UpdateHostileSubmarine(slot0, slot1)
	if slot1 then
		slot0._enemySubmarineCount = slot0._enemySubmarineCount + 1
	else
		slot0._enemySubmarineCount = slot0._enemySubmarineCount - 1
	end

	slot0:DispatchEvent(slot0.Event.New(slot1.UPDATE_HOSTILE_SUBMARINE, {
		count = slot0._enemySubmarineCount
	}))
end

function slot8.EnemyEscape(slot0)
	for slot4, slot5 in pairs(slot0._foeShipList) do
		slot5:SetAI(slot0.COUNT_DOWN_ESCAPE_AI_ID)
	end
end

function slot8.GetNPCTeam(slot0, slot1)
	if not slot0._teamList[slot1] then
		slot0._teamList[slot1] = slot0.Battle.BattleTeamVO.New(slot1)
	end

	return slot0._teamList[slot1]
end

function slot8.KillNPCTeam(slot0, slot1)
	if slot0._teamList[slot1] then
		slot2:Dispose()

		slot0._teamList[slot1] = nil
	end
end

function slot8.SpawnVanguard(slot0, slot1, slot2)
	slot4 = slot0:generatePlayerUnit(slot1, slot2, BuildVector3(slot3), slot0._commanderBuff)

	slot0:GetFleetByIFF(slot2).AppendPlayerUnit(slot5, slot4)
	slot0._cldSystem:InitShipCld(slot4)
	slot0:DispatchEvent(slot1.Event.New(slot2.ADD_UNIT, {
		type = slot0.UnitType.PLAYER_UNIT,
		unit = slot4
	}))

	return slot4
end

function slot8.SpawnMain(slot0, slot1, slot2)
	slot3 = nil
	slot6 = slot0:generatePlayerUnit(slot1, slot2, (not slot0._currentStageData.mainUnitPosition or not slot0._currentStageData.mainUnitPosition[slot2] or Clone(slot0._currentStageData.mainUnitPosition[slot2][#slot0:GetFleetByIFF(slot2).GetMainList(slot4) + 1])) and Clone(slot0.MAIN_UNIT_POS[slot2][#slot0.GetFleetByIFF(slot2).GetMainList(slot4) + 1]), slot0._commanderBuff)

	slot6:SetMainFleetUnit()
	slot4:AppendPlayerUnit(slot6)
	slot0._cldSystem:InitShipCld(slot6)
	slot0:DispatchEvent(slot2.Event.New((not slot0._currentStageData.mainUnitPosition or not slot0._currentStageData.mainUnitPosition[slot2] or Clone(slot0._currentStageData.mainUnitPosition[slot2][#slot0.GetFleetByIFF(slot2).GetMainList(slot4) + 1])) and Clone(slot0.MAIN_UNIT_POS[slot2][#slot0.GetFleetByIFF(slot2).GetMainList(slot4) + 1]).ADD_UNIT, {
		type = slot1.UnitType.PLAYER_UNIT,
		unit = slot6
	}))

	return slot6
end

function slot8.SpawnSub(slot0, slot1, slot2)
	slot3 = nil
	slot5 = #slot0:GetFleetByIFF(slot2).GetSubList(slot4) + 1
	slot6 = slot0.SUB_UNIT_OFFSET_X
	slot7 = slot1.GetPlayerShipTmpDataFromID(slot1.tmpID).summon_offset or 0
	slot7 = slot0:generatePlayerUnit(slot1, slot2, (slot2 ~= slot0.FRIENDLY_CODE or Vector3(slot6 + (slot1.GetPlayerShipTmpDataFromID(slot1.tmpID).summon_offset or 0) + slot0._totalLeftBound, 0, slot0.SUB_UNIT_POS_Z[slot5])) and Vector3(slot0._totalRightBound - (slot6 + (slot1.GetPlayerShipTmpDataFromID(slot1.tmpID).summon_offset or 0)), 0, slot0.SUB_UNIT_POS_Z[slot5]), slot0._subCommanderBuff)

	slot4:AddSubMarine(slot7)
	slot0._cldSystem:InitShipCld(slot7)
	slot0:DispatchEvent((slot2 ~= slot0.FRIENDLY_CODE or Vector3(slot6 + (slot1.GetPlayerShipTmpDataFromID(slot1.tmpID).summon_offset or 0) + slot0._totalLeftBound, 0, slot0.SUB_UNIT_POS_Z[slot5])) and Vector3(slot0._totalRightBound - (slot6 + (slot1.GetPlayerShipTmpDataFromID(slot1.tmpID).summon_offset or 0)), 0, slot0.SUB_UNIT_POS_Z[slot5]).Event.New(slot4.ADD_UNIT, {
		type = slot2.UnitType.PLAYER_UNIT,
		unit = slot7
	}))

	return slot7

	slot7 = 0
	slot3 = Vector3(slot6 + (slot1.GetPlayerShipTmpDataFromID(slot1.tmpID).summon_offset or 0) + slot0._totalLeftBound, 0, slot0.SUB_UNIT_POS_Z[slot5])

	if Vector3(slot6 + (slot1.GetPlayerShipTmpDataFromID(slot1.tmpID).summon_offset or 0) + slot0._totalLeftBound, 0, slot0.SUB_UNIT_POS_Z[slot5]) then
		slot3 = Vector3(slot0._totalRightBound - (slot6 + (slot1.GetPlayerShipTmpDataFromID(slot1.tmpID).summon_offset or 0)), 0, slot0.SUB_UNIT_POS_Z[slot5])
	end
end

function slot8.SpawnManualSub(slot0, slot1, slot2)
	slot4 = slot0:generatePlayerUnit(slot1, slot2, BuildVector3(slot3), slot0._commanderBuff)

	slot0:GetFleetByIFF(slot2).AddManualSubmarine(slot5, slot4)
	slot0._cldSystem:InitShipCld(slot4)
	slot0:DispatchEvent(slot1.Event.New(slot2.ADD_UNIT, {
		type = slot0.UnitType.PLAYER_UNIT,
		unit = slot4
	}))

	return slot4
end

function slot8.ShutdownPlayerUnit(slot0, slot1)
	slot4 = slot0:GetFleetByIFF(slot3)

	slot4:RemovePlayerUnit(slot2)

	slot5 = {}

	if slot4:GetFleetAntiAirWeapon():GetRange() == 0 then
		slot5.isShow = false
	end

	slot0:DispatchEvent(slot0.Event.New(slot1.ANTI_AIR_AREA, slot5))
	slot0:DispatchEvent(slot0.Event.New(slot1.SHUT_DOWN_PLAYER, {
		unit = slot2
	}))

	return
end

function slot8.KillUnit(slot0, slot1)
	if slot0._unitList[slot1] == nil then
		return
	end

	slot3 = slot2:GetUnitType()

	slot0._cldSystem:DeleteShipCld(slot2)
	slot2:Clear()

	slot0._unitList[slot1] = nil

	if slot0._freeShipList[slot1] then
		slot0._freeShipList[slot1] = nil
	end

	slot5 = slot2:GetDeathReason()

	if slot2:GetIFF() == slot0.FOE_CODE then
		slot0._foeShipList[slot1] = nil

		if slot3 == slot1.UnitType.ENEMY_UNIT or slot3 == slot1.UnitType.BOSS_UNIT or slot3 == slot1.UnitType.NPC_UNIT then
			if slot2:GetTeam() then
				slot2:GetTeam():RemoveUnit(slot2)
			end

			if table.contains(TeamType.SubShipType, slot2:GetTemplate().type) then
				slot0:UpdateHostileSubmarine(false)
			end
		end

		if slot5 ~= slot1.UnitDeathReason.LEAVE and (slot0._dropInfo:CreateDrops(slot2:GetTemplateID()).itemCount ~= nil or slot7.resourceCount ~= nil) then
			slot0._dropInfo:DispatchEvent(slot2.Event.New(slot3.ENEMY_DROP, {
				scenePos = slot2:GetPosition(),
				drops = slot7
			}))
		end
	else
		if slot4 == slot0.FRIENDLY_CODE then
			slot0._friendlyShipList[slot1] = nil
		end
	end

	slot0:DispatchEvent(slot2.Event.New(slot3.REMOVE_UNIT, {
		UID = slot1,
		type = slot3,
		deadReason = slot5,
		unit = slot2
	}))
	slot2:Dispose()

	return
end

function slot8.KillAllEnemy(slot0)
	for slot4, slot5 in pairs(slot0._unitList) do
		if slot5:GetIFF() == slot0.FOE_CODE and slot5:IsAlive() and not slot5:IsBoss() then
			slot5:DeadAction()
		end
	end

	return
end

function slot8.KillSubmarineByIFF(slot0, slot1)
	for slot5, slot6 in pairs(slot0._unitList) do
		if slot6:GetIFF() == slot1 and slot6:IsAlive() and table.contains(TeamType.SubShipType, slot6:GetTemplate().type) and not slot6:IsBoss() then
			slot6:DeadAction()
		end
	end

	return
end

function slot8.KillAllAircraft(slot0)
	for slot4, slot5 in pairs(slot0._aircraftList) do
		slot5:Clear()
		slot0:DispatchEvent(slot0.Event.New(slot1.REMOVE_AIR_CRAFT, {
			UID = slot4
		}))

		slot0._aircraftList[slot4] = nil
	end

	return
end

function slot8.IsThereBoss(slot0)
	for slot4, slot5 in pairs(slot0:GetUnitList()) do
		if slot5:IsBoss() and slot5:IsAlive() then
			return true
		end
	end

	return false
end

function slot8.setShipUnitBound(slot0, slot1)
	slot1:SetBound(slot0:GetUnitBoundByIFF(slot1:GetIFF()))

	return
end

function slot8.generatePlayerUnit(slot0, slot1, slot2, slot3, slot4)
	slot5 = slot0:GenerateUnitID()
	slot1.properties.level = slot1.level
	slot1.properties.formationID = slot0.FORMATION_ID
	slot1.properties.id = slot1.id

	slot1.AttrFixer(slot0._battleInitData.battleType, slot1.properties)

	if not slot1.proficiency then
		slot7 = {
			1,
			1,
			1
		}
	end

	slot10 = slot2.CreateBattleUnitData(slot5, slot3.UnitType.PLAYER_UNIT, slot2, slot1.tmpID, slot1.skinId, slot1.equipment, slot6, slot7, slot0._completelyRepress, slot0._repressReduce, nil, slot1.baseList, slot1.preloasList)
	slot9 = slot2.CreateBattleUnitData(slot5, slot3.UnitType.PLAYER_UNIT, slot2, slot1.tmpID, slot1.skinId, slot1.equipment, slot6, slot7, slot0._completelyRepress, slot0._repressReduce, nil, slot1.baseList, slot1.preloasList).InitCurrentHP

	if not slot1.initHPRate then
		slot11 = 1
	end

	slot9(slot10, slot11)
	slot8:SetRarity(slot1.rarity)
	slot8:SetShipName(slot1.name)

	slot0._unitList[slot5] = slot8

	slot0:setShipUnitBound(slot8)

	if slot8:GetIFF() == slot0.FRIENDLY_CODE then
		slot0._friendlyShipList[slot5] = slot8
	else
		if slot8:GetIFF() == slot0.FOE_CODE then
			slot0._foeShipList[slot5] = slot8
		end
	end

	slot8:SetPosition(slot3)
	slot2.InitUnitSkill(slot1, slot8)
	slot2.InitEquipSkill(slot1.equipment, slot8, Ship.WEAPON_COUNT)
	slot2.InitCommanderSkill(slot4, slot8)
	slot8:SetGearScore(slot1.shipGS)

	return slot8
end

function slot8.GetUnitList(slot0)
	return slot0._unitList
end

function slot8.GetFriendlyShipList(slot0)
	return slot0._friendlyShipList
end

function slot8.GetFoeShipList(slot0)
	return slot0._foeShipList
end

function slot8.GetFoeAircraftList(slot0)
	return slot0._foeAircraftList
end

function slot8.GetFreeShipList(slot0)
	return slot0._freeShipList
end

function slot8.GenerateUnitID(slot0)
	slot0._unitCount = slot0._unitCount + 1

	return slot0._unitCount
end

function slot8.GetCountDown(slot0)
	return slot0._countDown
end

function slot8.GetDropInfo(slot0)
	return slot0._dropInfo
end

function slot8.SpawnAirFighter(slot0, slot1)
	slot2 = #slot0._airFighterList + 1
	slot3 = slot0.GetFormationTmpDataFromID(slot1.formation).pos_offset
	slot4 = {
		currentNumber = 0,
		templateID = slot1.templateID
	}

	if not slot1.totalNumber then
		slot5 = 0
	end

	slot4.totalNumber = slot5
	slot4.onceNumber = slot1.onceNumber

	if not slot1.interval then
		slot5 = 3
	end

	slot4.timeDelay = slot5

	if not slot1.maxTotalNumber then
		slot5 = 15
	end

	slot4.maxTotalNumber = slot5

	function slot5(slot0)
		if slot0.currentNumber < slot0.totalNumber then
			slot0.currentNumber = slot1 + 1
			slot2 = slot1:CreateAirFighter(slot1.CreateAirFighter)

			slot2:SetFormationOffset(slot3[slot0])
			slot2:SetFormationIndex(slot0)
			slot2:SetDeadCallBack(function ()
				slot0.totalNumber = slot0.totalNumber - 1
				slot0.currentNumber = slot0.currentNumber - 1

				slot0.currentNumber - 1:DispatchEvent(slot2.Event.New(slot3.REMOVE_AIR_FIGHTER_ICON, {
					index = 
				}))

				return
			end)
			slot2:SetLiveCallBack(function ()
				slot0.currentNumber = slot0.currentNumber - 1

				return
			end)
		end

		return
	end

	slot0._airFighterList[slot2] = slot4

	slot0:DispatchEvent(slot1.Event.New(slot2.ADD_AIR_FIGHTER_ICON, {
		index = slot2
	}))

	slot4.timer = pg.TimeMgr.GetInstance():AddBattleTimer("striker", -1, slot1.interval, function ()
		if slot0.totalNumber > 0 then
			for slot4 = 1, slot0, 1 do
				slot1(slot4)
			end
		else
			pg.TimeMgr.GetInstance():RemoveBattleTimer(slot0.timer)

			slot0.timer = nil
		end

		return
	end)

	return
end

function slot8.ClearAirFighterTimer(slot0)
	for slot4, slot5 in ipairs(slot0._airFighterList) do
		pg.TimeMgr.GetInstance():RemoveBattleTimer(slot5.timer)

		slot5.timer = nil
	end

	slot0._airFighterList = {}

	return
end

function slot8.KillAllAirStrike(slot0)
	for slot4, slot5 in pairs(slot0._aircraftList) do
		if slot5.__name == slot0.Battle.BattleAirFighterUnit.__name then
			slot0._cldSystem:DeleteAircraftCld(slot5)

			slot5._aliveState = false
			slot0._aircraftList[slot4] = nil
			slot0._foeAircraftList[slot4] = nil

			slot0:DispatchEvent(slot0.Event.New(slot1.REMOVE_AIR_CRAFT, {
				UID = slot4
			}))
		end
	end

	slot1 = true

	for slot5, slot6 in pairs(slot0._foeAircraftList) do
		slot1 = false

		break
	end

	if slot1 then
		slot0:DispatchEvent(slot0.Event.New(slot1.ANTI_AIR_AREA, {
			isShow = false
		}))
	end

	for slot5, slot6 in ipairs(slot0._airFighterList) do
		slot6.totalNumber = 0

		slot0:DispatchEvent(slot0.Event.New(slot1.REMOVE_AIR_FIGHTER_ICON, {
			index = slot5
		}))
		pg.TimeMgr.GetInstance():RemoveBattleTimer(slot6.timer)

		slot6.timer = nil
	end

	slot0._airFighterList = {}

	return
end

function slot8.GetAirFighterInfo(slot0, slot1)
	return slot0._airFighterList[slot1]
end

function slot8.CreateAircraft(slot0, slot1, slot2, slot3, slot4)
	slot6 = slot0.CreateAircraftUnit(slot0:GenerateAircraftID(), slot2, slot1, slot3)

	if slot4 then
		slot6:SetSkinID(slot4)
	end

	slot7 = nil

	if slot1:GetIFF() == slot1.FRIENDLY_CODE then
	else
		slot7 = true
	end

	slot0:doCreateAirUnit(slot5, slot6, slot2.UnitType.AIRCRAFT_UNIT, slot7)

	return slot6
end

function slot8.CreateAirFighter(slot0, slot1)
	slot0:doCreateAirUnit(slot0:GenerateAircraftID(), slot0.CreateAirFighterUnit(slot2, slot1), slot1.UnitType.AIRFIGHTER_UNIT, true)

	return slot0.CreateAirFighterUnit(slot2, slot1)
end

function slot8.doCreateAirUnit(slot0, slot1, slot2, slot3, slot4)
	slot0._aircraftList[slot1] = slot2

	slot0._cldSystem:InitAircraftCld(slot2)
	slot2:SetBound(slot0._leftZoneUpperBound, slot0._leftZoneLowerBound)
	slot0:DispatchEvent(slot0.Event.New(slot1.ADD_UNIT, {
		unit = slot2,
		type = slot3
	}))

	if not slot4 then
		slot4 = false
	end

	if slot4 then
		slot0._foeAircraftList[slot1] = slot2

		slot0:DispatchEvent(slot0.Event.New(slot1.ANTI_AIR_AREA, {
			isShow = true
		}))
	end

	return
end

function slot8.KillAircraft(slot0, slot1)
	if slot0._aircraftList[slot1] == nil then
		return
	end

	slot2:Clear()
	slot0._cldSystem:DeleteAircraftCld(slot2)

	if slot2:IsUndefeated() then
		slot0:HandleAircraftMissDamage(slot2, slot0._fleetList[slot2:GetIFF() * -1])
	end

	slot2._aliveState = false
	slot0._aircraftList[slot1] = nil
	slot0._foeAircraftList[slot1] = nil
	slot3 = true

	for slot7, slot8 in pairs(slot0._foeAircraftList) do
		slot3 = false

		break
	end

	if slot3 then
		slot0:DispatchEvent(slot0.Event.New(slot1.ANTI_AIR_AREA, {
			isShow = false
		}))
	end

	slot0:DispatchEvent(slot0.Event.New(slot1.REMOVE_AIR_CRAFT, {
		UID = slot1
	}))

	return
end

function slot8.GetAircraftList(slot0)
	return slot0._aircraftList
end

function slot8.GenerateAircraftID(slot0)
	slot0._aircraftCount = slot0._aircraftCount + 1

	return slot0._aircraftCount
end

function slot8.CreateBulletUnit(slot0, slot1, slot2, slot3, slot4)
	slot6, slot7 = slot0.CreateBattleBulletData(slot5, slot1, slot2, slot3, slot4)

	if slot7 then
		slot0._cldSystem:InitBulletCld(slot6)
	end

	slot0._bulletList[slot5] = slot6

	return slot6
end

function slot8.RemoveBulletUnit(slot0, slot1)
	if slot0._bulletList[slot1] == nil then
		return
	end

	slot2:DamageUnitListWriteback()

	if slot2:GetIsCld() then
		slot0._cldSystem:DeleteBulletCld(slot2)
	end

	slot0._bulletList[slot1] = nil

	slot0:DispatchEvent(slot0.Event.New(slot1.REMOVE_BULLET, {
		UID = slot1
	}))
	slot2:Dispose()

	return
end

function slot8.GetBulletList(slot0)
	return slot0._bulletList
end

function slot8.GenerateBulletID(slot0)
	slot0._bulletCount = slot0._bulletCount + 1

	return slot0._bulletCount + 1
end

function slot8.CLSBullet(slot0, slot1)
	slot2 = true

	if slot0._battleInitData.battleType == SYSTEM_DUEL or (slot3 == SYSTEM_SHAM and slot1 == slot0.FRIENDLY_CODE) then
		slot2 = false
	end

	if slot2 then
		for slot7, slot8 in pairs(slot0._bulletList) do
			if slot8:GetIFF() == slot1 and slot8:GetExist() then
				slot0:RemoveBulletUnit(slot7)
			end
		end
	end

	return
end

function slot8.SpawnColumnArea(slot0, slot1, slot2, slot3, slot4, slot5, slot6, slot7)
	if not slot7 then
		slot7 = false
	end

	slot9 = slot0.Battle.BattleAOEData.New(slot8, slot2, slot6)

	slot9:SetPosition(slot3)
	slot9:SetRange(slot4)
	slot9:SetAreaType(slot1.AreaType.COLUMN)
	slot9:SetLifeTime(slot5)
	slot9:SetFieldType(slot1)
	slot9:SetOpponentAffected(not slot7)
	slot0:CreateAreaOfEffect(slot9)

	return
end

function slot8.SpawnCubeArea(slot0, slot1, slot2, slot3, slot4, slot5, slot6, slot7, slot8)
	if not slot8 then
		slot8 = false
	end

	slot10 = slot0.Battle.BattleAOEData.New(slot9, slot2, slot7)

	slot10:SetPosition(slot3)
	slot10:SetWidth(slot4)
	slot10:SetHeight(slot5)
	slot10:SetAreaType(slot1.AreaType.CUBE)
	slot10:SetLifeTime(slot6)
	slot10:SetFieldType(slot1)
	slot10:SetOpponentAffected(not slot8)
	slot0:CreateAreaOfEffect(slot10)

	return
end

function slot8.SpawnLastingColumnArea(slot0, slot1, slot2, slot3, slot4, slot5, slot6, slot7, slot8, slot9, slot10)
	if not slot8 then
		slot8 = false
	end

	slot12 = slot0.Battle.BattleLastingAOEData.New(slot11, slot2, slot6, slot7)

	slot12:SetPosition(slot3)
	slot12:SetRange(slot4)
	slot12:SetAreaType(slot1.AreaType.COLUMN)
	slot12:SetLifeTime(slot5)
	slot12:SetFieldType(slot1)
	slot12:SetOpponentAffected(not slot8)
	slot0:CreateAreaOfEffect(slot12)

	if slot9 and slot9 ~= "" then
		slot0:DispatchEvent(slot0.Event.New(slot2.ADD_AREA, {
			area = slot12,
			FXID = slot9,
			isStatic = slot10
		}))
	end

	return slot12
end

function slot8.SpawnLastingCubeArea(slot0, slot1, slot2, slot3, slot4, slot5, slot6, slot7, slot8, slot9, slot10, slot11)
	if not slot9 then
		slot9 = false
	end

	slot13 = slot0.Battle.BattleLastingAOEData.New(slot12, slot2, slot7, slot8)

	slot13:SetPosition(slot3)
	slot13:SetWidth(slot4)
	slot13:SetHeight(slot5)
	slot13:SetAreaType(slot1.AreaType.CUBE)
	slot13:SetLifeTime(slot6)
	slot13:SetFieldType(slot1)
	slot13:SetOpponentAffected(not slot9)
	slot0:CreateAreaOfEffect(slot13)

	if slot10 and slot10 ~= "" then
		slot0:DispatchEvent(slot0.Event.New(slot2.ADD_AREA, {
			area = slot13,
			FXID = slot10,
			isStatic = slot11
		}))
	end

	return slot13
end

function slot8.CreateAreaOfEffect(slot0, slot1)
	slot0._AOEList[slot1:GetUniqueID()] = slot1

	slot0._cldSystem:InitAOECld(slot1)
	slot1:StartTimer()

	return
end

function slot8.RemoveAreaOfEffect(slot0, slot1)
	if not slot0._AOEList[slot1] then
		return
	end

	slot2:Dispose()

	slot0._AOEList[slot1] = nil

	slot0._cldSystem:DeleteAOECld(slot2)
	slot0:DispatchEvent(slot0.Event.New(slot1.REMOVE_AREA, {
		id = slot1
	}))

	return
end

function slot8.GetAOEList(slot0)
	return slot0._AOEList
end

function slot8.GenerateAreaID(slot0)
	slot0._AOECount = slot0._AOECount + 1

	return slot0._AOECount
end

function slot8.SpawnWall(slot0, slot1, slot2, slot3, slot4)
	slot6 = slot0.Battle.BattleWallData.New(slot5, slot1, slot2, slot3, slot4)
	slot0._wallList[slot0:GenerateWallID()] = slot6

	slot0._cldSystem:InitWallCld(slot6)

	return slot6
end

function slot8.RemoveWall(slot0, slot1)
	slot0._wallList[slot1] = nil

	slot0._cldSystem:DeleteWallCld(slot0._wallList[slot1])

	return
end

function slot8.SpawnShelter(slot0, slot1, slot2)
	slot0._shelterList[slot0:GernerateShelterID()] = slot0.Battle.BattleShelterData.New(slot3)

	return slot0.Battle.BattleShelterData.New(slot3)
end

function slot8.RemoveShelter(slot0, slot1)
	slot0:DispatchEvent(slot0.Event.New(slot1.REMOVE_SHELTER, {
		uid = slot1
	}))
	slot0._shelterList[slot1].Deactive(slot2)

	slot0._shelterList[slot1] = nil

	return
end

function slot8.GetWallList(slot0)
	return slot0._wallList
end

function slot8.GenerateWallID(slot0)
	slot0._wallIndex = slot0._wallIndex + 1

	return slot0._wallIndex
end

function slot8.GernerateShelterID(slot0)
	slot0._shelterIndex = slot0._shelterIndex + 1

	return slot0._shelterIndex
end

function slot8.GetFriendlyCode(slot0)
	return slot0._friendlyCode
end

function slot8.GetFoeCode(slot0)
	return slot0._foeCode
end

function slot8.GetOppoSideCode(slot0)
	if slot0 == slot0.FRIENDLY_CODE then
		return slot0.FOE_CODE
	else
		if slot0 == slot0.FOE_CODE then
			return slot0.FRIENDLY_CODE
		end
	end

	return
end

function slot8.GetStatistics(slot0)
	return slot0._statistics
end

function slot8.BlockManualCast(slot0, slot1)
	if slot1 then
		slot2 = 1
	else
		slot2 = -1
	end

	for slot6, slot7 in pairs(slot0._fleetList) do
		slot7:SetWeaponBlock(slot2)
	end

	return
end

function slot8.SubmarineStrike(slot0, slot1)
	if slot0:GetFleetByIFF(slot1):GetWeaponBlock() then
		return
	end

	for slot7, slot8 in ipairs(slot3) do
		slot0:InitAidUnitStatistics(slot0:SpawnSub(slot8, slot1))
	end

	slot2:SubWarcry()
	slot2:GetSubList()[1].TriggerBuff(slot5, slot0.BuffEffectType.ON_SUB_LEADER)
	slot2:GetSubAidVO():Cast()

	return
end

return
