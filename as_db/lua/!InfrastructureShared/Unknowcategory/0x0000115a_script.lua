-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000115a_luac 

-- params : ...
-- function num : 0
DeleteRegistryEntriesOnValueMatch = function(l_1_0, l_1_1)
  -- function num : 0_0
  if l_1_0 == nil then
    return 
  end
  local l_1_2 = (sysio.RegEnumValues)(l_1_0)
  if l_1_2 == nil then
    return 
  end
  for l_1_6,l_1_7 in pairs(l_1_2) do
    if l_1_7 ~= nil then
      l_1_7 = (string.lower)(l_1_7)
      for l_1_11,l_1_12 in pairs(l_1_1) do
        if l_1_7 == l_1_12 then
          (sysio.DeleteRegValue)(l_1_0, l_1_7)
        end
      end
    end
  end
end

GetPathsFromExpandFilePath = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = {}
  for l_2_5,l_2_6 in pairs(l_2_0) do
    local l_2_7 = (sysio.ExpandFilePath)(l_2_6, true)
    if l_2_7 ~= nil then
      for l_2_11,l_2_12 in pairs(l_2_7) do
        l_2_12 = (string.gsub)(l_2_12, "^\\\\%?\\", "")
        ;
        (table.insert)(l_2_1, l_2_12:lower())
      end
    end
  end
  do return l_2_1 end
  -- DECOMPILER ERROR at PC34: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

local l_0_0 = "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\"
local l_0_1 = (sysio.RegOpenKey)(l_0_0 .. "Extensions")
do
  if l_0_1 then
    local l_0_2 = {}
    -- DECOMPILER ERROR at PC16: No list found for R2 , SetList fails

    -- DECOMPILER ERROR at PC17: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC18: Overwrote pending register: R4 in 'AssignReg'

    ;
    ("exe")("dll", l_0_2)
  end
  local l_0_3 = (sysio.RegOpenKey)(l_0_0 .. "Paths")
  do
    if l_0_3 then
      local l_0_4 = {}
      -- DECOMPILER ERROR at PC36: No list found for R3 , SetList fails

      -- DECOMPILER ERROR at PC37: Overwrote pending register: R4 in 'AssignReg'

      -- DECOMPILER ERROR at PC38: Overwrote pending register: R5 in 'AssignReg'

      -- DECOMPILER ERROR at PC43: Overwrote pending register: R6 in 'AssignReg'

      DeleteRegistryEntriesOnValueMatch(l_0_3, "%appdata%")
    end
    -- DECOMPILER ERROR at PC45: Overwrote pending register: R3 in 'AssignReg'

    local l_0_5 = (l_0_4.RegOpenKey)(l_0_0 .. "Processes")
    do
      if l_0_5 then
        local l_0_6 = {}
        -- DECOMPILER ERROR at PC55: No list found for R4 , SetList fails

        -- DECOMPILER ERROR at PC56: Overwrote pending register: R5 in 'AssignReg'

        -- DECOMPILER ERROR at PC58: Overwrote pending register: R7 in 'AssignReg'

        ;
        ("c:\\windows\\system32\\windowspowershell\\v1.0\\powershell.exe")(l_0_5, "%systemroot%")
      end
      -- WARNING: undefined locals caused missing assignments!
    end
  end
end

