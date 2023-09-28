-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000064d5_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("pea_isdll") and (pe.get_exports_count)() <= 4 and (pe.get_exports_count)() >= 1 then
    local l_0_0 = (pe.get_imports)()
    if l_0_0 <= 4 and l_0_0 >= 1 then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

