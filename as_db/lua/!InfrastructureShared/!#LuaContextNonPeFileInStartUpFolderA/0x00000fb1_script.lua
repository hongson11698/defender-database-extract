-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextNonPeFileInStartUpFolderA\0x00000fb1_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
if l_0_0 == nil or #l_0_0 < 4 then
  return mp.CLEAN
end
local l_0_1 = {}
l_0_1.js = true
l_0_1.jse = true
l_0_1.vbs = true
l_0_1.vbe = true
l_0_1.wsf = true
l_0_1.jar = true
l_0_1.hta = true
l_0_1.lnk = true
l_0_1.cmd = true
l_0_1.bat = true
l_0_1.doc = true
l_0_1.docm = true
l_0_1.docx = true
l_0_1.xls = true
l_0_1.xlsx = true
local l_0_2 = (string.match)(l_0_0, "([^\\%.]+)$")
if l_0_2 == nil or #l_0_2 < 2 or l_0_1[l_0_2] ~= true then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:Context/NonPeFileInStartUpFolder.A!" .. l_0_2)
return mp.INFECTED

