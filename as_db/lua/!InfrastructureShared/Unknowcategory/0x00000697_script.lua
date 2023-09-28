-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000697_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = {}
  -- DECOMPILER ERROR at PC18: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC19: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC20: Overwrote pending register: R4 in 'AssignReg'

  for l_0_6,l_0_7 in ("\\cmd.exe")("\\cscript.exe") do
    -- DECOMPILER ERROR at PC23: Overwrote pending register: R9 in 'AssignReg'

    -- DECOMPILER ERROR at PC23: Overwrote pending register: R8 in 'AssignReg'

    -- DECOMPILER ERROR at PC24: Overwrote pending register: R10 in 'AssignReg'

    if ("\\regsvr32.exe")("\\rundll32.exe", -"\\wscript.exe") == l_0_7 then
      return mp.INFECTED
    end
  end
end
do
  do
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    do return l_0_1 end
    -- WARNING: undefined locals caused missing assignments!
  end
end

