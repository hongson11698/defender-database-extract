-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006a46_luac 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
if (this_sigattrlog[5]).matched and (this_sigattrlog[6]).matched then
  local l_0_0 = (this_sigattrlog[5]).p1
  local l_0_1 = (this_sigattrlog[6]).p1
  if l_0_0 .. l_0_1 == "unsafe" then
    return mp.INFECTED
  end
end
do
  return mp.LOWFI
end

