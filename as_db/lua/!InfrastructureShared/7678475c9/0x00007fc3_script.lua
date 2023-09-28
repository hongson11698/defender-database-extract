-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\7678475c9\0x00007fc3_luac 

-- params : ...
-- function num : 0
local l_0_0 = ((mp.getfilename)(mp.FILEPATH_QUERY_FNAME)):lower()
if l_0_0:find("urefs.dll", 1, true) then
  return mp.CLEAN
end
local l_0_1 = (pe.get_versioninfo)()
if l_0_1 ~= nil and (l_0_1.OriginalFilename):lower() == "urefs.dll" then
  return mp.CLEAN
end
if ((((((((((((hstrlog[2]).matched and not (hstrlog[3]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (hstrlog[6]).matched) and not (hstrlog[7]).matched) or (hstrlog[8]).matched) and not (hstrlog[9]).matched) or (hstrlog[10]).matched) and not (hstrlog[11]).matched) or (hstrlog[1]).matched) and 0 + 1 + 1 + 1 + 1 + 1 == 5) or 0 + 1 + 1 + 1 + 1 + 1 == 5 then
  return mp.INFECTED
end
return mp.CLEAN

