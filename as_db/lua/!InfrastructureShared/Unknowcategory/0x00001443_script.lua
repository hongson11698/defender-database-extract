-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001443_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC21: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (string.find)(l_0_0, "/admin$", 1, true) and (string.find)(l_0_0, "-c", 1, true) and (string.find)(l_0_0, "put ", 1, true) then
    local l_0_5 = nil
    local l_0_6 = "|.exe|.dll|.bat|.cmd|.vbs|.js|.jse|.vbe|.scr|.com|.cpl|.hta|.ps1|.psc1"
    if (string.match)(l_0_5, "[^\\]+(%.%w+).*$") and (string.find)(l_0_6, (string.match)(l_0_5, "[^\\]+(%.%w+).*$"), 1, true) then
      return mp.INFECTED
    end
  end
  do
    return mp.CLEAN
  end
end

