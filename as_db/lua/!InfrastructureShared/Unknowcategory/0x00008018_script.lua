-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008018_luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
if mp.SIGATTR_LOG_SZ >= 3 then
  l_0_0 = 3
end
for l_0_4 = 1, l_0_0 do
  local l_0_5 = mp.SIGATTR_LOG_SZ - l_0_4 + 1
  if (sigattr_tail[l_0_5]).matched and (sigattr_tail[l_0_5]).attribute == 12312 then
    local l_0_6 = (sigattr_tail[l_0_5]).p1
    if (string.len)(l_0_6) == 71 and l_0_6:sub(-4) == ".exe" and (string.byte)(l_0_6, -21) == 92 then
      if l_0_6:sub(-38, -22) ~= "\\Application Data" then
        break
      end
      local l_0_7 = l_0_6:sub(-20)
    end
    if (string.byte)(l_0_7) >= 65 then
      if (string.byte)(l_0_7) > 90 then
        break
      end
      do
        local l_0_8 = (string.len)(l_0_7)
        for l_0_12 = 2, l_0_8 - 4 do
          do
            local l_0_13 = (string.byte)(l_0_7, l_0_12)
            if l_0_13 >= 97 then
              do
                if l_0_13 > 122 then
                  break
                end
                -- DECOMPILER ERROR at PC87: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC87: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC87: LeaveBlock: unexpected jumping out DO_STMT

              end
            end
          end
        end
        ;
        (mp.set_mpattribute)("SIGATTR:DorkbotFileName.A")
        do return mp.INFECTED end
        -- DECOMPILER ERROR at PC95: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC95: LeaveBlock: unexpected jumping out IF_STMT

        -- DECOMPILER ERROR at PC95: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC95: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
return mp.CLEAN

