-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFHacktoolWin32PSPegToolDow\0x00000f4f_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) then
    local l_0_0 = (mp.GetMOTWHostUrl)()
    if l_0_0 ~= nil and (string.len)(l_0_0) > 35 and (l_0_0:find("cloud2cloud.co/", 1, true) or l_0_0:find("cloud-share.net", 1, true) or l_0_0:find("uips3.com/", 1, true)) then
      (mp.set_mpattribute)("//Lua:PSPegToolDownload")
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

