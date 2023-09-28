-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\43b34218e4d7\0x00001340_luac 

-- params : ...
-- function num : 0
local l_0_0 = "suid_file_taint"
local l_0_1 = (bm.get_imagepath)()
if not l_0_1 or not isTainted(l_0_1, l_0_0) then
  return mp.CLEAN
end
return mp.INFECTED

