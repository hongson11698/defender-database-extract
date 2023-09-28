-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000079b8_luac 

-- params : ...
-- function num : 0
fastBase2Dec = function(l_1_0, l_1_1, l_1_2)
  -- function num : 0_0
  if l_1_2 > 36 or l_1_2 < 2 then
    return nil
  end
  local l_1_3 = {}
  local l_1_4 = string.char
  local l_1_5 = {}
  l_1_5.__index = function(l_2_0, l_2_1)
    -- function num : 0_0_0 , upvalues : l_1_4, l_1_2
    local l_2_2 = l_1_4(tonumber(l_2_1, l_1_2))
    rawset(l_2_0, l_2_1, l_2_2)
    return l_2_2
  end

  setmetatable(l_1_3, l_1_5)
  local l_1_6, l_1_7 = (l_1_0:upper()):gsub, l_1_0:upper()
  local l_1_8 = l_1_1
  do
    local l_1_9 = l_1_3
    do return l_1_6(l_1_7, l_1_8, l_1_9) end
    -- DECOMPILER ERROR at PC25: Confused about usage of register R7 for local variables in 'ReleaseLocals'

  end
end


