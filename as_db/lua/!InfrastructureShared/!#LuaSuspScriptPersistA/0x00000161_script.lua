-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaSuspScriptPersistA\0x00000161_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
l_0_0 = (string.lower)((MpCommon.PathToWin32Path)(l_0_0))
local l_0_1 = {}
;
(table.insert)(l_0_1, l_0_0)
;
(MpCommon.SetPersistContextNoPath)("SuspScriptPersist", l_0_1, 0)
return mp.CLEAN

