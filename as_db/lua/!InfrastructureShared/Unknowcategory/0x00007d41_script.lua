-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d41_luac 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (mp.getfilesize)()
local l_0_1 = (string.lower)((mp.getfilename)())
do
  if (string.find)(l_0_1, "%!_stringdata") ~= nil then
    local l_0_2 = tostring((mp.readfile)(0, l_0_0))
    l_0_2 = (string.lower)(l_0_2)
    if (string.find)(l_0_2, "\\x52\\x75\\x6e", 1, true) ~= nil and (string.find)(l_0_2, "pshell=new activexobject", 1, true) ~= nil and (string.find)(l_0_2, "\'\\x72\\x65\\x70\\x6c\\x61\\x63\\x65\'", 1, true) ~= nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

