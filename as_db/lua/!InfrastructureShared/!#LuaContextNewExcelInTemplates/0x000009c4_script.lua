-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextNewExcelInTemplates\0x000009c4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
if StringEndsWith(l_0_0, "microsoft office (x86)\\templates") or StringEndsWith(l_0_0, "microsoft office\\templates") or StringEndsWith(l_0_0, "microsoft office\\root\\templates") then
  (mp.set_mpattribute)("Lua:Context/NewExcelInTemplates")
end
return mp.CLEAN

