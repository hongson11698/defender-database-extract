-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#FileNameChecks\0x00000e10_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = {}
l_0_1["avira.oe.nativecore.dll"] = "AviraOeNativeCoreDll"
l_0_1["wsc.dll"] = "AvgWscDll"
local l_0_2 = l_0_1[l_0_0]
if l_0_2 then
  (mp.set_mpattribute)((string.format)("Lua:FileName%s", l_0_2))
end
return mp.CLEAN

