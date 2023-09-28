-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4a8d750d1a4a7\0x00007521_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil and l_0_0.image_path ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = contains
  local l_0_3 = l_0_1
  local l_0_4 = {}
  -- DECOMPILER ERROR at PC17: No list found for R4 , SetList fails

  -- DECOMPILER ERROR at PC21: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC22: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC28: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC29: Overwrote pending register: R2 in 'AssignReg'

  if l_0_2 and l_0_2 == "pc-app.exe" then
    return l_0_2
  end
end
do
  do
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

