-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\45b3b0ee7432\0x000059a7_luac 

-- params : ...
-- function num : 0
if IsTacticObservedGlobal("uac_bypass") then
  AddResearchData("BM", true)
  return mp.INFECTED
end
return mp.CLEAN

