-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\81b30c1df96c\0x00007aaf_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC3: No list found for R0 , SetList fails

-- DECOMPILER ERROR at PC4: Overwrote pending register: R1 in 'AssignReg'

-- DECOMPILER ERROR at PC5: Overwrote pending register: R2 in 'AssignReg'

if ("cmd.exe")("powershell.exe", l_0_0) then
  local l_0_1, l_0_2 = (bm.get_process_relationships)()
  for l_0_6,l_0_7 in ipairs(l_0_1) do
    if l_0_7.image_path ~= nil then
      local l_0_8, l_0_9 = (bm.get_process_relationships)(l_0_7.ppid)
      for l_0_13,l_0_14 in ipairs(l_0_8) do
        if l_0_14.image_path ~= nil then
          (bm.add_related_file)(l_0_14.image_path)
        end
      end
    end
  end
  do return mp.INFECTED end
  -- DECOMPILER ERROR at PC42: Confused about usage of register R4 for local variables in 'ReleaseLocals'

end
l_0_1 = mp
l_0_1 = l_0_1.CLEAN
do return l_0_1 end
-- DECOMPILER ERROR at PC45: Confused about usage of register R3 for local variables in 'ReleaseLocals'


