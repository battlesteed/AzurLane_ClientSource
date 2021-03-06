slot0 = class("TransportAIAction", import(".BaseVO"))

function slot0.Ctor(slot0, slot1)
	slot0.line = {
		row = slot1.ai_pos.row,
		column = slot1.ai_pos.column
	}
	slot0.movePath = _.map(slot1.move_path, function (slot0)
		return {
			row = slot0.row,
			column = slot0.column
		}
	end)
	slot0.hp = _.detect(slot1.map_update, function (slot0)
		return slot0.item_type == ChapterConst.AttachTransport
	end) and slot2.item_data
end

function slot0.applyTo(slot0, slot1, slot2)
	if slot1:getFleet(FleetType.Transport, slot0.line.row, slot0.line.column) then
		return slot0:applyToFleet(slot1, slot3, slot2)
	end

	return false, "can not find any transport at: [" .. slot0.line.row .. ", " .. slot0.line.column .. "]"
end

function slot0.applyToFleet(slot0, slot1, slot2, slot3)
	slot4 = 0

	if not slot2:isValid() then
		return false, "fleet " .. slot2.id .. " is invalid."
	end

	slot5 = 0

	if #slot0.movePath > 0 then
		if _.any(slot0.movePath, function (slot0)
			return not slot0:getChapterCell(slot0.row, slot0.column) or not slot1.walkable
		end) then
			return false, "invalide move path"
		end

		if not slot3 then
			slot2.line = {
				row = slot0.movePath[#slot0.movePath].row,
				column = slot0.movePath[#slot0.movePath].column
			}
			slot5 = bit.bor(slot5, ChapterConst.DirtyFleet, ChapterConst.DirtyAttachment, ChapterConst.DirtyChampion)
		end
	end

	if slot0.hp and not slot3 then
		slot2:setRestHp(slot0.hp)

		slot5 = bit.bor(slot5, ChapterConst.DirtyFleet)

		if slot1:getChapterCell(slot2.line.row, slot2.line.column) and slot6.attachment == ChapterConst.AttachBox and slot6.flag ~= 1 and pg.box_data_template[slot6.attachmentId].type == ChapterConst.BoxTorpedo then
			slot6.flag = 1

			slot1:updateChapterCell(slot6)

			slot5 = bit.bor(slot5, ChapterConst.DirtyAttachment)
		end
	end

	return true, slot5
end

return slot0
