-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ad8_luac 

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

fastDec2Bin = function(l_2_0, l_2_1)
  -- function num : 0_1 , upvalues : l_0_0
  local l_2_2 = {}
  local l_2_3 = string.char
  for l_2_7 = 0, 255 do
    local l_2_8, l_2_13 = tostring(l_2_7)
    l_2_13 = l_2_3
    local l_2_15 = l_2_7
    l_2_13 = l_2_13(l_2_15)
    local l_2_14 = nil
    l_2_2[l_2_8] = l_2_13
  end
  l_0_0(l_2_2, " ")
  local l_2_9, l_2_10 = l_2_0:gsub, l_2_0
  local l_2_11 = l_2_1
  do
    local l_2_12 = l_2_2
    do return l_2_9(l_2_10, l_2_11, l_2_12) end
    -- DECOMPILER ERROR at PC24: Confused about usage of register R5 for local variables in 'ReleaseLocals'

  end
end


