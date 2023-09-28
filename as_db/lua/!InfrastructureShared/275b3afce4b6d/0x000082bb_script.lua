-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\275b3afce4b6d\0x000082bb_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC17: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil and (this_sigattrlog[2]).image_path ~= nil then
  local l_0_0, l_0_1 = nil, nil
  l_0_1 = (string.lower)(tostring((this_sigattrlog[2]).image_path))
  local l_0_2 = nil
else
end
do
  -- DECOMPILER ERROR at PC73: Overwrote pending register: R0 in 'AssignReg'

  if (not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p1 == nil or (this_sigattrlog[3]).image_path == nil or (this_sigattrlog[4]).matched) and (this_sigattrlog[4]).utf8p1 ~= nil and (this_sigattrlog[4]).image_path ~= nil then
    local l_0_3, l_0_4 = (this_sigattrlog[3]).utf8p1, (string.lower)(tostring((this_sigattrlog[3]).image_path))
    l_0_4 = (string.lower)(tostring((this_sigattrlog[4]).image_path))
    local l_0_5 = nil
  else
  end
  do
    -- DECOMPILER ERROR at PC129: Overwrote pending register: R0 in 'AssignReg'

    if (not (this_sigattrlog[5]).matched or (this_sigattrlog[5]).utf8p1 == nil or (this_sigattrlog[5]).image_path == nil or (this_sigattrlog[6]).matched) and (this_sigattrlog[6]).utf8p1 ~= nil and (this_sigattrlog[6]).image_path ~= nil then
      local l_0_6, l_0_7 = (this_sigattrlog[5]).utf8p1, (string.lower)(tostring((this_sigattrlog[5]).image_path))
      l_0_7 = (string.lower)(tostring((this_sigattrlog[6]).image_path))
      local l_0_8 = nil
    else
    end
    do
      -- DECOMPILER ERROR at PC185: Overwrote pending register: R0 in 'AssignReg'

      if (not (this_sigattrlog[7]).matched or (this_sigattrlog[7]).utf8p1 == nil or (this_sigattrlog[7]).image_path == nil or (this_sigattrlog[8]).matched) and (this_sigattrlog[8]).utf8p1 ~= nil and (this_sigattrlog[8]).image_path ~= nil then
        local l_0_9, l_0_10 = (this_sigattrlog[7]).utf8p1, (string.lower)(tostring((this_sigattrlog[7]).image_path))
        l_0_10 = (string.lower)(tostring((this_sigattrlog[8]).image_path))
        local l_0_11 = nil
      else
      end
      do
        -- DECOMPILER ERROR at PC241: Overwrote pending register: R0 in 'AssignReg'

        if (not (this_sigattrlog[9]).matched or (this_sigattrlog[9]).utf8p1 == nil or (this_sigattrlog[9]).image_path == nil or (this_sigattrlog[10]).matched) and (this_sigattrlog[10]).utf8p1 ~= nil and (this_sigattrlog[10]).image_path ~= nil then
          local l_0_12, l_0_13, l_0_15 = (this_sigattrlog[9]).utf8p1, (string.lower)(tostring((this_sigattrlog[9]).image_path))
          l_0_15 = string
          l_0_15 = l_0_15.lower
          l_0_15 = l_0_15(tostring((this_sigattrlog[10]).image_path))
          l_0_13 = l_0_15
          local l_0_14, l_0_16 = nil
        else
        end
        do
          if (this_sigattrlog[11]).matched and (this_sigattrlog[11]).utf8p1 ~= nil and (this_sigattrlog[11]).image_path ~= nil then
            local l_0_17 = (this_sigattrlog[11]).utf8p1
            local l_0_18 = (string.lower)(tostring((this_sigattrlog[11]).image_path))
            local l_0_19 = {"\\users\\.+", "\\windows\\.+", "\\device\\.+", "\\temp\\.+"}
            local l_0_20 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  local l_1_2 = {}
  local l_1_3 = false
  l_1_0 = l_1_0:gsub("<!%-%-(.-)%-%->", "")
  l_1_0 = l_1_0:gsub("<%?(.-)%?>", "")
  l_1_0:gsub("<([/!]?)([%a_][%w-:_]*)%s*(/?>?)([^<]*)", function(l_2_0, l_2_1, l_2_2, l_2_3)
    -- function num : 0_0_0 , upvalues : l_1_1, l_1_3, l_1_2
    if #l_2_0 == 0 then
      local l_2_4 = {}
      if #l_2_2 == 0 then
        local l_2_5 = 0
        for l_2_9,l_2_10,l_2_11,l_2_12,l_2_13 in (string.gmatch)(l_2_3, "(([%a_][%w-:_]*)%s*=%s*([\'\"])(.-)%3%s*(/?>?))") do
          l_2_5 = l_2_5 + #l_2_9
          l_2_4[l_2_10] = l_2_12
          if #l_2_13 ~= 0 then
            if l_2_13 == "/>" then
              l_2_3 = ""
            else
              if l_2_13 == ">" then
                l_2_3 = l_2_3:sub(l_2_5 + 1)
              else
                error("invalid tag")
              end
            end
            l_2_2 = l_2_13
          end
        end
      end
      do
        do
          l_2_5 = table
          l_2_5 = l_2_5.insert
          l_2_5(l_1_1, l_2_1)
          l_2_5 = l_1_3
          if not l_2_5 and l_2_1 == "Command" then
            l_2_5 = true
            l_1_3 = l_2_5
          end
          l_2_5 = l_1_3
          if l_2_5 and l_2_3 ~= "" then
            l_2_5 = table
            l_2_5 = l_2_5.insert
            l_2_5(l_1_2, l_2_3)
          end
          l_2_5 = next
          l_2_5 = l_2_5(l_2_4)
          if not l_2_5 then
            l_2_4 = nil
          end
          l_2_5 = l_2_5(l_2_2, 1)
          if l_2_5 == (string.byte)("/") then
            l_2_5 = table
            l_2_5 = l_2_5.remove
            l_2_5(l_1_1)
          end
          if l_2_0 == "/" then
            l_2_4 = l_1_1
            l_2_4 = l_2_4[#l_1_1]
            if l_2_4 == l_2_1 then
              l_2_4 = table
              l_2_4 = l_2_4.remove
              l_2_4(l_1_1)
            else
              l_2_4 = error
              l_2_4("invalid XML: mismatch closing tag")
            end
            l_2_4 = l_1_3
            if l_2_4 and l_2_1 == "Command" then
              l_2_4 = false
              l_1_3 = l_2_4
            end
          else
            if l_2_0 == "!" then
              l_2_4 = error
              l_2_4("unsupported tag type")
            else
              l_2_4 = error
              l_2_4("parsing error")
            end
          end
        end
      end
    end
  end
)
  return l_1_2
end

            for l_0_24,l_0_25 in ipairs(l_0_19) do
              local l_0_21, l_0_22 = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = {}
  for l_2_5 in (string.gmatch)(l_2_0, "http[s]?://[^\"%s]+") do
    (table.insert)(l_2_1, l_2_5)
  end
  return l_2_1
end
, {SIG_CONTEXT = "BM", CONTENT_SOURCE = "USB_POWERSHELL_TWO", PROCESS_CONTEXT = "powershell.exe", FILELESS = "true", CMDLINE_URL = "true"}
              -- DECOMPILER ERROR at PC300: Confused about usage of register: R10 in 'UnsetPending'

              if (string.find)(l_0_18, R10_PC300) then
                for l_0_30,l_0_31 in ipairs(l_0_20(l_0_17)) do
                  local l_0_28 = nil
                  -- DECOMPILER ERROR at PC312: Confused about usage of register: R16 in 'UnsetPending'

                  for l_0_36,l_0_37 in ipairs(l_0_21(R16_PC312)) do
                    local l_0_34 = nil
                    -- DECOMPILER ERROR at PC320: Confused about usage of register: R22 in 'UnsetPending'

                    if (string.match)(R22_PC320, "^https?://") and ((SafeGetUrlReputation({l_0_39}, l_0_22, false, 3000)).urls)[l_0_39] and (((SafeGetUrlReputation({l_0_39}, l_0_22, false, 3000)).urls)[l_0_39]).determination ~= 1 and (((SafeGetUrlReputation({l_0_39}, l_0_22, false, 3000)).urls)[l_0_39]).confidence ~= 90 then
                      return mp.INFECTED
                    end
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
end

