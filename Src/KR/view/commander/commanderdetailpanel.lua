slot0 = class("CommanderDetailPanel", import("..base.BasePanel"))

function slot0.init(slot0)
	slot0.skillFrameTF = slot0:findTF("skill")
	slot0.statementTF = slot0:findTF("statement")
	slot0.abilityTF = slot0:findTF("mask/ability/attrs", slot0.statementTF)
	slot1 = slot0:findTF("mask/ability/talents/talentist/content", slot0.statementTF)
	slot0.talentList = UIItemList.New(slot1, slot1:GetChild(0))
	slot0.talentPoint = slot0:findTF("mask/ability/talents/talent_title/point/Text", slot0.statementTF):GetComponent(typeof(Text))
	slot0.descTF = slot0:findTF("mask/desc", slot0.statementTF)
	slot0.descTF.anchoredPosition3D = Vector3(0, -500, 0)
	slot0.abilityAdditionTF = slot0:findTF("mask/desc/atttrs/content", slot0.statementTF)
	slot0.talentAdditionTF = slot0:findTF("mask/desc/talents/scroll/content", slot0.statementTF)
	slot0.talentAdditionList = UIItemList.New(slot0.talentAdditionTF, slot0.talentAdditionTF:GetChild(0))
	slot0.talentAdditionTextList = {}
	slot0.skillTF = slot0:findTF("frame", slot0.skillFrameTF)
	slot0.skillIcon = slot0:findTF("icon/Image", slot0.skillTF)
	slot0.nameTxt = slot0:findTF("frame/name_bg/Text", slot0.skillFrameTF):GetComponent(typeof(Text))
	slot0.skillExpSlider = slot0:findTF("frame/name_bg/slider", slot0.skillFrameTF):GetComponent(typeof(Slider))
	slot0.skillLevelTxt = slot0:findTF("frame/name_bg/slider/Text", slot0.skillFrameTF):GetComponent(typeof(Text))
	slot0.skillDescTF = slot0:findTF("desc/intro_view/Viewport/introTF", slot0.skillTF)
	slot0.skillDescContent = slot0:findTF("desc/intro_view/Viewport/content", slot0.skillTF)
	slot0.expansionBtn = slot0:findTF("mask/ability/talents/expansion_btn", slot0.statementTF)
	slot0.shrinkBtn = slot0:findTF("expansion_btn", slot0.descTF)
end

function slot0.attach(slot0, slot1, slot2)
	slot0.super.attach(slot0, slot1)

	slot0.mode = slot2

	onButton(slot0, slot0.expansionBtn, function ()
		slot0:doExpansionAnim(-500, 0)
	end, SFX_PANEL)
	onButton(slot0, slot0.shrinkBtn, function ()
		slot0:doExpansionAnim(0, -500)
	end, SFX_PANEL)

	if slot2 == CommandRoomScene.MODE_SELECT then
		triggerButton(slot0.expansionBtn)
	end
end

function slot0.doExpansionAnim(slot0, slot1, slot2)
	if LeanTween.isTweening(go(slot0.descTF)) then
		LeanTween.cancel(go(slot0.descTF))
	end

	LeanTween.value(go(slot0.descTF), slot1, slot2, 0.2):setOnUpdate(System.Action_float(function (slot0)
		slot0.descTF.anchoredPosition3D = Vector3(0, slot0, 0)
	end))
end

function slot0.update(slot0, slot1)
	slot0.commanderVO = slot1

	slot0:updateAbility()
	slot0:updateTalents()
	slot0:updateSkills()
end

function slot0.updateAbility(slot0)
	for slot6, slot7 in pairs(slot2) do
		slot8 = slot0.abilityTF:Find(slot6)
		slot8:Find("slider"):GetComponent(typeof(Slider)).value = slot7.value / CommanderConst.MAX_ABILITY

		setText(slot8:Find("slider/point"), slot7.value)
	end

	slot0:updateAbilityAddition()
end

function slot0.updateAbilityAddition(slot0)
	slot3 = 0

	for slot7, slot8 in pairs(slot2) do
		if slot8 > 0 then
			slot9 = slot0.abilityAdditionTF:GetChild(slot3)

			GetImageSpriteFromAtlasAsync("attricon", slot7, slot9:Find("bg/icon"), false)
			setText(slot9:Find("bg/name"), AttributeType.Type2Name(slot7))

			slot10 = string.format("%0.3f", slot8)

			setText(slot9:Find("bg/value"), "+" .. math.floor(slot8 * 1000) / 1000 .. "%")

			slot3 = slot3 + 1
		end
	end
end

function slot0.updateTalents(slot0)
	function slot1(slot0, slot1)
		setText(slot1:Find("Text"), slot0:getConfig("name"))
		GetImageSpriteFromAtlasAsync("CommanderTalentIcon/" .. slot0:getConfig("icon"), "", slot1)
	end

	slot0.talentList:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			slot0(slot1[slot1 + 1], slot2)
			onButton(slot2, slot2, function ()
				slot0.parent:openTreePanel(slot1[slot2 + 1])
			end, SFX_PANEL)
		end
	end)
	slot0.talentList:align(#slot0.commanderVO.getTalents(slot2))

	slot0.talentPoint.text = slot0.commanderVO:getTalentPoint()

	slot0:updateTalentAddition()
end

function slot0.updateTalentAddition(slot0)
	slot0.talentAdditionList:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			slot3 = slot0[slot1 + 1]

			if not slot1.talentAdditionTextList[slot1 + 1] then
				slot1.talentAdditionTextList[slot1 + 1] = ScrollTxt.New(findTF(slot2, "bg/name_mask"), findTF(slot2, "bg/name_mask/name"), true)
			end

			slot1.talentAdditionTextList[slot1 + 1]:setText(slot3.name)
			setText(slot2:Find("bg/value"), ((slot3.value > 0 and "+") or "") .. slot3.value .. ((slot3.type == CommanderConst.TALENT_ADDITION_RATIO and "%") or ""))

			slot2:Find("bg"):GetComponent(typeof(Image)).enabled = slot1 % 2 ~= 0
		end
	end)
	slot0.talentAdditionList:align(#_.values(slot0.commanderVO.getTalentsDesc(slot1)))
end

function slot0.updateSkills(slot0)
	slot0.nameTxt.text = slot0.commanderVO.getSkills(slot1)[1].getConfig(slot3, "name")
	slot4 = slot0.commanderVO.getSkills(slot1)[1].getConfig(slot3, "lv")

	setActive(slot0.skillDescTF, false)

	for slot8 = 0, slot0.skillDescContent.childCount - 1, 1 do
		setActive(slot0.skillDescContent:GetChild(slot8), false)
	end

	for slot8, slot9 in ipairs(slot3:getConfig("desc")) do
		slot10 = nil

		setActive((slot8 > slot0.skillDescContent.childCount or slot0.skillDescContent:GetChild(slot8 - 1)) and cloneTplTo(slot0.skillDescTF, slot0.skillDescContent), true)
		setText(findTF((slot8 > slot0.skillDescContent.childCount or slot0.skillDescContent.GetChild(slot8 - 1)) and cloneTplTo(slot0.skillDescTF, slot0.skillDescContent), "Lv"), (slot4 < slot9[1] and "<color=#a3a2a2>" .. "Lv." .. slot9[1] .. "</color>") or "Lv." .. slot9[1])
		setText(findTF((slot8 > slot0.skillDescContent.childCount or slot0.skillDescContent.GetChild(slot8 - 1)) and cloneTplTo(slot0.skillDescTF, slot0.skillDescContent), "Desc"), (slot4 < slot9[1] and "<color=#a3a2a2>" .. slot9[2] .. "</color>") or slot9[2])
	end

	if slot3:isMaxLevel() then
		slot0.skillExpSlider.value = 1
	else
		slot0.skillExpSlider.value = slot3.exp / slot3:getNextLevelExp()
	end

	slot0.skillLevelTxt.text = "Lv." .. slot3:getLevel()

	GetImageSpriteFromAtlasAsync("commanderskillicon/" .. slot3:getConfig("icon"), "", slot0.skillIcon)
end

function slot0.exit(slot0)
	return
end

return slot0
