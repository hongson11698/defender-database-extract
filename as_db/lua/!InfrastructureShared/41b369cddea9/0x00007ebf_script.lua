-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\41b369cddea9\0x00007ebf_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  -- DECOMPILER ERROR at PC31: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_4 = nil
    if (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "commcmd.dll", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "shell32.dll", 1, true) then
      return mp.CLEAN
    end
    local l_0_5 = nil
    -- DECOMPILER ERROR at PC72: Confused about usage of register: R2 in 'UnsetPending'

    if extractDllForRegproc(l_0_4) and (sysio.IsFileExists)((mp.ContextualExpandEnvironmentVariables)(extractDllForRegproc(l_0_4))) then
      (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)(extractDllForRegproc(l_0_4)))
    end
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

