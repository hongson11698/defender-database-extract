-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d35_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0:find("\\tester\\desktop\\", 1, true) == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.GetMachineGUID)())
if l_0_1 == "7a496f2d-4886-4d2e-b6bd-e1ca409f2482" or l_0_1 == "0f3737a3-48f5-425e-a254-fdebf2d0d282" then
  return mp.INFECTED
end
return mp.CLEAN

