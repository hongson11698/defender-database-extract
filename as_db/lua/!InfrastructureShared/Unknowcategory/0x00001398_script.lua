-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001398_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil and ((string.match)(l_0_0, "/bin/%a*sh") or (string.find)(l_0_0, "perl", 1, true) or (string.find)(l_0_0, "python", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN

