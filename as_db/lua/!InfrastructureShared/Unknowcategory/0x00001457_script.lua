-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001457_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = nil
  end
  -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).wp2 == nil or (string.lower)((this_sigattrlog[2]).utf8p2) ~= nil then
    if (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "smb ", 1, true) then
      return mp.INFECTED
    else
      -- DECOMPILER ERROR at PC51: Confused about usage of register: R0 in 'UnsetPending'

      if (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "winrm ", 1, true) then
        return mp.INFECTED
      else
        -- DECOMPILER ERROR at PC64: Confused about usage of register: R0 in 'UnsetPending'

        if (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "ldap ", 1, true) then
          return mp.INFECTED
        else
          -- DECOMPILER ERROR at PC77: Confused about usage of register: R0 in 'UnsetPending'

          if (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "mssql ", 1, true) then
            return mp.INFECTED
          else
            -- DECOMPILER ERROR at PC90: Confused about usage of register: R0 in 'UnsetPending'

            if (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "ssh ", 1, true) then
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
  return mp.CLEAN
end

