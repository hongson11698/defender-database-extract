-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPowerShellSuspiciousImports!Base64\0x00000c5d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "%->%(base64%)%->%(utf%-16le%)") then
  return mp.INFECTED
end
return mp.CLEAN

