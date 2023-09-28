-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1d9b3f8c3772c\0x000005c4_luac 

-- params : ...
-- function num : 0
if IsTechniqueObservedGlobal("ReverseShell", true) then
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN

