-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008173_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC8: No list found for R0 , SetList fails

-- DECOMPILER ERROR at PC9: Overwrote pending register: R1 in 'AssignReg'

-- DECOMPILER ERROR at PC10: Overwrote pending register: R2 in 'AssignReg'

for l_0_4,l_0_5 in ("%LocalAppData%\\Packages\\Microsoft.WindowsStore_8wekyb3d8bbwe\\AC")("%LocalAppData%\\Packages\\Microsoft.WindowsStore_8wekyb3d8bbwe\\LocalCache") do
  -- DECOMPILER ERROR at PC13: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC15: Overwrote pending register: R7 in 'AssignReg'

  local l_0_6 = (("%LocalAppData%\\Packages\\Microsoft.StorePurchaseApp_8wekyb3d8bbwe\\LocalCache").ExpandFilePath)("%LocalAppData%\\Packages\\Microsoft.StorePurchaseApp_8wekyb3d8bbwe\\Settings", true)
  if l_0_6 then
    for l_0_10,l_0_11 in ipairs(l_0_6) do
      if l_0_11:sub(5, 5) ~= "%" then
        local l_0_12 = nil
        -- DECOMPILER ERROR at PC49: Overwrote pending register: R12 in 'AssignReg'

        if (l_0_11:sub(3, 3) ~= "?" or l_0_12) and l_0_12:sub(2, 10) ~= ":\\windows" and #(sysio.FindFiles)(l_0_12, "mpengine.dll", 9) > 0 then
          return mp.INFECTED
        end
      end
    end
  end
end
do return mp.CLEAN end
-- DECOMPILER ERROR at PC77: Confused about usage of register R1 for local variables in 'ReleaseLocals'

-- WARNING: undefined locals caused missing assignments!

