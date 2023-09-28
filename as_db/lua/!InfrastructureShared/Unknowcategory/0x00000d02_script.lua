-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d02_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Lua:JSExt") or (mp.get_mpattribute)("Lua:VBSExt") or (mp.get_mpattribute)("Lua:WSFExt") then
  (mp.UfsSetMetadataBool)("Lua:WSHExt", true)
  return mp.INFECTED
else
  if (mp.UfsGetMetadataBool)("Lua:WSHExt", true) == 0 and "Lua:WSHExt" then
    return mp.INFECTED
  end
end
return mp.CLEAN

