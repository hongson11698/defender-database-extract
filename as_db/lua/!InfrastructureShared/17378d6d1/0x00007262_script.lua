-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\17378d6d1\0x00007262_luac 

-- params : ...
-- function num : 0
if not peattributes.isvbnative and not peattributes.isvbpcode and not peattributes.isexe then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 253 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:TrojanSpy:Win32/VBBanker_lowfi")
return mp.CLEAN

