-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPowerShellPowerViewA\0x00008179_luac 

-- params : ...
-- function num : 0
if (((((((((((((not (mp.get_mpattribute)("SCRIPT:PowerShell/Invoke-CheckLocalAdminAccess") and not (mp.get_mpattribute)("TEL:SCPT_LCSuspiPSPattern68")) or not (mp.get_mpattribute)("SCRIPT:PowerShell/Invoke-ThreadedFunction")) and not (mp.get_mpattribute)("TEL:SCPT_LCSuspiPSPattern169")) or not (mp.get_mpattribute)("SCRIPT:PowerShell/Find-LocalAdminAccess")) and not (mp.get_mpattribute)("TEL:SCPT_LCSuspiPSPattern24")) or not (mp.get_mpattribute)("SCRIPT:PowerShell/Get-ExploitableSystem")) and not (mp.get_mpattribute)("TEL:SCPT_LCSuspiPSPattern209")) or not (mp.get_mpattribute)("SCRIPT:PowerShell/Invoke-ThreadedFunction")) and not (mp.get_mpattribute)("TEL:SCPT_LCSuspiPSPattern169")) or (mp.get_mpattribute)("TEL:SCPT_LCSuspiPSPattern150")) and not (mp.get_mpattribute)("TEL:SCPT_LCSuspiPSPattern45")) or (mp.get_mpattribute)("SCPT_HCSuspiPSPattern")) and not (mp.get_mpattribute)("TEL:SCPT_LCSuspiPSPattern143")) or 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 4 then
  return mp.INFECTED
end
return mp.CLEAN

