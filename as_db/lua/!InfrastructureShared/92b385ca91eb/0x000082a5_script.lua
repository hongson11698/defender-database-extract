-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\92b385ca91eb\0x000082a5_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
  local l_0_0 = nil
else
  do
    do return mp.CLEAN end
    local l_0_1 = nil
    local l_0_2 = nil
    local l_0_3 = (function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  for l_1_5 in (string.gmatch)(l_1_0, "[^%s]+") do
    (table.insert)(l_1_1, l_1_5)
  end
  local l_1_6 = nil
  for l_1_10 = 1, #l_1_1 do
    -- DECOMPILER ERROR at PC27: Unhandled construct in 'MakeBoolean' P1

    if l_1_1[l_1_10] == "/xml" and l_1_1[l_1_10 + 1] ~= nil then
      l_1_6 = l_1_1[l_1_10 + 1]
      l_1_6 = (string.gsub)(l_1_6, "^%s*(.-)%s*$", "%1")
      l_1_6 = (string.gsub)(l_1_6, "^[\'\"]*(.-)[\'\"]*$", "%1")
    end
    do break end
  end
  do
    return l_1_6
  end
end
)(l_0_1)
    for l_0_7,l_0_8 in ipairs({"\\users\\.+", "\\device\\cdrom.+", "\\device\\mup\\.+"}) do
      local l_0_4 = nil
      -- DECOMPILER ERROR at PC37: Confused about usage of register: R8 in 'UnsetPending'

      if (string.find)(l_0_3, R8_PC37) then
        local l_0_10 = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = {}
  local l_2_2 = {}
  local l_2_3 = false
  l_2_0 = l_2_0:gsub("<!%-%-(.-)%-%->", "")
  l_2_0 = l_2_0:gsub("<%?(.-)%?>", "")
  l_2_0:gsub("<([/!]?)([%a_][%w-:_]*)%s*(/?>?)([^<]*)", function(l_3_0, l_3_1, l_3_2, l_3_3)
    -- function num : 0_1_0 , upvalues : l_2_1, l_2_3, l_2_2
    if #l_3_0 == 0 then
      local l_3_4 = {}
      if #l_3_2 == 0 then
        local l_3_5 = 0
        for l_3_9,l_3_10,l_3_11,l_3_12,l_3_13 in (string.gmatch)(l_3_3, "(([%a_][%w-:_]*)%s*=%s*([\'\"])(.-)%3%s*(/?>?))") do
          l_3_5 = l_3_5 + #l_3_9
          l_3_4[l_3_10] = l_3_12
          if #l_3_13 ~= 0 then
            if l_3_13 == "/>" then
              l_3_3 = ""
            else
              if l_3_13 == ">" then
                l_3_3 = l_3_3:sub(l_3_5 + 1)
              else
                error("invalid tag")
              end
            end
            l_3_2 = l_3_13
          end
        end
      end
      do
        do
          l_3_5 = table
          l_3_5 = l_3_5.insert
          l_3_5(l_2_1, l_3_1)
          l_3_5 = l_2_3
          if not l_3_5 and l_3_1 == "Command" then
            l_3_5 = true
            l_2_3 = l_3_5
          end
          l_3_5 = l_2_3
          if l_3_5 and l_3_3 ~= "" then
            l_3_5 = table
            l_3_5 = l_3_5.insert
            l_3_5(l_2_2, l_3_3)
          end
          l_3_5 = next
          l_3_5 = l_3_5(l_3_4)
          if not l_3_5 then
            l_3_4 = nil
          end
          l_3_5 = l_3_5(l_3_2, 1)
          if l_3_5 == (string.byte)("/") then
            l_3_5 = table
            l_3_5 = l_3_5.remove
            l_3_5(l_2_1)
          end
          if l_3_0 == "/" then
            l_3_4 = l_2_1
            l_3_4 = l_3_4[#l_2_1]
            if l_3_4 == l_3_1 then
              l_3_4 = table
              l_3_4 = l_3_4.remove
              l_3_4(l_2_1)
            else
              l_3_4 = error
              l_3_4("invalid XML: mismatch closing tag")
            end
            l_3_4 = l_2_3
            if l_3_4 and l_3_1 == "Command" then
              l_3_4 = false
              l_2_3 = l_3_4
            end
          else
            if l_3_0 == "!" then
              l_3_4 = error
              l_3_4("unsupported tag type")
            else
              l_3_4 = error
              l_3_4("parsing error")
            end
          end
        end
      end
    end
  end
)
  return l_2_2
end

        if (sysio.GetFileSize)(l_0_3) > 50000 then
          return mp.CLEAN
        end
        local l_0_11 = nil
        local l_0_12 = nil
        local l_0_13 = l_0_10(tostring((sysio.ReadFile)(l_0_3, 0, (sysio.GetFileSize)(l_0_3))))
        for l_0_17,l_0_18 in ipairs(l_0_13) do
          local l_0_14 = function(l_3_0)
  -- function num : 0_2
  local l_3_1 = {}
  for l_3_5 in (string.gmatch)(l_3_0, "http[s]?://[^\"%s]+") do
    (table.insert)(l_3_1, l_3_5)
  end
  return l_3_1
end

          -- DECOMPILER ERROR at PC68: Confused about usage of register: R18 in 'UnsetPending'

          for l_0_23,l_0_24 in ipairs(l_0_14(R18_PC68)) do
            local l_0_20 = nil
            -- DECOMPILER ERROR at PC76: Confused about usage of register: R24 in 'UnsetPending'

            if (string.match)(R24_PC76, "^https?://") then
              return mp.INFECTED
            end
          end
        end
      end
    end
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC93: Confused about usage of register R8 for local variables in 'ReleaseLocals'

  end
end

