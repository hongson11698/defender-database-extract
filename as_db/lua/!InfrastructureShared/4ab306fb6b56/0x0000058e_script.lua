-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4ab306fb6b56\0x0000058e_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_0 = (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1)
    if l_0_0 ~= nil and (sysio.IsFileExists)(l_0_0) then
      if (mp.IsKnownFriendlyFile)(l_0_0, true, true) == true then
        return mp.CLEAN
      end
      if checkFileLastWriteTime(l_0_0, 3600) == false then
        TrackPidAndTechniqueBM((this_sigattrlog[2]).ppid, "T1071.003", "tactic=susptransportdll;filepath:" .. l_0_0)
        ;
        (bm.add_related_file)(l_0_0)
        return mp.INFECTED
      end
    end
  end
  return mp.CLEAN
end

