-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005ccd_luac 

-- params : ...
-- function num : 0
if MpCommon.SECURITY_MANDATORY_MEDIUM_RID < ((bm.get_current_process_startup_info)()).integrity_level then
  return mp.INFECTED
end
return mp.CLEAN
