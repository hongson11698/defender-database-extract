-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4a29302e3d76\0x00007940_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 ~= nil and l_0_0 >= 10240 then
  return mp.CLEAN
end
local l_0_1 = LoadMatchedDataInBuffer()
local l_0_2 = "curl[%w%s%-]+http:/-[%d]+%.[%d]+%.[%d]+%.[%d]+/[/%w%.%-_%s]+;%s*chmod%s0?7+%s[/%w%.%-_]+;%s*[/%w%s%.%-_]+;%s*rm%s+-?r?f?%s[/%w%.%-_]+"
if GetPatternOccurenceCount(l_0_1, l_0_2) > 5 then
  return mp.INFECTED
end
return mp.CLEAN

