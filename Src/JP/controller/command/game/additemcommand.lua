class("AddItemCommand", pm.SimpleCommand).execute = function (slot0, slot1)
	if slot1:getBody().dropType == DROP_TYPE_RESOURCE then
		slot4 = getProxy(PlayerProxy)
		slot5 = slot4:getData()

		slot5:addResources({
			[id2res(slot2.id)] = slot2.count
		})

		slot6 = getProxy(ActivityProxy)

		slot7(slot6:getActivitiesByType(ActivityConst.ACTIVITY_TYPE_PT_RANK))
		slot4:updatePlayer(slot5)

		for slot12, slot13 in ipairs(slot8) do
			if slot2.id == slot13:getDataConfig("pt") and not slot13:isEnd() then
				slot13.data1 = slot2.count + slot13.data1

				slot6:updateActivity(slot13)

				break
			end
		end

		return
	end

	if slot2.dropType == DROP_TYPE_ITEM then
		slot3 = getProxy(BagProxy)

		if Item.New({
			id = slot2.id,
			count = slot2.count
		}):isVirtualItem() then
			if slot4:getConfig("virtual_type") == 0 then
				getProxy(ActivityProxy):addVitemById(slot2.id, slot2.count)
			elseif slot5 == 1 then
				if getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_PUZZLA) and not slot7:isEnd() then
					if not table.contains(slot7.data1_list, slot2.id) then
						table.insert(slot7.data1_list, slot2.id)
					end

					slot6:updateActivity(slot7)
				end
			elseif slot5 == 2 or slot5 == 3 then
				slot6 = getProxy(VoteProxy)

				if slot5 == 2 then
					slot6.votes = slot6.votes + slot4.count
				elseif slot5 == 3 then
					slot6.loves = slot6.loves + slot4.count
				end
			elseif slot5 == 4 then
				slot7[slot4.id] = (getProxy(ColoringProxy).getColorItems(slot6)[slot4.id] or 0) + slot4.count
			elseif slot5 == 6 then
				if getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_REFLUX) then
					slot7.data3 = slot7.data3 + slot2.count

					slot6:updateActivity(slot7)
				end
			elseif slot5 == 7 then
				getProxy(ChapterProxy).remasterTickets = math.min(getProxy(ChapterProxy).remasterTickets + slot2.count, pg.gameset.reactivity_ticket_max.key_value)
			elseif slot5 == 9 then
				slot6 = getProxy(ActivityProxy)

				if getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_MONOPOLY) then
					slot7.data1_list[1] = slot7.data1_list[1] + slot2.count

					slot6:updateActivity(slot7)
				end
			elseif slot5 == 10 then
				slot6 = getProxy(ActivityProxy)

				if getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_MEMORYBOOK) and not table.contains(slot7.data1_list, slot2.id) then
					table.insert(slot7.data1_list, slot2.id)
					slot6:updateActivity(slot7)
				end
			end
		else
			slot3:addItemById(slot2.id, slot2.count)
		end
	elseif slot2.dropType == DROP_TYPE_EQUIP then
		getProxy(EquipmentProxy):addEquipmentById(slot2.id, slot2.count)
	elseif slot2.dropType == DROP_TYPE_SHIP then
	elseif slot2.dropType == DROP_TYPE_FURNITURE then
		slot3 = getProxy(DormProxy)

		if Furniture.New({
			id = slot2.id,
			count = slot2.count
		}):isRecordTime() then
			slot4.date = pg.TimeMgr.GetInstance():GetServerTime()
		end

		slot3:addFurniture(slot4)
	elseif slot2.dropType == DROP_TYPE_SKIN then
		getProxy(BayProxy):addSkin(slot2.id)
	elseif slot2.dropType == DROP_TYPE_EQUIPMENT_SKIN then
		getProxy(EquipmentProxy):addEquipmentSkin(slot2.id, slot2.count)
	elseif slot2.dropType == DROP_TYPE_NPC_SHIP then
		if getProxy(BayProxy):getShipById(slot2.id) then
			slot4:unlockActivityNpc(0)
			slot3:updateShip(slot4)
			getProxy(CollectionProxy):flushCollection(slot4)
		end
	else
		print("can not handle this type>>" .. slot2.dropType)
	end
end

return class("AddItemCommand", pm.SimpleCommand)
