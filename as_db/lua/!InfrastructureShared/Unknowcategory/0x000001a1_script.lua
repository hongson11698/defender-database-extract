-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000001a1_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_0, "[TaskCommand]", 1, true) then
  (mp.set_mpattribute)("Lua:TaskCommandContext")
  return mp.INFECTED
end
return mp.CLEAN

