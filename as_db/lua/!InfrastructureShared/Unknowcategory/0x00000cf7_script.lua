-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000cf7_luac 

-- params : ...
-- function num : 0
if (string.find)(Args.DetectionInfo, "drivers\\%x%x%x%x%x%x%x%x%x%x%x%x") then
  local l_0_0, l_0_1 = (string.match)(Args.DetectionInfo, "(%w+),(.*drivers\\%w+.*)")
  if l_0_0 and l_0_1 then
    (Remediation.FfrDriverDeleteByDriverName)(l_0_0)
    ;
    (Remediation.BtrDeleteFile)(l_0_1)
  end
else
  do
    ;
    (Remediation.SetError)(6814)
  end
end

