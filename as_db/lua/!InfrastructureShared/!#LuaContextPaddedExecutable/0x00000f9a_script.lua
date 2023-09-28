-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextPaddedExecutable\0x00000f9a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 268435456 then
  return mp.CLEAN
end
local l_0_1 = pehdr.NumberOfSections
local l_0_2 = (pesecs[l_0_1]).PointerToRawData
local l_0_3 = (pesecs[l_0_1]).SizeOfRawData
local l_0_4 = l_0_2 + l_0_3
if l_0_0 <= l_0_4 then
  return mp.CLEAN
end
local l_0_5 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).RVA
local l_0_6 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).Size
if l_0_5 < l_0_4 then
  return mp.CLEAN
end
local l_0_7 = 0
if l_0_5 == 0 then
  l_0_7 = l_0_0 - l_0_4
else
  if l_0_5 == l_0_4 then
    l_0_7 = l_0_0 - (l_0_4 + l_0_6)
  else
    if l_0_4 < l_0_5 then
      l_0_7 = l_0_5 - l_0_4
    else
      return mp.CLEAN
    end
  end
end
if (l_0_7) * 100 / l_0_0 > 90 then
  return mp.INFECTED
end
return mp.CLEAN

