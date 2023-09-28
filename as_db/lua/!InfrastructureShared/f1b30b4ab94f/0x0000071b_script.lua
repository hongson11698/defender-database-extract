-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\f1b30b4ab94f\0x0000071b_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[5]).matched then
  local l_0_0, l_0_1 = nil
else
  do
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_0 == nil then
      return mp.CLEAN
    end
    local l_0_2 = nil
    local l_0_3 = contains
    local l_0_4 = l_0_2
    l_0_3 = l_0_3(l_0_4, {"rundll32.exe", "regsvr32.exe"})
    if l_0_3 then
      l_0_3 = mp
      l_0_3 = l_0_3.CLEAN
      return l_0_3
    end
    l_0_3 = string
    l_0_3 = l_0_3.match
    l_0_4 = l_0_2
    l_0_3 = l_0_3(l_0_4, "targetprocessppid:(%d+):(%d+)")
    if not l_0_3 or not l_0_4 then
      return mp.CLEAN
    end
    local l_0_5 = nil
    -- DECOMPILER ERROR at PC64: Overwrote pending register: R6 in 'AssignReg'

    if (sysio.GetFileNameFromProcess)("pid:" .. l_0_3 .. ",ProcessStart:" .. R6_PC49) and contains(R6_PC49, "\\windows\\syswow64") then
      (bm.add_related_string)(R6_PC49, (sysio.GetFileNameFromProcess)("pid:" .. l_0_3 .. ",ProcessStart:" .. R6_PC49), bm.RelatedStringBMReport)
      -- DECOMPILER ERROR at PC70: Overwrote pending register: R6 in 'AssignReg'

      triggerMemoryScanOnProcessTree(R6_PC49, true, "SMS_M", 100, "Behavior:Win32/DllInject.SE")
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

