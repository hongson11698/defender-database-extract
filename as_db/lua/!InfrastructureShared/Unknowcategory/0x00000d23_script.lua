-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d23_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = l_0_2:len()
if l_0_3 > 14 and l_0_3 < 40 and l_0_2:find("^track_%d+%.exe") == 1 then
  (mp.set_mpattribute)("Lua:SuspiciousPEFileName.C")
end
return mp.CLEAN

