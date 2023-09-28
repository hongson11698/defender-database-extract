-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\TrojanWin64HeapPrivateKeysDetectorA\Unknowcategory\0x000000e8_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("HSTR:MitreTechnique.T1552_004_PrivateKeys") then
  return mp.CLEAN
end
return mp.INFECTED

