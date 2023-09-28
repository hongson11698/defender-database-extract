-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ObfuscatorSB\ObMpAttributes\0x00000078_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("SCPT:Worm:VBS/Jenxcus!Crypt32") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 10000 or l_0_0 > 700000 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, 8192)
l_0_1 = (string.lower)(l_0_1)
local l_0_2 = l_0_1:match("public%sfunction%s(%l%l%l%l-)%(")
if l_0_2 == nil then
  return mp.CLEAN
end
do
  if not l_0_1:match("\r\n?\t(%l%l%l%l-)%s=%s\"%x%x%x%x%x%x%x%x%x%x-") then
    local l_0_3 = l_0_1:match("\r\n?\t(%l%l%l%l-)%s=%s-chrw%(%d%d%d?%)%s&%schrw%(%d%d%d?%)")
  end
  -- DECOMPILER ERROR at PC49: Confused about usage of register: R3 in 'UnsetPending'

  if l_0_3 == nil then
    return mp.CLEAN
  end
  local l_0_4 = nil
  local l_0_5 = nil
  local l_0_6 = nil
  local l_0_7, l_0_8 = , ((string.lower)((mp.readfile)(l_0_5, l_0_0 - (l_0_0 - 8192)))):match("execute%s-%((%l%l%l%l-)%s-%(%s-[^%l]-%l-[^%l]-%(%d%d%d?%)%s-,(%l%l%l%l-)%)%)")
  if l_0_8 == nil then
    return mp.CLEAN
  end
  if (string.lower)((mp.readfile)(l_0_5, l_0_0 - (l_0_0 - 8192))) == nil then
    return mp.CLEAN
  end
  if l_0_2 ~= l_0_8 then
    return mp.CLEAN
  end
  if l_0_4 ~= (string.lower)((mp.readfile)(l_0_5, l_0_0 - (l_0_0 - 8192))) then
    return mp.CLEAN
  end
  return mp.SUSPICIOUS
end

