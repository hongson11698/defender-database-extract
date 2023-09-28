-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_AFlafisiE\ObMpAttributes\0x00000090_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.IOAVGetDownloadUrl)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(l_0_0)
if (string.find)(l_0_1, "flash%s*player.*%.hta$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

