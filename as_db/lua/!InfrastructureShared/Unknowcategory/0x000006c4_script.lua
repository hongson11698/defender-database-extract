-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000006c4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.ExpandEnvironmentVariables)("%windir%\\system32\\LogonUI.exe")
local l_0_1 = (sysio.GetProcessFromFileName)(l_0_0)
if l_0_1 ~= nil and #l_0_1 >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

