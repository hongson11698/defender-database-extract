-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000f9f_luac 

-- params : ...
-- function num : 0
local l_0_0 = "HKLM\\System\\CurrentControlSet\\Services"
local l_0_1 = (sysio.RegOpenKey)(l_0_0)
if not l_0_1 then
  return nil
end
local l_0_2 = (sysio.RegEnumKeys)(l_0_1)
if not l_0_2 then
  return nil
end
for l_0_6,l_0_7 in pairs(l_0_2) do
  if l_0_7:match("^%d%d%d%d%d%d+") then
    local l_0_8 = l_0_0 .. "\\" .. l_0_7
    local l_0_9 = (sysio.RegOpenKey)(l_0_8)
    if l_0_9 then
      local l_0_10 = (sysio.GetRegValueAsString)(l_0_9, "Type")
      if l_0_10 and l_0_10 == (string.char)(16) then
        local l_0_11 = (sysio.GetRegValueAsString)(l_0_9, "ImagePath")
        if l_0_11:match("^%%SystemRoot%%\\%d%d%d%d%d%d+.exe$") then
          local l_0_12 = (sysio.ExpandFilePath)(l_0_11)
          if (sysio.IsFileExists)(l_0_12) then
            (Remediation.BtrDeleteFile)(l_0_12)
            ;
            (Remediation.BtrDeleteRegKey)(l_0_8)
          end
        end
      end
    end
  end
end

