-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000813e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 4000000 or l_0_0 < 4000 then
  return mp.CLEAN
end
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("pea_ismsil") then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("RPF:TopLevelFile") then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1:find("program files", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("system32", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("syswow64", 1, true) then
  return mp.CLEAN
end
if (hstrlog[1]).matched and (hstrlog[1]).match_offsets_count == 4 then
  local l_0_2 = (pe.query_import)(pe.IMPORT_STATIC, 2307734577)
  if l_0_2 ~= 0 then
    local l_0_3 = (hstrlog[1]).VA + ((hstrlog[1]).match_offsets)[4]
    if l_0_3 + 4 + (mp.readu_u32)((pe.mmap_va)(l_0_3, 4), 1) == l_0_2 then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

