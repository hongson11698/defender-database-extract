-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000efc_luac 

-- params : ...
-- function num : 0
StripDriverPrefix = function(l_1_0)
  -- function num : 0_0
  local l_1_1, l_1_2 = (string.find)((string.lower)(l_1_0), "\\driver\\", 1, true)
  if l_1_2 then
    local l_1_3 = string.sub
    local l_1_4 = l_1_0
    do
      local l_1_5 = l_1_2 + 1
      do return l_1_3(l_1_4, l_1_5) end
      -- DECOMPILER ERROR at PC18: Confused about usage of register R4 for local variables in 'ReleaseLocals'

      do return l_1_0 end
      -- DECOMPILER ERROR at PC19: Confused about usage of register R3 for local variables in 'ReleaseLocals'

    end
  end
end

AlureonDeviceTrigger = function()
  -- function num : 0_1
  local l_2_0 = (sysio.GetObjectDir)("\\Device")
  local l_2_1 = 0
  for l_2_5,l_2_6 in pairs(l_2_0) do
    if (string.find)(l_2_5, "%x%x%x%x%x%x%x%x") == 1 and (string.sub)(l_2_5, 6, 6) ~= "0" then
      l_2_1 = l_2_1 + 1
    end
  end
  if l_2_1 == 1 then
    return true
  end
  return false
end


