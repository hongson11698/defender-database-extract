-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c3b_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p1
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0)
    if (string.find)(l_0_1, "\\windows\\sys", 1, true) == nil then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

