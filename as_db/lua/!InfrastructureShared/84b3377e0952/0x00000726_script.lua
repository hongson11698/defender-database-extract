-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b3377e0952\0x00000726_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC15: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  if not l_0_0 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC22: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2 = nil
  if extractDllForRegproc(l_0_0) and checkFileLastWriteTime(extractDllForRegproc(l_0_0), 3600) == false and (mp.IsKnownFriendlyFile)(extractDllForRegproc(l_0_0), true, false) == false then
    (bm.add_related_file)(extractDllForRegproc(l_0_0))
    return mp.INFECTED
  end
  return mp.CLEAN
end

