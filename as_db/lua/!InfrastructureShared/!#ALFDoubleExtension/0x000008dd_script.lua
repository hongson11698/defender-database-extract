-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFDoubleExtension\0x000008dd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_0, "tsv_to_xlsx.exe", 1, true) or (string.find)(l_0_0, "pypdf2docx.exe", 1, true) then
  return mp.CLEAN
end
local l_0_1 = {}
l_0_1[".doc.exe"] = ""
l_0_1["docx.exe"] = ""
l_0_1["docm.exe"] = ""
l_0_1[".xls.exe"] = ""
l_0_1["xlsx.exe"] = ""
l_0_1[".ppt.exe"] = ""
l_0_1["pptx.exe"] = ""
l_0_1[".rtf.exe"] = ""
l_0_1[".pdf.exe"] = ""
l_0_1[".txt.exe"] = ""
l_0_1[".rar.exe"] = ""
l_0_1[".zip.exe"] = ""
l_0_1["    .exe"] = ""
l_0_1["____.exe"] = ""
l_0_1["rar.exe"] = ""
l_0_1["doc.exe"] = ""
l_0_1["xls.exe"] = ""
l_0_1["pdf.exe"] = ""
l_0_1["txt.exe"] = ""
l_0_1["zip.exe"] = ""
l_0_1[".docx.js"] = ""
l_0_1[".xlsx.js"] = ""
l_0_1[".pptx.js"] = ""
l_0_1[".doc.js"] = ""
l_0_1[".ppt.js"] = ""
l_0_1[".xls.js"] = ""
l_0_1[".pdf.js"] = ""
l_0_1[".txt.js"] = ""
local l_0_2 = l_0_0:sub(-8)
if l_0_1[l_0_2:sub(-7)] ~= nil or l_0_1[l_0_2] ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

