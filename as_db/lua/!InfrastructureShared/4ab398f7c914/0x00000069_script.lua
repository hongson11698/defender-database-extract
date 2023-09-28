-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4ab398f7c914\0x00000069_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (this_sigattrlog[1]).utf8p1
  local l_0_1 = (string.match)(l_0_0, "<Command>(.*)</Command>")
  local l_0_2 = (string.match)(l_0_0, "<Arguments>(.*)</Arguments>")
  if l_0_1 ~= nil then
    if l_0_2 ~= nil then
      l_0_1 = l_0_1 .. " " .. l_0_2
    end
    bm_AddRelatedFileFromCommandLine(l_0_1, nil, nil, 1)
    TrackCommandLineAndTechnique(l_0_1, "T1053.005:schtask_target")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

