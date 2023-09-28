-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b39068bf7f\0x00008227_luac 

-- params : ...
-- function num : 0
local l_0_12 = nil
local l_0_13 = nil
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_6, l_0_8, l_0_10 = false, {}
  end
  if not l_0_12 then
    return mp.CLEAN
  end
  if (string.len)(l_0_12) < 4 and IsExtensionDatePattern(l_0_12) == true then
    return mp.CLEAN
  end
  local l_0_14 = nil
  if l_0_12 == "" and (mp.GetExtensionClass)(l_0_12) ~= 0 then
    return mp.CLEAN
  end
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 then
    l_0_13 = (this_sigattrlog[2]).utf8p2
    local l_0_5, l_0_7, l_0_9, l_0_11 = nil
  else
    do
      if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 then
        l_0_13 = (this_sigattrlog[3]).utf8p2
      end
      if not l_0_13 then
        return mp.CLEAN
      end
      local l_0_15 = nil
      if not safeJsonDeserialize(l_0_13) then
        return mp.CLEAN
      end
      local l_0_16 = nil
      do
        -- DECOMPILER ERROR at PC124: Confused about usage of register: R7 in 'UnsetPending'

        if (safeJsonDeserialize(l_0_13)).ransom_files_main or false or (safeJsonDeserialize(l_0_13)).ransom_files_sub or false then
          local l_0_20 = nil
          local l_0_21 = nil
          for l_0_25 = 1, #split((((safeJsonDeserialize(l_0_13)).ransom_files_main or false or (safeJsonDeserialize(l_0_13)).ransom_files_sub or false):gsub("FileChain_MainSet:", "")):gsub("FileChain_SubSet:", ""), ";") do
            local l_0_22, l_0_23, l_0_24, l_0_25 = , {doc = true, docx = true, docm = true, xls = true, xlsx = true, xlsm = true, csv = true, ppt = true, pptx = true, pptm = true, zip = true, ["7z"] = true, rar = true, txt = true, jpg = true, jpeg = true, bmp = true, png = true, gif = true, htm = true, html = true, lnk = true, sql = true, mp3 = true, url = true}
            -- DECOMPILER ERROR at PC142: Confused about usage of register: R12 in 'UnsetPending'

            if R12_PC142 % 4 == 0 then
              (table.insert)(l_0_21, (split((((safeJsonDeserialize(l_0_13)).ransom_files_main or false or (safeJsonDeserialize(l_0_13)).ransom_files_sub or false):gsub("FileChain_MainSet:", "")):gsub("FileChain_SubSet:", ""), ";"))[R12_PC142])
            end
          end
          l_0_21 = table_dedup(l_0_21)
          for l_0_29,l_0_30 in ipairs(l_0_21) do
            local l_0_26, l_0_27, l_0_28, l_0_29, l_0_30 = nil
            -- DECOMPILER ERROR at PC159: Confused about usage of register: R13 in 'UnsetPending'

            if l_0_28[table.insert] then
              l_0_20 = true
              break
            end
          end
        end
        do
          do
            if l_0_20 then
              return mp.INFECTED
            end
            do return mp.CLEAN end
            -- DECOMPILER ERROR at PC174: freeLocal<0 in 'ReleaseLocals'

          end
        end
      end
    end
  end
end

