-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!BITSAbuseF\Includes\0x00000095_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
local l_0_2 = {}
l_0_2["svchost.exe"] = true
l_0_2["ccsvchst.exe"] = true
if l_0_2[l_0_1] == true then
  return mp.CLEAN
end
local l_0_3 = {}
l_0_3["cmd.exe"] = true
l_0_3["powershell.exe"] = true
local l_0_4 = {}
l_0_4["cscript.exe"] = true
l_0_4["wscript.exe"] = true
local l_0_5 = {}
l_0_5["mshta.exe"] = true
l_0_5["rundll32.exe"] = true
l_0_5["regasm.exe"] = true
l_0_5["regsvc.exe"] = true
l_0_5["regsvr32.exe"] = true
l_0_5["msbuild.exe"] = true
l_0_5["certutil.exe"] = true
l_0_5["installutil.exe"] = true
local l_0_6 = false
local l_0_7 = nil
if l_0_3[l_0_1] == true then
  l_0_6 = true
  l_0_7 = 3289195922
else
  if l_0_4[l_0_1] == true then
    l_0_6 = true
    l_0_7 = 1560572968
  else
    if l_0_5[l_0_1] == true then
      l_0_6 = true
      l_0_7 = 704857278
    end
  end
end
if l_0_6 == false or l_0_7 == nil then
  return mp.CLEAN
end
local l_0_8 = (mp.getfilename)()
if not (MpCommon.QueryPersistContext)(l_0_8, "DroppedByBitsadmin") and not (MpCommon.QueryPersistContext)(l_0_8, "DroppedByBITS") then
  return mp.CLEAN
end
local l_0_9, l_0_10 = getAgePrev(true)
local l_0_11 = false
if l_0_9 > -1 or l_0_10 > -1 or (mp.get_mpattribute)("agePrevQueried") or (mp.get_mpattribute)("BM_BlockedForBITS") or (MpCommon.QueryPersistContext)(l_0_8, "agePrevQueried") or (MpCommon.QueryPersistContext)(l_0_8, "BM_BlockedForBITS") then
  l_0_11 = true
end
if l_0_11 == true then
  if (mp.get_mpattribute)("MpDisableCaching") then
    (mp.clear_mpattribute)("MpDisableCaching")
  end
  if (mp.get_mpattribute)("queryAgePrev") then
    (mp.clear_mpattribute)("queryAgePrev")
  end
  clearPersistContext(l_0_8, "queryAgePrev")
  if (mp.get_mpattribute)("disableCachingQueryAgePrev") then
    (mp.clear_mpattribute)("disableCachingQueryAgePrev")
  end
  clearPersistContext(l_0_8, "disableCachingQueryAgePrev")
end
if l_0_9 == -1 and l_0_10 == -1 and l_0_11 == false then
  if (mp.IsTrustedFile)(false) == true then
    return mp.CLEAN
  end
  if not (MpCommon.QueryPersistContext)(l_0_8, "BM_AgePrevLookedUpForBITS") then
    (MpCommon.AppendPersistContext)(l_0_8, "BM_AgePrevLookedUpForBITS", 0)
  end
  ;
  (mp.set_mpattribute)("BM_AgePrevLookedUpForBITS")
  if not (mp.get_mpattribute)("disableCachingQueryAgePrev") then
    (mp.set_mpattribute)("disableCachingQueryAgePrev")
  end
  if not (MpCommon.QueryPersistContext)(l_0_8, "disableCachingQueryAgePrev") then
    (MpCommon.AppendPersistContext)(l_0_8, "disableCachingQueryAgePrev", 0)
  end
else
  if l_0_9 > -1 and l_0_9 <= 1 and l_0_10 > -1 and l_0_10 <= 100 then
    if not (MpCommon.QueryPersistContext)(l_0_8, "BM_BlockedForBITS") then
      (MpCommon.AppendPersistContext)(l_0_8, "BM_BlockedForBITS", 0)
    end
    ;
    (mp.set_mpattribute)("BM_BlockedForBITS")
    return mp.INFECTED
  else
    ;
    (mp.ReportLowfi)(l_0_8, l_0_7)
  end
end
return mp.CLEAN

