-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextualWDAGFilePromotionC\0x00000cb6_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if l_0_0 and (sysio.IsFileExists)(l_0_1) then
  (mp.ReportLowfi)(l_0_1, 3167174242)
  return mp.INFECTED
end
return mp.CLEAN

