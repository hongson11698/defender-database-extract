-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000092d_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  if (this_sigattrlog[2]).matched then
    do return mp.CLEAN end
    if not (this_sigattrlog[2]).utf8p2 then
      return mp.CLEAN
    end
    hexToAscii = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  for l_1_5 = 1, #l_1_0, 2 do
    local l_1_10 = nil
    l_1_10 = #l_1_1
    l_1_10 = l_1_10 + 1
    local l_1_6, l_1_11 = nil
    l_1_6 = string
    l_1_6 = l_1_6.char
    l_1_11 = tonumber
    do
      local l_1_13, l_1_14, l_1_15, l_1_16, l_1_17 = .end
      l_1_6 = l_1_6(l_1_11(l_1_0:sub(l_1_5, l_1_5 + 1), 16), l_1_13, l_1_14, l_1_15, l_1_16, l_1_17)
      local l_1_12 = nil
      l_1_1[l_1_10] = l_1_6
      -- DECOMPILER ERROR at PC18: Confused about usage of register R8 for local variables in 'ReleaseLocals'

      -- DECOMPILER ERROR at PC18: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
  local l_1_7 = nil
  local l_1_8 = nil
  local l_1_9 = nil
  return (table.concat)(l_1_1, "")
end

    -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

    for l_0_7 in (string.gmatch)((this_sigattrlog[2]).utf8p2, "(%x%x%x%x[%x]+)") do
      local l_0_4 = nil
      -- DECOMPILER ERROR at PC34: Confused about usage of register: R4 in 'UnsetPending'

      if R4_PC34:find("^68747470") then
        R4_PC34 = hexToAscii(R4_PC34)
        ;
        (bm.add_related_string)("bmurl", R4_PC34, bm.RelatedStringBMReport)
      else
        R4_PC34 = hexToAscii(R4_PC34)
        ;
        (bm.add_related_file)(R4_PC34)
      end
    end
    return mp.INFECTED
  end
end

