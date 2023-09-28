-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000063ba_luac 

-- params : ...
-- function num : 0
if peattributes.isexe and (mp.get_mpattribute)("HSTR:Win32/DelphiFile") and (hstrlog[2]).hitcount >= 3 then
  return mp.INFECTED
end
return mp.CLEAN

