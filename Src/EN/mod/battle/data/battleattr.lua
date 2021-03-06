ys = ys or {}
ys.Battle.BattleAttr = {
	AttrListInheritance = {
		"level",
		"srcShipType",
		"formulaLevel",
		"repressReduce",
		"airPower",
		"antiSubPower",
		"loadSpeed",
		"attackRating",
		"dodgeRate",
		"velocity",
		"luck",
		"cri",
		"criDamage",
		"criDamageResist",
		"hiveExtraHP",
		"bulletSpeedRatio",
		"torpedoSpeedExtra",
		"damageRatioBullet",
		"damageEnhanceProjectile",
		"healingEnhancement",
		"injureRatio",
		"injureRatioByCannon",
		"injureRatioByBulletTorpedo",
		"injureRatioByAir",
		"damageRatioByCannon",
		"damageRatioByBulletTorpedo",
		"damageRatioByAir",
		"damagePreventRantTorpedo",
		"dodgeRateExtra",
		"perfectDodge",
		"immuneDirectHit",
		"chargeBulletAccuracy",
		"dropBombAccuracy",
		"aircraftBooster",
		"manualEnhancement",
		"initialEnhancement"
	},
	InsertInheritedAttr = function (slot0)
		for slot4, slot5 in pairs(slot0) do
			slot0.AttrListInheritance[#slot0.AttrListInheritance + 1] = slot5
		end
	end,
	SetAttr = function (slot0, slot1)
		slot0._attr = setmetatable({}, {
			__index = slot1
		})
	end,
	GetAttr = function (slot0)
		return slot0._attr
	end,
	SetBaseAttr = function (slot0)
		slot0._baseAttr = Clone(slot0._attr)
	end,
	IsInvincible = function (slot0)
		return slot0._attr.isInvincible and slot1 > 0
	end,
	Whosyourdaddy = function (slot0)
		slot0._attr.isInvincible = (slot0._attr.isInvincible or 0) + 1
	end,
	Imyourson = function (slot0)
		slot0._attr.isInvincible = (slot0._attr.isInvincible or 0) - 1
	end,
	AddImmuneAreaLimit = function (slot0, slot1)
		slot0._attr.immuneAreaLimit = (slot0._attr.immuneAreaLimit or 0) + slot1

		slot0._move:ImmuneAreaLimit((slot0._attr.immuneAreaLimit or 0) + slot1 > 0)
	end,
	AddImmuneMaxAreaLimit = function (slot0, slot1)
		slot0._attr.immuneMaxAreaLimit = (slot0._attr.immuneMaxAreaLimit or 0) + slot1

		slot0._move:ImmuneMaxAreaLimit((slot0._attr.immuneMaxAreaLimit or 0) + slot1 > 0)
	end,
	IsImmuneAreaLimit = function (slot0)
		return slot0._attr.immuneAreaLimit and slot1 > 0
	end,
	IsImmuneMaxAreaLimit = function (slot0)
		return slot0._attr.immuneMaxAreaLimit and slot1 > 0
	end,
	IsVisitable = function (slot0)
		return not slot0._attr.isUnVisitable or slot1 <= 0
	end,
	UnVisitable = function (slot0)
		slot0._attr.isUnVisitable = (slot0._attr.isUnVisitable or 0) + 1
	end,
	Visitable = function (slot0)
		slot0._attr.isUnVisitable = (slot0._attr.isUnVisitable or 0) - 1
	end,
	IsSpirit = function (slot0)
		return slot0._attr.isSpirit and slot1 > 0
	end,
	Spirit = function (slot0)
		slot0._attr.isSpirit = (slot0._attr.isSpirit or 0) + 1
	end,
	Entity = function (slot0)
		slot0._attr.isSpirit = (slot0._attr.isSpirit or 0) - 1
	end,
	IsStun = function (slot0)
		return slot0._attr.isStun and slot1 > 0
	end,
	Stun = function (slot0)
		slot0._attr.isStun = (slot0._attr.isStun or 0) + 1
	end,
	CancelStun = function (slot0)
		slot0._attr.isStun = (slot0._attr.isStun or 0) - 1
	end,
	SetPlayerAttrFromOutBattle = function (slot0, slot1)
		slot0._attr = slot0._attr or {}
		slot0._attr or .id = slot1.id
		slot0._attr or .battleUID = slot0:GetUniqueID()
		slot0._attr or .level = slot1.level
		slot0._attr or .formulaLevel = slot1.level
		slot0._attr or .maxHP = slot1.durability
		slot0._attr or .cannonPower = slot1.cannon
		slot0._attr or .torpedoPower = slot1.torpedo
		slot0._attr or .antiAirPower = slot1.antiaircraft
		slot0._attr or .antiSubPower = slot1.antisub
		slot0._attr or .airPower = slot1.air
		slot0._attr or .loadSpeed = slot1.reload
		slot0._attr or .armorType = slot1.armorType
		slot0._attr or .attackRating = slot1.hit
		slot0._attr or .dodgeRate = slot1.dodge
		slot0._attr or .velocity = ys.Battle.BattleFormulas.ConvertShipSpeed(slot1.speed)
		slot0._attr or .luck = slot1.luck
		slot0._attr or .repressReduce = slot0:GetRepressReduce()
		slot0._attr or .oxyMax = slot1.oxy_max
		slot0._attr or .oxyCost = slot1.oxy_cost
		slot0._attr or .oxyRecovery = slot1.oxy_recovery
		slot0._attr or .oxyAtkDuration = slot1.attack_duration
		slot0._attr or .raidDist = slot1.raid_distance
		slot0._attr or .sonarRange = slot1.sonarRange or 0
		slot0._attr or .sonarInterval = slot1.sonarInterval or 0
		slot0._attr or .sonarDuration = slot1.sonarDuration or 0
		slot0._attr or .comboTag = "combo_" .. slot0._attr or .battleUID

		slot0:SetBaseAttr()
	end,
	InitDOTAttr = function (slot0, slot1)
		slot2 = ys.Battle.BattleConfig.DOT_CONFIG_DEFAULT

		for slot7, slot8 in ipairs(slot3) do
			for slot12, slot13 in pairs(slot8) do
				if slot12 == "hit" then
					slot0[slot13] = slot1[slot13] or slot2[slot12]
				else
					slot0[slot13] = slot2[slot12]
				end
			end
		end
	end,
	SetEnemyAttr = function (slot0, slot1)
		slot2 = slot0._tmpData
		slot3 = slot0._level or 1
		slot0._attr = slot0._attr or {}
		slot0._attr or .battleUID = slot0:GetUniqueID()
		slot0._attr or .level = slot0._level or 1
		slot0._attr or .formulaLevel = math.max(1, (slot0._level or 1) - (slot1 or 0))
		slot0._attr or .maxHP = slot0._tmpData.durability + slot0._tmpData.durability_growth * ((slot0._level or 1) - 1) / 1000
		slot0._attr or .cannonPower = slot0._tmpData.cannon + slot0._tmpData.cannon_growth * ((slot0._level or 1) - 1) / 1000
		slot0._attr or .torpedoPower = slot0._tmpData.torpedo + slot0._tmpData.torpedo_growth * ((slot0._level or 1) - 1) / 1000
		slot0._attr or .antiAirPower = slot0._tmpData.antiaircraft + slot0._tmpData.antiaircraft_growth * ((slot0._level or 1) - 1) / 1000
		slot0._attr or .airPower = slot0._tmpData.air + slot0._tmpData.air_growth * ((slot0._level or 1) - 1) / 1000
		slot0._attr or .antiSubPower = slot0._tmpData.antisub + slot0._tmpData.antisub_growth * ((slot0._level or 1) - 1) / 1000
		slot0._attr or .loadSpeed = slot0._tmpData.reload + slot0._tmpData.reload_growth * ((slot0._level or 1) - 1) / 1000
		slot0._attr or .armorType = slot0._tmpData.armor_type
		slot0._attr or .attackRating = slot0._tmpData.hit + slot0._tmpData.hit_growth * ((slot0._level or 1) - 1) / 1000
		slot0._attr or .dodgeRate = slot0._tmpData.dodge + slot0._tmpData.dodge_growth * ((slot0._level or 1) - 1) / 1000
		slot0._attr or .velocity = ys.Battle.BattleFormulas.ConvertShipSpeed(slot0._tmpData.speed + slot0._tmpData.speed_growth * ((slot0._level or 1) - 1) / 1000)
		slot0._attr or .luck = slot0._tmpData.luck + slot0._tmpData.luck_growth * ((slot0._level or 1) - 1) / 1000
		slot0._attr or .bulletSpeedRatio = 0
		slot0._attr or .id = "enemy_" .. tostring(slot0._tmpData.id)
		slot0._attr or .repressReduce = 1
		slot0._attr or .comboTag = "combo_" .. slot0._attr or .battleUID

		slot0:SetBaseAttr()

		return

		slot3 = 1
		slot4 = 
		slot1 = 0
	end,
	SetAircraftAttFromMother = function (slot0, slot1)
		if not slot0._attr then
			slot2 = {}
		end

		slot0._attr = slot2
		slot2.battleUID = slot0:GetUniqueID()
		slot2.hostUID = slot1:GetUniqueID()

		if type(slot1._attr.id) == "number" then
			slot2.id = slot1._attr.id
		end

		for slot6, slot7 in ipairs(slot0.AttrListInheritance) do
			slot2[slot7] = slot1._attr[slot7]
		end

		slot2.cannonPower = slot2.airPower
		slot2.torpedoPower = slot2.airPower
		slot2.antiAirPower = slot2.airPower
		slot2.armorType = 0
		slot2.comboTag = "combo_" .. slot2.hostUID

		return
	end,
	SetAircraftAttFromTemp = function (slot0)
		if not slot0._attr then
			slot1 = {}
		end

		slot0._attr = slot1
		slot1 = slot0:GetCurrent("hiveExtraHP")
		slot2 = slot0._attr

		if not slot0._attr.velocity then
			slot3 = ys.Battle.BattleFormulas.ConvertAircraftSpeed(slot0._tmpData.speed)
		end

		slot2.velocity = slot3

		if not slot0._attr.level then
			slot2 = 1
		end

		slot3 = slot0._attr

		if not slot0._attr.maxHP then
			slot4 = slot0._tmpData.max_hp + slot0._tmpData.hp_growth / 1000 * (slot2 - 1) + slot1
		end

		slot3.maxHP = slot4
		slot0._attr.crashDMG = slot0._tmpData.crash_DMG
		slot0._attr.dodge = slot0._tmpData.dodge
		slot0._attr.dodgeLimit = slot0._tmpData.dodge_limit

		return
	end,
	FlashByBuff = function (slot0, slot1, slot2)
		slot3 = slot0._attr

		if not slot0._baseAttr[slot1] then
			slot4 = 0
		end

		slot3[slot1] = slot2 + slot4

		return
	end,
	FlashVelocity = function (slot0, slot1)
		slot0:SetCurrent("velocity", Mathf.Clamp(slot1 + slot0._baseAttr.velocity, slot3, slot2))

		return
	end,
	HasSonar = function (slot0)
		if slot0._attr.sonarRange * slot0._attr.sonarInterval * slot0._attr.sonarDuration == 0 then
			slot2 = false
		else
			slot2 = true
		end

		return slot2
	end,
	SetCurrent = function (slot0, slot1, slot2)
		slot0._attr[slot1] = slot2

		return
	end,
	GetCurrent = function (slot0, slot1)
		if not slot0._attr[slot1] then
			slot2 = 0
		end

		return slot2
	end,
	GetBase = function (slot0, slot1)
		if not slot0._baseAttr[slot1] then
			slot2 = 0
		end

		return slot2
	end,
	Increase = function (slot0, slot1, slot2)
		if slot2 then
			slot3 = slot0._attr

			if not slot0._attr[slot1] then
				slot4 = 0
			end

			slot3[slot1] = slot4 + slot2
		end

		return
	end,
	RatioIncrease = function (slot0, slot1, slot2)
		if slot2 then
			slot0._attr[slot1] = slot0._attr[slot1] + (slot0._baseAttr[slot1] * slot2) / 10000
		end

		return
	end
}
slot1 = ys.Battle.BattleConst

()["InsertInheritedAttr"](ys.Battle.BattleConfig.NATIONNALITY_DAMAGE_ENHANCE)
()["InsertInheritedAttr"](ys.Battle.BattleConfig.AMMO_DAMAGE_ENHANCE)
()["InsertInheritedAttr"](ys.Battle.BattleConfig.AMMO_DAMAGE_REDUCE)
()["InsertInheritedAttr"](ys.Battle.BattleConfig.SHIP_TYPE_DAMAGE_ENHANCE)
()["InsertInheritedAttr"](ys.Battle.BattleConfig.SHIP_TYPE_ACCURACY_ENHANCE)
()["InsertInheritedAttr"](ys.Battle.BattleConfig.ANTI_AIR_DAMAGE_ENHANCE_FROM_SHIP_TYPE)

function ys.Battle.BattleAttr.SetAirFighterAttr(slot0, slot1)
	if not slot0._attr then
		slot2 = {}
	end

	slot0._attr = slot2
	slot3 = ys.Battle.BattleDataProxy.GetInstance()
	slot2.battleUID = slot0:GetUniqueID()
	slot2.hostUID = 0
	slot2.id = 0
	slot2.level = slot3:GetDungeonLevel()
	slot2.formulaLevel = slot3.GetDungeonLevel()

	if slot3:IsCompletelyRepress() then
		slot2.formulaLevel = math.max(slot2.formulaLevel - 10, 1)
	end

	slot2.maxHP = math.floor(slot1.max_hp + slot1.hp_growth * (slot4 - 1) / 1000)
	slot2.attackRating = slot1.accuracy + slot1.ACC_growth * (slot4 - 1) / 1000
	slot2.dodge = slot1.dodge
	slot2.dodgeLimit = slot1.dodge_limit
	slot2.cannonPower = slot1.attack_power + slot1.AP_growth * (slot4 - 1) / 1000
	slot2.torpedoPower = slot1.attack_power + slot1.AP_growth * (slot4 - 1) / 1000
	slot2.antiAirPower = slot1.attack_power + slot1.AP_growth * (slot4 - 1) / 1000
	slot2.antiSubPower = slot1.attack_power + slot1.AP_growth * (slot4 - 1) / 1000
	slot2.airPower = slot1.attack_power + slot1.AP_growth * (slot4 - 1) / 1000
	slot2.loadSpeed = 0
	slot2.armorType = 1
	slot2.dodgeRate = 0
	slot2.luck = 50
	slot2.velocity = ys.Battle.BattleFormulas.ConvertAircraftSpeed(slot1.speed)
	slot2.repressReduce = 1
	slot2.crashDMG = slot1.crash_DMG

	return
end

return
