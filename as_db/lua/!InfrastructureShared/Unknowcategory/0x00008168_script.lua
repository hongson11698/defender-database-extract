-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008168_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.UfsGetMetadataBool)("DotNetCoreBundleExtracts", false)
if peattributes.ismsil == false or not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = "\000\000\n(\144\001\001\000\000+\144\t\001\000(\144\000"
local l_0_3 = (mp.BMSearchFile)(0, 3000, l_0_2)
if l_0_3 ~= -1 then
  local l_0_4 = (pe.get_netmetadata)()
  local l_0_5 = {}
  -- DECOMPILER ERROR at PC30: No list found for R5 , SetList fails

  -- DECOMPILER ERROR at PC31: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC33: Overwrote pending register: R7 in 'AssignReg'

  -- DECOMPILER ERROR at PC34: Overwrote pending register: R8 in 'AssignReg'

  local l_0_6 = (("GetProcesses").readu_u32)("Process", "Count")
  local l_0_7 = l_0_4.strheap_RVA + (pe.metadata_decode)(l_0_6, 2)
  ;
  (mp.readprotection)(false)
  local l_0_8 = (pe.mmap_rva)(l_0_7, #l_0_5[1])
  if (string.find)(l_0_8, l_0_5[1]) == nil then
    (mp.readprotection)(true)
    return mp.CLEAN
  end
  local l_0_9 = (pe.metadata_decode)(l_0_6, 1)
  l_0_7 = l_0_4.strheap_RVA + (pe.metadata_decode)(l_0_9, 2)
  l_0_8 = (pe.mmap_rva)(l_0_7, #l_0_5[2])
  if (string.find)(l_0_8, l_0_5[2]) == nil then
    (mp.readprotection)(true)
    return mp.CLEAN
  end
  l_0_6 = (mp.readu_u32)(headerpage, l_0_3 + 5)
  l_0_9 = (pe.metadata_decode)(l_0_6, 1)
  l_0_7 = l_0_4.strheap_RVA + (pe.metadata_decode)(l_0_9, 2)
  l_0_8 = (pe.mmap_rva)(l_0_7, #l_0_5[3])
  if (string.find)(l_0_8, l_0_5[3]) == nil then
    (mp.readprotection)(true)
    return mp.CLEAN
  end
  ;
  (mp.readprotection)(true)
  return mp.INFECTED
end
do
  return mp.CLEAN
end

