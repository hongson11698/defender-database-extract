-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELRansomWin32Roxstage!proc\0x00000438_luac 

-- params : ...
-- function num : 0
if peattributes.isdll or peattributes.isdriver or peattributes.isdamaged then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("CLOUD:RoxstageBlockAccess") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)()
if not (mp.get_mpattribute)("BM_RoxstageProcessBlock") and not (MpCommon.QueryPersistContext)(l_0_0, "BM_RoxstageProcessBlock") then
  return mp.CLEAN
end
if not (MpCommon.QueryPersistContext)(l_0_0, "CLOUD:RoxstageBlockAccess") then
  (MpCommon.AppendPersistContext)(l_0_0, "CLOUD:RoxstageBlockAccess", 0)
end
return mp.INFECTED

