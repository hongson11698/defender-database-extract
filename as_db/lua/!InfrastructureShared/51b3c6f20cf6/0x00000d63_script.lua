-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\51b3c6f20cf6\0x00000d63_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
    if (string.find)(l_0_0, "system32\\mmc.exe", 1, true) then
      return mp.CLEAN
    end
  end
  TrackPidAndTechniqueBM("BM", "T1548.002", "uac_bypass_src")
  return mp.INFECTED
end

