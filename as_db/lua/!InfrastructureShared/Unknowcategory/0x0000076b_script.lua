-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000076b_luac 

-- params : ...
-- function num : 0
local l_0_4, l_0_6, l_0_8, l_0_9, l_0_10, l_0_11, l_0_12, l_0_13, l_0_14, l_0_15 = nil, nil, nil
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2 = (string.lower)((this_sigattrlog[2]).utf8p1)
    end
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC42: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil then
      local l_0_3 = nil
      -- DECOMPILER ERROR at PC56: Confused about usage of register: R1 in 'UnsetPending'

      if (sysio.IsFileExists)((string.gsub)(l_0_1, ".dll", ".0.vb")) then
        local l_0_5 = nil
      else
        do
          -- DECOMPILER ERROR at PC84: Confused about usage of register: R1 in 'UnsetPending'

          do
            do
              if (sysio.IsFileExists)((string.gsub)(l_0_3, ".dll", ".0.cs")) then
                local l_0_7 = nil
                -- DECOMPILER ERROR at PC94: Overwrote pending register: R2 in 'AssignReg'

              end
              -- DECOMPILER ERROR at PC99: Confused about usage of register: R2 in 'UnsetPending'

              -- DECOMPILER ERROR at PC105: Confused about usage of register: R2 in 'UnsetPending'

              if (string.match)(tostring((sysio.ReadFile)((string.gsub)(l_0_1, ".dll", ".0.vb"), 0, 5000)), "#ExternalChecksum%(\"([^\"]+)") and (sysio.IsFileExists)((string.match)(tostring((sysio.ReadFile)((string.gsub)(l_0_1, ".dll", ".0.vb"), 0, 5000)), "#ExternalChecksum%(\"([^\"]+)")) then
                (mp.ReportLowfi)((string.match)(tostring((sysio.ReadFile)((string.gsub)(l_0_1, ".dll", ".0.vb"), 0, 5000)), "#ExternalChecksum%(\"([^\"]+)"), 2156904378)
                -- DECOMPILER ERROR at PC110: Confused about usage of register: R2 in 'UnsetPending'

                ;
                (bm.add_related_file)((string.match)(tostring((sysio.ReadFile)((string.gsub)(l_0_1, ".dll", ".0.vb"), 0, 5000)), "#ExternalChecksum%(\"([^\"]+)"))
                -- DECOMPILER ERROR at PC115: Confused about usage of register: R2 in 'UnsetPending'

                ;
                (bm.add_related_string)("WebshellPath", (string.match)(tostring((sysio.ReadFile)((string.gsub)(l_0_1, ".dll", ".0.vb"), 0, 5000)), "#ExternalChecksum%(\"([^\"]+)"), bm.RelatedStringBMReport)
                return mp.INFECTED
              end
              return mp.CLEAN
            end
          end
        end
      end
    end
  end
end

