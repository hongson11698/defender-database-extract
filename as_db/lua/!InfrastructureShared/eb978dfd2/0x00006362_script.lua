-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\eb978dfd2\0x00006362_luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("HSTR:Virtool:Win32/Obfuscator.ACP")
if mp.HSTR_WEIGHT > 1 then
  return mp.SUSPICIOUS
end
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan")
return mp.CLEAN

