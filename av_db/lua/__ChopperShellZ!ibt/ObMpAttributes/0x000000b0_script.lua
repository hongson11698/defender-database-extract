-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\__ChopperShellZ!ibt\ObMpAttributes\0x000000b0_luac 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:HafniumShell") >= 6 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN

