-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPdfDroppedBySuspProcA\0x00001143_luac 

-- params : ...
-- function num : 0
local l_0_0 = "global_marker"
local l_0_1 = "big_lnk_file_with_ps"
local l_0_2 = (MpCommon.QueryPersistContextNoPath)(l_0_0, l_0_1)
if not l_0_2 then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) ~= true then
  return mp.CLEAN
end
local l_0_3 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = "Lua:PdfDroppedBySuspProc"
l_0_2 = (MpCommon.QueryPersistContext)(l_0_3, l_0_4)
if l_0_2 then
  return mp.CLEAN
end
local l_0_5 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
local l_0_6 = {}
l_0_6["powershell.exe"] = true
l_0_6["cscript.exe"] = true
l_0_6["wscript.exe"] = true
if l_0_6[l_0_5] ~= true then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("MpDisableCaching")
if (string.find)(l_0_3, "\\device\\", 1, true) then
  l_0_3 = (MpCommon.PathToWin32Path)(l_0_3)
end
if l_0_3 == nil then
  return mp.CLEAN
end
;
(MpCommon.AppendPersistContext)(l_0_3, l_0_4, 30)
return mp.INFECTED

