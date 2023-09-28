-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\55b34a2c075c\0x00001456_luac 

-- params : ...
-- function num : 0
local l_0_0 = 150000000
local l_0_1 = (bm.GetSignatureMatchDuration)()
if l_0_0 < l_0_1 then
  return mp.CLEAN
end
local l_0_2 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
  l_0_2 = (this_sigattrlog[1]).utf8p2
end
if l_0_2 and (string.find)(l_0_2, "base64", 1, true) and #l_0_2 >= 200 then
  TrackPidAndTechniqueBM("BM", "T1059.004", "Execution_PythonReverseShell")
  addRelatedProcess()
  reportRelatedBmHits()
  RemediateProcessTreeForLinux()
  return mp.INFECTED
end
return mp.CLEAN

