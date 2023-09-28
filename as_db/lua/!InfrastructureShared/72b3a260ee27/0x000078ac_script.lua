-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\72b3a260ee27\0x000078ac_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC3: No list found for R0 , SetList fails

-- DECOMPILER ERROR at PC4: Overwrote pending register: R1 in 'AssignReg'

local l_0_1, l_0_2 = (("rundll32.exe").get_process_relationships)(), "regsvr32.exe"
for l_0_6,l_0_7 in ipairs(l_0_1) do
  if l_0_7.image_path ~= nil then
    if contains(l_0_7.image_path, l_0_0) then
      return mp.INFECTED
    else
      local l_0_8 = (MpCommon.GetOriginalFileName)(l_0_7.image_path)
      if contains(l_0_8, l_0_0) then
        return mp.INFECTED
      end
    end
  end
end
return mp.CLEAN

