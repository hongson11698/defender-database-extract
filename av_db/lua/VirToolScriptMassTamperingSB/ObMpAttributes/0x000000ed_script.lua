-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\VirToolScriptMassTamperingSB\ObMpAttributes\0x000000ed_luac 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:DisableRTP.STB") >= 5 then
  return mp.INFECTED
end
return mp.CLEAN

