-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007fb5_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4, l_0_5 = (this_sigattrlog[3]).utf8p2
    else
    end
    -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC53: Confused about usage of register: R0 in 'UnsetPending'

    do
      if (not (this_sigattrlog[5]).matched or (this_sigattrlog[5]).utf8p2) and (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "\\appdata\\roaming\\microsoft", 1, true) then
        local l_0_6, l_0_7 = , (string.match)((string.lower)((this_sigattrlog[5]).utf8p2), "(.+\\)([^\\]+)$")
        if l_0_7 then
          if (string.sub)(l_0_7, -27) == "\\appdata\\roaming\\microsoft\\" then
            (mp.ReportLowfi)(l_0_6, 3312250037)
            return mp.INFECTED
          else
            if (string.sub)(l_0_7, -35) == "\\appdata\\roaming\\microsoft\\windows\\" then
              (mp.ReportLowfi)(l_0_6, 1550171407)
              return mp.INFECTED
            end
          end
        end
      end
      return mp.CLEAN
    end
  end
end

