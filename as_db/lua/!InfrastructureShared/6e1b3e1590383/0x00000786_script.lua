-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6e1b3e1590383\0x00000786_luac 

-- params : ...
-- function num : 0
if isTamperProtectionOn() then
  return mp.INFECTED
end
return mp.CLEAN

