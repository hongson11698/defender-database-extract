-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000669e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 21, 35)
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.find)(l_0_0, "u", 1, true)
    if l_0_1 ~= nil then
      (pe.mmap_patch_va)(pevars.sigaddr + 21 + l_0_1 - 1, "��")
    end
  end
  return mp.INFECTED
end

