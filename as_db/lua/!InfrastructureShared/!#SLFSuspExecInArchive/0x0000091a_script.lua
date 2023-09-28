-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFSuspExecInArchive\0x0000091a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 == nil or (string.len)(l_0_0) < 10 then
  return mp.CLEAN
end
local l_0_1 = l_0_0:sub(-4)
local l_0_2 = {}
l_0_2[".exe"] = true
l_0_2[".scr"] = true
l_0_2[".pif"] = true
if l_0_2[l_0_1] == true then
  if not l_0_0:find(".zip->", 1, true) and not l_0_0:find(".rar->", 1, true) and not l_0_0:find(".7z->", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

