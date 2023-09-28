-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#CMNLinuxValidateCronPath\0x00000a38_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1 == nil or l_0_1 == "" or l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
if l_0_1 == "cron" or l_0_1 == "crond" then
  if (string.find)(l_0_0, "/usr/bin", -8, true) or (string.find)(l_0_0, "/usr/sbin", -9, true) or (string.find)(l_0_0, "->usr/sbin", -10, true) or (string.find)(l_0_0, "->sbin", -6, true) or (string.find)(l_0_0, "/opt", 1, true) == 1 then
    local l_0_2 = (mp.getfilesize)()
    if l_0_2 == nil or l_0_2 < 307200 then
      return mp.CLEAN
    end
    ;
    (mp.set_mpattribute)("BM_LargeSizeCronBinary")
  else
    do
      ;
      (mp.set_mpattribute)("BM_MasqueradeCronPath")
      if (string.find)(l_0_1, ".", 1, true) == 1 or (string.find)(l_0_0, "/.", 1, true) then
        (mp.set_mpattribute)("BM_CronWithHiddenName")
      else
        ;
        (mp.set_mpattribute)("BM_MasqueradeCronName")
      end
      return mp.CLEAN
    end
  end
end

