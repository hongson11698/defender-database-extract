-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELTrojanDownloaderO97MQakbotRQT!MTB\0x00000fd4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 110592 or l_0_0 > 458752 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
if l_0_0 > 404144 then
  local l_0_1 = tostring((mp.readfile)(403376, 200))
  l_0_1 = (string.lower)(l_0_1)
  if (string.match)(l_0_1, "regsvr32 %-silent %.%.\\") ~= nil then
    return mp.INFECTED
  end
else
  do
    if l_0_0 > 407504 then
      local l_0_2 = tostring((mp.readfile)(406992, 200))
      l_0_2 = (string.lower)(l_0_2)
      if (string.match)(l_0_2, "regsvr32 %-silent %.%.\\") ~= nil then
        return mp.INFECTED
      end
    else
      do
        do
          if l_0_0 > 110592 then
            local l_0_3 = tostring((mp.readfile)(110128, 200))
            l_0_3 = (string.lower)(l_0_3)
            if (string.match)(l_0_3, "regsvr32 %-silent %.%.\\") ~= nil then
              return mp.INFECTED
            end
          end
          return mp.CLEAN
        end
      end
    end
  end
end

