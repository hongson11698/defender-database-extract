-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c79_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
do
  if l_0_0 == 47104 or l_0_0 == 47574 or l_0_0 == 48128 then
    local l_0_1 = (string.lower)((mp.getfilename)())
    if (string.find)(l_0_1, "%-%>%(ole stream") ~= nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

