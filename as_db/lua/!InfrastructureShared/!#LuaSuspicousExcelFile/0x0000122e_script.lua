-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaSuspicousExcelFile\0x0000122e_luac 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (mp.getfilesize)()
if l_0_0 <= 20481 or l_0_0 > 131072 then
  return mp.CLEAN
end
local l_0_1 = (mp.readfile)(4096, l_0_0 - 4097)
local l_0_2 = (string.lower)(l_0_1)
;
(mp.readprotection)(true)
if l_0_2 == nil or l_0_2 == "" or (string.len)(l_0_2) < 5 then
  return mp.CLEAN
end
if (string.match)(l_0_2, "%d%d%d+%.png") then
  (mp.set_mpattribute)("Lua:SuspiciousPNGinExcel")
end
if (string.match)(l_0_2, "please click \"enable content\"") then
  (mp.set_mpattribute)("Lua:SuspiciousEnableContent")
end
if (string.find)(l_0_2, "excel.exe", 1, true) == nil then
  (mp.set_mpattribute)("Lua:SuspiciousExeinExcel")
end
if (string.find)(l_0_2, "regsvr32.exe", 1, true) then
  (mp.set_mpattribute)("Lua:SuspiciousRegsvr32inExcel")
end
if (string.find)(l_0_2, "rundll32.exe", 1, true) then
  (mp.set_mpattribute)("Lua:SuspiciousRundll32inExcel")
end
if (string.find)(l_0_2, "powershell", 1, true) ~= nil then
  (mp.set_mpattribute)("Lua:SuspiciousPowerShellCmdinExcel")
end
if (string.find)(l_0_2, "iex", 1, true) ~= nil then
  (mp.set_mpattribute)("Lua:SuspiciousPowerShellIEXinExcel")
end
if (string.find)(l_0_2, "curl", 1, true) ~= nil then
  (mp.set_mpattribute)("Lua:SuspiciousCRULinExcel")
end
if (string.match)(l_0_2, "frombase64string") then
  (mp.set_mpattribute)("Lua:SuspiciousB64inExcel.S001")
end
if (string.match)(l_0_2, "io%.memorystream") then
  (mp.set_mpattribute)("Lua:SuspiciousStreaminExcel.S001")
end
if (string.match)(l_0_2, "reflection%.assembly") then
  (mp.set_mpattribute)("Lua:SuspiciousReflectioninExcel.S001")
end
if (string.match)(l_0_2, "new%-object") then
  (mp.set_mpattribute)("Lua:SuspiciousObjectinExcel.S001")
end
if (string.match)(l_0_2, "h4siaaaa") then
  (mp.set_mpattribute)("Lua:SuspiciousGZB64inExcel.S001")
end
if (string.match)(l_0_2, "%.org/%w+%.ps") then
  (mp.set_mpattribute)("Lua:SuspiciousPSinExcel")
end
if (string.match)(l_0_2, "urldownloadtofile") or (string.match)(l_0_2, "createdirectory") then
  (mp.set_mpattribute)("Lua:SuspiciousAPIinExcel")
end
if (string.match)(l_0_2, "excel 4.0") then
  (mp.set_mpattribute)("Lua:Excel40")
end
return mp.CLEAN

