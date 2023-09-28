-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFeatureRPFEhLogFuncSize\0x0000042c_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC10: Overwrote pending register: R0 in 'AssignReg'

do
  if (mp.get_mpattribute)("RPF:MSVC:EH:LogFuncSize") then
    local l_0_0, l_0_1, l_0_2 = nil
  else
  end
  if (mp.get_mpattribute)("RPF:DWARF:EH:LogFuncSize") then
    do return mp.CLEAN end
    local l_0_3 = (mp.enum_mpattributesubstring)("RPF:DWARF:EH:LogFuncSize:")
    for l_0_7,l_0_8 in ipairs(l_0_3) do
      local l_0_4 = {}
      l_0_4[#l_0_4 + 1] = l_0_9:match("RPF:MSVC:EH:LogFuncSize:(%d+:%d+)")
    end
    -- DECOMPILER ERROR at PC45: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (mp.set_mpattribute)("MpInternal_researchdata=LogFuncSize:CD=" .. (table.concat)(l_0_4, ";"))
    return mp.CLEAN
  end
end

