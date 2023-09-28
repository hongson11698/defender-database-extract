-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\11db30b0fd1bc\0x00001455_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[9]).matched and (this_sigattrlog[9]).utf8p1 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[10]).matched or (this_sigattrlog[10]).utf8p1 == nil or (this_sigattrlog[11]).matched) and (this_sigattrlog[11]).utf8p1 ~= nil then
      local l_0_1 = (this_sigattrlog[10]).utf8p1
    else
    end
    -- DECOMPILER ERROR at PC68: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[12]).matched or (this_sigattrlog[12]).utf8p1 == nil or (this_sigattrlog[13]).matched) and (this_sigattrlog[13]).utf8p1 ~= nil then
        local l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = (this_sigattrlog[12]).utf8p1
      else
      end
      -- DECOMPILER ERROR at PC85: Confused about usage of register: R0 in 'UnsetPending'

      if ((this_sigattrlog[14]).matched and (this_sigattrlog[14]).utf8p1 ~= nil and (this_sigattrlog[14]).utf8p1 == nil) or (this_sigattrlog[14]).utf8p1 == "" then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC93: Confused about usage of register: R0 in 'UnsetPending'

      ;
      (bm.trigger_sig)("FileArchiving", (this_sigattrlog[14]).utf8p1)
      return mp.CLEAN
    end
  end
end

