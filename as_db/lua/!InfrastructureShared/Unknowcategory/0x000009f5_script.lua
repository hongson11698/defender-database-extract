-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000009f5_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  if (this_sigattrlog[2]).matched then
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

    if (this_sigattrlog[2]).utf8p2 ~= nil then
      local l_0_4 = nil
      for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)((this_sigattrlog[2]).utf8p2)) do
        local l_0_5 = nil
        -- DECOMPILER ERROR at PC31: Confused about usage of register: R6 in 'UnsetPending'

        if R6_PC31:len() > 12 and (string.lower)((string.sub)(R6_PC31, -12)) ~= "regsvr32.exe" and (sysio.IsFileExists)(R6_PC31) then
          (bm.add_related_file)(R6_PC31)
        end
      end
    end
    do
      return mp.INFECTED
    end
  end
end

