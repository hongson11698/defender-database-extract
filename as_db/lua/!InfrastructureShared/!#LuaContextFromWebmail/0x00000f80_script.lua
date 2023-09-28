-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextFromWebmail\0x00000f80_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) then
    local l_0_0 = (mp.GetMOTWHostUrl)()
    if l_0_0 ~= nil then
      l_0_0 = l_0_0:lower()
      if (string.find)(l_0_0, "outlook", 1, true) or (string.find)(l_0_0, "mail", 1, true) or (string.find)(l_0_0, "attach", 1, true) or (string.find)(l_0_0, "message", 1, true) then
        (MpCommon.AppendPersistContextNoPath)("CLF_AM", "CLF_AM_WM", 60)
        ;
        (MpCommon.AppendPersistContextNoPath)("CLF_IC", (mp.getfilename)(), 60)
        return mp.INFECTED
      end
    end
  end
  return mp.CLEAN
end

