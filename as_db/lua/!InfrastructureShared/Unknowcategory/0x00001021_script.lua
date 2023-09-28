-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001021_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  if l_0_1 == "svchost.exe" then
    local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
    if (string.sub)(l_0_2, -17) == "\\application data" or (string.sub)(l_0_2, -16) == "\\appdata\\roaming" then
      (mp.set_mpattribute)("Lua:SuspDropped_svchost.A")
      local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILE_ATTRIBUTES)
      if (mp.bitand)(l_0_3, 3) ~= 0 then
        (mp.set_mpattribute)("Lua:SuspDropped_svchost.A!RH")
      end
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

