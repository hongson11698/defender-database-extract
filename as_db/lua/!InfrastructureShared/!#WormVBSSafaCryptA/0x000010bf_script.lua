-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#WormVBSSafaCryptA\0x000010bf_luac 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
if (mp.getfilesize)() >= 1792 then
  local l_0_0 = (mp.readfile)(0, 1792)
  local l_0_1, l_0_2 = (string.find)(l_0_0, "[dD][eE][cC][rR][yY][pP][tT]")
  local l_0_3 = false
  local l_0_4 = nil
  if l_0_1 ~= nil then
    l_0_4 = (mp.readfile)(l_0_1 + 8, (mp.getfilesize)() - l_0_1 - 8)
    l_0_3 = true
  else
    local l_0_5, l_0_7, l_0_8 = (string.find)(l_0_0, "\"[A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/]")
    if l_0_5 ~= nil then
      l_0_8 = mp
      l_0_8 = l_0_8.readfile
      l_0_8 = l_0_8(l_0_5, (mp.getfilesize)() - l_0_5)
      l_0_4 = l_0_8
      l_0_3 = true
    end
  end
  do
    if l_0_3 then
      local l_0_6 = mp.set_mpattribute
      l_0_6("//MpBase64DecodeLongLines")
      l_0_6 = l_0_6(l_0_4, "\"%).+", "")
      local l_0_9 = l_0_6:len()
      local l_0_10 = l_0_9 - l_0_9 / 4 * 4
      ;
      (mp.vfo_add_buffer)(l_0_6 .. (string.rep)("=", l_0_10), "[Safa_Crypt]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    end
    do
      return mp.CLEAN
    end
  end
end

