-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007eaa_luac 

-- params : ...
-- function num : 0
starts = function(l_1_0, l_1_1)
  -- function num : 0_0
  do return (string.sub)(l_1_0, 1, (string.len)(l_1_1)) == l_1_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

towin32path = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = l_2_0
  if starts((string.lower)(l_2_0), "\\device\\") then
    l_2_1 = (MpCommon.PathToWin32Path)(l_2_0)
  end
  return l_2_1
end

normalize_path = function(l_3_0)
  -- function num : 0_2
  local l_3_1 = towin32path(l_3_0)
  if l_3_1 == nil then
    return nil
  end
  do
    if #l_3_1 > 4 then
      local l_3_5 = l_3_1:sub
      l_3_5 = l_3_5(l_3_1, 1, 4)
      if l_3_5 == "\\\\?\\" then
        local l_3_4 = l_3_1
        l_3_5 = l_3_5(l_3_4, 5)
        l_3_1 = l_3_5
      end
    end
    local l_3_2 = string.lower
    local l_3_3 = l_3_1
    do return l_3_2(l_3_3) end
    -- DECOMPILER ERROR at PC25: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end


