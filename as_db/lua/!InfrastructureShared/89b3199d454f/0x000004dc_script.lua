-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\89b3199d454f\0x000004dc_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 6000000000 then
  return mp.CLEAN
end
local l_0_0 = nil
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  l_0_0 = (this_sigattrlog[3]).utf8p2
end
do
  if l_0_0 ~= nil then
    local l_0_1 = (mp.GetExecutablesFromCommandLine)(l_0_0)
    for l_0_5,l_0_6 in ipairs(l_0_1) do
      l_0_6 = (mp.ContextualExpandEnvironmentVariables)(l_0_6)
      if (sysio.IsFileExists)(l_0_6) then
        (bm.add_related_file)(l_0_6)
      end
    end
    TrackPidAndTechniqueBM("BM", "susp_spoolhack", "priteshel_g")
    return mp.INFECTED
  end
  return mp.CLEAN
end

