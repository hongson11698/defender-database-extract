-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005cb3_luac 

-- params : ...
-- function num : 0
do
  if pehdr.TimeDateStamp ~= 0 then
    local l_0_0 = (MpCommon.GetCurrentTimeT)()
    if pehdr.TimeDateStamp < l_0_0 and l_0_0 - pehdr.TimeDateStamp <= 86400 then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

