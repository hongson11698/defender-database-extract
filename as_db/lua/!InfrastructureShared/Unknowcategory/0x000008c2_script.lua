-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000008c2_luac 

-- params : ...
-- function num : 0
if peattributes.ismsil then
  local l_0_0 = (pe.get_versioninfo)()
  if l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC14: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC15: Overwrote pending register: R2 in 'AssignReg'

  for l_0_5 = "KnowBe4 Ransomware Simulator", #l_0_1 do
    if l_0_0.ProductName == l_0_1[l_0_5] then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

