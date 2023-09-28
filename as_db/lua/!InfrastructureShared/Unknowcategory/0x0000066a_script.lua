-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000066a_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p1
  if (this_sigattrlog[2]).matched then
    local l_0_1 = (this_sigattrlog[2]).utf8p1
    if (string.lower)((string.match)(l_0_0, "(.-)[^\\]-[^\\%.]+$")) == (string.lower)((string.match)(l_0_1, "(.-)[^\\]-[^\\%.]+$")) then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

