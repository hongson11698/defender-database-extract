-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000814f_luac 

-- params : ...
-- function num : 0
if peattributes.headerchecksum0 ~= true then
  return mp.CLEAN
end
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.hasexports ~= true then
  return mp.CLEAN
end
if peattributes.lastscn_falign ~= true then
  return mp.CLEAN
end
if peattributes.no_decription ~= true then
  return mp.CLEAN
end
if peattributes.no_tls ~= true then
  return mp.CLEAN
end
if (mp.getfilesize)() <= 90000 then
  return mp.CLEAN
end
if (mp.getfilesize)() >= 440000 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 3584 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData > 16384 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).Size >= 192 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).Size <= 0 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(((pehdr.DataDirectory)[1]).RVA), 64)
if (mp.readu_u32)(l_0_0, 21) ~= 1 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 25) ~= 1 then
  return mp.CLEAN
end
return mp.INFECTED

