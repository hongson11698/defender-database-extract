-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\151b3e57a0a8a\0x00007cdd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.sub)(l_0_0, -12) == "\\msmpeng.exe" then
  return mp.CLEAN
else
  if (string.sub)(l_0_0, -10) == "\\mpcmd.exe" then
    return mp.CLEAN
  else
    if (string.sub)(l_0_0, -13) == "\\mpcmdrun.exe" then
      return mp.CLEAN
    else
      if (string.sub)(l_0_0, -12) == "\\svchost.exe" then
        return mp.CLEAN
      end
    end
  end
end
TrackPidAndTechniqueBM("BM", "T1562.001", "mptamper_gp")
return mp.INFECTED

