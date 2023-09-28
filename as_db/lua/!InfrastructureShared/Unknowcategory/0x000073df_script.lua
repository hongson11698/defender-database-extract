-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000073df_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched then
  (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1), 21307622)
  return mp.INFECTED
end
if (this_sigattrlog[3]).matched then
  (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[3]).utf8p1), 1488451358)
  return mp.INFECTED
end
return mp.INFECTED

