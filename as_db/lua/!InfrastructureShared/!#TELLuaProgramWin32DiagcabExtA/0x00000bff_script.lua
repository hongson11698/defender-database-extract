-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELLuaProgramWin32DiagcabExtA\0x00000bff_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if (string.sub)(l_0_0, -8) == ".diagcab" then
  return mp.INFECTED
end
return mp.CLEAN

