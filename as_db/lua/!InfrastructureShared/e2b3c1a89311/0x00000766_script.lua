-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\e2b3c1a89311\0x00000766_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  TrackPidAndTechniqueBM(l_0_0.ppid, "T1003.003", "NtdsSCCopy", 60)
else
  TrackPidAndTechniqueBM("BM", "T1003.003", "NtdsSCCopy", 60)
end
local l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p2)
if l_0_1 ~= nil then
  local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    if (sysio.IsFileExists)(l_0_7) then
      (bm.add_related_file)(l_0_7)
      ;
      (mp.ReportLowfi)(l_0_7, 1327958179)
    end
  end
end
do
  l_0_2 = ""
  local l_0_8 = nil
  l_0_8 = ""
  local l_0_9 = nil
  l_0_9 = this_sigattrlog
  l_0_9 = l_0_9[3]
  l_0_9 = l_0_9.matched
  if l_0_9 then
    l_0_9 = this_sigattrlog
    l_0_9 = l_0_9[3]
    l_0_2 = l_0_9.utf8p1
    l_0_9 = this_sigattrlog
    l_0_9 = l_0_9[3]
    l_0_8 = l_0_9.utf8p2
  end
  if l_0_2 ~= nil and l_0_2 ~= "" and l_0_8 ~= nil and l_0_8 ~= "" then
    l_0_9 = bm
    l_0_9 = l_0_9.trigger_sig
    l_0_9("NTDSDump_" .. l_0_2, l_0_8)
  end
  l_0_9 = add_parents
  l_0_9()
  l_0_9 = mp
  l_0_9 = l_0_9.INFECTED
  return l_0_9
end

