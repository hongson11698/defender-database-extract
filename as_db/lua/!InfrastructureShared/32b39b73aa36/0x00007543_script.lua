-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\32b39b73aa36\0x00007543_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = nil
    if (string.find)((string.lower)(l_0_0), "d0nut.html") ~= nil then
      extractRansomNote(l_0_0)
      sms_untrusted_process()
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

