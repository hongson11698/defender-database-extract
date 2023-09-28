-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFAsrLinkRescueRpt\0x00001222_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
if not l_0_0 then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
if not (string.find)(l_0_0, "\\software\\microsoft\\asrfix", 1, true) then
  return mp.CLEAN
end
local l_0_1 = (string.sub)(l_0_0, 1, 4)
local l_0_2 = (sysio.RegOpenKey)(l_0_0)
if l_0_2 then
  local l_0_3 = (sysio.GetRegValueAsDword)(l_0_2, "scriptresult")
  local l_0_4 = (sysio.GetRegValueAsDword)(l_0_2, "hklmfailure")
  local l_0_5 = (sysio.GetRegValueAsDword)(l_0_2, "hklmsuccess")
  local l_0_6 = (sysio.GetRegValueAsDword)(l_0_2, "hkuappfailure")
  local l_0_7 = (sysio.GetRegValueAsDword)(l_0_2, "hkuappsuccess")
  local l_0_8 = (sysio.GetRegValueAsDword)(l_0_2, "numlinksfound")
  local l_0_9 = (sysio.GetRegValueAsString)(l_0_2, "scripterror")
  local l_0_10 = (sysio.GetRegValueAsString)(l_0_2, "timestamp")
  local l_0_11 = (sysio.GetRegValueAsDword)(l_0_2, "version")
  if l_0_3 then
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=scriptresult=%d", l_0_3))
  end
  if l_0_4 then
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=hklmfailure=%d", l_0_4))
  end
  if l_0_5 then
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=hklmsuccess=%d", l_0_5))
  end
  if l_0_6 then
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=hkuappfailure=%d", l_0_6))
  end
  if l_0_7 then
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=hkuappsuccess=%d", l_0_7))
  end
  if l_0_8 then
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=numlinksfound=%d", l_0_8))
  end
  if l_0_9 then
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=scripterror=%s", l_0_9))
  end
  if l_0_10 then
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=timestamp=%s", l_0_10))
  end
  if l_0_11 then
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=version=%d", l_0_11))
  end
  if l_0_1 == "hkcu" then
    local l_0_12 = (sysio.GetRegValueAsDword)(l_0_2, "mprecovertoolexecstatus")
    local l_0_13 = (sysio.GetRegValueAsDword)(l_0_2, "mprecoversuccesscount")
    local l_0_14 = (sysio.GetRegValueAsString)(l_0_2, "mptaskbarrecoverversion")
    if l_0_12 then
      (mp.set_mpattribute)((string.format)("MpInternal_researchdata=mprecovertoolexecstatus=%d", l_0_12))
    end
    if l_0_12 then
      (mp.set_mpattribute)((string.format)("MpInternal_researchdata=mprecoversuccesscount=%d", l_0_13))
    end
    if l_0_12 then
      (mp.set_mpattribute)((string.format)("MpInternal_researchdata=mptaskbarrecoverversion=%s", l_0_14))
    end
  end
  do
    do
      do return mp.INFECTED end
      return mp.CLEAN
    end
  end
end

