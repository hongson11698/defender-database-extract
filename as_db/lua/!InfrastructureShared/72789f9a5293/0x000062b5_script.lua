-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\72789f9a5293\0x000062b5_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_FULL)
if CheckVulnerableUEFIImage(l_0_0, "!#TEL:Trojan:UEFI/InsyVul.I") then
  return mp.INFECTED
end
return mp.CLEAN

