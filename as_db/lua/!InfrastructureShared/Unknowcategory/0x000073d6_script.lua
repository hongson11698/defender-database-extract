-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000073d6_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "/document.xml", 1, true) or (string.find)(l_0_0, "xl/externallinks/", 1, true) or (string.find)(l_0_0, "->(ole stream 0)->(msg)", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

