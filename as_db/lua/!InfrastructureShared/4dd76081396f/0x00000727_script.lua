-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4dd76081396f\0x00000727_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (((mp.GetProcessCommandLine)(l_0_0)):lower())
local l_0_2 = nil
if l_0_1 then
  l_0_2 = (string.match)(l_0_1, "wscript.*%s+%\"?%\'?(%w:\\.*%.js)")
end
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = false
local l_0_4 = GetRollingQueue("LuaHighRiskJSinZipWebVector")
if l_0_4 ~= nil and type(l_0_4) == "table" then
  for l_0_8 in pairs(l_0_4) do
    if (string.find)(l_0_2, (l_0_4[l_0_8]).key) then
      l_0_3 = true
    end
  end
end
do
  if l_0_3 then
    local l_0_9 = (mp.GetParentProcInfo)()
    if l_0_9 ~= nil then
      local l_0_10 = (string.lower)(l_0_9.image_path)
      if l_0_10:match("([^\\]+)$") == "explorer.exe" then
        return mp.INFECTED
      end
    end
  end
  do
    return mp.CLEAN
  end
end

