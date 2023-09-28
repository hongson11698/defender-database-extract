-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELTrojanDownloaderWin64BatLoaderE\0x00001030_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 100000000 and l_0_0 < 135000000 then
  if (mp.readu_u32)(headerpage, 1) ~= 67324752 then
    return mp.CLEAN
  end
  ;
  (mp.readprotection)(false)
  local l_0_1 = 276
  local l_0_2 = (mp.readfile)(l_0_0 - l_0_1, l_0_1)
  ;
  (mp.readprotection)(true)
  if l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_3 = (string.find)(l_0_2, ".msi", 1, true)
  if l_0_3 == nil then
    return mp.CLEAN
  end
  if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) ~= true then
    return mp.CLEAN
  end
  if (mp.GetMOTWZone)() < 3 then
    return mp.CLEAN
  end
  local l_0_4 = (mp.GetMOTWHostUrl)()
  if l_0_4 ~= nil and ((string.find)(l_0_4, "4sync.com", 1, true) or (string.find)(l_0_4, "4shared.com", 1, true)) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

