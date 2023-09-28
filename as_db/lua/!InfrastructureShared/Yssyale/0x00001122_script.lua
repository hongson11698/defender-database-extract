-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Yssyale\0x00001122_luac 

-- params : ...
-- function num : 0
local l_0_0 = 805306513
local l_0_1 = (MpDetection.GetCurrentThreat)()
for l_0_5,l_0_6 in pairs(l_0_1.Resources) do
  if l_0_6.Schema == "file" and (crypto.bitand)(l_0_6.Type, MpCommon.MPRESOURCE_TYPE_CONCRETE) == MpCommon.MPRESOURCE_TYPE_CONCRETE then
    Infrastructure_DetectionReportFolder(l_0_0, l_0_6.Path, true)
  end
end
local l_0_7 = (sysio.ExpandFilePath)("%appdata%", true)
if l_0_7 ~= nil then
  for l_0_11,l_0_12 in pairs(l_0_7) do
    local l_0_13 = l_0_12 .. "\\System Healer\\"
    local l_0_14 = l_0_13 .. "Languages\\English.json"
    if (sysio.IsFileExists)(l_0_14) then
      Infrastructure_DetectionReportFolder(l_0_0, l_0_14, true)
      ;
      (MpDetection.ReportResource)("folder", l_0_13, l_0_0, false)
    end
  end
end
do
  local l_0_15 = (sysio.ExpandFilePath)("%Common_AppData%")
  do
    if l_0_15 ~= nil then
      local l_0_16 = l_0_15[2] .. "\\Microsoft\\Windows\\Start Menu\\Programs\\System Healer\\Launch System Healer.lnk"
      if (sysio.IsFileExists)(l_0_16) then
        Infrastructure_DetectionReportFolder(l_0_0, l_0_16, true)
      end
    end
    l_0_15 = (sysio.ExpandFilePath)("%public%")
    do
      if l_0_15 ~= nil then
        local l_0_17 = l_0_15[2] .. "\\Desktop\\Launch System Healer.lnk"
        if (sysio.IsFileExists)(l_0_17) then
          (MpDetection.ReportResource)("file", l_0_17, l_0_0, false)
        end
      end
      Infrastructure_ReportSoftwareRegistryByKey(l_0_0, "System Healer")
    end
  end
end

