-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000758_luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.ExpandEnvironmentVariables)("%ExchangeInstallPath%")
if l_0_0 == nil or l_0_0 == "" or l_0_0 == "%ExchangeInstallPath%" then
  return mp.CLEAN
end
if not (sysio.IsFileExists)(l_0_0 .. "bin\\Microsoft.Exchange.Store.Service.exe") then
  return mp.CLEAN
end
local l_0_1 = nil
if (this_sigattrlog[2]).matched then
  l_0_1 = (this_sigattrlog[2]).utf8p2
end
if l_0_1 ~= nil then
  (bm.trigger_sig)(l_0_1, "ProcessBlockExchg")
end
return mp.INFECTED

