-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d09_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((bm.get_imagepath)(), -13))
if (string.find)(l_0_0, "\\excel.exe", 1, true) or (string.find)(l_0_0, "\\powerpnt.exe", 1, true) or (string.find)(l_0_0, "\\winword.exe", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

