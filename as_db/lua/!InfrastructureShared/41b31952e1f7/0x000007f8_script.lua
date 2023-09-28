-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\41b31952e1f7\0x000007f8_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched then
  local l_0_0 = (this_sigattrlog[2]).ppid
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).ppid then
    local l_0_1 = (this_sigattrlog[1]).utf8p1
    local l_0_2 = (this_sigattrlog[1]).utf8p2
    local l_0_3 = l_0_2 .. ";" .. l_0_0
    ;
    (bm.trigger_sig)(l_0_1, l_0_3, l_0_0)
  end
end
do
  return mp.CLEAN
end

