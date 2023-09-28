-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPdfFromEmailUrl\0x00005c70_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 2097152 then
  (mp.set_mpattribute)("PDF:ScanAllUris")
end
return mp.CLEAN

