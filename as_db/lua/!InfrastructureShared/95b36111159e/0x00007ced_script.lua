-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\95b36111159e\0x00007ced_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC15: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Confused about usage of register: R0 in 'UnsetPending'

  if ((this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil and StringEndsWith(((this_sigattrlog[2]).utf8p2):lower(), "werfault.exe")) or StringEndsWith(((this_sigattrlog[2]).utf8p2):lower(), "wermgr.exe") then
    triggerMemoryScanOnProcessTree(true, true, "SMS_M", 1000, "Behavior:Win32/WerInject.SA")
    return mp.INFECTED
  end
  return mp.CLEAN
end

