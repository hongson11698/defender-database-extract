-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006d54_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = (this_sigattrlog[1]).utf8p2
    if (string.len)(l_0_0) < 4096 then
      return mp.CLEAN
    end
    if (string.find)(l_0_0, "%.ps1") then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

