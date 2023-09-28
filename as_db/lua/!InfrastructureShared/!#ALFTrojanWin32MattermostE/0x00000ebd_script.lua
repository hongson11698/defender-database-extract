-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanWin32MattermostE\0x00000ebd_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) then
    local l_0_0 = (mp.GetMOTWHostUrl)()
    if l_0_0 ~= nil and (l_0_0:find("czhgtiigmfsyxgne2nyoufaqp5jvr76hiiueq4qp5elqjtpho6fx3iid.onion/", 1, true) or l_0_0:find("xkyn2emjzrbi5h4uffqc4ymi2dx3qh4ovoy27cm72ee4wljlkw6cljyd.onion/", 1, true)) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

