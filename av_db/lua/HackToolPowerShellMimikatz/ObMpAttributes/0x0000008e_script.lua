-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\HackToolPowerShellMimikatz\ObMpAttributes\0x0000008e_luac 

-- params : ...
-- function num : 0
do
  if ((((((not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!invokefunction") or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!invoke-mimikatz")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!ps1")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!command")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!cred")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!function")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!dumpcreds")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!dumpcerts") then
    local l_0_0, l_0_2, l_0_3, l_0_4, l_0_6, l_0_8, l_0_10 = 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1
  end
  do
    if ((((((((((((mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!cert") and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!mz")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!dllcheck")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!MachineType")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!MagicType")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!VirtualAlloc")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!memcpy")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!CreateThread")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!IsWow64Process")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!WriteShellCode")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!GetProcAddressSCx64")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!GetProcAddressSCx86")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mikatz!Invoke") then
      local l_0_1, l_0_5, l_0_7, l_0_9, l_0_11 = , 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1
    end
    -- DECOMPILER ERROR at PC149: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC151: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC153: Confused about usage of register: R1 in 'UnsetPending'

    if (l_0_1 >= 1 and l_0_5 >= 5) or l_0_5 >= 13 then
      return mp.INFECTED
    end
    -- DECOMPILER ERROR at PC158: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC160: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC162: Confused about usage of register: R1 in 'UnsetPending'

    if l_0_1 >= 2 or l_0_1 >= 1 and l_0_5 >= 2 then
      (mp.set_mpattribute)("Lua:HackTool:PowerShell/Mimikatz!possible")
    end
    -- DECOMPILER ERROR at PC168: Confused about usage of register: R1 in 'UnsetPending'

    if l_0_5 >= 5 then
      (mp.set_mpattribute)("Lua:HackTool:PowerShell/Mimikatz!injector")
    end
    return mp.CLEAN
  end
end

