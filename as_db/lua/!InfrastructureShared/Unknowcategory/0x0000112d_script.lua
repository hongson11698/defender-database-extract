-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000112d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  if (string.lower)(l_0_1) == "flashdefaultpack.exe" then
    return mp.CLEAN
  end
  if (string.sub)(l_0_1, -4) ~= ".exe" or (string.len)(l_0_1) ~= 20 then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if (string.sub)(l_0_2, -17) == "\\application data" or (string.sub)(l_0_2, -16) == "\\appdata\\roaming" then
    if (string.byte)(l_0_1) < 65 or (string.byte)(l_0_1) > 90 then
      return mp.CLEAN
    end
    local l_0_3 = (string.len)(l_0_1)
    for l_0_7 = 2, l_0_3 - 4 do
      local l_0_8 = (string.byte)(l_0_1, l_0_7)
      if l_0_8 < 97 or l_0_8 > 122 then
        return mp.CLEAN
      end
    end
    local l_0_9 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILE_ATTRIBUTES)
    if (mp.bitand)(l_0_9, 3) ~= 0 then
      (mp.set_mpattribute)("Lua:DorkbotFileName.A!RH")
      return mp.INFECTED
    end
    ;
    (mp.set_mpattribute)("Lua:DorkbotFileName.A")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

