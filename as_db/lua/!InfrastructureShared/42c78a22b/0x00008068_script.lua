-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\42c78a22b\0x00008068_luac 

-- params : ...
-- function num : 0
do
  if ((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched then
    local l_0_0, l_0_1 = 0 + 1 + 1 + 1
  end
  do
    if ((((((((((((((not (hstrlog[4]).matched or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or (hstrlog[7]).matched) and not (hstrlog[8]).matched) or (hstrlog[9]).matched) and not (hstrlog[10]).matched) or (hstrlog[11]).matched) and not (hstrlog[12]).matched) or (hstrlog[13]).matched) and not (hstrlog[14]).matched) or (hstrlog[15]).matched) and not (hstrlog[16]).matched) or (hstrlog[17]).matched) and not (hstrlog[18]).matched) or (hstrlog[19]).matched then
      local l_0_2 = nil
    end
    -- DECOMPILER ERROR at PC121: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC123: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC127: Confused about usage of register: R1 in 'UnsetPending'

    if (mp.getfilesize)() < 300000 and (l_0_2 >= 2 or ((l_0_2 >= 1 and 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 6) or 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 14)) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

