-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e3d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetHSTRCallerId)()
if mp.HSTR_CALLER_SMS == l_0_0 then
  local l_0_1 = (mp.GetSMSLevel)()
  if l_0_1 ~= mp.SMS_SCAN_ONCE_ADV and l_0_1 ~= mp.SMS_SCAN_LOW_ADV and l_0_1 ~= mp.SMS_SCAN_MED_ADV and l_0_1 ~= mp.SMS_SCAN_HIGH_ADV then
    return mp.CLEAN
  end
  local l_0_2 = (mp.hstr_full_log)()
  for l_0_6,l_0_7 in pairs(l_0_2) do
    if l_0_7.matched and l_0_7.VA then
      local l_0_8, l_0_9 = (mp.SMSVirtualQuery)(l_0_7.VA)
      if l_0_8 ~= true then
        return mp.CLEAN
      end
      if l_0_9.prot ~= 64 or l_0_9.state_type ~= mp.SMS_MBI_PRIVATE then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.CLEAN
  return l_0_1
end

