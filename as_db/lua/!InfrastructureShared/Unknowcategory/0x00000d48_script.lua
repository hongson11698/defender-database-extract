-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d48_luac 

-- params : ...
-- function num : 0
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 1) or (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 3) then
  if (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) ~= true then
    return mp.CLEAN
  end
  if (mp.IsTrustedFile)(true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

