-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\TrojanWin64DisguisedXMRigMiner\ObMpAttributes\0x000000b7_luac 

-- params : ...
-- function num : 0
if peattributes.is_process then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (mp.UfsGetMetadataStringA)("LUAUFS:MinerDets", true)
if l_0_0 == 0 and l_0_1 ~= nil and (string.find)(l_0_1, "miner", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_2 = (mp.enum_mpattributesubstring)("PUA:")
if l_0_2 ~= nil and #l_0_2 > 0 then
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    local l_0_8 = (string.lower)(l_0_7)
    if (string.find)(l_0_8, "torrent", 1, true) ~= nil then
      return mp.CLEAN
    end
    if (string.find)(l_0_8, "coinminer", 1, true) == nil and (string.find)(l_0_8, "namedminer", 1, true) == nil and (string.find)(l_0_8, "miner", 1, true) ~= nil then
      return mp.CLEAN
    end
  end
end
do
  local l_0_9 = ""
  local l_0_10 = ""
  local l_0_11 = ""
  local l_0_12 = ""
  local l_0_13 = false
  local l_0_14 = {}
  l_0_14["0.0.com"] = true
  l_0_14.kmspico = true
  l_0_14.microsoft = true
  l_0_14["microsoft corporation"] = true
  l_0_14["oracle corporation"] = true
  l_0_14["www.360.com"] = true
  l_0_14["www.google.com"] = true
  l_0_14["www.java.com"] = true
  l_0_14["www.realtek.com"] = true
  l_0_14["www.micorosoft.com"] = true
  l_0_14["www.microsoft.com"] = true
  local l_0_15 = {}
  l_0_15["dllhostex.exe"] = true
  l_0_15["explorer.exe"] = true
  l_0_15["java.exe"] = true
  l_0_15["microsofthost.exe"] = true
  l_0_15["rtkauduservice.exe"] = true
  l_0_15["runtimebroker.exe"] = true
  l_0_15["safe.exe"] = true
  l_0_15["services.exe"] = true
  l_0_15["system.exe"] = true
  l_0_15["taskmgr.exe"] = true
  l_0_15["tiworker.exe"] = true
  l_0_15.voice = true
  l_0_15["winx.exe"] = true
  local l_0_16 = {}
  l_0_16["0 0"] = true
  l_0_16["com surrogate"] = true
  l_0_16["google crash handler"] = true
  l_0_16["host process for windows services"] = true
  l_0_16["java update"] = true
  l_0_16["java(tm) platform se binary"] = true
  l_0_16.kmspico = true
  l_0_16["realtek hd audio service"] = true
  l_0_16["runtime broker"] = true
  l_0_16["services and controller app"] = true
  l_0_16.svchost = true
  l_0_16.system = true
  l_0_16["taskmgr tools"] = true
  l_0_16.voice = true
  l_0_16["windows explorer"] = true
  l_0_16["windows modules installer worker"] = true
  l_0_16["windows x"] = true
  local l_0_17 = {}
  l_0_17["google update"] = true
  l_0_17.java = true
  l_0_17["microsoft corporation. all rights reserved."] = true
  l_0_17.microsofthost = true
  l_0_17.rtkauduservice = true
  l_0_17["services and controller app"] = true
  l_0_17.svchost = true
  l_0_17.system = true
  l_0_17.taskmgr = true
  l_0_17.voice = true
  l_0_17["windows x"] = true
  local l_0_18 = {}
  l_0_18["https://github.com/bendr0id/xmrigcc/"] = true
  l_0_18["https://github.com/bendr0id/xmrigcc"] = true
  l_0_18["https://github.com/bendr0id/xmrigcc-amd"] = true
  l_0_18["www.xmrig.com"] = true
  local l_0_19 = {}
  l_0_19["xmrig.exe"] = true
  l_0_19["xmrig-cuda.dll"] = true
  l_0_19["xmrigminer.exe"] = true
  local l_0_20 = {}
  l_0_20["xmrig cpu miner"] = true
  l_0_20["xmrig cuda miner"] = true
  l_0_20["xmrig cuda plugin"] = true
  l_0_20["xmrig miner"] = true
  l_0_20["xmrig opencl miner"] = true
  l_0_20["xmrigcc-amd opencl miner"] = true
  l_0_20["xmrigcc command\'n\'control server"] = true
  l_0_20["xmrigcc cpu miner"] = true
  local l_0_21 = {}
  l_0_21.xmrig = true
  l_0_21.xmrigcc = true
  local l_0_22 = (pe.get_versioninfo)()
  if l_0_22 ~= nil then
    l_0_13 = true
    l_0_9 = l_0_22.CompanyName
    l_0_10 = l_0_22.OriginalFilename
    l_0_11 = l_0_22.FileDescription
    l_0_12 = l_0_22.ProductName
    if l_0_9 then
      l_0_9 = (string.lower)(l_0_9)
    else
      l_0_9 = ""
    end
    if l_0_10 then
      l_0_10 = (string.lower)(l_0_10)
    else
      l_0_10 = ""
    end
    if l_0_11 then
      l_0_11 = (string.lower)(l_0_11)
    else
      l_0_11 = ""
    end
    if l_0_12 then
      l_0_12 = (string.lower)(l_0_12)
    else
      l_0_12 = ""
    end
    if l_0_14[l_0_9] or l_0_15[l_0_10] or l_0_16[l_0_11] or l_0_17[l_0_12] then
      return mp.INFECTED
    end
  end
  local l_0_23 = (string.lower)((mp.getfilename)())
  local l_0_24, l_0_25 = l_0_23:match("(.+\\)([^\\]+)$")
  if (string.sub)(l_0_25, 1, 5) == "xmrig" then
    return mp.CLEAN
  end
  if l_0_13 and (l_0_18[l_0_9] or l_0_19[l_0_10] or l_0_20[l_0_11] or l_0_21[l_0_12]) then
    (mp.set_mpattribute)("Miner:HasXMRigFileProperty")
    return mp.CLEAN
  end
  return mp.INFECTED
end

