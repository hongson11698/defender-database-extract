-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\23578362a\0x00007bbf_luac 

-- params : ...
-- function num : 0
do
  if ((((((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or (hstrlog[7]).matched) and not (hstrlog[8]).matched) or (hstrlog[9]).matched then
    local l_0_0 = 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC60: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC62: Confused about usage of register: R0 in 'UnsetPending'

  if ((mp.getfilesize)() < 200000 and l_0_0 >= 7) or l_0_0 == 9 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

