-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaTrojanPowerShellPSLnkBasedPersiste\0x00000ca4_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.UfsGetMetadataBool)("LnkWithPowerShellCmd", true)
if l_0_0 == 0 and l_0_1 == true then
  (mp.ReportLowfi)((mp.getfilename)(), 818474255)
  return mp.INFECTED
end
return mp.CLEAN

