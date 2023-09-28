-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!W3WP_BackdoorDLL\Unknowcategory\0x000000b8_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("HSTR:Trojan:Win32/W3WP_BackdoorDLL") then
  return mp.CLEAN
end
return mp.INFECTED

