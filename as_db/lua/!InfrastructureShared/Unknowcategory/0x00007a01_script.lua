-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007a01_luac 

-- params : ...
-- function num : 0
if peattributes.isdll ~= true and peattributes.hasexports ~= true then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 20000 and l_0_0 > 60000 then
  return mp.CLEAN
end
if pehdr.AddressOfEntryPoint ~= 0 or pehdr.ImageBase ~= 4194304 then
  return mp.CLEAN
end
local l_0_1 = (pe.get_exports)()
if l_0_1 >= 2 and l_0_1 <= 5 then
  return mp.INFECTED
end
return mp.CLEAN

