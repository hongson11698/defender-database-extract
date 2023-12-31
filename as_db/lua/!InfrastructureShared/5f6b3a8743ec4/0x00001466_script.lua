-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5f6b3a8743ec4\0x00001466_luac 

-- params : ...
-- function num : 0
local l_0_0 = 150000000
local l_0_1 = (bm.GetSignatureMatchDuration)()
if l_0_0 < l_0_1 then
  return mp.CLEAN
end
local l_0_2 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
  l_0_2 = (string.lower)((this_sigattrlog[1]).utf8p2)
end
if l_0_2 ~= nil then
  if (string.find)(l_0_2, "initramfs ", 1, true) or (string.find)(l_0_2, "dracut", 1, true) then
    return mp.CLEAN
  end
  addRelatedProcess()
  reportRelatedBmHits()
  TrackPidAndTechniqueBM("BM", "T1036.003", "RenameBin_DefenseEvasion")
  RemediateProcessTreeForLinux()
  return mp.INFECTED
end
return mp.CLEAN

