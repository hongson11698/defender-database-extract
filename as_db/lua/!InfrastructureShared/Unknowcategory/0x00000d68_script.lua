-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d68_luac 

-- params : ...
-- function num : 0
local l_0_0 = (Remediation.Threat).Name
if (string.find)(l_0_0, "Safemode.D", 1, true) then
  local l_0_1 = (MpCommon.GetPersistContextNoPath)("RegKeyToDelete_safemode")
  for l_0_5,l_0_6 in ipairs(l_0_1) do
    local l_0_7 = (string.match)(l_0_6, "(.*)\\\\")
    local l_0_8 = (sysio.RegOpenKey)(l_0_7)
    if l_0_8 ~= nil then
      (sysio.DeleteRegKey)(l_0_8, nil)
    end
  end
end

