-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#pdfrtfole2link\0x00000c84_luac 

-- params : ...
-- function num : 0
if (string.len)((mp.getfilename)()) < 8 then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, ".pdf->(rtf", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

