-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanWin32OneDriveDumpA\0x00001085_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE and l_0_0 ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilesize)()
if l_0_1 < 30720000 then
  return mp.CLEAN
end
local l_0_2 = "OneDriveTelemetryStable.dll"
local l_0_3 = "\\client\\onedrive\\Product\\UX\\Exe\\obj\\amd64\\OneDrive.pdb"
;
(mp.readprotection)(false)
local l_0_4 = tostring((mp.readfile)(0, 200000))
;
(mp.readprotection)(true)
do
  if l_0_4:find(l_0_2, 1, true) ~= nil and l_0_4:find(l_0_3, 1, true) ~= nil then
    local l_0_5 = (mp.GetParentProcInfo)()
    if l_0_5 ~= nil and l_0_5.ppid ~= nil then
      TrackPidAndTechnique(l_0_5.ppid, "T1003.001", "credentialdumping", 86400)
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

