-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000793_luac 

-- params : ...
-- function num : 0
if (MpCommon.IsSampled)(50000, true, true, true) then
  local l_0_0 = (bm.get_current_process_startup_info)()
  if l_0_0 and l_0_0.integrity_level < MpCommon.SECURITY_MANDATORY_HIGH_RID then
    local l_0_1 = (bm.get_imagepath)()
    if l_0_1 then
      l_0_1 = (MpCommon.PathToWin32Path)(l_0_1)
      if l_0_1 and not (mp.IsKnownFriendlyFile)(l_0_1, false, false) then
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

