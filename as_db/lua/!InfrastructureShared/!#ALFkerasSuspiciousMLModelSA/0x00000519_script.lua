-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFkerasSuspiciousMLModelSA\0x00000519_luac 

-- params : ...
-- function num : 0
local l_0_0 = tostring(headerpage) .. tostring(footerpage)
if l_0_0 == nil then
  return mp.CLEAN
end
if contains(l_0_0, "lambda") then
  return mp.INFECTED
end
return mp.CLEAN

