-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000f97_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN then
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_DEVICE_CHARACTERISTICS)
  if l_0_1 == 2305 or l_0_1 == 289 or l_0_1 == 262433 or l_0_1 == 34 or l_0_1 == 35 or l_0_1 == 393249 or l_0_1 == 262435 then
    local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
    if l_0_2:find("^\\device\\cdrom[0-9][0-9]?$") ~= nil then
      local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILE_ATTRIBUTES)
      if (mp.bitand)(l_0_3, 1) == 1 and not peattributes.isdll then
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

