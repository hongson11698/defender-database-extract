-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6dd708bfe0ea\0x00007cc7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = ((mp.GetProcessCommandLine)(l_0_0)):lower()
if not isIEXfound(l_0_1) then
  return mp.CLEAN
end
if not (string.find)(l_0_1, "%.downloadstring%(%\'?\"?https?%://%d+%.%d+%.%d+%.%d+%:%d+/%w+") then
  return mp.CLEAN
end
local l_0_2 = (mp.GetParentProcInfo)()
if l_0_2 == nil then
  return mp.CLEAN
end
if (string.lower)((string.sub)(l_0_2.image_path, -7)) == "cmd.exe" then
  return mp.INFECTED
end
return mp.CLEAN

