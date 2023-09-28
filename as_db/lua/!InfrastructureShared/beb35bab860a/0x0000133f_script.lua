-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\beb35bab860a\0x0000133f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if isTainted(l_0_0, "remote_file_created_taint") then
  return mp.INFECTED
end
return mp.CLEAN

