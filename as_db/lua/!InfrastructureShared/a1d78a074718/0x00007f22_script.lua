-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a1d78a074718\0x00007f22_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = ((mp.GetProcessCommandLine)(l_0_0)):lower()
if l_0_1 == nil then
  return mp.CLEAN
end
if (string.match)(l_0_1, " scrobj.dll") then
  return mp.LOWFI
end
l_0_1 = l_0_1:match("^(.*%S)%s*$")
do
  if not (string.match)(l_0_1, "i:http.*%s+(.*)$") then
    local l_0_2, l_0_3 = (string.match)(l_0_1, "i:ftp.*%s+(.*)$")
  end
  -- DECOMPILER ERROR at PC48: Confused about usage of register: R2 in 'UnsetPending'

  local l_0_4, l_0_5 = , IsKeyInRollingQueue("scrobj.dll", l_0_2, true)
  if l_0_5 then
    return mp.LOWFI
  end
  local l_0_6 = nil
  if GetRollingQueue("scrobj.dll") ~= nil and type(GetRollingQueue("scrobj.dll")) == "table" then
    for l_0_10 in pairs(GetRollingQueue("scrobj.dll")) do
      local l_0_7 = nil
      -- DECOMPILER ERROR at PC73: Confused about usage of register: R9 in 'UnsetPending'

      if (string.find)(l_0_1, (l_0_7[R9_PC73]).key) then
        return mp.LOWFI
      end
    end
  end
  do
    return mp.CLEAN
  end
end

