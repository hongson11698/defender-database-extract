-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\44478d459\0x00007e13_luac 

-- params : ...
-- function num : 0
do
  if ((((((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or (hstrlog[7]).matched) and not (hstrlog[8]).matched) or (hstrlog[9]).matched then
    local l_0_0 = 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC79: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC81: Confused about usage of register: R0 in 'UnsetPending'

  if (((not (hstrlog[10]).matched or (hstrlog[11]).matched) and not (hstrlog[12]).matched) or (mp.getfilesize)() < 300000) and (l_0_0 >= 2 or l_0_0 < 1 or 0 + 1 + 1 + 1 == 3) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

