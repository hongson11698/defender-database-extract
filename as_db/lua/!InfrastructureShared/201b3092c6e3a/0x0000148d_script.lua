-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\201b3092c6e3a\0x0000148d_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[12]).matched then
    local l_0_0 = nil
    if (this_sigattrlog[12]).utf8p2 ~= nil then
      l_0_0 = (this_sigattrlog[12]).utf8p2
    end
    if l_0_0 == nil or l_0_0 == "" then
      return mp.CLEAN
    end
    if (string.find)(l_0_0, " -G sudo ", 1, true) or (string.find)(l_0_0, " -G sudo,", 1, true) or (string.find)(l_0_0, " -G%s[%w]+,sudo%s", 1, false) or (string.find)(l_0_0, " -G%s[%w]+,sudo,", 1, false) or (string.find)(l_0_0, " -G%s[%w]+[,%w]+,sudo%s", 1, false) or (string.find)(l_0_0, " -G%s[%w]+[,%w]+,sudo,", 1, false) then
      TrackPidAndTechniqueBM("BM", "T1136", "Persistence_CreateAccount")
      return mp.INFECTED
    end
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM("BM", "T1548.003", "PrivilegeEscalation")
  TrackPidAndTechniqueBM("BM", "T1078.003", "Persistence")
  return mp.INFECTED
end

