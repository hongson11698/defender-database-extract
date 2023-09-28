-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Bedep\0x000010f8_luac 

-- params : ...
-- function num : 0
IsBedepInstalled = function(l_1_0, l_1_1, l_1_2)
  -- function num : 0_0
  if l_1_0 and l_1_1 and l_1_2 then
    local l_1_3 = (sysio.RegOpenKey)(l_1_0 .. "Software\\Classes\\CLSID\\" .. l_1_1 .. "\\InprocServer32")
    if l_1_3 then
      local l_1_4 = (sysio.GetRegValueAsString)(l_1_3, "")
      if (string.lower)("\\\\?\\" .. l_1_4) == (string.lower)(l_1_2) then
        return true
      end
    end
  end
  do
    return false
  end
end

local l_0_0 = (sysio.RegExpandUserKey)("HKCU")
for l_0_4,l_0_5 in pairs(l_0_0) do
  local l_0_6 = Infrastructure_ScanBedepClsid(l_0_5)
  for l_0_10,l_0_11 in ipairs(l_0_6) do
    for l_0_15,l_0_16 in ipairs((Remediation.Threat).Resources) do
      if l_0_16.Schema == "file" then
        local l_0_17 = l_0_16.Path
        if l_0_17 ~= nil and IsBedepInstalled(l_0_5, l_0_11, l_0_17) then
          (Remediation.BtrDeleteFile)(l_0_17)
          local l_0_18 = (sysio.RegOpenKey)(l_0_5 .. "Software\\Classes\\CLSID\\" .. l_0_11 .. "\\InprocServer32")
          ;
          (sysio.DeleteRegValue)(l_0_18, "")
          local l_0_19 = (sysio.RegOpenKey)(l_0_5 .. "Software\\Classes\\Drive\\ShellEx\\FolderExtensions\\" .. l_0_11)
          ;
          (sysio.DeleteRegValue)(l_0_19, "DriveMask")
        end
      end
    end
  end
end
-- DECOMPILER ERROR at PC71: Confused about usage of register R1 for local variables in 'ReleaseLocals'


