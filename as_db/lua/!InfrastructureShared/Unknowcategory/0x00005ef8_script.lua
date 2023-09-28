-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005ef8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 and (string.find)((string.lower)(l_0_0), "\\chromium\\", 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN

