-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000cbf_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
if l_0_0:lower() == "cmd.exe" then
  (mp.set_mpattribute)("LUA:RtpProc_cmd")
  return mp.CLEAN
end
if l_0_0:lower() == "telegram.exe" then
  return mp.INFECTED
end
return mp.CLEAN

