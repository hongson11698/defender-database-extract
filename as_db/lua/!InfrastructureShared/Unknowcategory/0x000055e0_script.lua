-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000055e0_luac 

-- params : ...
-- function num : 0
if (hstrlog[5]).matched then
  (mp.set_mpattribute)("Lowfi:Komodia:WFP:NoVuln")
  return mp.CLEAN
end
return mp.INFECTED

