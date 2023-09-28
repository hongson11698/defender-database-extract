-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanWin32QakbotSE\0x00000f40_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetLnkInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
do
  local l_0_1, l_0_3, l_0_8, l_0_9 = l_0_0.Arguments or l_0_0.RelativePath or nil
  -- DECOMPILER ERROR at PC15: Confused about usage of register: R1 in 'UnsetPending'

  if l_0_1 == nil then
    return mp.CLEAN
  end
  do
    local l_0_2, l_0_4, l_0_10 = , l_0_0.IconLocation or nil
    -- DECOMPILER ERROR at PC24: Confused about usage of register: R2 in 'UnsetPending'

    if l_0_4 ~= nil then
      local l_0_5 = nil
      -- DECOMPILER ERROR at PC27: Confused about usage of register: R2 in 'UnsetPending'

      local l_0_6 = nil
      local l_0_7 = contains
      l_0_7 = l_0_7(l_0_4, {"zipfldr.dll", "shell32.dll"})
    end
    if not l_0_7 then
      l_0_7 = mp
      l_0_7 = l_0_7.CLEAN
      return l_0_7
    end
    l_0_7 = contains
    local l_0_11 = nil
    l_0_11 = l_0_5
    local l_0_12 = nil
    local l_0_13 = nil
    l_0_13 = ".js"
    l_0_7, l_0_12 = l_0_7(l_0_11, l_0_12), {l_0_13, ".cmd"}
    if l_0_7 then
      l_0_7 = contains
      l_0_11 = l_0_5
      l_0_12 = "..\\..\\"
      l_0_7 = l_0_7(l_0_11, l_0_12)
      if l_0_7 then
        l_0_7 = mp
        l_0_7 = l_0_7.INFECTED
        return l_0_7
      end
    end
    l_0_7 = mp
    l_0_7 = l_0_7.CLEAN
    return l_0_7
  end
end

