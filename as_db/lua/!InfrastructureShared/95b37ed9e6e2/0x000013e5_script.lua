-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\95b37ed9e6e2\0x000013e5_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if (mp.bitand)(l_0_6.reason_ex, 1) == 1 and l_0_6.image_path and isTainted(l_0_6.image_path, "remote_file_created_taint") then
    addRelatedProcess()
    return mp.INFECTED
  end
end
return mp.CLEAN

