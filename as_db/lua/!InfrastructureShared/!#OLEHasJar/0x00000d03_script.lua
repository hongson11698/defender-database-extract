-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#OLEHasJar\0x00000d03_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0:len() < 15 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "word/embeddings/oleobject%d.+bin.+->.+%.jar$") or (string.find)(l_0_0, "ole stream %d.+->.+%.jar$") then
  return mp.INFECTED
end
return mp.CLEAN

