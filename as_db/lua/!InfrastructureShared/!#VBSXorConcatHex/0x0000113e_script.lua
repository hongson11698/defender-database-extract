-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#VBSXorConcatHex\0x0000113e_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 524288 then
  (mp.readprotection)(false)
  local l_0_0 = (mp.readfile)(0, (mp.getfilesize)())
  local l_0_1 = l_0_0:find("=[%s]*\"[%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x]")
  if l_0_1 == nil then
    return mp.CLEAN
  end
  local l_0_2 = (l_0_0:match("[%x]+", l_0_1 + 2))
  local l_0_3 = nil
  local l_0_4 = l_0_1 + #l_0_2 + 3
  l_0_1 = l_0_0:find("&[%s]*\"[%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x]", l_0_4)
  while l_0_1 ~= nil do
    l_0_3 = l_0_0:match("[%x]+", l_0_1 + 2)
    l_0_2 = l_0_2 .. l_0_3
    l_0_4 = l_0_1 + #l_0_3 + 3
    l_0_1 = l_0_0:find("&[%s]*\"[%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x]", l_0_4)
  end
  local l_0_5 = (string.match)(l_0_0, "[Ee][Xx][Ee][Cc][Uu][Tt][Ee][%s]*%([%a]+[%s]*%([%s]*[Cc][Hh][Rr][Ww][%s]*%([%s]*([%d]+)%.?0?[%s]*%)[%s]*,", l_0_4)
  if l_0_5 == nil then
    return mp.CLEAN
  end
  local l_0_6 = tonumber(l_0_5)
  local l_0_7 = {}
  local l_0_8, l_0_9 = nil, nil
  for l_0_13 = 0, 255 do
    l_0_8 = (string.format)("%02x", l_0_13)
    l_0_9 = (mp.bitxor)(l_0_13, l_0_6)
    l_0_7[l_0_8] = (string.format)("%c", l_0_9)
  end
  local l_0_14 = (string.lower)(l_0_2)
  local l_0_15 = (string.gsub)(l_0_14, "(%x%x)", l_0_7)
  ;
  (mp.vfo_add_buffer)(l_0_15, "[Vbs]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
do
  return mp.CLEAN
end

