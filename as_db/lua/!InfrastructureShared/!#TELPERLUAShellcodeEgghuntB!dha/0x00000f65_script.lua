-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELPERLUAShellcodeEgghuntB!dha\0x00000f65_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 500000 then
  return mp.CLEAN
end
if l_0_0 > 700000 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_1, "->word/activex/activex") ~= nil then
  (mp.readprotection)(false)
  local l_0_2 = (mp.readfile)(1024, 256)
  if (string.match)(l_0_2, "\176\014��bJ\206\017��\000\170\000a\016\128") ~= nil then
    local l_0_3 = (mp.readfile)(2000, 1000)
    local l_0_4 = (string.match)(l_0_3, "U���%X%X%z%z�E\252%X%X%z%z�E")
    if l_0_4 ~= nil and l_0_4:len() == 18 then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

