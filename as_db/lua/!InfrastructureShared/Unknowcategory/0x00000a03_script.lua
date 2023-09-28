-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000a03_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 then
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC9: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC10: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC11: Overwrote pending register: R3 in 'AssignReg'

  for l_0_5,l_0_6 in ("/var/tmp")("/tmp/") do
    if l_0_0:find(l_0_6, 1, true) ~= nil then
      return mp.INFECTED
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.CLEAN
  return l_0_1
end

