-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f7f_luac 

-- params : ...
-- function num : 0
do
  local l_0_0 = {}
  -- DECOMPILER ERROR at PC14: No list found for R0 , SetList fails

  -- DECOMPILER ERROR at PC15: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC26: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC27: Overwrote pending register: R3 in 'AssignReg'

  if pehdr.NumberOfSections >= 7 and pehdr.NumberOfSections <= 11 and binary_search(1667851054, ((1685024046)[2]).NameDW) ~= 0 then
    return mp.INFECTED
  end
  if pehdr.NumberOfSections >= 12 and pehdr.NumberOfSections <= 15 and binary_search(l_0_0, (pesecs[3]).NameDW) ~= 0 then
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

