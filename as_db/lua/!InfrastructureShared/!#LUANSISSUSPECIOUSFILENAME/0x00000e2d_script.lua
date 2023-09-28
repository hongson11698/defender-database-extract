-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUANSISSUSPECIOUSFILENAME\0x00000e2d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (mp.getfilesize)() > 1024000 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "pown200303885", 1, true) or (string.find)(l_0_0, ".pdf.z", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

