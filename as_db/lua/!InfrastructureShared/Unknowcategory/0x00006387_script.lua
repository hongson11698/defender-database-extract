-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006387_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 ~= nil and (string.find)((string.lower)((mp.getfilename)()), ".php") and l_0_0 > 1400 and l_0_0 < 2200 then
  return mp.INFECTED
end
return mp.CLEAN

