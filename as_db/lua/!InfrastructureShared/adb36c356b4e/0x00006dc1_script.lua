-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\adb36c356b4e\0x00006dc1_luac 

-- params : ...
-- function num : 0
local l_0_0 = readBruteForceRegConfig()
AppendToRollingQueue("BruteForceProtection-Config", "Status", l_0_0.status, 3600, 2)
AppendToRollingQueue("BruteForceProtection-Config", "IPExclusion", l_0_0.ip_exclusion_list, 3600, 2)
return mp.CLEAN

