-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b7b_luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = {}
  l_1_2.__index = function()
    -- function num : 0_0_0 , upvalues : l_1_1
    return l_1_1
  end

  setmetatable(l_1_0, l_1_2)
end

fastDec2BinWithKey = function(l_2_0, l_2_1, l_2_2, l_2_3)
  -- function num : 0_1 , upvalues : l_0_0
  local l_2_4 = {}
  local l_2_5 = string.char
  for l_2_9 = 0, 255 do
    local l_2_18 = tostring
    l_2_18 = l_2_18(l_2_3(l_2_2, l_2_9))
    local l_2_10, l_2_15 = nil
    l_2_10 = l_2_5
    l_2_15 = l_2_9
    local l_2_17 = nil
    l_2_10 = l_2_10(l_2_15)
    local l_2_16 = nil
    l_2_4[l_2_18] = l_2_10
  end
  l_0_0(l_2_4, " ")
  local l_2_11, l_2_12 = l_2_0:gsub, l_2_0
  local l_2_13 = l_2_1
  do
    local l_2_14 = l_2_4
    do return l_2_11(l_2_12, l_2_13, l_2_14) end
    -- DECOMPILER ERROR at PC27: Confused about usage of register R7 for local variables in 'ReleaseLocals'

  end
end


