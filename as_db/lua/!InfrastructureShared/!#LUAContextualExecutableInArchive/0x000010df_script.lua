-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAContextualExecutableInArchive\0x000010df_luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if (string.len)(l_0_0) < 4 then
  return mp.CLEAN
end
local l_0_1 = ((string.sub)(l_0_0, -4)):match("%.(%w+)$")
if l_0_1 == nil then
  return mp.CLEAN
end
if IsSuspiciousFileExt(l_0_1) then
  (mp.set_mpattribute)("MpDisableCaching")
  local l_0_2 = "enghipscpy:blockaccess:be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
  if not (MpCommon.QueryPersistContext)((mp.getfilename)(), l_0_2) then
    (MpCommon.AppendPersistContext)((mp.getfilename)(), l_0_2, 0)
  end
  ;
  (mp.SetHipsRule)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550")
  return mp.BLOCKACCESS
end
do
  return mp.CLEAN
end

