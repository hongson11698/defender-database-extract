-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\151b3e746daab\0x00001495_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if not l_0_0 or (string.find)(l_0_0, "/nmap", -5, true) or (string.find)(l_0_0, "/sudo", -5, true) or (string.find)(l_0_0, "/bash", -5, true) or (string.find)(l_0_0, "/zsh", -4, true) or (string.find)(l_0_0, "/sh", -3, true) or (string.find)(l_0_0, "/dash", -5, true) or (string.find)(l_0_0, "/ksh93", -6, true) or (string.find)(l_0_0, "/ksh", -4, true) or (string.find)(l_0_0, "/tcsh", -5, true) or (string.find)(l_0_0, "/python", 1, true) or (string.find)(l_0_0, "/perl", -5, true) or (string.find)(l_0_0, "/ruby", -5, true) or (string.find)(l_0_0, "/pwsh", -5, true) or IsExcludedByImagePath(l_0_0) then
  return mp.CLEAN
end
addRelatedProcess()
return mp.INFECTED

