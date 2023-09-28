-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9db39b5f43f6\0x00000dd9_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM("BM", "T1547.004", "persistence_source")
  -- DECOMPILER ERROR at PC28: Confused about usage of register: R0 in 'UnsetPending'

  if bm_AddRelatedFileFromCommandLine(l_0_0, nil, nil, 11) ~= nil then
    return mp.INFECTED
  end
  return mp.CLEAN
end

