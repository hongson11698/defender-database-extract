-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007fd1_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) ~= true then
  return mp.CLEAN
end
if not peattributes.isdll and peattributes.no_exports then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= "perfc.dat" then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (pe.get_exports)()
if l_0_1 > 1 then
  return mp.CLEAN
end
if l_0_1 == 0 then
  (mp.set_mpattribute)("MpRequestHookwowH")
  return mp.INFECTED
end
if (l_0_2[1]).ordinal ~= 1 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("MpRequestHookwowH")
return mp.INFECTED

