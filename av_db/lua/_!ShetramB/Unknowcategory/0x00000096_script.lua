-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ShetramB\Unknowcategory\0x00000096_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if (string.lower)((string.sub)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME), -9)) ~= " copy.lnk" then
  return mp.CLEAN
end
local l_0_1 = {}
l_0_1["cpufix.exe"] = true
l_0_1["antiusb.exe"] = true
l_0_1["streamer.exe"] = true
l_0_1["radnewage.exe"] = true
l_0_1["cpuchecker.exe"] = true
l_0_1["winddowsupdater.exe"] = true
local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
local l_0_3 = {}
local l_0_4 = 0
local l_0_5 = (mp.getfilename)()
for l_0_9 in (string.gmatch)(l_0_5, "[^\\]+") do
  l_0_4 = l_0_4 + 1
  l_0_3[l_0_4] = l_0_9
end
if #l_0_3 >= 2 and (string.len)(l_0_3[#l_0_3]) == (string.len)(l_0_3[#l_0_3 - 1]) + 9 and (string.sub)(l_0_3[#l_0_3], 1, (string.len)(l_0_3[#l_0_3 - 1])) == l_0_3[#l_0_3 - 1] then
  if l_0_1[l_0_2] == true then
    return mp.INFECTED
  else
    ;
    (mp.ReportLowfi)(l_0_5, 2621711671)
  end
end
return mp.CLEAN

