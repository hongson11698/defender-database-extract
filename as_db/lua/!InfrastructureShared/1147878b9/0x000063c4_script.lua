-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1147878b9\0x000063c4_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 5 and not (hstrlog[7]).matched then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:TrojanProxy:Win32/Banker.BD")
return mp.LOWFI

