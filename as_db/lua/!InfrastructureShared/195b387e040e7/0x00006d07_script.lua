-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\195b387e040e7\0x00006d07_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
    bm_AddRelatedFileFromCommandLine(l_0_0)
  end
  sms_untrusted_process()
  add_parents()
  return mp.INFECTED
end

