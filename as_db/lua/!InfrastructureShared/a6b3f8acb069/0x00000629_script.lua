-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a6b3f8acb069\0x00000629_luac 

-- params : ...
-- function num : 0
local l_0_0 = "queue_chmodremotefilecopy_a"
local l_0_1 = nil
if (this_sigattrlog[1]).matched then
  AppendToRollingQueue(l_0_0, "sshbruteforce", 1, 600)
else
  if (this_sigattrlog[2]).matched then
    AppendToRollingQueue(l_0_0, "remotefilecopy", 1, 600)
  else
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
      l_0_1 = (string.lower)((this_sigattrlog[3]).utf8p2)
      AppendToRollingQueue(l_0_0, "chmodexec", l_0_1, 600)
    end
  end
end
if IsKeyInRollingQueue(l_0_0, "sshbruteforce", true) and IsKeyInRollingQueue(l_0_0, "remotefilecopy", true) and IsKeyInRollingQueue(l_0_0, "chmodexec", true) and l_0_1 ~= nil and isTainted(l_0_1, "remote_file_created_taint") then
  return mp.INFECTED
end
return mp.CLEAN

