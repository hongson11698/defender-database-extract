-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000fb7_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_6, l_0_7 = nil
for l_0_4,l_0_5 in pairs((Remediation.Threat).Resources) do
  local l_0_1 = nil
  -- DECOMPILER ERROR at PC6: Confused about usage of register: R5 in 'UnsetPending'

  if R5_PC6.Schema == "file" and (string.match)((Remediation.Threat).Name, "JS/BrobanDel") then
    l_0_1 = R5_PC6.Path
  end
end
local l_0_8 = nil
if l_0_8 then
  local l_0_9 = false
  if (sysio.RegOpenKey)("HKCU\\Software\\Mozilla\\Firefox\\Extensions") then
    local l_0_10 = nil
    for l_0_14,l_0_15 in pairs((sysio.RegEnumValues)((sysio.RegOpenKey)("HKCU\\Software\\Mozilla\\Firefox\\Extensions"))) do
      local l_0_11 = nil
      -- DECOMPILER ERROR at PC38: Confused about usage of register: R8 in 'UnsetPending'

      -- DECOMPILER ERROR at PC43: Confused about usage of register: R8 in 'UnsetPending'

      if "JS/BrobanDel" and (string.match)(l_0_8, (sysio.GetRegValueAsString)(l_0_10, "JS/BrobanDel")) then
        (sysio.DeleteRegValue)(l_0_10, l_0_16)
        ;
        (sysio.DeleteFile)((sysio.GetRegValueAsString)(l_0_10, "JS/BrobanDel"))
        l_0_9 = true
      end
    end
  end
end
do
  if l_0_8 and not l_0_9 then
    l_0_10 = string
    l_0_10 = l_0_10.find
    l_0_10 = l_0_10(l_0_8, "%.xpi%-")
    local l_0_17, l_0_18 = nil
    if l_0_10 then
      l_0_18 = string
      l_0_18 = l_0_18.sub
      l_0_18 = l_0_18(l_0_8, 0, l_0_17 - 1)
      local l_0_19 = nil
      l_0_19 = sysio
      l_0_19 = l_0_19.DeleteFile
      l_0_19(l_0_18)
    end
  end
end

