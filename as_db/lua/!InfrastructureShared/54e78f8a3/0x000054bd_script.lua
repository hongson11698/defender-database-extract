-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\54e78f8a3\0x000054bd_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:Win32/Banjori.A")
return mp.CLEAN

