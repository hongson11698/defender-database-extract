-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000009dd_luac 

-- params : ...
-- function num : 0
if not peattributes.isdll and not peattributes.amd64_image then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= "ffmpeg.dll" then
  return mp.CLEAN
end
if (mp.getfilesize)() < 2097652 or (mp.getfilesize)() > 5242880 then
  return mp.CLEAN
end
local l_0_1 = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = string.find
  local l_1_3 = l_1_0
  do
    local l_1_7 = (l_1_1:gsub(".", function(l_2_0)
    -- function num : 0_0_0
    local l_2_1 = string.format
    local l_2_2 = "%c\000"
    do
      local l_2_3, l_2_4 = (string.byte)(l_2_0), .end
      do return l_2_1(l_2_2, l_2_3, l_2_4) end
      -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end
)):gsub
    l_1_7 = l_1_7(l_1_1:gsub(".", function(l_2_0)
    -- function num : 0_0_0
    local l_2_1 = string.format
    local l_2_2 = "%c\000"
    do
      local l_2_3, l_2_4 = (string.byte)(l_2_0), .end
      do return l_2_1(l_2_2, l_2_3, l_2_4) end
      -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end
), "%z+$", "")
    local l_1_4 = nil
    l_1_4 = 1
    local l_1_5 = nil
    l_1_5 = true
    local l_1_6 = nil
    do return l_1_2(l_1_3, l_1_7, l_1_4, l_1_5) end
    -- DECOMPILER ERROR at PC15: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end

local l_0_2 = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = tonumber((l_2_0:reverse()):gsub(".", function(l_3_0)
    -- function num : 0_1_0
    local l_3_1 = string.format
    local l_3_2 = "%02x"
    do
      local l_3_3, l_3_4 = (string.byte)(l_3_0), .end
      do return l_3_1(l_3_2, l_3_3, l_3_4) end
      -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end
), 16)
  if l_2_1 < 2147483647 or not l_2_1 - 4294967296 then
    return l_2_1
  end
end

local l_0_3 = hstrlog[1]
local l_0_4 = l_0_3.VA
if (hstrlog[1]).matched == true then
  local l_0_5 = l_0_4 + (l_0_3.match_offsets)[l_0_3.match_offsets_count]
  local l_0_6 = doshdr.e_lfanew + 49
  local l_0_7 = (mp.readu_u64)(headerpage, l_0_6)
  l_0_5 = l_0_5 + 5 + l_0_2((pe.mmap_va)(l_0_5 + 1, 4))
  local l_0_8 = l_0_5 - (pesecs[pevars.epsec]).VirtualAddress
  local l_0_9 = (pesecs[pevars.epsec]).PointerToRawData + l_0_8 - l_0_7
  ;
  (mp.readprotection)(false)
  local l_0_10 = l_0_9 + 9
  local l_0_11 = (mp.readfile)(l_0_10, 5)
  if l_0_11:byte(1) == 232 then
    l_0_10 = l_0_10 + 5 + l_0_2(l_0_11:sub(2, 5))
    local l_0_12 = "VWUSHì\144\001\004H‹\001\016L\141\r\144\000"
    local l_0_13 = 32
    local l_0_14 = (mp.BMSearchFile)(l_0_10, 100, l_0_12)
    if l_0_14 ~= -1 then
      l_0_14 = l_0_10 + l_0_14 + l_0_13
      local l_0_15 = l_0_14 - (pesecs[pevars.epsec]).PointerToRawData + (pesecs[pevars.epsec]).VirtualAddress + 4 + l_0_2((mp.readfile)(l_0_14, 4))
      local l_0_16 = 0
      for l_0_20 = 1, pehdr.NumberOfSections do
        if (pe.contains_rva)(l_0_20, l_0_15) then
          l_0_16 = l_0_15 - (pesecs[l_0_20]).VirtualAddress + (pesecs[l_0_20]).PointerToRawData
          break
        end
      end
      do
        if l_0_16 ~= 0 then
          local l_0_21 = (mp.readfile)(l_0_16, 200)
          local l_0_22 = {}
          -- DECOMPILER ERROR at PC172: No list found for R18 , SetList fails

          -- DECOMPILER ERROR at PC173: Overwrote pending register: R19 in 'AssignReg'

          -- DECOMPILER ERROR at PC174: Overwrote pending register: R20 in 'AssignReg'

          for l_0_26,l_0_27 in ("AVMonitorRefreshEvent")("d3dcompiler_") do
            if l_0_1(l_0_21, l_0_27) == nil then
              return mp.CLEAN
            end
          end
          return mp.INFECTED
        end
        do
          return mp.CLEAN
        end
      end
    end
  end
end

