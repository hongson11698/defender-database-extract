-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\12e78d0c3\0x00007b1d_luac 

-- params : ...
-- function num : 0
do
  if ((not (hstrlog[2]).matched or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched then
    local l_0_0 = 0 + 1 + 1 + 1 + 1
  end
  do
    if ((hstrlog[6]).matched and not (hstrlog[7]).matched) or (hstrlog[8]).matched then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC49: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC58: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC62: Unhandled construct in 'MakeBoolean' P3

    if (l_0_1 == 4 and (hstrlog[1]).matched) or 0 + 1 + 1 + 1 == 3 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

