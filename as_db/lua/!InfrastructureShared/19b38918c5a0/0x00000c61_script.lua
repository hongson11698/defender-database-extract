-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\19b38918c5a0\0x00000c61_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).ppid ~= nil then
    local l_0_0 = (this_sigattrlog[1]).ppid
    TrackPidAndTechniqueBM(l_0_0, "ttexclusion", "ttexclusion_gp")
    return mp.INFECTED
  end
  return mp.CLEAN
end

