-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPowershellMimikittenzA!searchproc\0x00007faf_luac 

-- params : ...
-- function num : 0
if ((((((mp.get_mpattribute)("SCRIPT:PowerShell/Mimikittenz.A!searchproc_sysinfo") and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mimikittenz.A!searchproc_address")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mimikittenz.A!searchproc_region")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mimikittenz.A!searchproc_readmemory")) or (mp.get_mpattribute)("SCRIPT:PowerShell/Mimikittenz.A!searchproc_regexloop")) and not (mp.get_mpattribute)("SCRIPT:PowerShell/Mimikittenz.A!searchproc_regexmatch")) or 0 + 1 + 1 + 1 + 1 + 1 + 1 >= 5 then
  return mp.INFECTED
end
return mp.CLEAN

