-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaInvalidSigningPETopLevelIOAV\0x00000ef0_luac 

-- params : ...
-- function num : 0
do
  if (mp.GetCertificateInfo)(false) ~= nil and not (mp.IsTrustedFile)(false) then
    local l_0_0 = (mp.IOAVGetDownloadBrowser)()
    if l_0_0 ~= nil then
      l_0_0 = (string.lower)(l_0_0)
      if l_0_0 == "utorrent.exe" or l_0_0 == "bittorrent.exe" then
        (mp.set_mpattribute)("Lua:InvalidSigningPETopLevelIOAVuTorrent")
      else
        ;
        (mp.set_mpattribute)("Lua:InvalidSigningPETopLevelIOAV")
        ;
        (mp.set_mpattribute)("MpNonCachedLowfi")
      end
    else
      ;
      (mp.set_mpattribute)("Lua:InvalidSigningPETopLevelIOAV")
      ;
      (mp.set_mpattribute)("MpNonCachedLowfi")
    end
  end
  return mp.CLEAN
end

