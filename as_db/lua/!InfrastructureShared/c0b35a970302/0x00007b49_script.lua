-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\c0b35a970302\0x00007b49_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = nil
  else
  end
  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  if ((this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 == nil) or (this_sigattrlog[2]).utf8p2 == "" then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

  if not isIEXfound((this_sigattrlog[2]).utf8p2) then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC33: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC40: Confused about usage of register: R0 in 'UnsetPending'

  if IsSuspPSModule((this_sigattrlog[2]).utf8p2) then
    (bm.add_related_string)("PShellLoader_SA_cmdline", (this_sigattrlog[2]).utf8p2, bm.RelatedStringBMReport)
    return mp.INFECTED
  end
  return mp.CLEAN
end

