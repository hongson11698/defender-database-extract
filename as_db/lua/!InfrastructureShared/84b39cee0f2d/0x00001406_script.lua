-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b39cee0f2d\0x00001406_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if (mp.bitand)(l_0_6.reason_ex, 1) == 1 then
    (bm.add_related_file)(l_0_6.image_path)
    ;
    (bm.add_related_process)(l_0_6.ppid)
    TrackPidAndTechniqueBM(l_0_6.ppid, "T1087.001", "Discovery")
    return mp.INFECTED
  end
end
return mp.CLEAN

