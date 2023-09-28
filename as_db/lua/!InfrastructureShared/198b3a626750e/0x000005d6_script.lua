-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\198b3a626750e\0x000005d6_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil then
  addRelatedProcess()
  reportRelatedBmHits()
  if (sysio.IsFileExists)(l_0_0) then
    (bm.add_threat_file)(l_0_0)
  end
  return mp.INFECTED
end
return mp.CLEAN

