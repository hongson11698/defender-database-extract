-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\175b3a1b5251a\0x00007fa3_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[6]).matched or (this_sigattrlog[6]).utf8p1 == nil or (this_sigattrlog[7]).matched) and (this_sigattrlog[7]).utf8p1 ~= nil then
      local l_0_1, l_0_2 = (this_sigattrlog[6]).utf8p1
    end
    -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 == nil then
      return mp.CLEAN
    end
    local l_0_3 = nil
    if contains(l_0_3, {".tmp", ".txt", ".doc", ".cfg"}) then
      return mp.CLEAN
    end
    ;
    (bm.add_related_string)("Office_SusCreate_C", l_0_3, bm.RelatedStringBMReport)
    l_0_3 = (mp.ContextualExpandEnvironmentVariables)(l_0_3)
    if (sysio.IsFileExists)(l_0_3) then
      (bm.add_related_file)(l_0_3)
    end
    return mp.INFECTED
  end
end

