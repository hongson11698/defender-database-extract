-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Simda\ObMpAttributes\0x00000068_luac 

-- params : ...
-- function num : 0
if not peattributes.isexe then
  return mp.CLEAN
end
if peattributes.packersigmatched then
  return mp.CLEAN
end
if peattributes.isdriver then
  return mp.CLEAN
end
if peattributes.isvbpcode then
  return mp.CLEAN
end
if peattributes.isvbnative then
  return mp.CLEAN
end
if peattributes.ismsil then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 8 then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 300000 or l_0_0 < 100000 then
  return mp.CLEAN
end
if (mp.get_mpattribute)("RPF:PWS:Win32/Simda.gen!B") then
  return mp.INFECTED
end
return mp.CLEAN

