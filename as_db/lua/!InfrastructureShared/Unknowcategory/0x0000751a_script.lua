-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000751a_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = (this_sigattrlog[1]).utf8p2
    l_0_0 = (string.lower)(l_0_0)
    if (string.match)(l_0_0, "/s") == nil or (string.match)(l_0_0, "/i") == nil or (string.match)(l_0_0, "\\\\sysvol\\policies") == nil then
      return mp.CLEAN
    else
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

