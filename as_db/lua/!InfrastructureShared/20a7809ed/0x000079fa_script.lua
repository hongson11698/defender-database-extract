-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\20a7809ed\0x000079fa_luac 

-- params : ...
-- function num : 0
do
  if not (hstrlog[1]).matched or (hstrlog[2]).matched then
    local l_0_0, l_0_1 = 0 + 1 + 1
  end
  do
    if ((((not (hstrlog[3]).matched or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (hstrlog[6]).matched) and not (hstrlog[7]).matched) or (hstrlog[8]).matched then
      local l_0_2 = nil
    end
    -- DECOMPILER ERROR at PC50: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC54: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC56: Confused about usage of register: R1 in 'UnsetPending'

    if (l_0_2 >= 1 and 0 + 1 + 1 + 1 + 1 + 1 + 1 >= 4) or l_0_2 >= 1 and 0 + 1 + 1 + 1 + 1 + 1 + 1 == 6 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

