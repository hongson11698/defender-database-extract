-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaSkypeAPIUsage\0x000011c1_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 11534336 then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_1 == mp.SCANREASON_ONOPEN or l_0_1 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_2 = (string.lower)((MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)))
  local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  if l_0_3 == "mpc-hc.exe" or l_0_3 == "skytel.exe" or l_0_3 == "clownfish.exe" or l_0_3 == "csrskype.exe" or l_0_3 == "livesupport.exe" or l_0_3 == "mpl.exe" or l_0_3 == "pamela.exe" or l_0_3 == "mpc-hc_nvo.exe" or l_0_3 == "livesupport_setup.exe" or l_0_3 == "ezgamexn.dll" or l_0_3 == "skype4com.dll" or l_0_3 == "livesupport_setup.exe" or (string.sub)(l_0_3, -4) == ".wim" or (string.sub)(l_0_3, -4) == ".iso" or (string.sub)(l_0_3, -4) == ".cab" then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, "program files", 1, true) ~= nil or (string.find)(l_0_2, "hp", 1, true) ~= nil or (string.find)(l_0_2, "acer", 1, true) ~= nil or (string.find)(l_0_2, "compaq", 1, true) ~= nil or (string.find)(l_0_2, "broadcom", 1, true) ~= nil or (string.find)(l_0_2, "isos", 1, true) ~= nil or (string.find)(l_0_2, "realtek", 1, true) ~= nil or (string.find)(l_0_2, "lenovo", 1, true) ~= nil or (string.find)(l_0_2, "bluetooth", 1, true) ~= nil or (string.find)(l_0_2, "driver", 1, true) ~= nil then
    return mp.CLEAN
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

