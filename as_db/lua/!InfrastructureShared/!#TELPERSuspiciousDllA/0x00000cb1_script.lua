-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELPERSuspiciousDllA\0x00000cb1_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (pe.get_exports)()
do
  if l_0_0 == 1 then
    local l_0_2 = (pe.mmap_string_rva)((l_0_1[1]).namerva, 64)
    if l_0_2 == nil then
      return mp.CLEAN
    end
    if (string.lower)(l_0_2) == "exec" then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

