-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2a29ebe61b2d\0x00000855_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetBruteMatchData)()
local l_0_1 = ""
if l_0_0.is_header then
  l_0_1 = (string.lower)(tostring(headerpage))
else
  l_0_1 = (string.lower)(tostring(footerpage))
end
local l_0_2 = (string.match)(l_0_1, "assemblypath%s*([\'\"]?%a:.+%.dll[\'\"]?)")
if l_0_2 then
  TrackPidAndTechnique("RTP", "T1071.003", "tactic=registers_susptransportdll;filepath:" .. l_0_2)
  AppendToRollingQueue("XchgTransportAssembly", l_0_2, nil, 3600)
  return mp.INFECTED
end
return mp.CLEAN

