-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanPowerShellMSIlAmsiTamperB\0x00001064_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0:find("powershell", 1, true) then
  local l_0_1 = (pe.get_versioninfo)()
  do
    do
      if l_0_1 ~= nil and l_0_1.OriginalFilename ~= nil then
        local l_0_2 = (string.lower)(l_0_1.OriginalFilename)
        if l_0_2:find("powerleech.dll", 1, true) or l_0_2:find("ddcpowershellhelper.dll", 1, true) or l_0_2:find("cylance.dotnethookhelper.dll", 1, true) then
          return mp.CLEAN
        end
      end
      TrackPidAndTechnique("AMSI", "T1562.001", "amsitampering")
      do return mp.INFECTED end
      return mp.CLEAN
    end
  end
end

