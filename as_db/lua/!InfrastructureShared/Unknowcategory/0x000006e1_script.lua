-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000006e1_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("WPADProcess") then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("WPADExploitAttempt.seen")
;
(mp.set_mpattribute)("WPADSuspCacheFile")
do
  if (this_sigattrlog[3]).matched then
    local l_0_0 = (MpCommon.PathToWin32Path)((this_sigattrlog[3]).utf8p1)
    if (sysio.IsFileExists)(l_0_0) then
      (bm.add_related_file)(l_0_0)
    end
  end
  return mp.INFECTED
end

