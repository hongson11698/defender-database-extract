-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\17fb3887de09b\0x000001db_luac 

-- params : ...
-- function num : 0
local l_0_0 = "rq_ServiceImagePaths"
local l_0_1 = 172800
local l_0_2 = 100
local l_0_3 = (sysio.EnumerateServices)()
for l_0_7,l_0_8 in pairs(l_0_3) do
  local l_0_9 = l_0_8.ServiceName
  if l_0_9 then
    local l_0_10 = (string.lower)((sysio.GetCommandLineFromService)(l_0_9))
    l_0_10 = (MpCommon.PathToWin32Path)(l_0_10)
    if l_0_10 ~= nil and not IsKeyInRollingQueue(l_0_0, l_0_10, true) then
      local l_0_11 = StringSplit(l_0_10, " ")
      local l_0_12 = l_0_10:sub(1, 1)
      if l_0_12 ~= "\"" and l_0_12 ~= "\'" and not StringEndsWith(l_0_11[1], ".exe") and not StringEndsWith(l_0_11[1], ".sys") then
        AppendToRollingQueue(l_0_0, l_0_11[1], l_0_1, l_0_2)
        return mp.CLEAN
      end
    end
  end
end
return mp.CLEAN

