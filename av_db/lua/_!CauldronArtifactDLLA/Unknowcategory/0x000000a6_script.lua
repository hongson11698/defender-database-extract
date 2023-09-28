-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!CauldronArtifactDLLA\Unknowcategory\0x000000a6_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("HSTR:Trojan:Win32/CauldronArtifactDLL") then
  return mp.CLEAN
end
return mp.INFECTED

