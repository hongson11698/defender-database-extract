-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\17d789fb6\0x000074d7_luac 

-- params : ...
-- function num : 0
do
  if ((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched then
    local l_0_0 = 0 + 1 + 1 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

  if ((mp.getfilesize)() < 25000 and l_0_0 >= 1) or l_0_0 >= 4 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

