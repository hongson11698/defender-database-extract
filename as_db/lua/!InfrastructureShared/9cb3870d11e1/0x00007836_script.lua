-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9cb3870d11e1\0x00007836_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  local l_0_2 = nil
  if contains(l_0_2, {"program files"}) then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM("BM", "T1048", "Exfiltration_Archive")
  return mp.INFECTED
end

