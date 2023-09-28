-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELTrojanDownloaderWin64BatLoaderD\0x00000f3f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 100000000 and l_0_0 < 135000000 then
  if (mp.readu_u64)(headerpage, 1) ~= -2.2262717569742e+18 then
    return mp.CLEAN
  end
  if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) ~= true then
    return mp.CLEAN
  end
  if (mp.GetMOTWZone)() < 3 then
    return mp.CLEAN
  end
  local l_0_1 = (mp.GetMOTWHostUrl)()
  if l_0_1 ~= nil and ((string.find)(l_0_1, "4sync.com", 1, true) or (string.find)(l_0_1, "4shared.com", 1, true)) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

