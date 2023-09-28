-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000798f_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  local l_0_0 = (string.match)((this_sigattrlog[1]).utf8p1, "%%appdata%%\\microsoft\\templates\\([^\\]+)$")
  if l_0_0 then
    local l_0_1 = (string.lower)(l_0_0)
    if (string.find)(l_0_1, "$normal.dot", 1, true) or (string.find)(l_0_1, "~wrd000", 1, true) then
      return mp.CLEAN
    end
  end
end
do
  return mp.INFECTED
end

