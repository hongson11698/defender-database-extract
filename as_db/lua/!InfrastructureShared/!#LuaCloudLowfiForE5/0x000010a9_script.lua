-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaCloudLowfiForE5\0x000010a9_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC52: Unhandled construct in 'MakeBoolean' P3

if ((mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.bitand)((mp.get_contextdata)(mp.CONTEXT_DATA_DEVICE_CHARACTERISTICS), 264193) == 264193) or (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  if l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_1 = {}
  l_0_1[".hta"] = true
  l_0_1[".js"] = true
  l_0_1[".jse"] = true
  l_0_1[".ps1"] = true
  l_0_1[".vbs"] = true
  l_0_1[".vbe"] = true
  l_0_1[".wsh"] = true
  do
    do
      if (l_0_0:sub(-5)):match("(%.%w+)$") ~= nil or not "" then
        local l_0_3, l_0_4 = ((l_0_0:sub(-5)):match("(%.%w+)$")):lower()
      end
      -- DECOMPILER ERROR at PC79: Confused about usage of register: R2 in 'UnsetPending'

      -- DECOMPILER ERROR at PC85: Confused about usage of register: R2 in 'UnsetPending'

      if l_0_1[l_0_3] == true then
        (mp.set_mpattribute)("Lua:CloudLowfiForE5!" .. l_0_3:sub(2))
      end
      return mp.CLEAN
    end
  end
end

