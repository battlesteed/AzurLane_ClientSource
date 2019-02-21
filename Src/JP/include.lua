pg = pg or {}
ys = ys or {}

require("localConfig")
require("const")
require("config")
setmetatable(pg, {
	__index = function (slot0, slot1)
		if ShareCfg["ShareCfg." .. slot1] then
			require(slot2)

			return rawget(pg, slot1)
		end
	end
})

BVCurIndex = 1
BVLastIndex = 1

require("Framework/Include")
require("Support/Include")
require("Net/Include")
require("Mgr/Include")
require("GameCfg/Include")
require("Mod/Battle/Include")
require("skillCfg")
require("buffCfg")
require("genVertify")
require("buffFXPreloadList")

return
