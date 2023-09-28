-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_5TaterfC\Unknowcategory\0x0000003d_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).Characteristics ~= 3758096480 then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if (pesecs[1]).SizeOfRawData ~= 0 then
  return mp.CLEAN
end
if pehdr.MajorLinkerVersion ~= 6 then
  return mp.CLEAN
end
if peattributes.headerchecksum0 ~= true then
  return mp.CLEAN
end
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.lastscn_writable ~= true then
  return mp.CLEAN
end
if peattributes.epscn_writable ~= true then
  return mp.CLEAN
end
if peattributes.firstsectwritable ~= true then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).VirtualSize < 28672 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).VirtualSize > 69632 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize > 4608 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize < 256 then
  return mp.CLEAN
end
if (pesecs[1]).NameDW == 2019914798 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[pevars.epsec]).PointerToRawData - 32, 4)
if (mp.readu_u32)(l_0_0, 1) ~= 2019914798 then
  return mp.CLEAN
end
return mp.INFECTED

