-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008134_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0, l_0_1 = nil, nil
  l_0_1 = (this_sigattrlog[1]).utf8p2
  local l_0_2 = nil
else
end
do
  -- DECOMPILER ERROR at PC46: Overwrote pending register: R0 in 'AssignReg'

  if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
    local l_0_3, l_0_4 = (this_sigattrlog[2]).utf8p1, (this_sigattrlog[2]).utf8p2
    l_0_4 = (this_sigattrlog[3]).utf8p2
    local l_0_5 = nil
  else
  end
  do
    -- DECOMPILER ERROR at PC80: Overwrote pending register: R0 in 'AssignReg'

    if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p2 == nil or (this_sigattrlog[5]).matched) and (this_sigattrlog[5]).utf8p2 ~= nil then
      local l_0_6, l_0_7 = (this_sigattrlog[4]).utf8p1, (this_sigattrlog[4]).utf8p2
      l_0_7 = (this_sigattrlog[5]).utf8p2
      local l_0_8 = nil
    else
    end
    do
      -- DECOMPILER ERROR at PC114: Overwrote pending register: R0 in 'AssignReg'

      if (not (this_sigattrlog[6]).matched or (this_sigattrlog[6]).utf8p2 == nil or (this_sigattrlog[7]).matched) and (this_sigattrlog[7]).utf8p2 ~= nil then
        local l_0_9, l_0_10, l_0_12, l_0_13, l_0_15, l_0_16, l_0_18 = (this_sigattrlog[6]).utf8p1, (this_sigattrlog[6]).utf8p2
        l_0_12 = this_sigattrlog
        l_0_12 = l_0_12[7]
        l_0_10 = l_0_12.utf8p2
        local l_0_11, l_0_14, l_0_17, l_0_19 = nil
      else
      end
      do
        if ((this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p2 ~= nil and (this_sigattrlog[8]).utf8p1 == nil) or (this_sigattrlog[8]).utf8p2 == nil then
          return mp.CLEAN
        end
        local l_0_20 = nil
        local l_0_21 = nil
        ;
        (nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), {["[" .. l_0_20 .. "]"] = "[" .. l_0_21 .. "]"})
        return mp.INFECTED
      end
    end
  end
end

