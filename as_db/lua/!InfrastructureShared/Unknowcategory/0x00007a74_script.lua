-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007a74_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if (string.find)(l_0_0, "->[XLMSharedStrings]", -20, true) ~= nil then
  return mp.CLEAN
end
local l_0_1 = ((mp.GetNormalizedScript)(true))
local l_0_2 = nil
l_0_1 = (string.gsub)(l_0_1, "\"&amp;\"", "")
if l_0_2 > 3 then
  (mp.vfo_add_buffer)(l_0_1, "[XLMSharedStrings]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  return mp.INFECTED
end
return mp.CLEAN

