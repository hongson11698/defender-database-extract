-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaRansomnoteCML\0x00000434_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_mpattributevalue)("RPF:RansomnoteCML:Probability")
do
  if l_0_0 ~= nil and l_0_0 >= 80 and l_0_0 <= 100 then
    local l_0_1 = {}
    -- DECOMPILER ERROR at PC15: No list found for R1 , SetList fails

    -- DECOMPILER ERROR at PC16: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC17: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC18: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC19: Overwrote pending register: R5 in 'AssignReg'

    ;
    (99)(95, 90, 80)
    ;
    (mp.set_mpattribute)("Lua:RansomnoteCMLHigh")
  end
  return mp.CLEAN
end

