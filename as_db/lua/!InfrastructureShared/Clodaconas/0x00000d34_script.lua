-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Clodaconas\0x00000d34_luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpDetection.GetCurrentThreat)()
for l_0_4,l_0_5 in pairs(l_0_0.Resources) do
  if l_0_5.Schema == "file" and (crypto.bitand)(l_0_5.Type, MpCommon.MPRESOURCE_TYPE_CONCRETE) == MpCommon.MPRESOURCE_TYPE_CONCRETE then
    Infrastructure_DetectionReportFolder(805306489, l_0_5.Path, true)
  end
end

