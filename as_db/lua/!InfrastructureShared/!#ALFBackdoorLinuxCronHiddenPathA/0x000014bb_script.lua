-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFBackdoorLinuxCronHiddenPathA\0x000014bb_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC5: No list found for R0 , SetList fails

-- DECOMPILER ERROR at PC6: Overwrote pending register: R1 in 'AssignReg'

-- DECOMPILER ERROR at PC8: Overwrote pending register: R2 in 'AssignReg'

local l_0_1 = (("/etc/cron.").get_contextdata)(("/etc/crontab").CONTEXT_DATA_SCANREASON)
if l_0_1 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_2 = (mp.getfilesize)()
  -- DECOMPILER ERROR at PC20: Overwrote pending register: R3 in 'AssignReg'

  if l_0_2 == nil then
    return ("/var/spool/cron/crontabs").CLEAN
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R4 in 'AssignReg'

  local l_0_3 = (mp.getfilename)((("/var/spool/cron").bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_3 ~= nil then
    if (string.len)(l_0_3) < 10 then
      return mp.CLEAN
    end
    local l_0_4 = false
    for l_0_8,l_0_9 in ipairs(l_0_0) do
      if (string.find)(l_0_3, l_0_9, 1, true) == 1 then
        local l_0_10 = ""
        if l_0_2 <= mp.HEADERPAGE_SZ then
          l_0_10 = tostring(headerpage)
        else
          if l_0_2 <= mp.HEADERPAGE_SZ + mp.FOOTERPAGE_SZ then
            l_0_10 = tostring(headerpage) .. tostring(footerpage)
          else
            ;
            (mp.readprotection)(false)
            l_0_10 = tostring((mp.readfile)(0, l_0_2))
            ;
            (mp.readprotection)(true)
          end
        end
        if l_0_10 ~= nil then
          for l_0_14,l_0_15 in ipairs(split(l_0_10, "\n")) do
            if l_0_15 ~= nil and l_0_15 ~= "" and (string.find)(l_0_15, "#", 1, true) ~= 1 and (string.match)(l_0_15, "/%..*") then
              l_0_15 = l_0_15:gsub("[%(%)%[%]%{%}]", "")
              for l_0_19,l_0_20 in ipairs(split(l_0_15, " ")) do
                if type(l_0_20) == "string" and l_0_20:sub(1, 1) == "/" and (sysio.IsFileExists)(l_0_20) then
                  l_0_4 = true
                  ;
                  (mp.ReportLowfi)(l_0_20, 34864475)
                end
              end
            end
          end
        end
      end
    end
    if l_0_4 then
      do return mp.INFECTED end
      -- DECOMPILER ERROR at PC174: Confused about usage of register R5 for local variables in 'ReleaseLocals'

    end
  end
end
l_0_2 = mp
l_0_2 = l_0_2.CLEAN
return l_0_2

