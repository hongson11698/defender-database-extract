-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000629e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\virtualboxvm.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

