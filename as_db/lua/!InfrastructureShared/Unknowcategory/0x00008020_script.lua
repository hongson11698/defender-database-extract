-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008020_luac 

-- params : ...
-- function num : 0
if not peattributes.isexe or peattributes.hasstandardentry or pehdr.Machine ~= 332 then
  return mp.CLEAN
end
if (mp.getfilesize)() >= 3145728 then
  return mp.CLEAN
end
if (this_sigattrlog[10]).matched and (this_sigattrlog[12]).matched then
  local l_0_0 = (string.sub)((this_sigattrlog[10]).p1, 5)
  local l_0_1 = (this_sigattrlog[12]).p1
  if #l_0_0 ~= #l_0_1 then
    return mp.CLEAN
  end
  if (string.find)(l_0_1, "\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  if (string.lower)((string.sub)(l_0_0, 1, 1)) == (string.lower)((string.sub)(l_0_1, 1, 1)) or (string.lower)((string.sub)(l_0_0, 2)) ~= (string.lower)((string.sub)(l_0_1, 2)) or (string.lower)((string.sub)(l_0_0, -4)) ~= ".dll" then
    return mp.CLEAN
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

