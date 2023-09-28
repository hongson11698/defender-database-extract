-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaZipSlip\0x00001201_luac 

-- params : ...
-- function num : 0
local l_0_0 = ((mp.getfilename)()):lower()
local l_0_1, l_0_2 = l_0_0:match("%.(%w+)%->(.*)$")
if l_0_1 == nil or l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = {}
l_0_3["7z"] = "Lua:FileIn7z"
l_0_3.apk = "Lua:FileInApk"
l_0_3.cpio = "Lua:FileInCpio"
l_0_3.jar = "Lua:FileInJar"
l_0_3.rar = "Lua:FileInRar"
l_0_3.tar = "Lua:FileInTar"
l_0_3.war = "Lua:FileInWar"
l_0_3.zip = "Lua:FileInZip"
l_0_3.iso = "Lua:FileInIso"
l_0_3.tgz = "Lua:FileInTarGzip"
if l_0_3[l_0_1] ~= nil then
  (mp.set_mpattribute)(l_0_3[l_0_1])
else
  return mp.CLEAN
end
if l_0_2:find("../", 1, true) or l_0_2:find("..\\", 1, true) then
  (mp.set_mpattribute)("Lua:DirPathTraversal")
end
if l_0_2:find("../../", 1, true) or l_0_2:find("..\\..\\", 1, true) then
  (mp.set_mpattribute)("Lua:DirPathTraversal2plus")
end
if l_0_2:find("\\windows\\", 1, true) or l_0_2:find("/windows/", 1, true) then
  (mp.set_mpattribute)("Lua:DirPathWindows")
end
if l_0_2:find("\\system32\\", 1, true) or l_0_2:find("/system32/", 1, true) then
  (mp.set_mpattribute)("Lua:DirPathSystem32")
end
if l_0_2:find("\\microsoft\\windows\\start menu\\startup\\", 1, true) or l_0_2:find("/microsoft/windows/start menu/startup/", 1, true) then
  (mp.set_mpattribute)("Lua:DirPathStartup")
end
if l_0_2:find("\\programdata\\", 1, true) or l_0_2:find("/programdata/", 1, true) then
  (mp.set_mpattribute)("Lua:DirPathProgramData")
end
if l_0_2:find("\\program files\\", 1, true) or l_0_2:find("/program files/", 1, true) then
  (mp.set_mpattribute)("Lua:DirPathProgramFiles")
end
if l_0_2:find("\\program files (x86)\\", 1, true) or l_0_2:find("/program files (x86)/", 1, true) then
  (mp.set_mpattribute)("Lua:DirPathProgramFiles86")
end
if l_0_1 == "iso" and not l_0_2:find("\\", 2, true) and not l_0_2:find("/", 2, true) then
  (mp.set_mpattribute)("Lua:FileOnIsoRoot")
end
return mp.CLEAN

