-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000074c1_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0.TimeProvOpen = ""
l_0_0.TimeProvClose = ""
l_0_0.TimeProvCommand = ""
local l_0_1 = 0
local l_0_2, l_0_3 = (pe.get_exports)()
if l_0_2 > 2 then
  for l_0_7 = 1, l_0_2 do
    if l_0_0[(pe.mmap_string_rva)((l_0_3[l_0_7]).namerva, 64)] then
      l_0_1 = l_0_1 + 1
    end
  end
  if l_0_1 == 3 then
    return mp.INFECTED
  end
end
return mp.CLEAN

