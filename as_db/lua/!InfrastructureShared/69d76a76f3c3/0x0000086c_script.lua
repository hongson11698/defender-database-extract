-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\69d76a76f3c3\0x0000086c_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2, l_0_3 = nil
if pcall(mp.GetParentProcInfo) and mp.GetParentProcInfo ~= nil then
  l_0_2 = (mp.GetParentProcInfo).ppid
  l_0_3 = (mp.GetParentProcInfo).image_path
end
local l_0_4 = nil
local l_0_5 = nil
if ({["ccmexec.exe"] = true, ["gpscript.exe"] = true, ["mpcmdrun.exe"] = true, ["mssense.exe"] = true, ["senseir.exe"] = true})[(string.lower)(l_0_3:match("([^\\]+)$"))] then
  return mp.CLEAN
end
if l_0_2 ~= nil and l_0_3 ~= nil then
  if l_0_3:find("fsprocsvc", 1, true) then
    return mp.CLEAN
  end
  if IsPidExcluded(l_0_2) then
    return mp.CLEAN
  end
  if IsTechniqueObservedForPid(l_0_2, "T1036") then
    TrackPidAndTechnique(l_0_2, "T1036", "child_of_masq")
    return mp.INFECTED
  end
end
return mp.CLEAN

