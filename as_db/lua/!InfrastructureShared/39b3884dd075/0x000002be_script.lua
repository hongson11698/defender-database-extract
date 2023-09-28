-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\39b3884dd075\0x000002be_luac 

-- params : ...
-- function num : 0
if IsLegacyOrgMachine() then
  return mp.CLEAN
end
local l_0_0 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_0 = (this_sigattrlog[1]).utf8p2
end
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.len)(l_0_0) < 700 then
  return mp.CLEAN
end
if IsProcNameInParentProcessTree("BM", "winword.exe") then
  return mp.INFECTED
end
return mp.CLEAN

