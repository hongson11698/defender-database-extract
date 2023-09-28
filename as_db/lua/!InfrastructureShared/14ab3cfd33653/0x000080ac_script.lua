-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\14ab3cfd33653\0x000080ac_luac 

-- params : ...
-- function num : 0
triggerMemoryScanOnProcessTree(true, true, "SMS_M", 1000, "Behavior:Win32/Qakbot.SA")
local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[1]).matched then
  l_0_0 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched then
    l_0_0 = (this_sigattrlog[2]).utf8p2
  else
    if (this_sigattrlog[3]).matched then
      l_0_0 = (this_sigattrlog[3]).utf8p2
    end
  end
end
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 then
  l_0_1 = (this_sigattrlog[4]).utf8p2
else
  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 then
    l_0_1 = (this_sigattrlog[5]).utf8p2
  end
end
local l_0_2, l_0_3 = pcall(mp.GetInlineScriptsFromCommandLine, l_0_0:lower())
if l_0_2 and l_0_3 then
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    local l_0_9, l_0_10 = pcall(mp.ContextualExpandEnvironmentVariables, l_0_8)
    if l_0_9 and l_0_10 then
      (bm.add_threat_file)(l_0_10)
    end
  end
end
do
  local l_0_11 = extractDllForRegproc(l_0_1)
  if l_0_11 and (mp.IsKnownFriendlyFile)(l_0_11, true, false) == false then
    (bm.add_threat_file)(l_0_11)
  end
  return mp.INFECTED
end

