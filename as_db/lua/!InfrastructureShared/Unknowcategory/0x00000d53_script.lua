-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d53_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
  local l_0_1 = (string.match)(l_0_0, "\\([^\\]+)$")
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).wp1 ~= nil then
    local l_0_2 = (string.lower)((this_sigattrlog[2]).utf8p1)
    if l_0_1 == (string.match)(l_0_2, "\\([^\\]+)$") then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

