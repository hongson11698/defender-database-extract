-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006691_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
    if (string.find)(l_0_0, "/format:", 1, false) ~= nil and (string.find)(l_0_0, "/format:list", 1, false) == nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

