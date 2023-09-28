-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4ab3a62f866a\0x0000061a_luac 

-- params : ...
-- function num : 0
local l_0_0 = "remote_file_created_taint"
local l_0_1, l_0_2 = nil, nil
if (this_sigattrlog[1]).matched then
  l_0_2 = (this_sigattrlog[1]).utf8p2
end
if (this_sigattrlog[2]).matched then
  l_0_1 = (this_sigattrlog[2]).utf8p1
end
if not l_0_1 or not l_0_2 then
  return mp.CLEAN
end
local l_0_3 = false
local l_0_4 = (mp.GetExecutablesFromCommandLine)(l_0_2)
if l_0_4 then
  for l_0_8,l_0_9 in ipairs(l_0_4) do
    if (sysio.IsFileExists)(l_0_9) and isTainted(l_0_9, l_0_0) then
      l_0_3 = true
      break
    end
  end
end
do
  if l_0_3 then
    (mp.TriggerScanResource)("file", l_0_1)
    return mp.INFECTED
  end
  return mp.CLEAN
end

