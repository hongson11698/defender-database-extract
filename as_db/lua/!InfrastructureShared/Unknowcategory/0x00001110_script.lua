-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001110_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if not (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) then
  return mp.CLEAN
end
if not peattributes.isexe then
  return mp.CLEAN
end
if peattributes.isdriver then
  return mp.CLEAN
end
if not peattributes.no_security then
  return mp.CLEAN
end
if peattributes.packersigmatched then
  return mp.CLEAN
end
if pehdr.TimeDateStamp == 0 or pehdr.TimeDateStamp == -1 then
  return mp.CLEAN
end
if not peattributes.dt_error_heur_exit_criteria then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4096 or l_0_0 > 16777216 then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.GetCurrentTimeT)()
if l_0_1 == nil or l_0_1 == 0 or l_0_1 == -1 then
  return mp.CLEAN
end
local l_0_2 = 28800
local l_0_3 = 57600
local l_0_4 = 86400
if l_0_1 < pehdr.TimeDateStamp then
  (mp.set_mpattribute)("Lua:LwowkooHtseuqeRpM")
else
  if l_0_1 - l_0_2 < pehdr.TimeDateStamp then
    (mp.set_mpattribute)("Lua:HwowkooHtseuqeRpM")
  else
    if l_0_1 - l_0_3 < pehdr.TimeDateStamp then
      (mp.set_mpattribute)("Lua:MwowkooHtseuqeRpM")
    else
      if l_0_1 - l_0_4 < pehdr.TimeDateStamp then
        (mp.set_mpattribute)("Lua:LwowkooHtseuqeRpM")
      end
    end
  end
end
return mp.CLEAN

