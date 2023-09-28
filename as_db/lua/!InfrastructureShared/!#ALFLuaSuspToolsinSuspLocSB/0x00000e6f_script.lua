-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLuaSuspToolsinSuspLocSB\0x00000e6f_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattributesubstring)("BM_AT:") or (mp.get_mpattributesubstring)("BM_AT_cry:") then
    local l_0_0 = ((MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))):lower()
    if l_0_0 == "c:\\programdata" or l_0_0 == "c:\\perflogs" or l_0_0 == "c:\\users\\public" then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

