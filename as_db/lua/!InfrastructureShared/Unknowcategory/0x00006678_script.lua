-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006678_luac 

-- params : ...
-- function num : 0
if peattributes.epinfirstsect and (pe.contains_va)(1, (hstrlog[1]).VA) and (mp.get_mpattribute)("LUA:Win32/Tarctox") then
  return mp.INFECTED
end
return mp.CLEAN

