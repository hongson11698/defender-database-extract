-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaChrDeObfuscate\0x000010f6_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SCRIPT:ChrObfus!filter") then
  local l_0_0 = (mp.getfilesize)()
  if l_0_0 > 24576 then
    return mp.CLEAN
  end
  ;
  (mp.readprotection)(false)
  local l_0_1 = (mp.readfile)(0, l_0_0)
  local l_0_3 = 0
  local l_0_2 = (string.gsub)(l_0_1, "\"&Chr%((%d%d)%)", function(l_1_0)
  -- function num : 0_0
  local l_1_1 = string.char
  local l_1_2 = l_1_0
  do return l_1_1(l_1_2) end
  -- DECOMPILER ERROR at PC5: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end
)
  -- DECOMPILER ERROR at PC39: Overwrote pending register: R2 in 'AssignReg'

  local l_0_4 = R4_PC39
  -- DECOMPILER ERROR at PC47: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC48: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC57: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC64: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC71: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC78: Overwrote pending register: R3 in 'AssignReg'

  if l_0_3 > 300 then
    (mp.vfo_add_buffer)(l_0_2, "[deobfus]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
end
do
  return mp.CLEAN
end

