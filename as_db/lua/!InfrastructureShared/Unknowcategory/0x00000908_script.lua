-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000908_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.sub)(l_0_0, -11) == "svchost.exe" or (string.sub)(l_0_0, -12) == "rundll32.exe" or (string.sub)(l_0_0, -12) == "regsvr32.exe" then
  return mp.INFECTED
end
return mp.CLEAN

