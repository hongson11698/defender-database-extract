-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaNewDiagCabFile\0x00006379_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 ~= nil and (l_0_0:lower()):match("%.diagcab$") then
  return mp.INFECTED
end
return mp.CLEAN

