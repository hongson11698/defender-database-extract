-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000060ce_luac 

-- params : ...
-- function num : 0
if (hstrlog[2]).matched then
  (mp.set_mpattribute)("HSTR:MoloteraeLinkChanger")
end
if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

