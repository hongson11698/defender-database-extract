-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLuaWebMailAndMotw\0x000011c0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.IOAVGetDownloadUrl)())
if l_0_0 ~= nil and (string.find)(l_0_0, "_task=mail&_action=get&_mbox=inbox", 1, true) then
  (mp.set_mpattribute)("Lua:WebMailDownload")
  local l_0_1 = (mp.get_mpattribute)("Lua:SingleSuspiciousExtensionInZip")
  local l_0_2 = (mp.get_mpattribute)("Lua:RarHasFileWithExeExtension")
  local l_0_3 = (mp.get_mpattribute)("Lua:SingleSuspiciousExtensionIn7z")
  local l_0_4 = (mp.get_mpattribute)("Lua:SingleSuspiciousExtensionInACE")
  local l_0_5 = (mp.getfilesize)()
  if l_0_5 <= 4194304 and (l_0_1 or l_0_2 or l_0_3 or l_0_4) then
    (mp.set_mpattribute)("MpForceScanArchives")
  end
  local l_0_6 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
  local l_0_7 = l_0_6:sub(-3)
  local l_0_8 = l_0_6:sub(-4)
  local l_0_9 = l_0_6:sub(-5)
  local l_0_10 = {}
  l_0_10[".doc"] = true
  l_0_10[".xls"] = true
  l_0_10[".rtf"] = true
  l_0_10[".docm"] = true
  l_0_10[".xlsm"] = true
  l_0_10[".ppam"] = true
  l_0_10[".pptm"] = true
  l_0_10[".ppsm"] = true
  l_0_10[".potm"] = true
  l_0_10[".xlsx"] = true
  l_0_10[".docx"] = true
  l_0_10[".jse"] = true
  l_0_10[".vbs"] = true
  l_0_10[".wsf"] = true
  l_0_10[".vbe"] = true
  l_0_10[".hta"] = true
  l_0_10[".js"] = true
  l_0_10[".mht"] = true
  l_0_10[".lnk"] = true
  l_0_10[".bat"] = true
  l_0_10[".ps1"] = true
  l_0_10[".zip"] = true
  l_0_10[".rar"] = true
  l_0_10[".7z"] = true
  l_0_10[".iso"] = true
  l_0_10[".arj"] = true
  l_0_10[".gz"] = true
  l_0_10[".ace"] = true
  l_0_10[".xz"] = true
  l_0_10[".bz"] = true
  l_0_10[".r00"] = true
  l_0_10[".rev"] = true
  l_0_10[".exe"] = true
  l_0_10[".scr"] = true
  l_0_10[".pif"] = true
  l_0_10[".jar"] = true
  if l_0_10[l_0_7] == true or l_0_10[l_0_8] == true or l_0_10[l_0_9] == true then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

