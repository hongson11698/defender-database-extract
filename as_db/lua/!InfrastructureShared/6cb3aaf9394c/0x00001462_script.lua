-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6cb3aaf9394c\0x00001462_luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
local l_0_1 = ""
if (this_sigattrlog[1]).matched then
  l_0_0 = (this_sigattrlog[1]).utf8p1
end
if (this_sigattrlog[2]).matched then
  l_0_1 = (this_sigattrlog[2]).utf8p1
end
if not l_0_0 or not l_0_1 or l_0_0 ~= l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (bm.get_current_process_startup_info)()
local l_0_3 = {}
local l_0_4 = {}
-- DECOMPILER ERROR at PC34: No list found for R4 , SetList fails

local l_0_5 = {}
-- DECOMPILER ERROR at PC36: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC38: No list found for R5 , SetList fails

local l_0_6 = {}
-- DECOMPILER ERROR at PC40: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC42: No list found for R6 , SetList fails

do
  local l_0_7 = {}
  -- DECOMPILER ERROR at PC44: Overwrote pending register: R8 in 'AssignReg'

  -- DECOMPILER ERROR at PC46: No list found for R7 , SetList fails

  -- DECOMPILER ERROR at PC47: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC51: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC58: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC59: Overwrote pending register: R4 in 'AssignReg'

  if not l_0_4 or not l_0_4 then
    return l_0_4
  end
  -- DECOMPILER ERROR at PC61: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC62: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC63: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC64: Overwrote pending register: R7 in 'AssignReg'

  l_0_4(l_0_5, l_0_6, l_0_7)
  -- DECOMPILER ERROR at PC66: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC67: Overwrote pending register: R4 in 'AssignReg'

  do return l_0_4 end
  -- WARNING: undefined locals caused missing assignments!
end

