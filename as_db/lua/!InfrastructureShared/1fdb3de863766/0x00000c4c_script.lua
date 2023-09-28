-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1fdb3de863766\0x00000c4c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0 ~= nil and l_0_0.ppid ~= nil then
    local l_0_1 = l_0_0.ppid
    TrackPidAndTechniqueBM(l_0_1, "ttexclusion", "ttexclusion_gp")
    return mp.INFECTED
  end
  return mp.CLEAN
end

