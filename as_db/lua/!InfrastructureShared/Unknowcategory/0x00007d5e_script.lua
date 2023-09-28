-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d5e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 98304 then
  return mp.CLEAN
end
if l_0_0 < 81920 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
if (string.find)(l_0_1, "\n", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.match)(l_0_1, "%(function%((%x%x%x%x%x%x%x%x%x%x+),(%x%x%x%x%x%x%x%x%x%x+),(%x%x%x%x%x%x%x%x%x%x+),(%x%x%x%x%x%x%x%x%x%x+),(%x%x%x%x%x%x%x%x%x%x+),(%x%x%x%x%x%x%x%x%x%x+)") == nil then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("SCRIPT:Worm:JS/Proslikefan_Lowfi3")
return mp.CLEAN

