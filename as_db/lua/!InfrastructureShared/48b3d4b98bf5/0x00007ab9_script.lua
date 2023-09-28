-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\48b3d4b98bf5\0x00007ab9_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC18: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2 = nil
  if extractDllForRegproc(l_0_0) == nil then
    return mp.CLEAN
  end
  if (sysio.IsFileExists)(extractDllForRegproc(l_0_0)) and (mp.IsKnownFriendlyFile)(extractDllForRegproc(l_0_0), true, false) == false then
    (bm.add_threat_file)(extractDllForRegproc(l_0_0))
  end
  return mp.INFECTED
end

