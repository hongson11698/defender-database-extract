-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\57b3798e060c\0x0000075a_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  local l_0_0 = nil
  if IsTacticObservedForPid(l_0_0, "webshell_parent") then
    local l_0_1, l_0_2 = (bm.get_process_relationships)()
    for l_0_6,l_0_7 in ipairs(l_0_2) do
      TrackPidAndTechniqueBM(l_0_7.ppid, "T1505.003", "webshell_childproc", 28800)
      ;
      (bm.add_threat_process)(l_0_7.ppid)
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

