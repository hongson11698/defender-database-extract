-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\60782e943\0x000008c3_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("ATTRIBUTE:SIGA:MISL:PossibleKillProcess:S1") and peattributes.ismsil and (mp.get_mpattribute)("LUA:FileSizeLE5000.A") and (mp.get_mpattribute)("pea_no_security") then
  return mp.INFECTED
end
return mp.CLEAN

