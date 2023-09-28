-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\55b301f637f4\0x000001ae_luac 

-- params : ...
-- function num : 0
do
  if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") or (mp.IsHipsRuleEnabled)("9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2") then
    local l_0_0 = (string.lower)((bm.get_imagepath)())
    if (string.find)(l_0_0, "\\program files", 1, true) then
      return mp.CLEAN
    end
    TrackPidAndTechniqueBM("BM", "T1555.004", "credentialaccess")
    return mp.INFECTED
  end
  return mp.CLEAN
end

