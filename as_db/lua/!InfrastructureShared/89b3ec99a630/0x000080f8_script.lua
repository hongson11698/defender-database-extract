-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\89b3ec99a630\0x000080f8_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC15: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  end
  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  if not l_0_0 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC22: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_4 = nil
  if extractDllForRegproc(l_0_0) then
    if not contains(l_0_4, ":\\windows\\") then
      return mp.CLEAN
    end
    if contains(l_0_4, "\\spool\\drivers\\") then
      return mp.CLEAN
    end
    if checkFileLastWriteTime(extractDllForRegproc(l_0_0), 3600) == false and (mp.IsKnownFriendlyFile)(extractDllForRegproc(l_0_0), true, false) == false then
      (bm.add_related_file)(extractDllForRegproc(l_0_0))
      local l_0_5 = nil
      if IsProcNameInParentProcessTree("BM", {"winword.exe", "excel.exe", "powerpnt.exe", "mspub.exe", "wscript.exe", "cscript.exe", "mshta.exe", "powershell.exe", "pwsh.exe", "wmic.exe", "wmiprvse.exe"}, 2) then
        add_parents()
        return mp.INFECTED
      end
    end
  end
  do
    return mp.CLEAN
  end
end

