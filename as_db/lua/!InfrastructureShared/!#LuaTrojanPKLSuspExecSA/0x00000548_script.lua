-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaTrojanPKLSuspExecSA\0x00000548_luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
local l_0_2 = false
local l_0_3 = nil
local l_0_4 = (mp.getfilename)()
if contains(l_0_4, {"\\jedi\\", "CPython-", ":\\Program Files"}) then
  return mp.CLEAN
end
if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
l_0_1 = tostring(headerpage)
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_5 = nil
local l_0_6 = {"webbrowser", "httplib", "requests.api", "aiohttp.client", "socket", "subprocess", "/bin/bash", "runpy"}
local l_0_7 = {"os.system", "nt.system", "os.environ", "nt.environ", "posix.system"}
local l_0_8 = contains
local l_0_9 = l_0_1
l_0_8 = l_0_8(l_0_9, {"__builtin__", "builtins"})
if l_0_8 then
  l_0_8 = contains
  l_0_9 = l_0_1
  l_0_8 = l_0_8(l_0_9, {"eval", "exec", "compile", "getattr", "apply", "breakpoint", "open"})
  if l_0_8 then
    l_0_2 = true
    l_0_3 = "evel_exec"
  end
else
  l_0_8 = contains
  l_0_9 = l_0_1
  l_0_8 = l_0_8(l_0_9, l_0_7, false)
  if l_0_8 then
    l_0_2 = true
    l_0_3 = "syetem_environ"
  else
    l_0_8 = contains
    l_0_9 = l_0_1
    l_0_8 = l_0_8(l_0_9, l_0_6)
    if l_0_8 then
      l_0_2 = true
      l_0_3 = "SuspKeyword"
    end
  end
end
if l_0_2 and l_0_3 then
  l_0_8 = mp
  l_0_8 = l_0_8.get_mpattribute
  l_0_9 = "Lua:PKL_Protocol_V2"
  l_0_8 = l_0_8(l_0_9)
  if l_0_8 then
    l_0_8 = mp
    l_0_8 = l_0_8.set_mpattribute
    l_0_9 = "Lua:PKL_Protocol_V2_suspicious_"
    l_0_9 = l_0_9 .. l_0_3
    l_0_8(l_0_9)
  else
    l_0_8 = mp
    l_0_8 = l_0_8.get_mpattribute
    l_0_9 = "Lua:PKL_Protocol_V3"
    l_0_8 = l_0_8(l_0_9)
    if l_0_8 then
      l_0_8 = mp
      l_0_8 = l_0_8.set_mpattribute
      l_0_9 = "Lua:PKL_Protocol_V3_suspicious_"
      l_0_9 = l_0_9 .. l_0_3
      l_0_8(l_0_9)
    else
      l_0_8 = mp
      l_0_8 = l_0_8.get_mpattribute
      l_0_9 = "Lua:PKL_Protocol_V4"
      l_0_8 = l_0_8(l_0_9)
      if l_0_8 then
        l_0_8 = mp
        l_0_8 = l_0_8.set_mpattribute
        l_0_9 = "Lua:PKL_Protocol_V4_suspicious_"
        l_0_9 = l_0_9 .. l_0_3
        l_0_8(l_0_9)
      else
        l_0_8 = mp
        l_0_8 = l_0_8.get_mpattribute
        l_0_9 = "Lua:PKL_Protocol_V5"
        l_0_8 = l_0_8(l_0_9)
        if l_0_8 then
          l_0_8 = mp
          l_0_8 = l_0_8.set_mpattribute
          l_0_9 = "Lua:PKL_Protocol_V5_suspicious_"
          l_0_9 = l_0_9 .. l_0_3
          l_0_8(l_0_9)
        end
      end
    end
  end
end
l_0_8 = mp
l_0_8 = l_0_8.CLEAN
return l_0_8

