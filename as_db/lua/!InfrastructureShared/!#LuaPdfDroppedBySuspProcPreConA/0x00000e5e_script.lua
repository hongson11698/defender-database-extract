-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPdfDroppedBySuspProcPreConA\0x00000e5e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0 ~= "explorer.exe" then
  return mp.CLEAN
end
local l_0_1 = "global_marker"
local l_0_2 = "big_lnk_file_with_ps"
local l_0_3 = (MpCommon.QueryPersistContextNoPath)(l_0_1, l_0_2)
if l_0_3 then
  return mp.CLEAN
end
;
(MpCommon.AppendPersistContextNoPath)(l_0_1, l_0_2, 30)
return mp.INFECTED

