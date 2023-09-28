-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007879_luac 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
if peattributes.no_exports then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (pe.get_exports)()
if l_0_0 > 1 then
  for l_0_5 = 1, l_0_0 do
    local l_0_6 = (pe.mmap_string_rva)((l_0_1[l_0_5]).namerva, 64)
    if (string.lower)(l_0_6) == "splsamodeinitialize" then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

