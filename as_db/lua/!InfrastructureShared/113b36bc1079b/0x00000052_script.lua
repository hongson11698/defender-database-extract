-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\113b36bc1079b\0x00000052_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil
  end
  if (this_sigattrlog[2]).matched then
    local l_0_2 = (this_sigattrlog[2]).utf8p1
    ;
    (table.insert)({}, l_0_2)
    -- DECOMPILER ERROR at PC25: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (MpCommon.SetPersistContextNoPath)("RegKeyToDelete_safemode", {}, 7200)
    return mp.INFECTED
  end
end

