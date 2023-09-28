-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005591_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpCPlApplet") and (mp.get_mpattribute)("HSTR:VirTool:Win32/AscUrlExe") then
  return mp.INFECTED
end
return mp.CLEAN

