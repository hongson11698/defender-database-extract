-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\55b390cf5a5c\0x0000143c_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[3]).matched then
  local l_0_0, l_0_1, l_0_3 = nil, nil
  l_0_3 = this_sigattrlog
  l_0_3 = l_0_3[3]
  l_0_1 = l_0_3.image_path
  local l_0_2, l_0_4 = nil
end
do
  -- DECOMPILER ERROR at PC11: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC13: Confused about usage of register: R1 in 'UnsetPending'

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and l_0_1 ~= nil then
    TrackPidAndTechniqueBM(l_0_0, "T1110.001", "CredentialAccess_FtpBruteForceOutgoing")
  end
  local l_0_5 = nil
  if (mp.GetParentProcInfo)() ~= nil and ((mp.GetParentProcInfo)()).image_path ~= nil and not (string.find)(((mp.GetParentProcInfo)()).image_path, "/usr/sbin/sshd", -14, true) then
    local l_0_6 = nil
    do
      do
        if ((mp.GetParentProcInfo)()).image_path == l_0_6 then
          local l_0_7 = nil
          if (mp.GetParentProcInfo)(((mp.GetParentProcInfo)()).ppid) ~= nil then
            TrackPidAndTechniqueBM(((mp.GetParentProcInfo)(((mp.GetParentProcInfo)()).ppid)).ppid, "T1110.001", "CredentialAccess_FtpBruteForceOutgoing")
          end
        end
        -- DECOMPILER ERROR at PC53: Confused about usage of register: R2 in 'UnsetPending'

        -- DECOMPILER ERROR at PC55: Confused about usage of register: R3 in 'UnsetPending'

        TrackPidAndTechniqueBM(l_0_7.ppid, "T1110.001", "CredentialAccess_FtpBruteForceOutgoing")
        return mp.INFECTED
      end
    end
  end
end

