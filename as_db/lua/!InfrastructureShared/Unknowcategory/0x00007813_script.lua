-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007813_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 then
  if (string.find)(l_0_0, "\\openfiles.exe", 1, true) or (string.find)(l_0_0, "\\microsoft\\teams\\current\\teams.exe", 1, true) then
    return mp.CLEAN
  end
  ;
  (bm.add_action)("EmsScan", 5000)
  return mp.INFECTED
end
return mp.CLEAN

