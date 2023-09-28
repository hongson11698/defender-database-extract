-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6bd73fdabd0e\0x000033fb_luac 

-- params : ...
-- function num : 0
if not isTamperProtectionOn() then
  return mp.LOWFI
end
return mp.INFECTED

