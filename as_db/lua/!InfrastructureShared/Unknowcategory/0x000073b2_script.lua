-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000073b2_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[3]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).p1)
  local l_0_1 = (string.len)(l_0_0)
  local l_0_2 = (string.lower)((this_sigattrlog[3]).p1)
  if (string.find)(l_0_2, l_0_0, (string.len)(l_0_2) - l_0_1, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

