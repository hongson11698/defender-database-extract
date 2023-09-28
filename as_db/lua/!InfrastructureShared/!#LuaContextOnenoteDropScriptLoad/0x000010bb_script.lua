-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextOnenoteDropScriptLoad\0x000010bb_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_0 == nil then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
if l_0_0 ~= "cscript.exe" and l_0_0 ~= "wscript.exe" and l_0_0 ~= "mshta.exe" then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (mp.GetParentProcInfo)(l_0_1)
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = l_0_2.image_path
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = (string.match)(l_0_3, "([^\\]+)$")
if l_0_4 == nil then
  return mp.CLEAN
end
l_0_4 = (string.lower)(l_0_4)
if l_0_0 == "wscript.exe" and l_0_4 == "onenote.exe" then
  (mp.set_mpattribute)("Lua:Context/OnenoteDropWscriptLoad")
else
  if l_0_0 == "cscript.exe" and l_0_4 == "onenote.exe" then
    (mp.set_mpattribute)("Lua:Context/OnenoteDropCscriptLoad")
  else
    if l_0_0 == "mshta.exe" and l_0_4 == "onenote.exe" then
      (mp.set_mpattribute)("Lua:Context/OnenoteDropMshtaLoad")
    end
  end
end
return mp.CLEAN

