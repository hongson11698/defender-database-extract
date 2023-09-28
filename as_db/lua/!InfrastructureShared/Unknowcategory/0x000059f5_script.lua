-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000059f5_luac 

-- params : ...
-- function num : 0
if (string.match)((mp.utf16to8)((this_sigattrlog[1]).wp1), "\\%a+.exe") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

