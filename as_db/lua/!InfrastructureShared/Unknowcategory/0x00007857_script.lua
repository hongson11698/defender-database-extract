-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007857_luac 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[1]).utf8p2
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = {}
l_0_1["Trojan:Win32/TIImpersonation.A!sms"] = true
l_0_1["Trojan:Win32/TIImpersonation.B!sms"] = true
l_0_1["Trojan:Win32/W3WP_BackdoorDLL"] = true
l_0_1["Trojan:Win32/ShellMemoryArtifacts.B"] = true
l_0_1["Trojan:Win32/ShellMemoryArtifacts.C"] = true
if l_0_1[l_0_0] then
  return mp.CLEAN
end
return mp.INFECTED

