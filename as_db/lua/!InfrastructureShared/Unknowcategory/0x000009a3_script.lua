-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000009a3_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(mp.getfilename, mp.FILEPATH_QUERY_FNAME)
if l_0_0 then
  local l_0_2 = (string.sub)(l_0_1, -5)
  if l_0_2 ~= ".lili" and l_0_2 ~= ".hoho" and l_0_2 ~= ".mama" and l_0_2 ~= ".crcr" then
    l_0_2 = (string.sub)(l_0_1, -4)
    if l_0_2 ~= ".log" then
      return mp.CLEAN
    end
  end
  local l_0_3 = headerpage[1]
  local l_0_4 = (mp.readu_u32)(headerpage, 18)
  if l_0_3 > 2 then
    return mp.CLEAN
  end
  if l_0_4 ~= (mp.getfilesize)() - 21 then
    return mp.CLEAN
  end
  if l_0_4 == 0 then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("BM_KnotCryptDataFile")
end
do
  return mp.CLEAN
end

