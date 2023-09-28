-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000004e5_luac 

-- params : ...
-- function num : 0
if (mp.get_sigattr_event_count)(16384) > 30 then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((bm.get_imagepath)())
local l_0_1 = l_0_0:match("\\([^\\]+)$")
local l_0_2 = {}
l_0_2["explorer.exe"] = true
l_0_2["searchprotocolhost.exe"] = true
l_0_2["cmd.exe"] = true
l_0_2["powershell.exe"] = true
l_0_2["pwsh.exe"] = true
l_0_2["cscript.exe"] = true
l_0_2["wscript.exe"] = true
l_0_2["mshta.exe"] = true
l_0_2["git.exe"] = true
l_0_2["gvfs.mount.exe"] = true
l_0_2["devenv.exe"] = true
l_0_2["iisexpress.exe"] = true
l_0_2["sqlservr.exe"] = true
l_0_2["rdpinit.exe"] = true
l_0_2["scanstate.exe"] = true
l_0_2["robocopy.exe"] = true
l_0_2["veeamguesthelperctrl.exe"] = true
l_0_2["trimqueue.exe"] = true
l_0_2["netwrix.wsa.agentservice.exe"] = true
if l_0_2[l_0_1] then
  return mp.CLEAN
end
return mp.INFECTED

