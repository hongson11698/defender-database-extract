-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1a1b3074a99de\0x000009f6_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
do
  if l_0_0 ~= nil and (string.len)(l_0_0) >= 15 then
    local l_0_1 = {}
    l_0_1["msmpeng.exe"] = true
    l_0_1["mpcmd.exe"] = true
    l_0_1["mpcmdrun.exe"] = true
    l_0_1["resetengine.exe"] = true
    l_0_1["svchost.exe"] = true
    l_0_1["wuauclt.exe"] = true
    l_0_1["dismhost.exe"] = true
    if l_0_1[((string.lower)((string.sub)(l_0_0, -15))):match("\\([^\\]+)$")] then
      return mp.CLEAN
    end
  end
  TrackPidAndTechniqueBM("BM", "T1562.001", "mptamper_cipolicy")
  return mp.INFECTED
end

