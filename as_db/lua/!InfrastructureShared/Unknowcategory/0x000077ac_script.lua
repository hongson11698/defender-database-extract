-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000077ac_luac 

-- params : ...
-- function num : 0
if peattributes.isexe and (pe.isdynamic_va)(pevars.sigaddr) == false then
  local l_0_0 = pevars.sigaddr + 7
  local l_0_1 = pevars.sigaddr + 26
  local l_0_2 = (pe.vm_search)(l_0_0, l_0_1, "u\184+", nil, pe.VM_SEARCH_FOP)
  ;
  (pe.mmap_patch_va)(l_0_2, "��")
  ;
  (pe.mmap_patch_va)(l_0_2 + 7, "��")
  return mp.LOWFI
end
do
  return mp.LOWFI
end

