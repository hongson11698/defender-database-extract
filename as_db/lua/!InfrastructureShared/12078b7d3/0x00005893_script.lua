-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\12078b7d3\0x00005893_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 8 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:TrojanProxy:Win32/Banker.AU")
return mp.LOWFI

