-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006350_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 15 then
  if mp.HSTR_WEIGHT <= 25 then
    (mp.set_mpattribute)("HSTR:Wizzrem.Concrete.A2")
  end
  if mp.HSTR_WEIGHT > 25 then
    (mp.set_mpattribute)("HSTR:Wizzrem.Concrete.A2X")
  end
end
return mp.INFECTED

