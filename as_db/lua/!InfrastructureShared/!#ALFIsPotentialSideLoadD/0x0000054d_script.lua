-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFIsPotentialSideLoadD\0x0000054d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "c:\\windows", 1, true) ~= nil or (string.find)(l_0_0, "c:\\program files", 1, true) ~= nil or (string.find)(l_0_0, "c:\\", 1, true) == nil then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (pe.get_exports)()
if l_0_1 == nil or l_0_1 < 8 then
  return mp.CLEAN
end
for l_0_6 = 2, l_0_1 do
  if (l_0_2[l_0_6 - 1]).rva ~= (l_0_2[l_0_6]).rva then
    return mp.CLEAN
  end
end
;
(mp.readprotection)(false)
local l_0_7 = (mp.getfilesize)()
if l_0_7 == nil or l_0_7 <= 288 then
  return mp.CLEAN
end
local l_0_8 = {}
-- DECOMPILER ERROR at PC78: No list found for R4 , SetList fails

-- DECOMPILER ERROR at PC79: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC81: Overwrote pending register: R6 in 'AssignReg'

local l_0_9 = (("�S!��2O��2O��2O\144\030ͅ��2O\144\030́��2O\144\030͆��2O\144\030̓��2O�Rich").readfile)("?���{�͍{�͍{�͍r�_�z�͍r�N�y�͍r�Y�z�͍r�\�z�͍Rich{��\141\000\000", 64)
for l_0_13 = 1, #l_0_8 do
  if (string.find)(l_0_9, l_0_8[l_0_13], 1, true) ~= nil then
    return mp.CLEAN
  end
end
return mp.INFECTED

