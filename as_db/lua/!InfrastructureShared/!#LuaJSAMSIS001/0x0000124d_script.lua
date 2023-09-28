-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaJSAMSIS001\0x0000124d_luac 

-- params : ...
-- function num : 0
local l_0_0 = tostring(footerpage)
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
local l_0_1 = {}
local l_0_2 = {}
l_0_2["www.w3.org"] = true
l_0_2["www.salesweb.jp"] = true
l_0_2["vkdj.org"] = true
l_0_2["utilities.pcpitstop.com"] = true
l_0_2["tile.thunderforest.com"] = true
l_0_2["switchboard.pcmatichome.com"] = true
l_0_2["switchboard.default.pcpitstop.com"] = true
l_0_2["schemas.xmlsoap.org"] = true
l_0_2["prod5.comcept.net"] = true
l_0_2["prod4.comcept.net"] = true
l_0_2["ny.cf.pcpitstop.com"] = true
l_0_2["login.microsoftonline.com"] = true
l_0_2["localhost.geoprostor.net"] = true
l_0_2["img.unitedconsumers.com"] = true
l_0_2["graph.microsoft.com"] = true
l_0_2["files.pcpitstop.com"] = true
l_0_2["az542455.vo.msecnd.net"] = true
l_0_2["api.weather.msn.com"] = true
l_0_2["api.slyp.com.au"] = true
l_0_2["10.125.31.183"] = true
local l_0_3 = nil
for l_0_7 in (string.gmatch)(l_0_0, "%.send.\"([A-Za-z0-9+/=]+)\"") do
  if l_0_7 ~= nil and l_0_7 ~= "" and (string.len)(l_0_7) >= 20 and (string.len)(l_0_7) <= 1000 then
    l_0_3 = (MpCommon.Base64Decode)(l_0_7)
    if l_0_3 ~= nil and l_0_3 ~= "" then
      (mp.set_mpattribute)("Lua:AMSI.JS.SendWithBase64Str.S1")
      break
    end
  end
end
do
  for l_0_11 in (string.gmatch)(l_0_0, "//([A-Za-z0-9]+%.[A-Za-z0-9]+%.[A-Za-z0-9]+%.[A-Za-z0-9]+)/") do
    if l_0_11 ~= nil and l_0_11 ~= "" and (string.len)(l_0_11) >= 10 and (string.len)(l_0_11) <= 1000 then
      local l_0_12 = (string.gsub)(l_0_11, "%.", "_")
      ;
      (mp.set_mpattribute)("Lua:AMSI.JS.DomainWith4Parts.S1")
      ;
      (mp.set_mpattribute)("Lua:SuspDomain:" .. l_0_12)
      if not l_0_2[l_0_11] then
        (table.insert)(l_0_1, l_0_11)
      end
    end
  end
  for l_0_16 in (string.gmatch)(l_0_0, "//([A-Za-z0-9]+%.[A-Za-z0-9]+)/") do
    if l_0_16 ~= nil and l_0_16 ~= "" and (string.len)(l_0_16) >= 4 and (string.len)(l_0_16) <= 1000 then
      local l_0_17 = (string.gsub)(l_0_16, "%.", "_")
      ;
      (mp.set_mpattribute)("Lua:AMSI.JS.DomainWith2Parts.S1")
      ;
      (mp.set_mpattribute)("Lua:SuspDomain:" .. l_0_17)
      if not l_0_2[l_0_16] then
        (table.insert)(l_0_1, l_0_16)
      end
    end
  end
  for l_0_21 in (string.gmatch)(l_0_0, "//([A-Za-z0-9]+%.[A-Za-z0-9]+%.[A-Za-z0-9]+)/") do
    if l_0_21 ~= nil and l_0_21 ~= "" and (string.len)(l_0_21) >= 8 and (string.len)(l_0_21) <= 1000 and not l_0_2[l_0_21] then
      (table.insert)(l_0_1, l_0_21)
    end
  end
  l_0_1 = table_dedup(l_0_1)
  if l_0_1 == nil or #l_0_1 == 0 then
    return mp.CLEAN
  end
  local l_0_22 = {}
  l_0_22.SIG_CONTEXT = "LUA_GENERIC"
  l_0_22.CONTENT_SOURCE = "AMSI_JS"
  l_0_22.PROCESS_CONTEXT = "JS Caller"
  l_0_22.PARENT_CONTEXT = nil
  l_0_22.FILELESS = "true"
  l_0_22.CMDLINE_URL = "false"
  l_0_22.BREAK_AT_FIRST_HIT_MALWARE = "60"
  l_0_22.BREAK_AT_FIRST_HIT_PHISH = "60"
  local l_0_23 = CheckUrlReputationSimple(l_0_1, l_0_22, 60)
  if l_0_23 then
    (mp.set_mpattribute)("Lua:AMSI.JS.BadDomainFound.S1")
  end
  return mp.CLEAN
end

