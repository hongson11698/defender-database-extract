-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a5b3a4fc54ae\0x000014a0_luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
-- DECOMPILER ERROR at PC7: No list found for R1 , SetList fails

local l_0_2 = {}
-- DECOMPILER ERROR at PC9: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC10: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC11: Overwrote pending register: R5 in 'AssignReg'

for l_0_6 = "/usr/bin/", "/sbin/", "/usr/sbin/" do
  local l_0_7 = 0
  if (sigattr_tail[l_0_6]).attribute == 16385 then
    local l_0_8 = ((sigattr_tail[l_0_6]).utf8p1):lower()
    for l_0_12,l_0_13 in pairs(l_0_1) do
      if l_0_8:find(l_0_13) ~= nil then
        l_0_7 = 1
        break
      end
    end
    do
      do
        if l_0_7 == 0 then
          l_0_2[(mp.crc32)(0, l_0_8, 1, #l_0_8)] = 1
        end
        -- DECOMPILER ERROR at PC47: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC47: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC47: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
do
  local l_0_14 = {}
  for l_0_18 = 1, l_0_0 do
    if (sigattr_tail[l_0_18]).attribute == 16386 then
      local l_0_19 = ((sigattr_tail[l_0_18]).utf8p2):lower()
      local l_0_20 = ((sigattr_tail[l_0_18]).utf8p1):lower()
      local l_0_21 = (mp.crc32)(0, l_0_19, 1, #l_0_19)
      local l_0_22 = (mp.crc32)(0, l_0_20, 1, #l_0_20)
      if l_0_2[l_0_22] ~= nil or l_0_2[l_0_21] ~= nil then
        local l_0_23 = l_0_19:match("%.[^%.]+$")
        if l_0_23 ~= nil and #l_0_19 < #l_0_20 and l_0_20:byte(#l_0_19 + 1) == 46 and l_0_20:find(l_0_19, 1, true) == 1 then
          local l_0_24 = (string.sub)(l_0_20, #l_0_19 + 1)
          if l_0_14[l_0_24] ~= nil then
            (table.insert)(l_0_14[l_0_24], l_0_18)
            if #l_0_14[l_0_24] >= 5 then
              TrackPidAndTechniqueBM("BM", "T1486", "Impact_Ransom")
              return mp.INFECTED
            end
          else
            local l_0_25 = {}
            -- DECOMPILER ERROR at PC139: No list found for R14 , SetList fails

          end
        end
      end
    end
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

