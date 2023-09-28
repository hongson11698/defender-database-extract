-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFileIsPackedPersistContextA\0x000003e3_luac 

-- params : ...
-- function num : 0
checkPackerPersistContext = function(l_1_0, l_1_1, l_1_2)
  -- function num : 0_0
  if l_1_1 == nil or #l_1_1 <= 1 then
    return false
  end
  local l_1_3 = 0
  if l_1_2 ~= nil and l_1_2 > 0 then
    l_1_3 = l_1_2
  end
  if (mp.ispackedwith)(l_1_1 .. "+") then
    if not (MpCommon.QueryPersistContext)(l_1_0, "FileIsPackedWith" .. l_1_1) then
      (MpCommon.AppendPersistContext)(l_1_0, "FileIsPackedWith" .. l_1_1, l_1_3)
    end
    return true
  else
    clearPersistContext(l_1_0, "FileIsPackedWith" .. l_1_1)
    return false
  end
  return false
end

local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
local l_0_1 = false
if peattributes.packersigmatched then
  checkPackerPersistContext(l_0_0, "UPX")
  checkPackerPersistContext(l_0_0, "Aspack")
  checkPackerPersistContext(l_0_0, "ASProtect")
  checkPackerPersistContext(l_0_0, "FSG")
  checkPackerPersistContext(l_0_0, "PECompact")
  checkPackerPersistContext(l_0_0, "Petite")
  checkPackerPersistContext(l_0_0, "EZip")
  checkPackerPersistContext(l_0_0, "Exe32Pack")
  checkPackerPersistContext(l_0_0, "AutoIt")
  checkPackerPersistContext(l_0_0, "AutoHotKey")
  if not (MpCommon.QueryPersistContext)(l_0_0, "PackerSigMatched") then
    (MpCommon.AppendPersistContext)(l_0_0, "PackerSigMatched", 0)
  end
  l_0_1 = true
end
if not (MpCommon.QueryPersistContext)(l_0_0, "FileIsPackedWithUPX") and ((mp.get_mpattribute)("BM_UPX_PACKED") or (mp.get_mpattribute)("Lua:FileIsPackedWithUPX") or (mp.get_mpattribute)("HSTR:UpxDecryption")) then
  (MpCommon.AppendPersistContext)(l_0_0, "FileIsPackedWithUPX", 0)
  l_0_1 = true
end
if l_0_1 then
  if (mp.IsTrustedFile)(false) ~= true then
    do
      local l_0_2 = (mp.IsKnownFriendlyFile)(l_0_0, false, false)
      l_0_2 = l_0_2
      if l_0_2 == true then
        l_0_2 = mp
        l_0_2 = l_0_2.CLEAN
        return l_0_2
      end
      l_0_2 = mp
      l_0_2 = l_0_2.set_mpattribute
      l_0_2("BM_MT1027.002")
      l_0_2 = MpCommon
      l_0_2 = l_0_2.QueryPersistContext
      l_0_2 = l_0_2(l_0_0, "T1027.002")
      if not l_0_2 then
        l_0_2 = MpCommon
        l_0_2 = l_0_2.AppendPersistContext
        l_0_2(l_0_0, "T1027.002", 0)
      end
      l_0_2 = MpCommon
      l_0_2 = l_0_2.QueryPersistContext
      l_0_2 = l_0_2(l_0_0, "SoftwarePacking")
      if not l_0_2 then
        l_0_2 = MpCommon
        l_0_2 = l_0_2.AppendPersistContext
        l_0_2(l_0_0, "SoftwarePacking", 0)
      end
      l_0_2 = mp
      l_0_2 = l_0_2.CLEAN
      do return l_0_2 end
      -- DECOMPILER ERROR: 5 unprocessed JMP targets
    end
  end
end

