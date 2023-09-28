-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007dd9_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

string.tohex = function(l_1_0)
  -- function num : 0_0
  return l_1_0:gsub(".", function(l_2_0)
    -- function num : 0_0_0
    local l_2_1 = string.format
    local l_2_2 = "%02X"
    do
      local l_2_3, l_2_4 = (string.byte)(l_2_0), .end
      do return l_2_1(l_2_2, l_2_3, l_2_4) end
      -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end
)
end

local l_0_0 = (nri.GetRawResponseBlob)()
do
  if l_0_0 ~= nil and (string.len)(l_0_0) < 4096 then
    local l_0_1 = {}
    l_0_1.NRI_ResponseBlob = l_0_0:tohex()
    ;
    (nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), l_0_1)
  end
  return mp.INFECTED
end

