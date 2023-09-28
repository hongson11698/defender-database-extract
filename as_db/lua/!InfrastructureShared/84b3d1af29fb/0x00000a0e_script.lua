-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b3d1af29fb\0x00000a0e_luac 

-- params : ...
-- function num : 0
do
  if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") then
    local l_0_0 = mp.CLEAN
    if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 then
      l_0_0 = reportGenericRansomware((this_sigattrlog[1]).utf8p2)
    else
      if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 then
        l_0_0 = reportGenericRansomware((this_sigattrlog[2]).utf8p2)
      end
    end
    if l_0_0 == mp.INFECTED then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

