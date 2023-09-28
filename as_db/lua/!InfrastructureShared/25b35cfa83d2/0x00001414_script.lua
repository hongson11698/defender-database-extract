-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\25b35cfa83d2\0x00001414_luac 

-- params : ...
-- function num : 0
local l_0_0 = 10
local l_0_1 = 5
local l_0_2 = "ssh_login_attempt"
local l_0_3 = (MpCommon.AtomicCounterValue)(l_0_2)
if l_0_3 == nil then
  (MpCommon.AtomicCounterSet)(l_0_2, 1, l_0_0)
else
  local l_0_4 = (MpCommon.AtomicCounterAdd)(l_0_2, 1) + 1
  if l_0_1 <= l_0_4 then
    (MpCommon.AtomicCounterErase)(l_0_2)
    AddTechniqueGlobal("CredentialAccess_SshBruteForceIncoming")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

