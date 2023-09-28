-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000060e2_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
local l_0_1 = (MpCommon.GetCurrentTimeT)()
;
(table.insert)(l_0_0, l_0_1)
;
(MpCommon.SetPersistContextNoPath)("TaskSchedMiscTrigger", l_0_0, 3)
return mp.CLEAN

