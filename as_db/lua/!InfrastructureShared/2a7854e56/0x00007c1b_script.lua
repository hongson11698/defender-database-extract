-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2a7854e56\0x00007c1b_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:PWS:Win32/Simda.gen!B") and peattributes.executes_from_dynamic_memory then
  (mp.changedetectionname)(805306411)
  return mp.INFECTED
else
  if (mp.get_mpattribute)("MpHasExpensiveLoop") and peattributes.suspicious_image_version and (peattributes.checks_if_debugged_undocumented or peattributes.pea_dynmem_APIcall) then
    return mp.SUSPICIOUS
  end
end
return mp.CLEAN

