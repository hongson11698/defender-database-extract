-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008031_luac 

-- params : ...
-- function num : 0
simdmpemb = function(l_1_0, l_1_1, l_1_2)
  -- function num : 0_0
  if l_1_0 <= 0 or l_1_2 <= l_1_1 + 24 then
    return mp.CLEAN
  end
  local l_1_3 = (mp.readfile)(l_1_1, 24)
  if (mp.readu_u32)(l_1_3, 9) ~= 0 then
    return mp.CLEAN
  end
  local l_1_4 = (mp.readu_u32)(l_1_3, 5)
  if l_1_4 < 0 or l_1_2 <= l_1_4 then
    return mp.CLEAN
  end
  do
    if l_1_4 >= 32 then
      local l_1_9 = mp.vfo_add_buffer
      l_1_9((mp.readfile)(l_1_1 + 24, l_1_4), (string.format)("[SmrtInstMkrEmb%x]", l_1_1), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    end
    local l_1_5 = simdmpemb
    local l_1_6 = l_1_0 - 1
    local l_1_7 = l_1_1 + l_1_4 + 24
    do
      local l_1_8 = l_1_2
      do return l_1_5(l_1_6, l_1_7, l_1_8) end
      -- DECOMPILER ERROR at PC59: Confused about usage of register R6 for local variables in 'ReleaseLocals'

    end
  end
end

local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4096 or l_0_0 > 16777216 then
  return mp.CLEAN
end
local l_0_1 = (pe.get_regval)(pe.REG_EAX)
if l_0_1 <= 0 or l_0_1 > 16777216 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
simdmpemb(10, l_0_1, l_0_0)
return mp.CLEAN

