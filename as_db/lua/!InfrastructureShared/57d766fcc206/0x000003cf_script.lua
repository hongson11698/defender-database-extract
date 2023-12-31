-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\57d766fcc206\0x000003cf_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_0.ppid
  if l_0_2 == nil then
    return mp.CLEAN
  end
  if IsPidExcluded(l_0_2) then
    return mp.CLEAN
  end
  local l_0_3 = l_0_1:match("([^\\]+)$")
  local l_0_4 = {}
  l_0_4["ng bailey image collector.exe"] = true
  if l_0_4[l_0_3] then
    return mp.CLEAN
  end
  do
    if l_0_1:find("\\powershell.exe") then
      local l_0_5 = (mp.GetProcessCommandLine)(l_0_0.ppid)
      if l_0_5 ~= nil then
        l_0_5 = (string.lower)(l_0_5)
        if l_0_5:find("alwaysonvpn", 1, true) then
          return mp.CLEAN
        end
      end
    end
    do
      local l_0_6, l_0_7 = GetDetectionThresholdMetReason(l_0_2)
      if l_0_6 and (mp.bitxor)(l_0_7, 32) ~= 0 then
        return mp.LOWFI
      end
      return mp.LOWFI
    end
  end
end

