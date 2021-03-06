FrameListener = class("FrameListener")

function FrameListener.Ctor(slot0)
	slot0.jobs = {}
end

function FrameListener.UnShift(slot0, ...)
	for slot5 = #{
		...
	}, 1, -1 do
		table.insert(slot0.jobs, 1, slot1[slot5])
	end

	slot0:TryStart()
end

function FrameListener.Push(slot0, ...)
	for slot5 = 1, #{
		...
	}, 1 do
		table.insert(slot0.jobs, slot1[slot5])
	end

	slot0:TryStart()
end

function FrameListener.Remove(slot0, slot1)
	for slot5, slot6 in ipairs(slot0.jobs) do
		if slot6 == slot1 then
			table.remove(slot0.jobs, slot5)
			slot0:TryStop()

			break
		end
	end
end

function FrameListener.TryStart(slot0)
	if not slot0.running and #slot0.jobs > 0 then
		slot0.running = true

		UpdateBeat:Add(slot0.Update, slot0)
	end
end

function FrameListener.TryStop(slot0)
	if slot0.running and #slot0.jobs == 0 then
		UpdateBeat:Remove(slot0.Update, slot0)

		slot0.running = false
	end
end

function FrameListener.Update(slot0)
	if #slot0.jobs == 0 then
		slot0:TryStop()
	else
		table.remove(slot0.jobs, 1)()
	end
end

return FrameListener
