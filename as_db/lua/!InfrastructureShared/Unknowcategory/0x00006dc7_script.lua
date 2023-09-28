-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006dc7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 == nil or l_0_0 > 500 then
  return mp.CLEAN
end
if headerpage == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetBruteMatchData)()
if l_0_1 == nil or l_0_1.match_offset == nil then
  return mp.CLEAN
end
if l_0_0 - 12 <= l_0_1.match_offset and headerpage[l_0_0] == 0 then
  return mp.INFECTED
end
return mp.CLEAN

