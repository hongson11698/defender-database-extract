-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000078f9_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if (mp.getfilesize)() > 6144 or peattributes.ismsil ~= true then
  return mp.CLEAN
end
local l_0_0 = ((pe.get_versioninfo)()).FileVersion
local l_0_1 = ((pe.get_versioninfo)()).ProductVersion
if l_0_0 == nil or l_0_1 == nil then
  return mp.CLEAN
end
if l_0_0 == "0.0.0.0" and l_0_1 == "0.0.0.0" then
  return mp.LOWFI
end
return mp.CLEAN

