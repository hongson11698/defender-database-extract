-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\151b337745701\0x00000751_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[5]).matched or (this_sigattrlog[6]).matched then
      local l_0_1, l_0_2 = (string.lower)((this_sigattrlog[5]).utf8p1)
    end
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC46: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil and IsExchangeServer() == nil then
      (bm.add_related_file)(l_0_1)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

