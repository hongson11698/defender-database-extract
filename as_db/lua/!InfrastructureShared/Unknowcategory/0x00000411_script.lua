-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000411_luac 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1 = (string.lower)((mp.getfilename)())
if (string.sub)(l_0_1, -3) == ".js" then
  l_0_0 = true
end
local l_0_2 = (string.sub)(l_0_1, -4)
if l_0_2 == ".jse" then
  l_0_0 = true
end
if (mp.get_mpattribute)("Nscript:Type_js") then
  l_0_0 = true
end
if l_0_0 == false then
  return mp.CLEAN
end
if (mp.getfilesize)() <= 86 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_3 = (mp.readfile)(0, 32)
for l_0_7 = 0, 32 do
  if (string.byte)(l_0_3, l_0_7) == 60 or (string.byte)(l_0_3, l_0_7) == 37 or (string.byte)(l_0_3, l_0_7) == 91 or (string.byte)(l_0_3, l_0_7) == 92 or (string.byte)(l_0_3, l_0_7) == 38 or (string.byte)(l_0_3, l_0_7) == 60 or (string.byte)(l_0_3, l_0_7) == 35 or (string.byte)(l_0_3, l_0_7) == 125 then
    return mp.CLEAN
  end
  if (string.byte)(l_0_3, l_0_7) ~= 32 and (string.byte)(l_0_3, l_0_7) ~= 13 and (string.byte)(l_0_3, l_0_7) ~= 10 and (string.byte)(l_0_3, l_0_7) ~= 9 then
    return mp.INFECTED
  end
end
return mp.INFECTED

