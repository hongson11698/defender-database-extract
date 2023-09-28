-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFeatureRPFEhLsHash\0x0000042d_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC10: Overwrote pending register: R0 in 'AssignReg'

do
  if (mp.get_mpattribute)("RPF:MSVC:EH:LsHash") then
    local l_0_0, l_0_1, l_0_2 = nil
  else
  end
  if (mp.get_mpattribute)("RPF:DWARF:EH:LsHash") then
    do return mp.CLEAN end
    local l_0_3 = (mp.enum_mpattributesubstring)("RPF:DWARF:EH:LsHash:")
    for l_0_7,l_0_8 in ipairs(l_0_3) do
      local l_0_4 = {}
      -- DECOMPILER ERROR at PC32: Confused about usage of register: R6 in 'UnsetPending'

      local l_0_10, l_0_11 = R6_PC32:match(":EH:LsHash:(%x+):(%x+):(%x+)$")
      local l_0_12 = nil
      local l_0_13 = #l_0_4 + 1
      l_0_4[l_0_13] = {tonumber(l_0_10, 16), tonumber(l_0_11, 16), l_0_12}
    end
    -- DECOMPILER ERROR at PC53: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (table.sort)(l_0_4, function(l_1_0, l_1_1)
  -- function num : 0_0
  do return l_1_1[2] < l_1_0[2] end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end
)
    local l_0_14 = nil
    for l_0_18,l_0_19 in ipairs(l_0_14) do
      local l_0_15 = {}
      if l_0_19 > 3 then
        break
      end
      l_0_15[#l_0_15 + 1] = l_0_20[3]
    end
    do
      -- DECOMPILER ERROR at PC75: Confused about usage of register: R2 in 'UnsetPending'

      ;
      (mp.set_mpattribute)("MpInternal_researchdata=FuncLsHash:NC=" .. (table.concat)(l_0_15, ","))
      return mp.CLEAN
    end
  end
end

