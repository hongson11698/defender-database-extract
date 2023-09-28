-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\113b3fb438d7d\0x00007db0_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  else
  end
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
    bm_AddRelatedFileFromCommandLine((this_sigattrlog[3]).utf8p2, nil, nil, 6)
    sms_untrusted_process()
    local l_0_5 = nil
    -- DECOMPILER ERROR at PC51: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC68: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC75: Unhandled construct in 'MakeBoolean' P3

    if ((this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 and not (this_sigattrlog[5]).matched) or mp.CLEAN == mp.INFECTED then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

