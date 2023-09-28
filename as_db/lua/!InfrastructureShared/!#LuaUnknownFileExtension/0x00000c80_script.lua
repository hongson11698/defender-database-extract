-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaUnknownFileExtension\0x00000c80_luac 

-- params : ...
-- function num : 0
local l_0_0 = ((mp.getfilename)()):lower()
if ((l_0_0:match("(%.[^.]+)$") == nil and "") or l_0_0:match("(%.[^.]+)$") ~= "") and (mp.GetExtensionClass)(l_0_0:match("(%.[^.]+)$")) == 0 then
  return mp.INFECTED
end
return mp.CLEAN

