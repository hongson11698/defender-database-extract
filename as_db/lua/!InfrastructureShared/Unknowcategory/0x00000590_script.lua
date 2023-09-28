-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000590_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("ValidDigitalSignature") then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("Lua:IsNotLegacyOrgMachine") then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
if (string.find)(l_0_0:lower(), "\\program files", 1, true) ~= nil or (string.find)(l_0_0:lower(), ":\\windows\\", 1, true) ~= nil or (string.find)(l_0_0:lower(), "process", 1, true) ~= nil or (string.find)(l_0_0:lower(), "recycle.bin", 1, true) ~= nil or (string.find)(l_0_0:lower(), "visualcron", 1, true) ~= nil or (string.find)(l_0_0:lower(), "cyoptics", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.sub)(l_0_0, -4) == ".exe" or (string.sub)(l_0_0, -4) == ".dll" then
  return mp.INFECTED
end
return mp.CLEAN

