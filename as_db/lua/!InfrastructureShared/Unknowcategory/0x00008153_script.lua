-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008153_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

string.fromhex = function(l_1_0)
  -- function num : 0_0
  return l_1_0:gsub("..", function(l_2_0)
    -- function num : 0_0_0
    local l_2_1 = string.char
    do
      local l_2_2, l_2_3, l_2_4 = tonumber(l_2_0, 16), .end
      do return l_2_1(l_2_2, l_2_3, l_2_4) end
      -- DECOMPILER ERROR at PC8: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end
)
end

local l_0_0 = (string.lower)((nri.GetURI)())
if l_0_0 then
  local l_0_1 = (string.match)(l_0_0, "^http://canonicalizer.ucsuri.tcs/(%w%w+)$")
  l_0_1 = (string.gsub)(l_0_1, "00", "")
  l_0_1 = l_0_1:fromhex()
  l_0_1 = (string.match)(l_0_1, "^%d%d?%d?%.%d%d?%d?%.%d%d?%d?%.%d%d?%d?:%d%d%d+/(.*)$")
  if l_0_1 and (string.len)(l_0_1) > 24 and (string.find)(l_0_1, "^[%w/_%-=]+$") and (nri.GetHttpCommand)() == nri.HTTP_GET and (nri.GetHttpResponseHeader)("Server") == "Apache" and (nri.GetHttpResponseHeader)("Content-Type") == "application/octet-stream" then
    local l_0_2 = tonumber((nri.GetHttpResponseHeader)("Content-Length"))
    if l_0_2 and l_0_2 > 160000 and l_0_2 < 220000 then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

