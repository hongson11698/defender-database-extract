-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000845_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0)
    local l_0_2 = l_0_1:match("(%..?.?.?.?)%.lnk")
    local l_0_3 = ".docx|.docm|.xlsx|.xlsm|.csv|.pptx|.pps|.pptm|.db|.dat|.idx|.gif|.jpg"
    if l_0_2 ~= nil and l_0_3:find(l_0_2, 1, true) then
      return mp.CLEAN
    end
    if l_0_1:find("\\reci?ente?\\") then
      return mp.CLEAN
    end
    if l_0_1:find("\\microsoft outlook.lnk", 1, true) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

