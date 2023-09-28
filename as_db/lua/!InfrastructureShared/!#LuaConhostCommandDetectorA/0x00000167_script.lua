-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaConhostCommandDetectorA\0x00000167_luac 

-- params : ...
-- function num : 0
local l_0_0 = false
if (mp.get_mpattributesubstring)("ATTR:ConHost_") then
  if (mp.get_mpattribute)("ATTR:ConHost_dir_T1083_FileAndDirectoryDiscovery") then
    TrackPidAndTechnique("RTP", "T1083", "ConHost_dir_T1083_FileAndDirectoryDiscovery")
    l_0_0 = true
  else
    if (mp.get_mpattribute)("ATTR:ConHost_dir_T1552_001_CredentialsInFiles") then
      TrackPidAndTechnique("RTP", "T1552.001", "ConHost_dir_T1552_001_CredentialsInFiles")
      l_0_0 = true
    else
      if (mp.get_mpattribute)("ATTR:ConHost_dir_T1087_001_Account_Discovery_Local_Account") then
        TrackPidAndTechnique("RTP", "T1087.001", "ConHost_dir_T1087_001_Account_Discovery_Local_Account")
        l_0_0 = true
      else
        if (mp.get_mpattribute)("ATTR:ConHost_dir_T1552_004_PrivateKeys") then
          TrackPidAndTechnique("RTP", "T1552.004", "ConHost_dir_T1552_004_PrivateKeys")
          l_0_0 = true
        else
          if (mp.get_mpattribute)("ATTR:ConHost_type_T1552_001_CredentialsInFiles") then
            TrackPidAndTechnique("RTP", "T1552.001", "ConHost_type_T1552_001_CredentialsInFiles")
            l_0_0 = true
          else
            if (mp.get_mpattribute)("ATTR:ConHost_del_T1070_004_FileDeletion") then
              TrackPidAndTechnique("RTP", "T1070.004", "ConHost_del_T1070_004_FileDeletion")
              l_0_0 = true
            else
              if (mp.get_mpattribute)("ATTR:ConHost_del_T1490_InhibitSystemRecovery") then
                TrackPidAndTechnique("RTP", "T1490", "ConHost_del_T1490_InhibitSystemRecovery")
                l_0_0 = true
              else
                if (mp.get_mpattribute)("ATTR:ConHost_ver_T1082_SystemInformationDiscovery") then
                  TrackPidAndTechnique("RTP", "T1082", "ConHost_ver_T1082_SystemInformationDiscovery")
                  l_0_0 = true
                else
                  if (mp.get_mpattribute)("ATTR:ConHost_set_T1574_007_PathInterByPathEnv") then
                    TrackPidAndTechnique("RTP", "T1574.007", "ConHost_set_T1574_007_PathInterByPathEnv")
                    l_0_0 = true
                  else
                    if (mp.get_mpattribute)("ATTR:ConHost_set_T1033_SystemOwnerUserDiscovery") then
                      TrackPidAndTechnique("RTP", "T1033", "ConHost_set_T1033_SystemOwnerUserDiscovery")
                      l_0_0 = true
                    else
                      if (mp.get_mpattribute)("ATTR:ConHost_set_T1087_001_LocalAccount") then
                        TrackPidAndTechnique("RTP", "T1087.001", "ConHost_set_T1087_001_LocalAccount")
                        l_0_0 = true
                      else
                        if (mp.get_mpattribute)("ATTR:ConHost_set_T1083_FileAndDirectoryDiscovery") then
                          TrackPidAndTechnique("RTP", "T1083", "ConHost_set_T1083_FileAndDirectoryDiscovery")
                          l_0_0 = true
                        else
                          if (mp.get_mpattribute)("ATTR:ConHost_datetime_T1124_SystemTimeDiscovery") then
                            TrackPidAndTechnique("RTP", "T1124", "ConHost_datetime_T1124_SystemTimeDiscovery")
                            l_0_0 = true
                          else
                            if (mp.get_mpattribute)("ATTR:ConHost_path_T1574_007__PathInterByPathEnv") then
                              TrackPidAndTechnique("RTP", "T1574.007", "ConHost_path_T1574_007__PathInterByPathEnv")
                              l_0_0 = true
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  if l_0_0 then
    return mp.INFECTED
  end
end
return mp.CLEAN

