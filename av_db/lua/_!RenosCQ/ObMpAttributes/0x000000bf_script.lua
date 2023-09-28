-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!RenosCQ\ObMpAttributes\0x000000bf_luac 

-- params : ...
-- function num : 0
if peattributes.resource_only_dll and pehdr.NumberOfSections == 3 and peattributes.no_ep and peattributes.x86_image then
  (mp.readprotection)(false)
  local l_0_0 = (mp.readfile)((pesecs[2]).PointerToRawData, 352)
  if (mp.crc32)(-1, l_0_0, 1, 352) == 2202006724 then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

