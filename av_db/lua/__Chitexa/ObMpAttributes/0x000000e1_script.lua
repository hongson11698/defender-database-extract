-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\__Chitexa\ObMpAttributes\0x000000e1_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetLnkInfo)()
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
local l_0_1 = l_0_0.Arguments
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (string.find)(l_0_1, "\\RECYCLER.BIN\\", 1, true)
do
  if l_0_2 ~= nil and l_0_2 > 1 then
    local l_0_3 = (string.byte)(l_0_1, l_0_2 - 1)
    if l_0_3 >= 128 and l_0_3 <= 255 then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

