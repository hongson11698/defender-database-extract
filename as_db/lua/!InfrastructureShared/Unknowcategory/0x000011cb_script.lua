-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000011cb_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_4, l_0_11, l_0_12, l_0_13 = nil
if (mp.get_mpattribute)("RPF:TopLevelFile") then
  local l_0_1 = nil
  local l_0_2 = (mp.get_mpattributevalue)("RPF:MpCertSz")
  if (mp.get_mpattributevalue)("RPF:MpCertStart") and l_0_2 then
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC21: Confused about usage of register: R3 in 'UnsetPending'

    -- DECOMPILER ERROR at PC23: Confused about usage of register: R3 in 'UnsetPending'

    if not l_0_2 - 8 or l_0_2 - 8 <= 0 or l_0_2 - 8 > 65536 then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC31: Confused about usage of register: R3 in 'UnsetPending'

    l_0_1 = (mp.GetCertificateInfoFromFile)(l_0_3 + 8, l_0_2 - 8, false)
  end
else
  do
    local l_0_5 = nil
    if not (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) then
      return mp.CLEAN
    end
    if (string.find)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)), "/vbaprojectsignature", 1, true) then
      local l_0_6 = nil
      local l_0_7 = 36
      if not (mp.getfilesize)() or (mp.getfilesize)() < 128 then
        return mp.CLEAN
      end
      ;
      (mp.readprotection)(false)
      local l_0_8 = nil
      ;
      (mp.readprotection)(true)
      if not (mp.readfile)(0, 4) or (string.len)((mp.readfile)(0, 4)) < 4 then
        return mp.CLEAN
      end
      local l_0_9 = nil
      if not (mp.readu_u32)((mp.readfile)(0, 4), 1) or (mp.readu_u32)((mp.readfile)(0, 4), 1) > 65536 or l_0_8 < l_0_7 + (mp.readu_u32)((mp.readfile)(0, 4), 1) then
        return mp.CLEAN
      end
      l_0_5 = (mp.GetCertificateInfoFromFile)(l_0_7, (mp.readu_u32)((mp.readfile)(0, 4), 1), false)
    else
      do
        -- DECOMPILER ERROR at PC120: Confused about usage of register: R1 in 'UnsetPending'

        do
          if (string.find)(l_0_6, "%->%[scriptsig%]") then
            local l_0_10 = nil
            if not (mp.getfilesize)() or (mp.getfilesize)() > 65536 then
              return mp.CLEAN
            end
            l_0_5 = (mp.GetCertificateInfoFromFile)(0, (mp.getfilesize)(), false)
          end
          -- DECOMPILER ERROR at PC142: Confused about usage of register: R0 in 'UnsetPending'

          if not l_0_5 then
            return mp.CLEAN
          end
          local l_0_14 = nil
          local l_0_15 = 13
          local l_0_16 = 16
          local l_0_17 = 16
          for l_0_21,l_0_22 in pairs(l_0_14) do
            local l_0_18 = 0
            l_0_18 = l_0_18 + 1
            if l_0_16 < l_0_18 then
              return mp.CLEAN
            end
            -- DECOMPILER ERROR at PC162: Confused about usage of register: R9 in 'UnsetPending'

            for l_0_26,l_0_27 in ipairs((false).Certificates) do
              if l_0_17 < l_0_27 then
                return mp.CLEAN
              end
              -- DECOMPILER ERROR at PC170: Confused about usage of register: R14 in 'UnsetPending'

              if R14_PC170 and R14_PC170.PublicKey == "ECC" and R14_PC170.PublicKeyEccCustomCurveBytes then
                local l_0_29 = false
                -- DECOMPILER ERROR at PC185: Confused about usage of register: R16 in 'UnsetPending'

                if l_0_28.PublicKeyBytes then
                  l_0_29 = (MpCommon.NdatRegExpMatch)(l_0_15, l_0_28.PublicKeyBytes)
                end
                if l_0_29 == true then
                  return mp.INFECTED
                else
                  ;
                  (mp.set_mpattribute)("Lua:EccCustomCurve")
                end
              end
            end
          end
          return mp.CLEAN
        end
      end
    end
  end
end

