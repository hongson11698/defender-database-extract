-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanPowerShellSuspiciousPSCommandG\0x00001008_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_AMSI then
  local l_0_1, l_0_2 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME)
  do
    do
      if l_0_1 and l_0_2 then
        local l_0_3, l_0_4 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
        if l_0_3 and l_0_4 == nil then
          TrackPidAndTechnique("AMSI", "T1027", "Obfuscatedfiles")
          return mp.INFECTED
        end
      end
      do return mp.CLEAN end
      return mp.CLEAN
    end
  end
end

