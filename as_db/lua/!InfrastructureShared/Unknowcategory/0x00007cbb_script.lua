-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007cbb_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN then
    local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
    if (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME) == "msimg32.dll" and (string.lower)((string.sub)(l_0_0, -5, -1)) == "\\temp" and ((pe.get_versioninfo)()).CompanyName ~= "Microsoft Corporation" then
      return mp.LOWFI
    end
  end
  return mp.CLEAN
end

