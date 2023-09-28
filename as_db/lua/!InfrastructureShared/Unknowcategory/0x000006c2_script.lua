-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000006c2_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
;
(table.insert)(l_0_0, (bm.get_imagepath)())
;
(MpCommon.SetPersistContextNoPath)("GenericSystemWinlogon", l_0_0, 0)
return mp.CLEAN

