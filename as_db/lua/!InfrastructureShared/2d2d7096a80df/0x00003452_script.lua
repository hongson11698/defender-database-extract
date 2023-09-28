-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2d2d7096a80df\0x00003452_luac 

-- params : ...
-- function num : 0
if not isTamperProtectionOn() then
  return mp.LOWFI
end
return mp.INFECTED

