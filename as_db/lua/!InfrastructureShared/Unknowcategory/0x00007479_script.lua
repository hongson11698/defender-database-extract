-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007479_luac 

-- params : ...
-- function num : 0
local l_0_3 = nil
if (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME) == nil then
  local l_0_0, l_0_1 = nil
  if l_0_3 == nil then
    return mp.CLEAN
  end
  l_0_0 = l_0_3:sub(-5)
  local l_0_2 = nil
else
  do
    -- DECOMPILER ERROR at PC21: Confused about usage of register: R2 in 'UnsetPending'

    if (string.find)((l_0_1:sub(-5)):lower(), ".asp") then
      return mp.INFECTED
    end
    return mp.LOWFI
  end
end

