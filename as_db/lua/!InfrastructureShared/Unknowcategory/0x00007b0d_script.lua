-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b0d_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC17: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p1 == nil or (string.match)((this_sigattrlog[2]).utf8p1, "\\([^\\]+)$") then
      local l_0_4 = nil
      if (string.find)((string.lower)((string.match)((this_sigattrlog[2]).utf8p1, "\\([^\\]+)$")), "%.xla") or (string.find)((string.lower)((string.match)((this_sigattrlog[2]).utf8p1, "\\([^\\]+)$")), "personal.xlsb") then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

