-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006359_luac 

-- params : ...
-- function num : 0
if peattributes.packed and peattributes.checks_teb_lasterror and peattributes.dynmem_APIcall and peattributes.executes_from_dynamic_memory then
  return mp.SUSPICIOUS
end
return mp.CLEAN

