-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ContainerFileInfo\0x00000e20_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = l_0_0:sub(-4)
if l_0_1 and l_0_1:sub(1, 1) == "." and l_0_1 == ".bin" and (string.find)(l_0_0, "->xl/macrosheets/", 1, true) then
  (mp.set_mpattribute)("Lua:MacrosheetBin")
end
return mp.CLEAN

