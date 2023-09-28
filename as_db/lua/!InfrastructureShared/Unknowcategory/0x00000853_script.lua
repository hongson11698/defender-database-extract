-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000853_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 200000000 then
  return mp.CLEAN
end
if (MpCommon.GetPersistContextCountNoPath)("RegHiveSamBySysProc") <= 0 then
  return mp.CLEAN
end
for l_0_3 = 1, mp.SIGATTR_LOG_SZ do
  if (sigattr_head[l_0_3]).matched and (sigattr_head[l_0_3]).attribute == 16384 then
    local l_0_4 = (string.lower)((sigattr_head[l_0_3]).utf8p1)
    local l_0_5 = (MpCommon.GetPersistContextNoPath)("RegHiveSamBySysProc")
    for l_0_9,l_0_10 in ipairs(l_0_5) do
      if l_0_10 == l_0_4 then
        (bm.add_threat_file)(l_0_10)
        return mp.INFECTED
      end
    end
  end
end
return mp.CLEAN

