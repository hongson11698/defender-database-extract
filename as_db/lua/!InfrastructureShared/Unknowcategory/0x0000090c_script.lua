-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000090c_luac 

-- params : ...
-- function num : 0
if (string.lower)((string.sub)((bm.get_imagepath)(), -12)) == "\\msiexec.exe" then
  return mp.CLEAN
end
if MpCommon.SECURITY_MANDATORY_HIGH_RID <= ((bm.get_current_process_startup_info)()).integrity_level then
  return mp.CLEAN
end
return mp.INFECTED

