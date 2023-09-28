-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1e0b3665b4bc9\0x0000006b_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p1 ~= nil and (this_sigattrlog[7]).utf8p2 ~= nil then
  local l_0_0 = (this_sigattrlog[7]).utf8p1
  local l_0_1 = (string.match)(l_0_0, "<Command>(.*)</Command>")
  local l_0_2 = (string.match)(l_0_0, "<Arguments>(.*)</Arguments>")
  if l_0_1 ~= nil then
    if l_0_2 ~= nil then
      l_0_1 = l_0_1 .. " " .. l_0_2
    end
    if l_0_1:find("windowsdefenderatponboardingscript.cmd", 1, true) then
      return mp.CLEAN
    end
    if l_0_1:find("\\sysvol\\", 1, true) then
      return mp.CLEAN
    end
    if l_0_1:find("\\netlogon\\", 1, true) then
      return mp.CLEAN
    end
    if l_0_1:find("windows\\ccm", 1, true) then
      return mp.CLEAN
    end
    if l_0_1:find("config.xml", 1, true) then
      return mp.CLEAN
    end
    TrackCommandLineAndTechnique(l_0_1, "T1053.005:schtask_target")
    if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") or IsDetectionThresholdMet("BM") then
      bm_AddRelatedFileFromCommandLine(l_0_1, nil, nil, 1)
      AddResearchData((this_sigattrlog[7]).ppid, true)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

