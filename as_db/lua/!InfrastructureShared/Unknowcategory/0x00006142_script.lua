-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006142_luac 

-- params : ...
-- function num : 0
if ((bm.get_current_process_startup_info)()).integrity_level == MpCommon.SECURITY_MANDATORY_PROTECTED_PROCESS_RID then
  return mp.INFECTED
end
return mp.CLEAN
