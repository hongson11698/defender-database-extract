-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\660d7e2abc6dd\0x000003ce_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["sdiagnhost.exe"] = true
  l_0_3["qualysagent.exe"] = true
  l_0_3["pulsesecureservice.exe"] = true
  l_0_3["javaw.exe"] = true
  l_0_3["java.exe"] = true
  l_0_3["ruby.exe"] = true
  l_0_3["logmein.exe"] = true
  l_0_3["fasm.exe"] = true
  l_0_3["911 location manager.exe"] = true
  l_0_3["ltsvc.exe"] = true
  if l_0_3[l_0_2] then
    return mp.CLEAN
  end
end
do
  TrackPidAndTechnique("CMDHSTR", "T1047", "windows_management_instrumentation")
  if IsDetectionThresholdMet("CMDHSTR") then
    return mp.LOWFI
  end
  return mp.LOWFI
end

