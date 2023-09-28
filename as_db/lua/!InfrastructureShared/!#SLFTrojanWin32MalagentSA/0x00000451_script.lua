-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanWin32MalagentSA\0x00000451_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if not (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
local l_0_1 = {}
l_0_1["svhost.dll"] = true
l_0_1["svhost.exe"] = true
l_0_1["x64win.exe"] = true
l_0_1["x64win.dll"] = true
l_0_1["x32win.dll"] = true
l_0_1["x32win.exe"] = true
l_0_1["dlihost.exe"] = true
if l_0_1[l_0_0] then
  if (mp.IsTrustedFile)(false) == true then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

