-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000cf9_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((mp.getfilename)(), -4))
do
  if (mp.get_mpattribute)("pea_isexe") and l_0_0 == ".com" then
    local l_0_1 = (string.lower)((mp.getfilename)())
    if (string.find)(l_0_1, ".2017.com", 1, true) ~= nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

