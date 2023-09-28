-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\63b313c87462\0x00007d61_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  end
  local l_0_1 = nil
  if l_0_1 ~= nil then
    local l_0_2 = nil
    for l_0_6,l_0_7 in ipairs((function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  for l_1_5 in (string.gmatch)(l_1_0, "http[s]?://[^\"%s]+") do
    (table.insert)(l_1_1, l_1_5)
  end
  return l_1_1
end
)(l_0_1)) do
      local l_0_3 = nil
      -- DECOMPILER ERROR at PC29: Confused about usage of register: R7 in 'UnsetPending'

      if (string.match)(R7_PC29, "^https?://") then
        return mp.INFECTED
      end
    end
  end
  do
    return mp.CLEAN
  end
end

