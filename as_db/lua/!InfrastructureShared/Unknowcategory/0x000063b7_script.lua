-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000063b7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.ExpandEnvironmentVariables)("%windir%\\system32\\LogonUI.exe")
local l_0_1 = (sysio.GetProcessFromFileName)(l_0_0)
if l_0_1 == nil or #l_0_1 == 0 then
  return mp.CLEAN
end
return mp.INFECTED

