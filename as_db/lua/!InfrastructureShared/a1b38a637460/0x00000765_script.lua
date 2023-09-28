-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a1b38a637460\0x00000765_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8 = (string.lower)((this_sigattrlog[4]).utf8p1)
    end
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC42: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC49: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC58: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC67: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC78: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil and ((string.find)(l_0_1, "\\microsoft\\exchange server\\v[1-9][0-9]\\frontend\\") ~= nil or (string.find)(l_0_1, "\\frontend\\httpproxy\\owa\\", 1, true) ~= nil or (string.find)(l_0_1, "\\inetpub\\wwwroot\\", 1, true) ~= nil or (string.find)(l_0_1, "\\microsoft\\exchange server\\v[1-9][0-9]\\clientaccess\\") ~= nil) and IsExchangeServer() then
      (mp.ReportLowfi)(l_0_1, 1067831818)
      -- DECOMPILER ERROR at PC83: Confused about usage of register: R0 in 'UnsetPending'

      ;
      (bm.add_related_file)(l_0_1)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

