-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\118b36ed2c32d\0x000005ba_luac 

-- params : ...
-- function num : 0
local l_0_0 = 30000000
local l_0_1 = (bm.GetSignatureMatchDuration)()
if l_0_0 < l_0_1 then
  return mp.CLEAN
end
reportRelatedBmHits()
addRelatedProcess()
return mp.INFECTED

