-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b20_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("InEmail") then
  return mp.CLEAN
end
local l_0_0 = (mp.GetBruteMatchData)()
local l_0_1 = ((mp.GetNormalizedScript)(l_0_0.is_header)):lower()
if l_0_1 == nil or #l_0_1 < 600 then
  return mp.CLEAN
end
if (MpCommon.StringRegExpSearch)("\\+([\\w]+)\\((?:\\d+|0x[\\da-f]+)\\)((\\+\\1\\((?:\\d+|0x[\\da-f]+)\\)|\\+\'[\\w\\/\\+]+\')+)", l_0_1) == true and #l_0_1 > 600 then
  return mp.INFECTED
end
return mp.CLEAN

