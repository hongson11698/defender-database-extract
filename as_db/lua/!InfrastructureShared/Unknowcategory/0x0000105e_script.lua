-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000105e_luac 

-- params : ...
-- function num : 0
if peattributes.no_ep then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if (string.len)(l_0_1) < 29 then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
  if (string.sub)(l_0_1, 1, 18) == "flashplayerplugin_" and (string.sub)(l_0_2, -15) == "\\macromed\\flash" then
    local l_0_3 = "Lua:ContextualDropFlashplayer"
    local l_0_4 = {}
    l_0_4["flashplayerplugin_19_0_0_185.exe"] = ""
    if l_0_4[l_0_1] then
      l_0_3 = l_0_3 .. "Latest"
    end
    ;
    (mp.set_mpattribute)(l_0_3)
  end
end
do
  return mp.CLEAN
end

