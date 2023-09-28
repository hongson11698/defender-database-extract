-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\55b3a0436b94\0x00007e8e_luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
for l_0_5 = 1, l_0_0 do
  if (sigattr_tail[l_0_5]).attribute == 16384 or (sigattr_tail[l_0_5]).attribute == 16385 or (sigattr_tail[l_0_5]).attribute == 16386 then
    local l_0_6 = ((sigattr_tail[l_0_5]).utf8p1):lower()
    l_0_1[(mp.crc32)(0, l_0_6, 1, #l_0_6)] = 1
  end
end
local l_0_7 = 0
for l_0_11 = 1, l_0_0 do
  if (sigattr_tail[l_0_11]).attribute == 16389 and (sigattr_tail[l_0_11]).utf8p2 == "ATTR_a280babb" and (sigattr_tail[l_0_11]).utf8p1 ~= nil then
    local l_0_12 = ((sigattr_tail[l_0_11]).utf8p1):lower()
    if l_0_1[(mp.crc32)(0, l_0_12, 1, #l_0_12)] == 1 then
      l_0_7 = l_0_7 + 1
    end
  end
end
if l_0_7 > 5 then
  sms_untrusted_process()
  reportTimingData()
  return mp.INFECTED
end
return mp.CLEAN

