-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000061c5_luac 

-- params : ...
-- function num : 0
do
  local l_0_0, l_0_1 = (hstrlog[1]).matched and 1 or 0
  do
    local l_0_2 = nil
    -- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

    if (mp.bitxor)(l_0_2, (hstrlog[2]).matched and 1 or 0) ~= 0 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

