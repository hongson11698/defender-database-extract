-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006685_luac 

-- params : ...
-- function num : 0
do
  if not (hstrlog[1]).matched then
    local l_0_0 = (hstrlog[2]).matched
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  if mp.HSTR_WEIGHT >= 3 and (l_0_0 or (hstrlog[3]).matched) then
    return mp.INFECTED
  end
  if mp.HSTR_WEIGHT >= 2 then
    return mp.LOWFI
  else
    -- DECOMPILER ERROR at PC31: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_0 then
      return mp.LOWFI
    end
  end
  return mp.CLEAN
end

