-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000bbd_luac 

-- params : ...
-- function num : 0
if not (string.find)(Args.DetectionInfo, "Mbr::", 1, true) then
  (Remediation.FfrDriverSwap)(Args.DetectionInfo)
else
  ;
  (Remediation.SetCallistoRequired)()
end

