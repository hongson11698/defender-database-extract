-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008266_luac 

-- params : ...
-- function num : 0
local l_0_0 = (sysio.RegExpandUserKey)("HKCU\\Environment")
if l_0_0 then
  for l_0_4,l_0_5 in pairs(l_0_0) do
    local l_0_6 = (sysio.RegOpenKey)(l_0_5)
    if l_0_6 then
      local l_0_7 = (sysio.RegEnumValues)(l_0_6)
      for l_0_11,l_0_12 in pairs(l_0_7) do
        if (string.lower)(l_0_12) == "windir" then
          local l_0_13 = (string.lower)((sysio.GetRegValueAsString)(l_0_6, l_0_12))
          if (string.len)(l_0_13) > 8 and ((string.find)(l_0_13, "cmd ", 1, true) or (string.find)(l_0_13, "cmd.exe", 1, true) or (string.find)(l_0_13, "powershell", 1, true) or (string.find)(l_0_13, "wscript", 1, true) or (string.find)(l_0_13, "cscript", 1, true) or (string.find)(l_0_13, "schtasks", 1, true) or (string.find)(l_0_13, "mshta", 1, true) or (string.find)(l_0_13, "reg add", 1, true) or (string.find)(l_0_13, "reg.exe add", 1, true) or (string.find)(l_0_13, "regedit.exe", 1, true) or (string.find)(l_0_13, "rundll32.exe", 1, true) or (string.find)(l_0_13, "regsvr32.exe", 1, true) or (string.find)(l_0_13, "bypass", 1, true) or (string.find)(l_0_13, "\\appdata\\roaming\\", 1, true) or (string.find)(l_0_13, "\\appdata\\local\\", 1, true) or (string.find)(l_0_13, "\\users\\public\\", 1, true) or (string.find)(l_0_13, "\\programdata\\", 1, true) or (string.find)(l_0_13, ".bat", 1, true) or (string.find)(l_0_13, ".cmd", 1, true) or (string.find)(l_0_13, ".js", 1, true) or (string.find)(l_0_13, ".vbs", 1, true) or (string.find)(l_0_13, ".wsf", 1, true)) then
            return mp.INFECTED
          end
          if (string.len)(l_0_13) > 16 and ((string.find)(l_0_13, " /c ", 1, true) or (string.find)(l_0_13, " /k ", 1, true)) then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
do
  do return mp.CLEAN end
  -- DECOMPILER ERROR at PC279: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

