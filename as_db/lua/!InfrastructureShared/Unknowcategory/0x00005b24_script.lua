-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005b24_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 35000 or l_0_0 < 25000 then
  return mp.CLEAN
end
if (pesecs[1]).SizeOfRawData ~= 1536 then
  return mp.CLEAN
end
return mp.INFECTED

