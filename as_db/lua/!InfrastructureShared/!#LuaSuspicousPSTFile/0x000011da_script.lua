-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaSuspicousPSTFile\0x000011da_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 271360 and l_0_0 <= 2170880 then
  (mp.set_mpattribute)("Lua:PST.Has.ASPXExt.InInterestingA")
end
local l_0_1 = (string.lower)((MpCommon.PathToWin32Path)((mp.getfilename)(mp.FILEPATH_QUERY_FULL)))
if (string.find)(l_0_1, "\\microsoft\\exchange server\\v%d%d\\frontend\\") ~= nil or (string.find)(l_0_1, "\\frontend\\httpproxy\\owa\\", 1, true) ~= nil or (string.find)(l_0_1, "\\inetpub\\wwwroot\\", 1, true) ~= nil or (string.find)(l_0_1, "\\microsoft\\exchange server\\v%d%d\\clientaccess\\") ~= nil then
  (mp.set_mpattribute)("Lua:PST.SuspPath")
end
if l_0_0 ~= 271360 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(20480, 65536)
local l_0_3 = (string.lower)(tostring(l_0_2))
if (string.find)(l_0_3, "script language=", 1, true) == nil and (string.find)(l_0_3, "page language=", 1, true) == nil then
  return mp.CLEAN
end
if (string.find)(l_0_3, "uploadfile", 1, true) ~= nil or (string.find)(l_0_3, "eval", 1, true) ~= nil or (string.find)(l_0_3, "exec_code", 1, true) ~= nil then
  (mp.set_mpattribute)("Lua:Shell_CVE-2021-31207")
else
  if (string.find)(l_0_3, "jscript", 1, true) ~= nil or (string.find)(l_0_3, "\"c#\"", 1, true) ~= nil or (string.find)(l_0_3, "server", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:Suspicious.CVE-2021-31207")
    if (string.find)(l_0_3, "powershell", 1, true) ~= nil or (string.find)(l_0_3, "page_load", 1, true) ~= nil or (string.find)(l_0_3, "scriptText", 1, true) ~= nil then
      (mp.set_mpattribute)("Lua:PowerShell_CVE-2021-31207")
    end
  end
end
return mp.CLEAN

