-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\15b3531bc6c8\0x0000018e_luac 

-- params : ...
-- function num : 0
if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
if ((bm.get_current_process_startup_info)()).integrity_level <= 16384 then
  return mp.INFECTED
end
return mp.CLEAN

